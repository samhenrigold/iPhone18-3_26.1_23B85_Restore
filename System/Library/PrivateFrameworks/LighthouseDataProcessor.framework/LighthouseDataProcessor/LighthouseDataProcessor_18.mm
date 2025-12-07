uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_20E322540(), !v4))
    {
      if (*(v3 + 32) != 1 || (result = sub_20E3224C0(), !v4))
      {
        type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2A9F68@<X0>(uint64_t a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_20E2A9FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC78, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AA09C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C568, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_20E322470();
}

uint64_t sub_20E2AA108(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C568, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_20E322480();
}

uint64_t sub_20E2AA254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
      sub_20E2FB9A4(a5, a6, a7);
      sub_20E322420();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoToolSummaryString.Component(0), sub_20E2FB9A4(&qword_27C86BC08, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component), result = sub_20E322570(), !v4))
  {
    type metadata accessor for ToolKitProtoToolSummaryString(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AA4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC70, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AA574(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C580, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return sub_20E322470();
}

uint64_t sub_20E2AA5E0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C580, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return sub_20E322480();
}

uint64_t sub_20E2AA674()
{
  result = MEMORY[0x20F32BF40](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);
  qword_27C86B120 = 0xD000000000000019;
  *algn_27C86B128 = 0x800000020E361770;
  return result;
}

uint64_t sub_20E2AA70C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B130);
  __swift_project_value_buffer(v0, qword_27C86B130);
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
  *v10 = "parameter";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolSummaryString.Component.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_20E2AA9B0(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_20E2AA9B0(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t sub_20E2AA9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_20E3223D0();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 16) == 255)
    {
      v9 = -1;
    }

    else
    {
      sub_20E3222C0();
      v9 = *(a2 + 16);
    }

    v10 = *a2;
    v11 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v12;
    *(a2 + 16) = a5;
    return sub_20E195924(v10, v11, v9);
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if (v5 == 255)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    result = sub_20E2AAB64(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = sub_20E2AAB18(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_4:
    type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AAB18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_20E322540();
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2AAB64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) != 0)
  {
    return sub_20E322540();
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2AABFC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E2AAC80(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC68, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AAD20(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BC08, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return sub_20E322470();
}

uint64_t sub_20E2AAD8C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BC08, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return sub_20E322480();
}

uint64_t sub_20E2AAE28()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B148);
  __swift_project_value_buffer(v0, qword_27C86B148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visibleParameterKeys";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "invisibleParameterKeys";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "valueConstraints";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolInvocationSignature.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_20E2AB114(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_20E3223A0();
    }
  }

  return result;
}

uint64_t sub_20E2AB114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  sub_20E2FB9A4(&qword_27C86BC20, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  sub_20E2FB9A4(&qword_27C86BC28, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  return sub_20E322290();
}

uint64_t ToolKitProtoToolInvocationSignature.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_20E322520(), !v4))
  {
    if (!*(v3[1] + 16) || (result = sub_20E322520(), !v4))
    {
      if (!*(v3[2] + 16) || (sub_20E322170(), type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0), sub_20E2FB9A4(&qword_27C86BC20, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations), sub_20E2FB9A4(&qword_27C86BC28, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations), result = sub_20E322490(), !v4))
      {
        type metadata accessor for ToolKitProtoToolInvocationSignature(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

unint64_t sub_20E2AB3DC@<X0>(void *a2@<X8>)
{
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v3;
  result = sub_20E049EA4(v3);
  a2[2] = result;
  return result;
}

uint64_t sub_20E2AB468(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC60, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AB508(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return sub_20E322470();
}

uint64_t sub_20E2AB574(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return sub_20E322480();
}

uint64_t sub_20E2AB5F4()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E3626B0);
  qword_27C86B160 = 0xD00000000000001FLL;
  *algn_27C86B168 = 0x800000020E361790;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.ListOfRelations.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0), sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation), result = sub_20E322570(), !v4))
  {
    type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AB8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC58, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AB990(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BC20, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_20E322470();
}

uint64_t sub_20E2AB9FC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BC20, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_20E322480();
}

uint64_t sub_20E2ABAAC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B188);
  __swift_project_value_buffer(v0, qword_27C86B188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phrases";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedResult";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "negativePhrases";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoSampleInvocationDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_20E3223D0();
        break;
      case 1:
LABEL_8:
        sub_20E3223A0();
        break;
    }
  }
}

uint64_t ToolKitProtoSampleInvocationDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  if (!*(*v3 + 16) || (result = sub_20E322520(), !v4))
  {
    if (v3[3])
    {
      result = sub_20E322540();
    }

    if (!v4)
    {
      if (*(v3[1] + 16))
      {
        sub_20E322520();
      }

      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2ABEB0@<X0>(void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  return result;
}

uint64_t sub_20E2ABF38(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC50, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2ABFD8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2AC044(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2AC0E0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B1A0);
  __swift_project_value_buffer(v0, qword_27C86B1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "patch";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAssistantSchemaVersion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_20E322410();
    }
  }

  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_20E322560(), !v4))
  {
    if (!v3[1] || (result = sub_20E322560(), !v4))
    {
      if (!v3[2] || (result = sub_20E322560(), !v4))
      {
        type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2AC4C8@<X0>(void *a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_20E2AC548(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC48, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AC5E8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C5E0, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return sub_20E322470();
}

uint64_t sub_20E2AC654(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C5E0, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return sub_20E322480();
}

uint64_t sub_20E2AC6F0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B1B8);
  __swift_project_value_buffer(v0, qword_27C86B1B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2AC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  sub_20E2FB9A4(&qword_27C86C5E0, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);
  return sub_20E322430();
}

uint64_t sub_20E2ACA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D18, &qword_20E346338);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869D18, &qword_20E346338);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D18, &qword_20E346338);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_20E2FB9A4(&qword_27C86C5E0, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
}

uint64_t sub_20E2ACCEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC40, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2ACD8C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_20E322470();
}

uint64_t sub_20E2ACDF8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_20E322480();
}

uint64_t sub_20E2ACE94()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B1D0);
  __swift_project_value_buffer(v0, qword_27C86B1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "sampleInvocations";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_20E2AD318(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          sub_20E3223E0();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
            sub_20E3223D0();
            goto LABEL_5;
          case 4:
            v11 = v4;
            type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
            sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
            break;
          case 5:
            v11 = v4;
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
            break;
          default:
            goto LABEL_5;
        }

        v4 = v11;
        sub_20E322420();
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2AD318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_20E322430();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E2AD58C(v3, a1, a2, a3);
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
      sub_20E322540();
    }

    sub_20E2AD7A8(v3, a1, a2, a3);
    if (*(v3[2] + 16))
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
      sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
      sub_20E322570();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
      sub_20E322570();
    }

    type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AD58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C869B00, &unk_20E346240);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869B00, &unk_20E346240);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_20E2AD7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2AD86C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 32)];
  *v6 = 0;
  *(v6 + 1) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v8 = MEMORY[0x277D84F90];
  *(a2 + 2) = MEMORY[0x277D84F90];
  *(a2 + 3) = v8;
  return result;
}

uint64_t sub_20E2AD950(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC38, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AD9F0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C608, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2ADA5C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C608, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2ADAF8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B1E8);
  __swift_project_value_buffer(v0, qword_27C86B1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2ADD38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_20E3222B0();
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
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2ADDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFD0, &qword_20E3563A0);
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
  sub_20E0486F4(a1, v12, &qword_27C869D20, &unk_20E346340);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D20, &unk_20E346340);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86CFD0, &qword_20E3563A0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C638, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFD0, &qword_20E3563A0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFD0, &qword_20E3563A0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFD0, &qword_20E3563A0);
    return sub_20E04875C(v32, &qword_27C86CFD0, &qword_20E3563A0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFD0, &qword_20E3563A0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D20, &unk_20E346340);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2AE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFD8, &qword_20E3563A8);
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
  sub_20E0486F4(a1, v12, &qword_27C869D20, &unk_20E346340);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D20, &unk_20E346340);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CFD8, &qword_20E3563A8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C650, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFD8, &qword_20E3563A8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFD8, &qword_20E3563A8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFD8, &qword_20E3563A8);
    return sub_20E04875C(v32, &qword_27C86CFD8, &qword_20E3563A8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFD8, &qword_20E3563A8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D20, &unk_20E346340);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C869D20, &unk_20E346340);
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2AED24(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2AEAEC(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AEAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D20, &unk_20E346340);
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D20, &unk_20E346340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_20E2FB9A4(&qword_27C86C638, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2AED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D20, &unk_20E346340);
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D20, &unk_20E346340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_20E2FB9A4(&qword_27C86C650, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2AF00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC30, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AF0AC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C620, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2AF118(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C620, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2AF1E4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B210);
  __swift_project_value_buffer(v0, qword_27C86B210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E2AF608(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
          sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
          sub_20E322420();
          break;
        case 1:
          sub_20E2AF554(a1, v5, a2, a3);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2AF554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E2AF608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E2AF7D4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_20E322570();
    }

    sub_20E2AF9F0(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AF7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869B00, &unk_20E346240);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869B00, &unk_20E346240);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_20E2AF9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868A20, &qword_20E345F10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E2AFCAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC28, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AFD4C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C638, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_20E322470();
}

uint64_t sub_20E2AFDB8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C638, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_20E322480();
}

uint64_t sub_20E2AFEA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x800000020E361860;
  return result;
}

uint64_t sub_20E2AFF38()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B238);
  __swift_project_value_buffer(v0, qword_27C86B238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cases";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E2B035C(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
          sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
          sub_20E322420();
          break;
        case 1:
          sub_20E2B02A8(a1, v5, a2, a3);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2B02A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E2B035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E2B0528(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      sub_20E322570();
    }

    sub_20E2B0744(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2B0528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869B00, &unk_20E346240);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869B00, &unk_20E346240);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_20E2B0744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C868A20, &qword_20E345F10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E2B09A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2B0ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2B0B6C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C650, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_20E322470();
}

uint64_t sub_20E2B0BD8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C650, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_20E322480();
}

uint64_t sub_20E2B0CB4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B250);
  __swift_project_value_buffer(v0, qword_27C86B250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_20E34A220;
  v4 = v126 + v3;
  v5 = v126 + v3 + v1[14];
  *(v126 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v126 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "undoable";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v126 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sessionStarting";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v126 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "urlRepresentable";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v126 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "conditionallyEnabled";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v126 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "foregroundContinuable";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v126 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "changeBinarySetting";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v126 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "requiresMdmChecks";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v126 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "cut";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v126 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "copy";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v8();
  v25 = (v126 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "paste";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v126 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cancel";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  v29 = (v126 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "resize";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v8();
  v31 = (v126 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "scroll";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v8();
  v33 = (v126 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v8();
  v35 = (v126 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "zoom";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v126 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "closeEntity";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  v38 = (v126 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "createEntity";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v8();
  v40 = (v126 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "cutEntity";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v126 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "deleteEntity";
  *(v43 + 1) = 12;
  v43[16] = 2;
  v8();
  v44 = (v126 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "duplicateEntity";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  v46 = (v126 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "favoriteEntity";
  *(v47 + 1) = 14;
  v47[16] = 2;
  v8();
  v48 = (v126 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "openEntity";
  *(v49 + 1) = 10;
  v49[16] = 2;
  v8();
  v50 = (v126 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "previewEntity";
  *(v51 + 1) = 13;
  v51[16] = 2;
  v8();
  v52 = (v126 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "saveEntity";
  *(v53 + 1) = 10;
  v53[16] = 2;
  v8();
  v54 = (v126 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "putEntityInContainer";
  *(v55 + 1) = 20;
  v55[16] = 2;
  v8();
  v56 = (v126 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "playVideo";
  *(v57 + 1) = 9;
  v57[16] = 2;
  v8();
  v58 = (v126 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "audioStarting";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v126 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "audioRecording";
  *(v61 + 1) = 14;
  v61[16] = 2;
  v8();
  v62 = (v126 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "pushToTalkTransmission";
  *(v63 + 1) = 22;
  v63[16] = 2;
  v8();
  v64 = (v126 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "startDive";
  *(v65 + 1) = 9;
  v65[16] = 2;
  v8();
  v66 = (v126 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "startWorkout";
  *(v67 + 1) = 12;
  v67[16] = 2;
  v8();
  v68 = v126 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "pauseWorkout";
  *(v68 + 8) = 12;
  *(v68 + 16) = 2;
  v8();
  v69 = (v126 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "resumeWorkout";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v8();
  v71 = (v126 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "enterMarkup";
  *(v72 + 1) = 11;
  v72[16] = 2;
  v8();
  v73 = (v126 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "exitMarkup";
  *(v74 + 1) = 10;
  v74[16] = 2;
  v8();
  v75 = (v126 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "focusConfiguration";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v8();
  v77 = (v126 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "widgetConfiguration";
  *(v78 + 1) = 19;
  v78[16] = 2;
  v8();
  v79 = (v126 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "search";
  *(v80 + 1) = 6;
  v80[16] = 2;
  v8();
  v81 = (v126 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "showSearchResultsInApp";
  *(v82 + 1) = 22;
  v82[16] = 2;
  v8();
  v83 = (v126 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "showStringSearchResultsInApp";
  *(v84 + 1) = 28;
  v84[16] = 2;
  v8();
  v85 = (v126 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 42;
  *v86 = "showInAppSearchResults";
  *(v86 + 1) = 22;
  v86[16] = 2;
  v8();
  v87 = (v126 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 43;
  *v88 = "showInAppStringSearchResults";
  *(v88 + 1) = 28;
  v88[16] = 2;
  v8();
  v89 = (v126 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 44;
  *v90 = "moveSpatial";
  *(v90 + 1) = 11;
  v90[16] = 2;
  v8();
  v91 = (v126 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 45;
  *v92 = "navigateSequentially";
  *(v92 + 1) = 20;
  v92[16] = 2;
  v8();
  v93 = (v126 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 46;
  *v94 = "sting";
  *(v94 + 1) = 5;
  v94[16] = 2;
  v8();
  v95 = (v126 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 47;
  *v96 = "toggle";
  *(v96 + 1) = 6;
  v96[16] = 2;
  v8();
  v97 = (v126 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 48;
  *v98 = "cameraCapture";
  *(v98 + 1) = 13;
  v98[16] = 2;
  v8();
  v99 = (v126 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 49;
  *v100 = "staccatoLongPress";
  *(v100 + 1) = 17;
  v100[16] = 2;
  v8();
  v101 = (v126 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "entityUpdating";
  *(v102 + 1) = 14;
  v102[16] = 2;
  v8();
  v103 = (v126 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 51;
  *v104 = "propertyUpdater";
  *(v104 + 1) = 15;
  v104[16] = 2;
  v8();
  v105 = (v126 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 52;
  *v106 = "sendMail";
  *(v106 + 1) = 8;
  v106[16] = 2;
  v8();
  v107 = (v126 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 53;
  *v108 = "setMailMessageIsRead";
  *(v108 + 1) = 20;
  v108[16] = 2;
  v8();
  v109 = (v126 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 54;
  *v110 = "siriKitIntent";
  *(v110 + 1) = 13;
  v110[16] = 2;
  v8();
  v111 = (v126 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 55;
  *v112 = "intentSideEffect";
  *(v112 + 1) = 16;
  v112[16] = 2;
  v8();
  v113 = (v126 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 56;
  *v114 = "assistantSchema";
  *(v114 + 1) = 15;
  v114[16] = 2;
  v8();
  v115 = (v126 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 57;
  *v116 = "rewriteWritingTool";
  *(v116 + 1) = 18;
  v116[16] = 2;
  v8();
  v117 = (v126 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 58;
  *v118 = "proofreadWritingTool";
  *(v118 + 1) = 20;
  v118[16] = 2;
  v8();
  v119 = (v126 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 59;
  *v120 = "assistantInvocable";
  *(v120 + 1) = 18;
  v120[16] = 2;
  v8();
  v121 = (v126 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 60;
  *v122 = "appIntent";
  *(v122 + 1) = 9;
  v122[16] = 2;
  v8();
  v123 = (v126 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 61;
  *v124 = "systemFrameworkIntent";
  *(v124 + 1) = 21;
  v124[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoSystemToolProtocol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v15 = 9;
          goto LABEL_65;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_65;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_65;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_65;
        case 5:
          sub_20E2B2A74(v5, a1, a2, a3);
          break;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_65;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_65;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
          goto LABEL_65;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
          goto LABEL_65;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 17;
          goto LABEL_65;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 18;
          goto LABEL_65;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 19;
          goto LABEL_65;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 20;
          goto LABEL_65;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 21;
          goto LABEL_65;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 22;
          goto LABEL_65;
        case 16:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 23;
          goto LABEL_65;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 24;
          goto LABEL_65;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 25;
          goto LABEL_65;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 26;
          goto LABEL_65;
        case 20:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 27;
          goto LABEL_65;
        case 21:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 28;
          goto LABEL_65;
        case 22:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 29;
          goto LABEL_65;
        case 23:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 30;
          goto LABEL_65;
        case 24:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 31;
          goto LABEL_65;
        case 25:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 32;
          goto LABEL_65;
        case 26:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 33;
          goto LABEL_65;
        case 27:
          sub_20E2B3024(v5, a1, a2, a3);
          break;
        case 28:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 34;
          goto LABEL_65;
        case 29:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 35;
          goto LABEL_65;
        case 30:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 36;
          goto LABEL_65;
        case 31:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 37;
          goto LABEL_65;
        case 32:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 38;
          goto LABEL_65;
        case 33:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 39;
          goto LABEL_65;
        case 34:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 40;
          goto LABEL_65;
        case 35:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 41;
          goto LABEL_65;
        case 36:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 42;
          goto LABEL_65;
        case 37:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 43;
          goto LABEL_65;
        case 38:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 44;
          goto LABEL_65;
        case 39:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 45;
          goto LABEL_65;
        case 40:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 46;
          goto LABEL_65;
        case 41:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 47;
          goto LABEL_65;
        case 42:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 48;
          goto LABEL_65;
        case 43:
          sub_20E2B35E0(v5, a1, a2, a3);
          break;
        case 44:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 49;
          goto LABEL_65;
        case 45:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 50;
          goto LABEL_65;
        case 46:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 51;
          goto LABEL_65;
        case 47:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 52;
          goto LABEL_65;
        case 48:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 53;
          goto LABEL_65;
        case 49:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 54;
          goto LABEL_65;
        case 50:
          sub_20E2B3B9C(v5, a1, a2, a3);
          break;
        case 51:
          sub_20E2B4158(v5, a1, a2, a3);
          break;
        case 52:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 55;
          goto LABEL_65;
        case 53:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 56;
          goto LABEL_65;
        case 54:
          sub_20E2B4714(v5, a1, a2, a3);
          break;
        case 55:
          sub_20E2B4CD0(v5, a1, a2, a3);
          break;
        case 56:
          sub_20E2B528C(v5, a1, a2, a3);
          break;
        case 57:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 57;
          goto LABEL_65;
        case 58:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 58;
          goto LABEL_65;
        case 59:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 59;
          goto LABEL_65;
        case 60:
          sub_20E2B5848(v5, a1, a2, a3);
          break;
        case 61:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 60;
LABEL_65:
          sub_20E257248(v11, v12, v13, v14, &qword_27C8688D8, &qword_20E33B888, type metadata accessor for ToolKitProtoSystemToolProtocolKind, v15);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2B2A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF80, &qword_20E356350);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86CF80, &qword_20E356350);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C678, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF80, &qword_20E356350);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF80, &qword_20E356350);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF80, &qword_20E356350);
    return sub_20E04875C(v32, &qword_27C86CF80, &qword_20E356350);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF80, &qword_20E356350);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2B3024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF88, &qword_20E356358);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CF88, &qword_20E356358);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C690, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF88, &qword_20E356358);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF88, &qword_20E356358);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF88, &qword_20E356358);
    return sub_20E04875C(v32, &qword_27C86CF88, &qword_20E356358);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF88, &qword_20E356358);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2B35E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF90, &qword_20E356360);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C86CF90, &qword_20E356360);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C6A8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF90, &qword_20E356360);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF90, &qword_20E356360);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF90, &qword_20E356360);
    return sub_20E04875C(v32, &qword_27C86CF90, &qword_20E356360);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF90, &qword_20E356360);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2B3B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF98, &qword_20E356368);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C86CF98, &qword_20E356368);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C6C0, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF98, &qword_20E356368);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF98, &qword_20E356368);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF98, &qword_20E356368);
    return sub_20E04875C(v32, &qword_27C86CF98, &qword_20E356368);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF98, &qword_20E356368);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2B4158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFA0, &qword_20E356370);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C86CFA0, &qword_20E356370);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C6D8, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFA0, &qword_20E356370);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFA0, &qword_20E356370);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFA0, &qword_20E356370);
    return sub_20E04875C(v32, &qword_27C86CFA0, &qword_20E356370);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFA0, &qword_20E356370);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2B4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFA8, &qword_20E356378);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C86CFA8, &qword_20E356378);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C6F0, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFA8, &qword_20E356378);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFA8, &qword_20E356378);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFA8, &qword_20E356378);
    return sub_20E04875C(v32, &qword_27C86CFA8, &qword_20E356378);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFA8, &qword_20E356378);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2B4CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFB0, &qword_20E356380);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v24, &qword_27C86CFB0, &qword_20E356380);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C708, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFB0, &qword_20E356380);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFB0, &qword_20E356380);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFB0, &qword_20E356380);
    return sub_20E04875C(v32, &qword_27C86CFB0, &qword_20E356380);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFB0, &qword_20E356380);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2B528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFB8, &qword_20E356388);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v24, &qword_27C86CFB8, &qword_20E356388);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C720, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFB8, &qword_20E356388);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFB8, &qword_20E356388);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFB8, &qword_20E356388);
    return sub_20E04875C(v32, &qword_27C86CFB8, &qword_20E356388);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFB8, &qword_20E356388);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2B5848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFC0, &qword_20E356390);
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
  sub_20E0486F4(a1, v12, &qword_27C8688D8, &qword_20E33B888);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C8688D8, &qword_20E33B888);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v24, &qword_27C86CFC0, &qword_20E356390);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C738, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CFC0, &qword_20E356390);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CFC0, &qword_20E356390);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CFC0, &qword_20E356390);
    return sub_20E04875C(v32, &qword_27C86CFC0, &qword_20E356390);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CFC0, &qword_20E356390);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoSystemToolProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E2BA2D4(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

        goto LABEL_56;
      case 2u:
        sub_20E2BC780(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 3u:
        sub_20E2BD780(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 4u:
        sub_20E2BD9B8(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

        goto LABEL_56;
      case 5u:
        sub_20E2BE088(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 6u:
        sub_20E2BE2C0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 7u:
        sub_20E2BE4F8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 8u:
        sub_20E2BEE14(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 9u:
        result = sub_20E2B6734(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_20E2B6980(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_20E2B6BCC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_20E2B6E18(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_20E2B7298(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E2B74E4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E2B7730(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x10u:
        result = sub_20E2B797C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        result = sub_20E2B7BC8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x12u:
        result = sub_20E2B7E14(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x13u:
        result = sub_20E2B8060(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x14u:
        result = sub_20E2B82AC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x15u:
        result = sub_20E2B84F8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x16u:
        result = sub_20E2B8744(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x17u:
        result = sub_20E2B8990(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x18u:
        result = sub_20E2B8BDC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x19u:
        result = sub_20E2B8E28(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Au:
        result = sub_20E2B9074(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Bu:
        result = sub_20E2B92C0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Cu:
        result = sub_20E2B950C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Du:
        result = sub_20E2B9758(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Eu:
        result = sub_20E2B99A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Fu:
        result = sub_20E2B9BF0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x20u:
        result = sub_20E2B9E3C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x21u:
        result = sub_20E2BA088(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x22u:
        result = sub_20E2BA50C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x23u:
        result = sub_20E2BA758(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x24u:
        result = sub_20E2BA9A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x25u:
        result = sub_20E2BABF0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x26u:
        result = sub_20E2BAE3C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x27u:
        result = sub_20E2BB088(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x28u:
        result = sub_20E2BB2D4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x29u:
        result = sub_20E2BB520(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Au:
        result = sub_20E2BB76C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Bu:
        result = sub_20E2BB9B8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Cu:
        result = sub_20E2BBC04(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Du:
        result = sub_20E2BBE50(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Eu:
        result = sub_20E2BC09C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Fu:
        result = sub_20E2BC2E8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x30u:
        result = sub_20E2BC534(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x31u:
        result = sub_20E2BC9B8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x32u:
        result = sub_20E2BCC04(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x33u:
        result = sub_20E2BCE50(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x34u:
        result = sub_20E2BD09C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x35u:
        result = sub_20E2BD2E8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x36u:
        result = sub_20E2BD534(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x37u:
        result = sub_20E2BDBF0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x38u:
        result = sub_20E2BDE3C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x39u:
        result = sub_20E2BE730(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Au:
        result = sub_20E2BE97C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Bu:
        result = sub_20E2BEBC8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Cu:
        result = sub_20E2BF04C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E2B7064(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

LABEL_56:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        break;
    }
  }

  type metadata accessor for ToolKitProtoSystemToolProtocol(0);
  return sub_20E3221A0();
}

uint64_t sub_20E2B6734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 9)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B6980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 10)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B6BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 11)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B6E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 12)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B7064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    sub_20E2FB9A4(&qword_27C86C678, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2B7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B74E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 16)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B7BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 17)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 18)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 19)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B82AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 20)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B84F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 21)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 22)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 23)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 24)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B8E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 25)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B9074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 26)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B92C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 27)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 28)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 29)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B99A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 30)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B9BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 31)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2B9E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 32)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BA088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 33)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BA2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    sub_20E2FB9A4(&qword_27C86C690, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BA50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 34)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BA758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 35)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 36)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BABF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 37)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BAE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 38)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 39)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 40)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 41)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 42)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BB9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 43)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BBC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 44)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BBE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 45)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BC09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 46)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BC2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 47)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 48)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    sub_20E2FB9A4(&qword_27C86C6A8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 49)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 50)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BCE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 51)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BD09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 52)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BD2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 53)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BD534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 54)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BD780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    sub_20E2FB9A4(&qword_27C86C6C0, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BD9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    sub_20E2FB9A4(&qword_27C86C6D8, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BDBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 55)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BDE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 56)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BE088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    sub_20E2FB9A4(&qword_27C86C6F0, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BE2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_20E2FB9A4(&qword_27C86C708, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BE4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    sub_20E2FB9A4(&qword_27C86C720, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BE730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 57)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BE97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 58)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BEBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 59)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BEE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C8688D8, &qword_20E33B888);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C8688D8, &qword_20E33B888);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    sub_20E2FB9A4(&qword_27C86C738, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2BF04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C8688D8, &qword_20E33B888);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C8688D8, &qword_20E33B888);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 60)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2BF348(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC18, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2BF3E8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BCE0, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return sub_20E322470();
}

uint64_t sub_20E2BF454(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BCE0, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return sub_20E322480();
}

uint64_t sub_20E2BF4D4()
{
  result = MEMORY[0x20F32BF40](0xD000000000000015, 0x800000020E362230);
  qword_27C86B268 = 0xD00000000000001ALL;
  qword_27C86B270 = 0x800000020E361890;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_20E3224C0(), !v4))
  {
    type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2BF76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC10, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2BF80C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C678, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_20E322470();
}

uint64_t sub_20E2BF878(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C678, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_20E322480();
}

uint64_t sub_20E2BF8F4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2BFAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC08, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2BFB90(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C690, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_20E322470();
}

uint64_t sub_20E2BFBFC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C690, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_20E322480();
}

uint64_t sub_20E2BFC78()
{
  result = MEMORY[0x20F32BF40](0xD00000000000001DLL, 0x800000020E362200);
  qword_27C86B2B8 = 0xD00000000000001ALL;
  qword_27C86B2C0 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2BFD78(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_20E3223A0();
    }
  }

  return result;
}

uint64_t sub_20E2BFE14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_20E322520(), !v5))
  {
    (a4)(0, a2, a3);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2BFF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC00, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2BFFD4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C6A8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_20E322470();
}

uint64_t sub_20E2C0040(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C6A8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_20E322480();
}

uint64_t sub_20E2C024C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBF8, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C02EC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C6C0, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_20E322470();
}

uint64_t sub_20E2C0358(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C6C0, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_20E322480();
}

uint64_t sub_20E2C03D4()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E3621E0);
  qword_27C86B308 = 0xD00000000000001ALL;
  qword_27C86B310 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2C0474()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B318);
  __swift_project_value_buffer(v0, qword_27C86B318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityProperty";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C06E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v9 = v6[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_20E322540(), !v7))
  {
    v12 = v6[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v6[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_20E322540(), !v7))
    {
      a6(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2C0848(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBF0, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C08E8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C6D8, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_20E322470();
}

uint64_t sub_20E2C0954(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C6D8, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_20E322480();
}

uint64_t ToolKitProtoSystemToolProtocol.SiriKitIntent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E2C0BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBE8, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C0C5C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C6F0, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_20E322470();
}

uint64_t sub_20E2C0CC8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C6F0, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_20E322480();
}

uint64_t sub_20E2C0D44()
{
  result = MEMORY[0x20F32BF40](0xD000000000000011, 0x800000020E362190);
  qword_27C86B358 = 0xD00000000000001ALL;
  qword_27C86B360 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2C0DE0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B368);
  __swift_project_value_buffer(v0, qword_27C86B368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "stateChange";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E2C1340(a1, v5, a2, a3);
        break;
      case 2:
        sub_20E2C10EC(a1, v5, a2, a3, 0x100000001);
        break;
      case 1:
        sub_20E2C10EC(a1, v5, a2, a3, 0x100000000);
        break;
    }
  }

  return result;
}

uint64_t sub_20E2C10EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
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
  if ((*(v20 + 5) & 1) == 0)
  {
    sub_20E3222C0();
  }

  v17 = v21;
  result = sub_20E04875C(v12, &qword_27C867FE0, &qword_20E33B098);
  *v16 = v17;
  *(v16 + 4) = BYTE4(v17);
  *(v16 + 5) = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 5))
  {
    goto LABEL_2;
  }

  v7 = *v3;
  if (((v7 | (*(v3 + 4) << 32)) & 0x100000000) != 0)
  {
    if (v7)
    {
      result = sub_20E2C1604(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_20E2C14A4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_20E322500();
    if (!v4)
    {
LABEL_2:
      type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2C14A4(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) != 0 || (v10 = *a1, ((v10 | (*(a1 + 4) << 32)) & 0x100000000) == 0) || v10)
  {
    __break(1u);
  }

  else
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_20E2C1604(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) == 0 && (v10 = *a1, ((v10 | (*(a1 + 4) << 32)) & 0x100000000) != 0) && v10)
  {
    sub_20E322100();
    sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_20E3224D0();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2C17AC@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 4) = 256;
  *a2 = 0;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E2C1830(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBE0, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C18D0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C708, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_20E322470();
}

uint64_t sub_20E2C193C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C708, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_20E322480();
}

uint64_t sub_20E2C19BC()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E362160);
  qword_27C86B380 = 0xD00000000000001ALL;
  *algn_27C86B388 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2C1BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBD8, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C1C74(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C720, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_20E322470();
}

uint64_t sub_20E2C1CE0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C720, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_20E322480();
}

uint64_t sub_20E2C1D88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x800000020E361890;
  return result;
}

uint64_t sub_20E2C1F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBD0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C1FC8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C738, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_20E322470();
}

uint64_t sub_20E2C2034(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C738, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_20E322480();
}

uint64_t ToolKitProtoToolDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_20E3222B0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_20E2C21D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBC8, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C2274(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C750, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2C22E0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C750, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2C235C()
{
  result = MEMORY[0x20F32BF40](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27C86B3E8 = 0xD000000000000016;
  qword_27C86B3F0 = 0x800000020E3618B0;
  return result;
}

uint64_t sub_20E2C23F4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B3F8);
  __swift_project_value_buffer(v0, qword_27C86B3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20E34A230;
  v4 = v47 + v3;
  v5 = v47 + v3 + v1[14];
  *(v47 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "toolType";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameters";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "outputType";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "outputResultName";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sourceApplication";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "descriptionSummary";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "categories";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "searchKeywords";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "deprecationDefinition";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "requirements";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "flags";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "authenticationPolicy";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "sampleInvocations";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "systemProtocols";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "customIcon";
  *(v37 + 8) = 10;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "hiddenParameters";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "sourceContainer";
  *(v41 + 1) = 15;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "attributionContainer";
  *(v43 + 1) = 20;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "visibilityFlags";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        case 2:
          sub_20E3223E0();
          break;
        case 3:
          v13 = v4;
          sub_20E24F30C();
          goto LABEL_22;
        case 4:
        case 18:
          v11 = v4;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
          sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
          goto LABEL_5;
        case 5:
          sub_20E2C2ECC(a1, v5, a2, a3);
          break;
        case 6:
        case 8:
          type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
          sub_20E3223D0();
          break;
        case 7:
          sub_20E2C2F80(a1, v5, a2, a3);
          break;
        case 9:
          v11 = v4;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
          sub_20E2FB9A4(&qword_27C86BCD8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);
          goto LABEL_5;
        case 10:
          sub_20E3223A0();
          break;
        case 11:
          sub_20E2C3034(a1, v5, a2, a3);
          break;
        case 12:
          v11 = v4;
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
          goto LABEL_5;
        case 13:
          v12 = v4;
          sub_20E24F2B8();
          goto LABEL_19;
        case 14:
          v13 = v4;
          sub_20E24F210();
LABEL_22:
          v4 = v13;
          sub_20E322310();
          break;
        case 15:
          v11 = v4;
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
          goto LABEL_5;
        case 16:
          v11 = v4;
          type metadata accessor for ToolKitProtoSystemToolProtocol(0);
          sub_20E2FB9A4(&qword_27C86BCE0, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);
LABEL_5:
          v4 = v11;
          sub_20E322420();
          break;
        case 17:
          sub_20E2C30E8(a1, v5, a2, a3);
          break;
        case 19:
          sub_20E2C319C(a1, v5, a2, a3);
          break;
        case 20:
          sub_20E2C3250(a1, v5, a2, a3);
          break;
        case 21:
          v12 = v4;
          sub_20E24F264();
LABEL_19:
          v4 = v12;
          sub_20E3222D0();
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2C2ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E2C2F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_20E2FB9A4(&qword_27C86C8F0, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);
  return sub_20E322430();
}

uint64_t sub_20E2C3034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  sub_20E2FB9A4(&qword_27C86C8D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);
  return sub_20E322430();
}

uint64_t sub_20E2C30E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  sub_20E2FB9A4(&qword_27C86C898, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  return sub_20E322430();
}

uint64_t sub_20E2C319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  return sub_20E322430();
}

uint64_t sub_20E2C3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  return sub_20E322430();
}

uint64_t ToolKitProtoToolDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_20E322540(), !v4))
  {
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_20E322540(), !v4))
    {
      if (!*(v3 + 32) || (sub_20E24F30C(), result = sub_20E3224D0(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0), sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter), result = sub_20E322570(), !v4))
        {
          result = sub_20E2C38A8(v3, a1, a2, a3);
          if (!v4)
          {
            sub_20E2C3AC4(v3, a1, a2, a3);
            sub_20E2C3B3C(v3, a1, a2, a3);
            sub_20E2C3D58(v3, a1, a2, a3);
            if (*(*(v3 + 48) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
              sub_20E2FB9A4(&qword_27C86BCD8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);
              sub_20E322570();
            }

            if (*(*(v3 + 56) + 16))
            {
              sub_20E322520();
            }

            sub_20E2C3DD0(v3, a1, a2, a3);
            if (*(*(v3 + 64) + 16))
            {
              type metadata accessor for ToolKitProtoRuntimeRequirement(0);
              sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
              sub_20E322570();
            }

            if (*(*(v3 + 72) + 16))
            {
              sub_20E24F2B8();
              sub_20E3224B0();
            }

            if (*(v3 + 80))
            {
              sub_20E24F210();
              sub_20E3224D0();
            }

            if (*(*(v3 + 88) + 16))
            {
              type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
              sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
              sub_20E322570();
            }

            if (*(*(v3 + 96) + 16))
            {
              type metadata accessor for ToolKitProtoSystemToolProtocol(0);
              sub_20E2FB9A4(&qword_27C86BCE0, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);
              sub_20E322570();
            }

            sub_20E2C3FEC(v3, a1, a2, a3);
            if (*(*(v3 + 104) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
              sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
              sub_20E322570();
            }

            sub_20E2C4208(v3, a1, a2, a3);
            sub_20E2C4424(v3, a1, a2, a3);
            if (*(*(v3 + 112) + 16))
            {
              sub_20E24F264();
              sub_20E3224B0();
            }

            type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
            return sub_20E3221A0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E2C38A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v12 + 68), v7, &qword_27C863C48, &qword_20E323F30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E2C3AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 72) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2C3B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D28, &qword_20E346350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v12 + 76), v7, &qword_27C869D28, &qword_20E346350);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D28, &qword_20E346350);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoAppDefinition);
  sub_20E2FB9A4(&qword_27C86C8F0, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAppDefinition);
}

uint64_t sub_20E2C3D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 80) + 8))
  {
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2C3DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D30, &qword_20E346358);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v12 + 84), v7, &qword_27C869D30, &qword_20E346358);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D30, &qword_20E346358);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E2FB9A4(&qword_27C86C8D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
}

uint64_t sub_20E2C3FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D38, &qword_20E346360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v12 + 88), v7, &qword_27C869D38, &qword_20E346360);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D38, &qword_20E346360);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_20E2FB9A4(&qword_27C86C898, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
}

uint64_t sub_20E2C4208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D40, &qword_20E346368);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v12 + 92), v7, &qword_27C869D40, &qword_20E346368);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D40, &qword_20E346368);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_20E2C4424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D40, &qword_20E346368);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E0486F4(a1 + *(v12 + 96), v7, &qword_27C869D40, &qword_20E346368);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869D40, &qword_20E346368);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E2FB9A4(&qword_27C86C930, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_20E2C46B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 100);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E2C4728(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E2C47F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBC0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C4890(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return sub_20E322470();
}

uint64_t sub_20E2C48FC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return sub_20E322480();
}

uint64_t sub_20E2C497C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B410);
  __swift_project_value_buffer(v0, qword_27C86B410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ToolType_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolType_APP_INTENT";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ToolType_SIRI_INTENT";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ToolType_ACTION";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C4C20()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B428);
  __swift_project_value_buffer(v0, qword_27C86B428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Flag_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Flag_OPENS_APP_WHEN_RUN";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Flag_IS_DISCONTINUED";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Flag_IS_UNDISCOVERABLE";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "Flag_DOES_NOT_IMPLEMENT_PERFORM";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "Flag_SHOWS_OPEN_WHEN_RUN";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "Flag_OUTPUT_HAS_SNIPPET";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "Flag_OUTPUT_PROVIDES_DIALOG";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C4FE4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B440);
  __swift_project_value_buffer(v0, qword_27C86B440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VisibilityFlag_VISIBLE_FOR_SHORTCUTS";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibilityFlag_VISIBLE_FOR_ASSISTANT";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C5208()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B458);
  __swift_project_value_buffer(v0, qword_27C86B458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AuthenticationPolicy_UNSPECIFIED";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AuthenticationPolicy_NONE";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN";
  *(v12 + 1) = 54;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN_AND_REMOTE";
  *(v14 + 1) = 65;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C54AC()
{
  if (qword_27C863760 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B3E8;
  v2 = qword_27C86B3F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x74656D617261502ELL, 0xEA00000000007265);

  qword_27C86B470 = v1;
  *algn_27C86B478 = v2;
  return result;
}

uint64_t sub_20E2C557C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B480);
  __swift_project_value_buffer(v0, qword_27C86B480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20E326330;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "key";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "valueType";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "relationships";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "sampleInvocations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "flags";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1 || result == 2)
        {
          sub_20E3223E0();
        }

        else if (result == 3)
        {
          sub_20E3223D0();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            sub_20E2C5AB0(a1, v5, a2, a3);
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_20E2FB9A4(&qword_27C86BCF0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          goto LABEL_20;
        }

        if (result == 6)
        {
          v11 = v4;
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
LABEL_20:
          v4 = v11;
          sub_20E322420();
          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_20E24F1BC();
          sub_20E3222D0();
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2C5AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (v3[8])
      {
        result = sub_20E322540();
      }

      if (!v4)
      {
        sub_20E2C5DA8(v3, a1, a2, a3);
        if (*(v3[4] + 16))
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_20E2FB9A4(&qword_27C86BCF0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          sub_20E322570();
        }

        if (*(v3[5] + 16))
        {
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
          sub_20E322570();
        }

        if (*(v3[6] + 16))
        {
          sub_20E24F1BC();
          sub_20E3224B0();
        }

        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2C5DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_20E0486F4(a1 + *(v12 + 40), v7, &qword_27C863C48, &qword_20E323F30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E2C6010@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v6 = MEMORY[0x277D84F90];
  *(a2 + 4) = MEMORY[0x277D84F90];
  *(a2 + 5) = v6;
  *(a2 + 6) = v6;
  return result;
}

uint64_t sub_20E2C6104(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBB8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C61A4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_20E322470();
}

uint64_t sub_20E2C6210(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_20E322480();
}

uint64_t sub_20E2C6290()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B498);
  __swift_project_value_buffer(v0, qword_27C86B498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ParameterFlags_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ParameterFlags_HIDDEN";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ParameterFlags_SYNTHESIZED";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C6500()
{
  if (qword_27C863790 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B470;
  v2 = *algn_27C86B478;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6F6974616C65522ELL, 0xED0000706968736ELL);

  qword_27C86B4B0 = v1;
  *algn_27C86B4B8 = v2;
  return result;
}

uint64_t sub_20E2C65D8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B4C0);
  __swift_project_value_buffer(v0, qword_27C86B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
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
  *v10 = "relation";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2C6818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  return sub_20E322430();
}

uint64_t sub_20E2C690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E70, &unk_20E346370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C867E70, &unk_20E346370);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C867E70, &unk_20E346370);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
}

uint64_t sub_20E2C6B8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v4 = *(a1 + 20);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2C6C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBB0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2C6D0C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BCF0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_20E322470();
}

uint64_t sub_20E2C6D78(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BCF0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_20E322480();
}

uint64_t sub_20E2C6DF8()
{
  if (qword_27C8637A8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4B0;
  v2 = *algn_27C86B4B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6F6974616C65522ELL, 0xE90000000000006ELL);

  qword_27C86B4D8 = v1;
  qword_27C86B4E0 = v2;
  return result;
}

uint64_t sub_20E2C6EC8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B4E8);
  __swift_project_value_buffer(v0, qword_27C86B4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "isSome";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isNone";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "equals";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "notEquals";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "lessThan";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contains";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "doesNotContain";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            sub_20E2C8B08(v5, a1, a2, a3);
          }

          else if (result == 8)
          {
            sub_20E2C90C4(v5, a1, a2, a3);
          }
        }

        else if (result == 5)
        {
          sub_20E2C7F90(v5, a1, a2, a3);
        }

        else
        {
          sub_20E2C854C(v5, a1, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_20E2C7424(v5, a1, a2, a3);
        }

        else
        {
          sub_20E2C79D4(v5, a1, a2, a3);
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
          v15 = 6;
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
          v15 = 7;
        }

        sub_20E257248(v11, v12, v13, v14, &qword_27C867E60, &qword_20E33AF40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind, v15);
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2C7424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF50, &qword_20E356320);
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
  sub_20E0486F4(a1, v12, &qword_27C867E60, &qword_20E33AF40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E60, &qword_20E33AF40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86CF50, &qword_20E356320);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF50, &qword_20E356320);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF50, &qword_20E356320);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF50, &qword_20E356320);
    return sub_20E04875C(v32, &qword_27C86CF50, &qword_20E356320);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF50, &qword_20E356320);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2C79D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF58, &qword_20E356328);
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
  sub_20E0486F4(a1, v12, &qword_27C867E60, &qword_20E33AF40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E60, &qword_20E33AF40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CF58, &qword_20E356328);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF58, &qword_20E356328);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF58, &qword_20E356328);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF58, &qword_20E356328);
    return sub_20E04875C(v32, &qword_27C86CF58, &qword_20E356328);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF58, &qword_20E356328);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2C7F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF60, &qword_20E356330);
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
  sub_20E0486F4(a1, v12, &qword_27C867E60, &qword_20E33AF40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E60, &qword_20E33AF40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v24, &qword_27C86CF60, &qword_20E356330);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF60, &qword_20E356330);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF60, &qword_20E356330);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF60, &qword_20E356330);
    return sub_20E04875C(v32, &qword_27C86CF60, &qword_20E356330);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF60, &qword_20E356330);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2C854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF68, &qword_20E356338);
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
  sub_20E0486F4(a1, v12, &qword_27C867E60, &qword_20E33AF40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E60, &qword_20E33AF40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C86CF68, &qword_20E356338);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C840, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF68, &qword_20E356338);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF68, &qword_20E356338);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF68, &qword_20E356338);
    return sub_20E04875C(v32, &qword_27C86CF68, &qword_20E356338);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF68, &qword_20E356338);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2C8B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF70, &qword_20E356340);
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
  sub_20E0486F4(a1, v12, &qword_27C867E60, &qword_20E33AF40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E60, &qword_20E33AF40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v24, &qword_27C86CF70, &qword_20E356340);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C858, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF70, &qword_20E356340);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF70, &qword_20E356340);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF70, &qword_20E356340);
    return sub_20E04875C(v32, &qword_27C86CF70, &qword_20E356340);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF70, &qword_20E356340);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E2C90C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v6 = *(DoesNotContain - 8);
  v7 = MEMORY[0x28223BE20](DoesNotContain);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF78, &qword_20E356348);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = DoesNotContain;
  v26 = DoesNotContain;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_20E0486F4(a1, v12, &qword_27C867E60, &qword_20E33AF40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C867E60, &qword_20E33AF40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v24, &qword_27C86CF78, &qword_20E356348);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C870, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF78, &qword_20E356348);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF78, &qword_20E356348);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF78, &qword_20E356348);
    return sub_20E04875C(v32, &qword_27C86CF78, &qword_20E356348);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF78, &qword_20E356348);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C867E60, &qword_20E33AF40);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C867E60, &qword_20E33AF40);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_20E2CA1F0(v3, a1, a2, a3);
      }

      else
      {
        sub_20E2CA428(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_20E2C9FB8(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2C9D84(v3, a1, a2, a3);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_20E2CA660(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2CA898(v3, a1, a2, a3);
    }

LABEL_17:
    result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 6)
  {
    result = sub_20E2C98EC(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  result = sub_20E2C9B38(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_18:
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2C98EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867E60, &qword_20E33AF40);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867E60, &qword_20E33AF40);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 6)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2C9B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C867E60, &qword_20E33AF40);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C867E60, &qword_20E33AF40);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 7)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_20E3224D0();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2C9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E60, &qword_20E33AF40);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    sub_20E2FB9A4(&qword_27C86C7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2C9FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E60, &qword_20E33AF40);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    sub_20E2FB9A4(&qword_27C86C810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CA1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E60, &qword_20E33AF40);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    sub_20E2FB9A4(&qword_27C86C828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CA428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E60, &qword_20E33AF40);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    sub_20E2FB9A4(&qword_27C86C840, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CA660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E60, &qword_20E33AF40);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    sub_20E2FB9A4(&qword_27C86C858, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CA898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  MEMORY[0x28223BE20](DoesNotContain);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E60, &qword_20E33AF40);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E60, &qword_20E33AF40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    sub_20E2FB9A4(&qword_27C86C870, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CAB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBA8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CAC2C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_20E322470();
}

uint64_t sub_20E2CAC98(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_20E322480();
}

uint64_t sub_20E2CAD18()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x736C617571452ELL, 0xE700000000000000);

  qword_27C86B500 = v1;
  *algn_27C86B508 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_20E322570(), !v4))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2CAFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CBA0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CB044(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_20E322470();
}

uint64_t sub_20E2CB0B0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_20E322480();
}

uint64_t sub_20E2CB12C()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x61757145746F4E2ELL, 0xEA0000000000736CLL);

  qword_27C86B528 = v1;
  qword_27C86B530 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_20E322570(), !v4))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2CB3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB98, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CB45C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_20E322470();
}

uint64_t sub_20E2CB4C8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_20E322480();
}

uint64_t sub_20E2CB544()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x726574616572472ELL, 0xEC0000006E616854);

  qword_27C86B550 = v1;
  *algn_27C86B558 = v2;
  return result;
}

uint64_t sub_20E2CB618()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B560);
  __swift_project_value_buffer(v0, qword_27C86B560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CB8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB90, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CB984(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_20E322470();
}

uint64_t sub_20E2CB9F0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_20E322480();
}

uint64_t sub_20E2CBA6C()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6168547373654C2ELL, 0xE90000000000006ELL);

  qword_27C86B578 = v1;
  qword_27C86B580 = v2;
  return result;
}

uint64_t sub_20E2CBB3C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B588);
  __swift_project_value_buffer(v0, qword_27C86B588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CBD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_20E322420();
      }

      else if (result == 2)
      {
        sub_20E3222F0();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2CBE64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_20E322570(), !v5))
  {
    if (v4[8] != 1 || (result = sub_20E3224C0(), !v5))
    {
      a4(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2CC000(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CC0A0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C840, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_20E322470();
}

uint64_t sub_20E2CC10C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C840, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_20E322480();
}

uint64_t sub_20E2CC188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20E1484A4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2CC240()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6E6961746E6F432ELL, 0xE900000000000073);

  qword_27C86B5A0 = v1;
  *algn_27C86B5A8 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_20E322570(), !v4))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2CC4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB80, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CC570(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C858, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_20E322470();
}

uint64_t sub_20E2CC5DC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C858, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_20E322480();
}

uint64_t sub_20E2CC658()
{
  if (qword_27C8637B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B4D8;
  v2 = qword_27C86B4E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x746F4E73656F442ELL, 0xEF6E6961746E6F43);

  qword_27C86B5C8 = v1;
  qword_27C86B5D0 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_20E322570(), !v4))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2CC94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB78, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CC9EC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C870, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_20E322470();
}

uint64_t sub_20E2CCA58(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C870, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_20E322480();
}

uint64_t sub_20E2CCAD4()
{
  if (qword_27C863760 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B3E8;
  v2 = qword_27C86B3F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x726F67657461432ELL, 0xE900000000000079);

  qword_27C86B5F0 = v1;
  *algn_27C86B5F8 = v2;
  return result;
}

uint64_t sub_20E2CCBA4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B600);
  __swift_project_value_buffer(v0, qword_27C86B600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subcategoryName";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CCE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB70, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CCF28(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BCD8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_20E322470();
}

uint64_t sub_20E2CCF94(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BCD8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_20E322480();
}

uint64_t sub_20E2CD040()
{
  if (qword_27C863760 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B3E8;
  v2 = qword_27C86B3F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6F63496C6F6F542ELL, 0xE90000000000006ELL);

  qword_27C86B618 = v1;
  qword_27C86B620 = v2;
  return result;
}

uint64_t sub_20E2CD110()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B628);
  __swift_project_value_buffer(v0, qword_27C86B628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workflowAsset";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E269590(a1, v5, a2, a3, &qword_27C869D48, &qword_20E346380, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind, 0);
      }

      else if (result == 2)
      {
        sub_20E2CD3E8(v5, a1, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2CD3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF48, &qword_20E356318);
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
  sub_20E0486F4(a1, v12, &qword_27C869D48, &qword_20E346380);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869D48, &qword_20E346380);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v24, &qword_27C86CF48, &qword_20E356318);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C8C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86CF48, &qword_20E356318);
  }

  sub_20E0486F4(v24, v32, &qword_27C86CF48, &qword_20E356318);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86CF48, &qword_20E356318);
    return sub_20E04875C(v32, &qword_27C86CF48, &qword_20E356318);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86CF48, &qword_20E356318);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869D48, &qword_20E346380);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C869D48, &qword_20E346380);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2CDCCC(v3, a1, a2, a3);
      result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      result = sub_20E2CDB54(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  return sub_20E3221A0();
}

uint64_t sub_20E2CDB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869D48, &qword_20E346380);
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D48, &qword_20E346380);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E322540();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CDCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869D48, &qword_20E346380);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869D48, &qword_20E346380);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    sub_20E2FB9A4(&qword_27C86C8C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2CDFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CB68, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2CE060(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C898, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_20E322470();
}

uint64_t sub_20E2CE0CC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C898, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_20E322480();
}

uint64_t sub_20E2CE14C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B640);
  __swift_project_value_buffer(v0, qword_27C86B640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ToolSymbolIconStyle_MULTICOLOR";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolSymbolIconStyle_TINTED";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2CE370()
{
  if (qword_27C863838 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B618;
  v2 = qword_27C86B620;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6D79536C6F6F542ELL, 0xEF6E6F63496C6F62);

  qword_27C86B658 = v1;
  qword_27C86B660 = v2;
  return result;
}

uint64_t sub_20E2CE448()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B668);
  __swift_project_value_buffer(v0, qword_27C86B668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "style";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "foreground";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "background";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          sub_20E3223E0();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_20E3223D0();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_20E24F168();
          sub_20E322310();
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}