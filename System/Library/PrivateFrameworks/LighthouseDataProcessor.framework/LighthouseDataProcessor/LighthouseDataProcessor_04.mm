uint64_t sub_20E0AD050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoCandidate(0);
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

uint64_t sub_20E0AD26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863B20, &unk_20E33C290);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B20, &unk_20E33C290);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_20E195B0C(&qword_27C866668, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoCandidatePromptStatus);
}

uint64_t sub_20E0AD488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoCandidate(0);
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

uint64_t sub_20E0AD77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867D00, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AD81C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return sub_20E322470();
}

uint64_t sub_20E0AD888(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865CA8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return sub_20E322480();
}

uint64_t sub_20E0AD924()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8646E8);
  __swift_project_value_buffer(v0, qword_27C8646E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notPrompted";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confirmed";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "picked";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoCandidatePromptStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E0ADC1C(a1, v5, a2, a3);
        break;
      case 2:
        sub_20E0A5FD4(a1, v5, a2, a3, 1);
        break;
      case 1:
        sub_20E0A5FD4(a1, v5, a2, a3, 0);
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoCandidatePromptStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 9))
  {
    goto LABEL_2;
  }

  if (*(v3 + 8))
  {
    if (*v3)
    {
      result = sub_20E0ADEE4(v3, a1, a2, a3, 2);
      if (!v4)
      {
LABEL_2:
        type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
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

uint64_t sub_20E0ADD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 9) & 1) != 0 || (*(a1 + 8) & 1) == 0 || *a1)
  {
    __break(1u);
  }

  else
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_20E0ADEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_20E322110();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 9) & 1) == 0 && (*(a1 + 8) & 1) != 0 && *a1)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0AE09C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E0AE114(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CF8, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AE1B4(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866668, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return sub_20E322470();
}

uint64_t sub_20E0AE220(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866668, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return sub_20E322480();
}

uint64_t sub_20E0AE2BC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864700);
  __swift_project_value_buffer(v0, qword_27C864700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 2;
  *v4 = "toolId";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 3;
  *v8 = "parameters";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "clientQueryId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "planEventId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "shimParameters";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoClientAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      switch(result)
      {
        case 5:
          goto LABEL_14;
        case 7:
          sub_20E0AE7A8(a1, v5, a2, a3);
          break;
        case 8:
          sub_20E0AE85C(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          sub_20E3223E0();
          break;
        case 3:
          sub_20E0AE6B0(a1, v5, a2, a3);
          break;
        case 4:
LABEL_14:
          sub_20E3223D0();
          break;
      }
    }
  }
}

uint64_t sub_20E0AE6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322290();
}

uint64_t sub_20E0AE7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoClientAction(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0AE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for TranscriptProtoShimParameters(0);
  sub_20E195B0C(&qword_27C865AF8, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
  sub_20E195B0C(&qword_27C865B00, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
  return sub_20E322290();
}

uint64_t TranscriptProtoClientAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = *v5;
  v10 = v5[1];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = sub_20E322540(), !v4))
  {
    if (*(v5[2] + 16))
    {
      sub_20E322170();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_20E195B0C(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      result = sub_20E322490();
      if (v4)
      {
        return result;
      }

      if (!v5[5])
      {
        goto LABEL_9;
      }
    }

    else if (!v5[5])
    {
LABEL_9:
      if (!v4)
      {
        if (v5[7])
        {
          sub_20E322540();
        }

        sub_20E0AEC08(v5, a1, a2, a3);
        if (*(v5[3] + 16))
        {
          sub_20E322170();
          type metadata accessor for TranscriptProtoShimParameters(0);
          sub_20E195B0C(&qword_27C865AF8, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
          sub_20E195B0C(&qword_27C865B00, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
          sub_20E322490();
        }

        type metadata accessor for TranscriptProtoClientAction(0);
        return sub_20E3221A0();
      }

      return result;
    }

    result = sub_20E322540();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_20E0AEC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoClientAction(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

unint64_t sub_20E0AEE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v3 = *(a1 + 36);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v5 = MEMORY[0x277D84F90];
  *(a2 + 16) = sub_20E04916C(MEMORY[0x277D84F90]);
  result = sub_20E049354(v5);
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_20E0AEF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CF0, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AF008(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return sub_20E322470();
}

uint64_t sub_20E0AF074(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866680, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return sub_20E322480();
}

uint64_t TranscriptProtoShimParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoShimParameter(0), sub_20E195B0C(&qword_27C865B10, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoShimParameters(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0AF350(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CE8, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0AF3F0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865AF8, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return sub_20E322470();
}

uint64_t sub_20E0AF45C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865AF8, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return sub_20E322480();
}

uint64_t sub_20E0AF50C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864730);
  __swift_project_value_buffer(v0, qword_27C864730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "resolved";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stringQuery";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "personQuery";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "photosCandidates";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0AF7E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = v7;
  while (1)
  {
    result = sub_20E3222B0();
    if (v8 || (v18 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        a6(v13, a1, a2, a3);
      }

      else if (result == 4)
      {
        a7(v13, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      a4(v13, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v13, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0AF8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
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
  sub_20E0486F4(a1, v12, &qword_27C865B18, &qword_20E326398);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865B18, &qword_20E326398);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195B54(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
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
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C863B18, &qword_20E323EB0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865B18, &qword_20E326398);
    sub_20E195B54(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0AFEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868618, &qword_20E33B628);
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
  sub_20E0486F4(a1, v12, &qword_27C865B18, &qword_20E326398);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865B18, &qword_20E326398);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868618, &qword_20E33B628);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8666B8, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868618, &qword_20E33B628);
  }

  sub_20E0486F4(v24, v32, &qword_27C868618, &qword_20E33B628);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868618, &qword_20E33B628);
    return sub_20E04875C(v32, &qword_27C868618, &qword_20E33B628);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868618, &qword_20E33B628);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865B18, &qword_20E326398);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0B0468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
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
  sub_20E0486F4(a1, v12, &qword_27C865B18, &qword_20E326398);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865B18, &qword_20E326398);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
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
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoShimParameterEnum);
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
    sub_20E04875C(v38, &qword_27C865B18, &qword_20E326398);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPersonQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0B0A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868620, &qword_20E33B630);
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
  sub_20E0486F4(a1, v12, &qword_27C865B18, &qword_20E326398);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865B18, &qword_20E326398);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C868620, &qword_20E33B630);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPhotosCandidates);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPhotosCandidates);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866710, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868620, &qword_20E33B630);
  }

  sub_20E0486F4(v24, v32, &qword_27C868620, &qword_20E33B630);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868620, &qword_20E33B630);
    return sub_20E04875C(v32, &qword_27C868620, &qword_20E33B630);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPhotosCandidates);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868620, &qword_20E33B630);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865B18, &qword_20E326398);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPhotosCandidates);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoShimParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C865B18, &qword_20E326398);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0B1620(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0B1858(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0B13E8(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0B11B4(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoShimParameterEnum);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoShimParameter(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B11B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865B18, &qword_20E326398);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865B18, &qword_20E326398);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B13E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865B18, &qword_20E326398);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865B18, &qword_20E326398);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_20E195B0C(&qword_27C8666B8, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B1620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865B18, &qword_20E326398);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865B18, &qword_20E326398);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPersonQuery);
    sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPersonQuery);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B1858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865B18, &qword_20E326398);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865B18, &qword_20E326398);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPhotosCandidates);
    sub_20E195B0C(&qword_27C866710, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPhotosCandidates);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B1B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CE0, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B1BE0(uint64_t a1)
{
  sub_20E195B0C(&qword_27C865B10, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return sub_20E322470();
}

uint64_t sub_20E0B1C4C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C865B10, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return sub_20E322480();
}

uint64_t sub_20E0B1CCC()
{
  result = MEMORY[0x20F32BF40](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27C864748 = 0xD000000000000018;
  unk_27C864750 = 0x800000020E35B290;
  return result;
}

uint64_t sub_20E0B1E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CD8, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B1F14(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8666B8, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return sub_20E322470();
}

uint64_t sub_20E0B1F80(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8666B8, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return sub_20E322480();
}

uint64_t sub_20E0B2018()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864770);
  __swift_project_value_buffer(v0, qword_27C864770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20E3262F0;
  v4 = v15 + v3;
  v5 = v15 + v3 + v1[14];
  *(v15 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "handle";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "isMe";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "id";
  *(v13 + 1) = 2;
  v13[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPersonQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E3222F0();
      }

      else if (result == 4)
      {
        type metadata accessor for TranscriptProtoPersonQuery(0);
LABEL_12:
        sub_20E3223D0();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_12;
      }

      if (result == 2)
      {
        sub_20E0B235C(a1, v5, a2, a3);
      }
    }
  }
}

uint64_t sub_20E0B235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPersonQuery(0);
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_20E195B0C(&qword_27C8666E8, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);
  return sub_20E322430();
}

uint64_t TranscriptProtoPersonQuery.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 16))
  {
    result = sub_20E322540();
  }

  if (!v4)
  {
    sub_20E0B2508(v3, v7, a2, a3);
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    sub_20E1333E8(v3, v7, a2, a3, type metadata accessor for TranscriptProtoPersonQuery, 4);
    type metadata accessor for TranscriptProtoPersonQuery(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868600, &unk_20E33C2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoPersonQuery(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868600, &unk_20E33C2A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868600, &unk_20E33C2A0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  sub_20E195B0C(&qword_27C8666E8, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoPersonQuery.Handle);
}

uint64_t sub_20E0B2770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = (a2 + *(a1 + 28));
  *v6 = 0;
  v6[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E0B2848(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CD0, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B28E8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);

  return sub_20E322470();
}

uint64_t sub_20E0B2954(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8666D0, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);

  return sub_20E322480();
}

uint64_t sub_20E0B29D4()
{
  result = MEMORY[0x20F32BF40](0x656C646E61482ELL, 0xE700000000000000);
  qword_27C864788 = 0xD000000000000016;
  unk_27C864790 = 0x800000020E35B2B0;
  return result;
}

uint64_t TranscriptProtoPersonQuery.Handle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E195A50();
        sub_20E322300();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0B2B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_20E3221A0();
  }

  return result;
}

unsigned __int8 *sub_20E0B2C10(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result != 3)
  {
    sub_20E195A50();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E0B2D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CC8, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B2DF8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8666E8, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);

  return sub_20E322470();
}

uint64_t sub_20E0B2E64(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8666E8, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);

  return sub_20E322480();
}

uint64_t sub_20E0B2F10()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8647B0);
  __swift_project_value_buffer(v0, qword_27C8647B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "phone";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "email";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "facetime";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0B3188()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8647C8);
  __swift_project_value_buffer(v0, qword_27C8647C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "searchQuery";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetEntities";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0B33D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
      sub_20E3223D0();
    }

    else if (result == 2)
    {
      a4(0);
      sub_20E195B0C(a5, a6, a7);
      sub_20E322420();
    }
  }

  return result;
}

uint64_t TranscriptProtoPhotosCandidates.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v5 = sub_20E322540();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_20E322570();
    }

    type metadata accessor for TranscriptProtoPhotosCandidates(0);
    return sub_20E3221A0();
  }

  return v5;
}

uint64_t sub_20E0B366C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CC0, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B370C(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866710, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);

  return sub_20E322470();
}

uint64_t sub_20E0B3778(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866710, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);

  return sub_20E322480();
}

uint64_t sub_20E0B3814()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8647E0);
  __swift_project_value_buffer(v0, qword_27C8647E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 4;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "parameterId";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "tool";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "actionClass";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionParameterContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E0B3C44(a1, v5, a2, a3);
        }

        else if (result == 6)
        {
          sub_20E184738();
          sub_20E322310();
        }
      }

      else if (result == 3)
      {
        sub_20E3223E0();
      }

      else if (result == 4)
      {
        sub_20E0B3B90(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0B3B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0B3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionParameterContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0B3E04(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E0B4020(v3, a1, a2, a3);
      if (*(v3 + 16))
      {
        sub_20E184738();
        sub_20E3224D0();
      }

      type metadata accessor for TranscriptProtoActionParameterContext(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0B3E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
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

uint64_t sub_20E0B4020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C8639C8, &unk_20E323870);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639C8, &unk_20E323870);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195B0C(&qword_27C866070, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_20E0B4288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E0B43A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CB8, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B4440(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866728, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);

  return sub_20E322470();
}

uint64_t sub_20E0B44AC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866728, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);

  return sub_20E322480();
}

uint64_t sub_20E0B4548()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8647F8);
  __swift_project_value_buffer(v0, qword_27C8647F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0B4760(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t TranscriptProtoIntelligenceFlowError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    if (!v3[2] || (result = sub_20E322510(), !v4))
    {
      type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t static TranscriptProtoIntelligenceFlowError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0B49D0@<X0>(uint64_t a2@<X2>, void *a3@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = a2;
  return result;
}

uint64_t sub_20E0B4A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CB0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B4AF8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);

  return sub_20E322470();
}

uint64_t sub_20E0B4B64(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);

  return sub_20E322480();
}

uint64_t sub_20E0B4BE0(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_20E322D60() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E0B4CC8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864810);
  __swift_project_value_buffer(v0, qword_27C864810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sessionCoordinatorError";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "plannerError";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "executorError";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0B4F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
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
  sub_20E0486F4(a1, v12, &qword_27C863EE0, &qword_20E325D18);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863EE0, &qword_20E325D18);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v24, v32, &qword_27C868418, &unk_20E33C340);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v32, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863EE0, &qword_20E325D18);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0B554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685E0, &qword_20E33B600);
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
  sub_20E0486F4(a1, v12, &qword_27C863EE0, &qword_20E325D18);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863EE0, &qword_20E325D18);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C8685E0, &qword_20E33B600);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8685E0, &qword_20E33B600);
  }

  sub_20E0486F4(v24, v32, &qword_27C8685E0, &qword_20E33B600);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8685E0, &qword_20E33B600);
    return sub_20E04875C(v32, &qword_27C8685E0, &qword_20E33B600);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8685E0, &qword_20E33B600);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863EE0, &qword_20E325D18);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0B5B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPlannerError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685E8, &qword_20E33B608);
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
  sub_20E0486F4(a1, v12, &qword_27C863EE0, &qword_20E325D18);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863EE0, &qword_20E325D18);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C8685E8, &qword_20E33B608);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPlannerError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPlannerError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8685E8, &qword_20E33B608);
  }

  sub_20E0486F4(v24, v32, &qword_27C8685E8, &qword_20E33B608);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8685E8, &qword_20E33B608);
    return sub_20E04875C(v32, &qword_27C8685E8, &qword_20E33B608);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPlannerError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8685E8, &qword_20E33B608);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863EE0, &qword_20E325D18);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPlannerError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0B60C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoExecutorError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685F0, &qword_20E33B610);
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
  sub_20E0486F4(a1, v12, &qword_27C863EE0, &qword_20E325D18);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863EE0, &qword_20E325D18);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C8685F0, &qword_20E33B610);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoExecutorError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoExecutorError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8685F0, &qword_20E33B610);
  }

  sub_20E0486F4(v24, v32, &qword_27C8685F0, &qword_20E33B610);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8685F0, &qword_20E33B610);
    return sub_20E04875C(v32, &qword_27C8685F0, &qword_20E33B610);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoExecutorError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8685F0, &qword_20E33B610);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863EE0, &qword_20E325D18);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoExecutorError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoSessionError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C863EE0, &qword_20E325D18);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E0B6CC0(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0B6EF8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E0B6A88(v3, a1, a2, a3);
  }

  else
  {
    sub_20E0B6854(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionErrorEnum);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoSessionError(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B6854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863EE0, &qword_20E325D18);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863EE0, &qword_20E325D18);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B6A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863EE0, &qword_20E325D18);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863EE0, &qword_20E325D18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    sub_20E195B0C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionCoordinatorError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B6CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPlannerError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863EE0, &qword_20E325D18);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863EE0, &qword_20E325D18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPlannerError);
    sub_20E195B0C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPlannerError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B6EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExecutorError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863EE0, &qword_20E325D18);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863EE0, &qword_20E325D18);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoExecutorError);
    sub_20E195B0C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoExecutorError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B71E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CA8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B7280(uint64_t a1)
{
  sub_20E195B0C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);

  return sub_20E322470();
}

uint64_t sub_20E0B72EC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);

  return sub_20E322480();
}

uint64_t sub_20E0B7388()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864828);
  __swift_project_value_buffer(v0, qword_27C864828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToWriteTranscript";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "failedToConvertClientEvent";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSessionCoordinatorError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E0B81E4(v5, a1, a2, a3);
        break;
      case 2:
        sub_20E0B7C28(v5, a1, a2, a3);
        break;
      case 1:
        sub_20E0B7678(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_20E0B7678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
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
  sub_20E0486F4(a1, v12, &qword_27C863ED8, &unk_20E33C2B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863ED8, &unk_20E33C2B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v24, v32, &qword_27C868418, &unk_20E33C340);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v32, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863ED8, &unk_20E33C2B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0B7C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
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
  sub_20E0486F4(a1, v12, &qword_27C863ED8, &unk_20E33C2B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863ED8, &unk_20E33C2B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v24, v32, &qword_27C868418, &unk_20E33C340);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v32, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863ED8, &unk_20E33C2B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0B81E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
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
  sub_20E0486F4(a1, v12, &qword_27C863ED8, &unk_20E33C2B0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863ED8, &unk_20E33C2B0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v24, v32, &qword_27C868418, &unk_20E33C340);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v32, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863ED8, &unk_20E33C2B0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoSessionCoordinatorError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C863ED8, &unk_20E33C2B0);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E0B8B84(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0B8DBC(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E0B8950(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0B8950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863ED8, &unk_20E33C2B0);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863ED8, &unk_20E33C2B0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B8B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863ED8, &unk_20E33C2B0);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863ED8, &unk_20E33C2B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B8DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863ED8, &unk_20E33C2B0);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863ED8, &unk_20E33C2B0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0B90A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867CA0, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0B9144(uint64_t a1)
{
  sub_20E195B0C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);

  return sub_20E322470();
}

uint64_t sub_20E0B91B0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);

  return sub_20E322480();
}

uint64_t sub_20E0B924C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864840);
  __swift_project_value_buffer(v0, qword_27C864840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToExecute";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoExecutorError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_20E0B94CC(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E0B9A8C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0B94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v38 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v32 - v23;
  v39 = *(v6 + 56);
  v40 = v6 + 56;
  v39(&v32 - v23, 1, 1, v5);
  v35 = a1;
  sub_20E0486F4(a1, v12, &qword_27C863EC8, &unk_20E359E90);
  v33 = v14;
  v34 = v13;
  v25 = (*(v14 + 48))(v12, 1, v13);
  if (v25 == 1)
  {
    sub_20E04875C(v12, &qword_27C863EC8, &unk_20E359E90);
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    if ((*(v6 + 48))(v17, 1, v5) == 1)
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
      v26 = v37;
      sub_20E195B54(v17, v37, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v26, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v39(v24, 0, 1, v5);
    }
  }

  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v27 = v41;
  sub_20E322430();
  if (v27)
  {
    return sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
  }

  v29 = v38;
  sub_20E0486F4(v24, v38, &qword_27C868418, &unk_20E33C340);
  if ((*(v6 + 48))(v29, 1, v5) == 1)
  {
    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v29, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v30 = v36;
    sub_20E195B54(v29, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    v31 = v35;
    sub_20E04875C(v35, &qword_27C863EC8, &unk_20E359E90);
    sub_20E195B54(v30, v31, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    v39(v31, 0, 1, v5);
    return (*(v33 + 56))(v31, 0, 1, v34);
  }
}

uint64_t sub_20E0B9A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE0, &qword_20E33B098);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_20E322110();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_20E322300();
  if (v4)
  {
    return sub_20E04875C(v15, &qword_27C867FE0, &qword_20E33B098);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_20E0486F4(v15, v13, &qword_27C867FE0, &qword_20E33B098);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_20E04875C(v13, &qword_27C867FE0, &qword_20E33B098);
  if (v18 == 1)
  {
    return sub_20E04875C(v15, &qword_27C867FE0, &qword_20E33B098);
  }

  sub_20E0486F4(v26, v9, &qword_27C863EC8, &unk_20E359E90);
  v19 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_20E04875C(v9, &qword_27C863EC8, &unk_20E359E90);
  if (v21 != 1)
  {
    sub_20E3222C0();
  }

  sub_20E04875C(v15, &qword_27C867FE0, &qword_20E33B098);
  v23 = v26;
  sub_20E04875C(v26, &qword_27C863EC8, &unk_20E359E90);
  v24 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t TranscriptProtoExecutorError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C863EC8, &unk_20E359E90);
  v11 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    v12 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
    {
      result = sub_20E0BA240(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_20E0B9FCC(v3, a1, a2, a3);
      result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for TranscriptProtoExecutorError(0);
  return sub_20E3221A0();
}

uint64_t sub_20E0B9FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863EC8, &unk_20E359E90);
  v12 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_20E04875C(v7, &qword_27C863EC8, &unk_20E359E90);
    __break(1u);
  }

  else if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v11, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BA240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_20E0486F4(a1, v16 - v10, &qword_27C863EC8, &unk_20E359E90);
  v12 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C863EC8, &unk_20E359E90);
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    if (v14 == 1)
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

uint64_t sub_20E0BA568(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C98, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0BA608(uint64_t a1)
{
  sub_20E195B0C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);

  return sub_20E322470();
}

uint64_t sub_20E0BA674(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);

  return sub_20E322480();
}

uint64_t sub_20E0BA710()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864858);
  __swift_project_value_buffer(v0, qword_27C864858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToPlan";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "networkError";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPlannerError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E0BAFF0(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E07FF88(a1, v5, a2, a3, &qword_27C863ED0, &unk_20E33C2C0, type metadata accessor for TranscriptProtoPlannerErrorEnum, 2u);
          break;
        case 1:
          sub_20E0BAA40(v5, a1, a2, a3);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0BAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
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
  sub_20E0486F4(a1, v12, &qword_27C863ED0, &unk_20E33C2C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863ED0, &unk_20E33C2C0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v24, v32, &qword_27C868418, &unk_20E33C340);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v32, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863ED0, &unk_20E33C2C0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0BAFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
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
  sub_20E0486F4(a1, v12, &qword_27C863ED0, &unk_20E33C2C0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863ED0, &unk_20E33C2C0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
  }

  sub_20E0486F4(v24, v32, &qword_27C868418, &unk_20E33C340);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    return sub_20E04875C(v32, &qword_27C868418, &unk_20E33C340);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868418, &unk_20E33C340);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863ED0, &unk_20E33C2C0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoPlannerError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C863ED0, &unk_20E33C2C0);
  v11 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        result = sub_20E0BB994(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_9;
      }

      sub_20E0BBBE0(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0BB760(v3, a1, a2, a3);
    }

    result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_9:
  type metadata accessor for TranscriptProtoPlannerError(0);
  return sub_20E3221A0();
}

uint64_t sub_20E0BB760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863ED0, &unk_20E33C2C0);
  v11 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863ED0, &unk_20E33C2C0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BB994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C863ED0, &unk_20E33C2C0);
  v12 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C863ED0, &unk_20E33C2C0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if (EnumCaseMultiPayload == 2)
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

uint64_t sub_20E0BBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863ED0, &unk_20E33C2C0);
  v11 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863ED0, &unk_20E33C2C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_20E195B0C(&qword_27C866740, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BBEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C90, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0BBF68(uint64_t a1)
{
  sub_20E195B0C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);

  return sub_20E322470();
}

uint64_t sub_20E0BBFD4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);

  return sub_20E322480();
}

uint64_t sub_20E0BC070()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864870);
  __swift_project_value_buffer(v0, qword_27C864870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "unsupported";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "appRequirement";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "permissionRequirement";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "systemRequirement";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          sub_20E0BC9B8(v5, a1, a2, a3);
        }

        else if (result == 5)
        {
          sub_20E0BCF74(v5, a1, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_20E07FF88(a1, v5, a2, a3, &qword_27C865B80, &qword_20E3263A0, type metadata accessor for TranscriptProtoActionRequirementEnum, 3u);
      }

      else if (result == 3)
      {
        sub_20E0BC408(v5, a1, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0BC408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685A8, &qword_20E33B5C8);
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
  sub_20E0486F4(a1, v12, &qword_27C865B80, &qword_20E3263A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865B80, &qword_20E3263A0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C8685A8, &qword_20E33B5C8);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoAppRequirement);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoAppRequirement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866810, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8685A8, &qword_20E33B5C8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8685A8, &qword_20E33B5C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8685A8, &qword_20E33B5C8);
    return sub_20E04875C(v32, &qword_27C8685A8, &qword_20E33B5C8);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoAppRequirement);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8685A8, &qword_20E33B5C8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865B80, &qword_20E3263A0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoAppRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0BC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685B0, &qword_20E33B5D0);
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
  sub_20E0486F4(a1, v12, &qword_27C865B80, &qword_20E3263A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865B80, &qword_20E3263A0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C8685B0, &qword_20E33B5D0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoPermissionRequirement);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoPermissionRequirement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866840, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8685B0, &qword_20E33B5D0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8685B0, &qword_20E33B5D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8685B0, &qword_20E33B5D0);
    return sub_20E04875C(v32, &qword_27C8685B0, &qword_20E33B5D0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoPermissionRequirement);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8685B0, &qword_20E33B5D0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865B80, &qword_20E3263A0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoPermissionRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0BCF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685B8, &qword_20E33B5D8);
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
  sub_20E0486F4(a1, v12, &qword_27C865B80, &qword_20E3263A0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865B80, &qword_20E3263A0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C8685B8, &qword_20E33B5D8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8667B0, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8685B8, &qword_20E33B5D8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8685B8, &qword_20E33B5D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8685B8, &qword_20E33B5D8);
    return sub_20E04875C(v32, &qword_27C8685B8, &qword_20E33B5D8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8685B8, &qword_20E33B5D8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865B80, &qword_20E3263A0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoActionRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C865B80, &qword_20E3263A0);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_20E0BD708(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_20E0BDDC0(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_20E0BDB88(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0BD954(v3, a1, a2, a3);
    }

    result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  type metadata accessor for TranscriptProtoActionRequirement(0);
  return sub_20E3221A0();
}

uint64_t sub_20E0BD708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865B80, &qword_20E3263A0);
  v12 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865B80, &qword_20E3263A0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionRequirementEnum);
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

uint64_t sub_20E0BD954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoAppRequirement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865B80, &qword_20E3263A0);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865B80, &qword_20E3263A0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoAppRequirement);
    sub_20E195B0C(&qword_27C866810, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoAppRequirement);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BDB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865B80, &qword_20E3263A0);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865B80, &qword_20E3263A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoPermissionRequirement);
    sub_20E195B0C(&qword_27C866840, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoPermissionRequirement);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BDDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865B80, &qword_20E3263A0);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865B80, &qword_20E3263A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    sub_20E195B0C(&qword_27C8667B0, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementMessage);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0BE0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C88, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0BE148(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866798, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);

  return sub_20E322470();
}

uint64_t sub_20E0BE1B4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866798, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);

  return sub_20E322480();
}

uint64_t sub_20E0BE250()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864888);
  __swift_project_value_buffer(v0, qword_27C864888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceUnlockRequired";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appLaunchRequired";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "carPlayIncompatible";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "carBluetoothIncompatible";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "protectedAppApprovalRequired";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "userAuthenticationRequired";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "userLocationForSystemRequired";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemRequirementMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 3;
LABEL_5:
            sub_20E07FF88(v11, v12, v13, v14, &qword_27C863AA8, &unk_20E33C2D0, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum, v15);
            break;
          case 2:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 4;
            goto LABEL_5;
          case 3:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 5;
            goto LABEL_5;
        }
      }

      else if (result > 6)
      {
        if (result == 7)
        {
          sub_20E0BED14(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_20E0BF2D0(v5, a1, a2, a3);
        }
      }

      else
      {
        if (result == 4)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        }

        if (result == 5)
        {
          sub_20E0BE764(v5, a1, a2, a3);
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0BE764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868588, &qword_20E33B5A8);
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
  sub_20E0486F4(a1, v12, &qword_27C863AA8, &unk_20E33C2D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863AA8, &unk_20E33C2D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868588, &qword_20E33B5A8);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8667C8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868588, &qword_20E33B5A8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868588, &qword_20E33B5A8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868588, &qword_20E33B5A8);
    return sub_20E04875C(v32, &qword_27C868588, &qword_20E33B5A8);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868588, &qword_20E33B5A8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863AA8, &unk_20E33C2D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0BED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868590, &qword_20E33B5B0);
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
  sub_20E0486F4(a1, v12, &qword_27C863AA8, &unk_20E33C2D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863AA8, &unk_20E33C2D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868590, &qword_20E33B5B0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8667E0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868590, &qword_20E33B5B0);
  }

  sub_20E0486F4(v24, v32, &qword_27C868590, &qword_20E33B5B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868590, &qword_20E33B5B0);
    return sub_20E04875C(v32, &qword_27C868590, &qword_20E33B5B0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868590, &qword_20E33B5B0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863AA8, &unk_20E33C2D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0BF2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868598, &qword_20E33B5B8);
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
  sub_20E0486F4(a1, v12, &qword_27C863AA8, &unk_20E33C2D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C863AA8, &unk_20E33C2D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C868598, &qword_20E33B5B8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866828, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868598, &qword_20E33B5B8);
  }

  sub_20E0486F4(v24, v32, &qword_27C868598, &qword_20E33B5B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868598, &qword_20E33B5B8);
    return sub_20E04875C(v32, &qword_27C868598, &qword_20E33B5B8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868598, &qword_20E33B5B8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863AA8, &unk_20E33C2D0);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoSystemRequirementMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C863AA8, &unk_20E33C2D0);
  v11 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_20;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        result = sub_20E0BFF74(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_20E0C01C0(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      result = sub_20E0BFADC(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_20E0BFD28(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E0C0640(v3, a1, a2, a3);
    }

    else
    {
      sub_20E0C0878(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_20E0C040C(v3, a1, a2, a3);
  }

  result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  if (!v4)
  {
LABEL_20:
    type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0BFADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C863AA8, &unk_20E33C2D0);
  v12 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C863AA8, &unk_20E33C2D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
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

uint64_t sub_20E0BFD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C863AA8, &unk_20E33C2D0);
  v12 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C863AA8, &unk_20E33C2D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 4)
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

uint64_t sub_20E0BFF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C863AA8, &unk_20E33C2D0);
  v12 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C863AA8, &unk_20E33C2D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 5)
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

uint64_t sub_20E0C01C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C863AA8, &unk_20E33C2D0);
  v12 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C863AA8, &unk_20E33C2D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 6)
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

uint64_t sub_20E0C040C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863AA8, &unk_20E33C2D0);
  v11 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863AA8, &unk_20E33C2D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_20E195B0C(&qword_27C8667C8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C0640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863AA8, &unk_20E33C2D0);
  v11 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863AA8, &unk_20E33C2D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    sub_20E195B0C(&qword_27C8667E0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C0878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863AA8, &unk_20E33C2D0);
  v11 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C863AA8, &unk_20E33C2D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
    sub_20E195B0C(&qword_27C866828, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C0B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C80, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C0C00(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8667B0, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);

  return sub_20E322470();
}

uint64_t sub_20E0C0C6C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8667B0, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);

  return sub_20E322480();
}

uint64_t sub_20E0C0E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C78, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C0EA8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8667C8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_20E322470();
}

uint64_t sub_20E0C0F14(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8667C8, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_20E322480();
}

uint64_t sub_20E0C1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868570, &qword_20E33B590);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868570, &qword_20E33B590);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E195B0C(&qword_27C8667F8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
}

uint64_t sub_20E0C1348(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C70, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C13E8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8667E0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_20E322470();
}

uint64_t sub_20E0C1454(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8667E0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_20E322480();
}

uint64_t sub_20E0C14F0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8648D0);
  __swift_project_value_buffer(v0, qword_27C8648D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alternativeAuthenticationPermitted";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originDeviceAuthenticationRequired";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0C16F4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
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
  if (*v20 != 2)
  {
    sub_20E3222C0();
  }

  v17 = v21;
  result = sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  *v16 = v17;
  return result;
}

uint64_t sub_20E0C1A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C68, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C1AB8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8667F8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_20E322470();
}

uint64_t sub_20E0C1B24(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8667F8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_20E322480();
}

uint64_t sub_20E0C1BEC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8648E8);
  __swift_project_value_buffer(v0, qword_27C8648E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "signInRequired";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountSetupRequired";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "userConfirmationRequired";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoAppRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v15 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 2;
LABEL_3:
        sub_20E0C1EDC(v9, v10, v11, v12, v13);
        break;
      case 2:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 1;
        goto LABEL_3;
      case 1:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 0;
        goto LABEL_3;
    }
  }
}

uint64_t sub_20E0C1EDC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
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
  if (*v20 != 3)
  {
    sub_20E3222C0();
  }

  v17 = v21;
  result = sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  *v16 = v17;
  return result;
}

uint64_t TranscriptProtoAppRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 > 1u)
  {
    if (*v3 != 2)
    {
      goto LABEL_7;
    }

    result = sub_20E0C247C(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!*v3)
    {
      result = sub_20E0C21E0(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }

      goto LABEL_7;
    }

    result = sub_20E0C232C(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_7:
      type metadata accessor for TranscriptProtoAppRequirement(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0C21E0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    __break(1u);
  }

  else
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_20E0C232C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C247C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C2690(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C60, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C2730(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866810, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);

  return sub_20E322470();
}

uint64_t sub_20E0C279C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866810, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);

  return sub_20E322480();
}

uint64_t sub_20E0C2864()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864900);
  __swift_project_value_buffer(v0, qword_27C864900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isPreciseLocationRequired";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minimumViableLocationAccuracy";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "timeoutForLocationFetch";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E322380();
        break;
      case 2:
        sub_20E3223B0();
        break;
      case 1:
        sub_20E3222F0();
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (v5 = sub_20E3224C0(), !v4))
  {
    if ((v3[16] & 1) == 0)
    {
      v5 = sub_20E322530();
    }

    if (!v4)
    {
      if ((v3[32] & 1) == 0)
      {
        sub_20E322510();
      }

      type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
      return sub_20E3221A0();
    }
  }

  return v5;
}

uint64_t sub_20E0C2C68@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E0C2CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C58, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C2D98(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866828, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return sub_20E322470();
}

uint64_t sub_20E0C2E04(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866828, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return sub_20E322480();
}

uint64_t sub_20E0C2EA0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864918);
  __swift_project_value_buffer(v0, qword_27C864918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriPermissionRequired";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shortcutsPermissionRequired";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "preciseLocationPermissionRequired";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locationPermissionRequired";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "wifiPermissionRequired";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "bluetoothPermissionRequired";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "photosPermissionRequired";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "contactsPermissionRequired";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoPermissionRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result > 6)
        {
          if (result == 7)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 6;
          }

          else
          {
            if (result != 8)
            {
              goto LABEL_21;
            }

            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 7;
          }
        }

        else if (result == 5)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
        }

        else
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
        }

        else
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
        }
      }

      else if (result == 1)
      {
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 0;
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_21;
        }

        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 1;
      }

      sub_20E0C3388(v11, v12, v13, v14, v15);
LABEL_21:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0C3388(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
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
  if (*v20 != 8)
  {
    sub_20E3222C0();
  }

  v17 = v21;
  result = sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  *v16 = v17;
  return result;
}

uint64_t TranscriptProtoPermissionRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (v5 <= 3)
  {
    if (*v3 > 1u)
    {
      if (v5 == 2)
      {
        result = sub_20E0C247C(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_18;
      }

      result = sub_20E0C3710(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      if (!*v3)
      {
        result = sub_20E0C21E0(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_18;
      }

      result = sub_20E0C232C(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

LABEL_18:
    type metadata accessor for TranscriptProtoPermissionRequirement(0);
    return sub_20E3221A0();
  }

  if (*v3 <= 5u)
  {
    if (v5 == 4)
    {
      result = sub_20E0C3860(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }

      goto LABEL_18;
    }

    result = sub_20E0C39B0(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v5 == 6)
  {
    result = sub_20E0C3B00(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v5 != 7)
  {
    goto LABEL_18;
  }

  result = sub_20E0C3C50(v3, a1, a2, a3);
  if (!v4)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_20E0C3710(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C3860(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 4)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C39B0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 5)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C3B00(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 6)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C3C50(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 7)
  {
    sub_20E322100();
    sub_20E195B0C(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E0C3E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C50, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C3F00(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866840, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);

  return sub_20E322470();
}

uint64_t sub_20E0C3F6C(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866840, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);

  return sub_20E322480();
}

uint64_t sub_20E0C4008()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864930);
  __swift_project_value_buffer(v0, qword_27C864930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "failure";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 8;
  *v10 = "concludesStreamingStatementID";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionFailure.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoActionFailureFailure(0);
        sub_20E195B0C(&qword_27C866870, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);
        sub_20E322430();
      }

      else if (result == 8)
      {
        sub_20E0C42F8(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0C42F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionFailure(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t sub_20E0C4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868560, &unk_20E33C2E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868560, &unk_20E33C2E0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoActionFailureFailure);
  sub_20E195B0C(&qword_27C866870, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailure);
}

uint64_t sub_20E0C4610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionFailure(0);
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

uint64_t sub_20E0C48F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C48, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C4990(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866858, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);

  return sub_20E322470();
}

uint64_t sub_20E0C49FC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866858, type metadata accessor for TranscriptProtoActionFailure, &protocol conformance descriptor for TranscriptProtoActionFailure);

  return sub_20E322480();
}

uint64_t sub_20E0C4A98()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864948);
  __swift_project_value_buffer(v0, qword_27C864948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20E326340;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 1;
  *v5 = "preflightCheckFailure";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "preciseLocationDisabled";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "locationDisabled";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "wifiDisabled";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "bluetoothDisabled";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "networkFailure";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "partialFailure";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "unsupportedOnDevice";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "featureCurrentlyRestricted";
  *(v22 + 8) = 26;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "entityNotFound";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "actionNotAllowed";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "unableToUndo";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "actionCanceled";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "valueDisambiguationRejected";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "noMatchingTool";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "developerDefinedError";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "unableToCancel";
  *(v37 + 8) = 14;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "searchSucceededNoMatchingTool";
  *(v39 + 1) = 29;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "valueSelectionRequired";
  *(v41 + 1) = 22;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "unableToHandleRequest";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionFailureFailure.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
          goto LABEL_24;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
          goto LABEL_24;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
          goto LABEL_24;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_24;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_24;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
          goto LABEL_24;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_24;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_24;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_24;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_24;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_24;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_24;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_24;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
          goto LABEL_24;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
          goto LABEL_24;
        case 16:
          sub_20E0C5550(v5, a1, a2, a3);
          break;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 17;
          goto LABEL_24;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 18;
          goto LABEL_24;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 19;
LABEL_24:
          sub_20E07FF88(v11, v12, v13, v14, &qword_27C865BD0, &qword_20E3263A8, type metadata accessor for TranscriptProtoActionFailureFailureEnum, v15);
          break;
        case 20:
          sub_20E0C5B00(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E0C5550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868550, &qword_20E33B578);
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
  sub_20E0486F4(a1, v12, &qword_27C865BD0, &qword_20E3263A8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865BD0, &qword_20E3263A8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C868550, &qword_20E33B578);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C866888, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868550, &qword_20E33B578);
  }

  sub_20E0486F4(v24, v32, &qword_27C868550, &qword_20E33B578);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868550, &qword_20E33B578);
    return sub_20E04875C(v32, &qword_27C868550, &qword_20E33B578);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868550, &qword_20E33B578);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865BD0, &qword_20E3263A8);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0C5B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868558, &qword_20E33B580);
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
  sub_20E0486F4(a1, v12, &qword_27C865BD0, &qword_20E3263A8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C865BD0, &qword_20E3263A8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E195B54(v12, v19, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    sub_20E195B54(v19, v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C868558, &qword_20E33B580);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E195B0C(&qword_27C8668A0, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest, &protocol conformance descriptor for TranscriptProtoActionFailureUnableToHandleRequest);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C868558, &qword_20E33B580);
  }

  sub_20E0486F4(v24, v32, &qword_27C868558, &qword_20E33B580);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C868558, &qword_20E33B580);
    return sub_20E04875C(v32, &qword_27C868558, &qword_20E33B580);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C868558, &qword_20E33B580);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C865BD0, &qword_20E3263A8);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoActionFailureFailure.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C865BD0, &qword_20E3263A8);
  v11 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E0C8E20(v3, a1, a2, a3);
        goto LABEL_25;
      case 2u:
        result = sub_20E0F45C4(v3, a1, a2, a3, &qword_27C865BD0, &qword_20E3263A8, type metadata accessor for TranscriptProtoActionFailureFailureEnum, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        if (!v4)
        {
          break;
        }

        return result;
      case 3u:
        result = sub_20E0C64E0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 4u:
        result = sub_20E0C672C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        result = sub_20E0C6978(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 6u:
        result = sub_20E0C6BC4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        result = sub_20E0C6E10(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        result = sub_20E0C705C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        result = sub_20E0C72A8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_20E0C74F4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_20E0C7740(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_20E0C798C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_20E0C7BD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E0C7E24(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E0C8070(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x10u:
        result = sub_20E0C82BC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        result = sub_20E0C873C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x12u:
        result = sub_20E0C8988(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x13u:
        result = sub_20E0C8BD4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E0C8508(v3, a1, a2, a3);
LABEL_25:
        result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for TranscriptProtoActionFailureFailure(0);
  return sub_20E3221A0();
}

uint64_t sub_20E0C64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
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

uint64_t sub_20E0C672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 4)
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

uint64_t sub_20E0C6978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 5)
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

uint64_t sub_20E0C6BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 6)
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

uint64_t sub_20E0C6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 7)
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

uint64_t sub_20E0C705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 8)
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

uint64_t sub_20E0C72A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
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

uint64_t sub_20E0C74F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 10)
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

uint64_t sub_20E0C7740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 11)
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

uint64_t sub_20E0C798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 12)
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

uint64_t sub_20E0C7BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 13)
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

uint64_t sub_20E0C7E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 14)
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

uint64_t sub_20E0C8070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 15)
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

uint64_t sub_20E0C82BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 16)
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

uint64_t sub_20E0C8508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865BD0, &qword_20E3263A8);
  v11 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865BD0, &qword_20E3263A8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    sub_20E195B0C(&qword_27C866888, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (EnumCaseMultiPayload == 17)
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

uint64_t sub_20E0C8988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
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

uint64_t sub_20E0C8BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C865BD0, &qword_20E3263A8);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C865BD0, &qword_20E3263A8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
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

uint64_t sub_20E0C8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C865BD0, &qword_20E3263A8);
  v11 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C865BD0, &qword_20E3263A8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
    sub_20E195B0C(&qword_27C8668A0, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest, &protocol conformance descriptor for TranscriptProtoActionFailureUnableToHandleRequest);
    sub_20E322580();
    return sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  }

  result = sub_20E195C24(v7, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  __break(1u);
  return result;
}

uint64_t sub_20E0C9108(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C40, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C91A8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866870, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);

  return sub_20E322470();
}

uint64_t sub_20E0C9214(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866870, type metadata accessor for TranscriptProtoActionFailureFailure, &protocol conformance descriptor for TranscriptProtoActionFailureFailure);

  return sub_20E322480();
}

uint64_t sub_20E0C92B0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864960);
  __swift_project_value_buffer(v0, qword_27C864960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedString";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "code";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!v3[4] || (result = sub_20E322510(), !v4))
      {
        type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E0C9658@<X0>(void *a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  return result;
}

uint64_t sub_20E0C96E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C38, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C9780(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866888, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_20E322470();
}

uint64_t sub_20E0C97EC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866888, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError, &protocol conformance descriptor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_20E322480();
}

uint64_t sub_20E0C99A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C30, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest, &protocol conformance descriptor for TranscriptProtoActionFailureUnableToHandleRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0C9A40(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8668A0, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest, &protocol conformance descriptor for TranscriptProtoActionFailureUnableToHandleRequest);

  return sub_20E322470();
}

uint64_t sub_20E0C9AAC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8668A0, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest, &protocol conformance descriptor for TranscriptProtoActionFailureUnableToHandleRequest);

  return sub_20E322480();
}

uint64_t sub_20E0C9B74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864990);
  __swift_project_value_buffer(v0, qword_27C864990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "returnValue";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "undoContext";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "didShowInAppResult";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "followUpAction";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "shouldOpen";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "inAppSearchString";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "concludesStreamingStatementID";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoActionSuccess.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 1:
          sub_20E0C9FF4(a1, v5, a2, a3);
          break;
        case 3:
          sub_20E0CA0A8(a1, v5, a2, a3);
          break;
        case 4:
          goto LABEL_12;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        type metadata accessor for TranscriptProtoActionSuccess(0);
        sub_20E3223D0();
      }

      else if (result == 8)
      {
        sub_20E0CA210(a1, v5, a2, a3);
      }
    }

    else if (result == 5)
    {
      sub_20E0CA15C(a1, v5, a2, a3);
    }

    else
    {
LABEL_12:
      sub_20E3222F0();
    }
  }
}

uint64_t sub_20E0C9FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0CA0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  type metadata accessor for TranscriptProtoUndoContext(0);
  sub_20E195B0C(&qword_27C8668D8, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);
  return sub_20E322430();
}

uint64_t sub_20E0CA15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_20E195B0C(&qword_27C8668F0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);
  return sub_20E322430();
}

uint64_t sub_20E0CA210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionSuccess(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_20E322430();
}

uint64_t TranscriptProtoActionSuccess.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E0CA3F0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E0CA60C(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_20E3224C0();
    }

    sub_20E0CA828(v3, a1, a2, a3);
    if (v3[1] == 1)
    {
      sub_20E3224C0();
    }

    sub_20E0CAA44(v3, a1, a2, a3);
    sub_20E0CAABC(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoActionSuccess(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0CA3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionSuccess(0);
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

uint64_t sub_20E0CA60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868538, &unk_20E33C2F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C868538, &unk_20E33C2F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868538, &unk_20E33C2F0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoUndoContext);
  sub_20E195B0C(&qword_27C8668D8, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoUndoContext);
}

uint64_t sub_20E0CA828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C868528, &qword_20E33B558);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868528, &qword_20E33B558);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoFollowUpAction);
  sub_20E195B0C(&qword_27C8668F0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoFollowUpAction);
}

uint64_t sub_20E0CAA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoActionSuccess(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E0CAABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_20E0486F4(a1 + *(v12 + 40), v7, &qword_27C8639D0, &unk_20E33C230);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195B0C(qword_280E0D7D0, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_20E0CAD24@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[10];
  v11 = &a2[a1[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a2[v10], 1, 1, v12);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E0CAE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E0CAF08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E0CAFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C28, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CB070(uint64_t a1)
{
  sub_20E195B0C(qword_280E0CBB8, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);

  return sub_20E322470();
}

uint64_t sub_20E0CB0DC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(qword_280E0CBB8, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);

  return sub_20E322480();
}

uint64_t sub_20E0CB214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
      sub_20E322430();
    }
  }

  return result;
}

uint64_t sub_20E0CB3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C20, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CB480(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8668C0, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);

  return sub_20E322470();
}

uint64_t sub_20E0CB4EC(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8668C0, type metadata accessor for TranscriptProtoSnippetStream, &protocol conformance descriptor for TranscriptProtoSnippetStream);

  return sub_20E322480();
}

uint64_t sub_20E0CB588()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8649C0);
  __swift_project_value_buffer(v0, qword_27C8649C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "actionDescription";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0CB8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C18, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CB978(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8668D8, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);

  return sub_20E322470();
}

uint64_t sub_20E0CB9E4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8668D8, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);

  return sub_20E322480();
}

uint64_t sub_20E0CBB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868518, &unk_20E33C300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868518, &unk_20E33C300);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868518, &unk_20E33C300);
  }

  sub_20E195B54(v7, v11, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_20E195B0C(&qword_27C866908, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
}

uint64_t sub_20E0CBE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C10, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CBEE8(uint64_t a1)
{
  sub_20E195B0C(&qword_27C8668F0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);

  return sub_20E322470();
}

uint64_t sub_20E0CBF54(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C8668F0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);

  return sub_20E322480();
}

uint64_t sub_20E0CC05C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0CC0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868500, &qword_20E33B538);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_20E0486F4(v45, v11, &qword_27C868500, &qword_20E33B538);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_20E04875C(v11, &qword_27C868500, &qword_20E33B538);
    v26 = v40;
  }

  else
  {
    sub_20E195B54(v11, v18, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
    sub_20E195B54(v18, v16, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
    sub_20E04875C(v23, &qword_27C868510, &qword_20E33B548);
    v27 = v38;
    sub_20E195B54(v16, v38, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    sub_20E195B54(v27, v23, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_20E195B0C(&qword_27C866920, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v28 = v41;
  sub_20E322430();
  v29 = v39;
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C868510, &qword_20E33B548);
  }

  sub_20E0486F4(v23, v39, &qword_27C868510, &qword_20E33B548);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_20E04875C(v23, &qword_27C868510, &qword_20E33B548);
    return sub_20E04875C(v29, &qword_27C868510, &qword_20E33B548);
  }

  else
  {
    v31 = v36;
    sub_20E195B54(v29, v36, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C868510, &qword_20E33B548);
    v32 = v45;
    sub_20E04875C(v45, &qword_27C868500, &qword_20E33B538);
    sub_20E195B54(v31, v32, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_20E0CC66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868500, &qword_20E33B538);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C868500, &qword_20E33B538);
  v11 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868500, &qword_20E33B538);
  }

  sub_20E195B54(v7, v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_20E195B0C(&qword_27C866920, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_20E322580();
  return sub_20E195C24(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
}

uint64_t sub_20E0CC91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C08, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CC9BC(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866908, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_20E322470();
}

uint64_t sub_20E0CCA28(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866908, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_20E322480();
}

uint64_t sub_20E0CCAC4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A08);
  __swift_project_value_buffer(v0, qword_27C864A08);
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
  *v10 = "linkAction";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "linkShowOutputActionOptions";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E0CCD3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(v5 + 32, a2, a3);
        break;
      case 2:
        a4(v5 + 16, a2, a3);
        break;
      case 1:
        sub_20E3223E0();
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_14;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_20E3224E0();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!v3[4] || (result = sub_20E322560(), !v4))
    {
      type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

double sub_20E0CCF58@<D0>(uint64_t a2@<X8>)
{
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 16) = xmmword_20E326350;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_20E0CCFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867C00, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CD088(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866920, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_20E322470();
}

uint64_t sub_20E0CD0F4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866920, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction, &protocol conformance descriptor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_20E322480();
}

uint64_t sub_20E0CD190()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A20);
  __swift_project_value_buffer(v0, qword_27C864A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "item";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "ancestorValue";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterConfirmation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E322380();
      }

      else if (result == 6)
      {
        sub_20E0CD58C(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E0CD4D8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E0CD4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterConfirmation(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E0CD58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterConfirmation(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t TranscriptProtoParameterConfirmation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    result = sub_20E0CD728(v3, a1, a2, a3);
    if (!v4)
    {
      if ((*(v3 + 24) & 1) == 0)
      {
        sub_20E322510();
      }

      sub_20E0CD944(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoParameterConfirmation(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E0CD728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
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

uint64_t sub_20E0CD944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E195B54(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E0CDBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + *(a1 + 28), 1, 1, v5);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E0CDCB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BF8, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CDD54(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866938, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);

  return sub_20E322470();
}

uint64_t sub_20E0CDDC0(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866938, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);

  return sub_20E322480();
}

uint64_t sub_20E0CDE5C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A38);
  __swift_project_value_buffer(v0, qword_27C864A38);
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
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "items";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoParameterDisambiguation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          sub_20E322380();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
          sub_20E322420();
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

uint64_t TranscriptProtoParameterDisambiguation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(*(v3 + 16) + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      result = sub_20E322570();
      if (v4)
      {
        return result;
      }

      if (*(v3 + 32))
      {
        goto LABEL_9;
      }
    }

    else if (*(v3 + 32))
    {
LABEL_9:
      if (!v4)
      {
        type metadata accessor for TranscriptProtoParameterDisambiguation(0);
        return sub_20E3221A0();
      }

      return result;
    }

    result = sub_20E322510();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_20E0CE340@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E0CE3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BF0, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CE478(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866950, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);

  return sub_20E322470();
}

uint64_t sub_20E0CE4E4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866950, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);

  return sub_20E322480();
}

uint64_t TranscriptProtoValueDisambiguation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E195B0C(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_20E322570(), !v4))
  {
    type metadata accessor for TranscriptProtoValueDisambiguation(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E0CE7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195B0C(&qword_27C867BE8, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E0CE848(uint64_t a1)
{
  sub_20E195B0C(&qword_27C866968, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);

  return sub_20E322470();
}

uint64_t sub_20E0CE8B4(uint64_t a1, uint64_t a2)
{
  sub_20E195B0C(&qword_27C866968, type metadata accessor for TranscriptProtoValueDisambiguation, &protocol conformance descriptor for TranscriptProtoValueDisambiguation);

  return sub_20E322480();
}

uint64_t sub_20E0CE94C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C864A68);
  __swift_project_value_buffer(v0, qword_27C864A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20E326300;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "success";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "actionConfirmation";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "parameterNeedsValue";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameterConfirmation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "parameterDisambiguation";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parameterNotAllowed";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "parameterCandidatesNotFound";
  *(v19 + 1) = 27;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "actionRequirement";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "toolDisambiguation";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "failure";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "valueDisambiguation";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "snippetStream";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t TranscriptProtoStatementOutcome.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 6)
    {
      if (result > 9)
      {
        switch(result)
        {
          case 10:
            sub_20E0D234C(v5, a1, a2, a3);
            break;
          case 11:
            sub_20E0D2908(v5, a1, a2, a3);
            break;
          case 12:
            sub_20E0D2EC4(v5, a1, a2, a3);
            break;
        }
      }

      else if (result == 7)
      {
        sub_20E0D1218(v5, a1, a2, a3);
      }

      else if (result == 8)
      {
        sub_20E0D17D4(v5, a1, a2, a3);
      }

      else
      {
        sub_20E0D1D90(v5, a1, a2, a3);
      }
    }

    else if (result > 3)
    {
      if (result == 4)
      {
        sub_20E0D00E4(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_20E0D06A0(v5, a1, a2, a3);
      }

      else
      {
        sub_20E0D0C5C(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E0CEFBC(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E0CF56C(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E0CFB28(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E0CEFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684A0, &qword_20E33B4D8);
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
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C8684A0, &qword_20E33B4D8);
      v31 = v39;
      sub_20E195B54(v17, v39, type metadata accessor for TranscriptProtoActionSuccess);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoActionSuccess);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E195B0C(qword_280E0CBB8, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684A0, &qword_20E33B4D8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684A0, &qword_20E33B4D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684A0, &qword_20E33B4D8);
    return sub_20E04875C(v32, &qword_27C8684A0, &qword_20E33B4D8);
  }

  else
  {
    v35 = v40;
    sub_20E195B54(v32, v40, type metadata accessor for TranscriptProtoActionSuccess);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684A0, &qword_20E33B4D8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionSuccess);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0CF56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionConfirmation(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684A8, &qword_20E33B4E0);
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
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C8684A8, &qword_20E33B4E0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoActionConfirmation);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoActionConfirmation);
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
  sub_20E195B0C(&qword_27C866588, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684A8, &qword_20E33B4E0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684A8, &qword_20E33B4E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684A8, &qword_20E33B4E0);
    return sub_20E04875C(v32, &qword_27C8684A8, &qword_20E33B4E0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoActionConfirmation);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684A8, &qword_20E33B4E0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionConfirmation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0CFB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684B0, &qword_20E33B4E8);
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
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C8684B0, &qword_20E33B4E8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoParameterNeedsValue);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoParameterNeedsValue);
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
  sub_20E195B0C(&qword_27C866988, type metadata accessor for TranscriptProtoParameterNeedsValue, &protocol conformance descriptor for TranscriptProtoParameterNeedsValue);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684B0, &qword_20E33B4E8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684B0, &qword_20E33B4E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684B0, &qword_20E33B4E8);
    return sub_20E04875C(v32, &qword_27C8684B0, &qword_20E33B4E8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoParameterNeedsValue);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684B0, &qword_20E33B4E8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoParameterNeedsValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0D00E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684B8, &qword_20E33B4F0);
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
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C8684B8, &qword_20E33B4F0);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoParameterConfirmation);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoParameterConfirmation);
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
  sub_20E195B0C(&qword_27C866938, type metadata accessor for TranscriptProtoParameterConfirmation, &protocol conformance descriptor for TranscriptProtoParameterConfirmation);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684B8, &qword_20E33B4F0);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684B8, &qword_20E33B4F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684B8, &qword_20E33B4F0);
    return sub_20E04875C(v32, &qword_27C8684B8, &qword_20E33B4F0);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoParameterConfirmation);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684B8, &qword_20E33B4F0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoParameterConfirmation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0D06A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684C0, &qword_20E33B4F8);
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
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C8684C0, &qword_20E33B4F8);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoParameterDisambiguation);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoParameterDisambiguation);
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
  sub_20E195B0C(&qword_27C866950, type metadata accessor for TranscriptProtoParameterDisambiguation, &protocol conformance descriptor for TranscriptProtoParameterDisambiguation);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684C0, &qword_20E33B4F8);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684C0, &qword_20E33B4F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684C0, &qword_20E33B4F8);
    return sub_20E04875C(v32, &qword_27C8684C0, &qword_20E33B4F8);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoParameterDisambiguation);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684C0, &qword_20E33B4F8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoParameterDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0D0C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684C8, &qword_20E33B500);
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
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C8684C8, &qword_20E33B500);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoParameterNotAllowed);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoParameterNotAllowed);
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
  sub_20E195B0C(&qword_27C8669D0, type metadata accessor for TranscriptProtoParameterNotAllowed, &protocol conformance descriptor for TranscriptProtoParameterNotAllowed);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684C8, &qword_20E33B500);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684C8, &qword_20E33B500);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684C8, &qword_20E33B500);
    return sub_20E04875C(v32, &qword_27C8684C8, &qword_20E33B500);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoParameterNotAllowed);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684C8, &qword_20E33B500);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoParameterNotAllowed);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0D1218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684D0, &qword_20E33B508);
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
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C8684D0, &qword_20E33B508);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
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
  sub_20E195B0C(&qword_27C8669F8, type metadata accessor for TranscriptProtoParameterCandidatesNotFound, &protocol conformance descriptor for TranscriptProtoParameterCandidatesNotFound);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684D0, &qword_20E33B508);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684D0, &qword_20E33B508);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684D0, &qword_20E33B508);
    return sub_20E04875C(v32, &qword_27C8684D0, &qword_20E33B508);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684D0, &qword_20E33B508);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E0D17D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for TranscriptProtoActionRequirement(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8684D8, &qword_20E33B510);
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
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C8684D8, &qword_20E33B510);
      v31 = v40;
      sub_20E195B54(v17, v40, type metadata accessor for TranscriptProtoActionRequirement);
      sub_20E195B54(v31, v24, type metadata accessor for TranscriptProtoActionRequirement);
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
  sub_20E195B0C(&qword_27C866798, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C8684D8, &qword_20E33B510);
  }

  sub_20E0486F4(v24, v32, &qword_27C8684D8, &qword_20E33B510);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C8684D8, &qword_20E33B510);
    return sub_20E04875C(v32, &qword_27C8684D8, &qword_20E33B510);
  }

  else
  {
    v35 = v39;
    sub_20E195B54(v32, v39, type metadata accessor for TranscriptProtoActionRequirement);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C8684D8, &qword_20E33B510);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C863BA0, &unk_20E325F20);
    sub_20E195B54(v35, v36, type metadata accessor for TranscriptProtoActionRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}