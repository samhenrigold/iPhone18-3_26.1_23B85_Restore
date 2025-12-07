uint64_t ToolKitProtoTypeDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20E0486F4(v3, &v14 - v9, &qword_27C867E50, &qword_20E33AF30);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E25DE24(v3, a1, a2, a3);
    }

    else
    {
      sub_20E25E05C(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E25DBEC(v3, a1, a2, a3);
  }

  else
  {
    sub_20E25D9B8(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E25D9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E50, &qword_20E33AF30);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E50, &qword_20E33AF30);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_20E2FB9A4(&qword_27C86BE18, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_20E25DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E50, &qword_20E33AF30);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E50, &qword_20E33AF30);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    sub_20E2FB9A4(&qword_27C86BED8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_20E25DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E50, &qword_20E33AF30);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E50, &qword_20E33AF30);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    sub_20E2FB9A4(&qword_27C86BF10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_20E25E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C867E50, &qword_20E33AF30);
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C867E50, &qword_20E33AF30);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    sub_20E2FB9A4(&qword_27C86BF48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_20E25E350(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE88, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25E3F0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);

  return sub_20E322470();
}

uint64_t sub_20E25E45C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);

  return sub_20E322480();
}

uint64_t sub_20E25E4DC()
{
  if (qword_27C863228 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A648;
  v2 = qword_27C86A650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x797469746E452ELL, 0xE700000000000000);

  qword_27C86A670 = v1;
  *algn_27C86A678 = v2;
  return result;
}

uint64_t sub_20E25E5A8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A680);
  __swift_project_value_buffer(v0, qword_27C86A680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "properties";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "runtimeRequirements";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sampleInvocations";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "systemProtocols";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "runtimeFlags";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "coercions";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v11 = v4;
          if (result == 5)
          {
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
          }

          else
          {
            type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
            sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_20E24F750();
          sub_20E3222D0();
        }

        else if (result == 8)
        {
          v11 = v4;
          type metadata accessor for ToolKitProtoCoercionDefinition(0);
          sub_20E2FB9A4(&qword_27C86B9D8, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);
          goto LABEL_5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v11 = v4;
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
          goto LABEL_5;
        }

        sub_20E25ECC0(a1, v5, a2, a3);
      }

      else if (result == 1)
      {
        sub_20E25EC0C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        v11 = v4;
        type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
        sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
LABEL_5:
        v4 = v11;
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E25EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E25ECC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E25F0B4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_20E322570();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
      sub_20E322570();
    }

    sub_20E25F2D0(v3, a1, a2, a3);
    if (*(v3[2] + 16))
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
      sub_20E322570();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);
      sub_20E322570();
    }

    if (*(v3[4] + 16))
    {
      sub_20E24F750();
      sub_20E3224B0();
    }

    if (*(v3[5] + 16))
    {
      type metadata accessor for ToolKitProtoCoercionDefinition(0);
      sub_20E2FB9A4(&qword_27C86B9D8, type metadata accessor for ToolKitProtoCoercionDefinition, &protocol conformance descriptor for ToolKitProtoCoercionDefinition);
      sub_20E322570();
    }

    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E25F0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  sub_20E0486F4(a1 + *(v12 + 40), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E25F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  sub_20E0486F4(a1 + *(v12 + 44), v7, &qword_27C868A20, &qword_20E345F10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E25F534@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 44);
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v9;
  *(a2 + 2) = v9;
  *(a2 + 3) = v9;
  *(a2 + 4) = v9;
  *(a2 + 5) = v9;
  return result;
}

uint64_t sub_20E25F660(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE80, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E25F700(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BED8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);

  return sub_20E322470();
}

uint64_t sub_20E25F76C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BED8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity);

  return sub_20E322480();
}

uint64_t sub_20E25F7EC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A698);
  __swift_project_value_buffer(v0, qword_27C86A698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RuntimeFlags_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimeFlags_TRANSIENT_APP_ENTITY";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E25FA10()
{
  if (qword_27C863238 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A670;
  v2 = *algn_27C86A678;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x747265706F72502ELL, 0xE900000000000079);

  qword_27C86A6B0 = v1;
  *algn_27C86A6B8 = v2;
  return result;
}

uint64_t sub_20E25FAE0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A6C0);
  __swift_project_value_buffer(v0, qword_27C86A6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_20E25FDC8(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E25FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      result = sub_20E25FF58(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E25FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863C48, &qword_20E323F30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E2601C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2602A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE78, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E260340(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_20E322470();
}

uint64_t sub_20E2603AC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_20E322480();
}

uint64_t sub_20E26042C()
{
  if (qword_27C863228 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A648;
  v2 = qword_27C86A650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6172656D756E452ELL, 0xEC0000006E6F6974);

  qword_27C86A6D8 = v1;
  qword_27C86A6E0 = v2;
  return result;
}

uint64_t sub_20E260500()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A6E8);
  __swift_project_value_buffer(v0, qword_27C86A6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "cases";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "runtimeRequirements";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "systemProtocols";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        break;
      }

      if (result == 4)
      {
        sub_20E260ADC(a1, v5, a2, a3);
        goto LABEL_5;
      }

      if (result != 5)
      {
        if (result != 6)
        {
          goto LABEL_5;
        }

        v11 = v4;
        type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
        sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);
LABEL_16:
        v4 = v11;
        goto LABEL_19;
      }

      sub_20E24F6FC();
      sub_20E322310();
LABEL_5:
      result = sub_20E3222B0();
    }

    if (result == 1)
    {
      sub_20E260A28(a1, v5, a2, a3);
      goto LABEL_5;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_5;
      }

      v11 = v4;
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
      goto LABEL_16;
    }

    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
    sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
LABEL_19:
    sub_20E322420();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_20E260A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E260ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E260DD8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      sub_20E322570();
    }

    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
      sub_20E322570();
    }

    sub_20E260FF4(v3, a1, a2, a3);
    if (*(v3 + 16))
    {
      sub_20E24F6FC();
      sub_20E3224D0();
    }

    if (*(*(v3 + 24) + 16))
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_20E2FB9A4(&qword_27C86B9D0, type metadata accessor for ToolKitProtoSystemTypeProtocol, &protocol conformance descriptor for ToolKitProtoSystemTypeProtocol);
      sub_20E322570();
    }

    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E260DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E260FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C868A20, &qword_20E345F10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E261258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 36);
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_20E261384(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE70, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E261424(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BF10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_20E322470();
}

uint64_t sub_20E261490(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BF10, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_20E322480();
}

uint64_t sub_20E261510()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A700);
  __swift_project_value_buffer(v0, qword_27C86A700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Kind_UNKNOWN";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Kind_APP_ENUM";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Kind_ACTION_ENUM";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E261780()
{
  if (qword_27C863260 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A6D8;
  v2 = qword_27C86A6E0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x657361432ELL, 0xE500000000000000);

  qword_27C86A718 = v1;
  qword_27C86A720 = v2;
  return result;
}

uint64_t sub_20E261848()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A728);
  __swift_project_value_buffer(v0, qword_27C86A728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E261A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E261B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E261E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE68, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E261F04(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_20E322470();
}

uint64_t sub_20E261F70(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_20E322480();
}

uint64_t sub_20E26201C()
{
  if (qword_27C863228 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A648;
  v2 = qword_27C86A650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x79726575512ELL, 0xE600000000000000);

  qword_27C86A740 = v1;
  *algn_27C86A748 = v2;
  return result;
}

uint64_t sub_20E2620E4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A750);
  __swift_project_value_buffer(v0, qword_27C86A750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
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
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E262310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_20E322430();
}

uint64_t sub_20E262418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C48, &qword_20E346250);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869C48, &qword_20E346250);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C48, &qword_20E346250);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_20E262700(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2627A0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BF48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_20E322470();
}

uint64_t sub_20E26280C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BF48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_20E322480();
}

uint64_t sub_20E26288C()
{
  if (qword_27C863288 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A740;
  v2 = *algn_27C86A748;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0xD000000000000013, 0x800000020E363650);

  qword_27C86A768 = v1;
  qword_27C86A770 = v2;
  return result;
}

uint64_t sub_20E26295C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A778);
  __swift_project_value_buffer(v0, qword_27C86A778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "comparison";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "stringSearch";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "idSearch";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "all";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "suggested";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sampleInvocations";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchableItem";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "valid";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            sub_20E2631D0(a1, v5, a2, a3);
          }

          else if (result == 8)
          {
            sub_20E263284(a1, v5, a2, a3);
          }
        }

        else
        {
          if (result != 5)
          {
            v11 = v4;
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
LABEL_21:
            v4 = v11;
            sub_20E322420();
            goto LABEL_5;
          }

          sub_20E26311C(a1, v5, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_20E262FB4(a1, v5, a2, a3);
        }

        else
        {
          sub_20E263068(a1, v5, a2, a3);
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = v4;
          type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
          sub_20E2FB9A4(&qword_27C86BA10, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);
          goto LABEL_21;
        }

        if (result == 2)
        {
          sub_20E262F00(a1, v5, a2, a3);
        }
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E262F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  sub_20E2FB9A4(&qword_27C86C3E8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);
  return sub_20E322430();
}

uint64_t sub_20E262FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  sub_20E2FB9A4(&qword_27C86C418, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);
  return sub_20E322430();
}

uint64_t sub_20E263068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoAllPredicate(0);
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
  return sub_20E322430();
}

uint64_t sub_20E26311C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
  return sub_20E322430();
}

uint64_t sub_20E2631D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  sub_20E2FB9A4(&qword_27C86C448, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);
  return sub_20E322430();
}

uint64_t sub_20E263284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  type metadata accessor for ToolKitProtoValidPredicate(0);
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoComparisonPredicate.Template(0), sub_20E2FB9A4(&qword_27C86BA10, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template), result = sub_20E322570(), !v4))
  {
    result = sub_20E263528(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E263744(v3, a1, a2, a3);
      sub_20E263960(v3, a1, a2, a3);
      sub_20E263B7C(v3, a1, a2, a3);
      if (*(v3[1] + 16))
      {
        type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
        sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
        sub_20E322570();
      }

      sub_20E263D98(v3, a1, a2, a3);
      sub_20E263FB4(v3, a1, a2, a3);
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E263528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C50, &qword_20E346258);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C869C50, &qword_20E346258);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C50, &qword_20E346258);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E2FB9A4(&qword_27C86C3E8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
}

uint64_t sub_20E263744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C58, &qword_20E346260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C869C58, &qword_20E346260);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C58, &qword_20E346260);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E2FB9A4(&qword_27C86C418, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
}

uint64_t sub_20E263960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C60, &qword_20E346268);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C869C60, &qword_20E346268);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C60, &qword_20E346268);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAllPredicate);
}

uint64_t sub_20E263B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C68, &qword_20E346270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C869C68, &qword_20E346270);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C68, &qword_20E346270);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSuggestedPredicate);
}

uint64_t sub_20E263D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C70, &qword_20E346278);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v12 + 40), v7, &qword_27C869C70, &qword_20E346278);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C70, &qword_20E346278);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  sub_20E2FB9A4(&qword_27C86C448, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
}

uint64_t sub_20E263FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C78, &qword_20E346280);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v9 = *(valid - 8);
  MEMORY[0x28223BE20](valid);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E0486F4(a1 + *(v12 + 44), v7, &qword_27C869C78, &qword_20E346280);
  if ((*(v9 + 48))(v7, 1, valid) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C78, &qword_20E346280);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoValidPredicate);
}

uint64_t sub_20E26421C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = a1[10];
  v13 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = a1[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a2[v14], 1, 1, valid);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v17 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v17;
  return result;
}

uint64_t sub_20E264450(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE58, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2644F0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_20E322470();
}

uint64_t sub_20E26455C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_20E322480();
}

uint64_t sub_20E2645F8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A790);
  __swift_project_value_buffer(v0, qword_27C86A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326330;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entity";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "collection";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "query";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "entityIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "deferred";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_20E264A8C(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E264E6C(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E265254(v5, a1, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_20E265E0C(v5, a1, a2, a3);
      }

      else if (result == 7)
      {
        sub_20E2661F8(v5, a1, a2, a3);
      }
    }

    else if (result == 4)
    {
      sub_20E26563C(v5, a1, a2, a3);
    }

    else
    {
      sub_20E265A24(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E264A8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D138, &qword_20E356500);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v29 = v18 & 0xF000000000000007;
  if (!(v18 >> 61) && v29 != 0xF000000000000007)
  {

    sub_20E04875C(v16, &qword_27C86D138, &qword_20E356500);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(qword_280E0F378, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D138, &qword_20E356500);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D138, &qword_20E356500);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D138, &qword_20E356500);
    return sub_20E04875C(v14, &qword_27C86D138, &qword_20E356500);
  }

  else
  {
    v22 = v28;
    sub_20E2FB8D8(v14, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    if (v29 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D138, &qword_20E356500);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    v25 = *v27;
    *v27 = v23;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E264E6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D140, &qword_20E356508);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D140, &qword_20E356508);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C0C0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D140, &qword_20E356508);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D140, &qword_20E356508);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D140, &qword_20E356508);
    return sub_20E04875C(v14, &qword_27C86D140, &qword_20E356508);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D140, &qword_20E356508);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    v25 = *v27;
    *v27 = v23 | 0x2000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E265254(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC0, &qword_20E325D10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_20E04875C(v16, &qword_27C863EC0, &qword_20E325D10);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C0D8, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C863EC0, &qword_20E325D10);
  }

  sub_20E0486F4(v16, v14, &qword_27C863EC0, &qword_20E325D10);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C863EC0, &qword_20E325D10);
    return sub_20E04875C(v14, &qword_27C863EC0, &qword_20E325D10);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C863EC0, &qword_20E325D10);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    v25 = *v27;
    *v27 = v23 | 0x4000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E26563C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D148, &qword_20E356510);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D148, &qword_20E356510);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C0F0, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D148, &qword_20E356510);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D148, &qword_20E356510);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D148, &qword_20E356510);
    return sub_20E04875C(v14, &qword_27C86D148, &qword_20E356510);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D148, &qword_20E356510);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    v25 = *v27;
    *v27 = v23 | 0x6000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E265A24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v6 = *(Value - 8);
  v7 = MEMORY[0x28223BE20](Value);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D150, &qword_20E356518);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, Value);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D150, &qword_20E356518);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    v17(v16, 0, 1, Value);
  }

  sub_20E2FB9A4(&qword_27C86C108, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D150, &qword_20E356518);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D150, &qword_20E356518);
  if ((*(v6 + 48))(v14, 1, Value) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D150, &qword_20E356518);
    return sub_20E04875C(v14, &qword_27C86D150, &qword_20E356518);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D150, &qword_20E356518);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    v25 = *v27;
    *v27 = v23 | 0x8000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E265E0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D158, &qword_20E356520);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D158, &qword_20E356520);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C120, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D158, &qword_20E356520);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D158, &qword_20E356520);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D158, &qword_20E356520);
    return sub_20E04875C(v14, &qword_27C86D158, &qword_20E356520);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D158, &qword_20E356520);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    v25 = *v27;
    *v27 = v23 | 0xA000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E2661F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D160, &qword_20E356528);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0xC000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D160, &qword_20E356528);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C138, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D160, &qword_20E356528);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D160, &qword_20E356528);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D160, &qword_20E356528);
    return sub_20E04875C(v14, &qword_27C86D160, &qword_20E356528);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D160, &qword_20E356528);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    v25 = *v27;
    *v27 = v23 | 0xC000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t ToolKitProtoTypedValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*v3 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v6 = *v3 >> 61;
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        result = sub_20E266834(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_2;
        }
      }

      else
      {
        result = sub_20E26698C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      result = sub_20E2666E4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v6 > 4)
  {
    if (v6 == 5)
    {
      result = sub_20E266D94(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_20E266EEC(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v6 == 3)
  {
    result = sub_20E266AE4(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_2:
      type metadata accessor for ToolKitProtoTypedValue(0);
      return sub_20E3221A0();
    }
  }

  else
  {
    result = sub_20E266C3C(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_20E2666E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_20E2FB9A4(qword_280E0F378, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_20E322580();
    return sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  }

  return result;
}

uint64_t sub_20E266834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_20E2FB9A4(&qword_27C86C0C0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E26698C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_20E2FB9A4(&qword_27C86C0D8, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E266AE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_20E2FB9A4(&qword_27C86C0F0, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E266C3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  result = MEMORY[0x28223BE20](Value);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_20E2FB9A4(&qword_27C86C108, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E266D94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_20E2FB9A4(&qword_27C86C120, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E266EEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_20E2FB9A4(&qword_27C86C138, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E2670D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE50, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E267178(uint64_t a1)
{
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);

  return sub_20E322470();
}

uint64_t sub_20E2671E4(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);

  return sub_20E322480();
}

uint64_t sub_20E2672A8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A7B8);
  __swift_project_value_buffer(v0, qword_27C86A7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serializedVariable";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2674E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      a4(v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E267590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.ID(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E267684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863C48, &qword_20E323F30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E26795C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE48, type metadata accessor for ToolKitProtoTypedValue.ID, &protocol conformance descriptor for ToolKitProtoTypedValue.ID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2679FC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BF80, type metadata accessor for ToolKitProtoTypedValue.ID, &protocol conformance descriptor for ToolKitProtoTypedValue.ID);

  return sub_20E322470();
}

uint64_t sub_20E267A68(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BF80, type metadata accessor for ToolKitProtoTypedValue.ID, &protocol conformance descriptor for ToolKitProtoTypedValue.ID);

  return sub_20E322480();
}

uint64_t sub_20E267B40()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A7E0);
  __swift_project_value_buffer(v0, qword_27C86A7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20E3262E0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "noneVariant";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "decimal";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "string";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "date";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dateComponents";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "url";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "attributedString";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "measurement";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "currencyAmount";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "paymentMethod";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "placemark";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "person";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "file";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "app";
  *(v37 + 8) = 3;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "searchableItem";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "encodedDateComponents";
  *(v41 + 1) = 21;
  v41[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E257248(a1, v5, a2, a3, &qword_27C869C80, &qword_20E346288, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 0x12u);
          break;
        case 2:
          sub_20E2684AC(a1, v5, a2, a3);
          break;
        case 3:
          sub_20E268680(a1, v5, a2, a3);
          break;
        case 4:
          sub_20E26885C(a1, v5, a2, a3);
          break;
        case 5:
          sub_20E268A38(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E269590(a1, v5, a2, a3, &qword_27C869C80, &qword_20E346288, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 4u);
          break;
        case 7:
          sub_20E268FF4(v5, a1, a2, a3);
          break;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        case 9:
          sub_20E269590(a1, v5, a2, a3, &qword_27C869C80, &qword_20E346288, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 7u);
          break;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_5;
        case 11:
          sub_20E2699B4(v5, a1, a2, a3);
          break;
        case 12:
          sub_20E269F70(v5, a1, a2, a3);
          break;
        case 13:
          sub_20E26A52C(v5, a1, a2, a3);
          break;
        case 14:
          sub_20E26AAE8(v5, a1, a2, a3);
          break;
        case 15:
          sub_20E26B0A4(v5, a1, a2, a3);
          break;
        case 16:
          sub_20E26B660(v5, a1, a2, a3);
          break;
        case 17:
          sub_20E26BC1C(v5, a1, a2, a3);
          break;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
LABEL_5:
          sub_20E26978C(v11, v12, v13, v14, &qword_27C869C80, &qword_20E346288, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, v15);
          break;
        case 19:
          sub_20E26C1D8(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2684AC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v17 = 2;
  result = sub_20E3222E0();
  if (!v4)
  {
    v10 = v17;
    if (v17 != 2)
    {
      v16 = 0;
      sub_20E0486F4(a2, v8, &qword_27C869C80, &qword_20E346288);
      v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
      v12 = *(v11 - 8);
      v13 = (*(v12 + 48))(v8, 1, v11);
      sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
      if (v13 != 1)
      {
        v14 = v16;
        result = sub_20E3222C0();
        if (v14)
        {
          return result;
        }

        v16 = 0;
      }

      sub_20E04875C(a2, &qword_27C869C80, &qword_20E346288);
      *a2 = v10 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  return result;
}

uint64_t sub_20E268680(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 1;
  result = sub_20E322380();
  if (!v4 && (v17 & 1) == 0)
  {
    v18 = 0;
    v15 = v16;
    sub_20E0486F4(a2, v8, &qword_27C869C80, &qword_20E346288);
    v10 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    if (v12 != 1)
    {
      v13 = v18;
      result = sub_20E3222C0();
      if (v13)
      {
        return result;
      }

      v18 = 0;
    }

    sub_20E04875C(a2, &qword_27C869C80, &qword_20E346288);
    *a2 = v15;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_20E26885C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v17 = 0;
  v18 = 1;
  result = sub_20E3223B0();
  if (!v4 && (v18 & 1) == 0)
  {
    v16 = 0;
    v10 = v17;
    sub_20E0486F4(a2, v8, &qword_27C869C80, &qword_20E346288);
    v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    if (v13 != 1)
    {
      v14 = v16;
      result = sub_20E3222C0();
      if (v14)
      {
        return result;
      }

      v16 = 0;
    }

    sub_20E04875C(a2, &qword_27C869C80, &qword_20E346288);
    *a2 = v10;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_20E268A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C90, &qword_20E346298);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v24, &qword_27C869C90, &qword_20E346298);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C869C90, &qword_20E346298);
  }

  sub_20E0486F4(v24, v32, &qword_27C869C90, &qword_20E346298);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C869C90, &qword_20E346298);
    return sub_20E04875C(v32, &qword_27C869C90, &qword_20E346298);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C869C90, &qword_20E346298);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E268FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v46 = a1;
  v4 = sub_20E322150();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v38 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v34 - v22;
  v40 = v5;
  v24 = *(v5 + 56);
  v42 = v4;
  v24(&v34 - v22, 1, 1, v4);
  sub_20E0486F4(v46, v11, &qword_27C869C80, &qword_20E346288);
  v35 = v13;
  v36 = (*(v13 + 48))(v11, 1, v12);
  if (v36 == 1)
  {
    sub_20E04875C(v11, &qword_27C869C80, &qword_20E346288);
  }

  else
  {
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v18, v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v23, &qword_27C868778, &unk_20E33C000);
      v25 = *(v40 + 32);
      v26 = v37;
      v27 = v42;
      v25(v37, v16, v42);
      v25(v23, v26, v27);
      v24(v23, 0, 1, v27);
      goto LABEL_7;
    }

    sub_20E2FB878(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  v27 = v42;
LABEL_7:
  sub_20E2FB9A4(&qword_280E12B18, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  v28 = v41;
  sub_20E322430();
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C868778, &unk_20E33C000);
  }

  v30 = v38;
  sub_20E0486F4(v23, v38, &qword_27C868778, &unk_20E33C000);
  v31 = v40;
  if ((*(v40 + 48))(v30, 1, v27) == 1)
  {
    sub_20E04875C(v23, &qword_27C868778, &unk_20E33C000);
    return sub_20E04875C(v30, &qword_27C868778, &unk_20E33C000);
  }

  else
  {
    v32 = *(v31 + 32);
    v32(v39, v30, v27);
    if (v36 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C868778, &unk_20E33C000);
    v33 = v46;
    sub_20E04875C(v46, &qword_27C869C80, &qword_20E346288);
    v32(v33, v39, v27);
    swift_storeEnumTagMultiPayload();
    return (*(v35 + 56))(v33, 0, 1, v12);
  }
}

uint64_t sub_20E269590(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
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

uint64_t sub_20E26978C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), unsigned int a8)
{
  v30 = a8;
  v28 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v29 = xmmword_20E323EA0;
  sub_20E322320();
  v17 = *(&v29 + 1);
  if (v8)
  {
    return sub_20E047D10(v29, *(&v29 + 1));
  }

  v25 = a3;
  v26 = a4;
  v27 = a2;
  if (*(&v29 + 1) >> 60 == 15)
  {
    return sub_20E047D10(v29, *(&v29 + 1));
  }

  v18 = v29;
  sub_20E0486F4(v27, v16, a5, a6);
  v19 = v28(0);
  v23 = *(v19 - 8);
  v24 = v19;
  LODWORD(v28) = (*(v23 + 48))(v16, 1);
  sub_20E05E834(v18, v17);
  sub_20E04875C(v16, a5, a6);
  if (v28 != 1)
  {
    sub_20E3222C0();
  }

  sub_20E047D10(v18, v17);
  v21 = v27;
  sub_20E04875C(v27, a5, a6);
  *v21 = v18;
  v21[1] = v17;
  v22 = v24;
  swift_storeEnumTagMultiPayload();
  return (*(v23 + 56))(v21, 0, 1, v22);
}

uint64_t sub_20E2699B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0F8, &qword_20E3564C0);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v24, &qword_27C86D0F8, &qword_20E3564C0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BFC8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D0F8, &qword_20E3564C0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D0F8, &qword_20E3564C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D0F8, &qword_20E3564C0);
    return sub_20E04875C(v32, &qword_27C86D0F8, &qword_20E3564C0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D0F8, &qword_20E3564C0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E269F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D100, &qword_20E3564C8);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v24, &qword_27C86D100, &qword_20E3564C8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BFE0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D100, &qword_20E3564C8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D100, &qword_20E3564C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D100, &qword_20E3564C8);
    return sub_20E04875C(v32, &qword_27C86D100, &qword_20E3564C8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D100, &qword_20E3564C8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E26A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D108, &qword_20E3564D0);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v24, &qword_27C86D108, &qword_20E3564D0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86BFF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D108, &qword_20E3564D0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D108, &qword_20E3564D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D108, &qword_20E3564D0);
    return sub_20E04875C(v32, &qword_27C86D108, &qword_20E3564D0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D108, &qword_20E3564D0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E26AAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D110, &qword_20E3564D8);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v24, &qword_27C86D110, &qword_20E3564D8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C020, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D110, &qword_20E3564D8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D110, &qword_20E3564D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D110, &qword_20E3564D8);
    return sub_20E04875C(v32, &qword_27C86D110, &qword_20E3564D8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D110, &qword_20E3564D8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E26B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D118, &qword_20E3564E0);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_20E04875C(v24, &qword_27C86D118, &qword_20E3564E0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C038, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D118, &qword_20E3564E0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D118, &qword_20E3564E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D118, &qword_20E3564E0);
    return sub_20E04875C(v32, &qword_27C86D118, &qword_20E3564E0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D118, &qword_20E3564E0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E26B660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D120, &qword_20E3564E8);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_20E04875C(v24, &qword_27C86D120, &qword_20E3564E8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C050, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D120, &qword_20E3564E8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D120, &qword_20E3564E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D120, &qword_20E3564E8);
    return sub_20E04875C(v32, &qword_27C86D120, &qword_20E3564E8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D120, &qword_20E3564E8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E26BC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D128, &qword_20E3564F0);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_20E04875C(v24, &qword_27C86D128, &qword_20E3564F0);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C068, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D128, &qword_20E3564F0);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D128, &qword_20E3564F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D128, &qword_20E3564F0);
    return sub_20E04875C(v32, &qword_27C86D128, &qword_20E3564F0);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D128, &qword_20E3564F0);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_20E26C1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D130, &qword_20E3564F8);
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
  sub_20E0486F4(a1, v12, &qword_27C869C80, &qword_20E346288);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869C80, &qword_20E346288);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_20E04875C(v24, &qword_27C86D130, &qword_20E3564F8);
      v31 = v40;
      sub_20E2FB8D8(v17, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C080, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D130, &qword_20E3564F8);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D130, &qword_20E3564F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D130, &qword_20E3564F8);
    return sub_20E04875C(v32, &qword_27C86D130, &qword_20E3564F8);
  }

  else
  {
    v35 = v39;
    sub_20E2FB8D8(v32, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D130, &qword_20E3564F8);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20E0486F4(v3, &v13 - v9, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        result = sub_20E26CFD4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 2u:
        result = sub_20E26D138(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 3u:
        sub_20E26D29C(v3, a1, a2, a3);
        goto LABEL_35;
      case 4u:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26D4D4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        sub_20E26D64C(v3, a1, a2, a3);
        goto LABEL_35;
      case 6u:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26D8B0(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26DA30(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26DBA8(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        sub_20E26DD28(v3, a1, a2, a3);
        goto LABEL_35;
      case 0xAu:
        sub_20E26DF60(v3, a1, a2, a3);
LABEL_35:
        result = sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        sub_20E26E198(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xCu:
        sub_20E26E3D0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xDu:
        sub_20E26E608(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xEu:
        sub_20E26E840(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        }

        goto LABEL_10;
      case 0xFu:
        sub_20E26EA78(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0x10u:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26ECB0(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        sub_20E26EE30(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        }

LABEL_10:
        sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        break;
      case 0x12u:
        result = sub_20E26CC28(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        result = sub_20E26CE74(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  return sub_20E3221A0();
}

uint64_t sub_20E26CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_20E0486F4(a1, v15 - v10, &qword_27C869C80, &qword_20E346288);
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_20E04875C(v11, &qword_27C869C80, &qword_20E346288);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
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

uint64_t sub_20E26CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869C80, &qword_20E346288);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    return sub_20E3224C0();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869C80, &qword_20E346288);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20E322510();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869C80, &qword_20E346288);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    return sub_20E322530();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869C80, &qword_20E346288);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E322540();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_20E322150();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_20E2FB9A4(&qword_280E12B18, MEMORY[0x277D21570], MEMORY[0x277D21568]);
    sub_20E322580();
    return (*(v9 + 8))(v11, v8);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D8B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - v3);
  sub_20E0486F4(a1, &v9 - v3, &qword_27C869C80, &qword_20E346288);
  v5 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_20E04875C(v4, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v7 = *v4;
    v6 = v4[1];
    sub_20E3224E0();
    return sub_20E05E888(v7, v6);
  }

  result = sub_20E2FB878(v4, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26DA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20E0486F4(a1, &v10 - v6, &qword_27C869C80, &qword_20E346288);
  v8 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E322540();
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26DBA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - v3);
  sub_20E0486F4(a1, &v9 - v3, &qword_27C869C80, &qword_20E346288);
  v5 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_20E04875C(v4, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    v7 = *v4;
    v6 = v4[1];
    sub_20E3224E0();
    return sub_20E05E888(v7, v6);
  }

  result = sub_20E2FB878(v4, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    sub_20E2FB9A4(&qword_27C86BFC8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    sub_20E2FB9A4(&qword_27C86BFE0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    sub_20E2FB9A4(&qword_27C86BFF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26E3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    sub_20E2FB9A4(&qword_27C86C020, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26E608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    sub_20E2FB9A4(&qword_27C86C038, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    sub_20E2FB9A4(&qword_27C86C050, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    sub_20E2FB9A4(&qword_27C86C068, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26ECB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - v3);
  sub_20E0486F4(a1, &v9 - v3, &qword_27C869C80, &qword_20E346288);
  v5 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_20E04875C(v4, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    v7 = *v4;
    v6 = v4[1];
    sub_20E3224E0();
    return sub_20E05E888(v7, v6);
  }

  result = sub_20E2FB878(v4, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C80, &qword_20E346288);
  v11 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_20E04875C(v7, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_20E2FB9A4(&qword_27C86C080, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_20E322580();
    return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  }

  result = sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26F120(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E26F1C0(uint64_t a1)
{
  sub_20E2FB9A4(qword_280E0F378, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_20E322470();
}

uint64_t sub_20E26F22C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(qword_280E0F378, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_20E322480();
}

uint64_t sub_20E26F2AC()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6C616D696365442ELL, 0xE800000000000000);

  qword_27C86A7F8 = v1;
  qword_27C86A800 = v2;
  return result;
}

uint64_t sub_20E26F378()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A808);
  __swift_project_value_buffer(v0, qword_27C86A808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sign";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "exponent";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "significand";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E26F6A4(a1, v5, a2, a3);
          break;
        case 2:
          sub_20E322390();
          break;
        case 1:
          sub_20E24F6A8();
          sub_20E322310();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E26F6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_20E322160();
  sub_20E2FB9A4(&qword_27C86D0F0, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_20E24F6A8(), result = sub_20E3224D0(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_20E322510(), !v4))
    {
      result = sub_20E26F83C(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E26F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C88, &qword_20E346290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_20E322160();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C869C88, &qword_20E346290);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C88, &qword_20E346290);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_20E2FB9A4(&qword_27C86D0F0, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  sub_20E322580();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_20E26FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = sub_20E322160();
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20E26FB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE38, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E26FC1C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_20E322470();
}

uint64_t sub_20E26FC88(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_20E322480();
}

uint64_t sub_20E26FD08()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A820);
  __swift_project_value_buffer(v0, qword_27C86A820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Sign_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Sign_MINUS";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Sign_PLUS";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E26FF78()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6572757361654D2ELL, 0xEC000000746E656DLL);

  qword_27C86A838 = v1;
  qword_27C86A840 = v2;
  return result;
}

uint64_t sub_20E27004C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A848);
  __swift_project_value_buffer(v0, qword_27C86A848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
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
  *v11 = "unitType";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E24F7A4();
          sub_20E322310();
          break;
        case 2:
          sub_20E3223C0();
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

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    if (*(v3 + 16) == 0.0 || (result = sub_20E322530(), !v4))
    {
      if (!*(v3 + 24) || (sub_20E24F7A4(), result = sub_20E3224D0(), !v4))
      {
        type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2704C0@<X0>(uint64_t a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_20E270554(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2705F4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BFC8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_20E322470();
}

uint64_t sub_20E270660(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BFC8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_20E322480();
}

uint64_t sub_20E2706E0()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x636E65727275432ELL, 0xEF746E756F6D4179);

  qword_27C86A860 = v1;
  *algn_27C86A868 = v2;
  return result;
}

uint64_t sub_20E2707B8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A870);
  __swift_project_value_buffer(v0, qword_27C86A870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "amount";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currencyIdentifier";
  *(v10 + 1) = 18;
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

uint64_t sub_20E270A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  return sub_20E322430();
}

uint64_t sub_20E270AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E270C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C90, &qword_20E346298);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869C90, &qword_20E346298);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C90, &qword_20E346298);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
}

uint64_t sub_20E270E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E2710F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E271190(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BFE0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_20E322470();
}

uint64_t sub_20E2711FC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BFE0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_20E322480();
}

uint64_t sub_20E27127C()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x746E656D7961502ELL, 0xEE00646F6874654DLL);

  qword_27C86A888 = v1;
  qword_27C86A890 = v2;
  return result;
}

uint64_t sub_20E271354()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A898);
  __swift_project_value_buffer(v0, qword_27C86A898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identificationHint";
  *(v10 + 1) = 18;
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

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E271680(a1, v5, a2, a3);
          break;
        case 2:
          sub_20E3223D0();
          break;
        case 1:
          sub_20E24F654();
          sub_20E322310();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E271680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (!*v3 || (sub_20E24F654(), result = sub_20E3224D0(), !v4))
  {
    if (*(v3 + 16))
    {
      result = sub_20E322540();
    }

    if (!v4)
    {
      sub_20E27181C(v3, v7, a2, a3);
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E27181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E271A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E271B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE20, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E271BFC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BFF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_20E322470();
}

uint64_t sub_20E271C68(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BFF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_20E322480();
}

uint64_t sub_20E271CE8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A8B0);
  __swift_project_value_buffer(v0, qword_27C86A8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20E342190;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "Type_UNSPECIFIED";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Type_CHECKING";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Type_SAVINGS";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "Type_BROKERAGE";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Type_DEBIT";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "Type_CREDIT";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Type_PREPAID";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "Type_STORE";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "Type_APPLE_PAY";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E2720C8()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x616D6563616C502ELL, 0xEA00000000006B72);

  qword_27C86A8C8 = v1;
  qword_27C86A8D0 = v2;
  return result;
}

uint64_t sub_20E272198()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A8D8);
  __swift_project_value_buffer(v0, qword_27C86A8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placemark";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2723D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E2724CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_20E3224E0();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v12;
    v16 = v12 >> 32;
    goto LABEL_8;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2725BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E272878(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE18, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E272918(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C020, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_20E322470();
}

uint64_t sub_20E272984(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C020, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_20E322480();
}

uint64_t sub_20E272A30()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6E6F737265502ELL, 0xE700000000000000);

  qword_27C86A8F0 = v1;
  *algn_27C86A8F8 = v2;
  return result;
}

uint64_t sub_20E272AFC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A900);
  __swift_project_value_buffer(v0, qword_27C86A900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "person";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E272D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E272E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E2730EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27318C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C038, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_20E322470();
}

uint64_t sub_20E2731F8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C038, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_20E322480();
}

uint64_t sub_20E2732A4()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x656C69462ELL, 0xE500000000000000);

  qword_27C86A918 = v1;
  qword_27C86A920 = v2;
  return result;
}

uint64_t sub_20E27336C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A928);
  __swift_project_value_buffer(v0, qword_27C86A928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2735AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E2736A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

double sub_20E273904@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v4 = *(a1 + 20);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a3 = xmmword_20E326350;
  return result;
}

uint64_t sub_20E2739E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E273A88(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C050, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_20E322470();
}

uint64_t sub_20E273AF4(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C050, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_20E322480();
}

uint64_t sub_20E273BA0()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](1886404910, 0xE400000000000000);

  qword_27C86A940 = v1;
  *algn_27C86A948 = v2;
  return result;
}

uint64_t sub_20E273C64()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A950);
  __swift_project_value_buffer(v0, qword_27C86A950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
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
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E273EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E273F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
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

uint64_t sub_20E27405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E274318(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE00, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2743B8(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C068, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_20E322470();
}

uint64_t sub_20E274424(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C068, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_20E322480();
}

uint64_t sub_20E2744D0()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6D6F43657461442ELL, 0xEF73746E656E6F70);

  qword_27C86A968 = v1;
  qword_27C86A970 = v2;
  return result;
}

uint64_t sub_20E2745A8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A978);
  __swift_project_value_buffer(v0, qword_27C86A978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20E34A210;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "calendar";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "timeZoneIdentifier";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "era";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "year";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "month";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "day";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hour";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minute";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "second";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "nanosecond";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "weekday";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "weekdayOrdinal";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "quarter";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "weekOfMonth";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "weekOfYear";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "yearForWeekOfYear";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
          sub_20E2FB9A4(&qword_27C86C0A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
          sub_20E322430();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
          sub_20E3223D0();
          break;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
          type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
          sub_20E322380();
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E274F34(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E28524C(v3, a1, a2, a3, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, 2);
    sub_20E29FD18(v3, a1, a2, a3, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_20E275144(v3, a1, a2, a3);
    sub_20E2751BC(v3, a1, a2, a3);
    sub_20E275234(v3, a1, a2, a3);
    sub_20E2752AC(v3, a1, a2, a3);
    sub_20E275324(v3, a1, a2, a3);
    sub_20E27539C(v3, a1, a2, a3);
    sub_20E275414(v3, a1, a2, a3);
    sub_20E27548C(v3, a1, a2, a3);
    sub_20E275504(v3, a1, a2, a3);
    sub_20E27557C(v3, a1, a2, a3);
    sub_20E2755F4(v3, a1, a2, a3);
    sub_20E27566C(v3, a1, a2, a3);
    sub_20E2756E4(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E274F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C98, &unk_20E3462A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869C98, &unk_20E3462A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C98, &unk_20E3462A0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_20E2FB9A4(&qword_27C86C0A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
}

uint64_t sub_20E275144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2751BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E275234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2752AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E275324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E27539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E275414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E27548C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E275504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E27557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 64) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2755F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 68) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E27566C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 72) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2756E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  if ((*(a1 + *(result + 76) + 8) & 1) == 0)
  {
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2757D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E275844(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E27590C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2759AC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C080, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_20E322470();
}

uint64_t sub_20E275A18(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C080, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_20E322480();
}

uint64_t sub_20E275A98()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A990);
  __swift_project_value_buffer(v0, qword_27C86A990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20E3421A0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "UNSPECIFIED";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "GREGORIAN";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "BUDDHIST";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CHINESE";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "COPTIC";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ETHIOPIC_AMETE_MIHRET";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ETHIOPIC_AMETE_ALEM";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "HEBREW";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ISO8601";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "INDIAN";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ISLAMIC";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ISLAMIC_CIVIL";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "JAPANESE";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PERSIAN";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "REPUBLIC_OF_CHINA";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ISLAMIC_TABULAR";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ISLAMIC_UMM_AL_QURA";
  *(v37 + 8) = 19;
  *(v37 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E27605C()
{
  if (qword_27C863360 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A968;
  v2 = qword_27C86A970;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x61646E656C61432ELL, 0xE900000000000072);

  qword_27C86A9A8 = v1;
  qword_27C86A9B0 = v2;
  return result;
}

uint64_t sub_20E27612C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A9B8);
  __swift_project_value_buffer(v0, qword_27C86A9B8);
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
  *v10 = "timeZoneIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localeIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "firstWeekday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "minimumDaysInFirstWeek";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_20E24F600();
          sub_20E322310();
        }

        else if (result == 2)
        {
          sub_20E3223E0();
        }
      }

      else if (result == 3)
      {
        sub_20E3223D0();
      }

      else if (result == 4 || result == 5)
      {
        sub_20E322390();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_20E24F600(), result = sub_20E3224D0(), !v4))
  {
    result = *(v3 + 8);
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_20E322540(), !v4))
    {
      if (*(v3 + 48))
      {
        result = sub_20E322540();
      }

      if (!v4)
      {
        if (*(v3 + 24))
        {
          sub_20E322510();
        }

        if (*(v3 + 32))
        {
          sub_20E322510();
        }

        type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E27669C@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_20E276734(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2767D4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C0A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_20E322470();
}

uint64_t sub_20E276840(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C0A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_20E322480();
}

uint64_t sub_20E2768C0()
{
  result = MEMORY[0x20F32BF40](0xD000000000000011, 0x800000020E363260);
  qword_27C86A9D0 = 0xD000000000000012;
  *algn_27C86A9D8 = 0x800000020E3615A0;
  return result;
}

uint64_t sub_20E27695C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A9E0);
  __swift_project_value_buffer(v0, qword_27C86A9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "caseValue";
  *(v10 + 1) = 9;
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

uint64_t sub_20E276BE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        sub_20E3223E0();
        break;
      case 1:
        a4(a1, v9, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_20E276CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E276D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E276E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void *, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    v14 = v6[1];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = *v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_20E322540();
    }

    a5(v6, a1, a2, a3);
    a6(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E276F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E277174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E277430(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDE8, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2774D0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C0C0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_20E322470();
}

uint64_t sub_20E27753C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C0C0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_20E322480();
}

uint64_t sub_20E277610()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AA08);
  __swift_project_value_buffer(v0, qword_27C86AA08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E326320;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "identifier";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "properties";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "hydratedAppEntity";
  *(v14 + 8) = 17;
  *(v14 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.EntityValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E2779F0(a1, v5, a2, a3);
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
          sub_20E277AA4(a1, v5, a2, a3);
          break;
        case 4:
          sub_20E277B9C(a1, v5, a2, a3);
          break;
        case 5:
          type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
          sub_20E322320();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E2779F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E277AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20E322170();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E2FB9A4(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322290();
}

uint64_t sub_20E277B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.EntityValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E277E08(v3, a1, a2, a3);
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

    if (*(v3[2] + 16))
    {
      sub_20E322170();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_20E2FB9A4(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_20E322490();
    }

    sub_20E278024(v3, a1, a2, a3);
    sub_20E278240(v3);
    type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E277E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E278024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_20E0486F4(a1 + *(v12 + 28), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E278240(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_20E05E834(*v3, *(v3 + 8));
    sub_20E3224E0();
    return sub_20E047D10(v5, v4);
  }

  return result;
}

unint64_t sub_20E278328@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  *&a2[a1[8]] = xmmword_20E323EA0;
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  result = sub_20E04916C(MEMORY[0x277D84F90]);
  *(a2 + 2) = result;
  return result;
}

uint64_t sub_20E278464(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDE0, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E278504(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C0D8, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return sub_20E322470();
}

uint64_t sub_20E278570(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C0D8, type metadata accessor for ToolKitProtoTypedValue.EntityValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityValue);

  return sub_20E322480();
}

uint64_t sub_20E2785F0()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E363220);
  qword_27C86AA20 = 0xD000000000000012;
  *algn_27C86AA28 = 0x800000020E3615A0;
  return result;
}

uint64_t sub_20E27868C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AA30);
  __swift_project_value_buffer(v0, qword_27C86AA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E27898C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E278B3C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_20E322570();
    }

    type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E278B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E278DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDD8, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E278E98(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C0F0, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return sub_20E322470();
}

uint64_t sub_20E278F04(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C0F0, type metadata accessor for ToolKitProtoTypedValue.CollectionValue, &protocol conformance descriptor for ToolKitProtoTypedValue.CollectionValue);

  return sub_20E322480();
}

uint64_t sub_20E279018()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AA58);
  __swift_project_value_buffer(v0, qword_27C86AA58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E279244(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = sub_20E3222B0();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeIdentifier(0);
        sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
        sub_20E322430();
      }

      else if (result == 2)
      {
        a4(a1, v7, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  type metadata accessor for ToolKitProtoQuery(0);
  sub_20E2FB9A4(&qword_27C86C4A8, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);
  return sub_20E322430();
}

uint64_t sub_20E279454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(void))
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

uint64_t sub_20E2794FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoQuery(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  sub_20E0486F4(a1 + *(Value + 20), v7, &qword_27C863F28, &qword_20E325D30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863F28, &qword_20E325D30);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoQuery);
  sub_20E2FB9A4(&qword_27C86C4A8, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoQuery);
}

uint64_t sub_20E2797E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDD0, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E279884(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C108, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return sub_20E322470();
}

uint64_t sub_20E2798F0(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C108, type metadata accessor for ToolKitProtoTypedValue.QueryValue, &protocol conformance descriptor for ToolKitProtoTypedValue.QueryValue);

  return sub_20E322480();
}

uint64_t sub_20E279970()
{
  result = MEMORY[0x20F32BF40](0xD000000000000016, 0x800000020E363200);
  qword_27C86AA70 = 0xD000000000000012;
  *algn_27C86AA78 = 0x800000020E3615A0;
  return result;
}

uint64_t sub_20E279A04()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AA80);
  __swift_project_value_buffer(v0, qword_27C86AA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
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

uint64_t sub_20E279C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E279D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E279E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E27A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E27A2CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E27A3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDC8, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27A490(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C120, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_20E322470();
}

uint64_t sub_20E27A4FC(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C120, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue, &protocol conformance descriptor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_20E322480();
}

uint64_t sub_20E27A5AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000012;
  *a5 = 0x800000020E3615A0;
  return result;
}

uint64_t sub_20E27A640()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AAA8);
  __swift_project_value_buffer(v0, qword_27C86AAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedTypeInstance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "storage";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E27AA64(a1, v5, a2, a3);
          break;
        case 2:
          sub_20E27A9B0(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for ToolKitProtoTypeIdentifier(0);
          sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
          sub_20E322430();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E27AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  sub_20E2FB9A4(&qword_27C86C150, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E045C58(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E27ABC0(v3, a1, a2, a3);
    sub_20E27ADDC(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E27ABC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863C48, &qword_20E323F30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E27ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA0, &qword_20E3462B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C869CA0, &qword_20E3462B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CA0, &qword_20E3462B0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_20E2FB9A4(&qword_27C86C150, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
}

uint64_t sub_20E27B040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 20);
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E27B198(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDC0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27B238(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C138, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return sub_20E322470();
}

uint64_t sub_20E27B2A4(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C138, type metadata accessor for ToolKitProtoTypedValue.DeferredValue, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue);

  return sub_20E322480();
}

uint64_t sub_20E27B324()
{
  if (qword_27C8633D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AA98;
  v2 = qword_27C86AAA0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x656761726F74532ELL, 0xE800000000000000);

  qword_27C86AAC0 = v1;
  *algn_27C86AAC8 = v2;
  return result;
}

uint64_t sub_20E27B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA8, &unk_20E3462B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0E8, &qword_20E3564B8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_20E0486F4(v45, v11, &qword_27C869CA8, &unk_20E3462B8);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_20E04875C(v11, &qword_27C869CA8, &unk_20E3462B8);
    v26 = v40;
  }

  else
  {
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    sub_20E2FB8D8(v18, v16, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    sub_20E04875C(v23, &qword_27C86D0E8, &qword_20E3564B8);
    v27 = v38;
    sub_20E2FB8D8(v16, v38, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    sub_20E2FB8D8(v27, v23, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_20E2FB9A4(&qword_27C86C168, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v28 = v41;
  sub_20E322430();
  v29 = v39;
  if (v28)
  {
    return sub_20E04875C(v23, &qword_27C86D0E8, &qword_20E3564B8);
  }

  sub_20E0486F4(v23, v39, &qword_27C86D0E8, &qword_20E3564B8);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_20E04875C(v23, &qword_27C86D0E8, &qword_20E3564B8);
    return sub_20E04875C(v29, &qword_27C86D0E8, &qword_20E3564B8);
  }

  else
  {
    v31 = v36;
    sub_20E2FB8D8(v29, v36, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    if (v25 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v23, &qword_27C86D0E8, &qword_20E3564B8);
    v32 = v45;
    sub_20E04875C(v45, &qword_27C869CA8, &unk_20E3462B8);
    sub_20E2FB8D8(v31, v32, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_20E27B9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E27BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA8, &unk_20E3462B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CA8, &unk_20E3462B8);
  v11 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CA8, &unk_20E3462B8);
  }

  sub_20E2FB8D8(v7, v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_20E2FB9A4(&qword_27C86C168, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_20E322580();
  return sub_20E2FB878(v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
}

uint64_t sub_20E27BD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27BDE0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C150, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_20E322470();
}

uint64_t sub_20E27BE4C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C150, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_20E322480();
}

uint64_t sub_20E27BECC()
{
  if (qword_27C8633E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AAC0;
  v2 = *algn_27C86AAC8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0xD00000000000001BLL, 0x800000020E3631A0);

  qword_27C86AAE8 = v1;
  qword_27C86AAF0 = v2;
  return result;
}

uint64_t sub_20E27BF9C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AAF8);
  __swift_project_value_buffer(v0, qword_27C86AAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyKey";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E27C250(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDB0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27C2F0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C168, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_20E322470();
}

uint64_t sub_20E27C35C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C168, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &protocol conformance descriptor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_20E322480();
}

uint64_t sub_20E27C424()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AB10);
  __swift_project_value_buffer(v0, qword_27C86AB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "collection";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "optionalVariant";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "union";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "restricted";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "deferred";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeInstance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E27D3F8(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E27D7E0(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E27DBC8(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E27C848(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E27CC28(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E27D010(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E27C848(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v29 = v18 & 0xF000000000000007;
  if (!(v18 >> 61) && v29 != 0xF000000000000007)
  {

    sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypeIdentifier);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E0486F4(v16, v14, &qword_27C863B60, &qword_20E323F50);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
    return sub_20E04875C(v14, &qword_27C863B60, &qword_20E323F50);
  }

  else
  {
    v22 = v28;
    sub_20E2FB8D8(v14, v28, type metadata accessor for ToolKitProtoTypeIdentifier);
    if (v29 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypeIdentifier);
    v25 = *v27;
    *v27 = v23;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E27CC28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypeInstance);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v16, v14, &qword_27C863C48, &qword_20E323F30);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v14, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypeInstance);
    v25 = *v27;
    *v27 = v23 | 0x2000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E27D010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0C0, &qword_20E356490);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D0C0, &qword_20E356490);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C190, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D0C0, &qword_20E356490);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D0C0, &qword_20E356490);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D0C0, &qword_20E356490);
    return sub_20E04875C(v14, &qword_27C86D0C0, &qword_20E356490);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D0C0, &qword_20E356490);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    v25 = *v27;
    *v27 = v23 | 0x4000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E27D3F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0C8, &qword_20E356498);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D0C8, &qword_20E356498);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypeInstance.Union);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C1A8, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D0C8, &qword_20E356498);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D0C8, &qword_20E356498);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D0C8, &qword_20E356498);
    return sub_20E04875C(v14, &qword_27C86D0C8, &qword_20E356498);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypeInstance.Union);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D0C8, &qword_20E356498);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypeInstance.Union);
    v25 = *v27;
    *v27 = v23 | 0x6000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E27D7E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0D0, &qword_20E3564A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D0D0, &qword_20E3564A0);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C1C0, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D0D0, &qword_20E3564A0);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D0D0, &qword_20E3564A0);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D0D0, &qword_20E3564A0);
    return sub_20E04875C(v14, &qword_27C86D0D0, &qword_20E3564A0);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D0D0, &qword_20E3564A0);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v25 = *v27;
    *v27 = v23 | 0x8000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E27DBC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0D8, &qword_20E3564A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D0D8, &qword_20E3564A8);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C1D8, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D0D8, &qword_20E3564A8);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D0D8, &qword_20E3564A8);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D0D8, &qword_20E3564A8);
    return sub_20E04875C(v14, &qword_27C86D0D8, &qword_20E3564A8);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D0D8, &qword_20E3564A8);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    v25 = *v27;
    *v27 = v23 | 0xA000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t ToolKitProtoTypeInstance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*v3 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v6 = *v3 >> 61;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      result = sub_20E27E4A4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else if (v6 == 4)
    {
      result = sub_20E27E5FC(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_20E27E754(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      result = sub_20E27E1F4(v3, a1, a2, a3);
      if (!v4)
      {
LABEL_2:
        type metadata accessor for ToolKitProtoTypeInstance(0);
        return sub_20E3221A0();
      }
    }

    else
    {
      result = sub_20E27E34C(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_20E27E0A4(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_20E27E0A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v7, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
    sub_20E322580();
    return sub_20E2FB878(v7, type metadata accessor for ToolKitProtoTypeIdentifier);
  }

  return result;
}

uint64_t sub_20E27E1F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeInstance);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E34C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_20E2FB9A4(&qword_27C86C190, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E4A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_20E2FB9A4(&qword_27C86C1A8, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeInstance.Union);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E5FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_20E2FB9A4(&qword_27C86C1C0, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_20E2FB9A4(&qword_27C86C1D8, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E940(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDA8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27E9E0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return sub_20E322470();
}

uint64_t sub_20E27EA4C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);

  return sub_20E322480();
}

uint64_t sub_20E27EB1C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AB38);
  __swift_project_value_buffer(v0, qword_27C86AB38);
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
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeInstance.Optional.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeInstance(0);
        sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E27EE1C(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27EE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E27EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E27F20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDA0, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27F2AC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C190, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return sub_20E322470();
}

uint64_t sub_20E27F318(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C190, type metadata accessor for ToolKitProtoTypeInstance.Optional, &protocol conformance descriptor for ToolKitProtoTypeInstance.Optional);

  return sub_20E322480();
}

uint64_t ToolKitProtoTypeInstance.Union.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypeInstance(0), sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance), result = sub_20E322570(), !v4))
  {
    type metadata accessor for ToolKitProtoTypeInstance.Union(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E27F614(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD98, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27F6B4(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C1A8, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return sub_20E322470();
}

uint64_t sub_20E27F720(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C1A8, type metadata accessor for ToolKitProtoTypeInstance.Union, &protocol conformance descriptor for ToolKitProtoTypeInstance.Union);

  return sub_20E322480();
}

uint64_t sub_20E27F7B4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E27F8B4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AB88);
  __swift_project_value_buffer(v0, qword_27C86AB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
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
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeInstance.Restricted.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E27FBB4(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoRestrictionContext(0);
        sub_20E2FB9A4(&qword_27C86BAD8, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27FBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeInstance.Restricted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E27FD64(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoRestrictionContext(0);
      sub_20E2FB9A4(&qword_27C86BAD8, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);
      sub_20E322570();
    }

    type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E27FD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C863B60, &qword_20E323F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E280020(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD90, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2800C0(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C1C0, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return sub_20E322470();
}

uint64_t sub_20E28012C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C1C0, type metadata accessor for ToolKitProtoTypeInstance.Restricted, &protocol conformance descriptor for ToolKitProtoTypeInstance.Restricted);

  return sub_20E322480();
}

uint64_t sub_20E280214(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000014;
  *a5 = 0x800000020E3615C0;
  return result;
}

uint64_t sub_20E280358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
      sub_20E322430();
    }
  }

  return result;
}

uint64_t sub_20E28052C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD88, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2805CC(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C1D8, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return sub_20E322470();
}

uint64_t sub_20E280638(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C1D8, type metadata accessor for ToolKitProtoTypeInstance.Deferred, &protocol conformance descriptor for ToolKitProtoTypeInstance.Deferred);

  return sub_20E322480();
}

uint64_t sub_20E2806D4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ABC8);
  __swift_project_value_buffer(v0, qword_27C86ABC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E326320;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "inSet";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "representableAs";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "personReachableAs";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dateExpressibleAs";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "textTypedWith";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_20E280AA0(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_20E280E80(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_20E281268(a1, v5, a2, a3);
          break;
        case 4:
          sub_20E281334(a1, v5, a2, a3);
          break;
        case 5:
          sub_20E281400(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E280AA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0A8, &qword_20E356478);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v29 = v18 & 0xF000000000000007;
  if (!(v18 >> 61) && v29 != 0xF000000000000007)
  {

    sub_20E04875C(v16, &qword_27C86D0A8, &qword_20E356478);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C220, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D0A8, &qword_20E356478);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D0A8, &qword_20E356478);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D0A8, &qword_20E356478);
    return sub_20E04875C(v14, &qword_27C86D0A8, &qword_20E356478);
  }

  else
  {
    v22 = v28;
    sub_20E2FB8D8(v14, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    if (v29 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D0A8, &qword_20E356478);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    v25 = *v27;
    *v27 = v23;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E280E80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0B0, &qword_20E356480);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D0B0, &qword_20E356480);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C298, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D0B0, &qword_20E356480);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D0B0, &qword_20E356480);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D0B0, &qword_20E356480);
    return sub_20E04875C(v14, &qword_27C86D0B0, &qword_20E356480);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D0B0, &qword_20E356480);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    v25 = *v27;
    *v27 = v23 | 0x2000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t sub_20E281400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0B8, &qword_20E356488);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v6 + 56);
  v17(&v26 - v15, 1, 1, v5);
  v27 = a1;
  v18 = *a1;
  v28 = v18 & 0xF000000000000007;
  if ((v18 & 0xF000000000000007) != 0xF000000000000007 && (v18 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_20E04875C(v16, &qword_27C86D0B8, &qword_20E356488);
    v19 = swift_projectBox();
    sub_20E2FB810(v19, v10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_20E047CA8(v18);
    sub_20E2FB8D8(v10, v16, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    v17(v16, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C2B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);
  v20 = v30;
  sub_20E322430();
  if (v20)
  {
    return sub_20E04875C(v16, &qword_27C86D0B8, &qword_20E356488);
  }

  sub_20E0486F4(v16, v14, &qword_27C86D0B8, &qword_20E356488);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_20E04875C(v16, &qword_27C86D0B8, &qword_20E356488);
    return sub_20E04875C(v14, &qword_27C86D0B8, &qword_20E356488);
  }

  else
  {
    v22 = v29;
    sub_20E2FB8D8(v14, v29, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    if (v28 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v16, &qword_27C86D0B8, &qword_20E356488);
    v23 = swift_allocBox();
    sub_20E2FB8D8(v22, v24, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    v25 = *v27;
    *v27 = v23 | 0x8000000000000000;
    return sub_20E047CA8(v25);
  }
}

uint64_t ToolKitProtoRestrictionContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*v3 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v6 = *v3 >> 61;
  if (v6 <= 1)
  {
    if (v6)
    {
      result = sub_20E281A14(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_20E2818C4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v6 == 2)
  {
    result = sub_20E281B6C(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  else if (v6 == 3)
  {
    result = sub_20E281C00(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_2:
      type metadata accessor for ToolKitProtoRestrictionContext(0);
      return sub_20E3221A0();
    }
  }

  else
  {
    result = sub_20E281C94(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_20E2818C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_20E2FB9A4(&qword_27C86C220, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);
    sub_20E322580();
    return sub_20E2FB878(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  }

  return result;
}

uint64_t sub_20E281A14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_20E2FB9A4(&qword_27C86C298, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs, &protocol conformance descriptor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_20E281B6C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x4000000000000000)
  {
    sub_20E24F5AC();
    return sub_20E3224D0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_20E281C00(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x6000000000000000)
  {
    sub_20E24F558();
    return sub_20E3224D0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E281C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v10 = swift_projectBox();
    sub_20E2FB810(v10, v8, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_20E2FB9A4(&qword_27C86C2B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith, &protocol conformance descriptor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_20E322580();
    return sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E281EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD80, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E281F8C(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86BAD8, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return sub_20E322470();
}

uint64_t sub_20E281FF8(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86BAD8, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);

  return sub_20E322480();
}

uint64_t sub_20E2820E0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ABE0);
  __swift_project_value_buffer(v0, qword_27C86ABE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E326320;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "PersonReachableAs_UNSPECIFIED";
  *(v5 + 8) = 29;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PersonReachableAs_CONTACT";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PersonReachableAs_PHONE";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PersonReachableAs_EMAIL";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "PersonReachableAs_EMAILORPHONE";
  *(v14 + 8) = 30;
  *(v14 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E2823C8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ABF8);
  __swift_project_value_buffer(v0, qword_27C86ABF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DateExpressibleAs_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DateExpressibleAs_DATE";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DateExpressibleAs_TIME";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DateExpressibleAs_DATE_AND_TIME";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2826B8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AC20);
  __swift_project_value_buffer(v0, qword_27C86AC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
        sub_20E2FB9A4(&qword_27C86C238, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E2829B8(a1, v5, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2829B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_20E322430();
}

uint64_t sub_20E282AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB0, &qword_20E3462C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C869CB0, &qword_20E3462C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869CB0, &qword_20E3462C8);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_20E2FB9A4(&qword_27C86C238, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
}

uint64_t sub_20E282CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C48, &qword_20E346250);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C869C48, &qword_20E346250);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C869C48, &qword_20E346250);
  }

  sub_20E2FB8D8(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E322580();
  return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_20E282F60@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E283080(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD78, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E283120(uint64_t a1)
{
  sub_20E2FB9A4(&qword_27C86C220, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return sub_20E322470();
}

uint64_t sub_20E28318C(uint64_t a1, uint64_t a2)
{
  sub_20E2FB9A4(&qword_27C86C220, type metadata accessor for ToolKitProtoRestrictionContext.InSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet);

  return sub_20E322480();
}

uint64_t sub_20E28320C()
{
  if (qword_27C863468 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AC10;
  v2 = *algn_27C86AC18;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x655365756C61562ELL, 0xE900000000000074);

  qword_27C86AC38 = v1;
  qword_27C86AC40 = v2;
  return result;
}

uint64_t sub_20E2832DC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AC48);
  __swift_project_value_buffer(v0, qword_27C86AC48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumeration";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "contentPropertyPossibleValues";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkQuery";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "standaloneLinkQuery";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "linkQueryOnParameter";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E284290(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E28484C(a1, v5, a2, a3);
          break;
        case 6:
          sub_20E284A40(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
          sub_20E3223D0();
          break;
        case 2:
          sub_20E283724(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E283CD4(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E283724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D090, &qword_20E356460);
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
  sub_20E0486F4(a1, v12, &qword_27C869CB8, &qword_20E3462D0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_20E04875C(v12, &qword_27C869CB8, &qword_20E3462D0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_20E2FB8D8(v12, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_20E2FB8D8(v19, v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v17, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v29 = v44;
    }

    else
    {
      sub_20E04875C(v24, &qword_27C86D090, &qword_20E356460);
      v31 = v39;
      sub_20E2FB8D8(v17, v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      sub_20E2FB8D8(v31, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_20E2FB9A4(&qword_27C86C250, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  v33 = v43;
  sub_20E322430();
  if (v33)
  {
    return sub_20E04875C(v24, &qword_27C86D090, &qword_20E356460);
  }

  sub_20E0486F4(v24, v32, &qword_27C86D090, &qword_20E356460);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_20E04875C(v24, &qword_27C86D090, &qword_20E356460);
    return sub_20E04875C(v32, &qword_27C86D090, &qword_20E356460);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v32, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    if (v28 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v24, &qword_27C86D090, &qword_20E356460);
    v36 = v38;
    sub_20E04875C(v38, &qword_27C869CB8, &qword_20E3462D0);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}