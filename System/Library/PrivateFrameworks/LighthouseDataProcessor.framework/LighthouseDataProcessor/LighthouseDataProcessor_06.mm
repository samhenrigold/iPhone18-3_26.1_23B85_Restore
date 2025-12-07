uint64_t sub_20E0F99E4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v28 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v23 - v16;
  v29 = 2;
  result = sub_20E3222E0();
  if (!v8)
  {
    v27 = a2;
    if (v29 != 2)
    {
      v23[0] = a3;
      v23[1] = a4;
      v25 = v29;
      v26 = 0;
      sub_20E0486F4(v27, v17, a5, a6);
      v19 = a7(0);
      v24 = *(v19 - 8);
      v20 = (*(v24 + 48))(v17, 1, v19);
      sub_20E04875C(v17, a5, a6);
      if (v20 != 1)
      {
        v21 = v26;
        result = sub_20E3222C0();
        if (v21)
        {
          return result;
        }

        v26 = 0;
      }

      v22 = v27;
      sub_20E04875C(v27, a5, a6);
      *v22 = v25 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v24 + 56))(v22, 0, 1, v19);
    }
  }

  return result;
}

uint64_t sub_20E0F9BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868240, &qword_20E33B2E0);
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
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C868240, &qword_20E33B2E0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
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
  sub_20E195B0C(&qword_27C866E70, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868240, &qword_20E33B2E0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868240, &qword_20E33B2E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868240, &qword_20E33B2E0);
    return sub_20E04875C(v32, &qword_27C868240, &qword_20E33B2E0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868240, &qword_20E33B2E0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863F08, &qword_20E325D20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0FA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868248, &qword_20E33B2E8);
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
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C868248, &qword_20E33B2E8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
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
  sub_20E195B0C(&qword_27C866E58, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868248, &qword_20E33B2E8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868248, &qword_20E33B2E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868248, &qword_20E33B2E8);
    return sub_20E04875C(v32, &qword_27C868248, &qword_20E33B2E8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868248, &qword_20E33B2E8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863F08, &qword_20E325D20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoSystemPromptResolutionUserAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C863F08, &qword_20E325D20);
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_20E0FAFC4(v3, a1, a2, a3);
        }

        else
        {
          sub_20E0FB1FC(v3, a1, a2, a3);
        }

LABEL_16:
        result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        if (v4)
        {
          return result;
        }

        goto LABEL_17;
      }

      result = sub_20E0FAE60(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_20E0FAAC4(v3, a1, a2, a3);
        goto LABEL_16;
      }

      result = sub_20E0FACFC(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_20E0FA964(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

LABEL_17:
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  return sub_20E3221A0();
}

uint64_t sub_20E0FA964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C863F08, &qword_20E325D20);
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C863F08, &qword_20E325D20);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    return sub_20E3224C0();
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0FAAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863F08, &qword_20E325D20);
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863F08, &qword_20E325D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0FACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C863F08, &qword_20E325D20);
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C863F08, &qword_20E325D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    return sub_20E3224C0();
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0FAE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C863F08, &qword_20E325D20);
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C863F08, &qword_20E325D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    return sub_20E322510();
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0FAFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863F08, &qword_20E325D20);
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863F08, &qword_20E325D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    sub_20E195B0C(&qword_27C866E70, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0FB1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863F08, &qword_20E325D20);
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863F08, &qword_20E325D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
    sub_20E195B0C(&qword_27C866E58, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0FB4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FB584(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866E40, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);

  return sub_20E322470();
}

uint64_t sub_20E0FB5F0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866E40, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionUserAction);

  return sub_20E322480();
}

uint64_t sub_20E0FB720(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A20, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FB7C0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866E58, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return sub_20E322470();
}

uint64_t sub_20E0FB82C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866E58, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return sub_20E322480();
}

uint64_t sub_20E0FB91C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_20E3222F0();
    }
  }

  return result;
}

uint64_t sub_20E0FB9B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*v4 == 1)
  {
    result = sub_20E3224C0();
    if (v5)
    {
      return result;
    }

    a4(0);
  }

  else
  {
    a4(0);
  }

  return sub_20E3221A0();
}

uint64_t sub_20E0FBAF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A18, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FBB98(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866E70, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return sub_20E322470();
}

uint64_t sub_20E0FBC04(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866E70, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution, &protocol conformance descriptor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return sub_20E322480();
}

uint64_t sub_20E0FBC9C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865020);
  __swift_project_value_buffer(v0, qword_27C865020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "dependencies";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0FBECC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 4)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0FBF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoVariableSetter(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0FC02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322180();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322290();
}

uint64_t TranscriptProtoVariableSetter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0FC278(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_20E322180();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_20E322490();
    }

    type metadata accessor for TranscriptProtoVariableSetter(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0FC278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoVariableSetter(0);
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

uint64_t sub_20E0FC558(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A10, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FC5F8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865E90, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter);

  return sub_20E322470();
}

uint64_t sub_20E0FC664(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865E90, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter);

  return sub_20E322480();
}

uint64_t sub_20E0FC700()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865038);
  __swift_project_value_buffer(v0, qword_27C865038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "setters";
  *(v6 + 8) = 7;
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
  return sub_20E3225A0();
}

uint64_t TranscriptProtoVariableStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for TranscriptProtoVariableSetter(0);
        sub_20E195B0C(&qword_27C865E90, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter);
        sub_20E322420();
      }

      else if (result == 3)
      {
        sub_20E0FC9EC(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0FC9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoVariableStep(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoVariableStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoVariableSetter(0), sub_20E195B0C(&qword_27C865E90, type metadata accessor for TranscriptProtoVariableSetter, &protocol conformance descriptor for TranscriptProtoVariableSetter), result = sub_20E322570(), !v4))
  {
    result = sub_20E0FCB9C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for TranscriptProtoVariableStep(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0FCB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoVariableStep(0);
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

uint64_t sub_20E0FCE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A08, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FCEF0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866E98, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);

  return sub_20E322470();
}

uint64_t sub_20E0FCF5C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866E98, type metadata accessor for TranscriptProtoVariableStep, &protocol conformance descriptor for TranscriptProtoVariableStep);

  return sub_20E322480();
}

uint64_t sub_20E0FCFF8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865050);
  __swift_project_value_buffer(v0, qword_27C865050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fn";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameters";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0FD20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA8, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_20E322290();
}

uint64_t TranscriptProtoASTFlatExprCallVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    if (!*(v3[2] + 16) || (sub_20E322170(), type metadata accessor for TranscriptProtoASTFlatValue(0), sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue), sub_20E195B0C(&qword_27C865EA8, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue), result = sub_20E322490(), !v4))
    {
      type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

unint64_t sub_20E0FD4E4@<X0>(void *a2@<X8>)
{
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  result = sub_20E049714(MEMORY[0x277D84F90]);
  a2[2] = result;
  return result;
}

uint64_t sub_20E0FD574(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867A00, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FD614(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866EB0, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FD680(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866EB0, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FD6FC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_20E322D60() & 1) == 0 || (sub_20E15B558(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0FD924(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679F8, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FD9C4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866EC8, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FDA30(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866EC8, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FDAC8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865080);
  __swift_project_value_buffer(v0, qword_27C865080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawEventId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pickType";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0FDCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_20E195B0C(&qword_27C866F70, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);
  return sub_20E322430();
}

uint64_t sub_20E0FDDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868208, &unk_20E33C3F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTPickType(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868208, &unk_20E33C3F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868208, &unk_20E33C3F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoASTPickType);
  sub_20E195B0C(&qword_27C866F70, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTPickType);
}

uint64_t sub_20E0FE0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679F0, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FE140(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866EE0, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FE1AC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866EE0, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FE348(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679E8, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FE3E8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866EF8, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FE454(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866EF8, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FE558(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*(v4 + 8))
  {
    v7 = sub_20E322540();
  }

  if (!v5)
  {
    a4(0);
    return sub_20E3221A0();
  }

  return v7;
}

uint64_t sub_20E0FE69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679E0, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FE73C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866F10, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FE7A8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866F10, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FE970(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679D8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FEA10(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866F28, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FEA7C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866F28, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FEC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679D0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FECB4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866F40, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FED20(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866F40, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FEE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679C8, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FEEEC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866F58, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FEF58(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866F58, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FEFF0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865110);
  __swift_project_value_buffer(v0, qword_27C865110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoASTPickType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E0FF274(a1, v5, a2, a3);
    }

    else if (result == 3)
    {
      sub_20E0FF308(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t TranscriptProtoASTPickType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  if (v5 == 255)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    result = sub_20E3224C0();
    if (v4)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = sub_20E322510();
  if (!v4)
  {
LABEL_4:
    type metadata accessor for TranscriptProtoASTPickType(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0FF498@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = -1;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0FF510(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679C0, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FF5B0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866F70, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);

  return sub_20E322470();
}

uint64_t sub_20E0FF61C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866F70, type metadata accessor for TranscriptProtoASTPickType, &protocol conformance descriptor for TranscriptProtoASTPickType);

  return sub_20E322480();
}

uint64_t sub_20E0FF6B8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865128);
  __swift_project_value_buffer(v0, qword_27C865128);
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
  *v11 = "pickOne";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0FF908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_20E3222F0();
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E0FF9D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *(v4 + 8);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_20E322540(), !v5))
  {
    if (*(v4 + 16) != 1 || (result = sub_20E3224C0(), !v5))
    {
      if (*(v4 + 17) != 1 || (result = sub_20E3224C0(), !v5))
      {
        a4(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0FFB40@<X0>(uint64_t a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E0FFBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679B8, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FFC4C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866F88, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FFCB8(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866F88, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);

  return sub_20E322480();
}

uint64_t sub_20E0FFE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679B0, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0FFEB4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866FA0, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);

  return sub_20E322470();
}

uint64_t sub_20E0FFF20(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866FA0, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);

  return sub_20E322480();
}

uint64_t TranscriptProtoASTFlatExprUpdateParametersVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0), sub_20E195B0C(&qword_27C865F08, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E1001F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679A8, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E100298(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866FB8, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return sub_20E322470();
}

uint64_t sub_20E100304(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866FB8, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return sub_20E322480();
}

uint64_t sub_20E100448(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C8679A0, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1004E8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866FD0, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);

  return sub_20E322470();
}

uint64_t sub_20E100554(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866FD0, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);

  return sub_20E322480();
}

uint64_t sub_20E1005EC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865188);
  __swift_project_value_buffer(v0, qword_27C865188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "path";
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
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E100A70(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_20E184834();
          sub_20E322310();
        }
      }

      else if (result == 1)
      {
        sub_20E1009BC(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoASTFlatValue(0);
        sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1009BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_20E322430();
}

uint64_t sub_20E100A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_20E322430();
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E100C80(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for TranscriptProtoASTFlatValue(0);
      sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
      sub_20E322570();
    }

    sub_20E100E9C(v3, a1, a2, a3);
    if (v3[8] == 1)
    {
      sub_20E184834();
      sub_20E3224D0();
    }

    type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E100C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  sub_20E0486F4(a1 + *(updated + 24), v7, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_20E100E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  sub_20E0486F4(a1 + *(updated + 28), v7, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_20E101104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + *(a1 + 28), 1, 1, v5);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20E101208(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867998, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1012A8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865F08, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant);

  return sub_20E322470();
}

uint64_t sub_20E101314(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865F08, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateVariant);

  return sub_20E322480();
}

uint64_t sub_20E1014B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867990, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E101550(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866FF8, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);

  return sub_20E322470();
}

uint64_t sub_20E1015BC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866FF8, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);

  return sub_20E322480();
}

uint64_t sub_20E101768(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867988, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E101808(uint64_t a1)
{
  sub_20E195B0C(&qword_27C867010, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);

  return sub_20E322470();
}

uint64_t sub_20E101874(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C867010, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);

  return sub_20E322480();
}

uint64_t sub_20E10190C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8651D0);
  __swift_project_value_buffer(v0, qword_27C8651D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E101B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_20E322430();
}

uint64_t sub_20E101C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_20E101EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867980, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E101F84(uint64_t a1)
{
  sub_20E195B0C(&qword_27C867028, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);

  return sub_20E322470();
}

uint64_t sub_20E101FF0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C867028, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);

  return sub_20E322480();
}

uint64_t sub_20E10208C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8651E8);
  __swift_project_value_buffer(v0, qword_27C8651E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20E326340;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v45 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prefix";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v45 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "infix";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v45 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dot";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v45 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "index";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v45 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "call";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v45 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "endOfPlan";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v45 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "say";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v45 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "pick";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v45 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "confirm";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v45 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "search";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v45 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "pickOne";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v8();
  v29 = (v45 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "noMatchingTool";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v45 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "undo";
  *(v32 + 1) = 4;
  v32[16] = 2;
  v8();
  v33 = (v45 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "resolveTool";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v45 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "reject";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v8();
  v37 = v45 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "cancel";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  v8();
  v38 = (v45 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "continuePlanning";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v45 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "updateParameters";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v45 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "getMentionedApps";
  *(v43 + 1) = 16;
  v43[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoASTFlatExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_20E1029C8(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E102F78(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E103534(v5, a1, a2, a3);
          break;
        case 4:
          sub_20E103AF0(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E1040AC(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E104668(v5, a1, a2, a3);
          break;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 18;
          goto LABEL_18;
        case 9:
          sub_20E104C24(v5, a1, a2, a3);
          break;
        case 10:
          sub_20E1051E0(v5, a1, a2, a3);
          break;
        case 11:
          sub_20E10579C(v5, a1, a2, a3);
          break;
        case 12:
          sub_20E105D58(v5, a1, a2, a3);
          break;
        case 13:
          sub_20E106314(v5, a1, a2, a3);
          break;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 19;
LABEL_18:
          sub_20E07FF88(v11, v12, v13, v14, &qword_27C865F48, &unk_20E33C400, type metadata accessor for TranscriptProtoAstflatExprEnum, v15);
          break;
        case 15:
          sub_20E1068D0(v5, a1, a2, a3);
          break;
        case 16:
          sub_20E106E8C(v5, a1, a2, a3);
          break;
        case 17:
          sub_20E107448(v5, a1, a2, a3);
          break;
        case 18:
          sub_20E107A04(v5, a1, a2, a3);
          break;
        case 19:
          sub_20E107FC0(v5, a1, a2, a3);
          break;
        case 20:
          sub_20E10857C(v5, a1, a2, a3);
          break;
        case 21:
          sub_20E108B38(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E1029C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868048, &qword_20E33B0F0);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868048, &qword_20E33B0F0);
    return sub_20E04875C(v32, &qword_27C868048, &qword_20E33B0F0);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoASTFlatValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868048, &qword_20E33B0F0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E102F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868180, &qword_20E33B228);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868180, &qword_20E33B228);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867158, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868180, &qword_20E33B228);
  }

  sub_20E0486F4(v24, v32, &qword_27C868180, &qword_20E33B228);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868180, &qword_20E33B228);
    return sub_20E04875C(v32, &qword_27C868180, &qword_20E33B228);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868180, &qword_20E33B228);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E103534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868188, &qword_20E33B230);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C868188, &qword_20E33B230);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8670B0, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868188, &qword_20E33B230);
  }

  sub_20E0486F4(v24, v32, &qword_27C868188, &qword_20E33B230);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868188, &qword_20E33B230);
    return sub_20E04875C(v32, &qword_27C868188, &qword_20E33B230);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868188, &qword_20E33B230);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E103AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868190, &qword_20E33B238);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C868190, &qword_20E33B238);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867028, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868190, &qword_20E33B238);
  }

  sub_20E0486F4(v24, v32, &qword_27C868190, &qword_20E33B238);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868190, &qword_20E33B238);
    return sub_20E04875C(v32, &qword_27C868190, &qword_20E33B238);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868190, &qword_20E33B238);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1040AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868198, &qword_20E33B240);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C868198, &qword_20E33B240);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867098, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868198, &qword_20E33B240);
  }

  sub_20E0486F4(v24, v32, &qword_27C868198, &qword_20E33B240);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868198, &qword_20E33B240);
    return sub_20E04875C(v32, &qword_27C868198, &qword_20E33B240);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868198, &qword_20E33B240);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E104668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681A0, &qword_20E33B248);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C8681A0, &qword_20E33B248);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866EB0, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681A0, &qword_20E33B248);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681A0, &qword_20E33B248);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681A0, &qword_20E33B248);
    return sub_20E04875C(v32, &qword_27C8681A0, &qword_20E33B248);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681A0, &qword_20E33B248);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E104C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681A8, &qword_20E33B250);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C8681A8, &qword_20E33B250);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866EC8, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681A8, &qword_20E33B250);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681A8, &qword_20E33B250);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681A8, &qword_20E33B250);
    return sub_20E04875C(v32, &qword_27C8681A8, &qword_20E33B250);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681A8, &qword_20E33B250);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1051E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681B0, &qword_20E33B258);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C8681B0, &qword_20E33B258);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866EE0, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681B0, &qword_20E33B258);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681B0, &qword_20E33B258);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681B0, &qword_20E33B258);
    return sub_20E04875C(v32, &qword_27C8681B0, &qword_20E33B258);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681B0, &qword_20E33B258);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E10579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681B8, &qword_20E33B260);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v24, &qword_27C8681B8, &qword_20E33B260);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866EF8, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681B8, &qword_20E33B260);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681B8, &qword_20E33B260);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681B8, &qword_20E33B260);
    return sub_20E04875C(v32, &qword_27C8681B8, &qword_20E33B260);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681B8, &qword_20E33B260);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E105D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681C0, &qword_20E33B268);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v24, &qword_27C8681C0, &qword_20E33B268);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866F88, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681C0, &qword_20E33B268);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681C0, &qword_20E33B268);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681C0, &qword_20E33B268);
    return sub_20E04875C(v32, &qword_27C8681C0, &qword_20E33B268);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681C0, &qword_20E33B268);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E106314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681C8, &qword_20E33B270);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v24, &qword_27C8681C8, &qword_20E33B270);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866FF8, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681C8, &qword_20E33B270);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681C8, &qword_20E33B270);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681C8, &qword_20E33B270);
    return sub_20E04875C(v32, &qword_27C8681C8, &qword_20E33B270);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681C8, &qword_20E33B270);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1068D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681D0, &qword_20E33B278);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v24, &qword_27C8681D0, &qword_20E33B278);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866F10, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681D0, &qword_20E33B278);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681D0, &qword_20E33B278);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681D0, &qword_20E33B278);
    return sub_20E04875C(v32, &qword_27C8681D0, &qword_20E33B278);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681D0, &qword_20E33B278);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E106E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681D8, &qword_20E33B280);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v24, &qword_27C8681D8, &qword_20E33B280);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867010, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681D8, &qword_20E33B280);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681D8, &qword_20E33B280);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681D8, &qword_20E33B280);
    return sub_20E04875C(v32, &qword_27C8681D8, &qword_20E33B280);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681D8, &qword_20E33B280);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E107448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681E0, &qword_20E33B288);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_20E04875C(v24, &qword_27C8681E0, &qword_20E33B288);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866F28, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681E0, &qword_20E33B288);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681E0, &qword_20E33B288);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681E0, &qword_20E33B288);
    return sub_20E04875C(v32, &qword_27C8681E0, &qword_20E33B288);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681E0, &qword_20E33B288);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E107A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681E8, &qword_20E33B290);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_20E04875C(v24, &qword_27C8681E8, &qword_20E33B290);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866F40, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681E8, &qword_20E33B290);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681E8, &qword_20E33B290);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681E8, &qword_20E33B290);
    return sub_20E04875C(v32, &qword_27C8681E8, &qword_20E33B290);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681E8, &qword_20E33B290);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E107FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681F0, &qword_20E33B298);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_20E04875C(v24, &qword_27C8681F0, &qword_20E33B298);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866FA0, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681F0, &qword_20E33B298);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681F0, &qword_20E33B298);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681F0, &qword_20E33B298);
    return sub_20E04875C(v32, &qword_27C8681F0, &qword_20E33B298);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681F0, &qword_20E33B298);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E10857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  v6 = *(updated - 8);
  v7 = MEMORY[0x28223BE20](updated);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8681F8, &qword_20E33B2A0);
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
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_20E04875C(v24, &qword_27C8681F8, &qword_20E33B2A0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866FB8, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8681F8, &qword_20E33B2A0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8681F8, &qword_20E33B2A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8681F8, &qword_20E33B2A0);
    return sub_20E04875C(v32, &qword_27C8681F8, &qword_20E33B2A0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8681F8, &qword_20E33B2A0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E108B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v6 = *(MentionedApps - 8);
  v7 = MEMORY[0x28223BE20](MentionedApps);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868200, &qword_20E33B2A8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = MentionedApps;
  v26 = MentionedApps;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C865F48, &unk_20E33C400);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F48, &unk_20E33C400);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_20E04875C(v24, &qword_27C868200, &qword_20E33B2A8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866FD0, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868200, &qword_20E33B2A8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868200, &qword_20E33B2A8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868200, &qword_20E33B2A8);
    return sub_20E04875C(v32, &qword_27C868200, &qword_20E33B2A8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868200, &qword_20E33B2A8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F48, &unk_20E33C400);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoASTFlatExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E109744(v3, a1, a2, a3);
        goto LABEL_29;
      case 2u:
        sub_20E10997C(v3, a1, a2, a3);
        goto LABEL_29;
      case 3u:
        sub_20E109BB4(v3, a1, a2, a3);
        goto LABEL_29;
      case 4u:
        sub_20E109DEC(v3, a1, a2, a3);
        goto LABEL_29;
      case 5u:
        sub_20E10A024(v3, a1, a2, a3);
        goto LABEL_29;
      case 6u:
        sub_20E10A4A8(v3, a1, a2, a3);
        goto LABEL_29;
      case 7u:
        sub_20E10A6E0(v3, a1, a2, a3);
        goto LABEL_29;
      case 8u:
        sub_20E10A918(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 9u:
        sub_20E10AB50(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xAu:
        sub_20E10AD88(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xBu:
        sub_20E10B20C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xCu:
        sub_20E10B444(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xDu:
        sub_20E10B67C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xEu:
        sub_20E10B8B4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xFu:
        sub_20E10BAEC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0x10u:
        sub_20E10BD24(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
        }

        goto LABEL_9;
      case 0x11u:
        sub_20E10BF5C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
        }

LABEL_9:
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
        break;
      case 0x12u:
        result = sub_20E10A25C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x13u:
        result = sub_20E10AFC0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E109510(v3, a1, a2, a3);
LABEL_29:
        result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatExprEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for TranscriptProtoASTFlatExpr(0);
  return sub_20E3221A0();
}

uint64_t sub_20E109510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatValue);
    sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatValue);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E109744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
    sub_20E195B0C(&qword_27C867158, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPrefixVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
    sub_20E195B0C(&qword_27C8670B0, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E109BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
    sub_20E195B0C(&qword_27C867028, type metadata accessor for TranscriptProtoASTFlatExprDotVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprDotVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E109DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
    sub_20E195B0C(&qword_27C867098, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10A024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
    sub_20E195B0C(&qword_27C866EB0, type metadata accessor for TranscriptProtoASTFlatExprCallVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCallVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10A25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865F48, &unk_20E33C400);
  v12 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865F48, &unk_20E33C400);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
    if (EnumCaseMultiPayload == 18)
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

uint64_t sub_20E10A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
    sub_20E195B0C(&qword_27C866EC8, type metadata accessor for TranscriptProtoASTFlatExprSayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSayVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
    sub_20E195B0C(&qword_27C866EE0, type metadata accessor for TranscriptProtoASTFlatExprPickVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
    sub_20E195B0C(&qword_27C866EF8, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprConfirmVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
    sub_20E195B0C(&qword_27C866F88, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprSearchVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10AD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
    sub_20E195B0C(&qword_27C866FF8, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprPickOneVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865F48, &unk_20E33C400);
  v12 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865F48, &unk_20E33C400);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
    if (EnumCaseMultiPayload == 19)
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

uint64_t sub_20E10B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
    sub_20E195B0C(&qword_27C866F10, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUndoVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
    sub_20E195B0C(&qword_27C867010, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprResolveToolVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
    sub_20E195B0C(&qword_27C866F28, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprRejectVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
    sub_20E195B0C(&qword_27C866F40, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprCancelVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10BAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
    sub_20E195B0C(&qword_27C866FA0, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant, &protocol conformance descriptor for TranscriptProtoASTExprContinuePlanningVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  MEMORY[0x28223BE20](updated);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
    sub_20E195B0C(&qword_27C866FB8, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprUpdateParametersVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  MEMORY[0x28223BE20](MentionedApps);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F48, &unk_20E33C400);
  v11 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F48, &unk_20E33C400);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
    sub_20E195B0C(&qword_27C866FD0, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps, &protocol conformance descriptor for TranscriptProtoASTFlatExprGetMentionedApps);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10C244(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867978, type metadata accessor for TranscriptProtoASTFlatExpr, &protocol conformance descriptor for TranscriptProtoASTFlatExpr);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E10C2E4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C867040, type metadata accessor for TranscriptProtoASTFlatExpr, &protocol conformance descriptor for TranscriptProtoASTFlatExpr);

  return sub_20E322470();
}

uint64_t sub_20E10C350(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C867040, type metadata accessor for TranscriptProtoASTFlatExpr, &protocol conformance descriptor for TranscriptProtoASTFlatExpr);

  return sub_20E322480();
}

uint64_t sub_20E10C3EC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865200);
  __swift_project_value_buffer(v0, qword_27C865200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20E326360;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "null";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "double";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "string";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "array";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dict";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "symbol";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "identifier";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "statement";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoASTFlatValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result <= 8)
        {
          if (result == 6)
          {
            sub_20E10CC70(v5, a1, a2, a3);
          }

          else if (result == 7)
          {
            sub_20E10D22C(v5, a1, a2, a3);
          }
        }

        else
        {
          switch(result)
          {
            case 9:
              v11 = a1;
              v12 = v5;
              v13 = a2;
              v14 = a3;
              v15 = 7;
LABEL_5:
              sub_20E10D7E8(v11, v12, v13, v14, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum, v15);
              break;
            case 10:
              v11 = a1;
              v12 = v5;
              v13 = a2;
              v14 = a3;
              v15 = 6;
              goto LABEL_5;
            case 11:
              sub_20E10D9E4(v5, a1, a2, a3);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_20E07FF88(a1, v5, a2, a3, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum, 9u);
        }

        else if (result == 2)
        {
          sub_20E0F99E4(a1, v5, a2, a3, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum, 0);
        }
      }

      else if (result == 3)
      {
        sub_20E10CA94(a1, v5, a2, a3, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum, 1u);
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
          goto LABEL_5;
        }

        sub_20E1224BC(a1, v5, a2, a3, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E10CA94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v30 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v23 - v16;
  v28 = 0;
  v29 = 1;
  result = sub_20E322380();
  if (!v8)
  {
    v27 = a2;
    if ((v29 & 1) == 0)
    {
      v23[0] = a3;
      v23[1] = a4;
      v25 = v28;
      v26 = 0;
      sub_20E0486F4(v27, v17, a5, a6);
      v19 = a7(0);
      v24 = *(v19 - 8);
      v20 = (*(v24 + 48))(v17, 1, v19);
      sub_20E04875C(v17, a5, a6);
      if (v20 != 1)
      {
        v21 = v26;
        result = sub_20E3222C0();
        if (v21)
        {
          return result;
        }

        v26 = 0;
      }

      v22 = v27;
      sub_20E04875C(v27, a5, a6);
      *v22 = v25;
      swift_storeEnumTagMultiPayload();
      return (*(v24 + 56))(v22, 0, 1, v19);
    }
  }

  return result;
}

uint64_t sub_20E10CC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868168, &qword_20E33B210);
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
  sub_20E0486F4(a1, v12, &qword_27C865F58, &qword_20E3263B8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F58, &qword_20E3263B8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatValueEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatValueEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C868168, &qword_20E33B210);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867068, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868168, &qword_20E33B210);
  }

  sub_20E0486F4(v24, v32, &qword_27C868168, &qword_20E33B210);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868168, &qword_20E33B210);
    return sub_20E04875C(v32, &qword_27C868168, &qword_20E33B210);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868168, &qword_20E33B210);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F58, &qword_20E3263B8);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E10D22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868170, &qword_20E33B218);
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
  sub_20E0486F4(a1, v12, &qword_27C865F58, &qword_20E3263B8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F58, &qword_20E3263B8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatValueEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatValueEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C868170, &qword_20E33B218);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867080, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868170, &qword_20E33B218);
  }

  sub_20E0486F4(v24, v32, &qword_27C868170, &qword_20E33B218);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868170, &qword_20E33B218);
    return sub_20E04875C(v32, &qword_27C868170, &qword_20E33B218);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868170, &qword_20E33B218);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F58, &qword_20E3263B8);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E10D7E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v35 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v33 = 0;
  v34 = 0;
  result = sub_20E3223D0();
  if (v8)
  {
  }

  v30 = a3;
  v31 = a4;
  v32 = a2;
  if (v34)
  {
    v29 = v34;
    v27 = v33;
    sub_20E0486F4(v32, v17, a5, a6);
    v19 = a7(0);
    v26 = *(v19 - 8);
    v20 = *(v26 + 48);
    v28 = v19;
    v21 = v20(v17, 1);
    sub_20E04875C(v17, a5, a6);
    if (v21 != 1)
    {
      sub_20E3222C0();
    }

    v22 = v32;
    sub_20E04875C(v32, a5, a6);
    v23 = v28;
    v24 = v29;
    *v22 = v27;
    v22[1] = v24;
    swift_storeEnumTagMultiPayload();
    return (*(v26 + 56))(v22, 0, 1, v23);
  }

  return result;
}

uint64_t sub_20E10D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
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
  sub_20E0486F4(a1, v12, &qword_27C865F58, &qword_20E3263B8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865F58, &qword_20E3263B8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoAstflatValueEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoAstflatValueEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoStatementID);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E0486F4(v24, v32, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
    return sub_20E04875C(v32, &qword_27C8639D0, &unk_20E33C230);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoStatementID);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865F58, &qword_20E3263B8);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoStatementID);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoASTFlatValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C865F58, &qword_20E3263B8);
  v11 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload != 5)
        {
          sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatValueEnum);
          result = sub_20E10EBAC(v3, a1, a2, a3);
          if (v4)
          {
            return result;
          }

          goto LABEL_29;
        }

        sub_20E10E7FC(v3, a1, a2, a3);
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatValueEnum);
          result = sub_20E10EA34(v3, a1, a2, a3);
          if (v4)
          {
            return result;
          }

          goto LABEL_29;
        }

        if (EnumCaseMultiPayload != 8)
        {
          result = sub_20E10E378(v3, a1, a2, a3);
          if (v4)
          {
            return result;
          }

          goto LABEL_29;
        }

        sub_20E10ED24(v3, a1, a2, a3);
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          result = sub_20E123330(v3, a1, a2, a3, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum, type metadata accessor for TranscriptProtoAstflatValueEnum);
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = sub_20E1231D8(v3, a1, a2, a3, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum, type metadata accessor for TranscriptProtoAstflatValueEnum);
          if (v4)
          {
            return result;
          }
        }

        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 2)
      {
        result = sub_20E12348C(v3, a1, a2, a3, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (v4)
        {
          return result;
        }

        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatValueEnum);
        result = sub_20E1235E8(v3, a1, a2, a3, &qword_27C865F58, &qword_20E3263B8, type metadata accessor for TranscriptProtoAstflatValueEnum, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (v4)
        {
          return result;
        }

        goto LABEL_29;
      }

      sub_20E10E5C4(v3, a1, a2, a3);
    }

    result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_29:
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  return sub_20E3221A0();
}

uint64_t sub_20E10E378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865F58, &qword_20E3263B8);
  v12 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865F58, &qword_20E3263B8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (EnumCaseMultiPayload == 9)
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

uint64_t sub_20E10E5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F58, &qword_20E3263B8);
  v11 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F58, &qword_20E3263B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
    sub_20E195B0C(&qword_27C867068, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10E7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F58, &qword_20E3263B8);
  v11 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F58, &qword_20E3263B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
    sub_20E195B0C(&qword_27C867080, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C865F58, &qword_20E3263B8);
  v8 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F58, &qword_20E3263B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E322540();
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10EBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C865F58, &qword_20E3263B8);
  v8 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F58, &qword_20E3263B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E322540();
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10ED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865F58, &qword_20E3263B8);
  v11 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865F58, &qword_20E3263B8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E10F00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867970, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E10F0AC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);

  return sub_20E322470();
}

uint64_t sub_20E10F118(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);

  return sub_20E322480();
}

uint64_t TranscriptProtoASTFlatValueArrayVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoASTFlatValue(0), sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E10F3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867968, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E10F494(uint64_t a1)
{
  sub_20E195B0C(&qword_27C867068, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);

  return sub_20E322470();
}

uint64_t sub_20E10F500(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C867068, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueArrayVariant);

  return sub_20E322480();
}

uint64_t TranscriptProtoASTFlatValueDictVariant.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E10F664(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E10F664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA8, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_20E322290();
}

uint64_t TranscriptProtoASTFlatValueDictVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_20E322170(), type metadata accessor for TranscriptProtoASTFlatValue(0), sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue), sub_20E195B0C(&qword_27C865EA8, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue), result = sub_20E322490(), !v5))
  {
    type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E10F924@<X0>(uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = a2(MEMORY[0x277D84F90]);
  *a3 = result;
  return result;
}

uint64_t sub_20E10F9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867960, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E10FA54(uint64_t a1)
{
  sub_20E195B0C(&qword_27C867080, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);

  return sub_20E322470();
}

uint64_t sub_20E10FAC0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C867080, type metadata accessor for TranscriptProtoASTFlatValueDictVariant, &protocol conformance descriptor for TranscriptProtoASTFlatValueDictVariant);

  return sub_20E322480();
}

uint64_t sub_20E10FB70()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865248);
  __swift_project_value_buffer(v0, qword_27C865248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoASTFlatExprIndexVariant.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoASTFlatValue(0);
        sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E10FE5C(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E10FE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_20E322430();
}

uint64_t sub_20E10FF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_20E110174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_20E110440(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867958, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E1104E0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C867098, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);

  return sub_20E322470();
}

uint64_t sub_20E11054C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C867098, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprIndexVariant);

  return sub_20E322480();
}

uint64_t sub_20E1105E8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865260);
  __swift_project_value_buffer(v0, qword_27C865260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "third";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E11087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_20E322430();
}

uint64_t sub_20E110930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  return sub_20E322430();
}

uint64_t TranscriptProtoASTFlatExprInfixVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_20E184888(), result = sub_20E3224D0(), !v4))
  {
    result = sub_20E110AC0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E110CDC(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E110AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_20E110CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868048, &qword_20E33B0F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868048, &qword_20E33B0F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195B0C(&qword_27C865EA0, type metadata accessor for TranscriptProtoASTFlatValue, &protocol conformance descriptor for TranscriptProtoASTFlatValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_20E110FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867950, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E111048(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8670B0, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return sub_20E322470();
}

uint64_t sub_20E1110B4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8670B0, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant, &protocol conformance descriptor for TranscriptProtoASTFlatExprInfixVariant);

  return sub_20E322480();
}

uint64_t sub_20E111150()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C865278);
  __swift_project_value_buffer(v0, qword_27C865278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_20E326370;
  v4 = v67 + v3;
  v5 = v67 + v3 + v1[14];
  *(v67 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v67 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "statementId";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v67 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "prefix";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v67 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "infix";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v67 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "index";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v67 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "updateParameters";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v67 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "call";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v67 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "say";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v67 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "pick";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v67 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "confirm";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v67 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "search";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v67 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 25;
  *v28 = "structuredSearch";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v67 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "pickOne";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v67 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "resolveTool";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v67 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v8();
  v35 = (v67 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "reject";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v8();
  v37 = v67 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "cancel";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  v8();
  v38 = (v67 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "noMatchingTool";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v67 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "continuePlanning";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v67 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "endOfPlan";
  *(v43 + 1) = 9;
  v43[16] = 2;
  v8();
  v44 = (v67 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "getMentionedApps";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v8();
  v46 = (v67 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "open";
  *(v47 + 1) = 4;
  v47[16] = 2;
  v8();
  v48 = (v67 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "explicitResolutionRequest";
  *(v49 + 1) = 25;
  v49[16] = 2;
  v8();
  v50 = (v67 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 26;
  *v51 = "payload";
  *(v51 + 1) = 7;
  v51[16] = 2;
  v8();
  v52 = (v67 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 27;
  *v53 = "format";
  *(v53 + 1) = 6;
  v53[16] = 2;
  v8();
  v54 = (v67 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 28;
  *v55 = "retrieveContext";
  *(v55 + 1) = 15;
  v55[16] = 2;
  v8();
  v56 = (v67 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 29;
  *v57 = "retrieveSpans";
  *(v57 + 1) = 13;
  v57[16] = 2;
  v8();
  v58 = (v67 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 30;
  *v59 = "retrieveTools";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v67 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 31;
  *v61 = "siriXFallback";
  *(v61 + 1) = 13;
  v61[16] = 2;
  v8();
  v62 = (v67 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 32;
  *v63 = "userConfirm";
  *(v63 + 1) = 11;
  v63[16] = 2;
  v8();
  v64 = (v67 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 33;
  *v65 = "userDisambiguate";
  *(v65 + 1) = 16;
  v65[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_20E111E20(v5, a1, a2, a3);
        break;
      case 2:
        sub_20E1123D0(v5, a1, a2, a3);
        break;
      case 3:
        sub_20E11298C(v5, a1, a2, a3);
        break;
      case 4:
        sub_20E112F48(v5, a1, a2, a3);
        break;
      case 6:
        sub_20E113504(v5, a1, a2, a3);
        break;
      case 7:
        sub_20E113AC0(v5, a1, a2, a3);
        break;
      case 8:
        sub_20E11407C(v5, a1, a2, a3);
        break;
      case 9:
        sub_20E114638(v5, a1, a2, a3);
        break;
      case 10:
        sub_20E114BF4(v5, a1, a2, a3);
        break;
      case 12:
        sub_20E1151B0(v5, a1, a2, a3);
        break;
      case 13:
        sub_20E11576C(v5, a1, a2, a3);
        break;
      case 14:
        sub_20E115D28(v5, a1, a2, a3);
        break;
      case 15:
        sub_20E1162E4(v5, a1, a2, a3);
        break;
      case 16:
        sub_20E1168A0(v5, a1, a2, a3);
        break;
      case 17:
        sub_20E116E5C(v5, a1, a2, a3);
        break;
      case 18:
        sub_20E117418(v5, a1, a2, a3);
        break;
      case 19:
        sub_20E1179D4(v5, a1, a2, a3);
        break;
      case 20:
        sub_20E117F90(v5, a1, a2, a3);
        break;
      case 21:
        sub_20E11854C(v5, a1, a2, a3);
        break;
      case 22:
        sub_20E118B08(v5, a1, a2, a3);
        break;
      case 23:
        sub_20E1190C4(v5, a1, a2, a3);
        break;
      case 24:
        sub_20E119680(v5, a1, a2, a3);
        break;
      case 25:
        sub_20E119C3C(v5, a1, a2, a3);
        break;
      case 26:
        sub_20E11A1F8(v5, a1, a2, a3);
        break;
      case 27:
        sub_20E11A7B4(v5, a1, a2, a3);
        break;
      case 28:
        sub_20E11AD70(v5, a1, a2, a3);
        break;
      case 29:
        sub_20E11B32C(v5, a1, a2, a3);
        break;
      case 30:
        sub_20E11B8E8(v5, a1, a2, a3);
        break;
      case 31:
        sub_20E11BEA4(v5, a1, a2, a3);
        break;
      case 32:
        sub_20E11C460(v5, a1, a2, a3);
        break;
      case 33:
        sub_20E11CA1C(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_20E111E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868070, &qword_20E33B118);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868070, &qword_20E33B118);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoValueExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoValueExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8670F8, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868070, &qword_20E33B118);
  }

  sub_20E0486F4(v24, v32, &qword_27C868070, &qword_20E33B118);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868070, &qword_20E33B118);
    return sub_20E04875C(v32, &qword_27C868070, &qword_20E33B118);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoValueExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868070, &qword_20E33B118);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoValueExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1123D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoStatementID);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E0486F4(v24, v32, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
    return sub_20E04875C(v32, &qword_27C8639D0, &unk_20E33C230);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoStatementID);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoStatementID);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868078, &qword_20E33B120);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C868078, &qword_20E33B120);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPrefixExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPrefixExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867128, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868078, &qword_20E33B120);
  }

  sub_20E0486F4(v24, v32, &qword_27C868078, &qword_20E33B120);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868078, &qword_20E33B120);
    return sub_20E04875C(v32, &qword_27C868078, &qword_20E33B120);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPrefixExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868078, &qword_20E33B120);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPrefixExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E112F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868080, &qword_20E33B128);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C868080, &qword_20E33B128);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoInfixExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoInfixExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867140, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868080, &qword_20E33B128);
  }

  sub_20E0486F4(v24, v32, &qword_27C868080, &qword_20E33B128);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868080, &qword_20E33B128);
    return sub_20E04875C(v32, &qword_27C868080, &qword_20E33B128);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoInfixExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868080, &qword_20E33B128);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoInfixExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E113504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868088, &qword_20E33B130);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C868088, &qword_20E33B130);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoIndexExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoIndexExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867170, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868088, &qword_20E33B130);
  }

  sub_20E0486F4(v24, v32, &qword_27C868088, &qword_20E33B130);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868088, &qword_20E33B130);
    return sub_20E04875C(v32, &qword_27C868088, &qword_20E33B130);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoIndexExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868088, &qword_20E33B130);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoIndexExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E113AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868090, &qword_20E33B138);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C868090, &qword_20E33B138);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867188, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868090, &qword_20E33B138);
  }

  sub_20E0486F4(v24, v32, &qword_27C868090, &qword_20E33B138);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868090, &qword_20E33B138);
    return sub_20E04875C(v32, &qword_27C868090, &qword_20E33B138);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868090, &qword_20E33B138);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868098, &qword_20E33B140);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C868098, &qword_20E33B140);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoCallExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoCallExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8671C0, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868098, &qword_20E33B140);
  }

  sub_20E0486F4(v24, v32, &qword_27C868098, &qword_20E33B140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868098, &qword_20E33B140);
    return sub_20E04875C(v32, &qword_27C868098, &qword_20E33B140);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoCallExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868098, &qword_20E33B140);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoCallExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E114638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680A0, &qword_20E33B148);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C8680A0, &qword_20E33B148);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSayExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSayExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867220, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680A0, &qword_20E33B148);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680A0, &qword_20E33B148);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680A0, &qword_20E33B148);
    return sub_20E04875C(v32, &qword_27C8680A0, &qword_20E33B148);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSayExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680A0, &qword_20E33B148);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSayExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E114BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680A8, &qword_20E33B150);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v24, &qword_27C8680A8, &qword_20E33B150);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPickExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPickExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867238, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680A8, &qword_20E33B150);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680A8, &qword_20E33B150);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680A8, &qword_20E33B150);
    return sub_20E04875C(v32, &qword_27C8680A8, &qword_20E33B150);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPickExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680A8, &qword_20E33B150);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPickExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1151B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680B0, &qword_20E33B158);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v24, &qword_27C8680B0, &qword_20E33B158);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoConfirmExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoConfirmExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867250, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680B0, &qword_20E33B158);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680B0, &qword_20E33B158);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680B0, &qword_20E33B158);
    return sub_20E04875C(v32, &qword_27C8680B0, &qword_20E33B158);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoConfirmExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680B0, &qword_20E33B158);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoConfirmExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680B8, &qword_20E33B160);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v24, &qword_27C8680B8, &qword_20E33B160);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSearchExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSearchExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867268, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680B8, &qword_20E33B160);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680B8, &qword_20E33B160);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680B8, &qword_20E33B160);
    return sub_20E04875C(v32, &qword_27C8680B8, &qword_20E33B160);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSearchExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680B8, &qword_20E33B160);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSearchExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E115D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680C0, &qword_20E33B168);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v24, &qword_27C8680C0, &qword_20E33B168);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPickOneExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPickOneExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8672A8, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680C0, &qword_20E33B168);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680C0, &qword_20E33B168);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680C0, &qword_20E33B168);
    return sub_20E04875C(v32, &qword_27C8680C0, &qword_20E33B168);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPickOneExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680C0, &qword_20E33B168);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPickOneExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1162E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680C8, &qword_20E33B170);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_20E04875C(v24, &qword_27C8680C8, &qword_20E33B170);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoResolveToolExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoResolveToolExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8672C0, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680C8, &qword_20E33B170);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680C8, &qword_20E33B170);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680C8, &qword_20E33B170);
    return sub_20E04875C(v32, &qword_27C8680C8, &qword_20E33B170);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoResolveToolExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680C8, &qword_20E33B170);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoResolveToolExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1168A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680D0, &qword_20E33B178);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_20E04875C(v24, &qword_27C8680D0, &qword_20E33B178);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoUndoExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoUndoExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8672D8, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680D0, &qword_20E33B178);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680D0, &qword_20E33B178);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680D0, &qword_20E33B178);
    return sub_20E04875C(v32, &qword_27C8680D0, &qword_20E33B178);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoUndoExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680D0, &qword_20E33B178);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoUndoExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E116E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680D8, &qword_20E33B180);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_20E04875C(v24, &qword_27C8680D8, &qword_20E33B180);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRejectExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRejectExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8672F0, type metadata accessor for TranscriptProtoRejectExpression, &protocol conformance descriptor for TranscriptProtoRejectExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680D8, &qword_20E33B180);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680D8, &qword_20E33B180);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680D8, &qword_20E33B180);
    return sub_20E04875C(v32, &qword_27C8680D8, &qword_20E33B180);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRejectExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680D8, &qword_20E33B180);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRejectExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E117418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680E0, &qword_20E33B188);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_20E04875C(v24, &qword_27C8680E0, &qword_20E33B188);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoCancelExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoCancelExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867308, type metadata accessor for TranscriptProtoCancelExpression, &protocol conformance descriptor for TranscriptProtoCancelExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680E0, &qword_20E33B188);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680E0, &qword_20E33B188);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680E0, &qword_20E33B188);
    return sub_20E04875C(v32, &qword_27C8680E0, &qword_20E33B188);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoCancelExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680E0, &qword_20E33B188);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoCancelExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1179D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680E8, &qword_20E33B190);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_20E04875C(v24, &qword_27C8680E8, &qword_20E33B190);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867320, type metadata accessor for TranscriptProtoNoMatchingToolExpression, &protocol conformance descriptor for TranscriptProtoNoMatchingToolExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680E8, &qword_20E33B190);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680E8, &qword_20E33B190);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680E8, &qword_20E33B190);
    return sub_20E04875C(v32, &qword_27C8680E8, &qword_20E33B190);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680E8, &qword_20E33B190);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E117F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680F0, &qword_20E33B198);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_20E04875C(v24, &qword_27C8680F0, &qword_20E33B198);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867338, type metadata accessor for TranscriptProtoContinuePlanningExpression, &protocol conformance descriptor for TranscriptProtoContinuePlanningExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680F0, &qword_20E33B198);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680F0, &qword_20E33B198);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680F0, &qword_20E33B198);
    return sub_20E04875C(v32, &qword_27C8680F0, &qword_20E33B198);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680F0, &qword_20E33B198);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8680F8, &qword_20E33B1A0);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_20E04875C(v24, &qword_27C8680F8, &qword_20E33B1A0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867350, type metadata accessor for TranscriptProtoEndOfPlanExpression, &protocol conformance descriptor for TranscriptProtoEndOfPlanExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8680F8, &qword_20E33B1A0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8680F8, &qword_20E33B1A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8680F8, &qword_20E33B1A0);
    return sub_20E04875C(v32, &qword_27C8680F8, &qword_20E33B1A0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8680F8, &qword_20E33B1A0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E118B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868100, &qword_20E33B1A8);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_20E04875C(v24, &qword_27C868100, &qword_20E33B1A8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867368, type metadata accessor for TranscriptProtoGetMentionedAppsExpression, &protocol conformance descriptor for TranscriptProtoGetMentionedAppsExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868100, &qword_20E33B1A8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868100, &qword_20E33B1A8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868100, &qword_20E33B1A8);
    return sub_20E04875C(v32, &qword_27C868100, &qword_20E33B1A8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868100, &qword_20E33B1A8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E1190C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868108, &qword_20E33B1B0);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_20E04875C(v24, &qword_27C868108, &qword_20E33B1B0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoOpenExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoOpenExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867380, type metadata accessor for TranscriptProtoOpenExpression, &protocol conformance descriptor for TranscriptProtoOpenExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868108, &qword_20E33B1B0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868108, &qword_20E33B1B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868108, &qword_20E33B1B0);
    return sub_20E04875C(v32, &qword_27C868108, &qword_20E33B1B0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoOpenExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868108, &qword_20E33B1B0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoOpenExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E119680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868110, &qword_20E33B1B8);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_20E04875C(v24, &qword_27C868110, &qword_20E33B1B8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867398, type metadata accessor for TranscriptProtoExplicitResolutionRequest, &protocol conformance descriptor for TranscriptProtoExplicitResolutionRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868110, &qword_20E33B1B8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868110, &qword_20E33B1B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868110, &qword_20E33B1B8);
    return sub_20E04875C(v32, &qword_27C868110, &qword_20E33B1B8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868110, &qword_20E33B1B8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E119C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868118, &qword_20E33B1C0);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v24, &qword_27C868118, &qword_20E33B1C0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867280, type metadata accessor for TranscriptProtoStructuredSearchExpression, &protocol conformance descriptor for TranscriptProtoStructuredSearchExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868118, &qword_20E33B1C0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868118, &qword_20E33B1C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868118, &qword_20E33B1C0);
    return sub_20E04875C(v32, &qword_27C868118, &qword_20E33B1C0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868118, &qword_20E33B1C0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868120, &qword_20E33B1C8);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_20E04875C(v24, &qword_27C868120, &qword_20E33B1C8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPayloadExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPayloadExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8673B0, type metadata accessor for TranscriptProtoPayloadExpression, &protocol conformance descriptor for TranscriptProtoPayloadExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868120, &qword_20E33B1C8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868120, &qword_20E33B1C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868120, &qword_20E33B1C8);
    return sub_20E04875C(v32, &qword_27C868120, &qword_20E33B1C8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPayloadExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868120, &qword_20E33B1C8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPayloadExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868128, &qword_20E33B1D0);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_20E04875C(v24, &qword_27C868128, &qword_20E33B1D0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoFormatExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoFormatExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8673C8, type metadata accessor for TranscriptProtoFormatExpression, &protocol conformance descriptor for TranscriptProtoFormatExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868128, &qword_20E33B1D0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868128, &qword_20E33B1D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868128, &qword_20E33B1D0);
    return sub_20E04875C(v32, &qword_27C868128, &qword_20E33B1D0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoFormatExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868128, &qword_20E33B1D0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoFormatExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  v6 = *(ContextExpression - 8);
  v7 = MEMORY[0x28223BE20](ContextExpression);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868130, &qword_20E33B1D8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = ContextExpression;
  v26 = ContextExpression;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_20E04875C(v24, &qword_27C868130, &qword_20E33B1D8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRetrieveContextExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRetrieveContextExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8671D8, type metadata accessor for TranscriptProtoRetrieveContextExpression, &protocol conformance descriptor for TranscriptProtoRetrieveContextExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868130, &qword_20E33B1D8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868130, &qword_20E33B1D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868130, &qword_20E33B1D8);
    return sub_20E04875C(v32, &qword_27C868130, &qword_20E33B1D8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRetrieveContextExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868130, &qword_20E33B1D8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRetrieveContextExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11B32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  v6 = *(SpansExpression - 8);
  v7 = MEMORY[0x28223BE20](SpansExpression);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868138, &qword_20E33B1E0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = SpansExpression;
  v26 = SpansExpression;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_20E04875C(v24, &qword_27C868138, &qword_20E33B1E0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8671F0, type metadata accessor for TranscriptProtoRetrieveSpansExpression, &protocol conformance descriptor for TranscriptProtoRetrieveSpansExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868138, &qword_20E33B1E0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868138, &qword_20E33B1E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868138, &qword_20E33B1E0);
    return sub_20E04875C(v32, &qword_27C868138, &qword_20E33B1E0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868138, &qword_20E33B1E0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11B8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  v6 = *(ToolsExpression - 8);
  v7 = MEMORY[0x28223BE20](ToolsExpression);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868140, &qword_20E33B1E8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = ToolsExpression;
  v26 = ToolsExpression;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_20E04875C(v24, &qword_27C868140, &qword_20E33B1E8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C867208, type metadata accessor for TranscriptProtoRetrieveToolsExpression, &protocol conformance descriptor for TranscriptProtoRetrieveToolsExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868140, &qword_20E33B1E8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868140, &qword_20E33B1E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868140, &qword_20E33B1E8);
    return sub_20E04875C(v32, &qword_27C868140, &qword_20E33B1E8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868140, &qword_20E33B1E8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11BEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868148, &qword_20E33B1F0);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_20E04875C(v24, &qword_27C868148, &qword_20E33B1F0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8670E0, type metadata accessor for TranscriptProtoSiriXFallbackExpression, &protocol conformance descriptor for TranscriptProtoSiriXFallbackExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868148, &qword_20E33B1F0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868148, &qword_20E33B1F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868148, &qword_20E33B1F0);
    return sub_20E04875C(v32, &qword_27C868148, &qword_20E33B1F0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868148, &qword_20E33B1F0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868150, &qword_20E33B1F8);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_20E04875C(v24, &qword_27C868150, &qword_20E33B1F8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoUserConfirmExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoUserConfirmExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8673E0, type metadata accessor for TranscriptProtoUserConfirmExpression, &protocol conformance descriptor for TranscriptProtoUserConfirmExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868150, &qword_20E33B1F8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868150, &qword_20E33B1F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868150, &qword_20E33B1F8);
    return sub_20E04875C(v32, &qword_27C868150, &qword_20E33B1F8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoUserConfirmExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868150, &qword_20E33B1F8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoUserConfirmExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E11CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868158, &qword_20E33B200);
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
  sub_20E0486F4(a1, v12, &qword_27C864160, &unk_20E33C410);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C864160, &unk_20E33C410);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExpressionEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_20E04875C(v24, &qword_27C868158, &qword_20E33B200);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExpressionEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8673F8, type metadata accessor for TranscriptProtoUserDisambiguateExpression, &protocol conformance descriptor for TranscriptProtoUserDisambiguateExpression);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868158, &qword_20E33B200);
  }

  sub_20E0486F4(v24, v32, &qword_27C868158, &qword_20E33B200);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868158, &qword_20E33B200);
    return sub_20E04875C(v32, &qword_27C868158, &qword_20E33B200);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868158, &qword_20E33B200);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C864160, &unk_20E33C410);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E11D784(v3, a1, a2, a3);
        goto LABEL_37;
      case 2u:
        sub_20E11D9BC(v3, a1, a2, a3);
        goto LABEL_37;
      case 3u:
        sub_20E11DBF4(v3, a1, a2, a3);
        goto LABEL_37;
      case 4u:
        sub_20E11DE2C(v3, a1, a2, a3);
        goto LABEL_37;
      case 5u:
        sub_20E11E064(v3, a1, a2, a3);
        goto LABEL_37;
      case 6u:
        sub_20E11E29C(v3, a1, a2, a3);
        goto LABEL_37;
      case 7u:
        sub_20E11E4D4(v3, a1, a2, a3);
        goto LABEL_37;
      case 8u:
        sub_20E11E70C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 9u:
        sub_20E11E944(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xAu:
        sub_20E11EB7C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xBu:
        sub_20E12061C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xCu:
        sub_20E11EDB4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xDu:
        sub_20E11EFEC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xEu:
        sub_20E11F224(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xFu:
        sub_20E11F45C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x10u:
        sub_20E11F694(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x11u:
        sub_20E11F8CC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x12u:
        sub_20E11FB04(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x13u:
        sub_20E11FD3C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x14u:
        sub_20E11FF74(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x15u:
        sub_20E1201AC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x16u:
        sub_20E1203E4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x17u:
        sub_20E120854(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x18u:
        sub_20E120A8C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x19u:
        sub_20E120CC4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x1Au:
        sub_20E120EFC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x1Bu:
        sub_20E121134(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
        }

        goto LABEL_7;
      case 0x1Cu:
        sub_20E12136C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x1Du:
        sub_20E1215A4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x1Eu:
        sub_20E1217DC(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
        }

LABEL_7:
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
        break;
      default:
        sub_20E11D550(v3, a1, a2, a3);
LABEL_37:
        result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for TranscriptProtoExpression(0);
  return sub_20E3221A0();
}

uint64_t sub_20E11D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoValueExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoValueExpression);
    sub_20E195B0C(&qword_27C8670F8, type metadata accessor for TranscriptProtoValueExpression, &protocol conformance descriptor for TranscriptProtoValueExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoValueExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPrefixExpression);
    sub_20E195B0C(&qword_27C867128, type metadata accessor for TranscriptProtoPrefixExpression, &protocol conformance descriptor for TranscriptProtoPrefixExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPrefixExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoInfixExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoInfixExpression);
    sub_20E195B0C(&qword_27C867140, type metadata accessor for TranscriptProtoInfixExpression, &protocol conformance descriptor for TranscriptProtoInfixExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoInfixExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11DE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIndexExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoIndexExpression);
    sub_20E195B0C(&qword_27C867170, type metadata accessor for TranscriptProtoIndexExpression, &protocol conformance descriptor for TranscriptProtoIndexExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoIndexExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  MEMORY[0x28223BE20](updated);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    sub_20E195B0C(&qword_27C867188, type metadata accessor for TranscriptProtoUpdateParametersExpression, &protocol conformance descriptor for TranscriptProtoUpdateParametersExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoCallExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoCallExpression);
    sub_20E195B0C(&qword_27C8671C0, type metadata accessor for TranscriptProtoCallExpression, &protocol conformance descriptor for TranscriptProtoCallExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoCallExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSayExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSayExpression);
    sub_20E195B0C(&qword_27C867220, type metadata accessor for TranscriptProtoSayExpression, &protocol conformance descriptor for TranscriptProtoSayExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSayExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPickExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPickExpression);
    sub_20E195B0C(&qword_27C867238, type metadata accessor for TranscriptProtoPickExpression, &protocol conformance descriptor for TranscriptProtoPickExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPickExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11E944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoConfirmExpression);
    sub_20E195B0C(&qword_27C867250, type metadata accessor for TranscriptProtoConfirmExpression, &protocol conformance descriptor for TranscriptProtoConfirmExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoConfirmExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSearchExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSearchExpression);
    sub_20E195B0C(&qword_27C867268, type metadata accessor for TranscriptProtoSearchExpression, &protocol conformance descriptor for TranscriptProtoSearchExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSearchExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPickOneExpression);
    sub_20E195B0C(&qword_27C8672A8, type metadata accessor for TranscriptProtoPickOneExpression, &protocol conformance descriptor for TranscriptProtoPickOneExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPickOneExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoResolveToolExpression);
    sub_20E195B0C(&qword_27C8672C0, type metadata accessor for TranscriptProtoResolveToolExpression, &protocol conformance descriptor for TranscriptProtoResolveToolExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoResolveToolExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E11F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoExpression(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C864160, &unk_20E33C410);
  v11 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C864160, &unk_20E33C410);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoUndoExpression);
    sub_20E195B0C(&qword_27C8672D8, type metadata accessor for TranscriptProtoUndoExpression, &protocol conformance descriptor for TranscriptProtoUndoExpression);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoUndoExpression);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}