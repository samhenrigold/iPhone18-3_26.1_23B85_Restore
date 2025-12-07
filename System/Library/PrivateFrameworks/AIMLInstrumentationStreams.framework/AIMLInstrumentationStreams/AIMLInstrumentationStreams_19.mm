double sub_23C75C744@<D0>(uint64_t a2@<X8>)
{
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t sub_23C75C7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203690, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75C878(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201508, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return sub_23C8711F4();
}

uint64_t sub_23C75C8E4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201508, type metadata accessor for TranscriptProtoSpeechPackage.Token, &protocol conformance descriptor for TranscriptProtoSpeechPackage.Token);

  return sub_23C871204();
}

uint64_t sub_23C75C980()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2001A0);
  __swift_project_value_buffer(v0, qword_27E2001A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoExternalAgentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C75CCEC(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for TranscriptProtoExternalAgentRequest(0);
          sub_23C871154();
          break;
        case 1:
          type metadata accessor for TranscriptProtoRequestContent(0);
          sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C75CCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_23C8711A4();
}

uint64_t sub_23C75CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD0, &unk_23C8A1160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203DD0, &unk_23C8A1160);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203DD0, &unk_23C8A1160);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoRequestContent);
}

uint64_t sub_23C75D018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C75D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E203DC0, &unk_23C8A1170);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203DC0, &unk_23C8A1170);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
}

uint64_t sub_23C75D2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v7 - 8) + 56))(a2 + v5, 1, 1, v7);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C75D408(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203688, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75D4A8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201ED0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C75D514(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201ED0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);

  return sub_23C871204();
}

uint64_t sub_23C75D5B0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2001B8);
  __swift_project_value_buffer(v0, qword_27E2001B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequest";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrites";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_23C8712A4(), !v4))
    {
      type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C75D964(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203680, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75DA04(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_23C8711F4();
}

uint64_t sub_23C75DA70(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_23C871204();
}

uint64_t sub_23C75DB4C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2001D0);
  __swift_project_value_buffer(v0, qword_27E2001D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "searchTool";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoRequestPrescribedPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
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
          sub_23C7602A0(v5, a1, a2, a3);
        }

        else if (result == 11)
        {
          sub_23C76085C(v5, a1, a2, a3);
        }
      }

      else if (result == 8)
      {
        sub_23C75F728(v5, a1, a2, a3);
      }

      else
      {
        sub_23C75FCE4(v5, a1, a2, a3);
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_23C75EBB0(v5, a1, a2, a3);
      }

      else
      {
        sub_23C75F16C(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C75E044(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C75E5F4(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C75E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D80, &qword_23C8A0F48);
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
  sub_23C5855B0(a1, v12, &qword_27E201530, &unk_23C8A1190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201530, &unk_23C8A1190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203D80, &qword_23C8A0F48);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201F18, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203D80, &qword_23C8A0F48);
  }

  sub_23C5855B0(v24, v32, &qword_27E203D80, &qword_23C8A0F48);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203D80, &qword_23C8A0F48);
    return sub_23C585C34(v32, &qword_27E203D80, &qword_23C8A0F48);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203D80, &qword_23C8A0F48);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C75E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D88, &qword_23C8A0F50);
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
  sub_23C5855B0(a1, v12, &qword_27E201530, &unk_23C8A1190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201530, &unk_23C8A1190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203D88, &qword_23C8A0F50);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201F30, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203D88, &qword_23C8A0F50);
  }

  sub_23C5855B0(v24, v32, &qword_27E203D88, &qword_23C8A0F50);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203D88, &qword_23C8A0F50);
    return sub_23C585C34(v32, &qword_27E203D88, &qword_23C8A0F50);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203D88, &qword_23C8A0F50);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C75EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D90, &qword_23C8A0F58);
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
  sub_23C5855B0(a1, v12, &qword_27E201530, &unk_23C8A1190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201530, &unk_23C8A1190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203D90, &qword_23C8A0F58);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201F48, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203D90, &qword_23C8A0F58);
  }

  sub_23C5855B0(v24, v32, &qword_27E203D90, &qword_23C8A0F58);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203D90, &qword_23C8A0F58);
    return sub_23C585C34(v32, &qword_27E203D90, &qword_23C8A0F58);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203D90, &qword_23C8A0F58);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C75F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D98, &qword_23C8A0F60);
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
  sub_23C5855B0(a1, v12, &qword_27E201530, &unk_23C8A1190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201530, &unk_23C8A1190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203D98, &qword_23C8A0F60);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201F60, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203D98, &qword_23C8A0F60);
  }

  sub_23C5855B0(v24, v32, &qword_27E203D98, &qword_23C8A0F60);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203D98, &qword_23C8A0F60);
    return sub_23C585C34(v32, &qword_27E203D98, &qword_23C8A0F60);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203D98, &qword_23C8A0F60);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C75F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DA0, &qword_23C8A0F68);
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
  sub_23C5855B0(a1, v12, &qword_27E201530, &unk_23C8A1190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201530, &unk_23C8A1190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E203DA0, &qword_23C8A0F68);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201F78, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203DA0, &qword_23C8A0F68);
  }

  sub_23C5855B0(v24, v32, &qword_27E203DA0, &qword_23C8A0F68);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203DA0, &qword_23C8A0F68);
    return sub_23C585C34(v32, &qword_27E203DA0, &qword_23C8A0F68);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203DA0, &qword_23C8A0F68);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C75FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DA8, &qword_23C8A0F70);
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
  sub_23C5855B0(a1, v12, &qword_27E201530, &unk_23C8A1190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201530, &unk_23C8A1190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E203DA8, &qword_23C8A0F70);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201F90, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203DA8, &qword_23C8A0F70);
  }

  sub_23C5855B0(v24, v32, &qword_27E203DA8, &qword_23C8A0F70);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203DA8, &qword_23C8A0F70);
    return sub_23C585C34(v32, &qword_27E203DA8, &qword_23C8A0F70);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203DA8, &qword_23C8A0F70);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7602A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DB0, &qword_23C8A0F78);
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
  sub_23C5855B0(a1, v12, &qword_27E201530, &unk_23C8A1190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201530, &unk_23C8A1190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v24, &qword_27E203DB0, &qword_23C8A0F78);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201FA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203DB0, &qword_23C8A0F78);
  }

  sub_23C5855B0(v24, v32, &qword_27E203DB0, &qword_23C8A0F78);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203DB0, &qword_23C8A0F78);
    return sub_23C585C34(v32, &qword_27E203DB0, &qword_23C8A0F78);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203DB0, &qword_23C8A0F78);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C76085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DB8, &qword_23C8A0F80);
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
  sub_23C5855B0(a1, v12, &qword_27E201530, &unk_23C8A1190);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201530, &unk_23C8A1190);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v24, &qword_27E203DB8, &qword_23C8A0F80);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E201FC0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203DB8, &qword_23C8A0F80);
  }

  sub_23C5855B0(v24, v32, &qword_27E203DB8, &qword_23C8A0F80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203DB8, &qword_23C8A0F80);
    return sub_23C585C34(v32, &qword_27E203DB8, &qword_23C8A0F80);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203DB8, &qword_23C8A0F80);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoRequestPrescribedPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E201530, &unk_23C8A1190);
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
        sub_23C761DC8(v3, a1, a2, a3);
      }

      else
      {
        sub_23C762000(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C761958(v3, a1, a2, a3);
    }

    else
    {
      sub_23C761B90(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C7614E8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C761720(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C7612B0(v3, a1, a2, a3);
  }

  else
  {
    sub_23C76107C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  if (!v4)
  {
LABEL_18:
    type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201530, &unk_23C8A1190);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    sub_23C8314AC(&qword_27E201F18, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7612B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201530, &unk_23C8A1190);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    sub_23C8314AC(&qword_27E201F30, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7614E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201530, &unk_23C8A1190);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    sub_23C8314AC(&qword_27E201F48, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C761720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201530, &unk_23C8A1190);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    sub_23C8314AC(&qword_27E201F60, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C761958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201530, &unk_23C8A1190);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    sub_23C8314AC(&qword_27E201F78, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C761B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201530, &unk_23C8A1190);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    sub_23C8314AC(&qword_27E201F90, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C761DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201530, &unk_23C8A1190);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    sub_23C8314AC(&qword_27E201FA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C762000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201530, &unk_23C8A1190);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    sub_23C8314AC(&qword_27E201FC0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7622E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203678, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C762388(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201F00, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return sub_23C8711F4();
}

uint64_t sub_23C7623F4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201F00, type metadata accessor for TranscriptProtoRequestPrescribedPlan, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlan);

  return sub_23C871204();
}

uint64_t sub_23C762490()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2001E8);
  __swift_project_value_buffer(v0, qword_27E2001E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
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
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "shouldOpenResultIfApplicable";
  *(v11 + 8) = 28;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7627A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203670, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C762840(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201F18, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_23C8711F4();
}

uint64_t sub_23C7628AC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201F18, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_23C871204();
}

uint64_t sub_23C762A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203668, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C762B14(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201F30, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_23C8711F4();
}

uint64_t sub_23C762B80(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201F30, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_23C871204();
}

uint64_t sub_23C762C18()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200218);
  __swift_project_value_buffer(v0, qword_27E200218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C762EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203660, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C762F7C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201F48, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_23C8711F4();
}

uint64_t sub_23C762FE8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201F48, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_23C871204();
}

uint64_t sub_23C763080()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200230);
  __swift_project_value_buffer(v0, qword_27E200230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7632B0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C763404(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203658, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7634A4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201F60, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_23C8711F4();
}

uint64_t sub_23C763510(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201F60, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_23C871204();
}

uint64_t sub_23C76358C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C763674()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200248);
  __swift_project_value_buffer(v0, qword_27E200248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C763920(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203650, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7639C0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201F78, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_23C8711F4();
}

uint64_t sub_23C763A2C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201F78, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_23C871204();
}

uint64_t sub_23C763AC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200260);
  __swift_project_value_buffer(v0, qword_27E200260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C763CB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_23C871164();
    }

    else if (result == 2)
    {
      sub_23C871084();
    }
  }

  return result;
}

uint64_t sub_23C763D68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *(v4 + 8);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_23C8712C4(), !v5))
  {
    if (*(v4 + 16) != 1 || (result = sub_23C871244(), !v5))
    {
      a4(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C763EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203648, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C763F68(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201F90, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_23C8711F4();
}

uint64_t sub_23C763FD4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201F90, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_23C871204();
}

uint64_t sub_23C76406C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200278);
  __swift_project_value_buffer(v0, qword_27E200278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resultStatementId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elementAtIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
        sub_23C871104();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7643BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    a6(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C764464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C764528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7645FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203640, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76469C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201FA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_23C8711F4();
}

uint64_t sub_23C764708(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201FA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_23C871204();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_23C871104();
    }
  }

  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 8) & 1) == 0)
  {
    v5 = sub_23C871294();
  }

  if (!v4)
  {
    type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
    return sub_23C870F14();
  }

  return v5;
}

uint64_t sub_23C764928@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7649A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203638, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C764A40(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201FC0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_23C8711F4();
}

uint64_t sub_23C764AAC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201FC0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool, &protocol conformance descriptor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_23C871204();
}

uint64_t sub_23C764B48()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2002A8);
  __swift_project_value_buffer(v0, qword_27E2002A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C875550;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 10;
  *v5 = "statementId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
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
          sub_23C871154();
          break;
        case 10:
          sub_23C765060(a1, v5, a2, a3);
          break;
        case 11:
          sub_23C765114(a1, v5, a2, a3);
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
          sub_23C871084();
          break;
        case 7:
          sub_23C764F68(a1, v5, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_23C764F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C870EE4();
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_23C8314AC(&qword_27E201580, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
  sub_23C8314AC(&qword_27E201588, type metadata accessor for TranscriptProtoActionParameterValue, "阚EԻiH");
  return sub_23C871024();
}

uint64_t sub_23C765060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAction(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C765114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoAction(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7ED9C0(v3, a1, a2, a3, type metadata accessor for TranscriptProtoAction, 3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_23C871244();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_23C870EE4();
      type metadata accessor for TranscriptProtoActionParameterValue(0);
      sub_23C8314AC(&qword_27E201580, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);
      sub_23C8314AC(&qword_27E201588, type metadata accessor for TranscriptProtoActionParameterValue, "阚EԻiH");
      sub_23C871214();
    }

    sub_23C7EDA44(v3, a1, a2, a3, type metadata accessor for TranscriptProtoAction, 8);
    sub_23C7653C0(v3, a1, a2, a3);
    sub_23C7655DC(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoAction(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7653C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoAction(0);
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

uint64_t sub_23C7655DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoAction(0);
  sub_23C5855B0(a1 + *(v12 + 36), v7, &qword_27E2037A0, &qword_23C8A0A00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E2037A0, &qword_23C8A0A00);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

unint64_t sub_23C765844@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  result = sub_23C599950(MEMORY[0x277D84F90]);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C765978(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203630, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C765A18(uint64_t a1)
{
  sub_23C8314AC(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return sub_23C8711F4();
}

uint64_t sub_23C765A84(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);

  return sub_23C871204();
}

uint64_t sub_23C765B20()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2002C0);
  __swift_project_value_buffer(v0, qword_27E2002C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
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
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionParameterValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoToolParameterValue(0);
        sub_23C8314AC(&qword_27E202E20, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C765E0C(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C765E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  return sub_23C8711A4();
}

uint64_t sub_23C765F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D58, &unk_23C8A11A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203D58, &unk_23C8A11A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203D58, &unk_23C8A11A0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoToolParameterValue);
  sub_23C8314AC(&qword_27E202E20, type metadata accessor for TranscriptProtoToolParameterValue, &protocol conformance descriptor for TranscriptProtoToolParameterValue);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoToolParameterValue);
}

uint64_t sub_23C766124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203CF8, &qword_23C8A0ED8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203CF8, &qword_23C8A0ED8);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPromptSelection);
}

uint64_t sub_23C766404(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203628, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7664A4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201580, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return sub_23C8711F4();
}

uint64_t sub_23C766510(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201580, type metadata accessor for TranscriptProtoActionParameterValue, &protocol conformance descriptor for TranscriptProtoActionParameterValue);

  return sub_23C871204();
}

uint64_t sub_23C7665AC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2002D8);
  __swift_project_value_buffer(v0, qword_27E2002D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "cancelledActionStatementId";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionCancellation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 4)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
        sub_23C8711A4();
      }

      else if (result == 5)
      {
        sub_23C76689C(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C76689C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionCancellation(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7669A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C766BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionCancellation(0);
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

uint64_t sub_23C766E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203620, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C766F34(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201FF8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return sub_23C8711F4();
}

uint64_t sub_23C766FA0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201FF8, type metadata accessor for TranscriptProtoActionCancellation, &protocol conformance descriptor for TranscriptProtoActionCancellation);

  return sub_23C871204();
}

uint64_t sub_23C767068()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2002F0);
  __swift_project_value_buffer(v0, qword_27E2002F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confirmed";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoPromptSelection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C767360(a1, v5, a2, a3, 1);
        break;
      case 2:
        sub_23C76EFE4(a1, v5, a2, a3);
        break;
      case 1:
        sub_23C767360(a1, v5, a2, a3, 0);
        break;
    }
  }

  return result;
}

uint64_t sub_23C767360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v20 = a2;
  sub_23C5855B0(v12, v10, &qword_27E1FEBC8, &qword_23C889840);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_23C585C34(v10, &qword_27E1FEBC8, &qword_23C889840);
  if (v15 == 1)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v16 = v20;
  if ((*(v20 + 9) & 1) == 0)
  {
    sub_23C871054();
  }

  v17 = v21;
  result = sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
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
      result = sub_23C76F2AC(v3, a1, a2, a3, 3);
      if (!v4)
      {
LABEL_2:
        type metadata accessor for TranscriptProtoPromptSelection(0);
        return sub_23C870F14();
      }
    }

    else
    {
      result = sub_23C76F150(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_23C871294();
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C767724(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203618, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7677C4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return sub_23C8711F4();
}

uint64_t sub_23C767830(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);

  return sub_23C871204();
}

uint64_t sub_23C7678CC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200308);
  __swift_project_value_buffer(v0, qword_27E200308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "parameterValues";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "systemStyle";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C767AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C870EE4();
  type metadata accessor for TranscriptProtoParameterValue(0);
  sub_23C8314AC(&qword_27E2015A8, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);
  sub_23C8314AC(&qword_27E2015B0, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);
  return sub_23C871024();
}

uint64_t sub_23C767BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionConfirmation(0);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  sub_23C8314AC(&qword_27E202040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionConfirmation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_23C870EE4(), type metadata accessor for TranscriptProtoParameterValue(0), sub_23C8314AC(&qword_27E2015A8, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue), sub_23C8314AC(&qword_27E2015B0, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue), v4 = v9, result = sub_23C871214(), !v9))
  {
    result = sub_23C767DFC(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for TranscriptProtoActionConfirmation(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C767DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D38, &unk_23C8A11B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203D38, &unk_23C8A11B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203D38, &unk_23C8A11B0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_23C8314AC(&qword_27E202040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
}

uint64_t sub_23C7680DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203610, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76817C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202028, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return sub_23C8711F4();
}

uint64_t sub_23C7681E8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202028, type metadata accessor for TranscriptProtoActionConfirmation, &protocol conformance descriptor for TranscriptProtoActionConfirmation);

  return sub_23C871204();
}

uint64_t sub_23C7682F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D20, &qword_23C8A0EF8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D30, &qword_23C8A0F08);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_23C5855B0(v45, v11, &qword_27E203D20, &qword_23C8A0EF8);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_23C585C34(v11, &qword_27E203D20, &qword_23C8A0EF8);
    v26 = v40;
  }

  else
  {
    sub_23C83155C(v11, v18, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
    sub_23C83155C(v18, v16, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
    sub_23C585C34(v23, &qword_27E203D30, &qword_23C8A0F08);
    v27 = v38;
    sub_23C83155C(v16, v38, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    sub_23C83155C(v27, v23, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_23C8314AC(&qword_27E202058, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v28 = v41;
  sub_23C8711A4();
  v29 = v39;
  if (v28)
  {
    return sub_23C585C34(v23, &qword_27E203D30, &qword_23C8A0F08);
  }

  sub_23C5855B0(v23, v39, &qword_27E203D30, &qword_23C8A0F08);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_23C585C34(v23, &qword_27E203D30, &qword_23C8A0F08);
    return sub_23C585C34(v29, &qword_27E203D30, &qword_23C8A0F08);
  }

  else
  {
    v31 = v36;
    sub_23C83155C(v29, v36, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v23, &qword_27E203D30, &qword_23C8A0F08);
    v32 = v45;
    sub_23C585C34(v45, &qword_27E203D20, &qword_23C8A0EF8);
    sub_23C83155C(v31, v32, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_23C76887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D20, &qword_23C8A0EF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203D20, &qword_23C8A0EF8);
  v11 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203D20, &qword_23C8A0EF8);
  }

  sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C8314AC(&qword_27E202058, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C871304();
  return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
}

uint64_t sub_23C768B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203608, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C768BCC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_23C8711F4();
}

uint64_t sub_23C768C38(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_23C871204();
}

uint64_t sub_23C768CD4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200338);
  __swift_project_value_buffer(v0, qword_27E200338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C871084();
        break;
      case 2:
        sub_23C768FBC(a1, v5, a2, a3);
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t sub_23C768FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_23C8314AC(&qword_27E202070, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C769144(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_23C871244();
      }

      type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C769144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D08, &qword_23C8A0EE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E203D08, &qword_23C8A0EE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203D08, &qword_23C8A0EE8);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_23C8314AC(&qword_27E202070, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
}

uint64_t sub_23C769410(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203600, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7694B0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202058, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_23C8711F4();
}

uint64_t sub_23C76951C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202058, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_23C871204();
}

uint64_t sub_23C7695B8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200350);
  __swift_project_value_buffer(v0, qword_27E200350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mediaQA";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C769920(a1, v5, a2, a3, 2);
        }

        else if (result == 4)
        {
          sub_23C769920(a1, v5, a2, a3, 3);
        }
      }

      else if (result == 1)
      {
        sub_23C769920(a1, v5, a2, a3, 0);
      }

      else if (result == 2)
      {
        sub_23C769920(a1, v5, a2, a3, 1);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C769920(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v20 = a2;
  sub_23C5855B0(v12, v10, &qword_27E1FEBC8, &qword_23C889840);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_23C585C34(v10, &qword_27E1FEBC8, &qword_23C889840);
  if (v15 == 1)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v16 = v20;
  if (*v20 != 4)
  {
    sub_23C871054();
  }

  v17 = v21;
  result = sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
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
      result = sub_23C782740(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    result = sub_23C78288C(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_10:
      type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
      return sub_23C870F14();
    }
  }

  else
  {
    if (v5 == 2)
    {
      result = sub_23C7829DC(v3, a1, a2, a3);
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

    result = sub_23C783604(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_23C769D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035F8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C769DA8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202070, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_23C8711F4();
}

uint64_t sub_23C769E14(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202070, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource, &protocol conformance descriptor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_23C871204();
}

uint64_t sub_23C769EB0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200368);
  __swift_project_value_buffer(v0, qword_27E200368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
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
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameterValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C76A19C(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C76A19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoParameterValue(0);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  return sub_23C8711A4();
}

uint64_t sub_23C76A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoParameterValue(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203CF8, &qword_23C8A0ED8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203CF8, &qword_23C8A0ED8);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection, &protocol conformance descriptor for TranscriptProtoPromptSelection);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPromptSelection);
}

uint64_t sub_23C76A584(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035F0, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76A624(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2015A8, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return sub_23C8711F4();
}

uint64_t sub_23C76A690(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2015A8, type metadata accessor for TranscriptProtoParameterValue, &protocol conformance descriptor for TranscriptProtoParameterValue);

  return sub_23C871204();
}

uint64_t sub_23C76A72C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200380);
  __swift_project_value_buffer(v0, qword_27E200380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assistantSchemaKind";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tools";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoToolDisambiguation.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v5 = sub_23C8712C4();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
      sub_23C8314AC(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
      sub_23C8712F4();
    }

    type metadata accessor for TranscriptProtoToolDisambiguation(0);
    return sub_23C870F14();
  }

  return v5;
}

uint64_t sub_23C76AB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035E8, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76ABF4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202098, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return sub_23C8711F4();
}

uint64_t sub_23C76AC60(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202098, type metadata accessor for TranscriptProtoToolDisambiguation, &protocol conformance descriptor for TranscriptProtoToolDisambiguation);

  return sub_23C871204();
}

uint64_t sub_23C76AD3C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200398);
  __swift_project_value_buffer(v0, qword_27E200398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "responseText";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoExternalAgentOutcome.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      case 4:
        sub_23C76B0D8(a1, v5, a2, a3);
        break;
      case 3:
        sub_23C76B024(a1, v5, a2, a3);
        break;
      case 2:
        sub_23C871124();
        break;
    }
  }

  return result;
}

uint64_t sub_23C76B024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76B0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoExternalAgentOutcome.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_23C8712A4(), !v4))
  {
    result = sub_23C76B244(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C76B460(v3, a1, a2, a3);
      type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C76B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
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

uint64_t sub_23C76B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FBB18, &unk_23C87B950);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBB18, &unk_23C87B950);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_23C76B6C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C76B7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035E0, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76B880(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2020B0, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return sub_23C8711F4();
}

uint64_t sub_23C76B8EC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2020B0, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);

  return sub_23C871204();
}

uint64_t sub_23C76B988()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2003B0);
  __swift_project_value_buffer(v0, qword_27E2003B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "outcome";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoStatementResultPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementOutcome(0);
        sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C76BC74(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C76BC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_23C8314AC(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  return sub_23C8711A4();
}

uint64_t sub_23C76BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB08, &unk_23C8A11D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FBB08, &unk_23C8A11D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBB08, &unk_23C8A11D0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C8314AC(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_23C76C05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035D8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76C0FC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2020C8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C76C168(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2020C8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);

  return sub_23C871204();
}

uint64_t sub_23C76C204()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2003C8);
  __swift_project_value_buffer(v0, qword_27E2003C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionEventId";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoStatementResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      switch(result)
      {
        case 5:
          sub_23C76C788(a1, v5, a2, a3);
          break;
        case 6:
          sub_23C76C83C(a1, v5, a2, a3);
          break;
        case 7:
          sub_23C76C8F0(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C871154();
          break;
        case 3:
          sub_23C76C620(a1, v5, a2, a3);
          break;
        case 4:
          sub_23C76C6D4(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C76C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_23C8314AC(&qword_27E2020C8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);
  return sub_23C8711A4();
}

uint64_t sub_23C76C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76C83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76C8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoStatementResult(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoStatementResult.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 8))
  {
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    sub_23C76CAA4(v3, v7, a2, a3);
    sub_23C76CCC0(v3, v7, a2, a3);
    sub_23C76CEDC(v3, v7, a2, a3);
    sub_23C76D0F8(v3, v7, a2, a3);
    sub_23C76D314(v3, v7, a2, a3);
    type metadata accessor for TranscriptProtoStatementResult(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE8, &qword_23C8A0EC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E203CE8, &qword_23C8A0EC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203CE8, &qword_23C8A0EC8);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_23C8314AC(&qword_27E2020C8, type metadata accessor for TranscriptProtoStatementResultPayload, &protocol conformance descriptor for TranscriptProtoStatementResultPayload);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementResultPayload);
}

uint64_t sub_23C76CCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
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

uint64_t sub_23C76CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
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

uint64_t sub_23C76D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
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

uint64_t sub_23C76D314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_23C5855B0(a1 + *(v12 + 36), v7, &qword_27E2037A0, &qword_23C8A0A00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E2037A0, &qword_23C8A0A00);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_23C76D57C@<X0>(int *a1@<X0>, char *a2@<X8>)
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
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C76D71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035D0, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76D7BC(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return sub_23C8711F4();
}

uint64_t sub_23C76D828(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult);

  return sub_23C871204();
}

uint64_t TranscriptProtoResponseGenerationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoStatementResult(0), sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult, &protocol conformance descriptor for TranscriptProtoStatementResult), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76DB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035C8, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76DBA4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2020F0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C76DC10(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2020F0, type metadata accessor for TranscriptProtoResponseGenerationRequest, &protocol conformance descriptor for TranscriptProtoResponseGenerationRequest);

  return sub_23C871204();
}

uint64_t sub_23C76DCC0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2003F8);
  __swift_project_value_buffer(v0, qword_27E2003F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C76E0F0(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_23C76E1A4(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_23C76E03C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_23C821A88();
        sub_23C8710A4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C76E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C76E0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_23C8314AC(&qword_27E202118, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);
  return sub_23C8711A4();
}

uint64_t sub_23C76E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoCandidate(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C76E350(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_23C821A88();
      sub_23C871254();
    }

    sub_23C76E56C(v3, a1, a2, a3);
    sub_23C76E788(v3, a1, a2, a3);
    type metadata accessor for TranscriptProtoCandidate(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C83155C(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C76E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB8, &unk_23C8A11E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FABB8, &unk_23C8A11E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FABB8, &unk_23C8A11E0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_23C8314AC(&qword_27E202118, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoCandidatePromptStatus);
}

uint64_t sub_23C76E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoCandidate(0);
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

uint64_t sub_23C76E9F0@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C76EB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035C0, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76EBE4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return sub_23C8711F4();
}

uint64_t sub_23C76EC50(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate, &protocol conformance descriptor for TranscriptProtoCandidate);

  return sub_23C871204();
}

uint64_t sub_23C76ECEC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200410);
  __swift_project_value_buffer(v0, qword_27E200410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notPrompted";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoCandidatePromptStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C76EFE4(a1, v5, a2, a3);
        break;
      case 2:
        sub_23C767360(a1, v5, a2, a3, 1);
        break;
      case 1:
        sub_23C767360(a1, v5, a2, a3, 0);
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
      result = sub_23C76F2AC(v3, a1, a2, a3, 2);
      if (!v4)
      {
LABEL_2:
        type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
        return sub_23C870F14();
      }
    }

    else
    {
      result = sub_23C76F150(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_23C871294();
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C76F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 9) & 1) != 0 || (*(a1 + 8) & 1) == 0 || *a1)
  {
    __break(1u);
  }

  else
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23C76F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_23C870E84();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 9) & 1) == 0 && (*(a1 + 8) & 1) != 0 && *a1)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C76F464@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C76F4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035B8, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76F57C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202118, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return sub_23C8711F4();
}

uint64_t sub_23C76F5E8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202118, type metadata accessor for TranscriptProtoCandidatePromptStatus, &protocol conformance descriptor for TranscriptProtoCandidatePromptStatus);

  return sub_23C871204();
}

uint64_t sub_23C76F684()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200428);
  __swift_project_value_buffer(v0, qword_27E200428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 2;
  *v4 = "toolId";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoClientAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
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
          sub_23C76FB70(a1, v5, a2, a3);
          break;
        case 8:
          sub_23C76FC24(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          sub_23C871164();
          break;
        case 3:
          sub_23C76FA78(a1, v5, a2, a3);
          break;
        case 4:
LABEL_14:
          sub_23C871154();
          break;
      }
    }
  }
}

uint64_t sub_23C76FA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C870EE4();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C871024();
}

uint64_t sub_23C76FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoClientAction(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76FC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C870EE4();
  type metadata accessor for TranscriptProtoShimParameters(0);
  sub_23C8314AC(&qword_27E201620, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
  sub_23C8314AC(&qword_27E201628, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
  return sub_23C871024();
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

  if (!v11 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v5[2] + 16))
    {
      sub_23C870EE4();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      result = sub_23C871214();
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
          sub_23C8712C4();
        }

        sub_23C76FFD0(v5, a1, a2, a3);
        if (*(v5[3] + 16))
        {
          sub_23C870EE4();
          type metadata accessor for TranscriptProtoShimParameters(0);
          sub_23C8314AC(&qword_27E201620, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
          sub_23C8314AC(&qword_27E201628, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);
          sub_23C871214();
        }

        type metadata accessor for TranscriptProtoClientAction(0);
        return sub_23C870F14();
      }

      return result;
    }

    result = sub_23C8712C4();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_23C76FFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoClientAction(0);
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

unint64_t sub_23C770238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v3 = *(a1 + 36);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v5 = MEMORY[0x277D84F90];
  *(a2 + 16) = sub_23C599478(MEMORY[0x277D84F90]);
  result = sub_23C599D20(v5);
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_23C770330(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035B0, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7703D0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202130, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return sub_23C8711F4();
}

uint64_t sub_23C77043C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202130, type metadata accessor for TranscriptProtoClientAction, &protocol conformance descriptor for TranscriptProtoClientAction);

  return sub_23C871204();
}

uint64_t TranscriptProtoShimParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoShimParameter(0), sub_23C8314AC(&qword_27E201638, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for TranscriptProtoShimParameters(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C770718(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035A8, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7707B8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201620, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return sub_23C8711F4();
}

uint64_t sub_23C770824(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201620, type metadata accessor for TranscriptProtoShimParameters, &protocol conformance descriptor for TranscriptProtoShimParameters);

  return sub_23C871204();
}

uint64_t sub_23C7708D4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200458);
  __swift_project_value_buffer(v0, qword_27E200458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "resolved";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t sub_23C770BB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = v7;
  while (1)
  {
    result = sub_23C871044();
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

uint64_t sub_23C770CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC00, &qword_23C878F98);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC00, &qword_23C878F98);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C83155C(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC00, &qword_23C878F98);
    sub_23C83155C(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C771274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CC8, &qword_23C8A0EA8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC00, &qword_23C878F98);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC00, &qword_23C878F98);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203CC8, &qword_23C8A0EA8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202168, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203CC8, &qword_23C8A0EA8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203CC8, &qword_23C8A0EA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203CC8, &qword_23C8A0EA8);
    return sub_23C585C34(v32, &qword_27E203CC8, &qword_23C8A0EA8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203CC8, &qword_23C8A0EA8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC00, &qword_23C878F98);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C771830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AD0, &qword_23C8A0CF8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC00, &qword_23C878F98);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC00, &qword_23C878F98);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203AD0, &qword_23C8A0CF8);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPersonQuery);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPersonQuery);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203AD0, &qword_23C8A0CF8);
  }

  sub_23C5855B0(v24, v32, &qword_27E203AD0, &qword_23C8A0CF8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203AD0, &qword_23C8A0CF8);
    return sub_23C585C34(v32, &qword_27E203AD0, &qword_23C8A0CF8);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPersonQuery);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203AD0, &qword_23C8A0CF8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC00, &qword_23C878F98);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPersonQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C771DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CD0, &qword_23C8A0EB0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC00, &qword_23C878F98);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC00, &qword_23C878F98);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203CD0, &qword_23C8A0EB0);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPhotosCandidates);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPhotosCandidates);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2021C0, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203CD0, &qword_23C8A0EB0);
  }

  sub_23C5855B0(v24, v32, &qword_27E203CD0, &qword_23C8A0EB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203CD0, &qword_23C8A0EB0);
    return sub_23C585C34(v32, &qword_27E203CD0, &qword_23C8A0EB0);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPhotosCandidates);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203CD0, &qword_23C8A0EB0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC00, &qword_23C878F98);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPhotosCandidates);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoShimParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E1FAC00, &qword_23C878F98);
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
      sub_23C7729E8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C772C20(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C7727B0(v3, a1, a2, a3);
  }

  else
  {
    sub_23C77257C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoShimParameterEnum);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoShimParameter(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C77257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC00, &qword_23C878F98);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC00, &qword_23C878F98);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7727B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC00, &qword_23C878F98);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC00, &qword_23C878F98);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_23C8314AC(&qword_27E202168, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7729E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC00, &qword_23C878F98);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC00, &qword_23C878F98);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPersonQuery);
    sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPersonQuery);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C772C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC00, &qword_23C878F98);
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC00, &qword_23C878F98);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPhotosCandidates);
    sub_23C8314AC(&qword_27E2021C0, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPhotosCandidates);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C772F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035A0, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C772FA8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E201638, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return sub_23C8711F4();
}

uint64_t sub_23C773014(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E201638, type metadata accessor for TranscriptProtoShimParameter, &protocol conformance descriptor for TranscriptProtoShimParameter);

  return sub_23C871204();
}

uint64_t sub_23C773094()
{
  result = MEMORY[0x23EED7100](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27E200470 = 0xD000000000000018;
  *algn_27E200478 = 0x800000023C8AFDF0;
  return result;
}

uint64_t sub_23C7731B4(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C773304(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203598, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7733A4(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202168, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C773410(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202168, type metadata accessor for TranscriptProtoShimParameter.StringQuery, &protocol conformance descriptor for TranscriptProtoShimParameter.StringQuery);

  return sub_23C871204();
}

uint64_t sub_23C7734A8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200498);
  __swift_project_value_buffer(v0, qword_27E200498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23C873CF0;
  v4 = v15 + v3;
  v5 = v15 + v3 + v1[14];
  *(v15 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoPersonQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C871084();
      }

      else if (result == 4)
      {
        type metadata accessor for TranscriptProtoPersonQuery(0);
LABEL_12:
        sub_23C871154();
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
        sub_23C7737EC(a1, v5, a2, a3);
      }
    }
  }
}

uint64_t sub_23C7737EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoPersonQuery(0);
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_23C8314AC(&qword_27E202198, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoPersonQuery.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 16))
  {
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    sub_23C773998(v3, v7, a2, a3);
    if (*v3 == 1)
    {
      sub_23C871244();
    }

    sub_23C7ED9C0(v3, v7, a2, a3, type metadata accessor for TranscriptProtoPersonQuery, 4);
    type metadata accessor for TranscriptProtoPersonQuery(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C773998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CB8, &unk_23C8A11F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TranscriptProtoPersonQuery(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E203CB8, &unk_23C8A11F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203CB8, &unk_23C8A11F0);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  sub_23C8314AC(&qword_27E202198, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPersonQuery.Handle);
}

uint64_t sub_23C773C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = (a2 + *(a1 + 28));
  *v6 = 0;
  v6[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C773CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203590, type metadata accessor for TranscriptProtoPersonQuery, "aטḚiH");

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C773D78(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C773DE4(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery, &protocol conformance descriptor for TranscriptProtoPersonQuery);

  return sub_23C871204();
}

uint64_t sub_23C773E64()
{
  result = MEMORY[0x23EED7100](0x656C646E61482ELL, 0xE700000000000000);
  qword_27E2004B0 = 0xD000000000000016;
  *algn_27E2004B8 = 0x800000023C8AFE10;
  return result;
}

uint64_t sub_23C773EF8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2004C0);
  __swift_project_value_buffer(v0, qword_27E2004C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoPersonQuery.Handle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_23C871154();
      }

      else if (result == 1)
      {
        sub_23C831458();
        sub_23C871094();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

unsigned __int8 *TranscriptProtoPersonQuery.Handle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7742C0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(v3 + 16))
    {
      sub_23C8712C4();
    }

    if (*(v3 + 32))
    {
      sub_23C8712C4();
    }

    type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
    return sub_23C870F14();
  }

  return result;
}

unsigned __int8 *sub_23C7742C0(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result != 3)
  {
    sub_23C831458();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C774384@<X0>(uint64_t a2@<X8>)
{
  *a2 = 3;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C774410(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203588, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7744B0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202198, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);

  return sub_23C8711F4();
}

uint64_t sub_23C77451C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202198, type metadata accessor for TranscriptProtoPersonQuery.Handle, &protocol conformance descriptor for TranscriptProtoPersonQuery.Handle);

  return sub_23C871204();
}

uint64_t sub_23C77459C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2004D8);
  __swift_project_value_buffer(v0, qword_27E2004D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "phone";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t sub_23C774814()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2004F0);
  __swift_project_value_buffer(v0, qword_27E2004F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "searchQuery";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetEntities";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C774A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_23C871044();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C871154();
    }

    else if (result == 2)
    {
      a4(0);
      sub_23C8314AC(a5, a6, a7);
      sub_23C871194();
    }
  }

  return result;
}

uint64_t TranscriptProtoPhotosCandidates.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v5 = sub_23C8712C4();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_23C8712F4();
    }

    type metadata accessor for TranscriptProtoPhotosCandidates(0);
    return sub_23C870F14();
  }

  return v5;
}

uint64_t sub_23C774D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203580, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C774DD8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2021C0, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);

  return sub_23C8711F4();
}

uint64_t sub_23C774E44(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2021C0, type metadata accessor for TranscriptProtoPhotosCandidates, &protocol conformance descriptor for TranscriptProtoPhotosCandidates);

  return sub_23C871204();
}

uint64_t sub_23C774F20()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200508);
  __swift_project_value_buffer(v0, qword_27E200508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 4;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoActionParameterContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 4)
      {
        if (result == 5)
        {
          sub_23C775350(a1, v5, a2, a3);
        }

        else if (result == 6)
        {
          sub_23C821ADC();
          sub_23C8710A4();
        }
      }

      else if (result == 3)
      {
        sub_23C871164();
      }

      else if (result == 4)
      {
        sub_23C77529C(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C77529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C775350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionParameterContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C775510(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C77572C(v3, a1, a2, a3);
      if (*(v3 + 16))
      {
        sub_23C821ADC();
        sub_23C871254();
      }

      type metadata accessor for TranscriptProtoActionParameterContext(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C775510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
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

uint64_t sub_23C77572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E2037A0, &qword_23C8A0A00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E2037A0, &qword_23C8A0A00);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier, &protocol conformance descriptor for TranscriptProtoGlobalToolIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_23C775994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C775AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203578, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C775B4C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2021D8, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);

  return sub_23C8711F4();
}

uint64_t sub_23C775BB8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2021D8, type metadata accessor for TranscriptProtoActionParameterContext, &protocol conformance descriptor for TranscriptProtoActionParameterContext);

  return sub_23C871204();
}

uint64_t sub_23C775C54()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200520);
  __swift_project_value_buffer(v0, qword_27E200520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C775E6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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
      sub_23C871164();
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

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    if (!v3[2] || (result = sub_23C871294(), !v4))
    {
      type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static TranscriptProtoIntelligenceFlowError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7760DC@<X0>(uint64_t a2@<X2>, void *a3@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = a2;
  return result;
}

uint64_t sub_23C776164(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203570, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C776204(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);

  return sub_23C8711F4();
}

uint64_t sub_23C776270(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);

  return sub_23C871204();
}

uint64_t sub_23C7762EC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_23C872014() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7763D4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200538);
  __swift_project_value_buffer(v0, qword_27E200538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t sub_23C7766A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
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
  sub_23C5855B0(a1, v12, &qword_27E201680, &qword_23C88DBC8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201680, &qword_23C88DBC8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v32, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201680, &qword_23C88DBC8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C776C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C98, &qword_23C8A0E88);
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
  sub_23C5855B0(a1, v12, &qword_27E201680, &qword_23C88DBC8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201680, &qword_23C88DBC8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203C98, &qword_23C8A0E88);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202220, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203C98, &qword_23C8A0E88);
  }

  sub_23C5855B0(v24, v32, &qword_27E203C98, &qword_23C8A0E88);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203C98, &qword_23C8A0E88);
    return sub_23C585C34(v32, &qword_27E203C98, &qword_23C8A0E88);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203C98, &qword_23C8A0E88);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201680, &qword_23C88DBC8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C777214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CA0, &qword_23C8A0E90);
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
  sub_23C5855B0(a1, v12, &qword_27E201680, &qword_23C88DBC8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201680, &qword_23C88DBC8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203CA0, &qword_23C8A0E90);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPlannerError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPlannerError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202250, type metadata accessor for TranscriptProtoPlannerError, "YΘEܥiH");
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203CA0, &qword_23C8A0E90);
  }

  sub_23C5855B0(v24, v32, &qword_27E203CA0, &qword_23C8A0E90);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203CA0, &qword_23C8A0E90);
    return sub_23C585C34(v32, &qword_27E203CA0, &qword_23C8A0E90);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPlannerError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203CA0, &qword_23C8A0E90);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201680, &qword_23C88DBC8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPlannerError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7777D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CA8, &qword_23C8A0E98);
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
  sub_23C5855B0(a1, v12, &qword_27E201680, &qword_23C88DBC8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201680, &qword_23C88DBC8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E203CA8, &qword_23C8A0E98);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoExecutorError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoExecutorError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202238, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203CA8, &qword_23C8A0E98);
  }

  sub_23C5855B0(v24, v32, &qword_27E203CA8, &qword_23C8A0E98);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203CA8, &qword_23C8A0E98);
    return sub_23C585C34(v32, &qword_27E203CA8, &qword_23C8A0E98);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoExecutorError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203CA8, &qword_23C8A0E98);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201680, &qword_23C88DBC8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoExecutorError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoSessionError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E201680, &qword_23C88DBC8);
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
      sub_23C7783CC(v3, a1, a2, a3);
    }

    else
    {
      sub_23C778604(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C778194(v3, a1, a2, a3);
  }

  else
  {
    sub_23C777F60(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionErrorEnum);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for TranscriptProtoSessionError(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C777F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201680, &qword_23C88DBC8);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201680, &qword_23C88DBC8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C778194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201680, &qword_23C88DBC8);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201680, &qword_23C88DBC8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    sub_23C8314AC(&qword_27E202220, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionCoordinatorError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7783CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPlannerError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201680, &qword_23C88DBC8);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201680, &qword_23C88DBC8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPlannerError);
    sub_23C8314AC(&qword_27E202250, type metadata accessor for TranscriptProtoPlannerError, "YΘEܥiH");
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPlannerError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C778604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoExecutorError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201680, &qword_23C88DBC8);
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201680, &qword_23C88DBC8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoExecutorError);
    sub_23C8314AC(&qword_27E202238, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExecutorError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7788EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203568, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77898C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202208, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);

  return sub_23C8711F4();
}

uint64_t sub_23C7789F8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202208, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);

  return sub_23C871204();
}

uint64_t sub_23C778A94()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200550);
  __swift_project_value_buffer(v0, qword_27E200550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoSessionCoordinatorError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C7798F0(v5, a1, a2, a3);
        break;
      case 2:
        sub_23C779334(v5, a1, a2, a3);
        break;
      case 1:
        sub_23C778D84(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_23C778D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
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
  sub_23C5855B0(a1, v12, &qword_27E201690, &unk_23C8A1200);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201690, &unk_23C8A1200);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v32, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201690, &unk_23C8A1200);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C779334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
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
  sub_23C5855B0(a1, v12, &qword_27E201690, &unk_23C8A1200);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201690, &unk_23C8A1200);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v32, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201690, &unk_23C8A1200);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C7798F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
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
  sub_23C5855B0(a1, v12, &qword_27E201690, &unk_23C8A1200);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E201690, &unk_23C8A1200);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C5855B0(v24, v32, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v32, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E201690, &unk_23C8A1200);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoSessionCoordinatorError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E201690, &unk_23C8A1200);
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
      sub_23C77A290(v3, a1, a2, a3);
    }

    else
    {
      sub_23C77A4C8(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_23C77A05C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C77A05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201690, &unk_23C8A1200);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201690, &unk_23C8A1200);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201690, &unk_23C8A1200);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201690, &unk_23C8A1200);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77A4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E201690, &unk_23C8A1200);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E201690, &unk_23C8A1200);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77A7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203560, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77A850(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202220, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);

  return sub_23C8711F4();
}

uint64_t sub_23C77A8BC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202220, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);

  return sub_23C871204();
}

uint64_t sub_23C77A958()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200568);
  __swift_project_value_buffer(v0, qword_27E200568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToExecute";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C77AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016A0, &qword_23C88DBD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v38 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v32 - v23;
  v39 = *(v6 + 56);
  v40 = v6 + 56;
  v39(&v32 - v23, 1, 1, v5);
  v35 = a1;
  sub_23C5855B0(a1, v12, &qword_27E2016A0, &qword_23C88DBD0);
  v33 = v14;
  v34 = v13;
  v25 = (*(v14 + 48))(v12, 1, v13);
  if (v25 == 1)
  {
    sub_23C585C34(v12, &qword_27E2016A0, &qword_23C88DBD0);
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    if ((*(v6 + 48))(v17, 1, v5) == 1)
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
      v26 = v37;
      sub_23C83155C(v17, v37, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v26, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v39(v24, 0, 1, v5);
    }
  }

  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v27 = v41;
  sub_23C8711A4();
  if (v27)
  {
    return sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
  }

  v29 = v38;
  sub_23C5855B0(v24, v38, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v6 + 48))(v29, 1, v5) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v29, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v30 = v36;
    sub_23C83155C(v29, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    v31 = v35;
    sub_23C585C34(v35, &qword_27E2016A0, &qword_23C88DBD0);
    sub_23C83155C(v30, v31, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    v39(v31, 0, 1, v5);
    return (*(v33 + 56))(v31, 0, 1, v34);
  }
}

uint64_t sub_23C77B144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016A0, &qword_23C88DBD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E2016A0, &qword_23C88DBD0);
  v19 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E2016A0, &qword_23C88DBD0);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E2016A0, &qword_23C88DBD0);
  v24 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t TranscriptProtoExecutorError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016A0, &qword_23C88DBD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E2016A0, &qword_23C88DBD0);
  v11 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    v12 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
    {
      result = sub_23C77C9B4(v3, a1, a2, a3, &qword_27E2016A0, &qword_23C88DBD0, type metadata accessor for TranscriptProtoExecutorErrorEnum, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_23C77C75C(v3, a1, a2, a3, &qword_27E2016A0, &qword_23C88DBD0, type metadata accessor for TranscriptProtoExecutorErrorEnum, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for TranscriptProtoExecutorError(0);
  return sub_23C870F14();
}

uint64_t sub_23C77B788(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203558, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77B828(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202238, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);

  return sub_23C8711F4();
}

uint64_t sub_23C77B894(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202238, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);

  return sub_23C871204();
}

uint64_t sub_23C77B930()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200580);
  __swift_project_value_buffer(v0, qword_27E200580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToPlan";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C77BB5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C77BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016B0, &unk_23C8A1210);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v38 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v32 - v23;
  v39 = *(v6 + 56);
  v40 = v6 + 56;
  v39(&v32 - v23, 1, 1, v5);
  v35 = a1;
  sub_23C5855B0(a1, v12, &qword_27E2016B0, &unk_23C8A1210);
  v33 = v14;
  v34 = v13;
  v25 = (*(v14 + 48))(v12, 1, v13);
  if (v25 == 1)
  {
    sub_23C585C34(v12, &qword_27E2016B0, &unk_23C8A1210);
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if ((*(v6 + 48))(v17, 1, v5) == 1)
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
      v26 = v37;
      sub_23C83155C(v17, v37, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v26, v24, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v39(v24, 0, 1, v5);
    }
  }

  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
  v27 = v41;
  sub_23C8711A4();
  if (v27)
  {
    return sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
  }

  v29 = v38;
  sub_23C5855B0(v24, v38, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v6 + 48))(v29, 1, v5) == 1)
  {
    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v29, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v30 = v36;
    sub_23C83155C(v29, v36, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203B08, &qword_23C8A0D28);
    v31 = v35;
    sub_23C585C34(v35, &qword_27E2016B0, &unk_23C8A1210);
    sub_23C83155C(v30, v31, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    v39(v31, 0, 1, v5);
    return (*(v33 + 56))(v31, 0, 1, v34);
  }
}

uint64_t sub_23C77C1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016B0, &unk_23C8A1210);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = sub_23C870E84();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_23C5855B0(v15, v13, &qword_27E1FEBC8, &qword_23C889840);
  v18 = (*(v17 + 48))(v13, 1, v16);
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  if (v18 == 1)
  {
    return sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v26, v9, &qword_27E2016B0, &unk_23C8A1210);
  v19 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v9, 1, v19);
  sub_23C585C34(v9, &qword_27E2016B0, &unk_23C8A1210);
  if (v21 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  v23 = v26;
  sub_23C585C34(v26, &qword_27E2016B0, &unk_23C8A1210);
  v24 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  return (*(v20 + 56))(v23, 0, 1, v19);
}

uint64_t TranscriptProtoPlannerError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016B0, &unk_23C8A1210);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E2016B0, &unk_23C8A1210);
  v11 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    v12 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
    {
      result = sub_23C77C9B4(v3, a1, a2, a3, &qword_27E2016B0, &unk_23C8A1210, type metadata accessor for TranscriptProtoPlannerErrorEnum, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_23C77C75C(v3, a1, a2, a3, &qword_27E2016B0, &unk_23C8A1210, type metadata accessor for TranscriptProtoPlannerErrorEnum, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for TranscriptProtoPlannerError(0);
  return sub_23C870F14();
}

uint64_t sub_23C77C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v22 = a8;
  v23 = a3;
  v24 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v14, a5, a6);
  v19 = a7(0);
  if ((*(*(v19 - 8) + 48))(v14, 1, v19) == 1)
  {
    sub_23C585C34(v14, a5, a6);
    __break(1u);
  }

  else if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_23C83155C(v14, v18, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError, &protocol conformance descriptor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v18, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v14, v22);
  __break(1u);
  return result;
}

uint64_t sub_23C77C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v24[2] = a3;
  v24[5] = a4;
  v24[1] = a2;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v24 - v18;
  sub_23C5855B0(a1, v24 - v18, a5, a6);
  v20 = a7(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    result = sub_23C585C34(v19, a5, a6);
  }

  else
  {
    v21 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    v22 = (*(*(v21 - 8) + 48))(v19, 1, v21);
    result = sub_23C8315C4(v19, a8);
    if (v22 == 1)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v14 + 8))(v16, v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C77CCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203550, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77CD64(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202250, type metadata accessor for TranscriptProtoPlannerError, "YΘEܥiH");

  return sub_23C8711F4();
}

uint64_t sub_23C77CDD0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202250, type metadata accessor for TranscriptProtoPlannerError, "YΘEܥiH");

  return sub_23C871204();
}

uint64_t sub_23C77CE6C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200598);
  __swift_project_value_buffer(v0, qword_27E200598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "unsupported";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoActionRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          sub_23C77D7B4(v5, a1, a2, a3);
        }

        else if (result == 5)
        {
          sub_23C77DD70(v5, a1, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_23C745DD8(a1, v5, a2, a3, &qword_27E2016C0, &qword_23C88DBD8, type metadata accessor for TranscriptProtoActionRequirementEnum, 3u);
      }

      else if (result == 3)
      {
        sub_23C77D204(v5, a1, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C77D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C60, &qword_23C8A0E50);
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
  sub_23C5855B0(a1, v12, &qword_27E2016C0, &qword_23C88DBD8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2016C0, &qword_23C88DBD8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203C60, &qword_23C8A0E50);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoAppRequirement);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoAppRequirement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2022E0, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203C60, &qword_23C8A0E50);
  }

  sub_23C5855B0(v24, v32, &qword_27E203C60, &qword_23C8A0E50);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203C60, &qword_23C8A0E50);
    return sub_23C585C34(v32, &qword_27E203C60, &qword_23C8A0E50);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoAppRequirement);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203C60, &qword_23C8A0E50);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2016C0, &qword_23C88DBD8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoAppRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C77D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C68, &qword_23C8A0E58);
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
  sub_23C5855B0(a1, v12, &qword_27E2016C0, &qword_23C88DBD8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2016C0, &qword_23C88DBD8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203C68, &qword_23C8A0E58);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoPermissionRequirement);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoPermissionRequirement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2022F8, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203C68, &qword_23C8A0E58);
  }

  sub_23C5855B0(v24, v32, &qword_27E203C68, &qword_23C8A0E58);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203C68, &qword_23C8A0E58);
    return sub_23C585C34(v32, &qword_27E203C68, &qword_23C8A0E58);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoPermissionRequirement);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203C68, &qword_23C8A0E58);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2016C0, &qword_23C88DBD8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPermissionRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C77DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C70, &qword_23C8A0E60);
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
  sub_23C5855B0(a1, v12, &qword_27E2016C0, &qword_23C88DBD8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2016C0, &qword_23C88DBD8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E203C70, &qword_23C8A0E60);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202280, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203C70, &qword_23C8A0E60);
  }

  sub_23C5855B0(v24, v32, &qword_27E203C70, &qword_23C8A0E60);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203C70, &qword_23C8A0E60);
    return sub_23C585C34(v32, &qword_27E203C70, &qword_23C8A0E60);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203C70, &qword_23C8A0E60);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2016C0, &qword_23C88DBD8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoActionRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E2016C0, &qword_23C88DBD8);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_23C77E504(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_23C77EBBC(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_23C77E984(v3, a1, a2, a3);
    }

    else
    {
      sub_23C77E750(v3, a1, a2, a3);
    }

    result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  type metadata accessor for TranscriptProtoActionRequirement(0);
  return sub_23C870F14();
}

uint64_t sub_23C77E504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E2016C0, &qword_23C88DBD8);
  v12 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E2016C0, &qword_23C88DBD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (EnumCaseMultiPayload == 3)
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

uint64_t sub_23C77E750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoAppRequirement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2016C0, &qword_23C88DBD8);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2016C0, &qword_23C88DBD8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoAppRequirement);
    sub_23C8314AC(&qword_27E2022E0, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoAppRequirement);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77E984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2016C0, &qword_23C88DBD8);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2016C0, &qword_23C88DBD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoPermissionRequirement);
    sub_23C8314AC(&qword_27E2022F8, type metadata accessor for TranscriptProtoPermissionRequirement, &protocol conformance descriptor for TranscriptProtoPermissionRequirement);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoPermissionRequirement);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77EBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2016C0, &qword_23C88DBD8);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2016C0, &qword_23C88DBD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    sub_23C8314AC(&qword_27E202280, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemRequirementMessage);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77EEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203548, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77EF44(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202268, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);

  return sub_23C8711F4();
}

uint64_t sub_23C77EFB0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202268, type metadata accessor for TranscriptProtoActionRequirement, &protocol conformance descriptor for TranscriptProtoActionRequirement);

  return sub_23C871204();
}

uint64_t sub_23C77F04C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2005B0);
  __swift_project_value_buffer(v0, qword_27E2005B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceUnlockRequired";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemRequirementMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 5;
LABEL_5:
            sub_23C745DD8(v11, v12, v13, v14, &qword_27E2016D0, &unk_23C8A1220, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum, v15);
            break;
          case 5:
            sub_23C77F4F4(v5, a1, a2, a3);
            break;
          case 7:
            sub_23C77FAA4(v5, a1, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 2;
            goto LABEL_5;
          case 2:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 3;
            goto LABEL_5;
          case 3:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 4;
            goto LABEL_5;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C77F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C48, &qword_23C8A0E38);
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
  sub_23C5855B0(a1, v12, &qword_27E2016D0, &unk_23C8A1220);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2016D0, &unk_23C8A1220);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E203C48, &qword_23C8A0E38);
      v31 = v39;
      sub_23C83155C(v17, v39, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E202298, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203C48, &qword_23C8A0E38);
  }

  sub_23C5855B0(v24, v32, &qword_27E203C48, &qword_23C8A0E38);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203C48, &qword_23C8A0E38);
    return sub_23C585C34(v32, &qword_27E203C48, &qword_23C8A0E38);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v32, v40, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203C48, &qword_23C8A0E38);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2016D0, &unk_23C8A1220);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C77FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C50, &qword_23C8A0E40);
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
  sub_23C5855B0(a1, v12, &qword_27E2016D0, &unk_23C8A1220);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E2016D0, &unk_23C8A1220);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C83155C(v12, v19, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_23C83155C(v19, v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E203C50, &qword_23C8A0E40);
      v31 = v40;
      sub_23C83155C(v17, v40, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      sub_23C83155C(v31, v24, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C8315C4(v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C8314AC(&qword_27E2022B0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E203C50, &qword_23C8A0E40);
  }

  sub_23C5855B0(v24, v32, &qword_27E203C50, &qword_23C8A0E40);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E203C50, &qword_23C8A0E40);
    return sub_23C585C34(v32, &qword_27E203C50, &qword_23C8A0E40);
  }

  else
  {
    v35 = v39;
    sub_23C83155C(v32, v39, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E203C50, &qword_23C8A0E40);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E2016D0, &unk_23C8A1220);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t TranscriptProtoSystemRequirementMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E2016D0, &unk_23C8A1220);
  v11 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        result = sub_23C7B50D0(v3, a1, a2, a3, &qword_27E2016D0, &unk_23C8A1220, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
        if (v4)
        {
          return result;
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        result = sub_23C7802FC(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_23C780548(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          result = sub_23C7B4E9C(v3, a1, a2, a3, &qword_27E2016D0, &unk_23C8A1220, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
          if (v4)
          {
            return result;
          }

          goto LABEL_18;
        }

        sub_23C7809C8(v3, a1, a2, a3);
      }

      else
      {
        sub_23C780794(v3, a1, a2, a3);
      }

      result = sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      if (v4)
      {
        return result;
      }
    }
  }

LABEL_18:
  type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  return sub_23C870F14();
}

uint64_t sub_23C7802FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E2016D0, &unk_23C8A1220);
  v12 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E2016D0, &unk_23C8A1220);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 4)
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

uint64_t sub_23C780548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E2016D0, &unk_23C8A1220);
  v12 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E2016D0, &unk_23C8A1220);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 5)
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

uint64_t sub_23C780794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2016D0, &unk_23C8A1220);
  v11 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2016D0, &unk_23C8A1220);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_23C8314AC(&qword_27E202298, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7809C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E2016D0, &unk_23C8A1220);
  v11 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E2016D0, &unk_23C8A1220);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v7, v10, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    sub_23C8314AC(&qword_27E2022B0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);
    sub_23C871304();
    return sub_23C8315C4(v10, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  }

  result = sub_23C8315C4(v7, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C780CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203540, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C780D50(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202280, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);

  return sub_23C8711F4();
}

uint64_t sub_23C780DBC(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202280, type metadata accessor for TranscriptProtoSystemRequirementMessage, &protocol conformance descriptor for TranscriptProtoSystemRequirementMessage);

  return sub_23C871204();
}

uint64_t sub_23C780F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203538, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C780FF8(uint64_t a1)
{
  sub_23C8314AC(&qword_27E202298, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C781064(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E202298, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_23C871204();
}

uint64_t sub_23C7811D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C781260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C30, &qword_23C8A0E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E203C30, &qword_23C8A0E20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E203C30, &qword_23C8A0E20);
  }

  sub_23C83155C(v7, v11, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_23C8314AC(&qword_27E2022C8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_23C871304();
  return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
}

uint64_t sub_23C781520(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203530, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7815C0(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2022B0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C78162C(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2022B0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_23C871204();
}

uint64_t sub_23C7816C8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2005F8);
  __swift_project_value_buffer(v0, qword_27E2005F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alternativeAuthenticationPermitted";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originDeviceAuthenticationRequired";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C781958(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_23C781958(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t sub_23C781958(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v20 = a2;
  sub_23C5855B0(v12, v10, &qword_27E1FEBC8, &qword_23C889840);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_23C585C34(v10, &qword_27E1FEBC8, &qword_23C889840);
  if (v15 == 1)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v16 = v20;
  if (*v20 != 2)
  {
    sub_23C871054();
  }

  v17 = v21;
  result = sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  *v16 = v17;
  return result;
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (v5 == 2)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    result = sub_23C781D90(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_2:
      type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
      return sub_23C870F14();
    }
  }

  else
  {
    result = sub_23C781C3C(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C781C3C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10 == 2 || (v10 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23C781D90(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10 == 2 || (v10 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23C781FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203528, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C782044(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2022C8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_23C8711F4();
}

uint64_t sub_23C7820B0(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2022C8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_23C871204();
}

uint64_t sub_23C78214C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200610);
  __swift_project_value_buffer(v0, qword_27E200610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "signInRequired";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoAppRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
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
        sub_23C78243C(v9, v10, v11, v12, v13);
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

uint64_t sub_23C78243C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v20 = a2;
  sub_23C5855B0(v12, v10, &qword_27E1FEBC8, &qword_23C889840);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_23C585C34(v10, &qword_27E1FEBC8, &qword_23C889840);
  if (v15 == 1)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v16 = v20;
  if (*v20 != 3)
  {
    sub_23C871054();
  }

  v17 = v21;
  result = sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
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

    result = sub_23C7829DC(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!*v3)
    {
      result = sub_23C782740(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }

      goto LABEL_7;
    }

    result = sub_23C78288C(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_7:
      type metadata accessor for TranscriptProtoAppRequirement(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C782740(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    __break(1u);
  }

  else
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23C78288C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C7829DC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C782BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203520, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C782C8C(uint64_t a1)
{
  sub_23C8314AC(&qword_27E2022E0, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);

  return sub_23C8711F4();
}

uint64_t sub_23C782CF8(uint64_t a1, uint64_t a2)
{
  sub_23C8314AC(&qword_27E2022E0, type metadata accessor for TranscriptProtoAppRequirement, &protocol conformance descriptor for TranscriptProtoAppRequirement);

  return sub_23C871204();
}

uint64_t sub_23C782D94()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200628);
  __swift_project_value_buffer(v0, qword_27E200628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C87D6F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriPermissionRequired";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t TranscriptProtoPermissionRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      sub_23C78327C(v11, v12, v13, v14, v15);
LABEL_21:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C78327C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v20 = a2;
  sub_23C5855B0(v12, v10, &qword_27E1FEBC8, &qword_23C889840);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_23C585C34(v10, &qword_27E1FEBC8, &qword_23C889840);
  if (v15 == 1)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v16 = v20;
  if (*v20 != 8)
  {
    sub_23C871054();
  }

  v17 = v21;
  result = sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  *v16 = v17;
  return result;
}