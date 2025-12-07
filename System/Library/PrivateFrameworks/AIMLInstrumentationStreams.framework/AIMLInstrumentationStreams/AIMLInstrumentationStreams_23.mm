uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v10, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C7FA6A0(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C7FA8D8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7FAB10(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C7FA230(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7FA468(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_23C7F9FFC(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  if (!v4)
  {
LABEL_14:
    type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F9FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    sub_23C8314AC(&qword_27E202FA0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FA230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    sub_23C8314AC(&qword_27E202FB8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    sub_23C8314AC(&qword_27E202FD0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    sub_23C8314AC(&qword_27E202FE8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FA8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    sub_23C8314AC(&qword_27E203000, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FAB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v7, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v7, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    sub_23C8314AC(&qword_27E203018, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FADF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203080, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7FAE98(uint64_t a1)
{
  sub_23C8314AC(&qword_27E203030, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7FAF04(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E203030, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, &protocol conformance descriptor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return sub_23C871204();
}

uint64_t sub_23C7FB034(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203078, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7FB0D4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E203048, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);

  return sub_23C8711F4();
}

uint64_t sub_23C7FB140(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E203048, type metadata accessor for TranscriptProtoContinuePlanning, &protocol conformance descriptor for TranscriptProtoContinuePlanning);

  return sub_23C871204();
}

uint64_t sub_23C7FB300@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7FB3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203070, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7FB448(uint64_t a1)
{
  sub_23C8314AC(&qword_27E203060, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);

  return sub_23C8711F4();
}

uint64_t sub_23C7FB4B4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E203060, type metadata accessor for TranscriptProtoSkipStatement, &protocol conformance descriptor for TranscriptProtoSkipStatement);

  return sub_23C871204();
}

uint64_t sub_23C7FB534(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = *(v61 - 8);
  v5 = MEMORY[0x28223BE20](v61);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v59 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203790, &qword_23C8A09F0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v62 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v62 + 16))
  {
    return 0;
  }

  v57 = a1;
  v58 = &v56 - v15;
  v60 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v56 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v63 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_18:
    v30 = (*(v57 + 48) + 16 * v24);
    v32 = *v30;
    v31 = v30[1];
    v33 = v59;
    sub_23C8314F4(*(v57 + 56) + *(v4 + 72) * v24, v59, type metadata accessor for TranscriptProtoStatementID);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203798, &qword_23C8A09F8);
    v35 = *(v34 + 48);
    v36 = v60;
    *v60 = v32;
    v36[1] = v31;
    v37 = v33;
    v27 = v36;
    sub_23C83155C(v37, v36 + v35, type metadata accessor for TranscriptProtoStatementID);
    (*(*(v34 - 8) + 56))(v27, 0, 1, v34);

LABEL_19:
    v38 = v27;
    v39 = v58;
    sub_23C60C610(v38, v58, &qword_27E203790, &qword_23C8A09F0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203798, &qword_23C8A09F8);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = v39;
    v44 = v7;
    v45 = *(v40 + 48);
    v46 = *v43;
    v47 = v43[1];
    sub_23C83155C(v43 + v45, v10, type metadata accessor for TranscriptProtoStatementID);
    v48 = v46;
    v49 = v62;
    v50 = sub_23C5FF898(v48, v47);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_31;
    }

    v7 = v44;
    sub_23C8314F4(*(v49 + 56) + *(v4 + 72) * v50, v44, type metadata accessor for TranscriptProtoStatementID);
    if (*v44 != *v10)
    {
      goto LABEL_30;
    }

    v53 = *(v44 + 16);
    v54 = *(v10 + 2);
    if (v53)
    {
      if (!v54 || (*(v44 + 8) != *(v10 + 1) || v53 != v54) && (sub_23C872014() & 1) == 0)
      {
LABEL_30:
        sub_23C8315C4(v44, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
        return 0;
      }
    }

    else if (v54)
    {
      goto LABEL_30;
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v23 = sub_23C871754();
    sub_23C8315C4(v44, type metadata accessor for TranscriptProtoStatementID);
    result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
    v21 = v63;
    if ((v23 & 1) == 0)
    {
      return v42;
    }
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v27 = v60;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203798, &qword_23C8A09F8);
      (*(*(v55 - 8) + 56))(v27, 1, 1, v55);
      v63 = 0;
      v17 = v26;
      goto LABEL_19;
    }

    v29 = *(v56 + 8 * v28);
    ++v17;
    if (v29)
    {
      v63 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FBAD0(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v4 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v68 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB80, &qword_23C878F30);
  MEMORY[0x28223BE20](v77);
  v10 = &v68 - v9;
  v76 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v83 = *(v76 - 8);
  v11 = MEMORY[0x28223BE20](v76);
  v84 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v75 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203938, &qword_23C8A0B98);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v18);
  v78 = (&v68 - v22);
  v79 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v79 + 16))
  {
    return 0;
  }

  v23 = 0;
  v72 = a1;
  v24 = *(a1 + 64);
  v69 = a1 + 64;
  v70 = v8;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v82 = (v4 + 48);
  v29 = &unk_23C8A1360;
  v73 = v20;
  v74 = v28;
  while (v27)
  {
    v81 = (v27 - 1) & v27;
    v32 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_17:
    v38 = (*(v72 + 48) + 16 * v32);
    v40 = *v38;
    v39 = v38[1];
    v41 = v75;
    sub_23C8314F4(*(v72 + 56) + *(v83 + 72) * v32, v75, type metadata accessor for TranscriptProtoASTFlatValue);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203940, &qword_23C8A0BA0);
    v43 = *(v42 + 48);
    *v20 = v40;
    v20[1] = v39;
    sub_23C83155C(v41, v20 + v43, type metadata accessor for TranscriptProtoASTFlatValue);
    (*(*(v42 - 8) + 56))(v20, 0, 1, v42);

    v35 = v78;
LABEL_18:
    sub_23C60C610(v20, v35, &qword_27E203938, &qword_23C8A0B98);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203940, &qword_23C8A0BA0);
    v45 = (*(*(v44 - 8) + 48))(v35, 1, v44);
    v80 = v45 == 1;
    if (v45 == 1)
    {
      return v80;
    }

    v46 = v29;
    v47 = v82;
    v48 = v10;
    v49 = v85;
    v50 = *(v44 + 48);
    v51 = *v35;
    v52 = v35[1];
    sub_23C83155C(v35 + v50, v15, type metadata accessor for TranscriptProtoASTFlatValue);
    v53 = v79;
    v54 = sub_23C5FF898(v51, v52);
    v55 = v15;
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_31;
    }

    v58 = v84;
    sub_23C8314F4(*(v53 + 56) + *(v83 + 72) * v54, v84, type metadata accessor for TranscriptProtoASTFlatValue);
    v59 = *(v77 + 48);
    v10 = v48;
    v60 = v48;
    v29 = v46;
    sub_23C5855B0(v58, v60, &qword_27E1FAB78, v46);
    sub_23C5855B0(v55, &v10[v59], &qword_27E1FAB78, v46);
    v61 = *v47;
    v15 = v55;
    if ((*v47)(v10, 1, v49) == 1)
    {
      if (v61(&v10[v59], 1, v85) != 1)
      {
        goto LABEL_29;
      }

      v29 = v46;
      sub_23C585C34(v10, &qword_27E1FAB78, v46);
    }

    else
    {
      v62 = v10;
      v63 = v10;
      v64 = v70;
      sub_23C5855B0(v62, v70, &qword_27E1FAB78, v46);
      if (v61((v63 + v59), 1, v85) == 1)
      {
        sub_23C8315C4(v64, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v10 = v63;
        v15 = v55;
LABEL_29:
        sub_23C585C34(v10, &qword_27E1FAB80, &qword_23C878F30);
LABEL_30:
        sub_23C8315C4(v84, type metadata accessor for TranscriptProtoASTFlatValue);
        v55 = v15;
LABEL_31:
        sub_23C8315C4(v55, type metadata accessor for TranscriptProtoASTFlatValue);
        return 0;
      }

      v65 = v71;
      sub_23C83155C(v63 + v59, v71, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v66 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v64, v65);
      sub_23C8315C4(v65, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_23C8315C4(v64, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_23C585C34(v63, &qword_27E1FAB78, v46);
      v10 = v63;
      v15 = v55;
      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v30 = v84;
    v31 = sub_23C871754();
    sub_23C8315C4(v30, type metadata accessor for TranscriptProtoASTFlatValue);
    result = sub_23C8315C4(v15, type metadata accessor for TranscriptProtoASTFlatValue);
    v20 = v73;
    v28 = v74;
    v27 = v81;
    if ((v31 & 1) == 0)
    {
      return v80;
    }
  }

  if (v28 <= v23 + 1)
  {
    v33 = v23 + 1;
  }

  else
  {
    v33 = v28;
  }

  v34 = v33 - 1;
  v35 = v78;
  while (1)
  {
    v36 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v36 >= v28)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203940, &qword_23C8A0BA0);
      (*(*(v67 - 8) + 56))(v20, 1, 1, v67);
      v81 = 0;
      v23 = v34;
      goto LABEL_18;
    }

    v37 = *(v69 + 8 * v36);
    ++v23;
    if (v37)
    {
      v81 = (v37 - 1) & v37;
      v32 = __clz(__rbit64(v37)) | (v36 << 6);
      v23 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FC320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v112 = (&v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v95 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D00, &qword_23C8A0EE0);
  MEMORY[0x28223BE20](v106);
  v11 = &v95 - v10;
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v108 = (&v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v95 - v16);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v109);
  v115 = &v95 - v18;
  v19 = type metadata accessor for TranscriptProtoParameterValue(0);
  v20 = *(v19 - 8);
  v117 = v19;
  v118 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v119 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v116 = &v95 - v24;
  MEMORY[0x28223BE20](v23);
  v105 = &v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D48, &qword_23C8A0F18);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v111 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v27);
  v110 = (&v95 - v30);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v100 = v17;
  v102 = a2;
  v103 = v9;
  v31 = 0;
  v98 = a1;
  v107 = v12;
  v32 = *(a1 + 64);
  v97 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v96 = (v33 + 63) >> 6;
  v101 = (v13 + 48);
  v99 = (v5 + 48);
  v104 = v4;
  while (v35)
  {
    v114 = (v35 - 1) & v35;
    v42 = __clz(__rbit64(v35)) | (v31 << 6);
    v43 = v111;
LABEL_20:
    v48 = (*(v98 + 48) + 16 * v42);
    v50 = *v48;
    v49 = v48[1];
    v51 = v105;
    sub_23C8314F4(*(v98 + 56) + *(v118 + 72) * v42, v105, type metadata accessor for TranscriptProtoParameterValue);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D50, &qword_23C8A0F20);
    v53 = *(v52 + 48);
    *v43 = v50;
    v43[1] = v49;
    sub_23C83155C(v51, v43 + v53, type metadata accessor for TranscriptProtoParameterValue);
    (*(*(v52 - 8) + 56))(v43, 0, 1, v52);

LABEL_21:
    v54 = v110;
    sub_23C60C610(v43, v110, &qword_27E203D48, &qword_23C8A0F18);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D50, &qword_23C8A0F20);
    v56 = (*(*(v55 - 8) + 48))(v54, 1, v55) == 1;
    result = v56;
    if (v56)
    {
      return result;
    }

    v113 = v56;
    v57 = v11;
    v58 = *(v55 + 48);
    v59 = *v54;
    v60 = v54[1];
    v39 = v116;
    sub_23C83155C(v54 + v58, v116, type metadata accessor for TranscriptProtoParameterValue);
    v61 = v102;
    v62 = sub_23C5FF898(v59, v60);
    v64 = v63;

    if ((v64 & 1) == 0)
    {
      goto LABEL_60;
    }

    v65 = *(v61 + 56);
    v66 = v119;
    sub_23C8314F4(v65 + *(v118 + 72) * v62, v119, type metadata accessor for TranscriptProtoParameterValue);
    v67 = *(v109 + 48);
    v68 = v115;
    sub_23C5855B0(v66, v115, &qword_27E1FAB68, &unk_23C879140);
    sub_23C5855B0(v39, v68 + v67, &qword_27E1FAB68, &unk_23C879140);
    v69 = *v101;
    v70 = v107;
    if ((*v101)(v68, 1, v107) == 1)
    {
      v71 = v69(v68 + v67, 1, v70);
      v72 = v104;
      if (v71 != 1)
      {
        goto LABEL_52;
      }

      v11 = v57;
      sub_23C585C34(v68, &qword_27E1FAB68, &unk_23C879140);
    }

    else
    {
      v73 = v100;
      sub_23C5855B0(v68, v100, &qword_27E1FAB68, &unk_23C879140);
      v74 = v69(v68 + v67, 1, v70);
      v72 = v104;
      if (v74 == 1)
      {
        sub_23C8315C4(v73, type metadata accessor for ToolKitProtoTypedValue);
LABEL_52:
        v92 = &qword_27E1FAB70;
        v93 = &qword_23C878F28;
        v94 = v68;
LABEL_58:
        sub_23C585C34(v94, v92, v93);
        goto LABEL_59;
      }

      v11 = v57;
      v75 = v68 + v67;
      v76 = v108;
      sub_23C83155C(v75, v108, type metadata accessor for ToolKitProtoTypedValue);
      v77 = *v73;
      v78 = *v76;
      if ((~*v73 & 0xF000000000000007) != 0)
      {
        v121 = *v73;
        if ((~v78 & 0xF000000000000007) == 0)
        {
          sub_23C5EDE04(v77);
          sub_23C5EDE04(v78);
          sub_23C5EDE04(v77);

LABEL_56:
          sub_23C5EDE08(v77);
          sub_23C5EDE08(v78);
          v39 = v116;
LABEL_57:
          sub_23C8315C4(v108, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C8315C4(v100, type metadata accessor for ToolKitProtoTypedValue);
          v92 = &qword_27E1FAB68;
          v93 = &unk_23C879140;
          v94 = v115;
          goto LABEL_58;
        }

        v120 = v78;
        sub_23C5EDE04(v77);
        sub_23C5EDE04(v78);
        sub_23C5EDE04(v77);
        v79 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v121, &v120);

        sub_23C5EDE08(v77);
        if ((v79 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_23C5EDE04(*v73);
        sub_23C5EDE04(v78);
        if ((~v78 & 0xF000000000000007) != 0)
        {
          goto LABEL_56;
        }

        sub_23C5EDE08(v77);
        v72 = v104;
        v39 = v116;
      }

      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v80 = v100;
      v81 = v108;
      v82 = sub_23C871754();
      sub_23C8315C4(v81, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C8315C4(v80, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C585C34(v115, &qword_27E1FAB68, &unk_23C879140);
      if ((v82 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v83 = *(v117 + 20);
    v84 = *(v106 + 48);
    sub_23C5855B0(v119 + v83, v11, &qword_27E203CF8, &qword_23C8A0ED8);
    sub_23C5855B0(v39 + v83, &v11[v84], &qword_27E203CF8, &qword_23C8A0ED8);
    v85 = *v99;
    if ((*v99)(v11, 1, v72) == 1)
    {
      if (v85(&v11[v84], 1, v72) != 1)
      {
        goto LABEL_54;
      }

      sub_23C585C34(v11, &qword_27E203CF8, &qword_23C8A0ED8);
    }

    else
    {
      v86 = v103;
      sub_23C5855B0(v11, v103, &qword_27E203CF8, &qword_23C8A0ED8);
      if (v85(&v11[v84], 1, v72) == 1)
      {
        sub_23C8315C4(v86, type metadata accessor for TranscriptProtoPromptSelection);
        v39 = v116;
LABEL_54:
        v92 = &qword_27E203D00;
        v93 = &qword_23C8A0EE0;
        v94 = v11;
        goto LABEL_58;
      }

      v87 = &v11[v84];
      v88 = v112;
      sub_23C83155C(v87, v112, type metadata accessor for TranscriptProtoPromptSelection);
      if (*(v86 + 9))
      {
        if ((*(v88 + 9) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (*(v88 + 9))
        {
          goto LABEL_50;
        }

        v89 = *v103;
        v90 = *v112;
        if (v103[8])
        {
          if (v89)
          {
            if ((v112[1] & 1) == 0 || !v90)
            {
              goto LABEL_50;
            }
          }

          else if ((v112[1] & 1) == 0 || v90)
          {
            goto LABEL_50;
          }
        }

        else if ((v112[1] & 1) != 0 || v89 != v90)
        {
LABEL_50:
          sub_23C8315C4(v112, type metadata accessor for TranscriptProtoPromptSelection);
          sub_23C8315C4(v103, type metadata accessor for TranscriptProtoPromptSelection);
          sub_23C585C34(v11, &qword_27E203CF8, &qword_23C8A0ED8);
          v39 = v116;
LABEL_59:
          sub_23C8315C4(v119, type metadata accessor for TranscriptProtoParameterValue);
LABEL_60:
          sub_23C8315C4(v39, type metadata accessor for TranscriptProtoParameterValue);
          return 0;
        }
      }

      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v36 = v103;
      v37 = v112;
      v38 = sub_23C871754();
      sub_23C8315C4(v37, type metadata accessor for TranscriptProtoPromptSelection);
      sub_23C8315C4(v36, type metadata accessor for TranscriptProtoPromptSelection);
      sub_23C585C34(v11, &qword_27E203CF8, &qword_23C8A0ED8);
      v39 = v116;
      if ((v38 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v40 = v119;
    v41 = sub_23C871754();
    sub_23C8315C4(v40, type metadata accessor for TranscriptProtoParameterValue);
    sub_23C8315C4(v39, type metadata accessor for TranscriptProtoParameterValue);
    v35 = v114;
    result = v113;
    if ((v41 & 1) == 0)
    {
      return result;
    }
  }

  if (v96 <= v31 + 1)
  {
    v44 = v31 + 1;
  }

  else
  {
    v44 = v96;
  }

  v45 = v44 - 1;
  v43 = v111;
  while (1)
  {
    v46 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v46 >= v96)
    {
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D50, &qword_23C8A0F20);
      (*(*(v91 - 8) + 56))(v43, 1, 1, v91);
      v114 = 0;
      v31 = v45;
      goto LABEL_21;
    }

    v47 = *(v97 + 8 * v46);
    ++v31;
    if (v47)
    {
      v114 = (v47 - 1) & v47;
      v42 = __clz(__rbit64(v47)) | (v46 << 6);
      v31 = v46;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FD0C0(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = *(v54 - 8);
  v5 = MEMORY[0x28223BE20](v54);
  v56 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v47 - v8);
  MEMORY[0x28223BE20](v7);
  v53 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203948, &qword_23C8A0BA8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = (&v47 - v14);
  v52 = v15;
  v16 = 0;
  v48 = a1;
  v49 = v4;
  v17 = *(a1 + 64);
  v47 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v50 = v9;
  while (v20)
  {
    v55 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
    v25 = v52;
LABEL_17:
    v30 = *(*(v48 + 48) + 4 * v24);
    v31 = v53;
    sub_23C8314F4(*(v48 + 56) + *(v4 + 72) * v24, v53, type metadata accessor for ToolKitProtoTypedValue);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203950, &qword_23C8A0BB0);
    v33 = *(v32 + 48);
    *v25 = v30;
    sub_23C83155C(v31, v25 + v33, type metadata accessor for ToolKitProtoTypedValue);
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
LABEL_18:
    v34 = v51;
    sub_23C60C610(v25, v51, &qword_27E203948, &qword_23C8A0BA8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203950, &qword_23C8A0BB0);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = *v34;
    sub_23C83155C(v34 + v38, v9, type metadata accessor for ToolKitProtoTypedValue);
    v40 = sub_23C5FF910(v39);
    if ((v41 & 1) == 0)
    {
      goto LABEL_31;
    }

    v42 = v56;
    sub_23C8314F4(*(a2 + 56) + *(v4 + 72) * v40, v56, type metadata accessor for ToolKitProtoTypedValue);
    v43 = *v42;
    v44 = *v9;
    if ((~v43 & 0xF000000000000007) != 0)
    {
      v58 = v43;
      if ((~v44 & 0xF000000000000007) == 0)
      {
        sub_23C5EDE04(v43);
        sub_23C5EDE04(v44);
        sub_23C5EDE04(v43);

LABEL_29:
        sub_23C5EDE08(v43);
        sub_23C5EDE08(v44);
LABEL_30:
        sub_23C8315C4(v56, type metadata accessor for ToolKitProtoTypedValue);
        v9 = v50;
LABEL_31:
        sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypedValue);
        return 0;
      }

      v57 = v44;
      sub_23C5EDE04(v43);
      sub_23C5EDE04(v44);
      sub_23C5EDE04(v43);
      v45 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v58, &v57);

      sub_23C5EDE08(v43);
      if ((v45 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_23C5EDE04(v43);
      sub_23C5EDE04(v44);
      if ((~v44 & 0xF000000000000007) != 0)
      {
        goto LABEL_29;
      }

      sub_23C5EDE08(v43);
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = v56;
    v9 = v50;
    v23 = sub_23C871754();
    sub_23C8315C4(v22, type metadata accessor for ToolKitProtoTypedValue);
    result = sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypedValue);
    v4 = v49;
    v20 = v55;
    if ((v23 & 1) == 0)
    {
      return v37;
    }
  }

  if (v21 <= v16 + 1)
  {
    v26 = v16 + 1;
  }

  else
  {
    v26 = v21;
  }

  v27 = v26 - 1;
  v25 = v52;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203950, &qword_23C8A0BB0);
      (*(*(v46 - 8) + 56))(v25, 1, 1, v46);
      v55 = 0;
      v16 = v27;
      goto LABEL_18;
    }

    v29 = *(v47 + 8 * v28);
    ++v16;
    if (v29)
    {
      v55 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FD6C0(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for ToolKitProtoTypedValue(0);
  v61 = *(v59 - 8);
  v4 = MEMORY[0x28223BE20](v59);
  v62 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v53 - v7);
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AB0, &qword_23C8A0CD8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = (&v53 - v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v58 = v14;
  v16 = 0;
  v54 = (&v53 - v13);
  v55 = a1;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v56 = a2;
  while (v22)
  {
    v60 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_17:
    v32 = (*(v55 + 48) + 16 * v26);
    v34 = *v32;
    v33 = v32[1];
    v35 = v57;
    sub_23C8314F4(*(v55 + 56) + *(v61 + 72) * v26, v57, type metadata accessor for ToolKitProtoTypedValue);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AB8, &qword_23C8A0CE0);
    v37 = *(v36 + 48);
    v38 = v58;
    *v58 = v34;
    v38[1] = v33;
    v29 = v38;
    sub_23C83155C(v35, v38 + v37, type metadata accessor for ToolKitProtoTypedValue);
    (*(*(v36 - 8) + 56))(v29, 0, 1, v36);

    v15 = v54;
LABEL_18:
    sub_23C60C610(v29, v15, &qword_27E203AB0, &qword_23C8A0CD8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AB8, &qword_23C8A0CE0);
    v40 = (*(*(v39 - 8) + 48))(v15, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = *(v39 + 48);
    v43 = *v15;
    v44 = v15[1];
    sub_23C83155C(v15 + v42, v8, type metadata accessor for ToolKitProtoTypedValue);
    v45 = sub_23C5FF898(v43, v44);
    LOBYTE(v43) = v46;

    if ((v43 & 1) == 0)
    {
      goto LABEL_31;
    }

    v47 = v62;
    sub_23C8314F4(*(a2 + 56) + *(v61 + 72) * v45, v62, type metadata accessor for ToolKitProtoTypedValue);
    v48 = *v47;
    v49 = *v8;
    if ((~*v47 & 0xF000000000000007) != 0)
    {
      v64 = *v47;
      if ((~v49 & 0xF000000000000007) == 0)
      {
        v50 = v8;
        sub_23C5EDE04(v48);
        sub_23C5EDE04(v49);
        sub_23C5EDE04(v48);

LABEL_29:
        sub_23C5EDE08(v48);
        sub_23C5EDE08(v49);
        v8 = v50;
LABEL_30:
        sub_23C8315C4(v62, type metadata accessor for ToolKitProtoTypedValue);
LABEL_31:
        sub_23C8315C4(v8, type metadata accessor for ToolKitProtoTypedValue);
        return 0;
      }

      v63 = v49;
      sub_23C5EDE04(v48);
      sub_23C5EDE04(v49);
      sub_23C5EDE04(v48);
      v51 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v64, &v63);

      sub_23C5EDE08(v48);
      if ((v51 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v50 = v8;
      sub_23C5EDE04(v48);
      sub_23C5EDE04(v49);
      if ((~v49 & 0xF000000000000007) != 0)
      {
        goto LABEL_29;
      }

      sub_23C5EDE08(v48);
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v24 = v62;
    v25 = sub_23C871754();
    sub_23C8315C4(v24, type metadata accessor for ToolKitProtoTypedValue);
    result = sub_23C8315C4(v8, type metadata accessor for ToolKitProtoTypedValue);
    a2 = v56;
    v22 = v60;
    if ((v25 & 1) == 0)
    {
      return v41;
    }
  }

  if (v23 <= v16 + 1)
  {
    v27 = v16 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v58;
  while (1)
  {
    v30 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v30 >= v23)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AB8, &qword_23C8A0CE0);
      (*(*(v52 - 8) + 56))(v29, 1, 1, v52);
      v60 = 0;
      v16 = v28;
      goto LABEL_18;
    }

    v31 = *(v18 + 8 * v30);
    ++v16;
    if (v31)
    {
      v60 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v16 = v30;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FDCDC(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for TranscriptProtoShimParameters(0);
  v4 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v54 - v9);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CD8, &qword_23C8A0EB8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v60 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v60 + 16))
  {
    return 0;
  }

  v55 = a1;
  v56 = &v54 - v15;
  v59 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v54 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v61 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_16:
    v29 = (*(v55 + 48) + 16 * v23);
    v31 = *v29;
    v30 = v29[1];
    v32 = v57;
    sub_23C8314F4(*(v55 + 56) + *(v4 + 72) * v23, v57, type metadata accessor for TranscriptProtoShimParameters);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE0, &qword_23C8A0EC0);
    v34 = *(v33 + 48);
    v35 = v59;
    *v59 = v31;
    v35[1] = v30;
    v36 = v32;
    v26 = v35;
    sub_23C83155C(v36, v35 + v34, type metadata accessor for TranscriptProtoShimParameters);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);

LABEL_17:
    v37 = v26;
    v38 = v56;
    sub_23C60C610(v37, v56, &qword_27E203CD8, &qword_23C8A0EB8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE0, &qword_23C8A0EC0);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = v38;
    v43 = v7;
    v44 = *(v39 + 48);
    v45 = *v42;
    v46 = v42[1];
    sub_23C83155C(v42 + v44, v10, type metadata accessor for TranscriptProtoShimParameters);
    v47 = v45;
    v48 = v60;
    v49 = sub_23C5FF898(v47, v46);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }

    v7 = v43;
    sub_23C8314F4(*(v48 + 56) + *(v4 + 72) * v49, v43, type metadata accessor for TranscriptProtoShimParameters);
    if ((sub_23C5DA9B4(*v43, *v10) & 1) == 0)
    {
      sub_23C8315C4(v43, type metadata accessor for TranscriptProtoShimParameters);
LABEL_25:
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoShimParameters);
      return 0;
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = sub_23C871754();
    sub_23C8315C4(v43, type metadata accessor for TranscriptProtoShimParameters);
    result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoShimParameters);
    v21 = v61;
    if ((v52 & 1) == 0)
    {
      return v41;
    }
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  v26 = v59;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE0, &qword_23C8A0EC0);
      (*(*(v53 - 8) + 56))(v26, 1, 1, v53);
      v61 = 0;
      v17 = v25;
      goto LABEL_17;
    }

    v28 = *(v54 + 8 * v27);
    ++v17;
    if (v28)
    {
      v61 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FE23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v150 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v146 = (&v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  MEMORY[0x28223BE20](v6 - 8);
  v153 = (&v124 - v7);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D00, &qword_23C8A0EE0);
  MEMORY[0x28223BE20](v141);
  v149 = &v124 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203778, &qword_23C8A09E0);
  MEMORY[0x28223BE20](v129);
  v10 = (&v124 - v9);
  v137 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v11 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203780, &unk_23C8A1380);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v124 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203788, &qword_23C8A09E8);
  MEMORY[0x28223BE20](v136);
  v138 = &v124 - v16;
  v151 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v17 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v142 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D58, &unk_23C8A11A0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v124 - v20;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D60, &qword_23C8A0F28);
  MEMORY[0x28223BE20](v143);
  v152 = &v124 - v22;
  v23 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v24 = *(v23 - 8);
  v154 = v23;
  v155 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v156 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v124 - v28;
  MEMORY[0x28223BE20](v27);
  v140 = &v124 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D68, &qword_23C8A0F30);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v147 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v32);
  v144 = (&v124 - v35);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v127 = v15;
  v133 = v21;
  v126 = v10;
  v139 = v4;
  v36 = 0;
  v130 = a1;
  v37 = *(a1 + 64);
  v125 = a1 + 64;
  v38 = 1 << *(a1 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v124 = (v38 + 63) >> 6;
  v135 = (v17 + 48);
  v128 = (v11 + 48);
  v132 = (v150 + 48);
  v150 = v29;
  v41 = a2;
  v42 = v147;
  v131 = a2;
  while (1)
  {
    if (!v40)
    {
      if (v124 <= v36 + 1)
      {
        v50 = v36 + 1;
      }

      else
      {
        v50 = v124;
      }

      v51 = v50 - 1;
      while (1)
      {
        v52 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v52 >= v124)
        {
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D70, &qword_23C8A0F38);
          (*(*(v96 - 8) + 56))(v42, 1, 1, v96);
          v148 = 0;
          v36 = v51;
          goto LABEL_21;
        }

        v53 = *(v125 + 8 * v52);
        ++v36;
        if (v53)
        {
          v148 = (v53 - 1) & v53;
          v49 = __clz(__rbit64(v53)) | (v52 << 6);
          v36 = v52;
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }

    v148 = (v40 - 1) & v40;
    v49 = __clz(__rbit64(v40)) | (v36 << 6);
LABEL_20:
    v54 = (*(v130 + 48) + 16 * v49);
    v56 = *v54;
    v55 = v54[1];
    v57 = v140;
    sub_23C8314F4(*(v130 + 56) + *(v155 + 72) * v49, v140, type metadata accessor for TranscriptProtoActionParameterValue);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D70, &qword_23C8A0F38);
    v59 = *(v58 + 48);
    *v42 = v56;
    v42[1] = v55;
    sub_23C83155C(v57, v42 + v59, type metadata accessor for TranscriptProtoActionParameterValue);
    (*(*(v58 - 8) + 56))(v42, 0, 1, v58);

LABEL_21:
    v60 = v144;
    sub_23C60C610(v42, v144, &qword_27E203D68, &qword_23C8A0F30);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D70, &qword_23C8A0F38);
    v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
    v43 = v62 == 1;
    if (v62 == 1)
    {
      return v43;
    }

    v63 = *(v61 + 48);
    v64 = *v60;
    v65 = v60[1];
    sub_23C83155C(v60 + v63, v29, type metadata accessor for TranscriptProtoActionParameterValue);
    v66 = sub_23C5FF898(v64, v65);
    v68 = v67;

    if ((v68 & 1) == 0)
    {
      v116 = v29;
      goto LABEL_73;
    }

    v145 = v43;
    v69 = v156;
    sub_23C8314F4(*(v41 + 56) + *(v155 + 72) * v66, v156, type metadata accessor for TranscriptProtoActionParameterValue);
    v70 = *(v143 + 48);
    v71 = v152;
    sub_23C5855B0(v69, v152, &qword_27E203D58, &unk_23C8A11A0);
    sub_23C5855B0(v29, v71 + v70, &qword_27E203D58, &unk_23C8A11A0);
    v72 = *v135;
    v73 = v151;
    if ((*v135)(v71, 1, v151) != 1)
    {
      v79 = v133;
      sub_23C5855B0(v71, v133, &qword_27E203D58, &unk_23C8A11A0);
      v80 = v72(v71 + v70, 1, v73);
      v81 = v71;
      v76 = v149;
      if (v80 == 1)
      {
        sub_23C8315C4(v156, type metadata accessor for TranscriptProtoActionParameterValue);
        sub_23C8315C4(v29, type metadata accessor for TranscriptProtoActionParameterValue);
        v118 = type metadata accessor for TranscriptProtoToolParameterValue;
        v117 = v79;
        goto LABEL_59;
      }

      v82 = v142;
      sub_23C83155C(v81 + v70, v142, type metadata accessor for TranscriptProtoToolParameterValue);
      v83 = *(v136 + 48);
      v84 = v138;
      sub_23C5855B0(v79, v138, &qword_27E203780, &unk_23C8A1380);
      sub_23C5855B0(v82, v84 + v83, &qword_27E203780, &unk_23C8A1380);
      v85 = *v128;
      v86 = v137;
      if ((*v128)(v84, 1, v137) == 1)
      {
        if (v85(v84 + v83, 1, v86) == 1)
        {
          v87 = v154;
          sub_23C585C34(v84, &qword_27E203780, &unk_23C8A1380);
          v78 = v153;
          goto LABEL_39;
        }

        v121 = type metadata accessor for TranscriptProtoToolParameterValue;
        v122 = v142;
      }

      else
      {
        v88 = v127;
        sub_23C5855B0(v84, v127, &qword_27E203780, &unk_23C8A1380);
        v89 = v85(v84 + v83, 1, v86);
        v90 = v154;
        if (v89 != 1)
        {
          v91 = v134;
          sub_23C83155C(v84 + v83, v134, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          v92 = v126;
          v93 = (v126 + *(v129 + 48));
          sub_23C8314F4(v88, v126, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_23C8314F4(v91, v93, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          v94 = *v92;
          v95 = *v93;
          if ((~*v92 & 0xF000000000000007) != 0)
          {
            v158 = *v92;
            if ((~v95 & 0xF000000000000007) == 0)
            {
              sub_23C5EDE04(v94);
              sub_23C5EDE04(v95);
              sub_23C5EDE04(v94);

LABEL_67:
              sub_23C5EDE08(v94);
              sub_23C5EDE08(v95);
LABEL_68:
              sub_23C8315C4(v134, type metadata accessor for TranscriptProtoToolParameterValueEnum);
              sub_23C8315C4(v93, type metadata accessor for ToolKitProtoTypedValue);
              sub_23C8315C4(v126, type metadata accessor for ToolKitProtoTypedValue);
              sub_23C8315C4(v127, type metadata accessor for TranscriptProtoToolParameterValueEnum);
              sub_23C585C34(v138, &qword_27E203780, &unk_23C8A1380);
LABEL_69:
              sub_23C8315C4(v142, type metadata accessor for TranscriptProtoToolParameterValue);
LABEL_70:
              v123 = v152;
              sub_23C8315C4(v133, type metadata accessor for TranscriptProtoToolParameterValue);
              v113 = &qword_27E203D58;
              v114 = &unk_23C8A11A0;
              v115 = v123;
LABEL_71:
              sub_23C585C34(v115, v113, v114);
LABEL_72:
              sub_23C8315C4(v156, type metadata accessor for TranscriptProtoActionParameterValue);
              v116 = v150;
LABEL_73:
              sub_23C8315C4(v116, type metadata accessor for TranscriptProtoActionParameterValue);
              return 0;
            }

            v87 = v90;
            v157 = v95;
            sub_23C5EDE04(v94);
            sub_23C5EDE04(v95);
            sub_23C5EDE04(v94);
            v97 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v158, &v157);

            sub_23C5EDE08(v94);
            if ((v97 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          else
          {
            sub_23C5EDE04(*v92);
            sub_23C5EDE04(v95);
            if ((~v95 & 0xF000000000000007) != 0)
            {
              goto LABEL_67;
            }

            v87 = v90;
            sub_23C5EDE08(v94);
          }

          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_23C870F34();
          sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v98 = v126;
          v99 = sub_23C871754();
          sub_23C8315C4(v134, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_23C8315C4(v93, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C8315C4(v98, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C8315C4(v127, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_23C585C34(v138, &qword_27E203780, &unk_23C8A1380);
          v76 = v149;
          v78 = v153;
          if ((v99 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_39:
          sub_23C870F34();
          sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v100 = v133;
          v101 = v142;
          v102 = sub_23C871754();
          sub_23C8315C4(v101, type metadata accessor for TranscriptProtoToolParameterValue);
          sub_23C8315C4(v100, type metadata accessor for TranscriptProtoToolParameterValue);
          sub_23C585C34(v152, &qword_27E203D58, &unk_23C8A11A0);
          v77 = v87;
          if ((v102 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_40;
        }

        sub_23C8315C4(v142, type metadata accessor for TranscriptProtoToolParameterValue);
        v121 = type metadata accessor for TranscriptProtoToolParameterValueEnum;
        v122 = v88;
      }

      sub_23C8315C4(v122, v121);
      sub_23C585C34(v84, &qword_27E203788, &qword_23C8A09E8);
      goto LABEL_70;
    }

    v74 = v72(v71 + v70, 1, v73) == 1;
    v75 = v71;
    v76 = v149;
    if (!v74)
    {
      sub_23C8315C4(v156, type metadata accessor for TranscriptProtoActionParameterValue);
      v117 = v150;
      v118 = type metadata accessor for TranscriptProtoActionParameterValue;
LABEL_59:
      sub_23C8315C4(v117, v118);
      sub_23C585C34(v152, &qword_27E203D60, &qword_23C8A0F28);
      return 0;
    }

    sub_23C585C34(v75, &qword_27E203D58, &unk_23C8A11A0);
    v78 = v153;
    v77 = v154;
LABEL_40:
    v103 = *(v77 + 20);
    v104 = *(v141 + 48);
    sub_23C5855B0(v156 + v103, v76, &qword_27E203CF8, &qword_23C8A0ED8);
    sub_23C5855B0(&v150[v103], v76 + v104, &qword_27E203CF8, &qword_23C8A0ED8);
    v105 = *v132;
    v106 = v139;
    if ((*v132)(v76, 1, v139) == 1)
    {
      break;
    }

    sub_23C5855B0(v76, v78, &qword_27E203CF8, &qword_23C8A0ED8);
    v108 = v105(v76 + v104, 1, v106);
    v42 = v147;
    if (v108 == 1)
    {
      sub_23C8315C4(v156, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_23C8315C4(v150, type metadata accessor for TranscriptProtoActionParameterValue);
      v119 = type metadata accessor for TranscriptProtoPromptSelection;
      v120 = v78;
      goto LABEL_62;
    }

    v109 = v76 + v104;
    v110 = v146;
    sub_23C83155C(v109, v146, type metadata accessor for TranscriptProtoPromptSelection);
    if (*(v78 + 9))
    {
      v41 = v131;
      if ((*(v110 + 9) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v41 = v131;
      if (*(v110 + 9))
      {
        goto LABEL_56;
      }

      v111 = *v153;
      v112 = *v146;
      if (v153[1])
      {
        if (v111)
        {
          if ((v146[1] & 1) == 0 || !v112)
          {
            goto LABEL_56;
          }
        }

        else if ((v146[1] & 1) == 0 || v112)
        {
          goto LABEL_56;
        }
      }

      else if ((v146[1] & 1) != 0 || v111 != v112)
      {
LABEL_56:
        sub_23C8315C4(v146, type metadata accessor for TranscriptProtoPromptSelection);
        sub_23C8315C4(v153, type metadata accessor for TranscriptProtoPromptSelection);
        v113 = &qword_27E203CF8;
        v114 = &qword_23C8A0ED8;
        v115 = v76;
        goto LABEL_71;
      }
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v44 = v153;
    v45 = v146;
    v46 = sub_23C871754();
    sub_23C8315C4(v45, type metadata accessor for TranscriptProtoPromptSelection);
    sub_23C8315C4(v44, type metadata accessor for TranscriptProtoPromptSelection);
    sub_23C585C34(v76, &qword_27E203CF8, &qword_23C8A0ED8);
    if ((v46 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_9:
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v47 = v156;
    v29 = v150;
    v48 = sub_23C871754();
    sub_23C8315C4(v47, type metadata accessor for TranscriptProtoActionParameterValue);
    result = sub_23C8315C4(v29, type metadata accessor for TranscriptProtoActionParameterValue);
    v40 = v148;
    v43 = v145;
    if ((v48 & 1) == 0)
    {
      return v43;
    }
  }

  v107 = v105(v76 + v104, 1, v106);
  v42 = v147;
  if (v107 == 1)
  {
    sub_23C585C34(v76, &qword_27E203CF8, &qword_23C8A0ED8);
    v41 = v131;
    goto LABEL_9;
  }

  sub_23C8315C4(v156, type metadata accessor for TranscriptProtoActionParameterValue);
  v120 = v150;
  v119 = type metadata accessor for TranscriptProtoActionParameterValue;
LABEL_62:
  sub_23C8315C4(v120, v119);
  sub_23C585C34(v76, &qword_27E203D00, &qword_23C8A0EE0);
  return 0;
}

uint64_t sub_23C7FF5DC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_23C5FF898(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FF710(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  v4 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v54 - v9);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F60, &qword_23C8A1108);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v60 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v60 + 16))
  {
    return 0;
  }

  v55 = a1;
  v56 = &v54 - v15;
  v59 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v54 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v61 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_16:
    v29 = (*(v55 + 48) + 16 * v23);
    v31 = *v29;
    v30 = v29[1];
    v32 = v57;
    sub_23C8314F4(*(v55 + 56) + *(v4 + 72) * v23, v57, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F68, &qword_23C8A1110);
    v34 = *(v33 + 48);
    v35 = v59;
    *v59 = v31;
    v35[1] = v30;
    v36 = v32;
    v26 = v35;
    sub_23C83155C(v36, v35 + v34, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);

LABEL_17:
    v37 = v26;
    v38 = v56;
    sub_23C60C610(v37, v56, &qword_27E203F60, &qword_23C8A1108);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F68, &qword_23C8A1110);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = v38;
    v43 = v7;
    v44 = *(v39 + 48);
    v45 = *v42;
    v46 = v42[1];
    sub_23C83155C(v42 + v44, v10, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v47 = v45;
    v48 = v60;
    v49 = sub_23C5FF898(v47, v46);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }

    v7 = v43;
    sub_23C8314F4(*(v48 + 56) + *(v4 + 72) * v49, v43, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    if ((sub_23C5DF35C(*v43, *v10) & 1) == 0)
    {
      sub_23C8315C4(v43, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
LABEL_25:
      sub_23C8315C4(v10, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
      return 0;
    }

    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = sub_23C871754();
    sub_23C8315C4(v43, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    result = sub_23C8315C4(v10, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v21 = v61;
    if ((v52 & 1) == 0)
    {
      return v41;
    }
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  v26 = v59;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F68, &qword_23C8A1110);
      (*(*(v53 - 8) + 56))(v26, 1, 1, v53);
      v61 = 0;
      v17 = v25;
      goto LABEL_17;
    }

    v28 = *(v54 + 8 * v27);
    ++v17;
    if (v28)
    {
      v61 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s26AIMLInstrumentationStreams53TranscriptProtoSystemRequirementAuthenticationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C30, &qword_23C8A0E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C38, &qword_23C8A0E28);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E203C30, &qword_23C8A0E20);
  sub_23C5855B0(a2, &v14[v15], &qword_27E203C30, &qword_23C8A0E20);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E203C30, &qword_23C8A0E20);
LABEL_9:
      type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E203C30, &qword_23C8A0E20);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203C38, &qword_23C8A0E28);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  v18 = _s26AIMLInstrumentationStreams053TranscriptProtoSystemRequirementAuthenticationRequestG5LevelV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_23C585C34(v14, &qword_27E203C30, &qword_23C8A0E20);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23C7FFFB4(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(void))
{
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_23C872014() & 1) == 0 || (a3(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams49TranscriptProtoActionFailureDeveloperDefinedErrorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23C872014() & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams48TranscriptProtoDynamicEnumerationEntityStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE8, &unk_23C8A1330);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF0, &qword_23C878ED0);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FAAF8, &unk_23C8A1180);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAAF8, &unk_23C8A1180);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C83155C(&v19[v20], v12, type metadata accessor for TranscriptProtoStatementID);
      v25 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v22 = &qword_27E1FAB00;
    v23 = &qword_23C878ED8;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FAAE8, &unk_23C8A1330);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FAAE8, &unk_23C8A1330);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAAE8, &unk_23C8A1330);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FAAE8, &unk_23C8A1330);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for ContextProtoDynamicEnumerationEntity);
LABEL_13:
    v22 = &qword_27E1FAAF0;
    v23 = &qword_23C878ED0;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C83155C(v34, v37, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  v36 = static ContextProtoDynamicEnumerationEntity.== infix(_:_:)();
  sub_23C8315C4(v35, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_23C8315C4(v31, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_23C585C34(v28, &qword_27E1FAAE8, &unk_23C8A1330);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams53TranscriptProtoQueryDecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v5 = *(DecorationPrePlannerPayloadEnum - 8);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203700, &qword_23C8A0978);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201CB8, &qword_23C8A13C0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201CB8, &qword_23C8A13C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    if (v16(&v14[v15], 1, DecorationPrePlannerPayloadEnum) == 1)
    {
      sub_23C585C34(v14, &qword_27E201CB8, &qword_23C8A13C0);
LABEL_9:
      type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201CB8, &qword_23C8A13C0);
  if (v16(&v14[v15], 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203700, &qword_23C8A0978);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  DecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams51TranscriptProtoQueryDecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_23C585C34(v14, &qword_27E201CB8, &qword_23C8A13C0);
  if (DecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams46TranscriptProtoQueryDecorationPrePlannerResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v48 = a2;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v44 = *(DecorationPrePlannerResultPayload - 8);
  v45 = DecorationPrePlannerResultPayload;
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203738, &qword_23C8A09B0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203740, &qword_23C8A09B8);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v19 = *(DecorationPrePlannerResult + 20);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAAF8, &unk_23C8A1180);
  v21 = v48;
  sub_23C5855B0(v48 + v19, &v18[v20], &qword_27E1FAAF8, &unk_23C8A1180);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) != 1)
  {
    sub_23C5855B0(v18, v14, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v22(&v18[v20], 1, v8) != 1)
    {
      sub_23C83155C(&v18[v20], v11, type metadata accessor for TranscriptProtoStatementID);
      v26 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v11);
      sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v18, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v23 = &qword_27E1FAB00;
    v24 = &qword_23C878ED8;
    v25 = v18;
LABEL_17:
    sub_23C585C34(v25, v23, v24);
    goto LABEL_18;
  }

  if (v22(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v18, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(DecorationPrePlannerResult + 24);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_23C5855B0(v27 + v28, v46, &qword_27E203738, &qword_23C8A09B0);
  sub_23C5855B0(v21 + v28, v30 + v29, &qword_27E203738, &qword_23C8A09B0);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_23C585C34(v30, &qword_27E203738, &qword_23C8A09B0);
LABEL_21:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_23C871754();
      return v34 & 1;
    }

    goto LABEL_16;
  }

  v33 = v41;
  sub_23C5855B0(v30, v41, &qword_27E203738, &qword_23C8A09B0);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_23C8315C4(v33, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
LABEL_16:
    v23 = &qword_27E203740;
    v24 = &qword_23C8A09B8;
    v25 = v30;
    goto LABEL_17;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_23C83155C(v36, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  DecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams53TranscriptProtoQueryDecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0(v33, v37);
  sub_23C8315C4(v37, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_23C8315C4(v33, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_23C585C34(v30, &qword_27E203738, &qword_23C8A09B0);
  if (DecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s26AIMLInstrumentationStreams44TranscriptProtoRequestPrescribedPlanOpenToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v25 - v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_23C5855B0(v14, v10, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
      v19 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_10:
  v20 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (v24)
    {
LABEL_16:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams67TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D08, &qword_23C8A0EE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D10, &qword_23C8A0EF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = v7;
  v21 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v14 = *(v21 + 24);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E203D08, &qword_23C8A0EE8);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E203D08, &qword_23C8A0EE8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E203D08, &qword_23C8A0EE8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v22;
      sub_23C83155C(&v13[v15], v22, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      v18 = _s26AIMLInstrumentationStreams67TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceV2eeoiySbAC_ACtFZ_0(v10, v17);
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      sub_23C585C34(v13, &qword_27E203D08, &qword_23C8A0EE8);
      if ((v18 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
LABEL_8:
    sub_23C585C34(v13, &qword_27E203D10, &qword_23C8A0EF0);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_23C585C34(v13, &qword_27E203D08, &qword_23C8A0EE8);
LABEL_10:
  if (*(a1 + 16) == *(a2 + 16))
  {
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_23C871754();
    return v19 & 1;
  }

LABEL_11:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams44TranscriptProtoActionConfirmationSystemStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D18, &unk_23C8A11C0);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - v4;
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D20, &qword_23C8A0EF8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D28, &qword_23C8A0F00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_23C5855B0(a1, &v24 - v14, &qword_27E203D20, &qword_23C8A0EF8);
  v27 = a2;
  sub_23C5855B0(a2, &v15[v16], &qword_27E203D20, &qword_23C8A0EF8);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_23C585C34(v15, &qword_27E203D20, &qword_23C8A0EF8);
LABEL_9:
      type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_23C871754();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v15, v11, &qword_27E203D20, &qword_23C8A0EF8);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
LABEL_6:
    sub_23C585C34(v15, &qword_27E203D28, &qword_23C8A0F00);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v24;
  sub_23C83155C(v19, v24, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  v21 = *(v25 + 48);
  sub_23C8314F4(v11, v5, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C8314F4(v20, &v5[v21], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  v22 = _s26AIMLInstrumentationStreams61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(v5, &v5[v21]);
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C8315C4(&v5[v21], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C8315C4(v5, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C585C34(v15, &qword_27E203D20, &qword_23C8A0EF8);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams42TranscriptProtoSystemPromptResolutionInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201938, &qword_23C88DBE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203980, &qword_23C8A0BD8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201938, &qword_23C88DBE8);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201938, &qword_23C88DBE8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201938, &qword_23C88DBE8);
LABEL_9:
      type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201938, &qword_23C88DBE8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203980, &qword_23C8A0BD8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  v18 = _s26AIMLInstrumentationStreams46TranscriptProtoSystemPromptResolutionInputEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_23C585C34(v14, &qword_27E201938, &qword_23C88DBE8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams42TranscriptProtoParameterCandidatesNotFoundV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAB68, &unk_23C879140);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
LABEL_11:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAB68, &unk_23C879140);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_8:
    sub_23C585C34(v13, &qword_27E1FAB70, &qword_23C878F28);
    goto LABEL_9;
  }

  v18 = v21;
  sub_23C83155C(&v13[v15], v21, type metadata accessor for ToolKitProtoTypedValue);
  v19 = static ToolKitProtoTypedValue.== infix(_:_:)(v10, v18);
  sub_23C8315C4(v18, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams41TranscriptProtoUpdateParametersExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v14 = *(updated + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v13, v9, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v9, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FAB00, &qword_23C878ED8);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_23C83155C(&v13[v15], v23, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v9, v17);
  sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v9, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C5D3A24(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_23C871754();
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams41TranscriptProtoStructuredSearchExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((sub_23C7FB534(*a1, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v15 = *(v14 + 24);
  v16 = a1;
  v17 = *(v11 + 48);
  v22 = v14;
  v23 = v16;
  sub_23C5855B0(v16 + v15, v13, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2 + v15, &v13[v17], &qword_27E1FAC40, &unk_23C8791C0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAC40, &unk_23C8791C0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_23C585C34(v13, &qword_27E1FAC48, &qword_23C878FD0);
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  sub_23C83155C(&v13[v17], v7, type metadata accessor for ToolKitProtoTypeInstance);
  v19 = static ToolKitProtoTypeInstance.== infix(_:_:)(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_23C5D4094(v23[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_23C871754();
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams40TranscriptProtoRetrievedContextStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedContext(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA8, &qword_23C878F50);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB0, &qword_23C878F58);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FAAF8, &unk_23C8A1180);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAAF8, &unk_23C8A1180);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C83155C(&v19[v20], v12, type metadata accessor for TranscriptProtoStatementID);
      v25 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v22 = &qword_27E1FAB00;
    v23 = &qword_23C878ED8;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FABA8, &qword_23C878F50);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FABA8, &qword_23C878F50);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FABA8, &qword_23C878F50);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FABA8, &qword_23C878F50);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for ContextProtoRetrievedContext);
LABEL_13:
    v22 = &qword_27E1FABB0;
    v23 = &qword_23C878F58;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C83155C(v34, v37, type metadata accessor for ContextProtoRetrievedContext);
  v36 = static ContextProtoRetrievedContext.== infix(_:_:)();
  sub_23C8315C4(v35, type metadata accessor for ContextProtoRetrievedContext);
  sub_23C8315C4(v31, type metadata accessor for ContextProtoRetrievedContext);
  sub_23C585C34(v28, &qword_27E1FABA8, &qword_23C878F50);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams39TranscriptProtoSystemRequirementMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C40, &qword_23C8A0E30);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E2016D0, &unk_23C8A1220);
  sub_23C5855B0(a2, &v14[v15], &qword_27E2016D0, &unk_23C8A1220);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E2016D0, &unk_23C8A1220);
LABEL_9:
      type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E2016D0, &unk_23C8A1220);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203C40, &qword_23C8A0E30);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  v18 = _s26AIMLInstrumentationStreams43TranscriptProtoSystemRequirementMessageEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_23C585C34(v14, &qword_27E2016D0, &unk_23C8A1220);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams39TranscriptProtoASTFlatExprUpdateVariantV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v13 = MEMORY[0x28223BE20](v12);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v17 = *(updated + 24);
  v38 = v12;
  v18 = *(v12 + 48);
  v42 = a1;
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB88, &unk_23C8A1350);
  v43 = a2;
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAB88, &unk_23C8A1350);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB88, &unk_23C8A1350);
      goto LABEL_9;
    }

LABEL_6:
    v20 = v16;
LABEL_7:
    sub_23C585C34(v20, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_18;
  }

  sub_23C5855B0(v16, v11, &qword_27E1FAB88, &unk_23C8A1350);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoASTFlatValue);
    goto LABEL_6;
  }

  v21 = &v16[v18];
  v22 = v41;
  sub_23C83155C(v21, v41, type metadata accessor for TranscriptProtoASTFlatValue);
  v23 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v11, v22);
  sub_23C8315C4(v22, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8315C4(v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C585C34(v16, &qword_27E1FAB88, &unk_23C8A1350);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v24 = v42;
  v25 = v43;
  if ((sub_23C5D4D58(*v42, *v43) & 1) == 0)
  {
    goto LABEL_18;
  }

  v26 = v39;
  v27 = *(updated + 28);
  v28 = *(v38 + 48);
  sub_23C5855B0(v24 + v27, v39, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(v25 + v27, v26 + v28, &qword_27E1FAB88, &unk_23C8A1350);
  v29 = v4;
  if (v19(v26, 1, v4) != 1)
  {
    v30 = v37;
    sub_23C5855B0(v26, v37, &qword_27E1FAB88, &unk_23C8A1350);
    if (v19((v26 + v28), 1, v29) != 1)
    {
      v31 = v26 + v28;
      v32 = v41;
      sub_23C83155C(v31, v41, type metadata accessor for TranscriptProtoASTFlatValue);
      v33 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v30, v32);
      sub_23C8315C4(v32, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8315C4(v30, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v26, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v33 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    sub_23C8315C4(v30, type metadata accessor for TranscriptProtoASTFlatValue);
    goto LABEL_15;
  }

  if (v19((v26 + v28), 1, v4) != 1)
  {
LABEL_15:
    v20 = v26;
    goto LABEL_7;
  }

  sub_23C585C34(v26, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_17:
  if (*(v24 + 8) == *(v25 + 8))
  {
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = sub_23C871754();
    return v34 & 1;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_23C8039BC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams39TranscriptProtoASTFlatExprPrefixVariantV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_23C5855B0(&v15[v17], v13, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(&v16[v17], &v13[v18], &qword_27E1FAB88, &unk_23C8A1350);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_11:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAB88, &unk_23C8A1350);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_7:
    sub_23C585C34(v13, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_8;
  }

  sub_23C83155C(&v13[v18], v7, type metadata accessor for TranscriptProtoASTFlatValue);
  v22 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C585C34(v13, &qword_27E1FAB88, &unk_23C8A1350);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams38TranscriptProtoSessionCoordinatorErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C88, &qword_23C8A0E78);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201690, &unk_23C8A1200);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201690, &unk_23C8A1200);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201690, &unk_23C8A1200);
LABEL_9:
      type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201690, &unk_23C8A1200);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203C88, &qword_23C8A0E78);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  v18 = _s26AIMLInstrumentationStreams42TranscriptProtoSessionCoordinatorErrorEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_23C585C34(v14, &qword_27E201690, &unk_23C8A1200);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams38TranscriptProtoParameterDisambiguationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (a1[4])
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (a1[3] != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (sub_23C5D15A4(a1[2], *(a2 + 16)))
  {
    type metadata accessor for TranscriptProtoParameterDisambiguation(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams38TranscriptProtoASTFlatExprInfixVariantV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v36 = v11;
  v37 = v7;
  v20 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v40 = a2;
  v21 = a1;
  v38 = v20;
  v39 = a1;
  v22 = *(v20 + 20);
  v23 = *(v14 + 48);
  sub_23C5855B0(&v21[v22], v19, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(&v40[v22], &v19[v23], &qword_27E1FAB88, &unk_23C8A1350);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) != 1)
  {
    sub_23C5855B0(v19, v13, &qword_27E1FAB88, &unk_23C8A1350);
    if (v24(&v19[v23], 1, v4) != 1)
    {
      v26 = v37;
      sub_23C83155C(&v19[v23], v37, type metadata accessor for TranscriptProtoASTFlatValue);
      v27 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v13, v26);
      sub_23C8315C4(v26, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v19, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_7:
    v25 = v19;
LABEL_15:
    sub_23C585C34(v25, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_16;
  }

  if (v24(&v19[v23], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v19, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_9:
  v28 = *(v38 + 24);
  v29 = *(v14 + 48);
  sub_23C5855B0(&v39[v28], v17, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(&v40[v28], &v17[v29], &qword_27E1FAB88, &unk_23C8A1350);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v29], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_19:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v31 = sub_23C871754();
      return v31 & 1;
    }

    goto LABEL_14;
  }

  v30 = v36;
  sub_23C5855B0(v17, v36, &qword_27E1FAB88, &unk_23C8A1350);
  if (v24(&v17[v29], 1, v4) == 1)
  {
    sub_23C8315C4(v30, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_14:
    v25 = v17;
    goto LABEL_15;
  }

  v33 = v37;
  sub_23C83155C(&v17[v29], v37, type metadata accessor for TranscriptProtoASTFlatValue);
  v34 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v30, v33);
  sub_23C8315C4(v33, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8315C4(v30, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C585C34(v17, &qword_27E1FAB88, &unk_23C8A1350);
  if (v34)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s26AIMLInstrumentationStreams38TranscriptProtoASTFlatExprIndexVariantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v13 = MEMORY[0x28223BE20](v12);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *(v15 + 48);
  v36 = a1;
  sub_23C5855B0(a1, &v32 - v16, &qword_27E1FAB88, &unk_23C8A1350);
  v37 = a2;
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAB88, &unk_23C8A1350);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23C5855B0(v17, v11, &qword_27E1FAB88, &unk_23C8A1350);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = &v17[v18];
      v22 = v34;
      sub_23C83155C(v21, v34, type metadata accessor for TranscriptProtoASTFlatValue);
      v23 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v11, v22);
      sub_23C8315C4(v22, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8315C4(v11, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v17, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_6:
    v20 = v17;
LABEL_14:
    sub_23C585C34(v20, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_15;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v17, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_8:
  v24 = *(type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0) + 20);
  v25 = *(v12 + 48);
  v26 = v35;
  sub_23C5855B0(v36 + v24, v35, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(v37 + v24, v26 + v25, &qword_27E1FAB88, &unk_23C8A1350);
  if (v19(v26, 1, v4) == 1)
  {
    if (v19((v26 + v25), 1, v4) == 1)
    {
      sub_23C585C34(v26, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = sub_23C871754();
      return v28 & 1;
    }

    goto LABEL_13;
  }

  v27 = v33;
  sub_23C5855B0(v26, v33, &qword_27E1FAB88, &unk_23C8A1350);
  if (v19((v26 + v25), 1, v4) == 1)
  {
    sub_23C8315C4(v27, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_13:
    v20 = v26;
    goto LABEL_14;
  }

  v30 = v34;
  sub_23C83155C(v26 + v25, v34, type metadata accessor for TranscriptProtoASTFlatValue);
  v31 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v27, v30);
  sub_23C8315C4(v30, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8315C4(v27, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C585C34(v26, &qword_27E1FAB88, &unk_23C8A1350);
  if (v31)
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s26AIMLInstrumentationStreams37TranscriptProtoASTFlatExprPickVariantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTPickType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203928, &qword_23C8A0B88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203930, &qword_23C8A0B90);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E203928, &qword_23C8A0B88);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E203928, &qword_23C8A0B88);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E203928, &qword_23C8A0B88);
LABEL_11:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_23C5855B0(v13, v10, &qword_27E203928, &qword_23C8A0B88);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoASTPickType);
LABEL_8:
    sub_23C585C34(v13, &qword_27E203930, &qword_23C8A0B90);
    goto LABEL_9;
  }

  v18 = v21;
  sub_23C83155C(&v13[v15], v21, type metadata accessor for TranscriptProtoASTPickType);
  v19 = _s26AIMLInstrumentationStreams26TranscriptProtoASTPickTypeV2eeoiySbAC_ACtFZ_0(v10, v18);
  sub_23C8315C4(v18, type metadata accessor for TranscriptProtoASTPickType);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoASTPickType);
  sub_23C585C34(v13, &qword_27E203928, &qword_23C8A0B88);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoTypeConversionRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v56 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v59);
  v62 = &v56 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = (&v56 - v12);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v64);
  v67 = &v56 - v13;
  v14 = type metadata accessor for ToolKitProtoTypedValue(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v56 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v56 - v23;
  v25 = *(v22 + 56);
  v68 = a1;
  sub_23C5855B0(a1, &v56 - v23, &qword_27E1FAB68, &unk_23C879140);
  v69 = a2;
  sub_23C5855B0(a2, &v24[v25], &qword_27E1FAB68, &unk_23C879140);
  v26 = *(v15 + 48);
  if (v26(v24, 1, v14) == 1)
  {
    if (v26(&v24[v25], 1, v14) == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_27E1FAB70;
    v28 = &qword_23C878F28;
    v29 = v24;
LABEL_21:
    sub_23C585C34(v29, v27, v28);
    goto LABEL_22;
  }

  sub_23C5855B0(v24, v20, &qword_27E1FAB68, &unk_23C879140);
  if (v26(&v24[v25], 1, v14) == 1)
  {
    sub_23C8315C4(v20, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_23C83155C(&v24[v25], v17, type metadata accessor for ToolKitProtoTypedValue);
  v30 = static ToolKitProtoTypedValue.== infix(_:_:)(v20, v17);
  sub_23C8315C4(v17, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v31 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v32 = *(v31 + 20);
  v33 = *(v64 + 48);
  v35 = v67;
  v34 = v68;
  sub_23C5855B0(v68 + v32, v67, &qword_27E1FAC40, &unk_23C8791C0);
  v36 = v69;
  sub_23C5855B0(v69 + v32, v35 + v33, &qword_27E1FAC40, &unk_23C8791C0);
  v37 = v66;
  v38 = *(v65 + 48);
  if (v38(v35, 1, v66) != 1)
  {
    v39 = v63;
    sub_23C5855B0(v35, v63, &qword_27E1FAC40, &unk_23C8791C0);
    if (v38(v35 + v33, 1, v37) != 1)
    {
      v40 = v35 + v33;
      v41 = v58;
      sub_23C83155C(v40, v58, type metadata accessor for ToolKitProtoTypeInstance);
      v42 = static ToolKitProtoTypeInstance.== infix(_:_:)(v39, v41);
      sub_23C8315C4(v41, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C8315C4(v39, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C585C34(v35, &qword_27E1FAC40, &unk_23C8791C0);
      if ((v42 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_23C8315C4(v39, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_13;
  }

  if (v38(v35 + v33, 1, v37) != 1)
  {
LABEL_13:
    v27 = &qword_27E1FAC48;
    v28 = &qword_23C878FD0;
    v29 = v35;
    goto LABEL_21;
  }

  sub_23C585C34(v35, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_15:
  v43 = *(v31 + 24);
  v44 = *(v59 + 48);
  v45 = v62;
  sub_23C5855B0(v34 + v43, v62, &qword_27E1FAAF8, &unk_23C8A1180);
  v46 = v36 + v43;
  v47 = v45;
  sub_23C5855B0(v46, v45 + v44, &qword_27E1FAAF8, &unk_23C8A1180);
  v48 = v61;
  v49 = *(v60 + 48);
  if (v49(v45, 1, v61) == 1)
  {
    if (v49(v45 + v44, 1, v48) == 1)
    {
      sub_23C585C34(v45, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v51 = sub_23C871754();
      return v51 & 1;
    }

    goto LABEL_20;
  }

  v50 = v57;
  sub_23C5855B0(v47, v57, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v49(v47 + v44, 1, v48) == 1)
  {
    sub_23C8315C4(v50, type metadata accessor for TranscriptProtoStatementID);
LABEL_20:
    v27 = &qword_27E1FAB00;
    v28 = &qword_23C878ED8;
    v29 = v47;
    goto LABEL_21;
  }

  v53 = v47 + v44;
  v54 = v56;
  sub_23C83155C(v53, v56, type metadata accessor for TranscriptProtoStatementID);
  v55 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v50, v54);
  sub_23C8315C4(v54, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v50, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v47, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_22:
  v51 = 0;
  return v51 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_23C872014() & 1) == 0 || a1[8] != *(a2 + 32) || (sub_23C5D0A74(*(a1 + 5), *(a2 + 40)) & 1) == 0 || (sub_23C5D5284(*(a1 + 6), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoRequestPrescribedPlanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D78, &qword_23C8A0F40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201530, &unk_23C8A1190);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201530, &unk_23C8A1190);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
LABEL_9:
      type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201530, &unk_23C8A1190);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203D78, &qword_23C8A0F40);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  v18 = _s26AIMLInstrumentationStreams40TranscriptProtoRequestPrescribedPlanEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoQueryDecorationResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE8, &qword_23C879020);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((sub_23C5CF590(*a1, *a2) & 1) == 0 || (sub_23C5D6494(a1[1], a2[1]) & 1) == 0 || (sub_23C5D6494(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_14;
  }

  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v14 = *(DecorationResult + 36);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FACE0, &unk_23C8A13B0);
  v16 = a2 + v14;
  v17 = v15;
  sub_23C5855B0(v16, &v13[v15], &qword_27E1FACE0, &unk_23C8A13B0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, DecorationToolRetrievalResponse) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E1FACE0, &unk_23C8A13B0);
    if (v18(&v13[v17], 1, DecorationToolRetrievalResponse) != 1)
    {
      sub_23C83155C(&v13[v17], v7, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_23C8315C4(v7, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C8315C4(v10, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C585C34(v13, &qword_27E1FACE0, &unk_23C8A13B0);
      if (DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0)
      {
        goto LABEL_11;
      }

LABEL_14:
      v20 = 0;
      return v20 & 1;
    }

    sub_23C8315C4(v10, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_9:
    sub_23C585C34(v13, &qword_27E1FACE8, &qword_23C879020);
    goto LABEL_14;
  }

  if (v18(&v13[v17], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v13, &qword_27E1FACE0, &unk_23C8A13B0);
LABEL_11:
  if ((sub_23C5D6DAC(a1[3], a2[3]) & 1) == 0 || (sub_23C5D6494(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_23C871754();
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoParameterConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_15;
    }
  }

  v22 = v7;
  v23 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v15 = *(v23 + 24);
  v16 = *(v11 + 48);
  sub_23C5855B0(a1 + v15, v13, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2 + v15, &v13[v16], &qword_27E1FAB68, &unk_23C879140);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_23C871754();
      return v18 & 1;
    }

    goto LABEL_14;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAB68, &unk_23C879140);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_14:
    sub_23C585C34(v13, &qword_27E1FAB70, &qword_23C878F28);
    goto LABEL_15;
  }

  v20 = v22;
  sub_23C83155C(&v13[v16], v22, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v10, v20);
  sub_23C8315C4(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
  if (v21)
  {
    goto LABEL_18;
  }

LABEL_15:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoClientUndoRedoRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_17;
  }

  v39 = v11;
  v40 = v7;
  v44 = v17;
  v20 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v21 = *(v20 + 24);
  v22 = *(v14 + 48);
  v41 = v20;
  v42 = a1;
  sub_23C5855B0(a1 + v21, v19, &qword_27E1FAAF8, &unk_23C8A1180);
  v43 = a2;
  sub_23C5855B0(a2 + v21, &v19[v22], &qword_27E1FAAF8, &unk_23C8A1180);
  v23 = v5 + 48;
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v22], 1, v4) != 1)
    {
LABEL_16:
      sub_23C585C34(v19, &qword_27E1FAB00, &qword_23C878ED8);
      goto LABEL_17;
    }

    v38 = v23;
    sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_10:
    v29 = *(v41 + 28);
    v30 = *(v14 + 48);
    v19 = v44;
    sub_23C5855B0(v42 + v29, v44, &qword_27E1FAAF8, &unk_23C8A1180);
    sub_23C5855B0(v43 + v29, &v19[v30], &qword_27E1FAAF8, &unk_23C8A1180);
    if (v24(v19, 1, v4) == 1)
    {
      if (v24(&v19[v30], 1, v4) == 1)
      {
        sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_20:
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v32 = sub_23C871754();
        return v32 & 1;
      }

      goto LABEL_16;
    }

    v31 = v39;
    sub_23C5855B0(v19, v39, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v24(&v19[v30], 1, v4) == 1)
    {
      v25 = v31;
      goto LABEL_15;
    }

    v34 = &v19[v30];
    v35 = v40;
    sub_23C83155C(v34, v40, type metadata accessor for TranscriptProtoStatementID);
    v36 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v31, v35);
    sub_23C8315C4(v35, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoStatementID);
    sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v36)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_23C5855B0(v19, v13, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v24(&v19[v22], 1, v4) == 1)
  {
    v25 = v13;
LABEL_15:
    sub_23C8315C4(v25, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_16;
  }

  v38 = v23;
  v26 = &v19[v22];
  v27 = v40;
  sub_23C83155C(v26, v40, type metadata accessor for TranscriptProtoStatementID);
  v28 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v13, v27);
  sub_23C8315C4(v27, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v28)
  {
    goto LABEL_10;
  }

LABEL_17:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoActionResolverRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v71 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = (&v56 - v6);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  MEMORY[0x28223BE20](v59);
  v62 = &v56 - v7;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v56 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v65);
  v68 = &v56 - v12;
  v13 = type metadata accessor for TranscriptProtoParameterSet(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203970, &unk_23C8A1320);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v56 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203978, &qword_23C8A0BD0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v69 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v70 = a1;
  v24 = *(v69 + 28);
  v25 = *(v21 + 56);
  sub_23C5855B0(a1 + v24, v23, &qword_27E203970, &unk_23C8A1320);
  sub_23C5855B0(v71 + v24, &v23[v25], &qword_27E203970, &unk_23C8A1320);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_23C585C34(v23, &qword_27E203970, &unk_23C8A1320);
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  sub_23C5855B0(v23, v19, &qword_27E203970, &unk_23C8A1320);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_23C8315C4(v19, type metadata accessor for TranscriptProtoParameterSet);
LABEL_11:
    v35 = &qword_27E203978;
    v36 = &qword_23C8A0BD0;
LABEL_12:
    v37 = v23;
LABEL_13:
    sub_23C585C34(v37, v35, v36);
    goto LABEL_14;
  }

  sub_23C83155C(&v23[v25], v16, type metadata accessor for TranscriptProtoParameterSet);
  if ((sub_23C5D8D0C(*v19, *v16) & 1) == 0)
  {
    sub_23C8315C4(v16, type metadata accessor for TranscriptProtoParameterSet);
    sub_23C8315C4(v19, type metadata accessor for TranscriptProtoParameterSet);
    v35 = &qword_27E203970;
    v36 = &unk_23C8A1320;
    goto LABEL_12;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = sub_23C871754();
  sub_23C8315C4(v16, type metadata accessor for TranscriptProtoParameterSet);
  sub_23C8315C4(v19, type metadata accessor for TranscriptProtoParameterSet);
  sub_23C585C34(v23, &qword_27E203970, &unk_23C8A1320);
  if ((v40 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v28 = v70;
  v27 = v71;
  if ((sub_23C5D76C4(*v70, *v71) & 1) == 0 || *(v28 + 8) != *(v27 + 8))
  {
    goto LABEL_14;
  }

  v29 = v68;
  v30 = v69;
  v31 = *(v69 + 32);
  v32 = *(v65 + 48);
  sub_23C5855B0(v28 + v31, v68, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v27 + v31, v29 + v32, &qword_27E1FAAF8, &unk_23C8A1180);
  v33 = v67;
  v34 = *(v66 + 48);
  if (v34(v29, 1, v67) == 1)
  {
    if (v34(v29 + v32, 1, v33) == 1)
    {
      sub_23C585C34(v29, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v41 = v64;
  sub_23C5855B0(v29, v64, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v34(v29 + v32, 1, v33) == 1)
  {
    sub_23C8315C4(v41, type metadata accessor for TranscriptProtoStatementID);
LABEL_22:
    v35 = &qword_27E1FAB00;
    v36 = &qword_23C878ED8;
    v37 = v29;
    goto LABEL_13;
  }

  v42 = v29 + v32;
  v43 = v63;
  sub_23C83155C(v42, v63, type metadata accessor for TranscriptProtoStatementID);
  v44 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v41, v43);
  sub_23C8315C4(v43, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v41, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v29, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v44 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  if (*(v28 + 9) != *(v27 + 9))
  {
    goto LABEL_14;
  }

  v45 = *(v30 + 36);
  v46 = *(v59 + 48);
  v47 = v62;
  sub_23C5855B0(v28 + v45, v62, &qword_27E2037A0, &qword_23C8A0A00);
  v48 = v27 + v45;
  v49 = v47;
  sub_23C5855B0(v48, v47 + v46, &qword_27E2037A0, &qword_23C8A0A00);
  v50 = v61;
  v51 = *(v60 + 48);
  if (v51(v47, 1, v61) == 1)
  {
    if (v51(v47 + v46, 1, v50) == 1)
    {
      sub_23C585C34(v47, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_32:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_23C871754();
      return v38 & 1;
    }

    goto LABEL_30;
  }

  v52 = v58;
  sub_23C5855B0(v49, v58, &qword_27E2037A0, &qword_23C8A0A00);
  if (v51(v49 + v46, 1, v50) == 1)
  {
    sub_23C8315C4(v52, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_30:
    v35 = &qword_27E2037A8;
    v36 = &qword_23C8A0A08;
    v37 = v49;
    goto LABEL_13;
  }

  v53 = v49 + v46;
  v54 = v57;
  sub_23C83155C(v53, v57, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v55 = sub_23C8193D0(v52, v54, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v54, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v52, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C585C34(v49, &qword_27E2037A0, &qword_23C8A0A00);
  if (v55)
  {
    goto LABEL_32;
  }

LABEL_14:
  v38 = 0;
  return v38 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoASTFlatExprDotVariantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v23 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v24 = a1;
  v14 = *(v23 + 20);
  v15 = *(v11 + 56);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAB88, &unk_23C8A1350);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v9, &qword_27E1FAB88, &unk_23C8A1350);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      sub_23C83155C(&v13[v15], v22, type metadata accessor for TranscriptProtoASTFlatValue);
      v19 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v9, v18);
      sub_23C8315C4(v18, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8315C4(v9, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v13, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v9, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v13, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_9:
  if (*v24 == *a2 && v24[1] == a2[1] || (sub_23C872014() & 1) != 0)
  {
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_23C871754();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoTypeConversionResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for TranscriptProtoStatementID(0);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v58 = &v53[-v8];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v9 = MEMORY[0x28223BE20](v60);
  v57 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v59 = &v53[-v11];
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v53[-v21];
  v23 = *(v20 + 56);
  v62 = a1;
  sub_23C5855B0(a1, &v53[-v21], &qword_27E1FAB68, &unk_23C879140);
  v63 = a2;
  sub_23C5855B0(a2, &v22[v23], &qword_27E1FAB68, &unk_23C879140);
  v24 = *(v13 + 48);
  if (v24(v22, 1, v12) == 1)
  {
    if (v24(&v22[v23], 1, v12) == 1)
    {
      sub_23C585C34(v22, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_8;
    }

LABEL_6:
    v25 = &qword_27E1FAB70;
    v26 = &qword_23C878F28;
    v27 = v22;
LABEL_21:
    sub_23C585C34(v27, v25, v26);
    goto LABEL_22;
  }

  sub_23C5855B0(v22, v18, &qword_27E1FAB68, &unk_23C879140);
  if (v24(&v22[v23], 1, v12) == 1)
  {
    sub_23C8315C4(v18, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_23C83155C(&v22[v23], v15, type metadata accessor for ToolKitProtoTypedValue);
  v28 = static ToolKitProtoTypedValue.== infix(_:_:)(v18, v15);
  sub_23C8315C4(v15, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v18, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v22, &qword_27E1FAB68, &unk_23C879140);
  if ((v28 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v29 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v30 = *(v29 + 20);
  v31 = v59;
  v32 = v60;
  v33 = *(v60 + 48);
  v34 = v62;
  sub_23C5855B0(v62 + v30, v59, &qword_27E1FAAF8, &unk_23C8A1180);
  v35 = v63;
  sub_23C5855B0(v63 + v30, &v31[v33], &qword_27E1FAAF8, &unk_23C8A1180);
  v36 = v64 + 48;
  v37 = *(v64 + 48);
  v38 = v61;
  if (v37(v31, 1, v61) == 1)
  {
    if (v37(&v31[v33], 1, v38) != 1)
    {
LABEL_20:
      v25 = &qword_27E1FAB00;
      v26 = &qword_23C878ED8;
      v27 = v31;
      goto LABEL_21;
    }

    v64 = v36;
    sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_14:
    v43 = *(v29 + 24);
    v44 = *(v32 + 48);
    v45 = v57;
    sub_23C5855B0(v34 + v43, v57, &qword_27E1FAAF8, &unk_23C8A1180);
    v46 = v35 + v43;
    v31 = v45;
    sub_23C5855B0(v46, &v45[v44], &qword_27E1FAAF8, &unk_23C8A1180);
    if (v37(v45, 1, v38) == 1)
    {
      if (v37(&v45[v44], 1, v38) == 1)
      {
        sub_23C585C34(v45, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = sub_23C871754();
        return v49 & 1;
      }

      goto LABEL_20;
    }

    v47 = v45;
    v48 = v55;
    sub_23C5855B0(v47, v55, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v37(&v31[v44], 1, v38) == 1)
    {
      v40 = v48;
      goto LABEL_19;
    }

    v51 = v56;
    sub_23C83155C(&v31[v44], v56, type metadata accessor for TranscriptProtoStatementID);
    v52 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v48, v51);
    sub_23C8315C4(v51, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoStatementID);
    sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v39 = v58;
  sub_23C5855B0(v31, v58, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v37(&v31[v33], 1, v38) == 1)
  {
    v40 = v39;
LABEL_19:
    sub_23C8315C4(v40, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v64 = v36;
  v41 = &v31[v33];
  v42 = v56;
  sub_23C83155C(v41, v56, type metadata accessor for TranscriptProtoStatementID);
  v54 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v39, v42);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v39, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v54)
  {
    goto LABEL_14;
  }

LABEL_22:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoExternalAgentRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = (&v45 - v7);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC8, &qword_23C8A0F88);
  MEMORY[0x28223BE20](v48);
  v51 = &v45 - v8;
  v9 = type metadata accessor for TranscriptProtoRequestContent(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD0, &unk_23C8A1160);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD8, &qword_23C8A0F90);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - v18;
  v20 = *(v17 + 56);
  v52 = a1;
  sub_23C5855B0(a1, &v45 - v18, &qword_27E203DD0, &unk_23C8A1160);
  sub_23C5855B0(a2, &v19[v20], &qword_27E203DD0, &unk_23C8A1160);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) == 1)
  {
    if (v21(&v19[v20], 1, v9) == 1)
    {
      sub_23C585C34(v19, &qword_27E203DD0, &unk_23C8A1160);
      goto LABEL_11;
    }

LABEL_6:
    v22 = &qword_27E203DD8;
    v23 = &qword_23C8A0F90;
    v24 = v19;
LABEL_7:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_8;
  }

  sub_23C5855B0(v19, v15, &qword_27E203DD0, &unk_23C8A1160);
  if (v21(&v19[v20], 1, v9) == 1)
  {
    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoRequestContent);
    goto LABEL_6;
  }

  sub_23C83155C(&v19[v20], v12, type metadata accessor for TranscriptProtoRequestContent);
  v27 = _s26AIMLInstrumentationStreams29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v15, v12);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C8315C4(v15, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C585C34(v19, &qword_27E203DD0, &unk_23C8A1160);
  if ((v27 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v29 = *(v28 + 20);
  v30 = v52;
  v31 = (v52 + v29);
  v32 = *(v52 + v29 + 8);
  v33 = (a2 + v29);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v34)
  {
    goto LABEL_8;
  }

  v35 = *(v28 + 24);
  v36 = *(v48 + 48);
  v37 = v51;
  sub_23C5855B0(v30 + v35, v51, &qword_27E203DC0, &unk_23C8A1170);
  v38 = v37;
  sub_23C5855B0(a2 + v35, v37 + v36, &qword_27E203DC0, &unk_23C8A1170);
  v39 = v50;
  v40 = *(v49 + 48);
  if (v40(v37, 1, v50) == 1)
  {
    if (v40(v37 + v36, 1, v39) == 1)
    {
      sub_23C585C34(v37, &qword_27E203DC0, &unk_23C8A1170);
LABEL_21:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = sub_23C871754();
      return v25 & 1;
    }

    goto LABEL_24;
  }

  v41 = v47;
  sub_23C5855B0(v38, v47, &qword_27E203DC0, &unk_23C8A1170);
  if (v40(v38 + v36, 1, v39) == 1)
  {
    sub_23C8315C4(v41, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
LABEL_24:
    v22 = &qword_27E203DC8;
    v23 = &qword_23C8A0F88;
LABEL_32:
    v24 = v38;
    goto LABEL_7;
  }

  v42 = v38 + v36;
  v43 = v46;
  sub_23C83155C(v42, v46, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  if ((*v41 != *v43 || v41[1] != v43[1]) && (sub_23C872014() & 1) == 0 || (sub_23C5D25E0(v41[2], v43[2]) & 1) == 0)
  {
    sub_23C8315C4(v43, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_23C8315C4(v41, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    v22 = &qword_27E203DC0;
    v23 = &unk_23C8A1170;
    goto LABEL_32;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v44 = sub_23C871754();
  sub_23C8315C4(v43, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C8315C4(v41, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C585C34(v38, &qword_27E203DC0, &unk_23C8A1170);
  if (v44)
  {
    goto LABEL_21;
  }

LABEL_8:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoExternalAgentOutcomeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB20, &qword_23C87B920);
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  if ((sub_23C5D25E0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v41 = v6;
  v21 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v48 = a2;
  v22 = *(v21 + 20);
  v23 = a1;
  v24 = *(v18 + 48);
  v42 = v21;
  v43 = v23;
  sub_23C5855B0(v23 + v22, v20, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v48 + v22, &v20[v24], &qword_27E1FAAF8, &unk_23C8A1180);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) != 1)
  {
    sub_23C5855B0(v20, v17, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v25(&v20[v24], 1, v11) != 1)
    {
      sub_23C83155C(&v20[v24], v14, type metadata accessor for TranscriptProtoStatementID);
      v29 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v17, v14);
      sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v20, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    v26 = &qword_27E1FAB00;
    v27 = &qword_23C878ED8;
    v28 = v20;
LABEL_15:
    sub_23C585C34(v28, v26, v27);
    goto LABEL_16;
  }

  if (v25(&v20[v24], 1, v11) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v20, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
  v30 = *(v42 + 24);
  v31 = *(v9 + 48);
  v32 = v47;
  sub_23C5855B0(v43 + v30, v47, &qword_27E1FBB18, &unk_23C87B950);
  sub_23C5855B0(v48 + v30, v32 + v31, &qword_27E1FBB18, &unk_23C87B950);
  v33 = v46;
  v34 = *(v45 + 48);
  if (v34(v32, 1, v46) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      sub_23C585C34(v32, &qword_27E1FBB18, &unk_23C87B950);
LABEL_19:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v36 = sub_23C871754();
      return v36 & 1;
    }

    goto LABEL_14;
  }

  v35 = v44;
  sub_23C5855B0(v32, v44, &qword_27E1FBB18, &unk_23C87B950);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    sub_23C8315C4(v35, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_14:
    v26 = &qword_27E1FBB20;
    v27 = &qword_23C87B920;
    v28 = v32;
    goto LABEL_15;
  }

  v38 = v32 + v31;
  v39 = v41;
  sub_23C83155C(v38, v41, type metadata accessor for TranscriptProtoStatementOutcome);
  v40 = _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v35, v39);
  sub_23C8315C4(v39, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C8315C4(v35, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C585C34(v32, &qword_27E1FBB18, &unk_23C87B950);
  if (v40)
  {
    goto LABEL_19;
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoActionParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D00, &qword_23C8A0EE0);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D58, &unk_23C8A11A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D60, &qword_23C8A0F28);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E203D58, &unk_23C8A11A0);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E203D58, &unk_23C8A11A0);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E203D58, &unk_23C8A11A0);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C83155C(&v19[v20], v12, type metadata accessor for TranscriptProtoToolParameterValue);
      v25 = _s26AIMLInstrumentationStreams33TranscriptProtoToolParameterValueV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoToolParameterValue);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoToolParameterValue);
      sub_23C585C34(v19, &qword_27E203D58, &unk_23C8A11A0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoToolParameterValue);
LABEL_6:
    v22 = &qword_27E203D60;
    v23 = &qword_23C8A0F28;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E203D58, &unk_23C8A11A0);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E203CF8, &qword_23C8A0ED8);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E203CF8, &qword_23C8A0ED8);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E203CF8, &qword_23C8A0ED8);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E203CF8, &qword_23C8A0ED8);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoPromptSelection);
LABEL_13:
    v22 = &qword_27E203D00;
    v23 = &qword_23C8A0EE0;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C83155C(v34, v37, type metadata accessor for TranscriptProtoPromptSelection);
  v36 = _s26AIMLInstrumentationStreams30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_23C8315C4(v35, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C585C34(v28, &qword_27E203CF8, &qword_23C8A0ED8);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams34TranscriptProtoUIConfirmationLabelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C809468(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      if (*a1 == *a2 && v4 == v5)
      {
        goto LABEL_8;
      }

      v7 = a3;
      v8 = sub_23C872014();
      a3 = v7;
      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v5)
  {
LABEL_8:
    a3(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams34TranscriptProtoParameterNotAllowedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = v7;
  v21 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v14 = *(v21 + 24);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAB68, &unk_23C879140);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAB68, &unk_23C879140);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_8:
    sub_23C585C34(v13, &qword_27E1FAB70, &qword_23C878F28);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v22;
  sub_23C83155C(&v13[v15], v22, type metadata accessor for ToolKitProtoTypedValue);
  v18 = static ToolKitProtoTypedValue.== infix(_:_:)(v10, v17);
  sub_23C8315C4(v17, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_23C871754();
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoToolParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203778, &qword_23C8A09E0);
  MEMORY[0x28223BE20](v25);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203780, &unk_23C8A1380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203788, &qword_23C8A09E8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_23C5855B0(a1, &v24 - v14, &qword_27E203780, &unk_23C8A1380);
  v27 = a2;
  sub_23C5855B0(a2, &v15[v16], &qword_27E203780, &unk_23C8A1380);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_23C585C34(v15, &qword_27E203780, &unk_23C8A1380);
LABEL_9:
      type metadata accessor for TranscriptProtoToolParameterValue(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_23C871754();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v15, v11, &qword_27E203780, &unk_23C8A1380);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoToolParameterValueEnum);
LABEL_6:
    sub_23C585C34(v15, &qword_27E203788, &qword_23C8A09E8);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v24;
  sub_23C83155C(v19, v24, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  v21 = *(v25 + 48);
  sub_23C8314F4(v11, v5, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C8314F4(v20, v5 + v21, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  v22 = static ToolKitProtoTypedValue.== infix(_:_:)(v5, (v5 + v21));
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C8315C4(v5 + v21, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v5, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v11, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C585C34(v15, &qword_27E203780, &unk_23C8A1380);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoPickOneExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      type metadata accessor for TranscriptProtoPickOneExpression(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoConfirmExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      type metadata accessor for TranscriptProtoConfirmExpression(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoPermissionRequirementV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    if (v3 != 8)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoPermissionRequirement(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoActionRequirementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C58, &qword_23C8A0E48);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E2016C0, &qword_23C88DBD8);
  sub_23C5855B0(a2, &v14[v15], &qword_27E2016C0, &qword_23C88DBD8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E2016C0, &qword_23C88DBD8);
LABEL_9:
      type metadata accessor for TranscriptProtoActionRequirement(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E2016C0, &qword_23C88DBD8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionRequirementEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203C58, &qword_23C8A0E48);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  v18 = _s26AIMLInstrumentationStreams36TranscriptProtoActionRequirementEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_23C585C34(v14, &qword_27E2016C0, &qword_23C88DBD8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoSearchExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoSearchExpression(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoRejectExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      type metadata accessor for TranscriptProtoRejectExpression(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B10, &qword_23C8A0D30);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_23;
  }

  v25 = v7;
  v26 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v14 = *(v26 + 24);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E203B08, &qword_23C8A0D28);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E203B08, &qword_23C8A0D28);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E203B08, &qword_23C8A0D28);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v25;
      sub_23C83155C(v20, v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v22 = *v10 == *v21 && v10[1] == v21[1];
      if (v22 || (sub_23C872014()) && v10[2] == v21[2])
      {
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v23 = sub_23C871754();
        sub_23C8315C4(v21, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_23C8315C4(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_23C585C34(v13, &qword_27E203B08, &qword_23C8A0D28);
        if (v23)
        {
          goto LABEL_9;
        }

LABEL_23:
        v17 = 0;
        return v17 & 1;
      }

      sub_23C8315C4(v21, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v18 = &qword_27E203B08;
      v19 = &qword_23C8A0D28;
LABEL_22:
      sub_23C585C34(v13, v18, v19);
      goto LABEL_23;
    }

    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_12:
    v18 = &qword_27E203B10;
    v19 = &qword_23C8A0D30;
    goto LABEL_22;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_23C585C34(v13, &qword_27E203B08, &qword_23C8A0D28);
LABEL_9:
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_23C871754();
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B18, &unk_23C8A1280);
  MEMORY[0x28223BE20](v25);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B20, &qword_23C8A0D38);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B28, &qword_23C8A0D40);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_23C5855B0(a1, &v24 - v14, &qword_27E203B20, &qword_23C8A0D38);
  v27 = a2;
  sub_23C5855B0(a2, &v15[v16], &qword_27E203B20, &qword_23C8A0D38);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_23C585C34(v15, &qword_27E203B20, &qword_23C8A0D38);
LABEL_9:
      type metadata accessor for TranscriptProtoPlanGenerationError(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_23C871754();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v15, v11, &qword_27E203B20, &qword_23C8A0D38);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
LABEL_6:
    sub_23C585C34(v15, &qword_27E203B28, &qword_23C8A0D40);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v24;
  sub_23C83155C(v19, v24, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  v21 = *(v25 + 48);
  sub_23C8314F4(v11, v5, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C8314F4(v20, v5 + v21, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  v22 = _s26AIMLInstrumentationStreams45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(v5, (v5 + v21));
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C8315C4(v5 + v21, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C8315C4(v5, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C585C34(v15, &qword_27E203B20, &qword_23C8A0D38);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoRecoverableErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B38, &unk_23C8A1270);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - v4;
  v6 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B40, &qword_23C8A0D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B48, &qword_23C8A0D58);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_23C5855B0(a1, &v24 - v14, &qword_27E203B40, &qword_23C8A0D50);
  v27 = a2;
  sub_23C5855B0(a2, &v15[v16], &qword_27E203B40, &qword_23C8A0D50);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_23C585C34(v15, &qword_27E203B40, &qword_23C8A0D50);
LABEL_9:
      type metadata accessor for TranscriptProtoRecoverableError(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_23C871754();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v15, v11, &qword_27E203B40, &qword_23C8A0D50);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
LABEL_6:
    sub_23C585C34(v15, &qword_27E203B48, &qword_23C8A0D58);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v24;
  sub_23C83155C(v19, v24, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  v21 = *(v25 + 48);
  sub_23C8314F4(v11, v5, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C8314F4(v20, &v5[v21], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  v22 = _s26AIMLInstrumentationStreams34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(v5, &v5[v21]);
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C8315C4(&v5[v21], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C8315C4(v5, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C8315C4(v11, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C585C34(v15, &qword_27E203B40, &qword_23C8A0D50);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoQueryStepResultsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_23C5D976C(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v15 = *(StepResults + 24);
  v16 = *(v11 + 48);
  v21 = StepResults;
  v22 = a1;
  sub_23C5855B0(a1 + v15, v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v15, &v13[v16], &qword_27E1FAAF8, &unk_23C8A1180);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_23C83155C(&v13[v16], v7, type metadata accessor for TranscriptProtoStatementID);
      v20 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_23C585C34(v13, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_8;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_11:
  if (v22[1] == a2[1] && v22[2] == a2[2] || (sub_23C872014() & 1) != 0)
  {
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v18 = sub_23C871754();
    return v18 & 1;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoPrefixExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_23C5855B0(&v15[v17], v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(&v16[v17], &v13[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_11:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_23C585C34(v13, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_8;
  }

  sub_23C83155C(&v13[v18], v7, type metadata accessor for TranscriptProtoStatementID);
  v22 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23C80BFEC(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v7 != v8)
    {
      v10 = a3;
      v11 = sub_23C872014();
      a3 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (a3(*a1, *a2))
  {
    a4(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoCancelExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      type metadata accessor for TranscriptProtoCancelExpression(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoUndoRedoRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_25;
  }

  v20 = *(a1 + 32);
  v21 = *(a2 + 32);
  if (v20)
  {
    if (!v21 || (*(a1 + 24) != *(a2 + 24) || v20 != v21) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v21)
  {
    goto LABEL_25;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_25;
  }

  v38 = v11;
  v39 = v7;
  v40 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v22 = *(v40 + 28);
  v23 = *(v14 + 48);
  sub_23C5855B0(a1 + v22, v19, &qword_27E1FAAF8, &unk_23C8A1180);
  v41 = v23;
  sub_23C5855B0(a2 + v22, &v19[v23], &qword_27E1FAAF8, &unk_23C8A1180);
  v24 = v5 + 48;
  v25 = *(v5 + 48);
  if (v25(v19, 1, v4) != 1)
  {
    sub_23C5855B0(v19, v13, &qword_27E1FAAF8, &unk_23C8A1180);
    v26 = v41;
    if (v25(&v19[v41], 1, v4) != 1)
    {
      v37 = v24;
      v28 = v39;
      sub_23C83155C(&v19[v26], v39, type metadata accessor for TranscriptProtoStatementID);
      LODWORD(v41) = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v13, v28);
      sub_23C8315C4(v28, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v41 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
LABEL_16:
    v27 = v19;
LABEL_24:
    sub_23C585C34(v27, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_25;
  }

  if (v25(&v19[v41], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  v37 = v24;
  sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_18:
  v29 = *(v40 + 32);
  v30 = *(v14 + 48);
  sub_23C5855B0(a1 + v29, v17, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v29, &v17[v30], &qword_27E1FAAF8, &unk_23C8A1180);
  if (v25(v17, 1, v4) == 1)
  {
    if (v25(&v17[v30], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_28:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_23;
  }

  v31 = v38;
  sub_23C5855B0(v17, v38, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v25(&v17[v30], 1, v4) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoStatementID);
LABEL_23:
    v27 = v17;
    goto LABEL_24;
  }

  v34 = v39;
  sub_23C83155C(&v17[v30], v39, type metadata accessor for TranscriptProtoStatementID);
  v35 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v31, v34);
  sub_23C8315C4(v34, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v35)
  {
    goto LABEL_28;
  }

LABEL_25:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoResponseParameterV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v5 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_23C5EDBA0(a1[2], a1[3]);
      sub_23C5EDBA0(v8, v7);
      sub_23C5AD0AC(v6, v5);
      goto LABEL_13;
    }

LABEL_10:
    sub_23C5EDBA0(a1[2], a1[3]);
    sub_23C5EDBA0(v8, v7);
    sub_23C5AD0AC(v6, v5);
    sub_23C5AD0AC(v8, v7);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_23C5EDBA0(a1[2], a1[3]);
  sub_23C5EDBA0(v8, v7);
  v10 = sub_23C6F73FC(v6, v5, v8, v7);
  sub_23C5AD0AC(v8, v7);
  sub_23C5AD0AC(v6, v5);
  if (!v10)
  {
    return 0;
  }

LABEL_13:
  v11 = a1[5];
  v12 = *(a2 + 40);
  if (v11)
  {
    if (!v12 || (a1[4] != *(a2 + 32) || v11 != v12) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = a1[8];
  v16 = *(a2 + 64);
  if (v15)
  {
    if (!v16 || (a1[7] != *(a2 + 56) || v15 != v16) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 72);
  v18 = *(a2 + 72);
  if (v17 != 2)
  {
    if (v18 != 2 && ((v17 ^ v18) & 1) == 0)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v18 != 2)
  {
    return 0;
  }

LABEL_37:
  type metadata accessor for TranscriptProtoResponseParameter(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoUIType(0);
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039F0, &qword_23C8A0C38);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v74 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039F8, &qword_23C8A0C40);
  MEMORY[0x28223BE20](v79);
  v10 = &v74 - v9;
  v11 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v82 = (&v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A00, &unk_23C8A12E0);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = (&v74 - v14);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A08, &qword_23C8A0C48);
  MEMORY[0x28223BE20](v84);
  v87 = &v74 - v15;
  v16 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A10, &qword_23C8A0C50);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v74 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A18, &qword_23C8A0C58);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  if ((sub_23C5D9718(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v74 = v6;
  v75 = v10;
  v26 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v27 = *(v26 + 20);
  v28 = *(v23 + 48);
  v76 = v26;
  v77 = a1;
  sub_23C5855B0(a1 + v27, v25, &qword_27E203A10, &qword_23C8A0C50);
  v29 = a2 + v27;
  v30 = a2;
  sub_23C5855B0(v29, &v25[v28], &qword_27E203A10, &qword_23C8A0C50);
  v31 = *(v17 + 48);
  if (v31(v25, 1, v16) == 1)
  {
    if (v31(&v25[v28], 1, v16) == 1)
    {
      sub_23C585C34(v25, &qword_27E203A10, &qword_23C8A0C50);
      goto LABEL_9;
    }

LABEL_7:
    v32 = &qword_27E203A18;
    v33 = &qword_23C8A0C58;
    v34 = v25;
LABEL_15:
    sub_23C585C34(v34, v32, v33);
    goto LABEL_16;
  }

  sub_23C5855B0(v25, v22, &qword_27E203A10, &qword_23C8A0C50);
  if (v31(&v25[v28], 1, v16) == 1)
  {
    sub_23C8315C4(v22, type metadata accessor for TranscriptProtoResponseDialog);
    goto LABEL_7;
  }

  sub_23C83155C(&v25[v28], v19, type metadata accessor for TranscriptProtoResponseDialog);
  v35 = _s26AIMLInstrumentationStreams29TranscriptProtoResponseDialogV2eeoiySbAC_ACtFZ_0(v22, v19);
  sub_23C8315C4(v19, type metadata accessor for TranscriptProtoResponseDialog);
  sub_23C8315C4(v22, type metadata accessor for TranscriptProtoResponseDialog);
  sub_23C585C34(v25, &qword_27E203A10, &qword_23C8A0C50);
  if ((v35 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v37 = v76;
  v36 = v77;
  v38 = v76[6];
  v39 = *(v84 + 48);
  v40 = v87;
  sub_23C5855B0(v77 + v38, v87, &qword_27E203A00, &unk_23C8A12E0);
  sub_23C5855B0(v30 + v38, v40 + v39, &qword_27E203A00, &unk_23C8A12E0);
  v41 = v86;
  v42 = *(v85 + 48);
  if (v42(v40, 1, v86) != 1)
  {
    v43 = v83;
    sub_23C5855B0(v40, v83, &qword_27E203A00, &unk_23C8A12E0);
    if (v42(v40 + v39, 1, v41) != 1)
    {
      v46 = v40 + v39;
      v47 = v82;
      sub_23C83155C(v46, v82, type metadata accessor for TranscriptProtoResponseVisual);
      v48 = _s26AIMLInstrumentationStreams29TranscriptProtoResponseVisualV2eeoiySbAC_ACtFZ_0(v43, v47);
      sub_23C8315C4(v47, type metadata accessor for TranscriptProtoResponseVisual);
      sub_23C8315C4(v43, type metadata accessor for TranscriptProtoResponseVisual);
      sub_23C585C34(v40, &qword_27E203A00, &unk_23C8A12E0);
      if ((v48 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_23C8315C4(v43, type metadata accessor for TranscriptProtoResponseVisual);
    goto LABEL_14;
  }

  if (v42(v40 + v39, 1, v41) != 1)
  {
LABEL_14:
    v32 = &qword_27E203A08;
    v33 = &qword_23C8A0C48;
    v34 = v40;
    goto LABEL_15;
  }

  sub_23C585C34(v40, &qword_27E203A00, &unk_23C8A12E0);
LABEL_19:
  v49 = v37[7];
  v50 = (v36 + v49);
  v51 = *(v36 + v49 + 8);
  v52 = (v30 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v53)
  {
    goto LABEL_16;
  }

  v54 = v37[8];
  v55 = (v36 + v54);
  v56 = *(v36 + v54 + 8);
  v57 = (v30 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58 || (*v55 != *v57 || v56 != v58) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v58)
  {
    goto LABEL_16;
  }

  v59 = v37[9];
  v60 = *(v36 + v59);
  v61 = *(v30 + v59);
  if (v60 == 2)
  {
    if (v61 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v61 == 2 || ((v60 ^ v61) & 1) != 0)
  {
    goto LABEL_16;
  }

  v62 = v37[10];
  v63 = *(v36 + v62);
  v64 = *(v30 + v62);
  if (v63 == 2)
  {
    if (v64 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v64 == 2 || ((v64 ^ v63) & 1) != 0)
  {
    goto LABEL_16;
  }

  v65 = v37[11];
  v66 = *(v79 + 48);
  v67 = v75;
  sub_23C5855B0(v36 + v65, v75, &qword_27E2039F0, &qword_23C8A0C38);
  sub_23C5855B0(v30 + v65, v67 + v66, &qword_27E2039F0, &qword_23C8A0C38);
  v68 = v81;
  v69 = *(v80 + 48);
  if (v69(v67, 1, v81) == 1)
  {
    if (v69(v67 + v66, 1, v68) == 1)
    {
      sub_23C585C34(v67, &qword_27E2039F0, &qword_23C8A0C38);
LABEL_50:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v44 = sub_23C871754();
      return v44 & 1;
    }

    goto LABEL_48;
  }

  v70 = v78;
  sub_23C5855B0(v67, v78, &qword_27E2039F0, &qword_23C8A0C38);
  if (v69(v67 + v66, 1, v68) == 1)
  {
    sub_23C8315C4(v70, type metadata accessor for TranscriptProtoUIType);
LABEL_48:
    v32 = &qword_27E2039F8;
    v33 = &qword_23C8A0C40;
    v34 = v67;
    goto LABEL_15;
  }

  v71 = v67 + v66;
  v72 = v74;
  sub_23C83155C(v71, v74, type metadata accessor for TranscriptProtoUIType);
  v73 = _s26AIMLInstrumentationStreams21TranscriptProtoUITypeV2eeoiySbAC_ACtFZ_0(v70, v72);
  sub_23C8315C4(v72, type metadata accessor for TranscriptProtoUIType);
  sub_23C8315C4(v70, type metadata accessor for TranscriptProtoUIType);
  sub_23C585C34(v67, &qword_27E2039F0, &qword_23C8A0C38);
  if (v73)
  {
    goto LABEL_50;
  }

LABEL_16:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s26AIMLInstrumentationStreams37TranscriptProtoStatementResultPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB08, &unk_23C8A11D0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB10, &qword_23C87B918);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB20, &qword_23C87B920);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FBB18, &unk_23C87B950);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FBB18, &unk_23C87B950);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FBB18, &unk_23C87B950);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C83155C(&v19[v20], v12, type metadata accessor for TranscriptProtoStatementOutcome);
      v25 = _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_23C585C34(v19, &qword_27E1FBB18, &unk_23C87B950);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_6:
    v22 = &qword_27E1FBB20;
    v23 = &qword_23C87B920;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FBB18, &unk_23C87B950);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoStatementResultPayload(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FBB08, &unk_23C8A11D0);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FBB08, &unk_23C8A11D0);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FBB08, &unk_23C8A11D0);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FBB08, &unk_23C8A11D0);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_13:
    v22 = &qword_27E1FBB10;
    v23 = &qword_23C87B918;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C83155C(v34, v37, type metadata accessor for TranscriptProtoResponseManifest);
  v36 = _s26AIMLInstrumentationStreams31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_23C8315C4(v35, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C585C34(v28, &qword_27E1FBB08, &unk_23C8A11D0);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = (&v83 - v8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  MEMORY[0x28223BE20](v88);
  v10 = &v83 - v9;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v98 = *(v11 - 8);
  v99 = v11;
  MEMORY[0x28223BE20](v11);
  v95 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v91 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v83 - v17;
  MEMORY[0x28223BE20](v16);
  v96 = &v83 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v19 = MEMORY[0x28223BE20](v100);
  v92 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v94 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v97 = &v83 - v23;
  v24 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE8, &qword_23C8A0EC8);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v83 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF0, &qword_23C8A0ED0);
  MEMORY[0x28223BE20](v31);
  v33 = &v83 - v32;
  v34 = a1[1];
  v35 = a2[1];
  if (v34)
  {
    if (!v35 || (*a1 != *a2 || v34 != v35) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v35)
  {
    goto LABEL_34;
  }

  v83 = v6;
  v84 = v10;
  v36 = type metadata accessor for TranscriptProtoStatementResult(0);
  v37 = *(v36 + 20);
  v38 = *(v31 + 48);
  v85 = a1;
  v86 = v36;
  sub_23C5855B0(a1 + v37, v33, &qword_27E203CE8, &qword_23C8A0EC8);
  v39 = a2 + v37;
  v40 = a2;
  sub_23C5855B0(v39, &v33[v38], &qword_27E203CE8, &qword_23C8A0EC8);
  v41 = *(v25 + 48);
  if (v41(v33, 1, v24) == 1)
  {
    if (v41(&v33[v38], 1, v24) == 1)
    {
      sub_23C585C34(v33, &qword_27E203CE8, &qword_23C8A0EC8);
      goto LABEL_15;
    }

LABEL_13:
    v42 = &qword_27E203CF0;
    v43 = &qword_23C8A0ED0;
    v44 = v33;
LABEL_33:
    sub_23C585C34(v44, v42, v43);
    goto LABEL_34;
  }

  sub_23C5855B0(v33, v30, &qword_27E203CE8, &qword_23C8A0EC8);
  if (v41(&v33[v38], 1, v24) == 1)
  {
    sub_23C8315C4(v30, type metadata accessor for TranscriptProtoStatementResultPayload);
    goto LABEL_13;
  }

  sub_23C83155C(&v33[v38], v27, type metadata accessor for TranscriptProtoStatementResultPayload);
  v45 = _s26AIMLInstrumentationStreams37TranscriptProtoStatementResultPayloadV2eeoiySbAC_ACtFZ_0(v30, v27);
  sub_23C8315C4(v27, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_23C8315C4(v30, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_23C585C34(v33, &qword_27E203CE8, &qword_23C8A0EC8);
  if ((v45 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  v46 = v85;
  v47 = v86[6];
  v48 = *(v100 + 48);
  v49 = v97;
  sub_23C5855B0(v85 + v47, v97, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v40 + v47, v49 + v48, &qword_27E1FAAF8, &unk_23C8A1180);
  v50 = v99;
  v51 = v98[6];
  if (v51(v49, 1, v99) == 1)
  {
    if (v51(v49 + v48, 1, v50) == 1)
    {
      v98 = v40;
      sub_23C585C34(v49, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v52 = v96;
  sub_23C5855B0(v49, v96, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v51(v49 + v48, 1, v50) == 1)
  {
    sub_23C8315C4(v52, type metadata accessor for TranscriptProtoStatementID);
LABEL_20:
    v42 = &qword_27E1FAB00;
    v43 = &qword_23C878ED8;
    v44 = v49;
    goto LABEL_33;
  }

  v98 = v40;
  v53 = v49 + v48;
  v54 = v95;
  sub_23C83155C(v53, v95, type metadata accessor for TranscriptProtoStatementID);
  v55 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v52, v54);
  sub_23C8315C4(v54, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v52, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v49, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v55 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  v56 = v86;
  v57 = v86[7];
  v58 = *(v100 + 48);
  v59 = v94;
  sub_23C5855B0(v46 + v57, v94, &qword_27E1FAAF8, &unk_23C8A1180);
  v60 = v98;
  sub_23C5855B0(v98 + v57, v59 + v58, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v51(v59, 1, v50) == 1)
  {
    if (v51(v59 + v58, 1, v50) != 1)
    {
LABEL_32:
      v42 = &qword_27E1FAB00;
      v43 = &qword_23C878ED8;
      v44 = v59;
      goto LABEL_33;
    }

    sub_23C585C34(v59, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  else
  {
    v61 = v93;
    sub_23C5855B0(v59, v93, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v51(v59 + v58, 1, v50) == 1)
    {
LABEL_31:
      sub_23C8315C4(v61, type metadata accessor for TranscriptProtoStatementID);
      goto LABEL_32;
    }

    v62 = v59 + v58;
    v63 = v95;
    sub_23C83155C(v62, v95, type metadata accessor for TranscriptProtoStatementID);
    v64 = v59;
    v65 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v61, v63);
    sub_23C8315C4(v63, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8315C4(v61, type metadata accessor for TranscriptProtoStatementID);
    sub_23C585C34(v64, &qword_27E1FAAF8, &unk_23C8A1180);
    if ((v65 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v66 = v56[8];
  v67 = *(v100 + 48);
  v68 = v85;
  v59 = v92;
  sub_23C5855B0(v85 + v66, v92, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v60 + v66, v59 + v67, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v51(v59, 1, v50) != 1)
  {
    v61 = v91;
    sub_23C5855B0(v59, v91, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v51(v59 + v67, 1, v50) != 1)
    {
      v71 = v95;
      sub_23C83155C(v59 + v67, v95, type metadata accessor for TranscriptProtoStatementID);
      v72 = v59;
      v73 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v61, v71);
      sub_23C8315C4(v71, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v61, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v72, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v73 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if (v51(v59 + v67, 1, v50) != 1)
  {
    goto LABEL_32;
  }

  sub_23C585C34(v59, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_37:
  v74 = v86[9];
  v75 = *(v88 + 48);
  v76 = v84;
  sub_23C5855B0(v68 + v74, v84, &qword_27E2037A0, &qword_23C8A0A00);
  sub_23C5855B0(v60 + v74, v76 + v75, &qword_27E2037A0, &qword_23C8A0A00);
  v77 = v90;
  v78 = *(v89 + 48);
  if (v78(v76, 1, v90) == 1)
  {
    if (v78(v76 + v75, 1, v77) == 1)
    {
      sub_23C585C34(v76, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_44:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v69 = sub_23C871754();
      return v69 & 1;
    }

    goto LABEL_42;
  }

  v79 = v87;
  sub_23C5855B0(v76, v87, &qword_27E2037A0, &qword_23C8A0A00);
  if (v78(v76 + v75, 1, v77) == 1)
  {
    sub_23C8315C4(v79, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_42:
    v42 = &qword_27E2037A8;
    v43 = &qword_23C8A0A08;
    v44 = v76;
    goto LABEL_33;
  }

  v80 = v76 + v75;
  v81 = v83;
  sub_23C83155C(v80, v83, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v82 = sub_23C8193D0(v79, v81, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v81, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v79, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C585C34(v76, &qword_27E2037A0, &qword_23C8A0A00);
  if (v82)
  {
    goto LABEL_44;
  }

LABEL_34:
  v69 = 0;
  return v69 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoInfixExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v36 = v11;
  v37 = v7;
  v20 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v40 = a2;
  v21 = a1;
  v38 = v20;
  v39 = a1;
  v22 = *(v20 + 20);
  v23 = *(v14 + 48);
  sub_23C5855B0(&v21[v22], v19, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(&v40[v22], &v19[v23], &qword_27E1FAAF8, &unk_23C8A1180);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) != 1)
  {
    sub_23C5855B0(v19, v13, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v24(&v19[v23], 1, v4) != 1)
    {
      v26 = v37;
      sub_23C83155C(&v19[v23], v37, type metadata accessor for TranscriptProtoStatementID);
      v27 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v13, v26);
      sub_23C8315C4(v26, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    v25 = v19;
LABEL_15:
    sub_23C585C34(v25, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_16;
  }

  if (v24(&v19[v23], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v19, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
  v28 = *(v38 + 24);
  v29 = *(v14 + 48);
  sub_23C5855B0(&v39[v28], v17, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(&v40[v28], &v17[v29], &qword_27E1FAAF8, &unk_23C8A1180);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v29], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_19:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v31 = sub_23C871754();
      return v31 & 1;
    }

    goto LABEL_14;
  }

  v30 = v36;
  sub_23C5855B0(v17, v36, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v24(&v17[v29], 1, v4) == 1)
  {
    sub_23C8315C4(v30, type metadata accessor for TranscriptProtoStatementID);
LABEL_14:
    v25 = v17;
    goto LABEL_15;
  }

  v33 = v37;
  sub_23C83155C(&v17[v29], v37, type metadata accessor for TranscriptProtoStatementID);
  v34 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v30, v33);
  sub_23C8315C4(v33, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v30, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v34)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_23C80EEC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v35 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = MEMORY[0x28223BE20](v13);
  v36 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = *(v16 + 48);
  v37 = a1;
  sub_23C5855B0(a1, &v33 - v17, &qword_27E1FAAF8, &unk_23C8A1180);
  v38 = a2;
  sub_23C5855B0(a2, &v18[v19], &qword_27E1FAAF8, &unk_23C8A1180);
  v20 = *(v6 + 48);
  if (v20(v18, 1, v5) != 1)
  {
    sub_23C5855B0(v18, v12, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v20(&v18[v19], 1, v5) != 1)
    {
      v22 = &v18[v19];
      v23 = v34;
      sub_23C83155C(v22, v34, type metadata accessor for TranscriptProtoStatementID);
      v24 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v23);
      sub_23C8315C4(v23, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v18, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v21 = v18;
LABEL_14:
    sub_23C585C34(v21, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_15;
  }

  if (v20(&v18[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v18, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_8:
  v25 = *(v35(0) + 20);
  v26 = *(v13 + 48);
  v27 = v36;
  sub_23C5855B0(v37 + v25, v36, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v38 + v25, v27 + v26, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v20(v27, 1, v5) == 1)
  {
    if (v20((v27 + v26), 1, v5) == 1)
    {
      sub_23C585C34(v27, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v29 = sub_23C871754();
      return v29 & 1;
    }

    goto LABEL_13;
  }

  v28 = v33;
  sub_23C5855B0(v27, v33, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v20((v27 + v26), 1, v5) == 1)
  {
    sub_23C8315C4(v28, type metadata accessor for TranscriptProtoStatementID);
LABEL_13:
    v21 = v27;
    goto LABEL_14;
  }

  v31 = v34;
  sub_23C83155C(v27 + v26, v34, type metadata accessor for TranscriptProtoStatementID);
  v32 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v28, v31);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v28, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v27, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v32)
  {
    goto LABEL_18;
  }

LABEL_15:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoVariableSetterV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAB68, &unk_23C879140);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v13, v9, &qword_27E1FAB68, &unk_23C879140);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FAB70, &qword_23C878F28);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_23C83155C(&v13[v15], v23, type metadata accessor for ToolKitProtoTypedValue);
  v18 = static ToolKitProtoTypedValue.== infix(_:_:)(v9, v17);
  sub_23C8315C4(v17, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C7FD0C0(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_23C871754();
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoUndoExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      type metadata accessor for TranscriptProtoUndoExpression(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoToolResolutionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for TranscriptProtoStatementID(0);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v58 = &v53[-v8];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v9 = MEMORY[0x28223BE20](v60);
  v57 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v59 = &v53[-v11];
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACB0, &qword_23C879010);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v53[-v21];
  v23 = *(v20 + 56);
  v62 = a1;
  sub_23C5855B0(a1, &v53[-v21], &qword_27E1FACA8, &unk_23C87B940);
  v63 = a2;
  sub_23C5855B0(a2, &v22[v23], &qword_27E1FACA8, &unk_23C87B940);
  v24 = *(v13 + 48);
  if (v24(v22, 1, v12) == 1)
  {
    if (v24(&v22[v23], 1, v12) == 1)
    {
      sub_23C585C34(v22, &qword_27E1FACA8, &unk_23C87B940);
      goto LABEL_8;
    }

LABEL_6:
    v25 = &qword_27E1FACB0;
    v26 = &qword_23C879010;
    v27 = v22;
LABEL_21:
    sub_23C585C34(v27, v25, v26);
    goto LABEL_22;
  }

  sub_23C5855B0(v22, v18, &qword_27E1FACA8, &unk_23C87B940);
  if (v24(&v22[v23], 1, v12) == 1)
  {
    sub_23C8315C4(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    goto LABEL_6;
  }

  sub_23C83155C(&v22[v23], v15, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v28 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v18, v15);
  sub_23C8315C4(v15, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C8315C4(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C585C34(v22, &qword_27E1FACA8, &unk_23C87B940);
  if ((v28 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v29 = type metadata accessor for TranscriptProtoToolResolution(0);
  v30 = *(v29 + 20);
  v31 = v59;
  v32 = v60;
  v33 = *(v60 + 48);
  v34 = v62;
  sub_23C5855B0(v62 + v30, v59, &qword_27E1FAAF8, &unk_23C8A1180);
  v35 = v63;
  sub_23C5855B0(v63 + v30, &v31[v33], &qword_27E1FAAF8, &unk_23C8A1180);
  v36 = v64 + 48;
  v37 = *(v64 + 48);
  v38 = v61;
  if (v37(v31, 1, v61) == 1)
  {
    if (v37(&v31[v33], 1, v38) != 1)
    {
LABEL_20:
      v25 = &qword_27E1FAB00;
      v26 = &qword_23C878ED8;
      v27 = v31;
      goto LABEL_21;
    }

    v64 = v36;
    sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_14:
    v43 = *(v29 + 24);
    v44 = *(v32 + 48);
    v45 = v57;
    sub_23C5855B0(v34 + v43, v57, &qword_27E1FAAF8, &unk_23C8A1180);
    v46 = v35 + v43;
    v31 = v45;
    sub_23C5855B0(v46, &v45[v44], &qword_27E1FAAF8, &unk_23C8A1180);
    if (v37(v45, 1, v38) == 1)
    {
      if (v37(&v45[v44], 1, v38) == 1)
      {
        sub_23C585C34(v45, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = sub_23C871754();
        return v49 & 1;
      }

      goto LABEL_20;
    }

    v47 = v45;
    v48 = v55;
    sub_23C5855B0(v47, v55, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v37(&v31[v44], 1, v38) == 1)
    {
      v40 = v48;
      goto LABEL_19;
    }

    v51 = v56;
    sub_23C83155C(&v31[v44], v56, type metadata accessor for TranscriptProtoStatementID);
    v52 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v48, v51);
    sub_23C8315C4(v51, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoStatementID);
    sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v39 = v58;
  sub_23C5855B0(v31, v58, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v37(&v31[v33], 1, v38) == 1)
  {
    v40 = v39;
LABEL_19:
    sub_23C8315C4(v40, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v64 = v36;
  v41 = &v31[v33];
  v42 = v56;
  sub_23C83155C(v41, v56, type metadata accessor for TranscriptProtoStatementID);
  v54 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v39, v42);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v39, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v54)
  {
    goto LABEL_14;
  }

LABEL_22:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoActionConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D38, &unk_23C8A11B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D40, &qword_23C8A0F10);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if ((sub_23C7FC320(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_23C5855B0(v15 + v17, v13, &qword_27E203D38, &unk_23C8A11B0);
  sub_23C5855B0(v16 + v17, &v13[v18], &qword_27E203D38, &unk_23C8A11B0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E203D38, &unk_23C8A11B0);
LABEL_11:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v13, v10, &qword_27E203D38, &unk_23C8A11B0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
LABEL_7:
    sub_23C585C34(v13, &qword_27E203D40, &qword_23C8A0F10);
    goto LABEL_8;
  }

  sub_23C83155C(&v13[v18], v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  v22 = _s26AIMLInstrumentationStreams44TranscriptProtoActionConfirmationSystemStyleV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_23C585C34(v13, &qword_27E203D38, &unk_23C8A11B0);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B60, &qword_23C8A0D68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201770, &unk_23C8A1260);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201770, &unk_23C8A1260);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
LABEL_9:
      type metadata accessor for TranscriptProtoStatementOutcome(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201770, &unk_23C8A1260);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203B60, &qword_23C8A0D68);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  v18 = _s26AIMLInstrumentationStreams35TranscriptProtoStatementOutcomeEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams41TranscriptProtoInterpretedStatementResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v75 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v77 = &v75 - v10;
  MEMORY[0x28223BE20](v9);
  v80 = &v75 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v86);
  v76 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v79 = &v75 - v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v75 - v16;
  v17 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB20, &qword_23C87B920);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v75 - v26;
  v28 = *(v25 + 56);
  v85 = a1;
  sub_23C5855B0(a1, &v75 - v26, &qword_27E1FBB18, &unk_23C87B950);
  v84 = a2;
  sub_23C5855B0(a2, &v27[v28], &qword_27E1FBB18, &unk_23C87B950);
  v29 = *(v18 + 48);
  if (v29(v27, 1, v17) == 1)
  {
    if (v29(&v27[v28], 1, v17) == 1)
    {
      sub_23C585C34(v27, &qword_27E1FBB18, &unk_23C87B950);
      goto LABEL_9;
    }

LABEL_6:
    v30 = &qword_27E1FBB20;
    v31 = &qword_23C87B920;
LABEL_7:
    v32 = v27;
LABEL_15:
    sub_23C585C34(v32, v30, v31);
    goto LABEL_16;
  }

  sub_23C5855B0(v27, v23, &qword_27E1FBB18, &unk_23C87B950);
  if (v29(&v27[v28], 1, v17) == 1)
  {
    sub_23C8315C4(v23, type metadata accessor for TranscriptProtoStatementOutcome);
    goto LABEL_6;
  }

  sub_23C83155C(&v27[v28], v20, type metadata accessor for TranscriptProtoStatementOutcome);
  v33 = _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v23, v20);
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C8315C4(v23, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C585C34(v27, &qword_27E1FBB18, &unk_23C87B950);
  if ((v33 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v34 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v35 = *(v34 + 20);
  v36 = v85;
  v37 = *(v86 + 48);
  v38 = v81;
  sub_23C5855B0(v85 + v35, v81, &qword_27E1FAAF8, &unk_23C8A1180);
  v39 = v84;
  sub_23C5855B0(v84 + v35, v38 + v37, &qword_27E1FAAF8, &unk_23C8A1180);
  v40 = v83;
  v41 = *(v82 + 6);
  if (v41(v38, 1, v83) == 1)
  {
    if (v41((v38 + v37), 1, v40) == 1)
    {
      v82 = v41;
      sub_23C585C34(v38, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_19;
    }

LABEL_14:
    v30 = &qword_27E1FAB00;
    v31 = &qword_23C878ED8;
    v32 = v38;
    goto LABEL_15;
  }

  v42 = v80;
  sub_23C5855B0(v38, v80, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v41((v38 + v37), 1, v40) == 1)
  {
    sub_23C8315C4(v42, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_14;
  }

  v82 = v41;
  v45 = v38 + v37;
  v46 = v78;
  sub_23C83155C(v45, v78, type metadata accessor for TranscriptProtoStatementID);
  v47 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v42, v46);
  sub_23C8315C4(v46, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v38, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v47 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v81 = v34;
  v48 = *(v34 + 24);
  v49 = *(v86 + 48);
  v27 = v79;
  sub_23C5855B0(v36 + v48, v79, &qword_27E1FAAF8, &unk_23C8A1180);
  v50 = v39;
  sub_23C5855B0(v39 + v48, &v27[v49], &qword_27E1FAAF8, &unk_23C8A1180);
  v51 = v82;
  if (v82(v27, 1, v40) != 1)
  {
    v52 = v77;
    sub_23C5855B0(v27, v77, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v51(&v27[v49], 1, v40) != 1)
    {
      v53 = &v27[v49];
      v54 = v78;
      sub_23C83155C(v53, v78, type metadata accessor for TranscriptProtoStatementID);
      v55 = v27;
      v56 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v52, v54);
      sub_23C8315C4(v54, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v52, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v55, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v56 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    sub_23C8315C4(v52, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_24;
  }

  if (v51(&v27[v49], 1, v40) != 1)
  {
LABEL_24:
    v30 = &qword_27E1FAB00;
    v31 = &qword_23C878ED8;
    goto LABEL_7;
  }

  sub_23C585C34(v27, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_26:
  v57 = v81;
  v58 = *(v81 + 28);
  v59 = v85;
  v60 = (v85 + v58);
  v61 = *(v85 + v58 + 8);
  v62 = (v39 + v58);
  v63 = v62[1];
  if (v61)
  {
    if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v63)
  {
    goto LABEL_16;
  }

  v64 = *(v57 + 32);
  v65 = (v59 + v64);
  v66 = *(v59 + v64 + 8);
  v67 = (v39 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v68)
  {
    goto LABEL_16;
  }

  v69 = *(v57 + 36);
  v70 = *(v86 + 48);
  v71 = v76;
  sub_23C5855B0(v59 + v69, v76, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v50 + v69, v71 + v70, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v51(v71, 1, v40) == 1)
  {
    if (v51((v71 + v70), 1, v40) == 1)
    {
      sub_23C585C34(v71, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_47:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = sub_23C871754();
      return v43 & 1;
    }

    goto LABEL_45;
  }

  v72 = v75;
  sub_23C5855B0(v71, v75, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v51((v71 + v70), 1, v40) == 1)
  {
    sub_23C8315C4(v72, type metadata accessor for TranscriptProtoStatementID);
LABEL_45:
    v30 = &qword_27E1FAB00;
    v31 = &qword_23C878ED8;
    v32 = v71;
    goto LABEL_15;
  }

  v73 = v78;
  sub_23C83155C(v71 + v70, v78, type metadata accessor for TranscriptProtoStatementID);
  v74 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v72, v73);
  sub_23C8315C4(v73, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v72, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v71, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v74)
  {
    goto LABEL_47;
  }

LABEL_16:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoSystemResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203768, &unk_23C8A1390);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203770, &qword_23C8A09D8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v29 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v30 = a1;
  v14 = *(v29 + 20);
  v15 = *(v11 + 56);
  sub_23C5855B0(a1 + v14, v13, &qword_27E203768, &unk_23C8A1390);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E203768, &unk_23C8A1390);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v9, &qword_27E203768, &unk_23C8A1390);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v28;
      sub_23C83155C(&v13[v15], v28, type metadata accessor for TranscriptProtoResponseOutput);
      v20 = _s26AIMLInstrumentationStreams29TranscriptProtoResponseOutputV2eeoiySbAC_ACtFZ_0(v9, v19);
      sub_23C8315C4(v19, type metadata accessor for TranscriptProtoResponseOutput);
      sub_23C8315C4(v9, type metadata accessor for TranscriptProtoResponseOutput);
      sub_23C585C34(v13, &qword_27E203768, &unk_23C8A1390);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_23C8315C4(v9, type metadata accessor for TranscriptProtoResponseOutput);
LABEL_6:
    sub_23C585C34(v13, &qword_27E203770, &qword_23C8A09D8);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v13, &qword_27E203768, &unk_23C8A1390);
LABEL_10:
  v21 = v30;
  v22 = *(v29 + 24);
  v23 = (v30 + v22);
  v24 = *(v30 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  if (sub_23C5DA960(*v21, *a2))
  {
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_23C871754();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoResponseVisualV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039E0, &unk_23C8A12F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039E8, &qword_23C8A0C30);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if ((sub_23C5DAEE0(*a1, *a2) & 1) == 0 || (sub_23C5DB40C(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v14 = *(v24 + 24);
  v15 = a1;
  v16 = *(v11 + 48);
  v23[1] = v15;
  sub_23C5855B0(v15 + v14, v13, &qword_27E2039E0, &unk_23C8A12F0);
  v23[2] = a2;
  sub_23C5855B0(a2 + v14, &v13[v16], &qword_27E2039E0, &unk_23C8A12F0);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E2039E0, &unk_23C8A12F0);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_23C83155C(&v13[v16], v7, type metadata accessor for TranscriptProtoResponseVisualOptions);
      if (*v10 == *v7)
      {
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_23C871754();
        sub_23C8315C4(v7, type metadata accessor for TranscriptProtoResponseVisualOptions);
        sub_23C8315C4(v10, type metadata accessor for TranscriptProtoResponseVisualOptions);
        sub_23C585C34(v13, &qword_27E2039E0, &unk_23C8A12F0);
        if (v22)
        {
          goto LABEL_6;
        }

LABEL_11:
        v18 = 0;
        return v18 & 1;
      }

      sub_23C8315C4(v7, type metadata accessor for TranscriptProtoResponseVisualOptions);
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoResponseVisualOptions);
      v19 = &qword_27E2039E0;
      v20 = &unk_23C8A12F0;
LABEL_10:
      sub_23C585C34(v13, v19, v20);
      goto LABEL_11;
    }

    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoResponseVisualOptions);
LABEL_9:
    v19 = &qword_27E2039E8;
    v20 = &qword_23C8A0C30;
    goto LABEL_10;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v13, &qword_27E2039E0, &unk_23C8A12F0);
LABEL_6:
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v18 = sub_23C871754();
  return v18 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoResponseOutputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A80, &unk_23C8A12C0);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = &v77 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A88, &qword_23C8A0CB8);
  MEMORY[0x28223BE20](v84);
  v10 = &v77 - v9;
  v11 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v83 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A90, &qword_23C8A0CC0);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = &v77 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A98, &qword_23C8A0CC8);
  MEMORY[0x28223BE20](v88);
  v91 = &v77 - v15;
  v16 = type metadata accessor for TranscriptProtoDialogType(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v93 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AA0, &unk_23C8A12B0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v92 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AA8, &qword_23C8A0CD0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v77 - v28;
  if ((sub_23C5DBBBC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v80 = v10;
  v78 = v6;
  v30 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v94 = a2;
  v79 = v30;
  v31 = *(v30 + 28);
  v32 = *(v24 + 48);
  v81 = a1;
  sub_23C5855B0(a1 + v31, v29, &qword_27E203AA0, &unk_23C8A12B0);
  sub_23C5855B0(v94 + v31, &v29[v32], &qword_27E203AA0, &unk_23C8A12B0);
  v33 = *(v17 + 48);
  if (v33(v29, 1, v16) == 1)
  {
    if (v33(&v29[v32], 1, v16) == 1)
    {
      sub_23C585C34(v29, &qword_27E203AA0, &unk_23C8A12B0);
      goto LABEL_9;
    }

LABEL_7:
    v34 = &qword_27E203AA8;
    v35 = &qword_23C8A0CD0;
    v36 = v29;
LABEL_15:
    sub_23C585C34(v36, v34, v35);
    goto LABEL_16;
  }

  sub_23C5855B0(v29, v23, &qword_27E203AA0, &unk_23C8A12B0);
  if (v33(&v29[v32], 1, v16) == 1)
  {
    sub_23C8315C4(v23, type metadata accessor for TranscriptProtoDialogType);
    goto LABEL_7;
  }

  v37 = &v29[v32];
  v38 = v93;
  sub_23C83155C(v37, v93, type metadata accessor for TranscriptProtoDialogType);
  v39 = _s26AIMLInstrumentationStreams25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(v23, v38);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoDialogType);
  sub_23C8315C4(v23, type metadata accessor for TranscriptProtoDialogType);
  sub_23C585C34(v29, &qword_27E203AA0, &unk_23C8A12B0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v40 = v79;
  v41 = v79[8];
  v42 = *(v24 + 48);
  v43 = v81;
  sub_23C5855B0(v81 + v41, v27, &qword_27E203AA0, &unk_23C8A12B0);
  v44 = v94 + v41;
  v45 = v94;
  sub_23C5855B0(v44, &v27[v42], &qword_27E203AA0, &unk_23C8A12B0);
  if (v33(v27, 1, v16) == 1)
  {
    v46 = v33(&v27[v42], 1, v16);
    v47 = v80;
    if (v46 == 1)
    {
      sub_23C585C34(v27, &qword_27E203AA0, &unk_23C8A12B0);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v48 = v92;
  sub_23C5855B0(v27, v92, &qword_27E203AA0, &unk_23C8A12B0);
  v49 = v33(&v27[v42], 1, v16);
  v47 = v80;
  if (v49 == 1)
  {
    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoDialogType);
LABEL_14:
    v34 = &qword_27E203AA8;
    v35 = &qword_23C8A0CD0;
    v36 = v27;
    goto LABEL_15;
  }

  v52 = &v27[v42];
  v53 = v93;
  sub_23C83155C(v52, v93, type metadata accessor for TranscriptProtoDialogType);
  v54 = _s26AIMLInstrumentationStreams25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(v48, v53);
  sub_23C8315C4(v53, type metadata accessor for TranscriptProtoDialogType);
  sub_23C8315C4(v48, type metadata accessor for TranscriptProtoDialogType);
  sub_23C585C34(v27, &qword_27E203AA0, &unk_23C8A12B0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*(v43 + 8) != *(v45 + 8) || (sub_23C5D9488(v43[2], v45[2]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v55 = v40[9];
  v56 = *(v88 + 48);
  v57 = v91;
  sub_23C5855B0(v43 + v55, v91, &qword_27E203A90, &qword_23C8A0CC0);
  sub_23C5855B0(v45 + v55, v57 + v56, &qword_27E203A90, &qword_23C8A0CC0);
  v58 = v90;
  v59 = *(v89 + 48);
  if (v59(v57, 1, v90) == 1)
  {
    if (v59(v57 + v56, 1, v58) == 1)
    {
      sub_23C585C34(v57, &qword_27E203A90, &qword_23C8A0CC0);
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v64 = v87;
  sub_23C5855B0(v57, v87, &qword_27E203A90, &qword_23C8A0CC0);
  if (v59(v57 + v56, 1, v58) == 1)
  {
    sub_23C8315C4(v64, type metadata accessor for TranscriptProtoVisualOutputOptions);
LABEL_29:
    v34 = &qword_27E203A98;
    v35 = &qword_23C8A0CC8;
LABEL_30:
    v36 = v57;
    goto LABEL_15;
  }

  v65 = v57 + v56;
  v66 = v83;
  sub_23C83155C(v65, v83, type metadata accessor for TranscriptProtoVisualOutputOptions);
  if (*v64 != *v66)
  {
    sub_23C8315C4(v66, type metadata accessor for TranscriptProtoVisualOutputOptions);
    sub_23C8315C4(v64, type metadata accessor for TranscriptProtoVisualOutputOptions);
    v34 = &qword_27E203A90;
    v35 = &qword_23C8A0CC0;
    goto LABEL_30;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v68 = sub_23C871754();
  sub_23C8315C4(v66, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_23C8315C4(v64, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_23C585C34(v57, &qword_27E203A90, &qword_23C8A0CC0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  v60 = v40[10];
  v61 = *(v84 + 48);
  sub_23C5855B0(v43 + v60, v47, &qword_27E203A80, &unk_23C8A12C0);
  sub_23C5855B0(v45 + v60, v47 + v61, &qword_27E203A80, &unk_23C8A12C0);
  v62 = v86;
  v63 = *(v85 + 48);
  if (v63(v47, 1, v86) != 1)
  {
    v67 = v82;
    sub_23C5855B0(v47, v82, &qword_27E203A80, &unk_23C8A12C0);
    if (v63(v47 + v61, 1, v62) != 1)
    {
      v69 = v47 + v61;
      v70 = v78;
      sub_23C83155C(v69, v78, type metadata accessor for TranscriptProtoVisualOutput);
      v71 = _s26AIMLInstrumentationStreams27TranscriptProtoVisualOutputV2eeoiySbAC_ACtFZ_0(v67, v70);
      sub_23C8315C4(v70, type metadata accessor for TranscriptProtoVisualOutput);
      sub_23C8315C4(v67, type metadata accessor for TranscriptProtoVisualOutput);
      sub_23C585C34(v47, &qword_27E203A80, &unk_23C8A12C0);
      if ((v71 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

    sub_23C8315C4(v67, type metadata accessor for TranscriptProtoVisualOutput);
    goto LABEL_35;
  }

  if (v63(v47 + v61, 1, v62) != 1)
  {
LABEL_35:
    v34 = &qword_27E203A88;
    v35 = &qword_23C8A0CB8;
    v36 = v47;
    goto LABEL_15;
  }

  sub_23C585C34(v47, &qword_27E203A80, &unk_23C8A12C0);
LABEL_39:
  v72 = v40[11];
  v73 = (v43 + v72);
  v74 = *(v43 + v72 + 8);
  v75 = (v45 + v72);
  v76 = v75[1];
  if (v74)
  {
    if (v76 && (*v73 == *v75 && v74 == v76 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_46;
    }
  }

  else if (!v76)
  {
LABEL_46:
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v50 = sub_23C871754();
    return v50 & 1;
  }

LABEL_16:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoResponseDialogV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  if (v10)
  {
    if (v11 && (a1[6] == a2[6] && v10 == v11 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_27;
    }
  }

  else if (!v11)
  {
LABEL_27:
    type metadata accessor for TranscriptProtoResponseDialog(0);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoPickExpressionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for TranscriptProtoPickExpression(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v13, v9, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v9, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FAB00, &qword_23C878ED8);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_23C83155C(&v13[v15], v23, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v9, v17);
  sub_23C8315C4(v17, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v9, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *a2)
  {
    goto LABEL_10;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_23C871754();
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
LABEL_3:
      type metadata accessor for TranscriptProtoPromptSelection(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_23C871754() & 1;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    v3 = *a1;
    v4 = *a2;
    if (a1[1])
    {
      if (v3)
      {
        if ((a2[1] & 1) != 0 && v4)
        {
          goto LABEL_3;
        }
      }

      else if ((a2[1] & 1) != 0 && !v4)
      {
        goto LABEL_3;
      }
    }

    else if ((a2[1] & 1) == 0 && v3 == v4)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D00, &qword_23C8A0EE0);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v37 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FAB68, &unk_23C879140);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAB68, &unk_23C879140);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FAB68, &unk_23C879140);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C83155C(&v19[v20], v12, type metadata accessor for ToolKitProtoTypedValue);
      v25 = static ToolKitProtoTypedValue.== infix(_:_:)(v15, v12);
      sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C8315C4(v15, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C585C34(v19, &qword_27E1FAB68, &unk_23C879140);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v15, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    v22 = &qword_27E1FAB70;
    v23 = &qword_23C878F28;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FAB68, &unk_23C879140);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E203CF8, &qword_23C8A0ED8);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E203CF8, &qword_23C8A0ED8);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E203CF8, &qword_23C8A0ED8);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E203CF8, &qword_23C8A0ED8);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoPromptSelection);
LABEL_13:
    v22 = &qword_27E203D00;
    v23 = &qword_23C8A0EE0;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C83155C(v34, v37, type metadata accessor for TranscriptProtoPromptSelection);
  v36 = _s26AIMLInstrumentationStreams30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_23C8315C4(v35, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C585C34(v28, &qword_27E203CF8, &qword_23C8A0ED8);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoOpenExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      type metadata accessor for TranscriptProtoOpenExpression(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoFollowUpActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BE0, &unk_23C8A1250);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BE8, &qword_23C8A0DE8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E203BE0, &unk_23C8A1250);
  sub_23C5855B0(a2, &v14[v15], &qword_27E203BE0, &unk_23C8A1250);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E203BE0, &unk_23C8A1250);
LABEL_9:
      type metadata accessor for TranscriptProtoFollowUpAction(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E203BE0, &unk_23C8A1250);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203BE8, &qword_23C8A0DE8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  v18 = _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableG0V2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_23C585C34(v14, &qword_27E203BE0, &unk_23C8A1250);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoCallExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if ((sub_23C7FB534(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for TranscriptProtoCallExpression(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_23C5855B0(v15 + v17, v13, &qword_27E2037A0, &qword_23C8A0A00);
  sub_23C5855B0(v16 + v17, &v13[v18], &qword_27E2037A0, &qword_23C8A0A00);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_11:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v13, v10, &qword_27E2037A0, &qword_23C8A0A00);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_7:
    sub_23C585C34(v13, &qword_27E2037A8, &qword_23C8A0A08);
    goto LABEL_8;
  }

  sub_23C83155C(&v13[v18], v7, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v22 = sub_23C8193D0(v10, v7, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C585C34(v13, &qword_27E2037A0, &qword_23C8A0A00);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoAppRequirementV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoAppRequirement(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoSpeechPackageV5TokenV2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || *(a1 + 2) != *(a2 + 16) || a1[3] != *(a2 + 24) || a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoSnippetStreamV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAB68, &unk_23C879140);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAB68, &unk_23C879140);
LABEL_9:
      type metadata accessor for TranscriptProtoSnippetStream(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAB68, &unk_23C879140);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB70, &qword_23C878F28);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for ToolKitProtoTypedValue);
  v18 = static ToolKitProtoTypedValue.== infix(_:_:)(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v14, &qword_27E1FAB68, &unk_23C879140);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoSkipStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      type metadata accessor for TranscriptProtoSkipStatement(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v14, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoShimParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC08, &qword_23C878FA0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAC00, &qword_23C878F98);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAC00, &qword_23C878F98);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAC00, &qword_23C878F98);
LABEL_9:
      type metadata accessor for TranscriptProtoShimParameter(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAC00, &qword_23C878F98);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoShimParameterEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAC08, &qword_23C878FA0);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  v18 = static TranscriptProtoShimParameterEnum.== infix(_:_:)(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_23C585C34(v14, &qword_27E1FAC00, &qword_23C878F98);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoExecutorErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016A0, &qword_23C88DBD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C80, &qword_23C8A0E70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E2016A0, &qword_23C88DBD0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E2016A0, &qword_23C88DBD0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E2016A0, &qword_23C88DBD0);
LABEL_9:
      type metadata accessor for TranscriptProtoExecutorError(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E2016A0, &qword_23C88DBD0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExecutorErrorEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203C80, &qword_23C8A0E70);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  v18 = _s26AIMLInstrumentationStreams32TranscriptProtoExecutorErrorEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_23C585C34(v14, &qword_27E2016A0, &qword_23C88DBD0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoDeviceDetailsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203748, &unk_23C8A13A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203750, &qword_23C8A09C0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = v7;
  v25 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v14 = *(v25 + 20);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E203748, &unk_23C8A13A0);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E203748, &unk_23C8A13A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E203748, &unk_23C8A13A0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = &v13[v15];
      v22 = v24;
      sub_23C83155C(v21, v24, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      if (*v10 == *v22)
      {
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v23 = sub_23C871754();
        sub_23C8315C4(v22, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
        sub_23C8315C4(v10, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
        sub_23C585C34(v13, &qword_27E203748, &unk_23C8A13A0);
        if (v23)
        {
          goto LABEL_6;
        }

LABEL_11:
        v17 = 0;
        return v17 & 1;
      }

      sub_23C8315C4(v22, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      sub_23C8315C4(v10, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      v18 = &qword_27E203748;
      v19 = &unk_23C8A13A0;
LABEL_10:
      sub_23C585C34(v13, v18, v19);
      goto LABEL_11;
    }

    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
LABEL_9:
    v18 = &qword_27E203750;
    v19 = &qword_23C8A09C0;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v13, &qword_27E203748, &unk_23C8A13A0);
LABEL_6:
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_23C871754();
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoActionSuccessV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v95 = a2;
  v96 = a1;
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  v77 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v76 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v79);
  v82 = &v76 - v6;
  v7 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BF0, &qword_23C8A0DF0);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v76 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BF8, &qword_23C8A0DF8);
  MEMORY[0x28223BE20](v85);
  v88 = &v76 - v11;
  v12 = type metadata accessor for TranscriptProtoUndoContext(0);
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12);
  v89 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C00, &unk_23C8A1240);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = (&v76 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C08, &qword_23C8A0E00);
  MEMORY[0x28223BE20](v16);
  v93 = &v76 - v17;
  v18 = type metadata accessor for ToolKitProtoTypedValue(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = (&v76 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  v94 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v29 = *(v94 + 24);
  v30 = *(v26 + 56);
  sub_23C5855B0(&v96[v29], v28, &qword_27E1FAB68, &unk_23C879140);
  v31 = &v95[v29];
  v32 = v95;
  sub_23C5855B0(v31, &v28[v30], &qword_27E1FAB68, &unk_23C879140);
  v33 = *(v19 + 48);
  if (v33(v28, 1, v18) == 1)
  {
    if (v33(&v28[v30], 1, v18) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &qword_27E1FAB70;
    v35 = &qword_23C878F28;
LABEL_30:
    v53 = v28;
LABEL_31:
    sub_23C585C34(v53, v34, v35);
    goto LABEL_32;
  }

  sub_23C5855B0(v28, v24, &qword_27E1FAB68, &unk_23C879140);
  if (v33(&v28[v30], 1, v18) == 1)
  {
    sub_23C8315C4(v24, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_23C83155C(&v28[v30], v21, type metadata accessor for ToolKitProtoTypedValue);
  v36 = static ToolKitProtoTypedValue.== infix(_:_:)(v24, v21);
  sub_23C8315C4(v21, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v24, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  if ((v36 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_8:
  v28 = v93;
  v37 = v94;
  v38 = *(v94 + 28);
  v39 = *(v16 + 48);
  v40 = v96;
  sub_23C5855B0(&v96[v38], v93, &qword_27E203C00, &unk_23C8A1240);
  sub_23C5855B0(&v32[v38], &v28[v39], &qword_27E203C00, &unk_23C8A1240);
  v41 = v92;
  v42 = *(v91 + 48);
  if (v42(v28, 1, v92) == 1)
  {
    if (v42(&v28[v39], 1, v41) == 1)
    {
      sub_23C585C34(v28, &qword_27E203C00, &unk_23C8A1240);
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v50 = v90;
  sub_23C5855B0(v28, v90, &qword_27E203C00, &unk_23C8A1240);
  if (v42(&v28[v39], 1, v41) == 1)
  {
    sub_23C8315C4(v50, type metadata accessor for TranscriptProtoUndoContext);
LABEL_17:
    v34 = &qword_27E203C08;
    v35 = &qword_23C8A0E00;
    goto LABEL_30;
  }

  v51 = v89;
  sub_23C83155C(&v28[v39], v89, type metadata accessor for TranscriptProtoUndoContext);
  if ((*v50 != *v51 || v50[1] != v51[1]) && (sub_23C872014() & 1) == 0 || (v50[2] != v51[2] || v50[3] != v51[3]) && (sub_23C872014() & 1) == 0 || (v50[4] != v51[4] || v50[5] != v51[5]) && (sub_23C872014() & 1) == 0)
  {
    sub_23C8315C4(v51, type metadata accessor for TranscriptProtoUndoContext);
    sub_23C8315C4(v50, type metadata accessor for TranscriptProtoUndoContext);
    v34 = &qword_27E203C00;
    v35 = &unk_23C8A1240;
    goto LABEL_30;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v52 = sub_23C871754();
  sub_23C8315C4(v51, type metadata accessor for TranscriptProtoUndoContext);
  sub_23C8315C4(v50, type metadata accessor for TranscriptProtoUndoContext);
  sub_23C585C34(v28, &qword_27E203C00, &unk_23C8A1240);
  if ((v52 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if (*v40 != *v32)
  {
    goto LABEL_32;
  }

  v43 = v37[8];
  v44 = *(v85 + 48);
  v45 = v88;
  sub_23C5855B0(&v40[v43], v88, &qword_27E203BF0, &qword_23C8A0DF0);
  v46 = &v32[v43];
  v47 = v45;
  sub_23C5855B0(v46, v45 + v44, &qword_27E203BF0, &qword_23C8A0DF0);
  v48 = v87;
  v49 = *(v86 + 48);
  if (v49(v45, 1, v87) != 1)
  {
    v56 = v84;
    sub_23C5855B0(v47, v84, &qword_27E203BF0, &qword_23C8A0DF0);
    if (v49(v47 + v44, 1, v48) != 1)
    {
      v57 = v47 + v44;
      v58 = v83;
      sub_23C83155C(v57, v83, type metadata accessor for TranscriptProtoFollowUpAction);
      v59 = _s26AIMLInstrumentationStreams29TranscriptProtoFollowUpActionV2eeoiySbAC_ACtFZ_0(v56, v58);
      sub_23C8315C4(v58, type metadata accessor for TranscriptProtoFollowUpAction);
      sub_23C8315C4(v56, type metadata accessor for TranscriptProtoFollowUpAction);
      sub_23C585C34(v47, &qword_27E203BF0, &qword_23C8A0DF0);
      if ((v59 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    sub_23C8315C4(v56, type metadata accessor for TranscriptProtoFollowUpAction);
    goto LABEL_36;
  }

  if (v49(v45 + v44, 1, v48) != 1)
  {
LABEL_36:
    v34 = &qword_27E203BF8;
    v35 = &qword_23C8A0DF8;
    v53 = v47;
    goto LABEL_31;
  }

  sub_23C585C34(v45, &qword_27E203BF0, &qword_23C8A0DF0);
LABEL_38:
  if (v40[1] != v32[1])
  {
    goto LABEL_32;
  }

  v60 = v37[9];
  v61 = &v40[v60];
  v62 = *&v40[v60 + 8];
  v63 = &v32[v60];
  v64 = *(v63 + 1);
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v64)
  {
    goto LABEL_32;
  }

  v65 = v37[10];
  v66 = *(v79 + 48);
  v67 = v82;
  sub_23C5855B0(&v40[v65], v82, &qword_27E1FAAF8, &unk_23C8A1180);
  v68 = &v32[v65];
  v69 = v67;
  sub_23C5855B0(v68, v67 + v66, &qword_27E1FAAF8, &unk_23C8A1180);
  v70 = v81;
  v71 = *(v80 + 48);
  if (v71(v67, 1, v81) == 1)
  {
    if (v71(v67 + v66, 1, v70) == 1)
    {
      sub_23C585C34(v67, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_53:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v54 = sub_23C871754();
      return v54 & 1;
    }

    goto LABEL_51;
  }

  v72 = v78;
  sub_23C5855B0(v69, v78, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v71(v69 + v66, 1, v70) == 1)
  {
    sub_23C8315C4(v72, type metadata accessor for TranscriptProtoStatementID);
LABEL_51:
    v34 = &qword_27E1FAB00;
    v35 = &qword_23C878ED8;
    v53 = v69;
    goto LABEL_31;
  }

  v73 = v69 + v66;
  v74 = v77;
  sub_23C83155C(v73, v77, type metadata accessor for TranscriptProtoStatementID);
  v75 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v72, v74);
  sub_23C8315C4(v74, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v72, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v69, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v75)
  {
    goto LABEL_53;
  }

LABEL_32:
  v54 = 0;
  return v54 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoActionFailureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C20, &unk_23C8A1230);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C28, &qword_23C8A0E18);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E203C20, &unk_23C8A1230);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E203C20, &unk_23C8A1230);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E203C20, &unk_23C8A1230);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C83155C(&v19[v20], v12, type metadata accessor for TranscriptProtoActionFailureFailure);
      v25 = _s26AIMLInstrumentationStreams028TranscriptProtoActionFailureF0V2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_23C585C34(v19, &qword_27E203C20, &unk_23C8A1230);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoActionFailureFailure);
LABEL_6:
    v22 = &qword_27E203C28;
    v23 = &qword_23C8A0E18;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E203C20, &unk_23C8A1230);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FAAF8, &unk_23C8A1180);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_18:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoStatementID);
LABEL_13:
    v22 = &qword_27E1FAB00;
    v23 = &qword_23C878ED8;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C83155C(v34, v37, type metadata accessor for TranscriptProtoStatementID);
  v36 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_23C8315C4(v35, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoVisualOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF8, &qword_23C878F90);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FABF0, &qword_23C878F88);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FABF0, &qword_23C878F88);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FABF0, &qword_23C878F88);
LABEL_9:
      type metadata accessor for TranscriptProtoVisualOutput(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FABF0, &qword_23C878F88);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoVisualOutputType);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FABF8, &qword_23C878F90);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoVisualOutputType);
  v18 = _s26AIMLInstrumentationStreams31TranscriptProtoVisualOutputTypeO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_23C585C34(v14, &qword_27E1FABF0, &qword_23C878F88);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoVariableStepV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if ((sub_23C5DC634(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for TranscriptProtoVariableStep(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_23C5855B0(v15 + v17, v13, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v16 + v17, &v13[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_11:
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_23C585C34(v13, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_8;
  }

  sub_23C83155C(&v13[v18], v7, type metadata accessor for TranscriptProtoStatementID);
  v22 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v13, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoSessionErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C90, &qword_23C8A0E80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E201680, &qword_23C88DBC8);
  sub_23C5855B0(a2, &v14[v15], &qword_27E201680, &qword_23C88DBC8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E201680, &qword_23C88DBC8);
LABEL_9:
      type metadata accessor for TranscriptProtoSessionError(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E201680, &qword_23C88DBC8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionErrorEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203C90, &qword_23C8A0E80);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  v18 = _s26AIMLInstrumentationStreams31TranscriptProtoSessionErrorEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_23C585C34(v14, &qword_27E201680, &qword_23C88DBC8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoQueryPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v5 = *(PayloadEnum - 8);
  MEMORY[0x28223BE20](PayloadEnum);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AC0, &qword_23C8A0CE8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E2017F0, &unk_23C8A12A0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E2017F0, &unk_23C8A12A0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, PayloadEnum) == 1)
  {
    if (v16(&v14[v15], 1, PayloadEnum) == 1)
    {
      sub_23C585C34(v14, &qword_27E2017F0, &unk_23C8A12A0);
LABEL_9:
      type metadata accessor for TranscriptProtoQueryPayload(0);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E2017F0, &unk_23C8A12A0);
  if (v16(&v14[v15], 1, PayloadEnum) == 1)
  {
    sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryPayloadEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E203AC0, &qword_23C8A0CE8);
    goto LABEL_7;
  }

  sub_23C83155C(&v14[v15], v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  PayloadEnumO2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams31TranscriptProtoQueryPayloadEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C8315C4(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_23C8315C4(v10, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_23C585C34(v14, &qword_27E2017F0, &unk_23C8A12A0);
  if (PayloadEnumO2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoQueryPayloadV06StringE0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v23 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v24 = a1;
  v14 = *(v23 + 20);
  v15 = *(v11 + 56);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAB38, &unk_23C8791E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v9, &qword_27E1FAB38, &unk_23C8791E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      sub_23C83155C(&v13[v15], v22, type metadata accessor for ToolKitProtoTypeIdentifier);
      v19 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v9, v18);
      sub_23C8315C4(v18, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v13, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FAB40, &qword_23C878F08);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v13, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_9:
  if (*v24 == *a2 && v24[1] == a2[1] || (sub_23C872014() & 1) != 0)
  {
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_23C871754();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoQueryPayloadV010IdentifierE0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAB38, &unk_23C8791E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v13, v9, &qword_27E1FAB38, &unk_23C8791E0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FAB40, &qword_23C878F08);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_23C83155C(&v13[v15], v23, type metadata accessor for ToolKitProtoTypeIdentifier);
  v18 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v9, v17);
  sub_23C8315C4(v17, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v13, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C5D25E0(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_23C871754();
  return v19 & 1;
}