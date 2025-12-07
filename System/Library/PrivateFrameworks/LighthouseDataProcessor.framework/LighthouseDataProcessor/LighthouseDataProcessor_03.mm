uint64_t sub_20E085358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868820, &qword_20E33B7D8);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_20E04875C(v24, &qword_27C868820, &qword_20E33B7D8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoUndoRedoRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoUndoRedoRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867528, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868820, &qword_20E33B7D8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868820, &qword_20E33B7D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868820, &qword_20E33B7D8);
    return sub_20E04875C(v32, &qword_27C868820, &qword_20E33B7D8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoUndoRedoRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868820, &qword_20E33B7D8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoUndoRedoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E085914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868828, &qword_20E33B7E0);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_20E04875C(v24, &qword_27C868828, &qword_20E33B7E0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867540, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868828, &qword_20E33B7E0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868828, &qword_20E33B7E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868828, &qword_20E33B7E0);
    return sub_20E04875C(v32, &qword_27C868828, &qword_20E33B7E0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868828, &qword_20E33B7E0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E085ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F90, &unk_20E3461E0);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C863F90, &unk_20E3461E0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866380, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863F90, &unk_20E3461E0);
  }

  sub_20E0486F4(v24, v32, &qword_27C863F90, &unk_20E3461E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863F90, &unk_20E3461E0);
    return sub_20E04875C(v32, &qword_27C863F90, &unk_20E3461E0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863F90, &unk_20E3461E0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E08648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868830, &qword_20E33B7E8);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_20E04875C(v24, &qword_27C868830, &qword_20E33B7E8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoExternalAgentRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoExternalAgentRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(qword_280E07E90, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868830, &qword_20E33B7E8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868830, &qword_20E33B7E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868830, &qword_20E33B7E8);
    return sub_20E04875C(v32, &qword_27C868830, &qword_20E33B7E8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoExternalAgentRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868830, &qword_20E33B7E8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoExternalAgentRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E086A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868838, &qword_20E33B7F0);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_20E04875C(v24, &qword_27C868838, &qword_20E33B7F0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoTypeConversionRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoTypeConversionRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867558, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868838, &qword_20E33B7F0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868838, &qword_20E33B7F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868838, &qword_20E33B7F0);
    return sub_20E04875C(v32, &qword_27C868838, &qword_20E33B7F0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoTypeConversionRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868838, &qword_20E33B7F0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoTypeConversionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E087004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868840, &qword_20E33B7F8);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_20E04875C(v24, &qword_27C868840, &qword_20E33B7F8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoTypeConversionResult);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoTypeConversionResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867570, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868840, &qword_20E33B7F8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868840, &qword_20E33B7F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868840, &qword_20E33B7F8);
    return sub_20E04875C(v32, &qword_27C868840, &qword_20E33B7F8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoTypeConversionResult);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868840, &qword_20E33B7F8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoTypeConversionResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0875C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v6 = *(DecorationResult - 8);
  v7 = MEMORY[0x28223BE20](DecorationResult);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868848, &qword_20E33B800);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationResult;
  v26 = DecorationResult;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_20E04875C(v24, &qword_27C868848, &qword_20E33B800);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationResult);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867588, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868848, &qword_20E33B800);
  }

  sub_20E0486F4(v24, v32, &qword_27C868848, &qword_20E33B800);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868848, &qword_20E33B800);
    return sub_20E04875C(v32, &qword_27C868848, &qword_20E33B800);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationResult);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868848, &qword_20E33B800);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E087B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionStart(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868850, &qword_20E33B808);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868850, &qword_20E33B808);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoSessionStart);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSessionStart);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(qword_280E0CEC0, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868850, &qword_20E33B808);
  }

  sub_20E0486F4(v24, v32, &qword_27C868850, &qword_20E33B808);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868850, &qword_20E33B808);
    return sub_20E04875C(v32, &qword_27C868850, &qword_20E33B808);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoSessionStart);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868850, &qword_20E33B808);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSessionStart);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E08812C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868858, &qword_20E33B810);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v24, &qword_27C868858, &qword_20E33B810);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRecoverableError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRecoverableError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866A38, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868858, &qword_20E33B810);
  }

  sub_20E0486F4(v24, v32, &qword_27C868858, &qword_20E33B810);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868858, &qword_20E33B810);
    return sub_20E04875C(v32, &qword_27C868858, &qword_20E33B810);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRecoverableError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868858, &qword_20E33B810);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRecoverableError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0886E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868860, &qword_20E33B818);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_20E04875C(v24, &qword_27C868860, &qword_20E33B818);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoContinuePlanning);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoContinuePlanning);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867660, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868860, &qword_20E33B818);
  }

  sub_20E0486F4(v24, v32, &qword_27C868860, &qword_20E33B818);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868860, &qword_20E33B818);
    return sub_20E04875C(v32, &qword_27C868860, &qword_20E33B818);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoContinuePlanning);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868860, &qword_20E33B818);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoContinuePlanning);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E088CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v6 = *(DecorationPrePlannerResult - 8);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868868, &qword_20E33B820);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DecorationPrePlannerResult;
  v26 = DecorationPrePlannerResult;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_20E04875C(v24, &qword_27C868868, &qword_20E33B820);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8675A0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868868, &qword_20E33B820);
  }

  sub_20E0486F4(v24, v32, &qword_27C868868, &qword_20E33B820);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868868, &qword_20E33B820);
    return sub_20E04875C(v32, &qword_27C868868, &qword_20E33B820);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868868, &qword_20E33B820);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E089260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868870, &qword_20E33B828);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_20E04875C(v24, &qword_27C868870, &qword_20E33B828);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSkipStatement);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSkipStatement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867678, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868870, &qword_20E33B828);
  }

  sub_20E0486F4(v24, v32, &qword_27C868870, &qword_20E33B828);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868870, &qword_20E33B828);
    return sub_20E04875C(v32, &qword_27C868870, &qword_20E33B828);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSkipStatement);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868870, &qword_20E33B828);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSkipStatement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E08981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868878, &qword_20E33B830);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_20E04875C(v24, &qword_27C868878, &qword_20E33B830);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867690, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868878, &qword_20E33B830);
  }

  sub_20E0486F4(v24, v32, &qword_27C868878, &qword_20E33B830);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868878, &qword_20E33B830);
    return sub_20E04875C(v32, &qword_27C868878, &qword_20E33B830);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868878, &qword_20E33B830);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E089DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868880, &qword_20E33B838);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_20E04875C(v24, &qword_27C868880, &qword_20E33B838);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestAmendment);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestAmendment);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8676C0, type metadata accessor for TranscriptProtoRequestAmendment, &protocol conformance descriptor for TranscriptProtoRequestAmendment);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868880, &qword_20E33B838);
  }

  sub_20E0486F4(v24, v32, &qword_27C868880, &qword_20E33B838);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868880, &qword_20E33B838);
    return sub_20E04875C(v32, &qword_27C868880, &qword_20E33B838);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestAmendment);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868880, &qword_20E33B838);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestAmendment);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E08A394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868888, &qword_20E33B840);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_20E04875C(v24, &qword_27C868888, &qword_20E33B840);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoToolRetrievalRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoToolRetrievalRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8676D8, type metadata accessor for TranscriptProtoToolRetrievalRequest, &protocol conformance descriptor for TranscriptProtoToolRetrievalRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868888, &qword_20E33B840);
  }

  sub_20E0486F4(v24, v32, &qword_27C868888, &qword_20E33B840);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868888, &qword_20E33B840);
    return sub_20E04875C(v32, &qword_27C868888, &qword_20E33B840);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868888, &qword_20E33B840);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E08A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868890, &qword_20E33B848);
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
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_20E04875C(v24, &qword_27C868890, &qword_20E33B848);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoContextRetrievalRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoContextRetrievalRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8676F0, type metadata accessor for TranscriptProtoContextRetrievalRequest, &protocol conformance descriptor for TranscriptProtoContextRetrievalRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868890, &qword_20E33B848);
  }

  sub_20E0486F4(v24, v32, &qword_27C868890, &qword_20E33B848);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868890, &qword_20E33B848);
    return sub_20E04875C(v32, &qword_27C868890, &qword_20E33B848);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoContextRetrievalRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868890, &qword_20E33B848);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoContextRetrievalRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E08AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  v6 = *(matched - 8);
  v7 = MEMORY[0x28223BE20](matched);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868898, &qword_20E33B850);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = matched;
  v26 = matched;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863FC8, &unk_20E33C1D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863FC8, &unk_20E33C1D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPayloadEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_20E04875C(v24, &qword_27C868898, &qword_20E33B850);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSpanMatchRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSpanMatchRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPayloadEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867708, type metadata accessor for TranscriptProtoSpanMatchRequest, &protocol conformance descriptor for TranscriptProtoSpanMatchRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868898, &qword_20E33B850);
  }

  sub_20E0486F4(v24, v32, &qword_27C868898, &qword_20E33B850);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868898, &qword_20E33B850);
    return sub_20E04875C(v32, &qword_27C868898, &qword_20E33B850);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSpanMatchRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868898, &qword_20E33B850);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863FC8, &unk_20E33C1D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSpanMatchRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E08F0A0(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
        }

        goto LABEL_10;
      case 2u:
        sub_20E08BB38(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 3u:
        sub_20E08BD70(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 4u:
        sub_20E08BFA8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 5u:
        sub_20E08C1E0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 6u:
        sub_20E08C418(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 7u:
        sub_20E08C650(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 8u:
        sub_20E08FDEC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 9u:
        sub_20E08CD20(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xAu:
        sub_20E08CF58(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xBu:
        sub_20E08D190(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xCu:
        sub_20E08D3C8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xDu:
        sub_20E08D600(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xEu:
        sub_20E08D838(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xFu:
        sub_20E08DA70(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x10u:
        sub_20E08DCA8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x11u:
        sub_20E08DEE0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x12u:
        sub_20E08E118(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x13u:
        sub_20E08E350(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x14u:
        sub_20E08F2D8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x15u:
        sub_20E08E588(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x16u:
        sub_20E08E7C0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x17u:
        sub_20E08E9F8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x18u:
        sub_20E08EC30(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x19u:
        sub_20E08EE68(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Au:
        sub_20E08F510(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Bu:
        sub_20E08F748(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Cu:
        sub_20E08F980(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Du:
        sub_20E090024(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Eu:
        sub_20E09025C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Fu:
        sub_20E090494(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x20u:
        sub_20E0906CC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x21u:
        sub_20E090904(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x22u:
        sub_20E090B3C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x23u:
        sub_20E090D74(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
        }

        goto LABEL_10;
      case 0x24u:
        sub_20E090FAC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x25u:
        result = sub_20E08C888(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x26u:
        result = sub_20E08CAD4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E08FBB8(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
        }

LABEL_10:
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
        break;
    }
  }

  type metadata accessor for TranscriptProtoPayload(0);
  return sub_20E3221A0();
}

uint64_t sub_20E08BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPlan(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPlan);
    sub_20E195B0C(&qword_27C866A20, type metadata accessor for TranscriptProtoPlan, &protocol conformance descriptor for TranscriptProtoPlan);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPlan);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoAction);
    sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAction);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08BFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoClientAction);
    sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoClientAction);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08C1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  MEMORY[0x28223BE20](Step);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoQueryStep);
    sub_20E195B0C(&qword_27C866A90, type metadata accessor for TranscriptProtoQueryStep, &protocol conformance descriptor for TranscriptProtoQueryStep);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryStep);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoVariableStep);
    sub_20E195B0C(&qword_27C866E98, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoVariableStep);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08C650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSessionError);
    sub_20E195B0C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C863FC8, &unk_20E33C1D0);
  v12 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C863FC8, &unk_20E33C1D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
    if (EnumCaseMultiPayload == 37)
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

uint64_t sub_20E08CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C863FC8, &unk_20E33C1D0);
  v12 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C863FC8, &unk_20E33C1D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoPayloadEnum);
    if (EnumCaseMultiPayload == 38)
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

uint64_t sub_20E08CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoQueryStepResults);
    sub_20E195B0C(&qword_27C866B08, type metadata accessor for TranscriptProtoQueryStepResults, &protocol conformance descriptor for TranscriptProtoQueryStepResults);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryStepResults);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08CF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionResolverRequest);
    sub_20E195B0C(&qword_27C866DA0, type metadata accessor for TranscriptProtoActionResolverRequest, &protocol conformance descriptor for TranscriptProtoActionResolverRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionResolverRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSafetyModeRelease);
    sub_20E195B0C(&qword_27C866DF0, type metadata accessor for TranscriptProtoSafetyModeRelease, &protocol conformance descriptor for TranscriptProtoSafetyModeRelease);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSafetyModeRelease);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08D3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSafetyModeException);
    sub_20E195B0C(&qword_27C866E08, type metadata accessor for TranscriptProtoSafetyModeException, &protocol conformance descriptor for TranscriptProtoSafetyModeException);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSafetyModeException);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08D600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    sub_20E195B0C(&qword_27C866640, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08D838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  MEMORY[0x28223BE20](matched);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    sub_20E195B0C(&qword_27C867438, type metadata accessor for TranscriptProtoEntitySpanMatchResult, &protocol conformance descriptor for TranscriptProtoEntitySpanMatchResult);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoContextRetrieved);
    sub_20E195B0C(&qword_27C866DB8, type metadata accessor for TranscriptProtoContextRetrieved, &protocol conformance descriptor for TranscriptProtoContextRetrieved);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoContextRetrieved);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionCancellation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionCancellation);
    sub_20E195B0C(&qword_27C866558, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionCancellation);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    sub_20E195B0C(&qword_27C867450, type metadata accessor for TranscriptProtoToolRetrievalResponse, &protocol conformance descriptor for TranscriptProtoToolRetrievalResponse);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemResponse);
    sub_20E195B0C(&qword_27C867468, type metadata accessor for TranscriptProtoSystemResponse, &protocol conformance descriptor for TranscriptProtoSystemResponse);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemResponse);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementResult);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    sub_20E195B0C(qword_280E07F38, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08E9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolResolution(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoToolResolution);
    sub_20E195B0C(&qword_27C867510, type metadata accessor for TranscriptProtoToolResolution, &protocol conformance descriptor for TranscriptProtoToolResolution);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoToolResolution);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoUndoRedoRequest);
    sub_20E195B0C(&qword_27C867528, type metadata accessor for TranscriptProtoUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoUndoRedoRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoUndoRedoRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08EE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    sub_20E195B0C(&qword_27C867540, type metadata accessor for TranscriptProtoClientUndoRedoRequest, &protocol conformance descriptor for TranscriptProtoClientUndoRedoRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequest);
    sub_20E195B0C(&qword_27C866380, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoExternalAgentRequest);
    sub_20E195B0C(qword_280E07E90, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExternalAgentRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 26)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoTypeConversionRequest);
    sub_20E195B0C(&qword_27C867558, type metadata accessor for TranscriptProtoTypeConversionRequest, &protocol conformance descriptor for TranscriptProtoTypeConversionRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoTypeConversionRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 27)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoTypeConversionResult);
    sub_20E195B0C(&qword_27C867570, type metadata accessor for TranscriptProtoTypeConversionResult, &protocol conformance descriptor for TranscriptProtoTypeConversionResult);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoTypeConversionResult);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  MEMORY[0x28223BE20](DecorationResult);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 28)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationResult);
    sub_20E195B0C(&qword_27C867588, type metadata accessor for TranscriptProtoQueryDecorationResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationResult);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryDecorationResult);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionStart(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSessionStart);
    sub_20E195B0C(qword_280E0CEC0, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionStart);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E08FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRecoverableError);
    sub_20E195B0C(&qword_27C866A38, type metadata accessor for TranscriptProtoRecoverableError, &protocol conformance descriptor for TranscriptProtoRecoverableError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRecoverableError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 29)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoContinuePlanning);
    sub_20E195B0C(&qword_27C867660, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoContinuePlanning);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E09025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 30)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    sub_20E195B0C(&qword_27C8675A0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResult);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSkipStatement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 31)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSkipStatement);
    sub_20E195B0C(&qword_27C867678, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSkipStatement);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0906CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 32)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
    sub_20E195B0C(&qword_27C867690, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest, &protocol conformance descriptor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 33)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestAmendment);
    sub_20E195B0C(&qword_27C8676C0, type metadata accessor for TranscriptProtoRequestAmendment, &protocol conformance descriptor for TranscriptProtoRequestAmendment);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestAmendment);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 34)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    sub_20E195B0C(&qword_27C8676D8, type metadata accessor for TranscriptProtoToolRetrievalRequest, &protocol conformance descriptor for TranscriptProtoToolRetrievalRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoToolRetrievalRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 35)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoContextRetrievalRequest);
    sub_20E195B0C(&qword_27C8676F0, type metadata accessor for TranscriptProtoContextRetrievalRequest, &protocol conformance descriptor for TranscriptProtoContextRetrievalRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E090FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  MEMORY[0x28223BE20](matched);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863FC8, &unk_20E33C1D0);
  v11 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863FC8, &unk_20E33C1D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 36)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSpanMatchRequest);
    sub_20E195B0C(&qword_27C867708, type metadata accessor for TranscriptProtoSpanMatchRequest, &protocol conformance descriptor for TranscriptProtoSpanMatchRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSpanMatchRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E091230(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_20E322DE0();
  a1(0);
  sub_20E195B0C(a2, a3, a4);
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E091340(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E40, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0913E0(uint64_t a1)
{
  sub_20E195B0C(qword_280E0F180, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return sub_20E322470();
}

uint64_t sub_20E09144C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E0F180, type metadata accessor for TranscriptProtoPayload, &protocol conformance descriptor for TranscriptProtoPayload);

  return sub_20E322480();
}

uint64_t sub_20E0914E8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8642F8);
  __swift_project_value_buffer(v0, qword_27C8642F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientSessionId";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "events";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoTranscript.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for TranscriptProtoEvent(0);
          sub_20E195B0C(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
          sub_20E322420();
          break;
        case 2:
          sub_20E3223D0();
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

uint64_t TranscriptProtoTranscript.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v3[4])
    {
      result = sub_20E322540();
    }

    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        type metadata accessor for TranscriptProtoEvent(0);
        sub_20E195B0C(qword_280E0FFD8, type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
        sub_20E322570();
      }

      type metadata accessor for TranscriptProtoTranscript(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0919C0@<X0>(void *a2@<X8>)
{
  a2[3] = 0;
  a2[4] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E091A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E38, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E091B14(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866340, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return sub_20E322470();
}

uint64_t sub_20E091B80(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866340, type metadata accessor for TranscriptProtoTranscript, &protocol conformance descriptor for TranscriptProtoTranscript);

  return sub_20E322480();
}

uint64_t sub_20E091C1C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864310);
  __swift_project_value_buffer(v0, qword_27C864310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rawDate";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoTimepoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_20E3223E0();
      }
    }

    else if (result == 1)
    {
      sub_20E091F58(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
LABEL_12:
      sub_20E322410();
    }
  }
}

uint64_t sub_20E091F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_20E322150();
  sub_20E195B0C(&qword_280E12B18, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_20E322430();
}

uint64_t TranscriptProtoTimepoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0920FC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_20E322560();
    }

    if (v3[1])
    {
      sub_20E322560();
    }

    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_20E322540();
    }

    type metadata accessor for TranscriptProtoTimepoint(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0920FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_20E322150();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoTimepoint(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C868778, &unk_20E33C000);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868778, &unk_20E33C000);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_20E195B0C(&qword_280E12B18, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_20E322580();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_20E092364@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 28);
  v4 = sub_20E322150();
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E09245C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E30, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0924FC(uint64_t a1)
{
  sub_20E195B0C(qword_280E0E988, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return sub_20E322470();
}

uint64_t sub_20E092568(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E0E988, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);

  return sub_20E322480();
}

uint64_t sub_20E092604()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864328);
  __swift_project_value_buffer(v0, qword_27C864328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "initialLocaleSettings";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSessionStart.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 4)
      {
        if (result == 5)
        {
          sub_20E092A84(a1, v5, a2, a3);
        }

        else if (result == 6)
        {
          type metadata accessor for TranscriptProtoSessionStart(0);
          sub_20E3222E0();
        }
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoLocaleSettings(0);
        sub_20E195B0C(qword_280E0BE10, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);
        sub_20E322430();
      }

      else if (result == 3)
      {
        sub_20E0929D0(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0929D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSessionStart(0);
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_20E195B0C(&qword_27C8674F0, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);
  return sub_20E322430();
}

uint64_t sub_20E092A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoSessionStart(0);
  type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_20E195B0C(&qword_27C8674C0, type metadata accessor for TranscriptProtoGenderSettings, &protocol conformance descriptor for TranscriptProtoGenderSettings);
  return sub_20E322430();
}

uint64_t TranscriptProtoSessionStart.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E092C0C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E092E1C(v3, a1, a2, a3);
    sub_20E093038(v3, a1, a2, a3);
    sub_20E134408(v3, a1, a2, a3, type metadata accessor for TranscriptProtoSessionStart);
    type metadata accessor for TranscriptProtoSessionStart(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E092C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687B0, &unk_20E33C1E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8687B0, &unk_20E33C1E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8687B0, &unk_20E33C1E0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E195B0C(qword_280E0BE10, type metadata accessor for TranscriptProtoLocaleSettings, &protocol conformance descriptor for TranscriptProtoLocaleSettings);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoLocaleSettings);
}

uint64_t sub_20E092E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687A0, &unk_20E3461A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoSessionStart(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C8687A0, &unk_20E3461A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8687A0, &unk_20E3461A0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_20E195B0C(&qword_27C8674F0, type metadata accessor for TranscriptProtoDeviceDetails, &protocol conformance descriptor for TranscriptProtoDeviceDetails);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoDeviceDetails);
}

uint64_t sub_20E093038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868790, &unk_20E33C1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoGenderSettings(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoSessionStart(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868790, &unk_20E33C1F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868790, &unk_20E33C1F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoGenderSettings);
  sub_20E195B0C(&qword_27C8674C0, type metadata accessor for TranscriptProtoGenderSettings, &protocol conformance descriptor for TranscriptProtoGenderSettings);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoGenderSettings);
}

uint64_t sub_20E0932A0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoGenderSettings(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  *(a2 + a1[7]) = 2;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0933F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E28, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E093494(uint64_t a1)
{
  sub_20E195B0C(qword_280E0CEC0, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return sub_20E322470();
}

uint64_t sub_20E093500(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E0CEC0, type metadata accessor for TranscriptProtoSessionStart, &protocol conformance descriptor for TranscriptProtoSessionStart);

  return sub_20E322480();
}

uint64_t sub_20E09359C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864340);
  __swift_project_value_buffer(v0, qword_27C864340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dateTime";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZone";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0937B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_20E322150();
  sub_20E195B0C(&qword_280E12B18, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return sub_20E322430();
}

uint64_t sub_20E0938A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_20E322150();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868778, &unk_20E33C000);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868778, &unk_20E33C000);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_20E195B0C(&qword_280E12B18, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_20E322580();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_20E093B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E20, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E093C38(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866368, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);

  return sub_20E322470();
}

uint64_t sub_20E093CA4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866368, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);

  return sub_20E322480();
}

uint64_t sub_20E093D40()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864358);
  __swift_project_value_buffer(v0, qword_27C864358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (result > 6)
      {
        if (result == 7)
        {
          sub_20E09451C(a1, v5, a2, a3);
        }

        else if (result == 8)
        {
          sub_20E0945D0(a1, v5, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_20E0943B4(a1, v5, a2, a3);
      }

      else
      {
        sub_20E094468(a1, v5, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_20E094300(a1, v5, a2, a3);
      }

      else
      {
        type metadata accessor for TranscriptProtoRequest(0);
        sub_20E3223D0();
      }
    }

    else if (result == 1)
    {
      sub_20E09424C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E3222F0();
    }
  }

  return result;
}

uint64_t sub_20E09424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  return sub_20E322430();
}

uint64_t sub_20E094300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  sub_20E195B0C(&qword_27C866458, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);
  return sub_20E322430();
}

uint64_t sub_20E0943B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_20E322430();
}

uint64_t sub_20E094468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_20E195B0C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
  return sub_20E322430();
}

uint64_t sub_20E09451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_20E195B0C(&qword_27C8663A0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);
  return sub_20E322430();
}

uint64_t sub_20E0945D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequest(0);
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_20E195B0C(&qword_27C866368, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);
  return sub_20E322430();
}

uint64_t TranscriptProtoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0947D0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    sub_20E0949EC(v3, a1, a2, a3);
    sub_20E1333E8(v3, a1, a2, a3, type metadata accessor for TranscriptProtoRequest, 4);
    sub_20E094C08(v3, a1, a2, a3);
    sub_20E094E24(v3, a1, a2, a3);
    sub_20E095040(v3, a1, a2, a3);
    sub_20E09525C(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoRequest(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0947D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C867EF8, &qword_20E33AFC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C867EF8, &qword_20E33AFC8);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoRequestContent);
}

uint64_t sub_20E0949EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F88, &unk_20E33C200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863F88, &unk_20E33C200);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863F88, &unk_20E33C200);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_20E195B0C(&qword_27C866458, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
}

uint64_t sub_20E094C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C868708, &qword_20E33B700);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868708, &qword_20E33B700);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
}

uint64_t sub_20E094E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868758, &unk_20E33C210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C868758, &unk_20E33C210);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868758, &unk_20E33C210);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  sub_20E195B0C(&qword_27C868770, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
}

uint64_t sub_20E095040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868748, &qword_20E33B738);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v12 + 40), v7, &qword_27C868748, &qword_20E33B738);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868748, &qword_20E33B738);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  sub_20E195B0C(&qword_27C8663A0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
}

uint64_t sub_20E09525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868738, &unk_20E33C220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  sub_20E0486F4(a1 + *(v12 + 44), v7, &qword_27C868738, &unk_20E33C220);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868738, &unk_20E33C220);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoDateTimeContext);
  sub_20E195B0C(&qword_27C866368, type metadata accessor for TranscriptProtoDateTimeContext, &protocol conformance descriptor for TranscriptProtoDateTimeContext);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoDateTimeContext);
}

uint64_t sub_20E0954C4@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = &a2[a1[7]];
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v10 - 8) + 56))(&a2[v8], 1, 1, v10);
  v11 = a1[9];
  v12 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = a1[10];
  v14 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  v15 = a1[11];
  v16 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E095710(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E18, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0957B0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866380, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return sub_20E322470();
}

uint64_t sub_20E09581C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866380, type metadata accessor for TranscriptProtoRequest, &protocol conformance descriptor for TranscriptProtoRequest);

  return sub_20E322480();
}

uint64_t sub_20E0958B8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864370);
  __swift_project_value_buffer(v0, qword_27C864370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t sub_20E095B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
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
  sub_20E0486F4(a1, v12, &qword_27C865978, &qword_20E326390);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865978, &qword_20E326390);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestContentEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestContentEnum);
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
    sub_20E04875C(v38, &qword_27C865978, &qword_20E326390);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestContentTextContent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E096138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
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
  sub_20E0486F4(a1, v12, &qword_27C865978, &qword_20E326390);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865978, &qword_20E326390);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestContentEnum);
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
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestContentEnum);
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
    sub_20E04875C(v38, &qword_27C865978, &qword_20E326390);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0966F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B88, &qword_20E323E78);
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
  sub_20E0486F4(a1, v12, &qword_27C865978, &qword_20E326390);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865978, &qword_20E326390);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestContentEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C863B88, &qword_20E323E78);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSystemPromptResolution);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestContentEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866D70, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C863B88, &qword_20E323E78);
  }

  sub_20E0486F4(v24, v32, &qword_27C863B88, &qword_20E323E78);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B88, &qword_20E323E78);
    return sub_20E04875C(v32, &qword_27C863B88, &qword_20E323E78);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSystemPromptResolution);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B88, &qword_20E323E78);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865978, &qword_20E326390);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemPromptResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E096CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868730, &qword_20E33B728);
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
  sub_20E0486F4(a1, v12, &qword_27C865978, &qword_20E326390);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865978, &qword_20E326390);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestContentEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C868730, &qword_20E33B728);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestContentStopContent);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestContentStopContent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestContentEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8663B8, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868730, &qword_20E33B728);
  }

  sub_20E0486F4(v24, v32, &qword_27C868730, &qword_20E33B728);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868730, &qword_20E33B728);
    return sub_20E04875C(v32, &qword_27C868730, &qword_20E33B728);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestContentStopContent);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868730, &qword_20E33B728);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865978, &qword_20E326390);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestContentStopContent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoRequestContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C865978, &qword_20E326390);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0978AC(v3, a1, a2, a3);
    }

    else
    {
      sub_20E097AE4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E097674(v3, a1, a2, a3);
  }

  else
  {
    sub_20E097440(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContentEnum);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoRequestContent(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E097440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865978, &qword_20E326390);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865978, &qword_20E326390);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContentTextContent);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E097674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865978, &qword_20E326390);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865978, &qword_20E326390);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0978AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865978, &qword_20E326390);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865978, &qword_20E326390);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemPromptResolution);
    sub_20E195B0C(&qword_27C866D70, type metadata accessor for TranscriptProtoSystemPromptResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolution);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolution);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E097AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865978, &qword_20E326390);
  v11 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865978, &qword_20E326390);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_20E195B0C(&qword_27C8663B8, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContentStopContent);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E097DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E10, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E097E6C(uint64_t a1)
{
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return sub_20E322470();
}

uint64_t sub_20E097ED8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);

  return sub_20E322480();
}

uint64_t sub_20E098074(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E08, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E098114(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8663A0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);

  return sub_20E322470();
}

uint64_t sub_20E098180(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8663A0, type metadata accessor for TranscriptProtoRequestSuggestedInvocation, &protocol conformance descriptor for TranscriptProtoRequestSuggestedInvocation);

  return sub_20E322480();
}

uint64_t TranscriptProtoRequestContentStopContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_20E3222B0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_20E09830C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867E00, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0983AC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8663B8, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return sub_20E322470();
}

uint64_t sub_20E098418(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8663B8, type metadata accessor for TranscriptProtoRequestContentStopContent, &protocol conformance descriptor for TranscriptProtoRequestContentStopContent);

  return sub_20E322480();
}

uint64_t sub_20E0984B0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8643B8);
  __swift_project_value_buffer(v0, qword_27C8643B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0986C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0987BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E098A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DF8, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E098B28(uint64_t a1)
{
  sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return sub_20E322470();
}

uint64_t sub_20E098B94(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E10CB8, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);

  return sub_20E322480();
}

uint64_t sub_20E098C30()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8643D0);
  __swift_project_value_buffer(v0, qword_27C8643D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequestContentSpeechContent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E099030(a1, v5, a2, a3);
      }

      else if (result == 5)
      {
        sub_20E0990E4(a1, v5, a2, a3);
      }
    }

    else if (result == 2)
    {
      sub_20E3223E0();
    }

    else if (result == 3)
    {
      sub_20E098F7C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E098F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  return sub_20E322430();
}

uint64_t sub_20E099030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0990E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  return sub_20E322430();
}

uint64_t TranscriptProtoRequestContentSpeechContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E099274(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E099490(v3, a1, a2, a3);
      sub_20E0996AC(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E099274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868718, &qword_20E33B710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868718, &qword_20E33B710);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868718, &qword_20E33B710);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpeechPackage);
}

uint64_t sub_20E099490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0996AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868718, &qword_20E33B710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C868718, &qword_20E33B710);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868718, &qword_20E33B710);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoSpeechPackage);
}

uint64_t sub_20E099914@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v6(&a2[a1[7]], 1, 1, v5);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E099A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DF0, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E099AF4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return sub_20E322470();
}

uint64_t sub_20E099B60(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8663D8, type metadata accessor for TranscriptProtoRequestContentSpeechContent, &protocol conformance descriptor for TranscriptProtoRequestContentSpeechContent);

  return sub_20E322480();
}

uint64_t TranscriptProtoSpeechPackage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0), sub_20E195B0C(&qword_27C8659B0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoSpeechPackage(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E099E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DE8, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E099EDC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return sub_20E322470();
}

uint64_t sub_20E099F48(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8663F0, type metadata accessor for TranscriptProtoSpeechPackage, &protocol conformance descriptor for TranscriptProtoSpeechPackage);

  return sub_20E322480();
}

uint64_t sub_20E09A0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_20E195B0C(a5, a6, a7);
      sub_20E322420();
    }
  }

  return result;
}

uint64_t TranscriptProtoSpeechPackage.Phrase.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0), sub_20E195B0C(&qword_27C8659C0, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E09A350(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DE0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09A3F0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8659B0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return sub_20E322470();
}

uint64_t sub_20E09A45C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8659B0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Phrase);

  return sub_20E322480();
}

uint64_t TranscriptProtoSpeechPackage.Interpretation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Token(0), sub_20E195B0C(&qword_27C8659D0, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E09A794(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DD8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09A834(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8659C0, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_20E322470();
}

uint64_t sub_20E09A8A0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8659C0, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_20E322480();
}

uint64_t sub_20E09A954(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000018;
  *a5 = 0x800000020E35AD80;
  return result;
}

uint64_t sub_20E09A9E8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864460);
  __swift_project_value_buffer(v0, qword_27C864460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "endTime";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSpeechPackage.Token.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_20E3223E0();
      }

      else if (result == 2)
      {
        sub_20E322390();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
      sub_20E3223C0();
    }
  }

  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_20E322510(), !v4))
    {
      if (*(v3 + 24) == 0.0 || (result = sub_20E322530(), !v4))
      {
        if (*(v3 + 32) == 0.0 || (result = sub_20E322530(), !v4))
        {
          if (*(v3 + 40) == 0.0 || (result = sub_20E322530(), !v4))
          {
            type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
            return sub_20E3221A0();
          }
        }
      }
    }
  }

  return result;
}

double sub_20E09AEEC@<D0>(uint64_t a2@<X8>)
{
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t sub_20E09AFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DD0, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09B044(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8659D0, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return sub_20E322470();
}

uint64_t sub_20E09B0B0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8659D0, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return sub_20E322480();
}

uint64_t sub_20E09B14C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864478);
  __swift_project_value_buffer(v0, qword_27C864478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rawRewriteMetadataEventId";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rewriteMetadataInlined";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExternalAgentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E09B4B8(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for TranscriptProtoExternalAgentRequest(0);
          sub_20E3223D0();
          break;
        case 1:
          type metadata accessor for TranscriptProtoRequestContent(0);
          sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
          sub_20E322430();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E09B4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_20E322430();
}

uint64_t sub_20E09B5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867EF8, &qword_20E33AFC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C867EF8, &qword_20E33AFC8);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E195B0C(qword_280E0BBB0, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoRequestContent);
}

uint64_t sub_20E09B7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E09B85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868708, &qword_20E33B700);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868708, &qword_20E33B700);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
}

uint64_t sub_20E09BAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v7 - 8) + 56))(a2 + v5, 1, 1, v7);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E09BBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DC8, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09BC74(uint64_t a1)
{
  sub_20E195B0C(qword_280E07E90, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return sub_20E322470();
}

uint64_t sub_20E09BCE0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E07E90, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return sub_20E322480();
}

uint64_t sub_20E09BD7C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864490);
  __swift_project_value_buffer(v0, qword_27C864490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequest";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrites";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_20E322520(), !v4))
    {
      type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E09C130(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DC0, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E09C1D0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_20E322470();
}

uint64_t sub_20E09C23C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866440, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_20E322480();
}

uint64_t sub_20E09C318()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8644A8);
  __swift_project_value_buffer(v0, qword_27C8644A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "searchTool";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "lowConfidenceKnowledgeTool";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 6;
  *v11 = "textTool";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 7;
  *v13 = "convertTool";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "displayTool";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 9;
  *v17 = "knowledgeTool";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 10;
  *v19 = "openTool";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "openSuccessValueFromLatestRequestTool";
  *(v21 + 1) = 37;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequestPrescribedPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 7)
    {
      if (result > 9)
      {
        if (result == 10)
        {
          sub_20E09EA6C(v5, a1, a2, a3);
        }

        else if (result == 11)
        {
          sub_20E09F028(v5, a1, a2, a3);
        }
      }

      else if (result == 8)
      {
        sub_20E09DEF4(v5, a1, a2, a3);
      }

      else
      {
        sub_20E09E4B0(v5, a1, a2, a3);
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_20E09D37C(v5, a1, a2, a3);
      }

      else
      {
        sub_20E09D938(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E09C810(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E09CDC0(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E09C810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686C8, &qword_20E33B6C0);
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
  sub_20E0486F4(a1, v12, &qword_27C8659F8, &unk_20E33C240);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8659F8, &unk_20E33C240);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C8686C8, &qword_20E33B6C0);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866470, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8686C8, &qword_20E33B6C0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8686C8, &qword_20E33B6C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8686C8, &qword_20E33B6C0);
    return sub_20E04875C(v32, &qword_27C8686C8, &qword_20E33B6C0);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8686C8, &qword_20E33B6C0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E09CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686D0, &qword_20E33B6C8);
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
  sub_20E0486F4(a1, v12, &qword_27C8659F8, &unk_20E33C240);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8659F8, &unk_20E33C240);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C8686D0, &qword_20E33B6C8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866488, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8686D0, &qword_20E33B6C8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8686D0, &qword_20E33B6C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8686D0, &qword_20E33B6C8);
    return sub_20E04875C(v32, &qword_27C8686D0, &qword_20E33B6C8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8686D0, &qword_20E33B6C8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E09D37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686D8, &qword_20E33B6D0);
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
  sub_20E0486F4(a1, v12, &qword_27C8659F8, &unk_20E33C240);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8659F8, &unk_20E33C240);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C8686D8, &qword_20E33B6D0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8664A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8686D8, &qword_20E33B6D0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8686D8, &qword_20E33B6D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8686D8, &qword_20E33B6D0);
    return sub_20E04875C(v32, &qword_27C8686D8, &qword_20E33B6D0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8686D8, &qword_20E33B6D0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E09D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686E0, &qword_20E33B6D8);
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
  sub_20E0486F4(a1, v12, &qword_27C8659F8, &unk_20E33C240);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8659F8, &unk_20E33C240);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C8686E0, &qword_20E33B6D8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8664B8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8686E0, &qword_20E33B6D8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8686E0, &qword_20E33B6D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8686E0, &qword_20E33B6D8);
    return sub_20E04875C(v32, &qword_27C8686E0, &qword_20E33B6D8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8686E0, &qword_20E33B6D8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E09DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686E8, &qword_20E33B6E0);
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
  sub_20E0486F4(a1, v12, &qword_27C8659F8, &unk_20E33C240);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8659F8, &unk_20E33C240);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C8686E8, &qword_20E33B6E0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8664D0, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8686E8, &qword_20E33B6E0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8686E8, &qword_20E33B6E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8686E8, &qword_20E33B6E0);
    return sub_20E04875C(v32, &qword_27C8686E8, &qword_20E33B6E0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8686E8, &qword_20E33B6E0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E09E4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686F0, &qword_20E33B6E8);
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
  sub_20E0486F4(a1, v12, &qword_27C8659F8, &unk_20E33C240);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8659F8, &unk_20E33C240);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C8686F0, &qword_20E33B6E8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8664E8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8686F0, &qword_20E33B6E8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8686F0, &qword_20E33B6E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8686F0, &qword_20E33B6E8);
    return sub_20E04875C(v32, &qword_27C8686F0, &qword_20E33B6E8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8686F0, &qword_20E33B6E8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E09EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686F8, &qword_20E33B6F0);
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
  sub_20E0486F4(a1, v12, &qword_27C8659F8, &unk_20E33C240);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8659F8, &unk_20E33C240);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C8686F8, &qword_20E33B6F0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866500, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8686F8, &qword_20E33B6F0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8686F8, &qword_20E33B6F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8686F8, &qword_20E33B6F0);
    return sub_20E04875C(v32, &qword_27C8686F8, &qword_20E33B6F0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8686F8, &qword_20E33B6F0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E09F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868700, &qword_20E33B6F8);
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
  sub_20E0486F4(a1, v12, &qword_27C8659F8, &unk_20E33C240);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8659F8, &unk_20E33C240);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C868700, &qword_20E33B6F8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866518, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868700, &qword_20E33B6F8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868700, &qword_20E33B6F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868700, &qword_20E33B6F8);
    return sub_20E04875C(v32, &qword_27C868700, &qword_20E33B6F8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868700, &qword_20E33B6F8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8659F8, &unk_20E33C240);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoRequestPrescribedPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_20E0A0594(v3, a1, a2, a3);
      }

      else
      {
        sub_20E0A07CC(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E0A0124(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0A035C(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E09FCB4(v3, a1, a2, a3);
    }

    else
    {
      sub_20E09FEEC(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E09FA7C(v3, a1, a2, a3);
  }

  else
  {
    sub_20E09F848(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  if (!v4)
  {
LABEL_18:
    type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E09F848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    sub_20E195B0C(&qword_27C866470, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E09FA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    sub_20E195B0C(&qword_27C866488, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E09FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    sub_20E195B0C(&qword_27C8664A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E09FEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    sub_20E195B0C(&qword_27C8664B8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    sub_20E195B0C(&qword_27C8664D0, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    sub_20E195B0C(&qword_27C8664E8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A0594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    sub_20E195B0C(&qword_27C866500, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A07CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8659F8, &unk_20E33C240);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8659F8, &unk_20E33C240);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    sub_20E195B0C(&qword_27C866518, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0A0AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DB8, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A0B54(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866458, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return sub_20E322470();
}

uint64_t sub_20E0A0BC0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866458, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return sub_20E322480();
}

uint64_t sub_20E0A0C5C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8644C0);
  __swift_project_value_buffer(v0, qword_27C8644C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "shouldOpenResultIfApplicable";
  *(v11 + 8) = 28;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A0F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DB0, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A100C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866470, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_20E322470();
}

uint64_t sub_20E0A1078(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866470, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_20E322480();
}

uint64_t sub_20E0A11C4(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0A1308(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A13A8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866488, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_20E322470();
}

uint64_t sub_20E0A1414(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866488, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_20E322480();
}

uint64_t sub_20E0A1490(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0A1568()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8644F0);
  __swift_project_value_buffer(v0, qword_27C8644F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "partner";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A1890(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867DA0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A1930(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8664A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_20E322470();
}

uint64_t sub_20E0A199C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8664A0, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_20E322480();
}

uint64_t sub_20E0A1A64()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864508);
  __swift_project_value_buffer(v0, qword_27C864508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        sub_20E3223D0();
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E3222F0();
    }
  }

  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = *(v3 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_20E322540(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_20E3224C0(), !v4))
    {
      if (*(v3 + 32))
      {
        result = sub_20E322540();
      }

      if (!v4)
      {
        if (*(v3 + 48))
        {
          sub_20E322540();
        }

        type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0A1EE4@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E0A1F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D98, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A2014(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8664B8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_20E322470();
}

uint64_t sub_20E0A2080(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8664B8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_20E322480();
}

uint64_t sub_20E0A211C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864520);
  __swift_project_value_buffer(v0, qword_27C864520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "partner";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A242C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D90, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A24CC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8664D0, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_20E322470();
}

uint64_t sub_20E0A2538(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8664D0, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_20E322480();
}

uint64_t sub_20E0A2600()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864538);
  __swift_project_value_buffer(v0, qword_27C864538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "partner";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A2838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_20E3223D0();
        break;
      case 2:
        sub_20E3222F0();
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0A2910(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *v4;
  v8 = *(v4 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v5))
  {
    if (*(v4 + 16) != 1 || (result = sub_20E3224C0(), !v5))
    {
      if (*(v4 + 32))
      {
        result = sub_20E322540();
      }

      if (!v5)
      {
        a4(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0A2A78@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E0A2AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D88, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A2B88(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8664E8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_20E322470();
}

uint64_t sub_20E0A2BF4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8664E8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_20E322480();
}

uint64_t sub_20E0A2CBC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864550);
  __swift_project_value_buffer(v0, qword_27C864550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resultStatementId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elementAtIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_20E322430();
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
        sub_20E322380();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E0A30D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0A31A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D80, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A3244(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866500, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_20E322470();
}

uint64_t sub_20E0A32B0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866500, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_20E322480();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E322380();
    }
  }

  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 8) & 1) == 0)
  {
    v5 = sub_20E322510();
  }

  if (!v4)
  {
    type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
    return sub_20E3221A0();
  }

  return v5;
}

uint64_t sub_20E0A34D0@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0A3548(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D78, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A35E8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866518, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_20E322470();
}

uint64_t sub_20E0A3654(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866518, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_20E322480();
}

uint64_t sub_20E0A36F0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864580);
  __swift_project_value_buffer(v0, qword_27C864580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20E3262C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 10;
  *v5 = "statementId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "bundleId";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 6;
  *v11 = "isConfirmed";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 7;
  *v13 = "parameterValues";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "planEventId";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 11;
  *v17 = "tool";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 7)
    {
      switch(result)
      {
        case 8:
LABEL_14:
          type metadata accessor for TranscriptProtoAction(0);
          sub_20E3223D0();
          break;
        case 10:
          sub_20E0A3C08(a1, v5, a2, a3);
          break;
        case 11:
          sub_20E0A3CBC(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_14;
        case 6:
          sub_20E3222F0();
          break;
        case 7:
          sub_20E0A3B10(a1, v5, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_20E0A3B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_20E195B0C(&qword_27C865A48, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
  sub_20E195B0C(&qword_27C865A50, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
  return sub_20E322290();
}

uint64_t sub_20E0A3C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAction(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0A3CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAction(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E1333E8(v3, a1, a2, a3, type metadata accessor for TranscriptProtoAction, 3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_20E322170();
      type metadata accessor for TranscriptProtoActionParameterValue(0);
      sub_20E195B0C(&qword_27C865A48, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
      sub_20E195B0C(&qword_27C865A50, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
      sub_20E322490();
    }

    sub_20E13346C(v3, a1, a2, a3, type metadata accessor for TranscriptProtoAction, 8);
    sub_20E0A3F68(v3, a1, a2, a3);
    sub_20E0A4184(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoAction(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0A3F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoAction(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0A4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoAction(0);
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

unint64_t sub_20E0A43EC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[9];
  v10 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  result = sub_20E048D9C(MEMORY[0x277D84F90]);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_20E0A4544(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D70, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A45E4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return sub_20E322470();
}

uint64_t sub_20E0A4650(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866530, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return sub_20E322480();
}

uint64_t sub_20E0A46EC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864598);
  __swift_project_value_buffer(v0, qword_27C864598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionParameterValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoToolParameterValue(0);
        sub_20E195B0C(&qword_27C867410, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E0A49D8(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A49D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  return sub_20E322430();
}

uint64_t sub_20E0A4AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    a6(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0A4B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A0, &unk_20E33C250);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8686A0, &unk_20E33C250);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8686A0, &unk_20E33C250);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoToolParameterValue);
  sub_20E195B0C(&qword_27C867410, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoToolParameterValue);
}

uint64_t sub_20E0A4D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B58, &qword_20E323E68);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B58, &qword_20E323E68);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPromptSelection);
}

uint64_t sub_20E0A5078(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D68, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A5118(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865A48, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return sub_20E322470();
}

uint64_t sub_20E0A5184(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865A48, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return sub_20E322480();
}

uint64_t sub_20E0A5220()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8645B0);
  __swift_project_value_buffer(v0, qword_27C8645B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "cancelledActionStatementId";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionCancellation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 4)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_20E322430();
      }

      else if (result == 5)
      {
        sub_20E0A5510(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A5510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionCancellation(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0A5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0A5828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionCancellation(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0A5B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D60, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A5BA8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866558, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return sub_20E322470();
}

uint64_t sub_20E0A5C14(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866558, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return sub_20E322480();
}

uint64_t sub_20E0A5CDC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8645C8);
  __swift_project_value_buffer(v0, qword_27C8645C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confirmed";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selectedInDisambiguation";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "denied";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPromptSelection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E0A5FD4(a1, v5, a2, a3, 1);
        break;
      case 2:
        sub_20E0ADC1C(a1, v5, a2, a3);
        break;
      case 1:
        sub_20E0A5FD4(a1, v5, a2, a3, 0);
        break;
    }
  }

  return result;
}

uint64_t sub_20E0A5FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_20E322110();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  }

  v20 = a2;
  sub_20E0486F4(v12, v10, &qword_27C867FE0, &qword_20E33B098);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_20E04875C(v10, &qword_27C867FE0, &qword_20E33B098);
  if (v15 == 1)
  {
    return sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  }

  v16 = v20;
  if ((*(v20 + 9) & 1) == 0)
  {
    sub_20E3222C0();
  }

  v17 = v21;
  result = sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  *v16 = v17;
  *(v16 + 8) = 1;
  return result;
}

uint64_t TranscriptProtoPromptSelection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 9))
  {
    goto LABEL_2;
  }

  if (*(v3 + 8))
  {
    if (*v3)
    {
      result = sub_20E0ADEE4(v3, a1, a2, a3, 3);
      if (!v4)
      {
LABEL_2:
        type metadata accessor for TranscriptProtoPromptSelection(0);
        return sub_20E3221A0();
      }
    }

    else
    {
      result = sub_20E0ADD88(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_20E322510();
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_20E0A6398(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D58, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A6438(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return sub_20E322470();
}

uint64_t sub_20E0A64A4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return sub_20E322480();
}

uint64_t sub_20E0A6540()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8645E0);
  __swift_project_value_buffer(v0, qword_27C8645E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "parameterValues";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "systemStyle";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0A6770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for TranscriptProtoParameterValue(0);
  sub_20E195B0C(&qword_27C865A70, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);
  sub_20E195B0C(&qword_27C865A78, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);
  return sub_20E322290();
}

uint64_t sub_20E0A6868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionConfirmation(0);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  sub_20E195B0C(&qword_27C8665A0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionConfirmation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_20E322170(), type metadata accessor for TranscriptProtoParameterValue(0), sub_20E195B0C(&qword_27C865A70, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue), sub_20E195B0C(&qword_27C865A78, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue), v4 = v9, result = sub_20E322490(), !v9))
  {
    result = sub_20E0A6A70(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for TranscriptProtoActionConfirmation(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0A6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868680, &unk_20E33C260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868680, &unk_20E33C260);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868680, &unk_20E33C260);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_20E195B0C(&qword_27C8665A0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
}

uint64_t sub_20E0A6D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D50, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A6DF0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866588, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return sub_20E322470();
}

uint64_t sub_20E0A6E5C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866588, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return sub_20E322480();
}

uint64_t sub_20E0A6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868668, &qword_20E33B670);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868678, &qword_20E33B680);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_20E0486F4(v45, v11, &qword_27C868668, &qword_20E33B670);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_20E04875C(v11, &qword_27C868668, &qword_20E33B670);
    v26 = v40;
  }

  else
  {
    sub_20E195B54(v11, v18, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
    sub_20E195B54(v18, v16, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
    sub_20E04875C(v23, &qword_27C868678, &qword_20E33B680);
    v27 = v38;
    sub_20E195B54(v16, v38, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    sub_20E195B54(v27, v23, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_20E195B0C(&qword_27C8665B8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v28 = v41;
  sub_20E322430();
  v29 = v39;
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C868678, &qword_20E33B680);
  }

  sub_20E0486F4(v23, v39, &qword_27C868678, &qword_20E33B680);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_20E04875C(v23, &qword_27C868678, &qword_20E33B680);
    return sub_20E04875C(v29, &qword_27C868678, &qword_20E33B680);
  }

  else
  {
    v31 = v36;
    sub_20E195B54(v29, v36, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C868678, &qword_20E33B680);
    v32 = v45;
    sub_20E04875C(v45, &qword_27C868668, &qword_20E33B670);
    sub_20E195B54(v31, v32, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_20E0A74F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868668, &qword_20E33B670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868668, &qword_20E33B670);
  v11 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868668, &qword_20E33B670);
  }

  sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E195B0C(&qword_27C8665B8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E322580();
  return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
}

uint64_t sub_20E0A77A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D48, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A7840(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8665A0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_20E322470();
}

uint64_t sub_20E0A78AC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8665A0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_20E322480();
}

uint64_t sub_20E0A7948()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864610);
  __swift_project_value_buffer(v0, qword_27C864610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isExplicitRequest";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E3222F0();
        break;
      case 2:
        sub_20E0A7C30(a1, v5, a2, a3);
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0A7C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_20E195B0C(&qword_27C8665D0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0A7DB8(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_20E3224C0();
      }

      type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0A7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868650, &qword_20E33B660);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868650, &qword_20E33B660);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_20E195B0C(&qword_27C8665D0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
}

uint64_t sub_20E0A8084(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D40, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A8124(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8665B8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_20E322470();
}

uint64_t sub_20E0A8190(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8665B8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_20E322480();
}

uint64_t sub_20E0A822C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864628);
  __swift_project_value_buffer(v0, qword_27C864628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mediaQA";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_20E0A8594(a1, v5, a2, a3, 2);
        }

        else if (result == 4)
        {
          sub_20E0A8594(a1, v5, a2, a3, 3);
        }
      }

      else if (result == 1)
      {
        sub_20E0A8594(a1, v5, a2, a3, 0);
      }

      else if (result == 2)
      {
        sub_20E0A8594(a1, v5, a2, a3, 1);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A8594(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_20E322110();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_20E322300();
  if (v5)
  {
    return sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  }

  v20 = a2;
  sub_20E0486F4(v12, v10, &qword_27C867FE0, &qword_20E33B098);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_20E04875C(v10, &qword_27C867FE0, &qword_20E33B098);
  if (v15 == 1)
  {
    return sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  }

  v16 = v20;
  if (*v20 != 4)
  {
    sub_20E3222C0();
  }

  v17 = v21;
  result = sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  *v16 = v17;
  return result;
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (v5 <= 1)
  {
    if (!*v3)
    {
      result = sub_20E0C21E0(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    result = sub_20E0C232C(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_10:
      type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
      return sub_20E3221A0();
    }
  }

  else
  {
    if (v5 == 2)
    {
      result = sub_20E0C247C(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    if (v5 != 3)
    {
      goto LABEL_10;
    }

    result = sub_20E0C3710(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_20E0A897C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D38, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A8A1C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8665D0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_20E322470();
}

uint64_t sub_20E0A8A88(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8665D0, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_20E322480();
}

uint64_t sub_20E0A8B24()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864640);
  __swift_project_value_buffer(v0, qword_27C864640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E0A8E10(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0A8E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterValue(0);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  return sub_20E322430();
}

uint64_t sub_20E0A8F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterValue(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B58, &qword_20E323E68);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B58, &qword_20E323E68);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E195B0C(&qword_27C866570, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPromptSelection);
}

uint64_t sub_20E0A91F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D30, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A9298(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865A70, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return sub_20E322470();
}

uint64_t sub_20E0A9304(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865A70, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return sub_20E322480();
}

uint64_t sub_20E0A93A0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864658);
  __swift_project_value_buffer(v0, qword_27C864658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assistantSchemaKind";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tools";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoToolDisambiguation.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v5 = sub_20E322540();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
      sub_20E195B0C(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
      sub_20E322570();
    }

    type metadata accessor for TranscriptProtoToolDisambiguation(0);
    return sub_20E3221A0();
  }

  return v5;
}

uint64_t sub_20E0A9788(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D28, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0A9828(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8665F8, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return sub_20E322470();
}

uint64_t sub_20E0A9894(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8665F8, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return sub_20E322480();
}

uint64_t sub_20E0A9930()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864670);
  __swift_project_value_buffer(v0, qword_27C864670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "responseText";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "statementOutcome";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExternalAgentOutcome.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E0A9CCC(a1, v5, a2, a3);
        break;
      case 3:
        sub_20E0A9C18(a1, v5, a2, a3);
        break;
      case 2:
        sub_20E3223A0();
        break;
    }
  }

  return result;
}

uint64_t sub_20E0A9C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0A9CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  return sub_20E322430();
}

uint64_t TranscriptProtoExternalAgentOutcome.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_20E322520(), !v4))
  {
    result = sub_20E0A9E38(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0AA054(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0A9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0AA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863BA8, &unk_20E345F00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BA8, &unk_20E345F00);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_20E0AA2BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E0AA3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D20, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AA474(uint64_t a1)
{
  sub_20E195B0C(qword_280E07F38, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return sub_20E322470();
}

uint64_t sub_20E0AA4E0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E07F38, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return sub_20E322480();
}

uint64_t sub_20E0AA57C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864688);
  __swift_project_value_buffer(v0, qword_27C864688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "outcome";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStatementResultPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementOutcome(0);
        sub_20E195B0C(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E0AA868(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0AA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E195B0C(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  return sub_20E322430();
}

uint64_t sub_20E0AA970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B48, &unk_20E33C280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B48, &unk_20E33C280);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E195B0C(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_20E0AAC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D18, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AACF0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866618, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return sub_20E322470();
}

uint64_t sub_20E0AAD5C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866618, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return sub_20E322480();
}

uint64_t sub_20E0AADF8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8646A0);
  __swift_project_value_buffer(v0, qword_27C8646A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStatementResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      switch(result)
      {
        case 5:
          sub_20E0AB37C(a1, v5, a2, a3);
          break;
        case 6:
          sub_20E0AB430(a1, v5, a2, a3);
          break;
        case 7:
          sub_20E0AB4E4(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E3223D0();
          break;
        case 3:
          sub_20E0AB214(a1, v5, a2, a3);
          break;
        case 4:
          sub_20E0AB2C8(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E0AB214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_20E195B0C(&qword_27C866618, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);
  return sub_20E322430();
}

uint64_t sub_20E0AB2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0AB37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0AB430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0AB4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoStatementResult.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 8))
  {
    result = sub_20E322540();
  }

  if (!v4)
  {
    sub_20E0AB698(v3, v7, a2, a3);
    sub_20E0AB8B4(v3, v7, a2, a3);
    sub_20E0ABAD0(v3, v7, a2, a3);
    sub_20E0ABCEC(v3, v7, a2, a3);
    sub_20E0ABF08(v3, v7, a2, a3);
    type metadata accessor for TranscriptProtoStatementResult(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0AB698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863FB8, &unk_20E325F60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863FB8, &unk_20E325F60);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_20E195B0C(&qword_27C866618, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementResultPayload);
}

uint64_t sub_20E0AB8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0ABAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
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

uint64_t sub_20E0ABCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
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

uint64_t sub_20E0ABF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
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

uint64_t sub_20E0AC170@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&a2[v6], 1, 1, v7);
  v8(&a2[a1[7]], 1, 1, v7);
  v8(&a2[a1[8]], 1, 1, v7);
  v9 = a1[9];
  v10 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0AC310(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D10, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AC3B0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return sub_20E322470();
}

uint64_t sub_20E0AC41C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return sub_20E322480();
}

uint64_t TranscriptProtoResponseGenerationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoStatementResult(0), sub_20E195B0C(&qword_27C865AC8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t static TranscriptProtoResponseGenerationRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1534D8(*a1, *a2, type metadata accessor for TranscriptProtoStatementResult, type metadata accessor for TranscriptProtoStatementResult, _s23LighthouseDataProcessor30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoStatementResult) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0AC7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D08, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AC868(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866640, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return sub_20E322470();
}

uint64_t sub_20E0AC8D4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866640, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return sub_20E322480();
}

uint64_t sub_20E0AC9C0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8646D0);
  __swift_project_value_buffer(v0, qword_27C8646D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_20E0ACDF0(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_20E0ACEA4(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_20E0ACD3C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_20E1846E4();
        sub_20E322310();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0ACD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0ACDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_20E195B0C(&qword_27C866668, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);
  return sub_20E322430();
}

uint64_t sub_20E0ACEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0AD050(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_20E1846E4();
      sub_20E3224D0();
    }

    sub_20E0AD26C(v3, a1, a2, a3);
    sub_20E0AD488(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoCandidate(0);
    return sub_20E3221A0();
  }

  return result;
}