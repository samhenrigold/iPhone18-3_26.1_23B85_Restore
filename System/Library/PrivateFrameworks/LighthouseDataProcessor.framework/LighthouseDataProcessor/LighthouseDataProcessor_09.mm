BOOL sub_20E15F7B0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_20E05E834(a3, a4);
          return sub_20E146250(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s23LighthouseDataProcessor53TranscriptProtoSystemRequirementAuthenticationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868578, &qword_20E33B598);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C868570, &qword_20E33B590);
  sub_20E0486F4(a2, &v14[v15], &qword_27C868570, &qword_20E33B590);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C868570, &qword_20E33B590);
LABEL_9:
      type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C868570, &qword_20E33B590);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868578, &qword_20E33B598);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  v18 = sub_20E180718(v10, v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E04875C(v14, &qword_27C868570, &qword_20E33B590);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor52TranscriptProtoExecutionPreconditionEvaluatorRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F18, &qword_20E33AFE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F20, &qword_20E33AFF0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_20E0486F4(a1 + v14, v13, &qword_27C867F18, &qword_20E33AFE8);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C867F18, &qword_20E33AFE8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C867F18, &qword_20E33AFE8);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v13, v9, &qword_27C867F18, &qword_20E33AFE8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v9, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
LABEL_6:
    sub_20E04875C(v13, &qword_27C867F20, &qword_20E33AFF0);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_20E195B54(&v13[v15], v23, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  v18 = _s23LighthouseDataProcessor058TranscriptProtoExecutionPreconditionEvaluatorRequestActionI0V2eeoiySbAC_ACtFZ_0(v9, v17);
  sub_20E195C24(v17, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  sub_20E195C24(v9, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  sub_20E04875C(v13, &qword_27C867F18, &qword_20E33AFE8);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E15AFBC(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_20E322850();
  return v19 & 1;
}

uint64_t sub_20E15FFEC(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(void))
{
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20E322D60() & 1) == 0 || (a3(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor49TranscriptProtoActionFailureDeveloperDefinedErrorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_20E322D60() & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor48TranscriptProtoDynamicEnumerationEntityStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA8, &qword_20E33B078);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FB0, &qword_20E33B080);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C8639D0, &unk_20E33C230);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C8639D0, &unk_20E33C230);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C8639D0, &unk_20E33C230);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E195B54(&v19[v20], v12, type metadata accessor for TranscriptProtoStatementID);
      v25 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v22 = &qword_27C867F30;
    v23 = &qword_20E33B000;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C867FA8, &qword_20E33B078);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C867FA8, &qword_20E33B078);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C867FA8, &qword_20E33B078);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C867FA8, &qword_20E33B078);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for ContextProtoDynamicEnumerationEntity);
LABEL_13:
    v22 = &qword_27C867FB0;
    v23 = &qword_20E33B080;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E195B54(v34, v37, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  v36 = static ContextProtoDynamicEnumerationEntity.== infix(_:_:)(v31, v35);
  sub_20E195C24(v35, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_20E195C24(v31, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_20E04875C(v28, &qword_27C867FA8, &qword_20E33B078);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_20E160800(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = a1[4];
  v9 = *(a2 + 32);
  if (v8)
  {
    if (v9 && (a1[3] == *(a2 + 24) && v8 == v9 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_15:
  a3(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor47TranscriptProtoRequestPrescribedPlanConvertToolV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (v6)
  {
    if (!v7 || (a1[3] != *(a2 + 24) || v6 != v7) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = *(a2 + 48);
  if (v8)
  {
    if (v9 && (a1[5] == *(a2 + 40) && v8 == v9 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_22:
  type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor53TranscriptProtoQueryDecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v5 = *(DecorationPrePlannerPayloadEnum - 8);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F38, &qword_20E33B008);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C866200, &unk_20E33C470);
  sub_20E0486F4(a2, &v14[v15], &qword_27C866200, &unk_20E33C470);
  v16 = *(v5 + 48);
  if (v16(v14, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    if (v16(&v14[v15], 1, DecorationPrePlannerPayloadEnum) == 1)
    {
      sub_20E04875C(v14, &qword_27C866200, &unk_20E33C470);
LABEL_9:
      type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C866200, &unk_20E33C470);
  if (v16(&v14[v15], 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867F38, &qword_20E33B008);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  DecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor51TranscriptProtoQueryDecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_20E04875C(v14, &qword_27C866200, &unk_20E33C470);
  if (DecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor46TranscriptProtoQueryDecorationPrePlannerResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v48 = a2;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v44 = *(DecorationPrePlannerResultPayload - 8);
  v45 = DecorationPrePlannerResultPayload;
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F90, &qword_20E33B060);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F98, &qword_20E33B068);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v19 = *(DecorationPrePlannerResult + 20);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_20E0486F4(a1 + v19, v18, &qword_27C8639D0, &unk_20E33C230);
  v21 = v48;
  sub_20E0486F4(v48 + v19, &v18[v20], &qword_27C8639D0, &unk_20E33C230);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) != 1)
  {
    sub_20E0486F4(v18, v14, &qword_27C8639D0, &unk_20E33C230);
    if (v22(&v18[v20], 1, v8) != 1)
    {
      sub_20E195B54(&v18[v20], v11, type metadata accessor for TranscriptProtoStatementID);
      v26 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v11);
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v23 = &qword_27C867F30;
    v24 = &qword_20E33B000;
    v25 = v18;
LABEL_17:
    sub_20E04875C(v25, v23, v24);
    goto LABEL_18;
  }

  if (v22(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(DecorationPrePlannerResult + 24);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_20E0486F4(v27 + v28, v46, &qword_27C867F90, &qword_20E33B060);
  sub_20E0486F4(v21 + v28, v30 + v29, &qword_27C867F90, &qword_20E33B060);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_20E04875C(v30, &qword_27C867F90, &qword_20E33B060);
LABEL_21:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = sub_20E322850();
      return v34 & 1;
    }

    goto LABEL_16;
  }

  v33 = v41;
  sub_20E0486F4(v30, v41, &qword_27C867F90, &qword_20E33B060);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_20E195C24(v33, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
LABEL_16:
    v23 = &qword_27C867F98;
    v24 = &qword_20E33B068;
    v25 = v30;
    goto LABEL_17;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_20E195B54(v36, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  DecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor53TranscriptProtoQueryDecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0(v33, v37);
  sub_20E195C24(v37, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_20E195C24(v33, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_20E04875C(v30, &qword_27C867F90, &qword_20E33B060);
  if (DecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s23LighthouseDataProcessor44TranscriptProtoRequestPrescribedPlanOpenToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v25 - v13, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2, &v14[v15], &qword_27C8639D0, &unk_20E33C230);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_20E0486F4(v14, v10, &qword_27C8639D0, &unk_20E33C230);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementID);
      v19 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v14, &qword_27C8639D0, &unk_20E33C230);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v14, &qword_27C8639D0, &unk_20E33C230);
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
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
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

uint64_t _s23LighthouseDataProcessor67TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
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
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868658, &qword_20E33B668);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = v7;
  v21 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v14 = *(v21 + 24);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C868650, &qword_20E33B660);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C868650, &qword_20E33B660);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C868650, &qword_20E33B660);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v22;
      sub_20E195B54(&v13[v15], v22, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      v18 = _s23LighthouseDataProcessor67TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceV2eeoiySbAC_ACtFZ_0(v10, v17);
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      sub_20E04875C(v13, &qword_27C868650, &qword_20E33B660);
      if ((v18 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
LABEL_8:
    sub_20E04875C(v13, &qword_27C868658, &qword_20E33B668);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_20E04875C(v13, &qword_27C868650, &qword_20E33B660);
LABEL_10:
  if (*(a1 + 16) == *(a2 + 16))
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_20E322850();
    return v19 & 1;
  }

LABEL_11:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor44TranscriptProtoActionConfirmationSystemStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868660, &unk_20E33C270);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - v4;
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868668, &qword_20E33B670);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868670, &qword_20E33B678);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_20E0486F4(a1, &v24 - v14, &qword_27C868668, &qword_20E33B670);
  v27 = a2;
  sub_20E0486F4(a2, &v15[v16], &qword_27C868668, &qword_20E33B670);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_20E04875C(v15, &qword_27C868668, &qword_20E33B670);
LABEL_9:
      type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_20E322850();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v15, v11, &qword_27C868668, &qword_20E33B670);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
LABEL_6:
    sub_20E04875C(v15, &qword_27C868670, &qword_20E33B678);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v24;
  sub_20E195B54(v19, v24, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  v21 = *(v25 + 48);
  sub_20E195BBC(v11, v5, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E195BBC(v20, &v5[v21], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  v22 = _s23LighthouseDataProcessor61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(v5, &v5[v21]);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E195C24(&v5[v21], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E195C24(v5, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E04875C(v15, &qword_27C868668, &qword_20E33B670);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s23LighthouseDataProcessor42TranscriptProtoSystemPromptResolutionInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868280, &qword_20E33B310);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865E08, &unk_20E33C3C0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865E08, &unk_20E33C3C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865E08, &unk_20E33C3C0);
LABEL_9:
      type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865E08, &unk_20E33C3C0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868280, &qword_20E33B310);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  v18 = _s23LighthouseDataProcessor46TranscriptProtoSystemPromptResolutionInputEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_20E04875C(v14, &qword_27C865E08, &unk_20E33C3C0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor42TranscriptProtoParameterCandidatesNotFoundV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C863B18, &qword_20E323EB0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863B18, &qword_20E323EB0);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v13, v10, &qword_27C863B18, &qword_20E323EB0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_8:
    sub_20E04875C(v13, &qword_27C867ED8, &qword_20E33AFA8);
    goto LABEL_9;
  }

  v18 = v21;
  sub_20E195B54(&v13[v15], v21, type metadata accessor for ToolKitProtoTypedValue);
  v19 = static ToolKitProtoTypedValue.== infix(_:_:)(v10, v18);
  sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v13, &qword_27C863B18, &qword_20E323EB0);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20E162710(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v26 = a4;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v24 = a3(0);
  v17 = *(v24 + 20);
  v18 = *(v14 + 56);
  v27 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C8639D0, &unk_20E33C230);
  v19 = *(v8 + 48);
  if (v19(v16, 1, v7) == 1)
  {
    if (v19(&v16[v18], 1, v7) == 1)
    {
      sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v12, &qword_27C8639D0, &unk_20E33C230);
  if (v19(&v16[v18], 1, v7) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867F30, &qword_20E33B000);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  v20 = v25;
  sub_20E195B54(&v16[v18], v25, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v20);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v26(*v27, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v22 = sub_20E322850();
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoStructuredSearchExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((sub_20E15AFBC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v15 = *(v14 + 24);
  v16 = a1;
  v17 = *(v11 + 48);
  v22 = v14;
  v23 = v16;
  sub_20E0486F4(v16 + v15, v13, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2 + v15, &v13[v17], &qword_27C863C48, &qword_20E323F30);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v13, v10, &qword_27C863C48, &qword_20E323F30);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_20E04875C(v13, &qword_27C867E98, &qword_20E33AF70);
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  sub_20E195B54(&v13[v17], v7, type metadata accessor for ToolKitProtoTypeInstance);
  v19 = static ToolKitProtoTypeInstance.== infix(_:_:)(v10, v7);
  sub_20E195C24(v7, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v13, &qword_27C863C48, &qword_20E323F30);
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_20E14B224(v23[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_20E322850();
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoStructuredSearchExpressionV0fG8PropertyV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v15)
  {
    goto LABEL_16;
  }

  v23 = v7;
  v24 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v16 = *(v24 + 24);
  v17 = *(v11 + 48);
  sub_20E0486F4(a1 + v16, v13, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v16, &v13[v17], &qword_27C8639D0, &unk_20E33C230);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
LABEL_19:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_20E322850();
      return v19 & 1;
    }

    goto LABEL_15;
  }

  sub_20E0486F4(v13, v10, &qword_27C8639D0, &unk_20E33C230);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_15:
    sub_20E04875C(v13, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_16;
  }

  v21 = v23;
  sub_20E195B54(&v13[v17], v23, type metadata accessor for TranscriptProtoStatementID);
  v22 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v21);
  sub_20E195C24(v21, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_16:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoSpanMatchedEntityStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868018, &unk_20E33C430);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868020, &qword_20E33B0D0);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C8639D0, &unk_20E33C230);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C8639D0, &unk_20E33C230);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C8639D0, &unk_20E33C230);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E195B54(&v19[v20], v12, type metadata accessor for TranscriptProtoStatementID);
      v25 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v22 = &qword_27C867F30;
    v23 = &qword_20E33B000;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C868018, &unk_20E33C430);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C868018, &unk_20E33C430);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C868018, &unk_20E33C430);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C868018, &unk_20E33C430);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for ContextProtoSpanMatchedEntity);
LABEL_13:
    v22 = &qword_27C868020;
    v23 = &qword_20E33B0D0;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E195B54(v34, v37, type metadata accessor for ContextProtoSpanMatchedEntity);
  v36 = static ContextProtoSpanMatchedEntity.== infix(_:_:)(v31, v35);
  sub_20E195C24(v35, type metadata accessor for ContextProtoSpanMatchedEntity);
  sub_20E195C24(v31, type metadata accessor for ContextProtoSpanMatchedEntity);
  sub_20E04875C(v28, &qword_27C868018, &unk_20E33C430);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor40TranscriptProtoRetrievedContextStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedContext(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868260, &unk_20E33C3D0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868268, &qword_20E33B2F8);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C8639D0, &unk_20E33C230);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C8639D0, &unk_20E33C230);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C8639D0, &unk_20E33C230);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E195B54(&v19[v20], v12, type metadata accessor for TranscriptProtoStatementID);
      v25 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v22 = &qword_27C867F30;
    v23 = &qword_20E33B000;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C868260, &unk_20E33C3D0);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C868260, &unk_20E33C3D0);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C868260, &unk_20E33C3D0);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C868260, &unk_20E33C3D0);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for ContextProtoRetrievedContext);
LABEL_13:
    v22 = &qword_27C868268;
    v23 = &qword_20E33B2F8;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E195B54(v34, v37, type metadata accessor for ContextProtoRetrievedContext);
  v36 = static ContextProtoRetrievedContext.== infix(_:_:)(v31, v35);
  sub_20E195C24(v35, type metadata accessor for ContextProtoRetrievedContext);
  sub_20E195C24(v31, type metadata accessor for ContextProtoRetrievedContext);
  sub_20E04875C(v28, &qword_27C868260, &unk_20E33C3D0);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor39TranscriptProtoSystemRequirementMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868580, &qword_20E33B5A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863AA8, &unk_20E33C2D0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863AA8, &unk_20E33C2D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863AA8, &unk_20E33C2D0);
LABEL_9:
      type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863AA8, &unk_20E33C2D0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868580, &qword_20E33B5A0);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  v18 = _s23LighthouseDataProcessor43TranscriptProtoSystemRequirementMessageEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_20E04875C(v14, &qword_27C863AA8, &unk_20E33C2D0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor39TranscriptProtoASTFlatExprUpdateVariantV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v13 = MEMORY[0x28223BE20](v12);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v17 = *(updated + 24);
  v38 = v12;
  v18 = *(v12 + 48);
  v42 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C868048, &qword_20E33B0F0);
  v43 = a2;
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C868048, &qword_20E33B0F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C868048, &qword_20E33B0F0);
      goto LABEL_9;
    }

LABEL_6:
    v20 = v16;
LABEL_7:
    sub_20E04875C(v20, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_18;
  }

  sub_20E0486F4(v16, v11, &qword_27C868048, &qword_20E33B0F0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
    goto LABEL_6;
  }

  v21 = &v16[v18];
  v22 = v41;
  sub_20E195B54(v21, v41, type metadata accessor for TranscriptProtoASTFlatValue);
  v23 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v11, v22);
  sub_20E195C24(v22, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E04875C(v16, &qword_27C868048, &qword_20E33B0F0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v24 = v42;
  v25 = v43;
  if ((sub_20E14C50C(*v42, *v43) & 1) == 0)
  {
    goto LABEL_18;
  }

  v26 = v39;
  v27 = *(updated + 28);
  v28 = *(v38 + 48);
  sub_20E0486F4(v24 + v27, v39, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(v25 + v27, v26 + v28, &qword_27C868048, &qword_20E33B0F0);
  v29 = v4;
  if (v19(v26, 1, v4) != 1)
  {
    v30 = v37;
    sub_20E0486F4(v26, v37, &qword_27C868048, &qword_20E33B0F0);
    if (v19((v26 + v28), 1, v29) != 1)
    {
      v31 = v26 + v28;
      v32 = v41;
      sub_20E195B54(v31, v41, type metadata accessor for TranscriptProtoASTFlatValue);
      v33 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v30, v32);
      sub_20E195C24(v32, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v30, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v26, &qword_27C868048, &qword_20E33B0F0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    sub_20E195C24(v30, type metadata accessor for TranscriptProtoASTFlatValue);
    goto LABEL_15;
  }

  if (v19((v26 + v28), 1, v4) != 1)
  {
LABEL_15:
    v20 = v26;
    goto LABEL_7;
  }

  sub_20E04875C(v26, &qword_27C868048, &qword_20E33B0F0);
LABEL_17:
  if (*(v24 + 8) == *(v25 + 8))
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = sub_20E322850();
    return v34 & 1;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_20E1646E0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor39TranscriptProtoASTFlatExprPrefixVariantV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
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
  sub_20E0486F4(&v15[v17], v13, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(&v16[v17], &v13[v18], &qword_27C868048, &qword_20E33B0F0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C868048, &qword_20E33B0F0);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v13, v10, &qword_27C868048, &qword_20E33B0F0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_7:
    sub_20E04875C(v13, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_8;
  }

  sub_20E195B54(&v13[v18], v7, type metadata accessor for TranscriptProtoASTFlatValue);
  v22 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E04875C(v13, &qword_27C868048, &qword_20E33B0F0);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor38TranscriptProtoSessionCoordinatorErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685D0, &qword_20E33B5F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863ED8, &unk_20E33C2B0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863ED8, &unk_20E33C2B0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863ED8, &unk_20E33C2B0);
LABEL_9:
      type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863ED8, &unk_20E33C2B0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8685D0, &qword_20E33B5F0);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  v18 = _s23LighthouseDataProcessor42TranscriptProtoSessionCoordinatorErrorEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_20E04875C(v14, &qword_27C863ED8, &unk_20E33C2B0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor38TranscriptProtoParameterDisambiguationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
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

  if (sub_20E1484A4(a1[2], *(a2 + 16)))
  {
    type metadata accessor for TranscriptProtoParameterDisambiguation(0);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor38TranscriptProtoASTFlatExprInfixVariantV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
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
  sub_20E0486F4(&v21[v22], v19, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(&v40[v22], &v19[v23], &qword_27C868048, &qword_20E33B0F0);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) != 1)
  {
    sub_20E0486F4(v19, v13, &qword_27C868048, &qword_20E33B0F0);
    if (v24(&v19[v23], 1, v4) != 1)
    {
      v26 = v37;
      sub_20E195B54(&v19[v23], v37, type metadata accessor for TranscriptProtoASTFlatValue);
      v27 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v13, v26);
      sub_20E195C24(v26, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v13, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v19, &qword_27C868048, &qword_20E33B0F0);
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v13, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_7:
    v25 = v19;
LABEL_15:
    sub_20E04875C(v25, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_16;
  }

  if (v24(&v19[v23], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v19, &qword_27C868048, &qword_20E33B0F0);
LABEL_9:
  v28 = *(v38 + 24);
  v29 = *(v14 + 48);
  sub_20E0486F4(&v39[v28], v17, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(&v40[v28], &v17[v29], &qword_27C868048, &qword_20E33B0F0);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v29], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C868048, &qword_20E33B0F0);
LABEL_19:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v31 = sub_20E322850();
      return v31 & 1;
    }

    goto LABEL_14;
  }

  v30 = v36;
  sub_20E0486F4(v17, v36, &qword_27C868048, &qword_20E33B0F0);
  if (v24(&v17[v29], 1, v4) == 1)
  {
    sub_20E195C24(v30, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_14:
    v25 = v17;
    goto LABEL_15;
  }

  v33 = v37;
  sub_20E195B54(&v17[v29], v37, type metadata accessor for TranscriptProtoASTFlatValue);
  v34 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v30, v33);
  sub_20E195C24(v33, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195C24(v30, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E04875C(v17, &qword_27C868048, &qword_20E33B0F0);
  if (v34)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s23LighthouseDataProcessor38TranscriptProtoASTFlatExprIndexVariantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v13 = MEMORY[0x28223BE20](v12);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *(v15 + 48);
  v36 = a1;
  sub_20E0486F4(a1, &v32 - v16, &qword_27C868048, &qword_20E33B0F0);
  v37 = a2;
  sub_20E0486F4(a2, &v17[v18], &qword_27C868048, &qword_20E33B0F0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_20E0486F4(v17, v11, &qword_27C868048, &qword_20E33B0F0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = &v17[v18];
      v22 = v34;
      sub_20E195B54(v21, v34, type metadata accessor for TranscriptProtoASTFlatValue);
      v23 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v11, v22);
      sub_20E195C24(v22, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v17, &qword_27C868048, &qword_20E33B0F0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_6:
    v20 = v17;
LABEL_14:
    sub_20E04875C(v20, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_15;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v17, &qword_27C868048, &qword_20E33B0F0);
LABEL_8:
  v24 = *(type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0) + 20);
  v25 = *(v12 + 48);
  v26 = v35;
  sub_20E0486F4(v36 + v24, v35, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(v37 + v24, v26 + v25, &qword_27C868048, &qword_20E33B0F0);
  if (v19(v26, 1, v4) == 1)
  {
    if (v19((v26 + v25), 1, v4) == 1)
    {
      sub_20E04875C(v26, &qword_27C868048, &qword_20E33B0F0);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = sub_20E322850();
      return v28 & 1;
    }

    goto LABEL_13;
  }

  v27 = v33;
  sub_20E0486F4(v26, v33, &qword_27C868048, &qword_20E33B0F0);
  if (v19((v26 + v25), 1, v4) == 1)
  {
    sub_20E195C24(v27, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_13:
    v20 = v26;
    goto LABEL_14;
  }

  v30 = v34;
  sub_20E195B54(v26 + v25, v34, type metadata accessor for TranscriptProtoASTFlatValue);
  v31 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v27, v30);
  sub_20E195C24(v30, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195C24(v27, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E04875C(v26, &qword_27C868048, &qword_20E33B0F0);
  if (v31)
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_20E165A80(uint64_t *a1, void *a2, uint64_t (*a3)(void))
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
      v8 = sub_20E322D60();
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
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor37TranscriptProtoASTFlatExprPickVariantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTPickType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868208, &unk_20E33C3F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868210, &qword_20E33B2B0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C868208, &unk_20E33C3F0);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C868208, &unk_20E33C3F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C868208, &unk_20E33C3F0);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v13, v10, &qword_27C868208, &unk_20E33C3F0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTPickType);
LABEL_8:
    sub_20E04875C(v13, &qword_27C868210, &qword_20E33B2B0);
    goto LABEL_9;
  }

  v18 = v21;
  sub_20E195B54(&v13[v15], v21, type metadata accessor for TranscriptProtoASTPickType);
  v19 = _s23LighthouseDataProcessor26TranscriptProtoASTPickTypeV2eeoiySbAC_ACtFZ_0(v10, v18);
  sub_20E195C24(v18, type metadata accessor for TranscriptProtoASTPickType);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTPickType);
  sub_20E04875C(v13, &qword_27C868208, &unk_20E33C3F0);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoUserConfirmExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v15 = MEMORY[0x28223BE20](v14);
  v46 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44 - v21;
  v48 = v20;
  v23 = *(v20 + 48);
  v50 = a1;
  sub_20E0486F4(a1, &v44 - v21, &qword_27C8639D0, &unk_20E33C230);
  v51 = a2;
  sub_20E0486F4(a2, &v22[v23], &qword_27C8639D0, &unk_20E33C230);
  v24 = *(v5 + 48);
  if (v24(v22, 1, v4) == 1)
  {
    if (v24(&v22[v23], 1, v4) == 1)
    {
      sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

LABEL_6:
    v25 = v22;
LABEL_21:
    sub_20E04875C(v25, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_22;
  }

  sub_20E0486F4(v22, v13, &qword_27C8639D0, &unk_20E33C230);
  if (v24(&v22[v23], 1, v4) == 1)
  {
    sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  v26 = v49;
  sub_20E195B54(&v22[v23], v49, type metadata accessor for TranscriptProtoStatementID);
  v27 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v13, v26);
  sub_20E195C24(v26, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
  if ((v27 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v28 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v29 = *(v28 + 20);
  v30 = v48;
  v31 = *(v48 + 48);
  sub_20E0486F4(v50 + v29, v19, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v51 + v29, &v19[v31], &qword_27C8639D0, &unk_20E33C230);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v31], 1, v4) != 1)
    {
LABEL_20:
      v25 = v19;
      goto LABEL_21;
    }

    sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_14:
    v37 = *(v28 + 24);
    v38 = *(v30 + 48);
    v19 = v46;
    sub_20E0486F4(v50 + v37, v46, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v51 + v37, &v19[v38], &qword_27C8639D0, &unk_20E33C230);
    if (v24(v19, 1, v4) == 1)
    {
      if (v24(&v19[v38], 1, v4) == 1)
      {
        sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v40 = sub_20E322850();
        return v40 & 1;
      }

      goto LABEL_20;
    }

    v39 = v45;
    sub_20E0486F4(v19, v45, &qword_27C8639D0, &unk_20E33C230);
    if (v24(&v19[v38], 1, v4) == 1)
    {
      v33 = v39;
      goto LABEL_19;
    }

    v42 = v49;
    sub_20E195B54(&v19[v38], v49, type metadata accessor for TranscriptProtoStatementID);
    v43 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v39, v42);
    sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v39, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
    if (v43)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v32 = v47;
  sub_20E0486F4(v19, v47, &qword_27C8639D0, &unk_20E33C230);
  if (v24(&v19[v31], 1, v4) == 1)
  {
    v33 = v32;
LABEL_19:
    sub_20E195C24(v33, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v34 = &v19[v31];
  v35 = v49;
  sub_20E195B54(v34, v49, type metadata accessor for TranscriptProtoStatementID);
  v36 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v32, v35);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v32, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
  if (v36)
  {
    goto LABEL_14;
  }

LABEL_22:
  v40 = 0;
  return v40 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoTypeConversionRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v56 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v59);
  v62 = &v56 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = (&v56 - v12);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v64);
  v67 = &v56 - v13;
  v14 = type metadata accessor for ToolKitProtoTypedValue(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v56 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v56 - v23;
  v25 = *(v22 + 56);
  v68 = a1;
  sub_20E0486F4(a1, &v56 - v23, &qword_27C863B18, &qword_20E323EB0);
  v69 = a2;
  sub_20E0486F4(a2, &v24[v25], &qword_27C863B18, &qword_20E323EB0);
  v26 = *(v15 + 48);
  if (v26(v24, 1, v14) == 1)
  {
    if (v26(&v24[v25], 1, v14) == 1)
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_27C867ED8;
    v28 = &qword_20E33AFA8;
    v29 = v24;
LABEL_21:
    sub_20E04875C(v29, v27, v28);
    goto LABEL_22;
  }

  sub_20E0486F4(v24, v20, &qword_27C863B18, &qword_20E323EB0);
  if (v26(&v24[v25], 1, v14) == 1)
  {
    sub_20E195C24(v20, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_20E195B54(&v24[v25], v17, type metadata accessor for ToolKitProtoTypedValue);
  v30 = static ToolKitProtoTypedValue.== infix(_:_:)(v20, v17);
  sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
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
  sub_20E0486F4(v68 + v32, v67, &qword_27C863C48, &qword_20E323F30);
  v36 = v69;
  sub_20E0486F4(v69 + v32, v35 + v33, &qword_27C863C48, &qword_20E323F30);
  v37 = v66;
  v38 = *(v65 + 48);
  if (v38(v35, 1, v66) != 1)
  {
    v39 = v63;
    sub_20E0486F4(v35, v63, &qword_27C863C48, &qword_20E323F30);
    if (v38(v35 + v33, 1, v37) != 1)
    {
      v40 = v35 + v33;
      v41 = v58;
      sub_20E195B54(v40, v58, type metadata accessor for ToolKitProtoTypeInstance);
      v42 = static ToolKitProtoTypeInstance.== infix(_:_:)(v39, v41);
      sub_20E195C24(v41, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E195C24(v39, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v35, &qword_27C863C48, &qword_20E323F30);
      if ((v42 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_20E195C24(v39, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_13;
  }

  if (v38(v35 + v33, 1, v37) != 1)
  {
LABEL_13:
    v27 = &qword_27C867E98;
    v28 = &qword_20E33AF70;
    v29 = v35;
    goto LABEL_21;
  }

  sub_20E04875C(v35, &qword_27C863C48, &qword_20E323F30);
LABEL_15:
  v43 = *(v31 + 24);
  v44 = *(v59 + 48);
  v45 = v62;
  sub_20E0486F4(v34 + v43, v62, &qword_27C8639D0, &unk_20E33C230);
  v46 = v36 + v43;
  v47 = v45;
  sub_20E0486F4(v46, v45 + v44, &qword_27C8639D0, &unk_20E33C230);
  v48 = v61;
  v49 = *(v60 + 48);
  if (v49(v45, 1, v61) == 1)
  {
    if (v49(v45 + v44, 1, v48) == 1)
    {
      sub_20E04875C(v45, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v51 = sub_20E322850();
      return v51 & 1;
    }

    goto LABEL_20;
  }

  v50 = v57;
  sub_20E0486F4(v47, v57, &qword_27C8639D0, &unk_20E33C230);
  if (v49(v47 + v44, 1, v48) == 1)
  {
    sub_20E195C24(v50, type metadata accessor for TranscriptProtoStatementID);
LABEL_20:
    v27 = &qword_27C867F30;
    v28 = &qword_20E33B000;
    v29 = v47;
    goto LABEL_21;
  }

  v53 = v47 + v44;
  v54 = v56;
  sub_20E195B54(v53, v56, type metadata accessor for TranscriptProtoStatementID);
  v55 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v50, v54);
  sub_20E195C24(v54, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v50, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v47, &qword_27C8639D0, &unk_20E33C230);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_22:
  v51 = 0;
  return v51 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || a1[8] != *(a2 + 32) || (sub_20E147918(*(a1 + 5), *(a2 + 40)) & 1) == 0 || (sub_20E14CA38(*(a1 + 6), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoRequestPrescribedPlanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686C0, &qword_20E33B6B8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C8659F8, &unk_20E33C240);
  sub_20E0486F4(a2, &v14[v15], &qword_27C8659F8, &unk_20E33C240);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
LABEL_9:
      type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C8659F8, &unk_20E33C240);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8686C0, &qword_20E33B6B8);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  v18 = _s23LighthouseDataProcessor40TranscriptProtoRequestPrescribedPlanEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_20E04875C(v14, &qword_27C8659F8, &unk_20E33C240);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoQueryDecorationResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C40, &unk_20E33C460);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA0, &qword_20E33B070);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((sub_20E1463E0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v15 = *(DecorationResult + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v23 = DecorationResult;
  v24 = v16;
  sub_20E0486F4(v16 + v15, v13, &qword_27C863C40, &unk_20E33C460);
  sub_20E0486F4(a2 + v15, &v13[v17], &qword_27C863C40, &unk_20E33C460);
  v18 = *(v5 + 48);
  if (v18(v13, 1, DecorationToolRetrievalResponse) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C863C40, &unk_20E33C460);
    if (v18(&v13[v17], 1, DecorationToolRetrievalResponse) != 1)
    {
      sub_20E195B54(&v13[v17], v7, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_20E195C24(v7, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_20E195C24(v10, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_20E04875C(v13, &qword_27C863C40, &unk_20E33C460);
      if (DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0)
      {
        goto LABEL_9;
      }

LABEL_12:
      v21 = 0;
      return v21 & 1;
    }

    sub_20E195C24(v10, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_7:
    sub_20E04875C(v13, &qword_27C867FA0, &qword_20E33B070);
    goto LABEL_12;
  }

  if (v18(&v13[v17], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v13, &qword_27C863C40, &unk_20E33C460);
LABEL_9:
  v20 = v24;
  if ((sub_20E14D9E0(v24[1], a2[1]) & 1) == 0 || (sub_20E14E2F8(v20[2], a2[2]) & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_20E322850();
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoParameterConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v38 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_22;
  }

  v20 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_22;
    }
  }

  v40 = v11;
  v41 = v7;
  v45 = v17;
  v21 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v22 = *(v21 + 24);
  v23 = *(v14 + 48);
  v42 = v21;
  v43 = a1;
  sub_20E0486F4(a1 + v22, v19, &qword_27C863B18, &qword_20E323EB0);
  v44 = a2;
  sub_20E0486F4(a2 + v22, &v19[v23], &qword_27C863B18, &qword_20E323EB0);
  v24 = v5 + 48;
  v25 = *(v5 + 48);
  if (v25(v19, 1, v4) == 1)
  {
    if (v25(&v19[v23], 1, v4) != 1)
    {
LABEL_21:
      sub_20E04875C(v19, &qword_27C867ED8, &qword_20E33AFA8);
      goto LABEL_22;
    }

    v39 = v24;
    sub_20E04875C(v19, &qword_27C863B18, &qword_20E323EB0);
LABEL_15:
    v30 = *(v42 + 28);
    v31 = *(v14 + 48);
    v19 = v45;
    sub_20E0486F4(v43 + v30, v45, &qword_27C863B18, &qword_20E323EB0);
    sub_20E0486F4(v44 + v30, &v19[v31], &qword_27C863B18, &qword_20E323EB0);
    if (v25(v19, 1, v4) == 1)
    {
      if (v25(&v19[v31], 1, v4) == 1)
      {
        sub_20E04875C(v19, &qword_27C863B18, &qword_20E323EB0);
LABEL_25:
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v33 = sub_20E322850();
        return v33 & 1;
      }

      goto LABEL_21;
    }

    v32 = v40;
    sub_20E0486F4(v19, v40, &qword_27C863B18, &qword_20E323EB0);
    if (v25(&v19[v31], 1, v4) == 1)
    {
      v26 = v32;
      goto LABEL_20;
    }

    v35 = &v19[v31];
    v36 = v41;
    sub_20E195B54(v35, v41, type metadata accessor for ToolKitProtoTypedValue);
    v37 = static ToolKitProtoTypedValue.== infix(_:_:)(v32, v36);
    sub_20E195C24(v36, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195C24(v32, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E04875C(v19, &qword_27C863B18, &qword_20E323EB0);
    if (v37)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  sub_20E0486F4(v19, v13, &qword_27C863B18, &qword_20E323EB0);
  if (v25(&v19[v23], 1, v4) == 1)
  {
    v26 = v13;
LABEL_20:
    sub_20E195C24(v26, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_21;
  }

  v39 = v24;
  v27 = &v19[v23];
  v28 = v41;
  sub_20E195B54(v27, v41, type metadata accessor for ToolKitProtoTypedValue);
  v29 = static ToolKitProtoTypedValue.== infix(_:_:)(v13, v28);
  sub_20E195C24(v28, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v19, &qword_27C863B18, &qword_20E323EB0);
  if (v29)
  {
    goto LABEL_15;
  }

LABEL_22:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoClientUndoRedoRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
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
  sub_20E0486F4(a1 + v21, v19, &qword_27C8639D0, &unk_20E33C230);
  v43 = a2;
  sub_20E0486F4(a2 + v21, &v19[v22], &qword_27C8639D0, &unk_20E33C230);
  v23 = v5 + 48;
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v22], 1, v4) != 1)
    {
LABEL_16:
      sub_20E04875C(v19, &qword_27C867F30, &qword_20E33B000);
      goto LABEL_17;
    }

    v38 = v23;
    sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_10:
    v29 = *(v41 + 28);
    v30 = *(v14 + 48);
    v19 = v44;
    sub_20E0486F4(v42 + v29, v44, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v43 + v29, &v19[v30], &qword_27C8639D0, &unk_20E33C230);
    if (v24(v19, 1, v4) == 1)
    {
      if (v24(&v19[v30], 1, v4) == 1)
      {
        sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_20:
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v32 = sub_20E322850();
        return v32 & 1;
      }

      goto LABEL_16;
    }

    v31 = v39;
    sub_20E0486F4(v19, v39, &qword_27C8639D0, &unk_20E33C230);
    if (v24(&v19[v30], 1, v4) == 1)
    {
      v25 = v31;
      goto LABEL_15;
    }

    v34 = &v19[v30];
    v35 = v40;
    sub_20E195B54(v34, v40, type metadata accessor for TranscriptProtoStatementID);
    v36 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v31, v35);
    sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
    if (v36)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_20E0486F4(v19, v13, &qword_27C8639D0, &unk_20E33C230);
  if (v24(&v19[v22], 1, v4) == 1)
  {
    v25 = v13;
LABEL_15:
    sub_20E195C24(v25, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_16;
  }

  v38 = v23;
  v26 = &v19[v22];
  v27 = v40;
  sub_20E195B54(v26, v40, type metadata accessor for TranscriptProtoStatementID);
  v28 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v13, v27);
  sub_20E195C24(v27, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
  if (v28)
  {
    goto LABEL_10;
  }

LABEL_17:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoActionResolverRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v71 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = (&v56 - v6);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  MEMORY[0x28223BE20](v59);
  v62 = &v56 - v7;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v56 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v65);
  v68 = &v56 - v12;
  v13 = type metadata accessor for TranscriptProtoParameterSet(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v56 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868270, &qword_20E33B300);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v69 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v70 = a1;
  v24 = *(v69 + 28);
  v25 = *(v21 + 56);
  sub_20E0486F4(a1 + v24, v23, &qword_27C863B30, &qword_20E323E58);
  sub_20E0486F4(v71 + v24, &v23[v25], &qword_27C863B30, &qword_20E323E58);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_20E04875C(v23, &qword_27C863B30, &qword_20E323E58);
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  sub_20E0486F4(v23, v19, &qword_27C863B30, &qword_20E323E58);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoParameterSet);
LABEL_11:
    v35 = &qword_27C868270;
    v36 = &qword_20E33B300;
LABEL_12:
    v37 = v23;
LABEL_13:
    sub_20E04875C(v37, v35, v36);
    goto LABEL_14;
  }

  sub_20E195B54(&v23[v25], v16, type metadata accessor for TranscriptProtoParameterSet);
  if ((sub_20E151DB0(*v19, *v16) & 1) == 0)
  {
    sub_20E195C24(v16, type metadata accessor for TranscriptProtoParameterSet);
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoParameterSet);
    v35 = &qword_27C863B30;
    v36 = &qword_20E323E58;
    goto LABEL_12;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = sub_20E322850();
  sub_20E195C24(v16, type metadata accessor for TranscriptProtoParameterSet);
  sub_20E195C24(v19, type metadata accessor for TranscriptProtoParameterSet);
  sub_20E04875C(v23, &qword_27C863B30, &qword_20E323E58);
  if ((v40 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v28 = v70;
  v27 = v71;
  if ((sub_20E150768(*v70, *v71) & 1) == 0 || *(v28 + 8) != *(v27 + 8))
  {
    goto LABEL_14;
  }

  v29 = v68;
  v30 = v69;
  v31 = *(v69 + 32);
  v32 = *(v65 + 48);
  sub_20E0486F4(v28 + v31, v68, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v27 + v31, v29 + v32, &qword_27C8639D0, &unk_20E33C230);
  v33 = v67;
  v34 = *(v66 + 48);
  if (v34(v29, 1, v67) == 1)
  {
    if (v34(v29 + v32, 1, v33) == 1)
    {
      sub_20E04875C(v29, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v41 = v64;
  sub_20E0486F4(v29, v64, &qword_27C8639D0, &unk_20E33C230);
  if (v34(v29 + v32, 1, v33) == 1)
  {
    sub_20E195C24(v41, type metadata accessor for TranscriptProtoStatementID);
LABEL_22:
    v35 = &qword_27C867F30;
    v36 = &qword_20E33B000;
    v37 = v29;
    goto LABEL_13;
  }

  v42 = v29 + v32;
  v43 = v63;
  sub_20E195B54(v42, v63, type metadata accessor for TranscriptProtoStatementID);
  v44 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v41, v43);
  sub_20E195C24(v43, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v41, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v29, &qword_27C8639D0, &unk_20E33C230);
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
  sub_20E0486F4(v28 + v45, v62, &qword_27C8639C8, &unk_20E323870);
  v48 = v27 + v45;
  v49 = v47;
  sub_20E0486F4(v48, v47 + v46, &qword_27C8639C8, &unk_20E323870);
  v50 = v61;
  v51 = *(v60 + 48);
  if (v51(v47, 1, v61) == 1)
  {
    if (v51(v47 + v46, 1, v50) == 1)
    {
      sub_20E04875C(v47, &qword_27C8639C8, &unk_20E323870);
LABEL_32:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_20E322850();
      return v38 & 1;
    }

    goto LABEL_30;
  }

  v52 = v58;
  sub_20E0486F4(v49, v58, &qword_27C8639C8, &unk_20E323870);
  if (v51(v49 + v46, 1, v50) == 1)
  {
    sub_20E195C24(v52, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_30:
    v35 = &qword_27C868040;
    v36 = &qword_20E33B0E8;
    v37 = v49;
    goto LABEL_13;
  }

  v53 = v49 + v46;
  v54 = v57;
  sub_20E195B54(v53, v57, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v55 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v52, v54);
  sub_20E195C24(v54, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195C24(v52, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E04875C(v49, &qword_27C8639C8, &unk_20E323870);
  if (v55)
  {
    goto LABEL_32;
  }

LABEL_14:
  v38 = 0;
  return v38 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoASTFlatExprDotVariantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v23 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v24 = a1;
  v14 = *(v23 + 20);
  v15 = *(v11 + 56);
  sub_20E0486F4(a1 + v14, v13, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C868048, &qword_20E33B0F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v9, &qword_27C868048, &qword_20E33B0F0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      sub_20E195B54(&v13[v15], v22, type metadata accessor for TranscriptProtoASTFlatValue);
      v19 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v9, v18);
      sub_20E195C24(v18, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v9, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v13, &qword_27C868048, &qword_20E33B0F0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v9, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_6:
    sub_20E04875C(v13, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v13, &qword_27C868048, &qword_20E33B0F0);
LABEL_9:
  if (*v24 == *a2 && v24[1] == a2[1] || (sub_20E322D60() & 1) != 0)
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_20E322850();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoTypeConversionResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for TranscriptProtoStatementID(0);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v58 = &v53[-v8];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v9 = MEMORY[0x28223BE20](v60);
  v57 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v59 = &v53[-v11];
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v53[-v21];
  v23 = *(v20 + 56);
  v62 = a1;
  sub_20E0486F4(a1, &v53[-v21], &qword_27C863B18, &qword_20E323EB0);
  v63 = a2;
  sub_20E0486F4(a2, &v22[v23], &qword_27C863B18, &qword_20E323EB0);
  v24 = *(v13 + 48);
  if (v24(v22, 1, v12) == 1)
  {
    if (v24(&v22[v23], 1, v12) == 1)
    {
      sub_20E04875C(v22, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

LABEL_6:
    v25 = &qword_27C867ED8;
    v26 = &qword_20E33AFA8;
    v27 = v22;
LABEL_21:
    sub_20E04875C(v27, v25, v26);
    goto LABEL_22;
  }

  sub_20E0486F4(v22, v18, &qword_27C863B18, &qword_20E323EB0);
  if (v24(&v22[v23], 1, v12) == 1)
  {
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_20E195B54(&v22[v23], v15, type metadata accessor for ToolKitProtoTypedValue);
  v28 = static ToolKitProtoTypedValue.== infix(_:_:)(v18, v15);
  sub_20E195C24(v15, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v22, &qword_27C863B18, &qword_20E323EB0);
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
  sub_20E0486F4(v62 + v30, v59, &qword_27C8639D0, &unk_20E33C230);
  v35 = v63;
  sub_20E0486F4(v63 + v30, &v31[v33], &qword_27C8639D0, &unk_20E33C230);
  v36 = v64 + 48;
  v37 = *(v64 + 48);
  v38 = v61;
  if (v37(v31, 1, v61) == 1)
  {
    if (v37(&v31[v33], 1, v38) != 1)
    {
LABEL_20:
      v25 = &qword_27C867F30;
      v26 = &qword_20E33B000;
      v27 = v31;
      goto LABEL_21;
    }

    v64 = v36;
    sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
LABEL_14:
    v43 = *(v29 + 24);
    v44 = *(v32 + 48);
    v45 = v57;
    sub_20E0486F4(v34 + v43, v57, &qword_27C8639D0, &unk_20E33C230);
    v46 = v35 + v43;
    v31 = v45;
    sub_20E0486F4(v46, &v45[v44], &qword_27C8639D0, &unk_20E33C230);
    if (v37(v45, 1, v38) == 1)
    {
      if (v37(&v45[v44], 1, v38) == 1)
      {
        sub_20E04875C(v45, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = sub_20E322850();
        return v49 & 1;
      }

      goto LABEL_20;
    }

    v47 = v45;
    v48 = v55;
    sub_20E0486F4(v47, v55, &qword_27C8639D0, &unk_20E33C230);
    if (v37(&v31[v44], 1, v38) == 1)
    {
      v40 = v48;
      goto LABEL_19;
    }

    v51 = v56;
    sub_20E195B54(&v31[v44], v56, type metadata accessor for TranscriptProtoStatementID);
    v52 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v48, v51);
    sub_20E195C24(v51, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v39 = v58;
  sub_20E0486F4(v31, v58, &qword_27C8639D0, &unk_20E33C230);
  if (v37(&v31[v33], 1, v38) == 1)
  {
    v40 = v39;
LABEL_19:
    sub_20E195C24(v40, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v64 = v36;
  v41 = &v31[v33];
  v42 = v56;
  sub_20E195B54(v41, v56, type metadata accessor for TranscriptProtoStatementID);
  v54 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v39, v42);
  sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v39, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
  if (v54)
  {
    goto LABEL_14;
  }

LABEL_22:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoExternalAgentRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = (&v45 - v7);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868710, &qword_20E33B708);
  MEMORY[0x28223BE20](v48);
  v51 = &v45 - v8;
  v9 = type metadata accessor for TranscriptProtoRequestContent(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F00, &qword_20E33AFD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v45 - v18;
  v20 = *(v17 + 56);
  v52 = a1;
  sub_20E0486F4(a1, &v45 - v18, &qword_27C867EF8, &qword_20E33AFC8);
  sub_20E0486F4(a2, &v19[v20], &qword_27C867EF8, &qword_20E33AFC8);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) == 1)
  {
    if (v21(&v19[v20], 1, v9) == 1)
    {
      sub_20E04875C(v19, &qword_27C867EF8, &qword_20E33AFC8);
      goto LABEL_11;
    }

LABEL_6:
    v22 = &qword_27C867F00;
    v23 = &qword_20E33AFD0;
    v24 = v19;
LABEL_7:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_8;
  }

  sub_20E0486F4(v19, v15, &qword_27C867EF8, &qword_20E33AFC8);
  if (v21(&v19[v20], 1, v9) == 1)
  {
    sub_20E195C24(v15, type metadata accessor for TranscriptProtoRequestContent);
    goto LABEL_6;
  }

  sub_20E195B54(&v19[v20], v12, type metadata accessor for TranscriptProtoRequestContent);
  v27 = _s23LighthouseDataProcessor29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v15, v12);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E195C24(v15, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E04875C(v19, &qword_27C867EF8, &qword_20E33AFC8);
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
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_20E322D60() & 1) == 0)
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
  sub_20E0486F4(v30 + v35, v51, &qword_27C868708, &qword_20E33B700);
  v38 = v37;
  sub_20E0486F4(a2 + v35, v37 + v36, &qword_27C868708, &qword_20E33B700);
  v39 = v50;
  v40 = *(v49 + 48);
  if (v40(v37, 1, v50) == 1)
  {
    if (v40(v37 + v36, 1, v39) == 1)
    {
      sub_20E04875C(v37, &qword_27C868708, &qword_20E33B700);
LABEL_21:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = sub_20E322850();
      return v25 & 1;
    }

    goto LABEL_24;
  }

  v41 = v47;
  sub_20E0486F4(v38, v47, &qword_27C868708, &qword_20E33B700);
  if (v40(v38 + v36, 1, v39) == 1)
  {
    sub_20E195C24(v41, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
LABEL_24:
    v22 = &qword_27C868710;
    v23 = &qword_20E33B708;
LABEL_32:
    v24 = v38;
    goto LABEL_7;
  }

  v42 = v38 + v36;
  v43 = v46;
  sub_20E195B54(v42, v46, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  if ((*v41 != *v43 || v41[1] != v43[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E1494E0(v41[2], v43[2]) & 1) == 0)
  {
    sub_20E195C24(v43, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_20E195C24(v41, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    v22 = &qword_27C868708;
    v23 = &qword_20E33B700;
    goto LABEL_32;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v44 = sub_20E322850();
  sub_20E195C24(v43, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E195C24(v41, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E04875C(v38, &qword_27C868708, &qword_20E33B700);
  if (v44)
  {
    goto LABEL_21;
  }

LABEL_8:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoExternalAgentOutcomeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868000, &qword_20E33B0B8);
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  if ((sub_20E1494E0(*a1, *a2) & 1) == 0)
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
  sub_20E0486F4(v23 + v22, v20, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v48 + v22, &v20[v24], &qword_27C8639D0, &unk_20E33C230);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) != 1)
  {
    sub_20E0486F4(v20, v17, &qword_27C8639D0, &unk_20E33C230);
    if (v25(&v20[v24], 1, v11) != 1)
    {
      sub_20E195B54(&v20[v24], v14, type metadata accessor for TranscriptProtoStatementID);
      v29 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v17, v14);
      sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v20, &qword_27C8639D0, &unk_20E33C230);
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    v26 = &qword_27C867F30;
    v27 = &qword_20E33B000;
    v28 = v20;
LABEL_15:
    sub_20E04875C(v28, v26, v27);
    goto LABEL_16;
  }

  if (v25(&v20[v24], 1, v11) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v20, &qword_27C8639D0, &unk_20E33C230);
LABEL_9:
  v30 = *(v42 + 24);
  v31 = *(v9 + 48);
  v32 = v47;
  sub_20E0486F4(v43 + v30, v47, &qword_27C863BA8, &unk_20E345F00);
  sub_20E0486F4(v48 + v30, v32 + v31, &qword_27C863BA8, &unk_20E345F00);
  v33 = v46;
  v34 = *(v45 + 48);
  if (v34(v32, 1, v46) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      sub_20E04875C(v32, &qword_27C863BA8, &unk_20E345F00);
LABEL_19:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v36 = sub_20E322850();
      return v36 & 1;
    }

    goto LABEL_14;
  }

  v35 = v44;
  sub_20E0486F4(v32, v44, &qword_27C863BA8, &unk_20E345F00);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_14:
    v26 = &qword_27C868000;
    v27 = &qword_20E33B0B8;
    v28 = v32;
    goto LABEL_15;
  }

  v38 = v32 + v31;
  v39 = v41;
  sub_20E195B54(v38, v41, type metadata accessor for TranscriptProtoStatementOutcome);
  v40 = _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v35, v39);
  sub_20E195C24(v39, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E04875C(v32, &qword_27C863BA8, &unk_20E345F00);
  if (v40)
  {
    goto LABEL_19;
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoActionParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868648, &qword_20E33B658);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A0, &unk_20E33C250);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A8, &qword_20E33B6A0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C8686A0, &unk_20E33C250);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C8686A0, &unk_20E33C250);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C8686A0, &unk_20E33C250);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E195B54(&v19[v20], v12, type metadata accessor for TranscriptProtoToolParameterValue);
      v25 = _s23LighthouseDataProcessor33TranscriptProtoToolParameterValueV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoToolParameterValue);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoToolParameterValue);
      sub_20E04875C(v19, &qword_27C8686A0, &unk_20E33C250);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoToolParameterValue);
LABEL_6:
    v22 = &qword_27C8686A8;
    v23 = &qword_20E33B6A0;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C8686A0, &unk_20E33C250);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C863B58, &qword_20E323E68);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C863B58, &qword_20E323E68);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C863B58, &qword_20E323E68);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C863B58, &qword_20E323E68);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoPromptSelection);
LABEL_13:
    v22 = &qword_27C868648;
    v23 = &qword_20E33B658;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E195B54(v34, v37, type metadata accessor for TranscriptProtoPromptSelection);
  v36 = _s23LighthouseDataProcessor30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E195C24(v31, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E04875C(v28, &qword_27C863B58, &qword_20E323E68);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoUIConfirmationLabelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoParameterNotAllowedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = v7;
  v21 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v14 = *(v21 + 24);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C863B18, &qword_20E323EB0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v13, v10, &qword_27C863B18, &qword_20E323EB0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_8:
    sub_20E04875C(v13, &qword_27C867ED8, &qword_20E33AFA8);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v22;
  sub_20E195B54(&v13[v15], v22, type metadata accessor for ToolKitProtoTypedValue);
  v18 = static ToolKitProtoTypedValue.== infix(_:_:)(v10, v17);
  sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v13, &qword_27C863B18, &qword_20E323EB0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_20E322850();
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoParameterNeedsValueContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868470, &qword_20E33B4B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868478, &qword_20E33B4B8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C868470, &qword_20E33B4B0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C868470, &qword_20E33B4B0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C868470, &qword_20E33B4B0);
LABEL_9:
      type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C868470, &qword_20E33B4B0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868478, &qword_20E33B4B8);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  v18 = _s23LighthouseDataProcessor45TranscriptProtoParameterNeedsValueContextEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  sub_20E04875C(v14, &qword_27C868470, &qword_20E33B4B0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoParameterNeedsValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868488, &unk_20E33C310);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v42 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868490, &qword_20E33B4C8);
  MEMORY[0x28223BE20](v46);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = a1[1];
  v49 = a1;
  if ((v21 != *a2 || v22 != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v44 = v10;
  v42 = v6;
  v23 = a2;
  v43 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v24 = *(v43 + 20);
  v25 = *(v18 + 48);
  sub_20E0486F4(v49 + v24, v20, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(v23 + v24, &v20[v25], &qword_27C863C48, &qword_20E323F30);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) != 1)
  {
    sub_20E0486F4(v20, v17, &qword_27C863C48, &qword_20E323F30);
    if (v26(&v20[v25], 1, v11) != 1)
    {
      sub_20E195B54(&v20[v25], v14, type metadata accessor for ToolKitProtoTypeInstance);
      v30 = static ToolKitProtoTypeInstance.== infix(_:_:)(v17, v14);
      sub_20E195C24(v14, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v20, &qword_27C863C48, &qword_20E323F30);
      if ((v30 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_9:
    v27 = &qword_27C867E98;
    v28 = &qword_20E33AF70;
    v29 = v20;
LABEL_17:
    sub_20E04875C(v29, v27, v28);
    goto LABEL_18;
  }

  if (v26(&v20[v25], 1, v11) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v20, &qword_27C863C48, &qword_20E323F30);
LABEL_11:
  v31 = v44;
  v32 = *(v43 + 24);
  v33 = *(v46 + 48);
  sub_20E0486F4(v49 + v32, v44, &qword_27C868488, &unk_20E33C310);
  sub_20E0486F4(v23 + v32, v31 + v33, &qword_27C868488, &unk_20E33C310);
  v34 = v48;
  v35 = *(v47 + 48);
  if (v35(v31, 1, v48) == 1)
  {
    if (v35(v31 + v33, 1, v34) == 1)
    {
      sub_20E04875C(v31, &qword_27C868488, &unk_20E33C310);
LABEL_21:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v37 = sub_20E322850();
      return v37 & 1;
    }

    goto LABEL_16;
  }

  v36 = v45;
  sub_20E0486F4(v31, v45, &qword_27C868488, &unk_20E33C310);
  if (v35(v31 + v33, 1, v34) == 1)
  {
    sub_20E195C24(v36, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
LABEL_16:
    v27 = &qword_27C868490;
    v28 = &qword_20E33B4C8;
    v29 = v31;
    goto LABEL_17;
  }

  v39 = v31 + v33;
  v40 = v42;
  sub_20E195B54(v39, v42, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  v41 = _s23LighthouseDataProcessor41TranscriptProtoParameterNeedsValueContextV2eeoiySbAC_ACtFZ_0(v36, v40);
  sub_20E195C24(v40, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  sub_20E195C24(v36, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  sub_20E04875C(v31, &qword_27C868488, &unk_20E33C310);
  if (v41)
  {
    goto LABEL_21;
  }

LABEL_18:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoToolParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868028, &qword_20E33B0D8);
  MEMORY[0x28223BE20](v25);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868030, &unk_20E33C420);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868038, &qword_20E33B0E0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_20E0486F4(a1, &v24 - v14, &qword_27C868030, &unk_20E33C420);
  v27 = a2;
  sub_20E0486F4(a2, &v15[v16], &qword_27C868030, &unk_20E33C420);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_20E04875C(v15, &qword_27C868030, &unk_20E33C420);
LABEL_9:
      type metadata accessor for TranscriptProtoToolParameterValue(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_20E322850();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v15, v11, &qword_27C868030, &unk_20E33C420);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoToolParameterValueEnum);
LABEL_6:
    sub_20E04875C(v15, &qword_27C868038, &qword_20E33B0E0);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v24;
  sub_20E195B54(v19, v24, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  v21 = *(v25 + 48);
  sub_20E195BBC(v11, v5, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E195BBC(v20, v5 + v21, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  v22 = static ToolKitProtoTypedValue.== infix(_:_:)(v5, (v5 + v21));
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E195C24(v5 + v21, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v5, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E04875C(v15, &qword_27C868030, &unk_20E33C420);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoToolDisambiguationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[1] == a2[1] && v4 == v5;
    if (!v6 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_20E147778(*a1, *a2, type metadata accessor for ToolKitProtoToolDefinition.Version1, type metadata accessor for ToolKitProtoToolDefinition.Version1, static ToolKitProtoToolDefinition.Version1.== infix(_:_:), type metadata accessor for ToolKitProtoToolDefinition.Version1))
  {
    type metadata accessor for TranscriptProtoToolDisambiguation(0);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoPermissionRequirementV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
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
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor32TranscriptProtoActionRequirementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685A0, &qword_20E33B5C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865B80, &qword_20E3263A0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865B80, &qword_20E3263A0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865B80, &qword_20E3263A0);
LABEL_9:
      type metadata accessor for TranscriptProtoActionRequirement(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865B80, &qword_20E3263A0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionRequirementEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8685A0, &qword_20E33B5C0);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  v18 = _s23LighthouseDataProcessor36TranscriptProtoActionRequirementEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_20E04875C(v14, &qword_27C865B80, &qword_20E3263A0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoSearchExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoSearchExpression(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoRequestAmendmentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F00, &qword_20E33AFD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C867EF8, &qword_20E33AFC8);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C867EF8, &qword_20E33AFC8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C867EF8, &qword_20E33AFC8);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v13, v10, &qword_27C867EF8, &qword_20E33AFC8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContent);
LABEL_8:
    sub_20E04875C(v13, &qword_27C867F00, &qword_20E33AFD0);
    goto LABEL_9;
  }

  v18 = v21;
  sub_20E195B54(&v13[v15], v21, type metadata accessor for TranscriptProtoRequestContent);
  v19 = _s23LighthouseDataProcessor29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v10, v18);
  sub_20E195C24(v18, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E04875C(v13, &qword_27C867EF8, &qword_20E33AFC8);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868420, &qword_20E33B478);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_23;
  }

  v25 = v7;
  v26 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v14 = *(v26 + 24);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C868418, &unk_20E33C340);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C868418, &unk_20E33C340);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C868418, &unk_20E33C340);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = &v13[v15];
      v21 = v25;
      sub_20E195B54(v20, v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v22 = *v10 == *v21 && v10[1] == v21[1];
      if (v22 || (sub_20E322D60()) && v10[2] == v21[2])
      {
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v23 = sub_20E322850();
        sub_20E195C24(v21, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E04875C(v13, &qword_27C868418, &unk_20E33C340);
        if (v23)
        {
          goto LABEL_9;
        }

LABEL_23:
        v17 = 0;
        return v17 & 1;
      }

      sub_20E195C24(v21, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v18 = &qword_27C868418;
      v19 = &unk_20E33C340;
LABEL_22:
      sub_20E04875C(v13, v18, v19);
      goto LABEL_23;
    }

    sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_12:
    v18 = &qword_27C868420;
    v19 = &qword_20E33B478;
    goto LABEL_22;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_20E04875C(v13, &qword_27C868418, &unk_20E33C340);
LABEL_9:
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_20E322850();
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868428, &qword_20E33B480);
  MEMORY[0x28223BE20](v25);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868438, &qword_20E33B488);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_20E0486F4(a1, &v24 - v14, &qword_27C868430, &unk_20E33C330);
  v27 = a2;
  sub_20E0486F4(a2, &v15[v16], &qword_27C868430, &unk_20E33C330);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_20E04875C(v15, &qword_27C868430, &unk_20E33C330);
LABEL_9:
      type metadata accessor for TranscriptProtoPlanGenerationError(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_20E322850();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v15, v11, &qword_27C868430, &unk_20E33C330);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
LABEL_6:
    sub_20E04875C(v15, &qword_27C868438, &qword_20E33B488);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v24;
  sub_20E195B54(v19, v24, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  v21 = *(v25 + 48);
  sub_20E195BBC(v11, v5, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E195BBC(v20, v5 + v21, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  v22 = _s23LighthouseDataProcessor45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(v5, (v5 + v21));
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E195C24(v5 + v21, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E195C24(v5, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E04875C(v15, &qword_27C868430, &unk_20E33C330);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoRecoverableErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868448, &qword_20E33B498);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - v4;
  v6 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868450, &unk_20E33C320);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868458, &qword_20E33B4A0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  v26 = a1;
  sub_20E0486F4(a1, &v24 - v14, &qword_27C868450, &unk_20E33C320);
  v27 = a2;
  sub_20E0486F4(a2, &v15[v16], &qword_27C868450, &unk_20E33C320);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) == 1)
  {
    if (v17(&v15[v16], 1, v6) == 1)
    {
      sub_20E04875C(v15, &qword_27C868450, &unk_20E33C320);
LABEL_9:
      type metadata accessor for TranscriptProtoRecoverableError(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_20E322850();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v15, v11, &qword_27C868450, &unk_20E33C320);
  if (v17(&v15[v16], 1, v6) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
LABEL_6:
    sub_20E04875C(v15, &qword_27C868458, &qword_20E33B4A0);
    goto LABEL_7;
  }

  v19 = &v15[v16];
  v20 = v24;
  sub_20E195B54(v19, v24, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  v21 = *(v25 + 48);
  sub_20E195BBC(v11, v5, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E195BBC(v20, &v5[v21], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  v22 = _s23LighthouseDataProcessor34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(v5, &v5[v21]);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E195C24(&v5[v21], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E195C24(v5, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E04875C(v15, &qword_27C868450, &unk_20E33C320);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoQueryStepResultsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_20E152338(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v15 = *(StepResults + 24);
  v16 = *(v11 + 48);
  v21 = StepResults;
  v22 = a1;
  sub_20E0486F4(a1 + v15, v13, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v15, &v13[v16], &qword_27C8639D0, &unk_20E33C230);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C8639D0, &unk_20E33C230);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_20E195B54(&v13[v16], v7, type metadata accessor for TranscriptProtoStatementID);
      v20 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_20E04875C(v13, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_8;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
LABEL_11:
  if (v22[1] == a2[1] && v22[2] == a2[2] || (sub_20E322D60() & 1) != 0)
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v18 = sub_20E322850();
    return v18 & 1;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoPrefixExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
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
  sub_20E0486F4(&v15[v17], v13, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(&v16[v17], &v13[v18], &qword_27C8639D0, &unk_20E33C230);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v13, v10, &qword_27C8639D0, &unk_20E33C230);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_20E04875C(v13, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_8;
  }

  sub_20E195B54(&v13[v18], v7, type metadata accessor for TranscriptProtoStatementID);
  v22 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoPhotosCandidatesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[1] == a2[1] && v4 == v5;
    if (!v6 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_20E1484A4(*a1, *a2))
  {
    type metadata accessor for TranscriptProtoPhotosCandidates(0);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoUndoRedoRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_25;
  }

  v20 = *(a1 + 32);
  v21 = *(a2 + 32);
  if (v20)
  {
    if (!v21 || (*(a1 + 24) != *(a2 + 24) || v20 != v21) && (sub_20E322D60() & 1) == 0)
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
  sub_20E0486F4(a1 + v22, v19, &qword_27C8639D0, &unk_20E33C230);
  v41 = v23;
  sub_20E0486F4(a2 + v22, &v19[v23], &qword_27C8639D0, &unk_20E33C230);
  v24 = v5 + 48;
  v25 = *(v5 + 48);
  if (v25(v19, 1, v4) != 1)
  {
    sub_20E0486F4(v19, v13, &qword_27C8639D0, &unk_20E33C230);
    v26 = v41;
    if (v25(&v19[v41], 1, v4) != 1)
    {
      v37 = v24;
      v28 = v39;
      sub_20E195B54(&v19[v26], v39, type metadata accessor for TranscriptProtoStatementID);
      LODWORD(v41) = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v13, v28);
      sub_20E195C24(v28, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
      if ((v41 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
LABEL_16:
    v27 = v19;
LABEL_24:
    sub_20E04875C(v27, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_25;
  }

  if (v25(&v19[v41], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  v37 = v24;
  sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_18:
  v29 = *(v40 + 32);
  v30 = *(v14 + 48);
  sub_20E0486F4(a1 + v29, v17, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v29, &v17[v30], &qword_27C8639D0, &unk_20E33C230);
  if (v25(v17, 1, v4) == 1)
  {
    if (v25(&v17[v30], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
LABEL_28:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_23;
  }

  v31 = v38;
  sub_20E0486F4(v17, v38, &qword_27C8639D0, &unk_20E33C230);
  if (v25(&v17[v30], 1, v4) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoStatementID);
LABEL_23:
    v27 = v17;
    goto LABEL_24;
  }

  v34 = v39;
  sub_20E195B54(&v17[v30], v39, type metadata accessor for TranscriptProtoStatementID);
  v35 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v31, v34);
  sub_20E195C24(v34, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v31, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
  if (v35)
  {
    goto LABEL_28;
  }

LABEL_25:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor32TranscriptProtoResponseParameterV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
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
      sub_20E047C8C(a1[2], a1[3]);
      sub_20E047C8C(v8, v7);
      sub_20E047D10(v6, v5);
      goto LABEL_13;
    }

LABEL_10:
    sub_20E047C8C(a1[2], a1[3]);
    sub_20E047C8C(v8, v7);
    sub_20E047D10(v6, v5);
    sub_20E047D10(v8, v7);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_20E047C8C(a1[2], a1[3]);
  sub_20E047C8C(v8, v7);
  v10 = sub_20E15F7B0(v6, v5, v8, v7);
  sub_20E047D10(v8, v7);
  sub_20E047D10(v6, v5);
  if (!v10)
  {
    return 0;
  }

LABEL_13:
  v11 = a1[5];
  v12 = *(a2 + 40);
  if (v11)
  {
    if (!v12 || (a1[4] != *(a2 + 32) || v11 != v12) && (sub_20E322D60() & 1) == 0)
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
    if (!v16 || (a1[7] != *(a2 + 56) || v15 != v16) && (sub_20E322D60() & 1) == 0)
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
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v81 = type metadata accessor for TranscriptProtoUIType(0);
  v84 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868300, &unk_20E33C390);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v77 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868308, &qword_20E33B388);
  MEMORY[0x28223BE20](v80);
  v82 = &v77 - v8;
  v9 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868310, &qword_20E33B390);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = (&v77 - v12);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868318, &qword_20E33B398);
  MEMORY[0x28223BE20](v87);
  v14 = &v77 - v13;
  v15 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868320, &unk_20E33C380);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v77 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868328, &qword_20E33B3A0);
  MEMORY[0x28223BE20](v22);
  v24 = &v77 - v23;
  if ((sub_20E147778(*a1, *a2, type metadata accessor for TranscriptProtoResponseParameter, type metadata accessor for TranscriptProtoResponseParameter, _s23LighthouseDataProcessor32TranscriptProtoResponseParameterV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoResponseParameter) & 1) == 0)
  {
    goto LABEL_16;
  }

  v77 = v5;
  v25 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v90 = a2;
  v26 = *(v25 + 20);
  v27 = a1;
  v28 = *(v22 + 48);
  v78 = v27;
  v79 = v25;
  sub_20E0486F4(v27 + v26, v24, &qword_27C868320, &unk_20E33C380);
  sub_20E0486F4(v90 + v26, &v24[v28], &qword_27C868320, &unk_20E33C380);
  v29 = *(v16 + 48);
  if (v29(v24, 1, v15) == 1)
  {
    if (v29(&v24[v28], 1, v15) == 1)
    {
      sub_20E04875C(v24, &qword_27C868320, &unk_20E33C380);
      goto LABEL_9;
    }

LABEL_7:
    v30 = &qword_27C868328;
    v31 = &qword_20E33B3A0;
    v32 = v24;
LABEL_15:
    sub_20E04875C(v32, v30, v31);
    goto LABEL_16;
  }

  sub_20E0486F4(v24, v21, &qword_27C868320, &unk_20E33C380);
  if (v29(&v24[v28], 1, v15) == 1)
  {
    sub_20E195C24(v21, type metadata accessor for TranscriptProtoResponseDialog);
    goto LABEL_7;
  }

  sub_20E195B54(&v24[v28], v18, type metadata accessor for TranscriptProtoResponseDialog);
  v33 = _s23LighthouseDataProcessor29TranscriptProtoResponseDialogV2eeoiySbAC_ACtFZ_0(v21, v18);
  sub_20E195C24(v18, type metadata accessor for TranscriptProtoResponseDialog);
  sub_20E195C24(v21, type metadata accessor for TranscriptProtoResponseDialog);
  sub_20E04875C(v24, &qword_27C868320, &unk_20E33C380);
  if ((v33 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v34 = v78;
  v35 = v79;
  v36 = v79[6];
  v37 = *(v87 + 48);
  sub_20E0486F4(v78 + v36, v14, &qword_27C868310, &qword_20E33B390);
  v38 = v90 + v36;
  v39 = v90;
  sub_20E0486F4(v38, &v14[v37], &qword_27C868310, &qword_20E33B390);
  v40 = v89;
  v41 = *(v88 + 48);
  if (v41(v14, 1, v89) != 1)
  {
    v44 = v86;
    sub_20E0486F4(v14, v86, &qword_27C868310, &qword_20E33B390);
    v45 = v41(&v14[v37], 1, v40);
    v43 = v77;
    if (v45 != 1)
    {
      v48 = &v14[v37];
      v49 = v83;
      sub_20E195B54(v48, v83, type metadata accessor for TranscriptProtoResponseVisual);
      v50 = _s23LighthouseDataProcessor29TranscriptProtoResponseVisualV2eeoiySbAC_ACtFZ_0(v44, v49);
      sub_20E195C24(v49, type metadata accessor for TranscriptProtoResponseVisual);
      sub_20E195C24(v44, type metadata accessor for TranscriptProtoResponseVisual);
      sub_20E04875C(v14, &qword_27C868310, &qword_20E33B390);
      if ((v50 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_20E195C24(v44, type metadata accessor for TranscriptProtoResponseVisual);
    goto LABEL_14;
  }

  v42 = v41(&v14[v37], 1, v40);
  v43 = v77;
  if (v42 != 1)
  {
LABEL_14:
    v30 = &qword_27C868318;
    v31 = &qword_20E33B398;
    v32 = v14;
    goto LABEL_15;
  }

  sub_20E04875C(v14, &qword_27C868310, &qword_20E33B390);
LABEL_19:
  v51 = v35[7];
  v52 = (v34 + v51);
  v53 = *(v34 + v51 + 8);
  v54 = (v39 + v51);
  v55 = v54[1];
  if (v53)
  {
    v57 = v84;
    v56 = v85;
    if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v57 = v84;
    v56 = v85;
    if (v55)
    {
      goto LABEL_16;
    }
  }

  v58 = v35[8];
  v59 = (v34 + v58);
  v60 = *(v34 + v58 + 8);
  v61 = (v39 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (!v62 || (*v59 != *v61 || v60 != v62) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v62)
  {
    goto LABEL_16;
  }

  v63 = v35[9];
  v64 = *(v34 + v63);
  v65 = *(v39 + v63);
  if (v64 == 2)
  {
    if (v65 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v65 == 2 || ((v64 ^ v65) & 1) != 0)
  {
    goto LABEL_16;
  }

  v66 = v35[10];
  v67 = *(v34 + v66);
  v68 = *(v39 + v66);
  if (v67 == 2)
  {
    if (v68 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v68 == 2 || ((v68 ^ v67) & 1) != 0)
  {
    goto LABEL_16;
  }

  v69 = v35[11];
  v70 = *(v80 + 48);
  v71 = v82;
  sub_20E0486F4(v34 + v69, v82, &qword_27C868300, &unk_20E33C390);
  v72 = v71;
  sub_20E0486F4(v90 + v69, v71 + v70, &qword_27C868300, &unk_20E33C390);
  v73 = *(v57 + 48);
  v74 = v71;
  v75 = v81;
  if (v73(v74, 1, v81) == 1)
  {
    if (v73(v72 + v70, 1, v75) == 1)
    {
      sub_20E04875C(v72, &qword_27C868300, &unk_20E33C390);
LABEL_50:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v46 = sub_20E322850();
      return v46 & 1;
    }

    goto LABEL_48;
  }

  sub_20E0486F4(v72, v56, &qword_27C868300, &unk_20E33C390);
  if (v73(v72 + v70, 1, v75) == 1)
  {
    sub_20E195C24(v56, type metadata accessor for TranscriptProtoUIType);
LABEL_48:
    v30 = &qword_27C868308;
    v31 = &qword_20E33B388;
    v32 = v72;
    goto LABEL_15;
  }

  sub_20E195B54(v72 + v70, v43, type metadata accessor for TranscriptProtoUIType);
  v76 = _s23LighthouseDataProcessor21TranscriptProtoUITypeV2eeoiySbAC_ACtFZ_0(v56, v43);
  sub_20E195C24(v43, type metadata accessor for TranscriptProtoUIType);
  sub_20E195C24(v56, type metadata accessor for TranscriptProtoUIType);
  sub_20E04875C(v72, &qword_27C868300, &unk_20E33C390);
  if (v76)
  {
    goto LABEL_50;
  }

LABEL_16:
  v46 = 0;
  return v46 & 1;
}

uint64_t _s23LighthouseDataProcessor37TranscriptProtoStatementResultPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868640, &qword_20E33B650);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868000, &qword_20E33B0B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C863BA8, &unk_20E345F00);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C863BA8, &unk_20E345F00);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C863BA8, &unk_20E345F00);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E195B54(&v19[v20], v12, type metadata accessor for TranscriptProtoStatementOutcome);
      v25 = _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E04875C(v19, &qword_27C863BA8, &unk_20E345F00);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_6:
    v22 = &qword_27C868000;
    v23 = &qword_20E33B0B8;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C863BA8, &unk_20E345F00);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoStatementResultPayload(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C863B48, &unk_20E33C280);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C863B48, &unk_20E33C280);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C863B48, &unk_20E33C280);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C863B48, &unk_20E33C280);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_13:
    v22 = &qword_27C868640;
    v23 = &qword_20E33B650;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E195B54(v34, v37, type metadata accessor for TranscriptProtoResponseManifest);
  v36 = _s23LighthouseDataProcessor31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E195C24(v31, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E04875C(v28, &qword_27C863B48, &unk_20E33C280);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = (&v83 - v8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  MEMORY[0x28223BE20](v88);
  v10 = &v83 - v9;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v98 = *(v11 - 8);
  v99 = v11;
  MEMORY[0x28223BE20](v11);
  v95 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v91 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v83 - v17;
  MEMORY[0x28223BE20](v16);
  v96 = &v83 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
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
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v83 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868638, &qword_20E33B648);
  MEMORY[0x28223BE20](v31);
  v33 = &v83 - v32;
  v34 = a1[1];
  v35 = a2[1];
  if (v34)
  {
    if (!v35 || (*a1 != *a2 || v34 != v35) && (sub_20E322D60() & 1) == 0)
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
  sub_20E0486F4(a1 + v37, v33, &qword_27C863FB8, &unk_20E325F60);
  v39 = a2 + v37;
  v40 = a2;
  sub_20E0486F4(v39, &v33[v38], &qword_27C863FB8, &unk_20E325F60);
  v41 = *(v25 + 48);
  if (v41(v33, 1, v24) == 1)
  {
    if (v41(&v33[v38], 1, v24) == 1)
    {
      sub_20E04875C(v33, &qword_27C863FB8, &unk_20E325F60);
      goto LABEL_15;
    }

LABEL_13:
    v42 = &qword_27C868638;
    v43 = &qword_20E33B648;
    v44 = v33;
LABEL_33:
    sub_20E04875C(v44, v42, v43);
    goto LABEL_34;
  }

  sub_20E0486F4(v33, v30, &qword_27C863FB8, &unk_20E325F60);
  if (v41(&v33[v38], 1, v24) == 1)
  {
    sub_20E195C24(v30, type metadata accessor for TranscriptProtoStatementResultPayload);
    goto LABEL_13;
  }

  sub_20E195B54(&v33[v38], v27, type metadata accessor for TranscriptProtoStatementResultPayload);
  v45 = _s23LighthouseDataProcessor37TranscriptProtoStatementResultPayloadV2eeoiySbAC_ACtFZ_0(v30, v27);
  sub_20E195C24(v27, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_20E195C24(v30, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_20E04875C(v33, &qword_27C863FB8, &unk_20E325F60);
  if ((v45 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  v46 = v85;
  v47 = v86[6];
  v48 = *(v100 + 48);
  v49 = v97;
  sub_20E0486F4(v85 + v47, v97, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v40 + v47, v49 + v48, &qword_27C8639D0, &unk_20E33C230);
  v50 = v99;
  v51 = v98[6];
  if (v51(v49, 1, v99) == 1)
  {
    if (v51(v49 + v48, 1, v50) == 1)
    {
      v98 = v40;
      sub_20E04875C(v49, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v52 = v96;
  sub_20E0486F4(v49, v96, &qword_27C8639D0, &unk_20E33C230);
  if (v51(v49 + v48, 1, v50) == 1)
  {
    sub_20E195C24(v52, type metadata accessor for TranscriptProtoStatementID);
LABEL_20:
    v42 = &qword_27C867F30;
    v43 = &qword_20E33B000;
    v44 = v49;
    goto LABEL_33;
  }

  v98 = v40;
  v53 = v49 + v48;
  v54 = v95;
  sub_20E195B54(v53, v95, type metadata accessor for TranscriptProtoStatementID);
  v55 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v52, v54);
  sub_20E195C24(v54, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v52, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v49, &qword_27C8639D0, &unk_20E33C230);
  if ((v55 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  v56 = v86;
  v57 = v86[7];
  v58 = *(v100 + 48);
  v59 = v94;
  sub_20E0486F4(v46 + v57, v94, &qword_27C8639D0, &unk_20E33C230);
  v60 = v98;
  sub_20E0486F4(v98 + v57, v59 + v58, &qword_27C8639D0, &unk_20E33C230);
  if (v51(v59, 1, v50) == 1)
  {
    if (v51(v59 + v58, 1, v50) != 1)
    {
LABEL_32:
      v42 = &qword_27C867F30;
      v43 = &qword_20E33B000;
      v44 = v59;
      goto LABEL_33;
    }

    sub_20E04875C(v59, &qword_27C8639D0, &unk_20E33C230);
  }

  else
  {
    v61 = v93;
    sub_20E0486F4(v59, v93, &qword_27C8639D0, &unk_20E33C230);
    if (v51(v59 + v58, 1, v50) == 1)
    {
LABEL_31:
      sub_20E195C24(v61, type metadata accessor for TranscriptProtoStatementID);
      goto LABEL_32;
    }

    v62 = v59 + v58;
    v63 = v95;
    sub_20E195B54(v62, v95, type metadata accessor for TranscriptProtoStatementID);
    v64 = v59;
    v65 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v61, v63);
    sub_20E195C24(v63, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v61, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v64, &qword_27C8639D0, &unk_20E33C230);
    if ((v65 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v66 = v56[8];
  v67 = *(v100 + 48);
  v68 = v85;
  v59 = v92;
  sub_20E0486F4(v85 + v66, v92, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v60 + v66, v59 + v67, &qword_27C8639D0, &unk_20E33C230);
  if (v51(v59, 1, v50) != 1)
  {
    v61 = v91;
    sub_20E0486F4(v59, v91, &qword_27C8639D0, &unk_20E33C230);
    if (v51(v59 + v67, 1, v50) != 1)
    {
      v71 = v95;
      sub_20E195B54(v59 + v67, v95, type metadata accessor for TranscriptProtoStatementID);
      v72 = v59;
      v73 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v61, v71);
      sub_20E195C24(v71, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v61, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v72, &qword_27C8639D0, &unk_20E33C230);
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

  sub_20E04875C(v59, &qword_27C8639D0, &unk_20E33C230);
LABEL_37:
  v74 = v86[9];
  v75 = *(v88 + 48);
  v76 = v84;
  sub_20E0486F4(v68 + v74, v84, &qword_27C8639C8, &unk_20E323870);
  sub_20E0486F4(v60 + v74, v76 + v75, &qword_27C8639C8, &unk_20E323870);
  v77 = v90;
  v78 = *(v89 + 48);
  if (v78(v76, 1, v90) == 1)
  {
    if (v78(v76 + v75, 1, v77) == 1)
    {
      sub_20E04875C(v76, &qword_27C8639C8, &unk_20E323870);
LABEL_44:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v69 = sub_20E322850();
      return v69 & 1;
    }

    goto LABEL_42;
  }

  v79 = v87;
  sub_20E0486F4(v76, v87, &qword_27C8639C8, &unk_20E323870);
  if (v78(v76 + v75, 1, v77) == 1)
  {
    sub_20E195C24(v79, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_42:
    v42 = &qword_27C868040;
    v43 = &qword_20E33B0E8;
    v44 = v76;
    goto LABEL_33;
  }

  v80 = v76 + v75;
  v81 = v83;
  sub_20E195B54(v80, v83, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v82 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v79, v81);
  sub_20E195C24(v81, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195C24(v79, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E04875C(v76, &qword_27C8639C8, &unk_20E323870);
  if (v82)
  {
    goto LABEL_44;
  }

LABEL_34:
  v69 = 0;
  return v69 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoInfixExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
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
  sub_20E0486F4(&v21[v22], v19, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(&v40[v22], &v19[v23], &qword_27C8639D0, &unk_20E33C230);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) != 1)
  {
    sub_20E0486F4(v19, v13, &qword_27C8639D0, &unk_20E33C230);
    if (v24(&v19[v23], 1, v4) != 1)
    {
      v26 = v37;
      sub_20E195B54(&v19[v23], v37, type metadata accessor for TranscriptProtoStatementID);
      v27 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v13, v26);
      sub_20E195C24(v26, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    v25 = v19;
LABEL_15:
    sub_20E04875C(v25, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_16;
  }

  if (v24(&v19[v23], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
LABEL_9:
  v28 = *(v38 + 24);
  v29 = *(v14 + 48);
  sub_20E0486F4(&v39[v28], v17, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(&v40[v28], &v17[v29], &qword_27C8639D0, &unk_20E33C230);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v29], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
LABEL_19:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v31 = sub_20E322850();
      return v31 & 1;
    }

    goto LABEL_14;
  }

  v30 = v36;
  sub_20E0486F4(v17, v36, &qword_27C8639D0, &unk_20E33C230);
  if (v24(&v17[v29], 1, v4) == 1)
  {
    sub_20E195C24(v30, type metadata accessor for TranscriptProtoStatementID);
LABEL_14:
    v25 = v17;
    goto LABEL_15;
  }

  v33 = v37;
  sub_20E195B54(&v17[v29], v37, type metadata accessor for TranscriptProtoStatementID);
  v34 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v30, v33);
  sub_20E195C24(v33, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v30, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
  if (v34)
  {
    goto LABEL_19;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_20E170688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v35 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v14 = MEMORY[0x28223BE20](v13);
  v36 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = *(v16 + 48);
  v37 = a1;
  sub_20E0486F4(a1, &v33 - v17, &qword_27C8639D0, &unk_20E33C230);
  v38 = a2;
  sub_20E0486F4(a2, &v18[v19], &qword_27C8639D0, &unk_20E33C230);
  v20 = *(v6 + 48);
  if (v20(v18, 1, v5) != 1)
  {
    sub_20E0486F4(v18, v12, &qword_27C8639D0, &unk_20E33C230);
    if (v20(&v18[v19], 1, v5) != 1)
    {
      v22 = &v18[v19];
      v23 = v34;
      sub_20E195B54(v22, v34, type metadata accessor for TranscriptProtoStatementID);
      v24 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v23);
      sub_20E195C24(v23, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v21 = v18;
LABEL_14:
    sub_20E04875C(v21, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_15;
  }

  if (v20(&v18[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v25 = *(v35(0) + 20);
  v26 = *(v13 + 48);
  v27 = v36;
  sub_20E0486F4(v37 + v25, v36, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v38 + v25, v27 + v26, &qword_27C8639D0, &unk_20E33C230);
  if (v20(v27, 1, v5) == 1)
  {
    if (v20((v27 + v26), 1, v5) == 1)
    {
      sub_20E04875C(v27, &qword_27C8639D0, &unk_20E33C230);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v29 = sub_20E322850();
      return v29 & 1;
    }

    goto LABEL_13;
  }

  v28 = v33;
  sub_20E0486F4(v27, v33, &qword_27C8639D0, &unk_20E33C230);
  if (v20((v27 + v26), 1, v5) == 1)
  {
    sub_20E195C24(v28, type metadata accessor for TranscriptProtoStatementID);
LABEL_13:
    v21 = v27;
    goto LABEL_14;
  }

  v31 = v34;
  sub_20E195B54(v27 + v26, v34, type metadata accessor for TranscriptProtoStatementID);
  v32 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v28, v31);
  sub_20E195C24(v31, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v28, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v27, &qword_27C8639D0, &unk_20E33C230);
  if (v32)
  {
    goto LABEL_18;
  }

LABEL_15:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoDateTimeContextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_20E322150();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868780, &qword_20E33B758);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v24 = a1;
  v14 = *(v23 + 20);
  v15 = *(v11 + 56);
  sub_20E0486F4(a1 + v14, v13, &qword_27C868778, &unk_20E33C000);
  v25 = a2;
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C868778, &unk_20E33C000);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v9, &qword_27C868778, &unk_20E33C000);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      (*(v5 + 32))(v22, &v13[v15], v4);
      sub_20E195B0C(&qword_27C868788, MEMORY[0x277D21570], MEMORY[0x277D21578]);
      v19 = sub_20E322850();
      v20 = *(v5 + 8);
      v20(v18, v4);
      v20(v9, v4);
      sub_20E04875C(v13, &qword_27C868778, &unk_20E33C000);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_20E04875C(v13, &qword_27C868780, &qword_20E33B758);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v13, &qword_27C868778, &unk_20E33C000);
LABEL_9:
  if (*v24 == *v25 && v24[1] == v25[1] || (sub_20E322D60() & 1) != 0)
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_20E322850();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoVariableSetterV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_20E0486F4(a1 + v14, v13, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C863B18, &qword_20E323EB0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v13, v9, &qword_27C863B18, &qword_20E323EB0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_20E04875C(v13, &qword_27C867ED8, &qword_20E33AFA8);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_20E195B54(&v13[v15], v23, type metadata accessor for ToolKitProtoTypedValue);
  v18 = static ToolKitProtoTypedValue.== infix(_:_:)(v9, v17);
  sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v13, &qword_27C863B18, &qword_20E323EB0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E15CB48(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_20E322850();
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoToolResolutionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for TranscriptProtoStatementID(0);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v58 = &v53[-v8];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v9 = MEMORY[0x28223BE20](v60);
  v57 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v59 = &v53[-v11];
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FC8, &qword_20E33B088);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v53[-v21];
  v23 = *(v20 + 56);
  v62 = a1;
  sub_20E0486F4(a1, &v53[-v21], &qword_27C863B90, &unk_20E345EF0);
  v63 = a2;
  sub_20E0486F4(a2, &v22[v23], &qword_27C863B90, &unk_20E345EF0);
  v24 = *(v13 + 48);
  if (v24(v22, 1, v12) == 1)
  {
    if (v24(&v22[v23], 1, v12) == 1)
    {
      sub_20E04875C(v22, &qword_27C863B90, &unk_20E345EF0);
      goto LABEL_8;
    }

LABEL_6:
    v25 = &qword_27C867FC8;
    v26 = &qword_20E33B088;
    v27 = v22;
LABEL_21:
    sub_20E04875C(v27, v25, v26);
    goto LABEL_22;
  }

  sub_20E0486F4(v22, v18, &qword_27C863B90, &unk_20E345EF0);
  if (v24(&v22[v23], 1, v12) == 1)
  {
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    goto LABEL_6;
  }

  sub_20E195B54(&v22[v23], v15, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v28 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v18, v15);
  sub_20E195C24(v15, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E195C24(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E04875C(v22, &qword_27C863B90, &unk_20E345EF0);
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
  sub_20E0486F4(v62 + v30, v59, &qword_27C8639D0, &unk_20E33C230);
  v35 = v63;
  sub_20E0486F4(v63 + v30, &v31[v33], &qword_27C8639D0, &unk_20E33C230);
  v36 = v64 + 48;
  v37 = *(v64 + 48);
  v38 = v61;
  if (v37(v31, 1, v61) == 1)
  {
    if (v37(&v31[v33], 1, v38) != 1)
    {
LABEL_20:
      v25 = &qword_27C867F30;
      v26 = &qword_20E33B000;
      v27 = v31;
      goto LABEL_21;
    }

    v64 = v36;
    sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
LABEL_14:
    v43 = *(v29 + 24);
    v44 = *(v32 + 48);
    v45 = v57;
    sub_20E0486F4(v34 + v43, v57, &qword_27C8639D0, &unk_20E33C230);
    v46 = v35 + v43;
    v31 = v45;
    sub_20E0486F4(v46, &v45[v44], &qword_27C8639D0, &unk_20E33C230);
    if (v37(v45, 1, v38) == 1)
    {
      if (v37(&v45[v44], 1, v38) == 1)
      {
        sub_20E04875C(v45, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = sub_20E322850();
        return v49 & 1;
      }

      goto LABEL_20;
    }

    v47 = v45;
    v48 = v55;
    sub_20E0486F4(v47, v55, &qword_27C8639D0, &unk_20E33C230);
    if (v37(&v31[v44], 1, v38) == 1)
    {
      v40 = v48;
      goto LABEL_19;
    }

    v51 = v56;
    sub_20E195B54(&v31[v44], v56, type metadata accessor for TranscriptProtoStatementID);
    v52 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v48, v51);
    sub_20E195C24(v51, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v39 = v58;
  sub_20E0486F4(v31, v58, &qword_27C8639D0, &unk_20E33C230);
  if (v37(&v31[v33], 1, v38) == 1)
  {
    v40 = v39;
LABEL_19:
    sub_20E195C24(v40, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v64 = v36;
  v41 = &v31[v33];
  v42 = v56;
  sub_20E195B54(v41, v56, type metadata accessor for TranscriptProtoStatementID);
  v54 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v39, v42);
  sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v39, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
  if (v54)
  {
    goto LABEL_14;
  }

LABEL_22:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoActionConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868680, &unk_20E33C260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868688, &qword_20E33B688);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if ((sub_20E15BDA8(*a1, *a2) & 1) == 0)
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
  sub_20E0486F4(v15 + v17, v13, &qword_27C868680, &unk_20E33C260);
  sub_20E0486F4(v16 + v17, &v13[v18], &qword_27C868680, &unk_20E33C260);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C868680, &unk_20E33C260);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v13, v10, &qword_27C868680, &unk_20E33C260);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
LABEL_7:
    sub_20E04875C(v13, &qword_27C868688, &qword_20E33B688);
    goto LABEL_8;
  }

  sub_20E195B54(&v13[v18], v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  v22 = _s23LighthouseDataProcessor44TranscriptProtoActionConfirmationSystemStyleV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_20E04875C(v13, &qword_27C868680, &unk_20E33C260);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868498, &qword_20E33B4D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863BA0, &unk_20E325F20);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863BA0, &unk_20E325F20);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
LABEL_9:
      type metadata accessor for TranscriptProtoStatementOutcome(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863BA0, &unk_20E325F20);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868498, &qword_20E33B4D0);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  v18 = _s23LighthouseDataProcessor35TranscriptProtoStatementOutcomeEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_20E04875C(v14, &qword_27C863BA0, &unk_20E325F20);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoInterpretedStatementResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v75 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v77 = &v75 - v10;
  MEMORY[0x28223BE20](v9);
  v80 = &v75 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
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
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868000, &qword_20E33B0B8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v75 - v26;
  v28 = *(v25 + 56);
  v85 = a1;
  sub_20E0486F4(a1, &v75 - v26, &qword_27C863BA8, &unk_20E345F00);
  v84 = a2;
  sub_20E0486F4(a2, &v27[v28], &qword_27C863BA8, &unk_20E345F00);
  v29 = *(v18 + 48);
  if (v29(v27, 1, v17) == 1)
  {
    if (v29(&v27[v28], 1, v17) == 1)
    {
      sub_20E04875C(v27, &qword_27C863BA8, &unk_20E345F00);
      goto LABEL_9;
    }

LABEL_6:
    v30 = &qword_27C868000;
    v31 = &qword_20E33B0B8;
LABEL_7:
    v32 = v27;
LABEL_15:
    sub_20E04875C(v32, v30, v31);
    goto LABEL_16;
  }

  sub_20E0486F4(v27, v23, &qword_27C863BA8, &unk_20E345F00);
  if (v29(&v27[v28], 1, v17) == 1)
  {
    sub_20E195C24(v23, type metadata accessor for TranscriptProtoStatementOutcome);
    goto LABEL_6;
  }

  sub_20E195B54(&v27[v28], v20, type metadata accessor for TranscriptProtoStatementOutcome);
  v33 = _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v23, v20);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E195C24(v23, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E04875C(v27, &qword_27C863BA8, &unk_20E345F00);
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
  sub_20E0486F4(v85 + v35, v81, &qword_27C8639D0, &unk_20E33C230);
  v39 = v84;
  sub_20E0486F4(v84 + v35, v38 + v37, &qword_27C8639D0, &unk_20E33C230);
  v40 = v83;
  v41 = *(v82 + 6);
  if (v41(v38, 1, v83) == 1)
  {
    if (v41((v38 + v37), 1, v40) == 1)
    {
      v82 = v41;
      sub_20E04875C(v38, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_19;
    }

LABEL_14:
    v30 = &qword_27C867F30;
    v31 = &qword_20E33B000;
    v32 = v38;
    goto LABEL_15;
  }

  v42 = v80;
  sub_20E0486F4(v38, v80, &qword_27C8639D0, &unk_20E33C230);
  if (v41((v38 + v37), 1, v40) == 1)
  {
    sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_14;
  }

  v82 = v41;
  v45 = v38 + v37;
  v46 = v78;
  sub_20E195B54(v45, v78, type metadata accessor for TranscriptProtoStatementID);
  v47 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v42, v46);
  sub_20E195C24(v46, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v38, &qword_27C8639D0, &unk_20E33C230);
  if ((v47 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v81 = v34;
  v48 = *(v34 + 24);
  v49 = *(v86 + 48);
  v27 = v79;
  sub_20E0486F4(v36 + v48, v79, &qword_27C8639D0, &unk_20E33C230);
  v50 = v39;
  sub_20E0486F4(v39 + v48, &v27[v49], &qword_27C8639D0, &unk_20E33C230);
  v51 = v82;
  if (v82(v27, 1, v40) != 1)
  {
    v52 = v77;
    sub_20E0486F4(v27, v77, &qword_27C8639D0, &unk_20E33C230);
    if (v51(&v27[v49], 1, v40) != 1)
    {
      v53 = &v27[v49];
      v54 = v78;
      sub_20E195B54(v53, v78, type metadata accessor for TranscriptProtoStatementID);
      v55 = v27;
      v56 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v52, v54);
      sub_20E195C24(v54, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v52, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v55, &qword_27C8639D0, &unk_20E33C230);
      if ((v56 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    sub_20E195C24(v52, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_24;
  }

  if (v51(&v27[v49], 1, v40) != 1)
  {
LABEL_24:
    v30 = &qword_27C867F30;
    v31 = &qword_20E33B000;
    goto LABEL_7;
  }

  sub_20E04875C(v27, &qword_27C8639D0, &unk_20E33C230);
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
    if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_20E322D60() & 1) == 0)
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
    if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_20E322D60() & 1) == 0)
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
  sub_20E0486F4(v59 + v69, v76, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v50 + v69, v71 + v70, &qword_27C8639D0, &unk_20E33C230);
  if (v51(v71, 1, v40) == 1)
  {
    if (v51((v71 + v70), 1, v40) == 1)
    {
      sub_20E04875C(v71, &qword_27C8639D0, &unk_20E33C230);
LABEL_47:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = sub_20E322850();
      return v43 & 1;
    }

    goto LABEL_45;
  }

  v72 = v75;
  sub_20E0486F4(v71, v75, &qword_27C8639D0, &unk_20E33C230);
  if (v51((v71 + v70), 1, v40) == 1)
  {
    sub_20E195C24(v72, type metadata accessor for TranscriptProtoStatementID);
LABEL_45:
    v30 = &qword_27C867F30;
    v31 = &qword_20E33B000;
    v32 = v71;
    goto LABEL_15;
  }

  v73 = v78;
  sub_20E195B54(v71 + v70, v78, type metadata accessor for TranscriptProtoStatementID);
  v74 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v72, v73);
  sub_20E195C24(v73, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v72, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v71, &qword_27C8639D0, &unk_20E33C230);
  if (v74)
  {
    goto LABEL_47;
  }

LABEL_16:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoSystemResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868008, &qword_20E33B0C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868010, &qword_20E33B0C8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v29 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v30 = a1;
  v14 = *(v29 + 20);
  v15 = *(v11 + 56);
  sub_20E0486F4(a1 + v14, v13, &qword_27C868008, &qword_20E33B0C0);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C868008, &qword_20E33B0C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v9, &qword_27C868008, &qword_20E33B0C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v28;
      sub_20E195B54(&v13[v15], v28, type metadata accessor for TranscriptProtoResponseOutput);
      v20 = _s23LighthouseDataProcessor29TranscriptProtoResponseOutputV2eeoiySbAC_ACtFZ_0(v9, v19);
      sub_20E195C24(v19, type metadata accessor for TranscriptProtoResponseOutput);
      sub_20E195C24(v9, type metadata accessor for TranscriptProtoResponseOutput);
      sub_20E04875C(v13, &qword_27C868008, &qword_20E33B0C0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_20E195C24(v9, type metadata accessor for TranscriptProtoResponseOutput);
LABEL_6:
    sub_20E04875C(v13, &qword_27C868010, &qword_20E33B0C8);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v13, &qword_27C868008, &qword_20E33B0C0);
LABEL_10:
  v21 = v30;
  v22 = *(v29 + 24);
  v23 = (v30 + v22);
  v24 = *(v30 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  if (sub_20E147778(*v21, *a2, type metadata accessor for TranscriptProtoInterpretedStatementResult, type metadata accessor for TranscriptProtoInterpretedStatementResult, _s23LighthouseDataProcessor41TranscriptProtoInterpretedStatementResultV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoInterpretedStatementResult))
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_20E322850();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoResponseVisualV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682E8, &qword_20E33B378);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682F0, &qword_20E33B380);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if ((sub_20E153BA4(*a1, *a2) & 1) == 0 || (sub_20E1540D0(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v14 = *(v24 + 24);
  v15 = a1;
  v16 = *(v11 + 48);
  v23[1] = v15;
  sub_20E0486F4(v15 + v14, v13, &qword_27C8682E8, &qword_20E33B378);
  v23[2] = a2;
  sub_20E0486F4(a2 + v14, &v13[v16], &qword_27C8682E8, &qword_20E33B378);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C8682E8, &qword_20E33B378);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_20E195B54(&v13[v16], v7, type metadata accessor for TranscriptProtoResponseVisualOptions);
      if (*v10 == *v7)
      {
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_20E322850();
        sub_20E195C24(v7, type metadata accessor for TranscriptProtoResponseVisualOptions);
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoResponseVisualOptions);
        sub_20E04875C(v13, &qword_27C8682E8, &qword_20E33B378);
        if (v22)
        {
          goto LABEL_6;
        }

LABEL_11:
        v18 = 0;
        return v18 & 1;
      }

      sub_20E195C24(v7, type metadata accessor for TranscriptProtoResponseVisualOptions);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoResponseVisualOptions);
      v19 = &qword_27C8682E8;
      v20 = &qword_20E33B378;
LABEL_10:
      sub_20E04875C(v13, v19, v20);
      goto LABEL_11;
    }

    sub_20E195C24(v10, type metadata accessor for TranscriptProtoResponseVisualOptions);
LABEL_9:
    v19 = &qword_27C8682F0;
    v20 = &qword_20E33B380;
    goto LABEL_10;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v13, &qword_27C8682E8, &qword_20E33B378);
LABEL_6:
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v18 = sub_20E322850();
  return v18 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoResponseOutputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868398, &qword_20E33B408);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = &v77 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683A0, &qword_20E33B410);
  MEMORY[0x28223BE20](v84);
  v10 = &v77 - v9;
  v11 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v83 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683A8, &unk_20E33C360);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = &v77 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683B0, &qword_20E33B418);
  MEMORY[0x28223BE20](v88);
  v91 = &v77 - v15;
  v16 = type metadata accessor for TranscriptProtoDialogType(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v93 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683B8, &qword_20E33B420);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v92 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683C0, &qword_20E33B428);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v77 - v28;
  if ((sub_20E154880(*a1, *a2) & 1) == 0)
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
  sub_20E0486F4(a1 + v31, v29, &qword_27C8683B8, &qword_20E33B420);
  sub_20E0486F4(v94 + v31, &v29[v32], &qword_27C8683B8, &qword_20E33B420);
  v33 = *(v17 + 48);
  if (v33(v29, 1, v16) == 1)
  {
    if (v33(&v29[v32], 1, v16) == 1)
    {
      sub_20E04875C(v29, &qword_27C8683B8, &qword_20E33B420);
      goto LABEL_9;
    }

LABEL_7:
    v34 = &qword_27C8683C0;
    v35 = &qword_20E33B428;
    v36 = v29;
LABEL_15:
    sub_20E04875C(v36, v34, v35);
    goto LABEL_16;
  }

  sub_20E0486F4(v29, v23, &qword_27C8683B8, &qword_20E33B420);
  if (v33(&v29[v32], 1, v16) == 1)
  {
    sub_20E195C24(v23, type metadata accessor for TranscriptProtoDialogType);
    goto LABEL_7;
  }

  v37 = &v29[v32];
  v38 = v93;
  sub_20E195B54(v37, v93, type metadata accessor for TranscriptProtoDialogType);
  v39 = _s23LighthouseDataProcessor25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(v23, v38);
  sub_20E195C24(v38, type metadata accessor for TranscriptProtoDialogType);
  sub_20E195C24(v23, type metadata accessor for TranscriptProtoDialogType);
  sub_20E04875C(v29, &qword_27C8683B8, &qword_20E33B420);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v40 = v79;
  v41 = v79[8];
  v42 = *(v24 + 48);
  v43 = v81;
  sub_20E0486F4(v81 + v41, v27, &qword_27C8683B8, &qword_20E33B420);
  v44 = v94 + v41;
  v45 = v94;
  sub_20E0486F4(v44, &v27[v42], &qword_27C8683B8, &qword_20E33B420);
  if (v33(v27, 1, v16) == 1)
  {
    v46 = v33(&v27[v42], 1, v16);
    v47 = v80;
    if (v46 == 1)
    {
      sub_20E04875C(v27, &qword_27C8683B8, &qword_20E33B420);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v48 = v92;
  sub_20E0486F4(v27, v92, &qword_27C8683B8, &qword_20E33B420);
  v49 = v33(&v27[v42], 1, v16);
  v47 = v80;
  if (v49 == 1)
  {
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoDialogType);
LABEL_14:
    v34 = &qword_27C8683C0;
    v35 = &qword_20E33B428;
    v36 = v27;
    goto LABEL_15;
  }

  v52 = &v27[v42];
  v53 = v93;
  sub_20E195B54(v52, v93, type metadata accessor for TranscriptProtoDialogType);
  v54 = _s23LighthouseDataProcessor25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(v48, v53);
  sub_20E195C24(v53, type metadata accessor for TranscriptProtoDialogType);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoDialogType);
  sub_20E04875C(v27, &qword_27C8683B8, &qword_20E33B420);
  if ((v54 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*(v43 + 8) != *(v45 + 8) || (sub_20E14A924(v43[2], v45[2]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v55 = v40[9];
  v56 = *(v88 + 48);
  v57 = v91;
  sub_20E0486F4(v43 + v55, v91, &qword_27C8683A8, &unk_20E33C360);
  sub_20E0486F4(v45 + v55, v57 + v56, &qword_27C8683A8, &unk_20E33C360);
  v58 = v90;
  v59 = *(v89 + 48);
  if (v59(v57, 1, v90) == 1)
  {
    if (v59(v57 + v56, 1, v58) == 1)
    {
      sub_20E04875C(v57, &qword_27C8683A8, &unk_20E33C360);
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v64 = v87;
  sub_20E0486F4(v57, v87, &qword_27C8683A8, &unk_20E33C360);
  if (v59(v57 + v56, 1, v58) == 1)
  {
    sub_20E195C24(v64, type metadata accessor for TranscriptProtoVisualOutputOptions);
LABEL_29:
    v34 = &qword_27C8683B0;
    v35 = &qword_20E33B418;
LABEL_30:
    v36 = v57;
    goto LABEL_15;
  }

  v65 = v57 + v56;
  v66 = v83;
  sub_20E195B54(v65, v83, type metadata accessor for TranscriptProtoVisualOutputOptions);
  if (*v64 != *v66)
  {
    sub_20E195C24(v66, type metadata accessor for TranscriptProtoVisualOutputOptions);
    sub_20E195C24(v64, type metadata accessor for TranscriptProtoVisualOutputOptions);
    v34 = &qword_27C8683A8;
    v35 = &unk_20E33C360;
    goto LABEL_30;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v68 = sub_20E322850();
  sub_20E195C24(v66, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_20E195C24(v64, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_20E04875C(v57, &qword_27C8683A8, &unk_20E33C360);
  if ((v68 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  v60 = v40[10];
  v61 = *(v84 + 48);
  sub_20E0486F4(v43 + v60, v47, &qword_27C868398, &qword_20E33B408);
  sub_20E0486F4(v45 + v60, v47 + v61, &qword_27C868398, &qword_20E33B408);
  v62 = v86;
  v63 = *(v85 + 48);
  if (v63(v47, 1, v86) != 1)
  {
    v67 = v82;
    sub_20E0486F4(v47, v82, &qword_27C868398, &qword_20E33B408);
    if (v63(v47 + v61, 1, v62) != 1)
    {
      v69 = v47 + v61;
      v70 = v78;
      sub_20E195B54(v69, v78, type metadata accessor for TranscriptProtoVisualOutput);
      v71 = _s23LighthouseDataProcessor27TranscriptProtoVisualOutputV2eeoiySbAC_ACtFZ_0(v67, v70);
      sub_20E195C24(v70, type metadata accessor for TranscriptProtoVisualOutput);
      sub_20E195C24(v67, type metadata accessor for TranscriptProtoVisualOutput);
      sub_20E04875C(v47, &qword_27C868398, &qword_20E33B408);
      if ((v71 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

    sub_20E195C24(v67, type metadata accessor for TranscriptProtoVisualOutput);
    goto LABEL_35;
  }

  if (v63(v47 + v61, 1, v62) != 1)
  {
LABEL_35:
    v34 = &qword_27C8683A0;
    v35 = &qword_20E33B410;
    v36 = v47;
    goto LABEL_15;
  }

  sub_20E04875C(v47, &qword_27C868398, &qword_20E33B408);
LABEL_39:
  v72 = v40[11];
  v73 = (v43 + v72);
  v74 = *(v43 + v72 + 8);
  v75 = (v45 + v72);
  v76 = v75[1];
  if (v74)
  {
    if (v76 && (*v73 == *v75 && v74 == v76 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_46;
    }
  }

  else if (!v76)
  {
LABEL_46:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v50 = sub_20E322850();
    return v50 & 1;
  }

LABEL_16:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoResponseDialogV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
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
    if (!v7 && (sub_20E322D60() & 1) == 0)
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
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_20E322D60() & 1) == 0)
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
    if (v11 && (a1[6] == a2[6] && v10 == v11 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_27;
    }
  }

  else if (!v11)
  {
LABEL_27:
    type metadata accessor for TranscriptProtoResponseDialog(0);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoPickExpressionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for TranscriptProtoPickExpression(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_20E0486F4(a1 + v14, v13, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C8639D0, &unk_20E33C230);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v13, v9, &qword_27C8639D0, &unk_20E33C230);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v9, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_20E04875C(v13, &qword_27C867F30, &qword_20E33B000);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_20E195B54(&v13[v15], v23, type metadata accessor for TranscriptProtoStatementID);
  v18 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v9, v17);
  sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v9, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *a2)
  {
    goto LABEL_10;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_20E322850();
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
LABEL_3:
      type metadata accessor for TranscriptProtoPromptSelection(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_20E322850() & 1;
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

uint64_t _s23LighthouseDataProcessor29TranscriptProtoParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = (&v37 - v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868648, &qword_20E33B658);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v37 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C863B18, &qword_20E323EB0);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C863B18, &qword_20E323EB0);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C863B18, &qword_20E323EB0);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E195B54(&v19[v20], v12, type metadata accessor for ToolKitProtoTypedValue);
      v25 = static ToolKitProtoTypedValue.== infix(_:_:)(v15, v12);
      sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195C24(v15, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E04875C(v19, &qword_27C863B18, &qword_20E323EB0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v15, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    v22 = &qword_27C867ED8;
    v23 = &qword_20E33AFA8;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C863B18, &qword_20E323EB0);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C863B58, &qword_20E323E68);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C863B58, &qword_20E323E68);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C863B58, &qword_20E323E68);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C863B58, &qword_20E323E68);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoPromptSelection);
LABEL_13:
    v22 = &qword_27C868648;
    v23 = &qword_20E33B658;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E195B54(v34, v37, type metadata accessor for TranscriptProtoPromptSelection);
  v36 = _s23LighthouseDataProcessor30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E195C24(v31, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E04875C(v28, &qword_27C863B58, &qword_20E323E68);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoGenderSettingsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoFollowUpActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868518, &unk_20E33C300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868520, &qword_20E33B550);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C868518, &unk_20E33C300);
  sub_20E0486F4(a2, &v14[v15], &qword_27C868518, &unk_20E33C300);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C868518, &unk_20E33C300);
LABEL_9:
      type metadata accessor for TranscriptProtoFollowUpAction(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C868518, &unk_20E33C300);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868520, &qword_20E33B550);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  v18 = _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableH0V2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_20E04875C(v14, &qword_27C868518, &unk_20E33C300);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoCallExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if ((sub_20E15AFBC(*a1, *a2) & 1) == 0)
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
  sub_20E0486F4(v15 + v17, v13, &qword_27C8639C8, &unk_20E323870);
  sub_20E0486F4(v16 + v17, &v13[v18], &qword_27C8639C8, &unk_20E323870);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C8639C8, &unk_20E323870);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v13, v10, &qword_27C8639C8, &unk_20E323870);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_7:
    sub_20E04875C(v13, &qword_27C868040, &qword_20E33B0E8);
    goto LABEL_8;
  }

  sub_20E195B54(&v13[v18], v7, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v22 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E04875C(v13, &qword_27C8639C8, &unk_20E323870);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoSpeechPackageV5TokenV2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 2) != *(a2 + 16) || a1[3] != *(a2 + 24) || a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoSnippetStreamV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863B18, &qword_20E323EB0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863B18, &qword_20E323EB0);
LABEL_9:
      type metadata accessor for TranscriptProtoSnippetStream(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863B18, &qword_20E323EB0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867ED8, &qword_20E33AFA8);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for ToolKitProtoTypedValue);
  v18 = static ToolKitProtoTypedValue.== infix(_:_:)(v10, v7);
  sub_20E195C24(v7, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v14, &qword_27C863B18, &qword_20E323EB0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20E175890(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v22 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_20E0486F4(a1, &v21 - v14, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2, &v15[v16], &qword_27C8639D0, &unk_20E33C230);
  v17 = *(v6 + 48);
  if (v17(v15, 1, v5) == 1)
  {
    if (v17(&v15[v16], 1, v5) == 1)
    {
      sub_20E04875C(v15, &qword_27C8639D0, &unk_20E33C230);
LABEL_9:
      v22(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_20E322850();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v15, v11, &qword_27C8639D0, &unk_20E33C230);
  if (v17(&v15[v16], 1, v5) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_20E04875C(v15, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_7;
  }

  sub_20E195B54(&v15[v16], v8, type metadata accessor for TranscriptProtoStatementID);
  v19 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v11, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v15, &qword_27C8639D0, &unk_20E33C230);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoShimParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868610, &qword_20E33B620);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865B18, &qword_20E326398);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865B18, &qword_20E326398);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865B18, &qword_20E326398);
LABEL_9:
      type metadata accessor for TranscriptProtoShimParameter(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865B18, &qword_20E326398);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoShimParameterEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868610, &qword_20E33B620);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  v18 = _s23LighthouseDataProcessor32TranscriptProtoShimParameterEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_20E04875C(v14, &qword_27C865B18, &qword_20E326398);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoExecutorErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685C8, &qword_20E33B5E8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863EC8, &unk_20E359E90);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863EC8, &unk_20E359E90);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863EC8, &unk_20E359E90);
LABEL_9:
      type metadata accessor for TranscriptProtoExecutorError(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863EC8, &unk_20E359E90);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoExecutorErrorEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8685C8, &qword_20E33B5E8);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  v18 = _s23LighthouseDataProcessor32TranscriptProtoExecutorErrorEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_20E04875C(v14, &qword_27C863EC8, &unk_20E359E90);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoDeviceDetailsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FD0, &unk_20E33C450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FD8, &qword_20E33B090);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = v7;
  v25 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v14 = *(v25 + 20);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C867FD0, &unk_20E33C450);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C867FD0, &unk_20E33C450);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C867FD0, &unk_20E33C450);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = &v13[v15];
      v22 = v24;
      sub_20E195B54(v21, v24, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      if (*v10 == *v22)
      {
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v23 = sub_20E322850();
        sub_20E195C24(v22, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
        sub_20E04875C(v13, &qword_27C867FD0, &unk_20E33C450);
        if (v23)
        {
          goto LABEL_6;
        }

LABEL_11:
        v17 = 0;
        return v17 & 1;
      }

      sub_20E195C24(v22, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      v18 = &qword_27C867FD0;
      v19 = &unk_20E33C450;
LABEL_10:
      sub_20E04875C(v13, v18, v19);
      goto LABEL_11;
    }

    sub_20E195C24(v10, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
LABEL_9:
    v18 = &qword_27C867FD8;
    v19 = &qword_20E33B090;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v13, &qword_27C867FD0, &unk_20E33C450);
LABEL_6:
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = sub_20E322850();
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoActionSuccessV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v95 = a2;
  v96 = a1;
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  v77 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v76 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v79);
  v82 = &v76 - v6;
  v7 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v76 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868530, &qword_20E33B560);
  MEMORY[0x28223BE20](v85);
  v88 = &v76 - v11;
  v12 = type metadata accessor for TranscriptProtoUndoContext(0);
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12);
  v89 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868538, &unk_20E33C2F0);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = (&v76 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868540, &qword_20E33B568);
  MEMORY[0x28223BE20](v16);
  v93 = &v76 - v17;
  v18 = type metadata accessor for ToolKitProtoTypedValue(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = (&v76 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  v94 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v29 = *(v94 + 24);
  v30 = *(v26 + 56);
  sub_20E0486F4(&v96[v29], v28, &qword_27C863B18, &qword_20E323EB0);
  v31 = &v95[v29];
  v32 = v95;
  sub_20E0486F4(v31, &v28[v30], &qword_27C863B18, &qword_20E323EB0);
  v33 = *(v19 + 48);
  if (v33(v28, 1, v18) == 1)
  {
    if (v33(&v28[v30], 1, v18) == 1)
    {
      sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &qword_27C867ED8;
    v35 = &qword_20E33AFA8;
LABEL_30:
    v53 = v28;
LABEL_31:
    sub_20E04875C(v53, v34, v35);
    goto LABEL_32;
  }

  sub_20E0486F4(v28, v24, &qword_27C863B18, &qword_20E323EB0);
  if (v33(&v28[v30], 1, v18) == 1)
  {
    sub_20E195C24(v24, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_20E195B54(&v28[v30], v21, type metadata accessor for ToolKitProtoTypedValue);
  v36 = static ToolKitProtoTypedValue.== infix(_:_:)(v24, v21);
  sub_20E195C24(v21, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v24, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
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
  sub_20E0486F4(&v96[v38], v93, &qword_27C868538, &unk_20E33C2F0);
  sub_20E0486F4(&v32[v38], &v28[v39], &qword_27C868538, &unk_20E33C2F0);
  v41 = v92;
  v42 = *(v91 + 48);
  if (v42(v28, 1, v92) == 1)
  {
    if (v42(&v28[v39], 1, v41) == 1)
    {
      sub_20E04875C(v28, &qword_27C868538, &unk_20E33C2F0);
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v50 = v90;
  sub_20E0486F4(v28, v90, &qword_27C868538, &unk_20E33C2F0);
  if (v42(&v28[v39], 1, v41) == 1)
  {
    sub_20E195C24(v50, type metadata accessor for TranscriptProtoUndoContext);
LABEL_17:
    v34 = &qword_27C868540;
    v35 = &qword_20E33B568;
    goto LABEL_30;
  }

  v51 = v89;
  sub_20E195B54(&v28[v39], v89, type metadata accessor for TranscriptProtoUndoContext);
  if ((*v50 != *v51 || v50[1] != v51[1]) && (sub_20E322D60() & 1) == 0 || (v50[2] != v51[2] || v50[3] != v51[3]) && (sub_20E322D60() & 1) == 0 || (v50[4] != v51[4] || v50[5] != v51[5]) && (sub_20E322D60() & 1) == 0)
  {
    sub_20E195C24(v51, type metadata accessor for TranscriptProtoUndoContext);
    sub_20E195C24(v50, type metadata accessor for TranscriptProtoUndoContext);
    v34 = &qword_27C868538;
    v35 = &unk_20E33C2F0;
    goto LABEL_30;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v52 = sub_20E322850();
  sub_20E195C24(v51, type metadata accessor for TranscriptProtoUndoContext);
  sub_20E195C24(v50, type metadata accessor for TranscriptProtoUndoContext);
  sub_20E04875C(v28, &qword_27C868538, &unk_20E33C2F0);
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
  sub_20E0486F4(&v40[v43], v88, &qword_27C868528, &qword_20E33B558);
  v46 = &v32[v43];
  v47 = v45;
  sub_20E0486F4(v46, v45 + v44, &qword_27C868528, &qword_20E33B558);
  v48 = v87;
  v49 = *(v86 + 48);
  if (v49(v45, 1, v87) != 1)
  {
    v56 = v84;
    sub_20E0486F4(v47, v84, &qword_27C868528, &qword_20E33B558);
    if (v49(v47 + v44, 1, v48) != 1)
    {
      v57 = v47 + v44;
      v58 = v83;
      sub_20E195B54(v57, v83, type metadata accessor for TranscriptProtoFollowUpAction);
      v59 = _s23LighthouseDataProcessor29TranscriptProtoFollowUpActionV2eeoiySbAC_ACtFZ_0(v56, v58);
      sub_20E195C24(v58, type metadata accessor for TranscriptProtoFollowUpAction);
      sub_20E195C24(v56, type metadata accessor for TranscriptProtoFollowUpAction);
      sub_20E04875C(v47, &qword_27C868528, &qword_20E33B558);
      if ((v59 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    sub_20E195C24(v56, type metadata accessor for TranscriptProtoFollowUpAction);
    goto LABEL_36;
  }

  if (v49(v45 + v44, 1, v48) != 1)
  {
LABEL_36:
    v34 = &qword_27C868530;
    v35 = &qword_20E33B560;
    v53 = v47;
    goto LABEL_31;
  }

  sub_20E04875C(v45, &qword_27C868528, &qword_20E33B558);
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
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_20E322D60() & 1) == 0)
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
  sub_20E0486F4(&v40[v65], v82, &qword_27C8639D0, &unk_20E33C230);
  v68 = &v32[v65];
  v69 = v67;
  sub_20E0486F4(v68, v67 + v66, &qword_27C8639D0, &unk_20E33C230);
  v70 = v81;
  v71 = *(v80 + 48);
  if (v71(v67, 1, v81) == 1)
  {
    if (v71(v67 + v66, 1, v70) == 1)
    {
      sub_20E04875C(v67, &qword_27C8639D0, &unk_20E33C230);
LABEL_53:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v54 = sub_20E322850();
      return v54 & 1;
    }

    goto LABEL_51;
  }

  v72 = v78;
  sub_20E0486F4(v69, v78, &qword_27C8639D0, &unk_20E33C230);
  if (v71(v69 + v66, 1, v70) == 1)
  {
    sub_20E195C24(v72, type metadata accessor for TranscriptProtoStatementID);
LABEL_51:
    v34 = &qword_27C867F30;
    v35 = &qword_20E33B000;
    v53 = v69;
    goto LABEL_31;
  }

  v73 = v69 + v66;
  v74 = v77;
  sub_20E195B54(v73, v77, type metadata accessor for TranscriptProtoStatementID);
  v75 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v72, v74);
  sub_20E195C24(v74, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v72, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v69, &qword_27C8639D0, &unk_20E33C230);
  if (v75)
  {
    goto LABEL_53;
  }

LABEL_32:
  v54 = 0;
  return v54 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoActionFailureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868568, &qword_20E33B588);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_20E0486F4(a1, &v37 - v18, &qword_27C868560, &unk_20E33C2E0);
  v44 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C868560, &unk_20E33C2E0);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20E0486F4(v19, v15, &qword_27C868560, &unk_20E33C2E0);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_20E195B54(&v19[v20], v12, type metadata accessor for TranscriptProtoActionFailureFailure);
      v25 = _s23LighthouseDataProcessor028TranscriptProtoActionFailureG0V2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_20E04875C(v19, &qword_27C868560, &unk_20E33C2E0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoActionFailureFailure);
LABEL_6:
    v22 = &qword_27C868568;
    v23 = &qword_20E33B588;
    v24 = v19;
LABEL_14:
    sub_20E04875C(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v19, &qword_27C868560, &unk_20E33C2E0);
LABEL_8:
  v26 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_20E0486F4(v43 + v26, v42, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v44 + v26, v28 + v27, &qword_27C8639D0, &unk_20E33C230);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_20E04875C(v28, &qword_27C8639D0, &unk_20E33C230);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v28, v38, &qword_27C8639D0, &unk_20E33C230);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoStatementID);
LABEL_13:
    v22 = &qword_27C867F30;
    v23 = &qword_20E33B000;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_20E195B54(v34, v37, type metadata accessor for TranscriptProtoStatementID);
  v36 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v31, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v28, &qword_27C8639D0, &unk_20E33C230);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoVisualOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868370, &qword_20E33B3E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865D18, &unk_20E33C370);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865D18, &unk_20E33C370);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865D18, &unk_20E33C370);
LABEL_9:
      type metadata accessor for TranscriptProtoVisualOutput(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865D18, &unk_20E33C370);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoVisualOutputType);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868370, &qword_20E33B3E0);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoVisualOutputType);
  v18 = _s23LighthouseDataProcessor31TranscriptProtoVisualOutputTypeO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_20E04875C(v14, &qword_27C865D18, &unk_20E33C370);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoVariableStepV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if ((sub_20E1552F8(*a1, *a2) & 1) == 0)
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
  sub_20E0486F4(v15 + v17, v13, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v16 + v17, &v13[v18], &qword_27C8639D0, &unk_20E33C230);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v13, v10, &qword_27C8639D0, &unk_20E33C230);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_20E04875C(v13, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_8;
  }

  sub_20E195B54(&v13[v18], v7, type metadata accessor for TranscriptProtoStatementID);
  v22 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoSessionErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685D8, &qword_20E33B5F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863EE0, &qword_20E325D18);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863EE0, &qword_20E325D18);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863EE0, &qword_20E325D18);
LABEL_9:
      type metadata accessor for TranscriptProtoSessionError(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863EE0, &qword_20E325D18);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionErrorEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8685D8, &qword_20E33B5F8);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  v18 = _s23LighthouseDataProcessor31TranscriptProtoSessionErrorEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_20E04875C(v14, &qword_27C863EE0, &qword_20E325D18);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoQueryPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v5 = *(PayloadEnum - 8);
  MEMORY[0x28223BE20](PayloadEnum);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683E0, &qword_20E33B440);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863BB8, &qword_20E323E88);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863BB8, &qword_20E323E88);
  v16 = *(v5 + 48);
  if (v16(v14, 1, PayloadEnum) == 1)
  {
    if (v16(&v14[v15], 1, PayloadEnum) == 1)
    {
      sub_20E04875C(v14, &qword_27C863BB8, &qword_20E323E88);
LABEL_9:
      type metadata accessor for TranscriptProtoQueryPayload(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863BB8, &qword_20E323E88);
  if (v16(&v14[v15], 1, PayloadEnum) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryPayloadEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8683E0, &qword_20E33B440);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  PayloadEnumO2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor31TranscriptProtoQueryPayloadEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_20E04875C(v14, &qword_27C863BB8, &qword_20E323E88);
  if (PayloadEnumO2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoQueryPayloadV06StringF0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v23 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v24 = a1;
  v14 = *(v23 + 20);
  v15 = *(v11 + 56);
  sub_20E0486F4(a1 + v14, v13, &qword_27C863B60, &qword_20E323F50);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C863B60, &qword_20E323F50);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v9, &qword_27C863B60, &qword_20E323F50);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      sub_20E195B54(&v13[v15], v22, type metadata accessor for ToolKitProtoTypeIdentifier);
      v19 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v9, v18);
      sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v13, &qword_27C863B60, &qword_20E323F50);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_20E04875C(v13, &qword_27C867ED0, &qword_20E33AFA0);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v13, &qword_27C863B60, &qword_20E323F50);
LABEL_9:
  if (*v24 == *a2 && v24[1] == a2[1] || (sub_20E322D60() & 1) != 0)
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_20E322850();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoQueryPayloadV010IdentifierF0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_20E0486F4(a1 + v14, v13, &qword_27C863B60, &qword_20E323F50);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C863B60, &qword_20E323F50);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v13, v9, &qword_27C863B60, &qword_20E323F50);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_20E04875C(v13, &qword_27C867ED0, &qword_20E33AFA0);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_20E195B54(&v13[v15], v23, type metadata accessor for ToolKitProtoTypeIdentifier);
  v18 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v9, v17);
  sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v13, &qword_27C863B60, &qword_20E323F50);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E1494E0(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_20E322850();
  return v19 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoPlannerErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685C0, &qword_20E33B5E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863ED0, &unk_20E33C2C0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863ED0, &unk_20E33C2C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863ED0, &unk_20E33C2C0);
LABEL_9:
      type metadata accessor for TranscriptProtoPlannerError(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863ED0, &unk_20E33C2C0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoPlannerErrorEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8685C0, &qword_20E33B5E0);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  v18 = _s23LighthouseDataProcessor31TranscriptProtoPlannerErrorEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_20E04875C(v14, &qword_27C863ED0, &unk_20E33C2C0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoPersonQueryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868600, &unk_20E33C2A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868608, &qword_20E33B618);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = *(a1 + 2);
  v15 = *(a2 + 2);
  if (v14)
  {
    if (!v15 || (*(a1 + 1) != *(a2 + 1) || v14 != v15) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v15)
  {
    goto LABEL_16;
  }

  v16 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v17 = *(v16 + 24);
  v18 = a1;
  v19 = *(v11 + 48);
  v29 = v16;
  v30 = v18;
  sub_20E0486F4(&v18[v17], v13, &qword_27C868600, &unk_20E33C2A0);
  sub_20E0486F4(&a2[v17], &v13[v19], &qword_27C868600, &unk_20E33C2A0);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C868600, &unk_20E33C2A0);
    if (v20(&v13[v19], 1, v4) != 1)
    {
      sub_20E195B54(&v13[v19], v7, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      v21 = sub_20E179550(v10, v7, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_20E195C24(v7, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_20E04875C(v13, &qword_27C868600, &unk_20E33C2A0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    sub_20E195C24(v10, type metadata accessor for TranscriptProtoPersonQuery.Handle);
LABEL_13:
    sub_20E04875C(v13, &qword_27C868608, &qword_20E33B618);
    goto LABEL_16;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_20E04875C(v13, &qword_27C868600, &unk_20E33C2A0);
LABEL_15:
  if (*v30 == *a2)
  {
    v24 = *(v29 + 28);
    v25 = &v30[v24];
    v26 = *&v30[v24 + 8];
    v27 = &a2[v24];
    v28 = *(v27 + 1);
    if (v26)
    {
      if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_20E322D60() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v28)
    {
      goto LABEL_16;
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = sub_20E322850();
    return v22 & 1;
  }

LABEL_16:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_20E179550(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoASTPickTypeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  if (v2)
  {
    if (v3 & 1) == 0 || ((v5 ^ v4))
    {
      return 0;
    }
  }

  else if ((v3 & 1) != 0 || v4 != v5)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868160, &qword_20E33B208);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865F58, &qword_20E3263B8);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865F58, &qword_20E3263B8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865F58, &qword_20E3263B8);
LABEL_9:
      type metadata accessor for TranscriptProtoASTFlatValue(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865F58, &qword_20E3263B8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868160, &qword_20E33B208);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  v18 = _s23LighthouseDataProcessor31TranscriptProtoAstflatValueEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_20E04875C(v14, &qword_27C865F58, &qword_20E3263B8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoASTFlatExprV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868178, &qword_20E33B220);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865F48, &unk_20E33C400);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865F48, &unk_20E33C400);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865F48, &unk_20E33C400);
LABEL_9:
      type metadata accessor for TranscriptProtoASTFlatExpr(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865F48, &unk_20E33C400);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868178, &qword_20E33B220);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  v18 = _s23LighthouseDataProcessor30TranscriptProtoAstflatExprEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
  sub_20E04875C(v14, &qword_27C865F48, &unk_20E33C400);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868338, &qword_20E33B3A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865D48, &qword_20E3263B0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865D48, &qword_20E3263B0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865D48, &qword_20E3263B0);
LABEL_9:
      type metadata accessor for TranscriptProtoDialogType(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865D48, &qword_20E3263B0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoDialogFormat);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868338, &qword_20E33B3A8);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoDialogFormat);
  v18 = _s23LighthouseDataProcessor27TranscriptProtoDialogFormatO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoDialogFormat);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoDialogFormat);
  sub_20E04875C(v14, &qword_27C865D48, &qword_20E3263B0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor24TranscriptProtoTimepointV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_20E322150();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868780, &qword_20E33B758);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v22 = type metadata accessor for TranscriptProtoTimepoint(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_20E0486F4(a1 + v14, v13, &qword_27C868778, &unk_20E33C000);
  v25 = a2;
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C868778, &unk_20E33C000);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C868778, &unk_20E33C000);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v13, v9, &qword_27C868778, &unk_20E33C000);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_20E04875C(v13, &qword_27C868780, &qword_20E33B758);
LABEL_14:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v23;
  (*(v5 + 32))(v23, &v13[v15], v4);
  sub_20E195B0C(&qword_27C868788, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v18 = sub_20E322850();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_20E04875C(v13, &qword_27C868778, &unk_20E33C000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*v24 != *v25 || v24[1] != v25[1] || (v24[2] != v25[2] || v24[3] != v25[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_20E322850();
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_20E322D60() & 1) != 0)
  {
    v5 = a1[3];
    v6 = a2[3];
    if (v5)
    {
      if (v6)
      {
        v7 = a1[2] == a2[2] && v5 == v6;
        if (v7 || (sub_20E322D60() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v6)
    {
LABEL_13:
      type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_20E322850() & 1;
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor37TranscriptProtoActionParameterContextV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v48 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v19 = *(v43 + 24);
  v20 = *(v16 + 56);
  v47 = a1;
  sub_20E0486F4(a1 + v19, v18, &qword_27C8639D0, &unk_20E33C230);
  v21 = v48;
  sub_20E0486F4(v48 + v19, &v18[v20], &qword_27C8639D0, &unk_20E33C230);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

LABEL_6:
    v23 = &qword_27C867F30;
    v24 = &qword_20E33B000;
    v25 = v18;
LABEL_17:
    sub_20E04875C(v25, v23, v24);
    goto LABEL_18;
  }

  sub_20E0486F4(v18, v14, &qword_27C8639D0, &unk_20E33C230);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_20E195B54(&v18[v20], v11, type metadata accessor for TranscriptProtoStatementID);
  v26 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != *(v21 + 8)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 28);
  v29 = *(v42 + 48);
  v30 = v46;
  sub_20E0486F4(v27 + v28, v46, &qword_27C8639C8, &unk_20E323870);
  sub_20E0486F4(v21 + v28, v30 + v29, &qword_27C8639C8, &unk_20E323870);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    sub_20E0486F4(v30, v41, &qword_27C8639C8, &unk_20E323870);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v36 = v30 + v29;
      v37 = v40;
      sub_20E195B54(v36, v40, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      v38 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v33, v37);
      sub_20E195C24(v37, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_20E195C24(v33, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_20E04875C(v30, &qword_27C8639C8, &unk_20E323870);
      if ((v38 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_20E195C24(v33, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &qword_27C868040;
    v24 = &qword_20E33B0E8;
    v25 = v30;
    goto LABEL_17;
  }

  sub_20E04875C(v30, &qword_27C8639C8, &unk_20E323870);
LABEL_21:
  if (*(v27 + 16) == *(v21 + 16))
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = sub_20E322850();
    return v34 & 1;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s23LighthouseDataProcessor24TranscriptProtoQueryStepV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v71 = a2;
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  v61 = *(Payload - 8);
  v62 = Payload;
  MEMORY[0x28223BE20](Payload);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB0, &unk_20E33C350);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v56 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868408, &qword_20E33B468);
  MEMORY[0x28223BE20](v60);
  v63 = &v56 - v7;
  v8 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC0, &unk_20E323E90);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = (&v56 - v11);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868410, &qword_20E33B470);
  MEMORY[0x28223BE20](v65);
  v68 = &v56 - v12;
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v70 = a1;
  v24 = *(Step + 20);
  v25 = *(v21 + 56);
  sub_20E0486F4(&a1[v24], v23, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(&v71[v24], &v23[v25], &qword_27C8639D0, &unk_20E33C230);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_20E04875C(v23, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_27C867F30;
    v28 = &qword_20E33B000;
    v29 = v23;
LABEL_21:
    sub_20E04875C(v29, v27, v28);
    goto LABEL_22;
  }

  sub_20E0486F4(v23, v19, &qword_27C8639D0, &unk_20E33C230);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_20E195B54(&v23[v25], v16, type metadata accessor for TranscriptProtoStatementID);
  v30 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v19, v16);
  sub_20E195C24(v16, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v23, &qword_27C8639D0, &unk_20E33C230);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v32 = Step;
  v31 = v70;
  v33 = *(Step + 24);
  v34 = *(v65 + 48);
  v35 = v68;
  sub_20E0486F4(&v70[v33], v68, &qword_27C863BC0, &unk_20E323E90);
  v36 = v71;
  sub_20E0486F4(&v71[v33], v35 + v34, &qword_27C863BC0, &unk_20E323E90);
  v37 = v67;
  v38 = *(v66 + 48);
  if (v38(v35, 1, v67) == 1)
  {
    if (v38(v35 + v34, 1, v37) == 1)
    {
      sub_20E04875C(v35, &qword_27C863BC0, &unk_20E323E90);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v39 = v64;
  sub_20E0486F4(v35, v64, &qword_27C863BC0, &unk_20E323E90);
  if (v38(v35 + v34, 1, v37) == 1)
  {
    sub_20E195C24(v39, type metadata accessor for TranscriptProtoActionParameterContext);
LABEL_13:
    v27 = &qword_27C868410;
    v28 = &qword_20E33B470;
    v29 = v35;
    goto LABEL_21;
  }

  v40 = v35 + v34;
  v41 = v59;
  sub_20E195B54(v40, v59, type metadata accessor for TranscriptProtoActionParameterContext);
  v42 = _s23LighthouseDataProcessor37TranscriptProtoActionParameterContextV2eeoiySbAC_ACtFZ_0(v39, v41);
  sub_20E195C24(v41, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_20E195C24(v39, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_20E04875C(v35, &qword_27C863BC0, &unk_20E323E90);
  if ((v42 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v43 = *(v32 + 28);
  v44 = *(v60 + 48);
  v45 = v63;
  sub_20E0486F4(&v31[v43], v63, &qword_27C863BB0, &unk_20E33C350);
  v46 = &v36[v43];
  v47 = v45;
  sub_20E0486F4(v46, v45 + v44, &qword_27C863BB0, &unk_20E33C350);
  v48 = v62;
  v49 = *(v61 + 48);
  if (v49(v45, 1, v62) != 1)
  {
    v50 = v58;
    sub_20E0486F4(v47, v58, &qword_27C863BB0, &unk_20E33C350);
    if (v49(v47 + v44, 1, v48) != 1)
    {
      v53 = v47 + v44;
      v54 = v57;
      sub_20E195B54(v53, v57, type metadata accessor for TranscriptProtoQueryPayload);
      PayloadV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoQueryPayloadV2eeoiySbAC_ACtFZ_0(v50, v54);
      sub_20E195C24(v54, type metadata accessor for TranscriptProtoQueryPayload);
      sub_20E195C24(v50, type metadata accessor for TranscriptProtoQueryPayload);
      sub_20E04875C(v47, &qword_27C863BB0, &unk_20E33C350);
      if ((PayloadV2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    sub_20E195C24(v50, type metadata accessor for TranscriptProtoQueryPayload);
    goto LABEL_20;
  }

  if (v49(v45 + v44, 1, v48) != 1)
  {
LABEL_20:
    v27 = &qword_27C868408;
    v28 = &qword_20E33B468;
    v29 = v47;
    goto LABEL_21;
  }

  sub_20E04875C(v45, &qword_27C863BB0, &unk_20E33C350);
LABEL_25:
  if (*v31 == *v36)
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v51 = sub_20E322850();
    return v51 & 1;
  }

LABEL_22:
  v51 = 0;
  return v51 & 1;
}

uint64_t _s23LighthouseDataProcessor24TranscriptProtoParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868250, &qword_20E33B2F0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
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
  v23 = type metadata accessor for TranscriptProtoParameter(0);
  v15 = *(v23 + 24);
  v16 = *(v11 + 48);
  sub_20E0486F4(a1 + v15, v13, &qword_27C863B28, &unk_20E33C3E0);
  sub_20E0486F4(a2 + v15, &v13[v16], &qword_27C863B28, &unk_20E33C3E0);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C863B28, &unk_20E33C3E0);
LABEL_18:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_20E322850();
      return v18 & 1;
    }

    goto LABEL_14;
  }

  sub_20E0486F4(v13, v10, &qword_27C863B28, &unk_20E33C3E0);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoCandidate);
LABEL_14:
    sub_20E04875C(v13, &qword_27C868250, &qword_20E33B2F0);
    goto LABEL_15;
  }

  v20 = v22;
  sub_20E195B54(&v13[v16], v22, type metadata accessor for TranscriptProtoCandidate);
  v21 = _s23LighthouseDataProcessor24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(v10, v20);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoCandidate);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoCandidate);
  sub_20E04875C(v13, &qword_27C863B28, &unk_20E33C3E0);
  if (v21)
  {
    goto LABEL_18;
  }

LABEL_15:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoCandidatePromptStatusV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
LABEL_3:
      type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_20E322850() & 1;
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

uint64_t _s23LighthouseDataProcessor24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v71 = a2;
  v3 = type metadata accessor for TranscriptProtoStatementID(0);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v56 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v60);
  v63 = &v56 - v7;
  v8 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = (&v56 - v11);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868278, &qword_20E33B308);
  MEMORY[0x28223BE20](v65);
  v68 = &v56 - v12;
  v13 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v56 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v69 = type metadata accessor for TranscriptProtoCandidate(0);
  v70 = a1;
  v24 = *(v69 + 20);
  v25 = *(v21 + 56);
  sub_20E0486F4(&a1[v24], v23, &qword_27C863B18, &qword_20E323EB0);
  v26 = v71;
  sub_20E0486F4(&v71[v24], &v23[v25], &qword_27C863B18, &qword_20E323EB0);
  v27 = *(v14 + 48);
  if (v27(v23, 1, v13) == 1)
  {
    if (v27(&v23[v25], 1, v13) == 1)
    {
      sub_20E04875C(v23, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_9;
    }

LABEL_6:
    v28 = &qword_27C867ED8;
    v29 = &qword_20E33AFA8;
    v30 = v23;
LABEL_7:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_25;
  }

  sub_20E0486F4(v23, v19, &qword_27C863B18, &qword_20E323EB0);
  if (v27(&v23[v25], 1, v13) == 1)
  {
    sub_20E195C24(v19, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_20E195B54(&v23[v25], v16, type metadata accessor for ToolKitProtoTypedValue);
  v31 = static ToolKitProtoTypedValue.== infix(_:_:)(v19, v16);
  sub_20E195C24(v16, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v19, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v23, &qword_27C863B18, &qword_20E323EB0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v32 = v70;
  if (*v70 != *v26)
  {
    goto LABEL_25;
  }

  v33 = v68;
  v34 = v69;
  v35 = *(v69 + 24);
  v36 = *(v65 + 48);
  sub_20E0486F4(&v70[v35], v68, &qword_27C863B20, &unk_20E33C290);
  sub_20E0486F4(&v26[v35], v33 + v36, &qword_27C863B20, &unk_20E33C290);
  v37 = v67;
  v38 = *(v66 + 48);
  if (v38(v33, 1, v67) == 1)
  {
    if (v38(v33 + v36, 1, v37) == 1)
    {
      sub_20E04875C(v33, &qword_27C863B20, &unk_20E33C290);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v39 = v64;
  sub_20E0486F4(v33, v64, &qword_27C863B20, &unk_20E33C290);
  if (v38(v33 + v36, 1, v37) == 1)
  {
    sub_20E195C24(v39, type metadata accessor for TranscriptProtoCandidatePromptStatus);
LABEL_15:
    v28 = &qword_27C868278;
    v29 = &qword_20E33B308;
    v30 = v33;
    goto LABEL_7;
  }

  v40 = v33 + v36;
  v41 = v59;
  sub_20E195B54(v40, v59, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  v42 = _s23LighthouseDataProcessor36TranscriptProtoCandidatePromptStatusV2eeoiySbAC_ACtFZ_0(v39, v41);
  sub_20E195C24(v41, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_20E195C24(v39, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_20E04875C(v33, &qword_27C863B20, &unk_20E33C290);
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v43 = *(v34 + 28);
  v44 = *(v60 + 48);
  v45 = v63;
  sub_20E0486F4(&v32[v43], v63, &qword_27C8639D0, &unk_20E33C230);
  v46 = &v26[v43];
  v47 = v45;
  sub_20E0486F4(v46, v45 + v44, &qword_27C8639D0, &unk_20E33C230);
  v48 = v62;
  v49 = *(v61 + 48);
  if (v49(v45, 1, v62) != 1)
  {
    v50 = v58;
    sub_20E0486F4(v47, v58, &qword_27C8639D0, &unk_20E33C230);
    if (v49(v47 + v44, 1, v48) != 1)
    {
      v51 = v47 + v44;
      v52 = v57;
      sub_20E195B54(v51, v57, type metadata accessor for TranscriptProtoStatementID);
      v53 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v50, v52);
      sub_20E195C24(v52, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v50, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v47, &qword_27C8639D0, &unk_20E33C230);
      if (v53)
      {
        goto LABEL_24;
      }

LABEL_25:
      v54 = 0;
      return v54 & 1;
    }

    sub_20E195C24(v50, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_22;
  }

  if (v49(v45 + v44, 1, v48) != 1)
  {
LABEL_22:
    v28 = &qword_27C867F30;
    v29 = &qword_20E33B000;
    v30 = v47;
    goto LABEL_7;
  }

  sub_20E04875C(v45, &qword_27C8639D0, &unk_20E33C230);
LABEL_24:
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v54 = sub_20E322850();
  return v54 & 1;
}

uint64_t _s23LighthouseDataProcessor22TranscriptProtoUILabelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoLabel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A8, &qword_20E33B338);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682B0, &qword_20E33B340);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C8682A8, &qword_20E33B338);
  sub_20E0486F4(a2, &v14[v15], &qword_27C8682A8, &qword_20E33B338);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C8682A8, &qword_20E33B338);
LABEL_9:
      type metadata accessor for TranscriptProtoUILabel(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C8682A8, &qword_20E33B338);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoLabel);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8682B0, &qword_20E33B340);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoLabel);
  v18 = static TranscriptProtoLabel.== infix(_:_:)(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoLabel);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoLabel);
  sub_20E04875C(v14, &qword_27C8682A8, &qword_20E33B338);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor47TranscriptProtoSystemPromptResolutionUserActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868238, &qword_20E33B2D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863F08, &qword_20E325D20);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863F08, &qword_20E325D20);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863F08, &qword_20E325D20);
LABEL_9:
      type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863F08, &qword_20E325D20);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868238, &qword_20E33B2D8);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  v18 = _s23LighthouseDataProcessor51TranscriptProtoSystemPromptResolutionUserActionEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_20E04875C(v14, &qword_27C863F08, &qword_20E325D20);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor37TranscriptProtoSystemPromptResolutionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B80, &qword_20E323E70);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v60 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868298, &qword_20E33B328);
  MEMORY[0x28223BE20](v66);
  v10 = &v60 - v9;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v60 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v70);
  v73 = &v60 - v15;
  v16 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F10, &unk_20E33C3B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A0, &qword_20E33B330);
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  v26 = a1[3];
  v27 = a2[3];
  if (v26)
  {
    if (!v27 || (a1[2] != a2[2] || v26 != v27) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v27)
  {
    goto LABEL_33;
  }

  v60 = v6;
  v61 = v10;
  v28 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v29 = *(v28 + 24);
  v30 = a1;
  v31 = *(v23 + 48);
  v62 = v28;
  v63 = v30;
  sub_20E0486F4(v30 + v29, v25, &qword_27C863F10, &unk_20E33C3B0);
  v32 = a2 + v29;
  v33 = a2;
  sub_20E0486F4(v32, &v25[v31], &qword_27C863F10, &unk_20E33C3B0);
  v34 = *(v17 + 48);
  if (v34(v25, 1, v16) == 1)
  {
    if (v34(&v25[v31], 1, v16) == 1)
    {
      sub_20E04875C(v25, &qword_27C863F10, &unk_20E33C3B0);
      goto LABEL_15;
    }

LABEL_13:
    v35 = &qword_27C8682A0;
    v36 = &qword_20E33B330;
    v37 = v25;
LABEL_32:
    sub_20E04875C(v37, v35, v36);
    goto LABEL_33;
  }

  sub_20E0486F4(v25, v22, &qword_27C863F10, &unk_20E33C3B0);
  if (v34(&v25[v31], 1, v16) == 1)
  {
    sub_20E195C24(v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
    goto LABEL_13;
  }

  sub_20E195B54(&v25[v31], v19, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  v38 = _s23LighthouseDataProcessor47TranscriptProtoSystemPromptResolutionUserActionV2eeoiySbAC_ACtFZ_0(v22, v19);
  sub_20E195C24(v19, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_20E195C24(v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_20E04875C(v25, &qword_27C863F10, &unk_20E33C3B0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_15:
  v39 = v63;
  if ((*v63 != *a2 || v63[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_33;
  }

  v40 = v62;
  v41 = *(v62 + 28);
  v42 = *(v70 + 48);
  v43 = v73;
  sub_20E0486F4(v39 + v41, v73, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v33 + v41, v43 + v42, &qword_27C8639D0, &unk_20E33C230);
  v44 = v72;
  v45 = *(v71 + 48);
  if (v45(v43, 1, v72) != 1)
  {
    v46 = v69;
    sub_20E0486F4(v43, v69, &qword_27C8639D0, &unk_20E33C230);
    if (v45(v43 + v42, 1, v44) != 1)
    {
      v47 = v43 + v42;
      v48 = v65;
      sub_20E195B54(v47, v65, type metadata accessor for TranscriptProtoStatementID);
      v49 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v46, v48);
      sub_20E195C24(v48, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v46, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v43, &qword_27C8639D0, &unk_20E33C230);
      if ((v49 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    sub_20E195C24(v46, type metadata accessor for TranscriptProtoStatementID);
LABEL_23:
    v35 = &qword_27C867F30;
    v36 = &qword_20E33B000;
LABEL_31:
    v37 = v43;
    goto LABEL_32;
  }

  if (v45(v43 + v42, 1, v44) != 1)
  {
    goto LABEL_23;
  }

  sub_20E04875C(v43, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
  v50 = *(v40 + 32);
  v51 = *(v66 + 48);
  v43 = v61;
  sub_20E0486F4(v39 + v50, v61, &qword_27C863B80, &qword_20E323E70);
  sub_20E0486F4(v33 + v50, v43 + v51, &qword_27C863B80, &qword_20E323E70);
  v52 = v68;
  v53 = *(v67 + 48);
  if (v53(v43, 1, v68) == 1)
  {
    if (v53(v43 + v51, 1, v52) == 1)
    {
      sub_20E04875C(v43, &qword_27C863B80, &qword_20E323E70);
LABEL_36:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v55 = sub_20E322850();
      return v55 & 1;
    }

    goto LABEL_30;
  }

  v54 = v64;
  sub_20E0486F4(v43, v64, &qword_27C863B80, &qword_20E323E70);
  if (v53(v43 + v51, 1, v52) == 1)
  {
    sub_20E195C24(v54, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
LABEL_30:
    v35 = &qword_27C868298;
    v36 = &qword_20E33B328;
    goto LABEL_31;
  }

  v57 = v43 + v51;
  v58 = v60;
  sub_20E195B54(v57, v60, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  v59 = _s23LighthouseDataProcessor42TranscriptProtoSystemPromptResolutionInputV2eeoiySbAC_ACtFZ_0(v54, v58);
  sub_20E195C24(v58, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_20E195C24(v54, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_20E04875C(v43, &qword_27C863B80, &qword_20E323E70);
  if (v59)
  {
    goto LABEL_36;
  }

LABEL_33:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868728, &qword_20E33B720);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865978, &qword_20E326390);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865978, &qword_20E326390);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865978, &qword_20E326390);
LABEL_9:
      type metadata accessor for TranscriptProtoRequestContent(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865978, &qword_20E326390);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContentEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868728, &qword_20E33B720);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  v18 = _s23LighthouseDataProcessor33TranscriptProtoRequestContentEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_20E04875C(v14, &qword_27C865978, &qword_20E326390);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor22TranscriptProtoRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v137 = a2;
  v110 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = (&v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868738, &unk_20E33C220);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = (&v105 - v5);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868740, &qword_20E33B730);
  MEMORY[0x28223BE20](v108);
  v111 = &v105 - v6;
  v116 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v107 = (&v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868748, &qword_20E33B738);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = (&v105 - v9);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868750, &qword_20E33B740);
  MEMORY[0x28223BE20](v114);
  v117 = &v105 - v10;
  v11 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v121 = *(v11 - 8);
  v122 = v11;
  MEMORY[0x28223BE20](v11);
  v113 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868758, &unk_20E33C210);
  MEMORY[0x28223BE20](v13 - 8);
  v118 = &v105 - v14;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868760, &qword_20E33B748);
  MEMORY[0x28223BE20](v120);
  v123 = &v105 - v15;
  v16 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v126 = *(v16 - 8);
  v127 = v16;
  MEMORY[0x28223BE20](v16);
  v119 = (&v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  MEMORY[0x28223BE20](v18 - 8);
  v124 = (&v105 - v19);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868710, &qword_20E33B708);
  MEMORY[0x28223BE20](v125);
  v128 = &v105 - v20;
  v21 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v132 = *(v21 - 8);
  v133 = v21;
  MEMORY[0x28223BE20](v21);
  v129 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F88, &unk_20E33C200);
  MEMORY[0x28223BE20](v23 - 8);
  v130 = &v105 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868768, &qword_20E33B750);
  MEMORY[0x28223BE20](v131);
  v134 = &v105 - v25;
  v26 = type metadata accessor for TranscriptProtoRequestContent(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v105 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F00, &qword_20E33AFD0);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33);
  v36 = &v105 - v35;
  v135 = type metadata accessor for TranscriptProtoRequest(0);
  v136 = a1;
  v37 = *(v135 + 20);
  v38 = *(v34 + 56);
  sub_20E0486F4(&a1[v37], v36, &qword_27C867EF8, &qword_20E33AFC8);
  v39 = v137;
  sub_20E0486F4(&v137[v37], &v36[v38], &qword_27C867EF8, &qword_20E33AFC8);
  v40 = *(v27 + 48);
  if (v40(v36, 1, v26) != 1)
  {
    sub_20E0486F4(v36, v32, &qword_27C867EF8, &qword_20E33AFC8);
    if (v40(&v36[v38], 1, v26) != 1)
    {
      sub_20E195B54(&v36[v38], v29, type metadata accessor for TranscriptProtoRequestContent);
      v44 = _s23LighthouseDataProcessor29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v32, v29);
      sub_20E195C24(v29, type metadata accessor for TranscriptProtoRequestContent);
      sub_20E195C24(v32, type metadata accessor for TranscriptProtoRequestContent);
      sub_20E04875C(v36, &qword_27C867EF8, &qword_20E33AFC8);
      if ((v44 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v32, type metadata accessor for TranscriptProtoRequestContent);
LABEL_6:
    v41 = &qword_27C867F00;
    v42 = &qword_20E33AFD0;
    v43 = v36;
    goto LABEL_7;
  }

  if (v40(&v36[v38], 1, v26) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v36, &qword_27C867EF8, &qword_20E33AFC8);
LABEL_9:
  v45 = v136;
  if (*v136 != *v39)
  {
    goto LABEL_10;
  }

  v48 = v39;
  v49 = v134;
  v50 = v135;
  v51 = *(v135 + 24);
  v52 = *(v131 + 48);
  sub_20E0486F4(&v136[v51], v134, &qword_27C863F88, &unk_20E33C200);
  sub_20E0486F4(&v48[v51], v49 + v52, &qword_27C863F88, &unk_20E33C200);
  v53 = v133;
  v54 = *(v132 + 48);
  if (v54(v49, 1, v133) == 1)
  {
    if (v54(v49 + v52, 1, v53) == 1)
    {
      sub_20E04875C(v49, &qword_27C863F88, &unk_20E33C200);
      goto LABEL_19;
    }
  }

  else
  {
    v55 = v130;
    sub_20E0486F4(v49, v130, &qword_27C863F88, &unk_20E33C200);
    if (v54(v49 + v52, 1, v53) != 1)
    {
      v56 = v49 + v52;
      v57 = v129;
      sub_20E195B54(v56, v129, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      v58 = _s23LighthouseDataProcessor36TranscriptProtoRequestPrescribedPlanV2eeoiySbAC_ACtFZ_0(v55, v57);
      sub_20E195C24(v57, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      sub_20E195C24(v55, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      sub_20E04875C(v49, &qword_27C863F88, &unk_20E33C200);
      if ((v58 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_19:
      v59 = v50[7];
      v60 = &v45[v59];
      v61 = *&v45[v59 + 8];
      v62 = &v48[v59];
      v63 = *(v62 + 1);
      if (v61)
      {
        if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v63)
      {
        goto LABEL_10;
      }

      v64 = v50[8];
      v65 = *(v125 + 48);
      v66 = v128;
      sub_20E0486F4(&v45[v64], v128, &qword_27C868708, &qword_20E33B700);
      v67 = &v48[v64];
      v68 = v66;
      sub_20E0486F4(v67, v66 + v65, &qword_27C868708, &qword_20E33B700);
      v69 = v127;
      v70 = *(v126 + 48);
      if (v70(v66, 1, v127) == 1)
      {
        if (v70(v66 + v65, 1, v69) == 1)
        {
          sub_20E04875C(v66, &qword_27C868708, &qword_20E33B700);
          goto LABEL_29;
        }
      }

      else
      {
        v77 = v124;
        sub_20E0486F4(v68, v124, &qword_27C868708, &qword_20E33B700);
        if (v70(v68 + v65, 1, v69) != 1)
        {
          v78 = v68 + v65;
          v79 = v119;
          sub_20E195B54(v78, v119, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          if ((*v77 != *v79 || v77[1] != v79[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E1494E0(v77[2], v79[2]) & 1) == 0)
          {
            sub_20E195C24(v79, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
            sub_20E195C24(v77, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
            v41 = &qword_27C868708;
            v42 = &qword_20E33B700;
            goto LABEL_65;
          }

          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v80 = sub_20E322850();
          sub_20E195C24(v79, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          sub_20E195C24(v77, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          sub_20E04875C(v68, &qword_27C868708, &qword_20E33B700);
          if ((v80 & 1) == 0)
          {
            goto LABEL_10;
          }

LABEL_29:
          v71 = v50[9];
          v72 = *(v120 + 48);
          v73 = v123;
          sub_20E0486F4(&v45[v71], v123, &qword_27C868758, &unk_20E33C210);
          v74 = &v48[v71];
          v68 = v73;
          sub_20E0486F4(v74, v73 + v72, &qword_27C868758, &unk_20E33C210);
          v75 = v122;
          v76 = *(v121 + 48);
          if (v76(v73, 1, v122) == 1)
          {
            if (v76(v73 + v72, 1, v75) == 1)
            {
              sub_20E04875C(v73, &qword_27C868758, &unk_20E33C210);
LABEL_46:
              v85 = v50[10];
              v86 = *(v114 + 48);
              v87 = v117;
              sub_20E0486F4(&v45[v85], v117, &qword_27C868748, &qword_20E33B738);
              v88 = &v48[v85];
              v68 = v87;
              sub_20E0486F4(v88, v87 + v86, &qword_27C868748, &qword_20E33B738);
              v89 = *(v115 + 48);
              v90 = v116;
              if (v89(v87, 1, v116) == 1)
              {
                if (v89(v87 + v86, 1, v90) == 1)
                {
                  sub_20E04875C(v87, &qword_27C868748, &qword_20E33B738);
LABEL_56:
                  v95 = v50[11];
                  v96 = *(v108 + 48);
                  v97 = v111;
                  sub_20E0486F4(&v45[v95], v111, &qword_27C868738, &unk_20E33C220);
                  v98 = &v48[v95];
                  v68 = v97;
                  sub_20E0486F4(v98, v97 + v96, &qword_27C868738, &unk_20E33C220);
                  v99 = *(v109 + 48);
                  v100 = v110;
                  if (v99(v97, 1, v110) == 1)
                  {
                    if (v99(v97 + v96, 1, v100) == 1)
                    {
                      sub_20E04875C(v97, &qword_27C868738, &unk_20E33C220);
                      goto LABEL_63;
                    }
                  }

                  else
                  {
                    v101 = v106;
                    sub_20E0486F4(v68, v106, &qword_27C868738, &unk_20E33C220);
                    if (v99(v68 + v96, 1, v100) != 1)
                    {
                      v102 = v68 + v96;
                      v103 = v105;
                      sub_20E195B54(v102, v105, type metadata accessor for TranscriptProtoDateTimeContext);
                      v104 = _s23LighthouseDataProcessor30TranscriptProtoDateTimeContextV2eeoiySbAC_ACtFZ_0(v101, v103);
                      sub_20E195C24(v103, type metadata accessor for TranscriptProtoDateTimeContext);
                      sub_20E195C24(v101, type metadata accessor for TranscriptProtoDateTimeContext);
                      sub_20E04875C(v68, &qword_27C868738, &unk_20E33C220);
                      if ((v104 & 1) == 0)
                      {
                        goto LABEL_10;
                      }

LABEL_63:
                      sub_20E3221C0();
                      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                      v46 = sub_20E322850();
                      return v46 & 1;
                    }

                    sub_20E195C24(v101, type metadata accessor for TranscriptProtoDateTimeContext);
                  }

                  v41 = &qword_27C868740;
                  v42 = &qword_20E33B730;
                  goto LABEL_65;
                }

                goto LABEL_51;
              }

              v91 = v112;
              sub_20E0486F4(v68, v112, &qword_27C868748, &qword_20E33B738);
              if (v89(v68 + v86, 1, v90) == 1)
              {
                sub_20E195C24(v91, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
LABEL_51:
                v41 = &qword_27C868750;
                v42 = &qword_20E33B740;
                goto LABEL_65;
              }

              v92 = v68 + v86;
              v93 = v107;
              sub_20E195B54(v92, v107, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
              if (*v91 == *v93 && v91[1] == v93[1] || (sub_20E322D60() & 1) != 0)
              {
                sub_20E3221C0();
                sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                v94 = sub_20E322850();
                sub_20E195C24(v93, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
                sub_20E195C24(v91, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
                sub_20E04875C(v68, &qword_27C868748, &qword_20E33B738);
                if ((v94 & 1) == 0)
                {
                  goto LABEL_10;
                }

                goto LABEL_56;
              }

              sub_20E195C24(v93, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
              sub_20E195C24(v91, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
              v41 = &qword_27C868748;
              v42 = &qword_20E33B738;
LABEL_65:
              v43 = v68;
              goto LABEL_7;
            }
          }

          else
          {
            v81 = v118;
            sub_20E0486F4(v68, v118, &qword_27C868758, &unk_20E33C210);
            if (v76(v68 + v72, 1, v75) != 1)
            {
              v82 = v68 + v72;
              v83 = v113;
              sub_20E195B54(v82, v113, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
              v84 = static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)(v81, v83);
              sub_20E195C24(v83, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
              sub_20E195C24(v81, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
              sub_20E04875C(v68, &qword_27C868758, &unk_20E33C210);
              if ((v84 & 1) == 0)
              {
                goto LABEL_10;
              }

              goto LABEL_46;
            }

            sub_20E195C24(v81, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
          }

          v41 = &qword_27C868760;
          v42 = &qword_20E33B748;
          goto LABEL_65;
        }

        sub_20E195C24(v77, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      }

      v41 = &qword_27C868710;
      v42 = &qword_20E33B708;
      goto LABEL_65;
    }

    sub_20E195C24(v55, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  }

  v41 = &qword_27C868768;
  v42 = &qword_20E33B750;
  v43 = v49;
LABEL_7:
  sub_20E04875C(v43, v41, v42);
LABEL_10:
  v46 = 0;
  return v46 & 1;
}