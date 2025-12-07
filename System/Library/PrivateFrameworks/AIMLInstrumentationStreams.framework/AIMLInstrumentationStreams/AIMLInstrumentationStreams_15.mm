uint64_t sub_23C6C8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD838, &unk_23C889D40);
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD838, &unk_23C889D40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_23C716EF0(&qword_27E1FE2A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C8E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD838, &unk_23C889D40);
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD838, &unk_23C889D40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_23C716EF0(&qword_27E1FE2B8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C9120(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE898, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C91C0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE288, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6C922C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE288, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6C92F8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD48);
  __swift_project_value_buffer(v0, qword_27E1FCD48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C6C971C(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
          sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
          sub_23C871194();
          break;
        case 1:
          sub_23C6C9668(a1, v5, a2, a3);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6C9668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C6C971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6C98E8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_23C8712F4();
    }

    sub_23C6C9B04(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C98E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FACC8, &unk_23C889C50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FACC8, &unk_23C889C50);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_23C6C9B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C6C9E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE890, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C9EA4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE2A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_23C8711F4();
}

uint64_t sub_23C6C9F10(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE2A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_23C871204();
}

uint64_t sub_23C6C9FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x800000023C8AD2B0;
  return result;
}

uint64_t sub_23C6CA090()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD70);
  __swift_project_value_buffer(v0, qword_27E1FCD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C6CA4B4(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
          sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
          sub_23C871194();
          break;
        case 1:
          sub_23C6CA400(a1, v5, a2, a3);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6CA400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C6CA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6CA680(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      sub_23C8712F4();
    }

    sub_23C6CA89C(v3, a1, a2, a3);
    type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6CA680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FACC8, &unk_23C889C50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FACC8, &unk_23C889C50);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_23C6CA89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C6CAB44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6CAC68(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE888, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6CAD08(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE2B8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_23C8711F4();
}

uint64_t sub_23C6CAD74(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE2B8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_23C871204();
}

uint64_t sub_23C6CAE50()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD88);
  __swift_project_value_buffer(v0, qword_27E1FCD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_23C87D720;
  v4 = v126 + v3;
  v5 = v126 + v3 + v1[14];
  *(v126 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoSystemToolProtocol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
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
          sub_23C6CCC10(v5, a1, a2, a3);
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
          sub_23C6CD1C0(v5, a1, a2, a3);
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
          sub_23C6CD77C(v5, a1, a2, a3);
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
          sub_23C6CDD38(v5, a1, a2, a3);
          break;
        case 51:
          sub_23C6CE2F4(v5, a1, a2, a3);
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
          sub_23C6CE8B0(v5, a1, a2, a3);
          break;
        case 55:
          sub_23C6CEE6C(v5, a1, a2, a3);
          break;
        case 56:
          sub_23C6CF428(v5, a1, a2, a3);
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
          sub_23C6CF9E4(v5, a1, a2, a3);
          break;
        case 61:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 60;
LABEL_65:
          sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FAC70, &qword_23C878FF0, type metadata accessor for ToolKitProtoSystemToolProtocolKind, v15);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6CCC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC58, &qword_23C8898B8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEC58, &qword_23C8898B8);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE2E0, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC58, &qword_23C8898B8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC58, &qword_23C8898B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC58, &qword_23C8898B8);
    return sub_23C585C34(v32, &qword_27E1FEC58, &qword_23C8898B8);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC58, &qword_23C8898B8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6CD1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC60, &qword_23C8898C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEC60, &qword_23C8898C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE2F8, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC60, &qword_23C8898C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC60, &qword_23C8898C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC60, &qword_23C8898C0);
    return sub_23C585C34(v32, &qword_27E1FEC60, &qword_23C8898C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC60, &qword_23C8898C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6CD77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC68, &qword_23C8898C8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FEC68, &qword_23C8898C8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE310, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC68, &qword_23C8898C8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC68, &qword_23C8898C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC68, &qword_23C8898C8);
    return sub_23C585C34(v32, &qword_27E1FEC68, &qword_23C8898C8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC68, &qword_23C8898C8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6CDD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC70, &qword_23C8898D0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E1FEC70, &qword_23C8898D0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE328, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC70, &qword_23C8898D0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC70, &qword_23C8898D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC70, &qword_23C8898D0);
    return sub_23C585C34(v32, &qword_27E1FEC70, &qword_23C8898D0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC70, &qword_23C8898D0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6CE2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC78, &qword_23C8898D8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E1FEC78, &qword_23C8898D8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE340, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC78, &qword_23C8898D8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC78, &qword_23C8898D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC78, &qword_23C8898D8);
    return sub_23C585C34(v32, &qword_27E1FEC78, &qword_23C8898D8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC78, &qword_23C8898D8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6CE8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC80, &qword_23C8898E0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E1FEC80, &qword_23C8898E0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE358, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC80, &qword_23C8898E0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC80, &qword_23C8898E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC80, &qword_23C8898E0);
    return sub_23C585C34(v32, &qword_27E1FEC80, &qword_23C8898E0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC80, &qword_23C8898E0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6CEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC88, &qword_23C8898E8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v24, &qword_27E1FEC88, &qword_23C8898E8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE370, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC88, &qword_23C8898E8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC88, &qword_23C8898E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC88, &qword_23C8898E8);
    return sub_23C585C34(v32, &qword_27E1FEC88, &qword_23C8898E8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC88, &qword_23C8898E8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6CF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC90, &qword_23C8898F0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v24, &qword_27E1FEC90, &qword_23C8898F0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE388, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC90, &qword_23C8898F0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC90, &qword_23C8898F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC90, &qword_23C8898F0);
    return sub_23C585C34(v32, &qword_27E1FEC90, &qword_23C8898F0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC90, &qword_23C8898F0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6CF9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC98, &qword_23C8898F8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC70, &qword_23C878FF0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC70, &qword_23C878FF0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v24, &qword_27E1FEC98, &qword_23C8898F8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE3A0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC98, &qword_23C8898F8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC98, &qword_23C8898F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC98, &qword_23C8898F8);
    return sub_23C585C34(v32, &qword_27E1FEC98, &qword_23C8898F8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC98, &qword_23C8898F8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoSystemToolProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C6D4470(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

        goto LABEL_56;
      case 2u:
        sub_23C6D691C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 3u:
        sub_23C6D791C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 4u:
        sub_23C6D7B54(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

        goto LABEL_56;
      case 5u:
        sub_23C6D8224(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 6u:
        sub_23C6D845C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 7u:
        sub_23C6D8694(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 8u:
        sub_23C6D8FB0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 9u:
        result = sub_23C6D08D0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_23C6D0B1C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_23C6D0D68(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_23C6D0FB4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_23C6D1434(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_23C6D1680(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_23C6D18CC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x10u:
        result = sub_23C6D1B18(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        result = sub_23C6D1D64(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x12u:
        result = sub_23C6D1FB0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x13u:
        result = sub_23C6D21FC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x14u:
        result = sub_23C6D2448(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x15u:
        result = sub_23C6D2694(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x16u:
        result = sub_23C6D28E0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x17u:
        result = sub_23C6D2B2C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x18u:
        result = sub_23C6D2D78(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x19u:
        result = sub_23C6D2FC4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Au:
        result = sub_23C6D3210(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Bu:
        result = sub_23C6D345C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Cu:
        result = sub_23C6D36A8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Du:
        result = sub_23C6D38F4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Eu:
        result = sub_23C6D3B40(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Fu:
        result = sub_23C6D3D8C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x20u:
        result = sub_23C6D3FD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x21u:
        result = sub_23C6D4224(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x22u:
        result = sub_23C6D46A8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x23u:
        result = sub_23C6D48F4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x24u:
        result = sub_23C6D4B40(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x25u:
        result = sub_23C6D4D8C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x26u:
        result = sub_23C6D4FD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x27u:
        result = sub_23C6D5224(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x28u:
        result = sub_23C6D5470(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x29u:
        result = sub_23C6D56BC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Au:
        result = sub_23C6D5908(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Bu:
        result = sub_23C6D5B54(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Cu:
        result = sub_23C6D5DA0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Du:
        result = sub_23C6D5FEC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Eu:
        result = sub_23C6D6238(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Fu:
        result = sub_23C6D6484(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x30u:
        result = sub_23C6D66D0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x31u:
        result = sub_23C6D6B54(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x32u:
        result = sub_23C6D6DA0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x33u:
        result = sub_23C6D6FEC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x34u:
        result = sub_23C6D7238(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x35u:
        result = sub_23C6D7484(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x36u:
        result = sub_23C6D76D0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x37u:
        result = sub_23C6D7D8C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x38u:
        result = sub_23C6D7FD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x39u:
        result = sub_23C6D88CC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Au:
        result = sub_23C6D8B18(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Bu:
        result = sub_23C6D8D64(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Cu:
        result = sub_23C6D91E8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C6D1200(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

LABEL_56:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        break;
    }
  }

  type metadata accessor for ToolKitProtoSystemToolProtocol(0);
  return sub_23C870F14();
}

uint64_t sub_23C6D08D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 9)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 10)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D0D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 11)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D0FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 12)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    sub_23C716EF0(&qword_27E1FE2E0, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D1434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D18CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 16)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 17)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 18)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 19)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 20)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 21)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D28E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 22)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 23)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 24)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 25)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 26)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D345C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 27)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D36A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 28)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D38F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 29)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D3B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 30)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D3D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 31)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D3FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 32)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 33)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    sub_23C716EF0(&qword_27E1FE2F8, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 34)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D48F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 35)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 36)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 37)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 38)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 39)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 40)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D56BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 41)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 42)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 43)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 44)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 45)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D6238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 46)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D6484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 47)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 48)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    sub_23C716EF0(&qword_27E1FE310, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D6B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 49)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D6DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 50)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D6FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 51)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D7238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 52)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D7484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 53)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D76D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 54)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    sub_23C716EF0(&qword_27E1FE328, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D7B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    sub_23C716EF0(&qword_27E1FE340, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D7D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 55)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D7FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 56)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D8224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    sub_23C716EF0(&qword_27E1FE358, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_23C716EF0(&qword_27E1FE370, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D8694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    sub_23C716EF0(&qword_27E1FE388, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D88CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 57)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D8B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 58)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D8D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 59)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC70, &qword_23C878FF0);
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    sub_23C716EF0(&qword_27E1FE3A0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D91E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 60)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D94E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE880, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6D9584(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD8D0, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return sub_23C8711F4();
}

uint64_t sub_23C6D95F0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD8D0, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return sub_23C871204();
}

uint64_t sub_23C6D9670()
{
  result = MEMORY[0x23EED7100](0xD000000000000015, 0x800000023C8ADCA0);
  qword_27E1FCDA0 = 0xD00000000000001ALL;
  *algn_27E1FCDA8 = 0x800000023C8AD2E0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_23C871084();
    }
  }

  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_23C871244(), !v4))
  {
    type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t static ToolKitProtoSystemToolProtocol.ConditionallyEnabled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6D99B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE878, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6D9A54(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE2E0, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_23C8711F4();
}

uint64_t sub_23C6D9AC0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE2E0, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_23C871204();
}

uint64_t sub_23C6D9B3C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6D9D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE870, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6D9E04(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE2F8, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_23C8711F4();
}

uint64_t sub_23C6D9E70(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE2F8, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_23C871204();
}

uint64_t sub_23C6D9EEC()
{
  result = MEMORY[0x23EED7100](0xD00000000000001DLL, 0x800000023C8ADC70);
  qword_27E1FCDF0 = 0xD00000000000001ALL;
  *algn_27E1FCDF8 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6D9FEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_23C871124();
    }
  }

  return result;
}

uint64_t sub_23C6DA088(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_23C8712A4(), !v5))
  {
    (a4)(0, a2, a3);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6DA1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE868, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DA274(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE310, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_23C8711F4();
}

uint64_t sub_23C6DA2E0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE310, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_23C871204();
}

uint64_t sub_23C6DA504(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE860, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DA5A4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE328, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_23C8711F4();
}

uint64_t sub_23C6DA610(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE328, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_23C871204();
}

uint64_t sub_23C6DA68C()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8ADC50);
  qword_27E1FCE40 = 0xD00000000000001ALL;
  *algn_27E1FCE48 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6DA72C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCE50);
  __swift_project_value_buffer(v0, qword_27E1FCE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityProperty";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6DA9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v9 = v6[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_23C8712C4(), !v7))
  {
    v12 = v6[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v6[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_23C8712C4(), !v7))
    {
      a6(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6DAAD8@<X0>(void *a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6DAB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE858, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DABF0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE340, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_23C8711F4();
}

uint64_t sub_23C6DAC5C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE340, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_23C871204();
}

uint64_t ToolKitProtoSystemToolProtocol.SiriKitIntent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C6DAEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE850, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DAF7C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE358, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_23C8711F4();
}

uint64_t sub_23C6DAFE8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE358, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_23C871204();
}

uint64_t sub_23C6DB064()
{
  result = MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8ADC00);
  qword_27E1FCE90 = 0xD00000000000001ALL;
  *algn_27E1FCE98 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6DB100()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCEA0);
  __swift_project_value_buffer(v0, qword_27E1FCEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C6DB660(a1, v5, a2, a3);
        break;
      case 2:
        sub_23C6DB40C(a1, v5, a2, a3, 0x100000001);
        break;
      case 1:
        sub_23C6DB40C(a1, v5, a2, a3, 0x100000000);
        break;
    }
  }

  return result;
}

uint64_t sub_23C6DB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
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
  if ((*(v20 + 5) & 1) == 0)
  {
    sub_23C871054();
  }

  v17 = v21;
  result = sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
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
      result = sub_23C6DB924(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_23C6DB7C4(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_23C871284();
    if (!v4)
    {
LABEL_2:
      type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6DB7C4(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) != 0 || (v10 = *a1, ((v10 | (*(a1 + 4) << 32)) & 0x100000000) == 0) || v10)
  {
    __break(1u);
  }

  else
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23C6DB924(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) == 0 && (v10 = *a1, ((v10 | (*(a1 + 4) << 32)) & 0x100000000) != 0) && v10)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6DBAD0@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 4) = 256;
  *a2 = 0;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C6DBB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE848, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DBBF4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE370, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_23C8711F4();
}

uint64_t sub_23C6DBC60(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE370, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_23C871204();
}

uint64_t sub_23C6DBCE0()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8ADBD0);
  qword_27E1FCEB8 = 0xD00000000000001ALL;
  unk_27E1FCEC0 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6DBEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE840, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DBF9C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE388, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_23C8711F4();
}

uint64_t sub_23C6DC008(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE388, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_23C871204();
}

uint64_t sub_23C6DC0B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6DC268(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE838, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DC308(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE3A0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_23C8711F4();
}

uint64_t sub_23C6DC374(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE3A0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_23C871204();
}

uint64_t ToolKitProtoToolDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_23C871044();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_23C6DC514(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE830, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DC5B4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE3B8, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6DC620(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE3B8, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6DC69C()
{
  result = MEMORY[0x23EED7100](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27E1FCF20 = 0xD000000000000016;
  *algn_27E1FCF28 = 0x800000023C8AD300;
  return result;
}

uint64_t sub_23C6DC734()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF30);
  __swift_project_value_buffer(v0, qword_27E1FCF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_23C87D730;
  v4 = v47 + v3;
  v5 = v47 + v3 + v1[14];
  *(v47 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
          sub_23C871164();
          break;
        case 3:
          v13 = v4;
          sub_23C70C2F0();
          goto LABEL_22;
        case 4:
        case 18:
          v11 = v4;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
          sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
          goto LABEL_5;
        case 5:
          sub_23C6DD20C(a1, v5, a2, a3);
          break;
        case 6:
        case 8:
          type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
          sub_23C871154();
          break;
        case 7:
          sub_23C6DD2C0(a1, v5, a2, a3);
          break;
        case 9:
          v11 = v4;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
          sub_23C716EF0(&qword_27E1FD8B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);
          goto LABEL_5;
        case 10:
          sub_23C871124();
          break;
        case 11:
          sub_23C6DD374(a1, v5, a2, a3);
          break;
        case 12:
          v11 = v4;
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
          goto LABEL_5;
        case 13:
          v12 = v4;
          sub_23C70C344();
          goto LABEL_19;
        case 14:
          v13 = v4;
          sub_23C70C398();
LABEL_22:
          v4 = v13;
          sub_23C8710A4();
          break;
        case 15:
          v11 = v4;
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
          goto LABEL_5;
        case 16:
          v11 = v4;
          type metadata accessor for ToolKitProtoSystemToolProtocol(0);
          sub_23C716EF0(&qword_27E1FD8D0, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);
LABEL_5:
          v4 = v11;
          sub_23C871194();
          break;
        case 17:
          sub_23C6DD428(a1, v5, a2, a3);
          break;
        case 19:
          sub_23C6DD4DC(a1, v5, a2, a3);
          break;
        case 20:
          sub_23C6DD590(a1, v5, a2, a3);
          break;
        case 21:
          v12 = v4;
          sub_23C70C3EC();
LABEL_19:
          v4 = v12;
          sub_23C871064();
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6DD20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_23C716EF0(&qword_27E1FE558, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  sub_23C716EF0(&qword_27E1FE540, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  sub_23C716EF0(&qword_27E1FE500, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoToolDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_23C8712C4(), !v4))
    {
      if (!*(v3 + 32) || (sub_23C70C2F0(), result = sub_23C871254(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0), sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter), result = sub_23C8712F4(), !v4))
        {
          result = sub_23C6DDBE8(v3, a1, a2, a3);
          if (!v4)
          {
            sub_23C6DDE04(v3, a1, a2, a3);
            sub_23C6DDE7C(v3, a1, a2, a3);
            sub_23C6DE098(v3, a1, a2, a3);
            if (*(*(v3 + 48) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
              sub_23C716EF0(&qword_27E1FD8B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);
              sub_23C8712F4();
            }

            if (*(*(v3 + 56) + 16))
            {
              sub_23C8712A4();
            }

            sub_23C6DE110(v3, a1, a2, a3);
            if (*(*(v3 + 64) + 16))
            {
              type metadata accessor for ToolKitProtoRuntimeRequirement(0);
              sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
              sub_23C8712F4();
            }

            if (*(*(v3 + 72) + 16))
            {
              sub_23C70C344();
              sub_23C871234();
            }

            if (*(v3 + 80))
            {
              sub_23C70C398();
              sub_23C871254();
            }

            if (*(*(v3 + 88) + 16))
            {
              type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
              sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
              sub_23C8712F4();
            }

            if (*(*(v3 + 96) + 16))
            {
              type metadata accessor for ToolKitProtoSystemToolProtocol(0);
              sub_23C716EF0(&qword_27E1FD8D0, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);
              sub_23C8712F4();
            }

            sub_23C6DE32C(v3, a1, a2, a3);
            if (*(*(v3 + 104) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
              sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
              sub_23C8712F4();
            }

            sub_23C6DE548(v3, a1, a2, a3);
            sub_23C6DE764(v3, a1, a2, a3);
            if (*(*(v3 + 112) + 16))
            {
              sub_23C70C3EC();
              sub_23C871234();
            }

            type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6DDBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v12 + 68), v7, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C6DDE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 72) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C6DDE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC48, &unk_23C889D50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v12 + 76), v7, &qword_27E1FEC48, &unk_23C889D50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEC48, &unk_23C889D50);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoAppDefinition);
  sub_23C716EF0(&qword_27E1FE558, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoAppDefinition);
}

uint64_t sub_23C6DE098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 80) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C6DE110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC40, &qword_23C8898A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v12 + 84), v7, &qword_27E1FEC40, &qword_23C8898A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEC40, &qword_23C8898A8);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C716EF0(&qword_27E1FE540, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
}

uint64_t sub_23C6DE32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC38, &unk_23C889D60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v12 + 88), v7, &qword_27E1FEC38, &unk_23C889D60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEC38, &unk_23C889D60);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_23C716EF0(&qword_27E1FE500, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
}

uint64_t sub_23C6DE548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC30, &qword_23C8898A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v12 + 92), v7, &qword_27E1FEC30, &qword_23C8898A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEC30, &qword_23C8898A0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_23C6DE764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC30, &qword_23C8898A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v12 + 96), v7, &qword_27E1FEC30, &qword_23C8898A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEC30, &qword_23C8898A0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_23C6DE9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 100);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C6DEA68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C6DEB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE828, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DEBD0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return sub_23C8711F4();
}

uint64_t sub_23C6DEC3C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return sub_23C871204();
}

uint64_t sub_23C6DECBC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF48);
  __swift_project_value_buffer(v0, qword_27E1FCF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ToolType_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t sub_23C6DEF60()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF60);
  __swift_project_value_buffer(v0, qword_27E1FCF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C87D6F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Flag_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t sub_23C6DF324()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF78);
  __swift_project_value_buffer(v0, qword_27E1FCF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VisibilityFlag_VISIBLE_FOR_SHORTCUTS";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibilityFlag_VISIBLE_FOR_ASSISTANT";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6DF548()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF90);
  __swift_project_value_buffer(v0, qword_27E1FCF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AuthenticationPolicy_UNSPECIFIED";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t sub_23C6DF7EC()
{
  if (qword_27E1F8920 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCF20;
  v2 = *algn_27E1FCF28;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x74656D617261502ELL, 0xEA00000000007265);

  qword_27E1FCFA8 = v1;
  unk_27E1FCFB0 = v2;
  return result;
}

uint64_t sub_23C6DF8BC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCFB8);
  __swift_project_value_buffer(v0, qword_27E1FCFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "key";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        if (result == 1 || result == 2)
        {
          sub_23C871164();
        }

        else if (result == 3)
        {
          sub_23C871154();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            sub_23C6DFDF0(a1, v5, a2, a3);
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_23C716EF0(&qword_27E1FD8E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          goto LABEL_20;
        }

        if (result == 6)
        {
          v11 = v4;
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
LABEL_20:
          v4 = v11;
          sub_23C871194();
          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_23C70C440();
          sub_23C871064();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6DFDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = v3[2];
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_23C8712C4(), !v4))
    {
      if (v3[8])
      {
        result = sub_23C8712C4();
      }

      if (!v4)
      {
        sub_23C6E00E8(v3, a1, a2, a3);
        if (*(v3[4] + 16))
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_23C716EF0(&qword_27E1FD8E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          sub_23C8712F4();
        }

        if (*(v3[5] + 16))
        {
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
          sub_23C8712F4();
        }

        if (*(v3[6] + 16))
        {
          sub_23C70C440();
          sub_23C871234();
        }

        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6E00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_23C5855B0(a1 + *(v12 + 40), v7, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C6E0350@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
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

uint64_t sub_23C6E0444(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE820, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E04E4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_23C8711F4();
}

uint64_t sub_23C6E0550(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_23C871204();
}

uint64_t sub_23C6E05D0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCFD0);
  __swift_project_value_buffer(v0, qword_27E1FCFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ParameterFlags_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t sub_23C6E0840()
{
  if (qword_27E1F8950 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCFA8;
  v2 = qword_27E1FCFB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6F6974616C65522ELL, 0xED0000706968736ELL);

  qword_27E1FCFE8 = v1;
  unk_27E1FCFF0 = v2;
  return result;
}

uint64_t sub_23C6E0918()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCFF8);
  __swift_project_value_buffer(v0, qword_27E1FCFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relation";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E0B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  return sub_23C8711A4();
}

uint64_t sub_23C6E0C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC20, &unk_23C889D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAC20, &unk_23C889D70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAC20, &unk_23C889D70);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
}

uint64_t sub_23C6E0ECC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v4 = *(a1 + 20);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6E0FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE818, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E104C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD8E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_23C8711F4();
}

uint64_t sub_23C6E10B8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD8E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_23C871204();
}

uint64_t sub_23C6E1138()
{
  if (qword_27E1F8968 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCFE8;
  v2 = qword_27E1FCFF0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6F6974616C65522ELL, 0xE90000000000006ELL);

  qword_27E1FD010 = v1;
  *algn_27E1FD018 = v2;
  return result;
}

uint64_t sub_23C6E1208()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD020);
  __swift_project_value_buffer(v0, qword_27E1FD020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "isSome";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            sub_23C6E2E48(v5, a1, a2, a3);
          }

          else if (result == 8)
          {
            sub_23C6E3404(v5, a1, a2, a3);
          }
        }

        else if (result == 5)
        {
          sub_23C6E22D0(v5, a1, a2, a3);
        }

        else
        {
          sub_23C6E288C(v5, a1, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_23C6E1764(v5, a1, a2, a3);
        }

        else
        {
          sub_23C6E1D14(v5, a1, a2, a3);
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

        sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FAC10, &qword_23C878FA8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind, v15);
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6E1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC00, &qword_23C889870);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC10, &qword_23C878FA8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC10, &qword_23C878FA8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FEC00, &qword_23C889870);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE460, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC00, &qword_23C889870);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC00, &qword_23C889870);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC00, &qword_23C889870);
    return sub_23C585C34(v32, &qword_27E1FEC00, &qword_23C889870);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC00, &qword_23C889870);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6E1D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC08, &qword_23C889878);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC10, &qword_23C878FA8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC10, &qword_23C878FA8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEC08, &qword_23C889878);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE478, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC08, &qword_23C889878);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC08, &qword_23C889878);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC08, &qword_23C889878);
    return sub_23C585C34(v32, &qword_27E1FEC08, &qword_23C889878);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC08, &qword_23C889878);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6E22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC10, &qword_23C889880);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC10, &qword_23C878FA8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC10, &qword_23C878FA8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FEC10, &qword_23C889880);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE490, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC10, &qword_23C889880);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC10, &qword_23C889880);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC10, &qword_23C889880);
    return sub_23C585C34(v32, &qword_27E1FEC10, &qword_23C889880);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC10, &qword_23C889880);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6E288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC18, &qword_23C889888);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC10, &qword_23C878FA8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC10, &qword_23C878FA8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E1FEC18, &qword_23C889888);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE4A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC18, &qword_23C889888);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC18, &qword_23C889888);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC18, &qword_23C889888);
    return sub_23C585C34(v32, &qword_27E1FEC18, &qword_23C889888);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC18, &qword_23C889888);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6E2E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC20, &qword_23C889890);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC10, &qword_23C878FA8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC10, &qword_23C878FA8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E1FEC20, &qword_23C889890);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE4C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC20, &qword_23C889890);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC20, &qword_23C889890);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC20, &qword_23C889890);
    return sub_23C585C34(v32, &qword_27E1FEC20, &qword_23C889890);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC20, &qword_23C889890);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6E3404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC28, &qword_23C889898);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC10, &qword_23C878FA8);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC10, &qword_23C878FA8);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E1FEC28, &qword_23C889898);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE4D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEC28, &qword_23C889898);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEC28, &qword_23C889898);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEC28, &qword_23C889898);
    return sub_23C585C34(v32, &qword_27E1FEC28, &qword_23C889898);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEC28, &qword_23C889898);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E1FAC10, &qword_23C878FA8);
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
        sub_23C6E4530(v3, a1, a2, a3);
      }

      else
      {
        sub_23C6E4768(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_23C6E42F8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6E40C4(v3, a1, a2, a3);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_23C6E49A0(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6E4BD8(v3, a1, a2, a3);
    }

LABEL_17:
    result = sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 6)
  {
    result = sub_23C6E3C2C(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  result = sub_23C6E3E78(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_18:
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E3C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC10, &qword_23C878FA8);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC10, &qword_23C878FA8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 6)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6E3E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FAC10, &qword_23C878FA8);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FAC10, &qword_23C878FA8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 7)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6E40C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC10, &qword_23C878FA8);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    sub_23C716EF0(&qword_27E1FE460, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E42F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC10, &qword_23C878FA8);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    sub_23C716EF0(&qword_27E1FE478, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E4530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC10, &qword_23C878FA8);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    sub_23C716EF0(&qword_27E1FE490, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E4768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC10, &qword_23C878FA8);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    sub_23C716EF0(&qword_27E1FE4A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E49A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC10, &qword_23C878FA8);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    sub_23C716EF0(&qword_27E1FE4C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  MEMORY[0x28223BE20](DoesNotContain);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC10, &qword_23C878FA8);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    sub_23C716EF0(&qword_27E1FE4D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E4ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E4F6C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_23C8711F4();
}

uint64_t sub_23C6E4FD8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_23C871204();
}

uint64_t sub_23C6E5058()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x736C617571452ELL, 0xE700000000000000);

  qword_27E1FD038 = v1;
  unk_27E1FD040 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E5310(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E53B0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE460, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_23C8711F4();
}

uint64_t sub_23C6E541C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE460, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_23C871204();
}

uint64_t sub_23C6E5498()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x61757145746F4E2ELL, 0xEA0000000000736CLL);

  qword_27E1FD060 = v1;
  *algn_27E1FD068 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E5754(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE800, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E57F4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE478, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_23C8711F4();
}

uint64_t sub_23C6E5860(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE478, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_23C871204();
}

uint64_t sub_23C6E58DC()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x726574616572472ELL, 0xEC0000006E616854);

  qword_27E1FD088 = v1;
  unk_27E1FD090 = v2;
  return result;
}

uint64_t sub_23C6E59B0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD098);
  __swift_project_value_buffer(v0, qword_27E1FD098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E5C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E5D34(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE490, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_23C8711F4();
}

uint64_t sub_23C6E5DA0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE490, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_23C871204();
}

uint64_t sub_23C6E5E1C()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6168547373654C2ELL, 0xE90000000000006ELL);

  qword_27E1FD0B0 = v1;
  *algn_27E1FD0B8 = v2;
  return result;
}

uint64_t sub_23C6E5EEC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD0C0);
  __swift_project_value_buffer(v0, qword_27E1FD0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E60EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_23C871194();
      }

      else if (result == 2)
      {
        sub_23C871084();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6E6214(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v5))
  {
    if (v4[8] != 1 || (result = sub_23C871244(), !v5))
    {
      a4(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6E6340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_23C5D15A4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6E648C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7F0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E652C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE4A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_23C8711F4();
}

uint64_t sub_23C6E6598(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE4A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_23C871204();
}

uint64_t sub_23C6E6614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_23C5D15A4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6E66CC()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6E6961746E6F432ELL, 0xE900000000000073);

  qword_27E1FD0D8 = v1;
  unk_27E1FD0E0 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E6988(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E6A28(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE4C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_23C8711F4();
}

uint64_t sub_23C6E6A94(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE4C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_23C871204();
}

uint64_t sub_23C6E6B10()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x746F4E73656F442ELL, 0xEF6E6961746E6F43);

  qword_27E1FD100 = v1;
  *algn_27E1FD108 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E6E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7E0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E6ED0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE4D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_23C8711F4();
}

uint64_t sub_23C6E6F3C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE4D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_23C871204();
}

uint64_t sub_23C6E6FB8()
{
  if (qword_27E1F8920 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCF20;
  v2 = *algn_27E1FCF28;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x726F67657461432ELL, 0xE900000000000079);

  qword_27E1FD128 = v1;
  unk_27E1FD130 = v2;
  return result;
}

uint64_t sub_23C6E7088()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD138);
  __swift_project_value_buffer(v0, qword_27E1FD138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subcategoryName";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E736C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E740C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD8B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_23C8711F4();
}

uint64_t sub_23C6E7478(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD8B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_23C871204();
}

uint64_t sub_23C6E7524()
{
  if (qword_27E1F8920 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCF20;
  v2 = *algn_27E1FCF28;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6F63496C6F6F542ELL, 0xE90000000000006ELL);

  qword_27E1FD150 = v1;
  *algn_27E1FD158 = v2;
  return result;
}

uint64_t sub_23C6E75F4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD160);
  __swift_project_value_buffer(v0, qword_27E1FD160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workflowAsset";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FD948, &unk_23C889D80, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind, 0);
      }

      else if (result == 2)
      {
        sub_23C6E78CC(v5, a1, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6E78CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBF8, &qword_23C889868);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD948, &unk_23C889D80);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD948, &unk_23C889D80);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEBF8, &qword_23C889868);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE528, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEBF8, &qword_23C889868);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEBF8, &qword_23C889868);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEBF8, &qword_23C889868);
    return sub_23C585C34(v32, &qword_27E1FEBF8, &qword_23C889868);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEBF8, &qword_23C889868);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD948, &unk_23C889D80);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FD948, &unk_23C889D80);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C6E81B0(v3, a1, a2, a3);
      result = sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      result = sub_23C6E8038(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  return sub_23C870F14();
}

uint64_t sub_23C6E8038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FD948, &unk_23C889D80);
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD948, &unk_23C889D80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C8712C4();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E81B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD948, &unk_23C889D80);
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD948, &unk_23C889D80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    sub_23C716EF0(&qword_27E1FE528, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E84A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7D0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E8544(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE500, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_23C8711F4();
}

uint64_t sub_23C6E85B0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE500, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_23C871204();
}

uint64_t sub_23C6E8630()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD178);
  __swift_project_value_buffer(v0, qword_27E1FD178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ToolSymbolIconStyle_MULTICOLOR";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolSymbolIconStyle_TINTED";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E8854()
{
  if (qword_27E1F89F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD150;
  v2 = *algn_27E1FD158;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6D79536C6F6F542ELL, 0xEF6E6F63496C6F62);

  qword_27E1FD190 = v1;
  *algn_27E1FD198 = v2;
  return result;
}

uint64_t sub_23C6E892C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD1A0);
  __swift_project_value_buffer(v0, qword_27E1FD1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
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
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
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
          sub_23C871164();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_23C871154();
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
          sub_23C70C8D4();
          sub_23C8710A4();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (sub_23C70C8D4(), result = sub_23C871254(), !v4))
    {
      result = *(v3 + 24);
      v8 = *(v3 + 32);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_23C8712C4(), !v4))
      {
        if (*(v3 + 48))
        {
          result = sub_23C8712C4();
        }

        if (!v4)
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
          return sub_23C870F14();
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6E8E30@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6E8EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7C8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E8F68(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE528, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_23C8711F4();
}

uint64_t sub_23C6E8FD4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE528, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_23C871204();
}

uint64_t sub_23C6E9054()
{
  if (qword_27E1F8920 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCF20;
  v2 = *algn_27E1FCF28;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x616365727065442ELL, 0xEC0000006E6F6974);

  qword_27E1FD1B8 = v1;
  unk_27E1FD1C0 = v2;
  return result;
}

uint64_t sub_23C6E9128()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD1C8);
  __swift_project_value_buffer(v0, qword_27E1FD1C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deprecationMessage";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replacedByToolId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E9394(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v5))
  {
    if (v4[3])
    {
      result = sub_23C8712C4();
    }

    if (!v5)
    {
      a4(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6E94D4@<X0>(void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6E954C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E95EC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE540, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_23C8711F4();
}

uint64_t sub_23C6E9658(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE540, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_23C871204();
}

uint64_t sub_23C6E9720()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD1E0);
  __swift_project_value_buffer(v0, qword_27E1FD1E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
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
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "bundleVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "teamId";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "device";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoAppDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_4:
          sub_23C871164();
        }
      }

      else
      {
        if (result <= 5)
        {
          goto LABEL_4;
        }

        if (result == 6)
        {
          sub_23C6E9B78(a1, v5, a2, a3);
        }

        else if (result == 7)
        {
          sub_23C70CA54();
          sub_23C8710A4();
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6E9B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAppDefinition(0);
  type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  sub_23C716EF0(&qword_27E1FE580, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoAppDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_23C8712C4(), !v4))
    {
      v13 = *(v3 + 40);
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_23C8712C4(), !v4))
      {
        v15 = *(v3 + 56);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v16 || (result = sub_23C8712C4(), !v4))
        {
          v17 = *(v3 + 72);
          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
          }

          if (!v18 || (result = sub_23C8712C4(), !v4))
          {
            result = sub_23C6E9DE0(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3 + 80))
              {
                sub_23C70CA54();
                sub_23C871254();
              }

              type metadata accessor for ToolKitProtoAppDefinition(0);
              return sub_23C870F14();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6E9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBE0, &qword_23C889850);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_23C5855B0(a1 + *(v12 + 40), v7, &qword_27E1FEBE0, &qword_23C889850);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEBE0, &qword_23C889850);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C716EF0(&qword_27E1FE580, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoAppDefinition.Device);
}

uint64_t sub_23C6EA048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_23C6EA12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7B8, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EA1CC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE558, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6EA238(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE558, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6EA2B8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD1F8);
  __swift_project_value_buffer(v0, qword_27E1FD1F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Origin_THIRD_PARTY";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EA524()
{
  result = MEMORY[0x23EED7100](0x6563697665442ELL, 0xE700000000000000);
  qword_27E1FD210 = 0xD000000000000015;
  *algn_27E1FD218 = 0x800000023C8AD320;
  return result;
}

uint64_t sub_23C6EA5B8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD220);
  __swift_project_value_buffer(v0, qword_27E1FD220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EA7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_23C871044();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C6EBEF0(a1, v7, a2, a3, a4);
    }

    else if (result == 2)
    {
      sub_23C6EC148(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_23C6EA9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7B0, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EAA50(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE580, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return sub_23C8711F4();
}

uint64_t sub_23C6EAABC(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE580, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  return sub_23C871204();
}

uint64_t sub_23C6EAB58()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD238);
  __swift_project_value_buffer(v0, qword_27E1FD238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 2;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "containerId";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "bundleVersion";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "containerType";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "teamId";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "device";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoContainerDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 4)
      {
        if (result != 2 && result != 3)
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_23C871154();
          goto LABEL_5;
        }

        sub_23C871164();
      }

      else
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            goto LABEL_14;
          }

          v11 = v4;
          sub_23C70CAA8();
          goto LABEL_20;
        }

        if (result == 7)
        {
          sub_23C6EAFE0(a1, v5, a2, a3);
          goto LABEL_5;
        }

        if (result == 8)
        {
          v11 = v4;
          sub_23C70CAFC();
LABEL_20:
          v4 = v11;
          sub_23C8710A4();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6EAFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  sub_23C716EF0(&qword_27E1FE5D0, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoContainerDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v4))
  {
    result = *(v3 + 16);
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_23C8712C4(), !v4))
    {
      if (*(v3 + 48))
      {
        result = sub_23C8712C4();
      }

      if (!v4)
      {
        if (*(v3 + 32))
        {
          sub_23C70CAA8();
          sub_23C871254();
        }

        if (*(v3 + 64))
        {
          sub_23C8712C4();
        }

        sub_23C6EB244(v3, a1, a2, a3);
        if (*(v3 + 33))
        {
          sub_23C70CAFC();
          sub_23C871254();
        }

        type metadata accessor for ToolKitProtoContainerDefinition(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6EB244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBD0, &unk_23C889D90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_23C5855B0(a1 + *(v12 + 40), v7, &qword_27E1FEBD0, &unk_23C889D90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEBD0, &unk_23C889D90);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C716EF0(&qword_27E1FE5D0, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoContainerDefinition.Device);
}

uint64_t sub_23C6EB4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23C6EB590(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7A8, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EB630(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6EB69C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6EB71C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD250);
  __swift_project_value_buffer(v0, qword_27E1FD250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Origin_THIRD_PARTY";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EB988()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD268);
  __swift_project_value_buffer(v0, qword_27E1FD268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Type_APP";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Type_DAEMON";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Type_EXTENSION";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Type_FRAMEWORK";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EBC30()
{
  result = MEMORY[0x23EED7100](0x6563697665442ELL, 0xE700000000000000);
  qword_27E1FD280 = 0xD00000000000001BLL;
  *algn_27E1FD288 = 0x800000023C8AD340;
  return result;
}

uint64_t sub_23C6EBCC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD290);
  __swift_project_value_buffer(v0, qword_27E1FD290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EBEF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v23 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v22 = a2;
  sub_23C5855B0(v12, v10, &qword_27E1FEBC8, &qword_23C889840);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_23C585C34(v10, &qword_27E1FEBC8, &qword_23C889840);
  if (v15 == 1)
  {
    return sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  }

  v16 = v22;
  if (v22[1] != 1)
  {
    sub_23C871054();
  }

  v17 = v23;
  sub_23C585C34(v12, &qword_27E1FEBC8, &qword_23C889840);
  v19 = *v16;
  v20 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  return v17(v19, v20);
}

uint64_t sub_23C6EC148(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = sub_23C871154();
  if (v5)
  {
  }

  return result;
}

uint64_t sub_23C6EC248(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = *(v4 + 8);
  if (v8 != 1)
  {
    if (v8)
    {
      result = sub_23C8712C4();
      if (v5)
      {
        return result;
      }
    }

    else
    {
      result = sub_23C6EC30C(v4, a1, a2, a3);
      if (v5)
      {
        return result;
      }
    }
  }

  a4(0);
  return sub_23C870F14();
}

uint64_t sub_23C6EC30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    __break(1u);
  }

  else
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
    sub_23C871254();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23C6EC550(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7A0, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EC5F0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE5D0, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return sub_23C8711F4();
}

uint64_t sub_23C6EC65C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE5D0, type metadata accessor for ToolKitProtoContainerDefinition.Device, &protocol conformance descriptor for ToolKitProtoContainerDefinition.Device);

  return sub_23C871204();
}

uint64_t sub_23C6EC74C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD2A8);
  __swift_project_value_buffer(v0, qword_27E1FD2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numericFormat";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "synonyms";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDisplayRepresentation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_23C871124();
        break;
      case 2:
        sub_23C871154();
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v6 = v3[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_23C8712C4(), !v4))
  {
    if (v3[4])
    {
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        sub_23C8712A4();
      }

      type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6ECB6C@<X0>(void *a2@<X8>)
{
  a2[3] = 0;
  a2[4] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6ECBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE798, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6ECC9C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return sub_23C8711F4();
}

uint64_t sub_23C6ECD08(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);

  return sub_23C871204();
}

uint64_t sub_23C6ECDA4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD2C0);
  __swift_project_value_buffer(v0, qword_27E1FD2C0);
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
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6ECFA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v5, a2, a3);
    }

    else if (result == 2)
    {
      a5(v5 + 16, a2, a3);
    }
  }

  return result;
}