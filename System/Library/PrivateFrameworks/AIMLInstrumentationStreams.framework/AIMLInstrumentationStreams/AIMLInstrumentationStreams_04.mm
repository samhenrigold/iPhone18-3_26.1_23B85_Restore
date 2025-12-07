uint64_t sub_23C5CA8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C5EDD24(v7, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C5EDAB0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C5CAB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB18, &qword_23C878EF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB18, &qword_23C878EF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB18, &qword_23C878EF0);
  }

  sub_23C5EDD24(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_23C5EDAB0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1);
  sub_23C871304();
  return sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
}

uint64_t sub_23C5CAD98@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5CAEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9E0, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CAF4C(uint64_t a1)
{
  sub_23C5EDAB0(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);

  return sub_23C8711F4();
}

uint64_t sub_23C5CAFB8(uint64_t a1, uint64_t a2)
{
  sub_23C5EDAB0(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);

  return sub_23C871204();
}

uint64_t sub_23C5CB054()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA360);
  __swift_project_value_buffer(v0, qword_27E1FA360);
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
  *v10 = "appBundleIds";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoToolQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_23C871124();
    }
  }

  return result;
}

uint64_t ContextProtoToolQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for ContextProtoToolQuery(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static ContextProtoToolQuery.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0 || (sub_23C5D25E0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ContextProtoToolQuery(0);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5CB49C@<X0>(void *a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5CB528(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9D8, type metadata accessor for ContextProtoToolQuery, &protocol conformance descriptor for ContextProtoToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CB5C8(uint64_t a1)
{
  sub_23C5EDAB0(&qword_27E1FA918, type metadata accessor for ContextProtoToolQuery, &protocol conformance descriptor for ContextProtoToolQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C5CB634(uint64_t a1, uint64_t a2)
{
  sub_23C5EDAB0(&qword_27E1FA918, type metadata accessor for ContextProtoToolQuery, &protocol conformance descriptor for ContextProtoToolQuery);

  return sub_23C871204();
}

uint64_t sub_23C5CB6B0(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_23C872014() & 1) == 0 || (sub_23C5D25E0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5CB834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
      a4(0);
      sub_23C5EDAB0(a5, a6, a7);
      sub_23C8711A4();
    }
  }

  return result;
}

uint64_t sub_23C5CB950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5CB9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAAD8, &qword_23C878EC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAAD8, &qword_23C878EC0);
  }

  sub_23C5EDD24(v7, v11, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C5EDAB0(&qword_27E1FA8C8, type metadata accessor for ContextProtoRetrievedTool.Definition, &protocol conformance descriptor for ContextProtoRetrievedTool.Definition);
  sub_23C871304();
  return sub_23C5EDCC4(v11, type metadata accessor for ContextProtoRetrievedTool.Definition);
}

uint64_t sub_23C5CBC4C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5CBD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9D0, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CBDAC(uint64_t a1)
{
  sub_23C5EDAB0(&qword_27E1FA930, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput);

  return sub_23C8711F4();
}

uint64_t sub_23C5CBE18(uint64_t a1, uint64_t a2)
{
  sub_23C5EDAB0(&qword_27E1FA930, type metadata accessor for ContextProtoToolQueryOutput, &protocol conformance descriptor for ContextProtoToolQueryOutput);

  return sub_23C871204();
}

uint64_t sub_23C5CBEB4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA390);
  __swift_project_value_buffer(v0, qword_27E1FA390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "originalSubQuery";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrittenQuery";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retrievedTools";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "types";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_23C8710D4();
            goto LABEL_5;
          case 4:
            v6 = v3;
            type metadata accessor for ContextProtoRetrievedTool(0);
            sub_23C5EDAB0(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool);
            break;
          case 5:
            v6 = v3;
            type metadata accessor for ContextProtoToolRetrievalType(0);
            sub_23C5EDAB0(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType);
            break;
          default:
            goto LABEL_5;
        }

        v3 = v6;
        sub_23C871194();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_23C8712C4(), !v4))
    {
      if (*(v3 + 32) == 0.0 || (result = sub_23C871274(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_23C5EDAB0(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool, &protocol conformance descriptor for ContextProtoRetrievedTool), result = sub_23C8712F4(), !v4))
        {
          if (!*(*(v3 + 48) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_23C5EDAB0(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType, &protocol conformance descriptor for ContextProtoToolRetrievalType), result = sub_23C8712F4(), !v4))
          {
            type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C5CC530@<X0>(uint64_t a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 40) = MEMORY[0x277D84F90];
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_23C5CC594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CC608(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5CC6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9C8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CC770(uint64_t a1)
{
  sub_23C5EDAB0(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);

  return sub_23C8711F4();
}

uint64_t sub_23C5CC7DC(uint64_t a1, uint64_t a2)
{
  sub_23C5EDAB0(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, &protocol conformance descriptor for ContextProtoQueryDecorationToolRetrievalResponse);

  return sub_23C871204();
}

uint64_t sub_23C5CC878()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA3A8);
  __swift_project_value_buffer(v0, qword_27E1FA3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typedValue";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchMetadata";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoSpanMatchedEntity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C5CCB64(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for ContextProtoEntityMatch(0);
        sub_23C5EDAB0(&qword_27E1FA590, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5CCB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoSpanMatchedEntity(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t ContextProtoSpanMatchedEntity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C5CCD14(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ContextProtoEntityMatch(0);
      sub_23C5EDAB0(&qword_27E1FA590, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);
      sub_23C8712F4();
    }

    type metadata accessor for ContextProtoSpanMatchedEntity(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5CCD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5EDD24(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C5CCF7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 20);
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5CD020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CD094(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5CD138(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9C0, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CD1D8(uint64_t a1)
{
  sub_23C5EDAB0(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);

  return sub_23C8711F4();
}

uint64_t sub_23C5CD244(uint64_t a1, uint64_t a2)
{
  sub_23C5EDAB0(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity, &protocol conformance descriptor for ContextProtoSpanMatchedEntity);

  return sub_23C871204();
}

uint64_t sub_23C5CD2E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA3C0);
  __swift_project_value_buffer(v0, qword_27E1FA3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23C8755C0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "sourceItemIdentifier";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "entityName";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "startIndex";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "endIndex";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "matchScore";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "matchProperties";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "matcherType";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "originAppBundleId";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "userUtterance";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "identifier";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoEntityMatch.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 7)
      {
        if (result <= 9)
        {
          if (result == 8)
          {
            sub_23C5CD870(a1, v5, a2, a3);
          }

          else
          {
            sub_23C5EA834();
            sub_23C8710A4();
          }
        }

        else
        {
          if (result == 10 || result == 11)
          {
LABEL_4:
            sub_23C871164();
            goto LABEL_5;
          }

          if (result == 12)
          {
            type metadata accessor for ContextProtoEntityMatch(0);
            sub_23C871154();
          }
        }
      }

      else if (result <= 3)
      {
        if (result == 1 || result == 3)
        {
          goto LABEL_4;
        }
      }

      else if (result == 4 || result == 5)
      {
        sub_23C871114();
      }

      else if (result == 7)
      {
        sub_23C8710D4();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5CD870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoEntityMatch(0);
  type metadata accessor for ContextProtoMatchProperties(0);
  sub_23C5EDAB0(&qword_27E1FA980, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);
  return sub_23C8711A4();
}

uint64_t ContextProtoEntityMatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!*(v3 + 32) || (result = sub_23C871294(), !v4))
      {
        if (!*(v3 + 40) || (result = sub_23C871294(), !v4))
        {
          if (*(v3 + 48) == 0.0 || (result = sub_23C871274(), !v4))
          {
            result = sub_23C5CDB28(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3 + 52))
              {
                sub_23C5EA834();
                sub_23C871254();
              }

              v13 = *(v3 + 64);
              v14 = HIBYTE(v13) & 0xF;
              if ((v13 & 0x2000000000000000) == 0)
              {
                v14 = *(v3 + 56) & 0xFFFFFFFFFFFFLL;
              }

              if (v14)
              {
                sub_23C8712C4();
              }

              v15 = *(v3 + 80);
              v16 = HIBYTE(v15) & 0xF;
              if ((v15 & 0x2000000000000000) == 0)
              {
                v16 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
              }

              if (v16)
              {
                sub_23C8712C4();
              }

              sub_23C5CDD44(v3, a1, a2, a3);
              type metadata accessor for ContextProtoEntityMatch(0);
              return sub_23C870F14();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C5CDB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB58, &unk_23C8791F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v9 = *(matched - 8);
  MEMORY[0x28223BE20](matched);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoEntityMatch(0);
  sub_23C5855B0(a1 + *(v12 + 48), v7, &qword_27E1FAB58, &unk_23C8791F0);
  if ((*(v9 + 48))(v7, 1, matched) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB58, &unk_23C8791F0);
  }

  sub_23C5EDD24(v7, v11, type metadata accessor for ContextProtoMatchProperties);
  sub_23C5EDAB0(&qword_27E1FA980, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);
  sub_23C871304();
  return sub_23C5EDCC4(v11, type metadata accessor for ContextProtoMatchProperties);
}

uint64_t sub_23C5CDD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoEntityMatch(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5CDE08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a2 + v4, 1, 1, matched);
  v6 = (a2 + *(a1 + 52));
  *v6 = 0;
  v6[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 45) = 0;
  a2[7] = 0;
  a2[8] = 0xE000000000000000;
  a2[9] = 0;
  a2[10] = 0xE000000000000000;
  return result;
}

uint64_t sub_23C5CDEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CDF38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5CE000(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9B8, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CE0A0(uint64_t a1)
{
  sub_23C5EDAB0(&qword_27E1FA590, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);

  return sub_23C8711F4();
}

uint64_t sub_23C5CE10C(uint64_t a1, uint64_t a2)
{
  sub_23C5EDAB0(&qword_27E1FA590, type metadata accessor for ContextProtoEntityMatch, &protocol conformance descriptor for ContextProtoEntityMatch);

  return sub_23C871204();
}

uint64_t sub_23C5CE1A8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA3D8);
  __swift_project_value_buffer(v0, qword_27E1FA3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "maxTokenCount";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchedTokenCount";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "matchedAliasTypes";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoMatchProperties.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_23C5CE47C(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871104();
    }
  }

  return result;
}

uint64_t sub_23C5CE47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoMatchProperties(0);
  type metadata accessor for ContextProtoAliasTypes(0);
  sub_23C5EDAB0(&qword_27E1FA998, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);
  return sub_23C8711A4();
}

uint64_t ContextProtoMatchProperties.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if ((*(v3 + 8) & 1) == 0)
  {
    result = sub_23C871294();
  }

  if (!v4)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      sub_23C871294();
    }

    sub_23C5CE5F4(v3, v7, a2, a3);
    type metadata accessor for ContextProtoMatchProperties(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5CE5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB48, &qword_23C878F10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoAliasTypes(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_23C5855B0(a1 + *(matched + 24), v7, &qword_27E1FAB48, &qword_23C878F10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB48, &qword_23C878F10);
  }

  sub_23C5EDD24(v7, v11, type metadata accessor for ContextProtoAliasTypes);
  sub_23C5EDAB0(&qword_27E1FA998, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);
  sub_23C871304();
  return sub_23C5EDCC4(v11, type metadata accessor for ContextProtoAliasTypes);
}

uint64_t sub_23C5CE85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5CE908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CE97C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5CEA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9B0, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CEAC0(uint64_t a1)
{
  sub_23C5EDAB0(&qword_27E1FA980, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);

  return sub_23C8711F4();
}

uint64_t sub_23C5CEB2C(uint64_t a1, uint64_t a2)
{
  sub_23C5EDAB0(&qword_27E1FA980, type metadata accessor for ContextProtoMatchProperties, &protocol conformance descriptor for ContextProtoMatchProperties);

  return sub_23C871204();
}

uint64_t sub_23C5CEBE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23C871344();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23C873D10;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_23C871314();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_23C871324();
}

uint64_t sub_23C5CED7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_23C871344();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t ContextProtoAliasTypes.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C5EA888();
        sub_23C871064();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoAliasTypes.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_23C5EA888(), result = sub_23C871234(), !v4))
  {
    type metadata accessor for ContextProtoAliasTypes(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t *static ContextProtoAliasTypes.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    type metadata accessor for ContextProtoAliasTypes(0);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return (sub_23C871754() & 1);
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C5CF0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CF120(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5CF1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9A8, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CF264@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_23C871344();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_23C5CF300(uint64_t a1)
{
  sub_23C5EDAB0(&qword_27E1FA998, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);

  return sub_23C8711F4();
}

uint64_t sub_23C5CF36C(uint64_t a1, uint64_t a2)
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5CF3C4(uint64_t a1, uint64_t a2)
{
  sub_23C5EDAB0(&qword_27E1FA998, type metadata accessor for ContextProtoAliasTypes, &protocol conformance descriptor for ContextProtoAliasTypes);

  return sub_23C871204();
}

uint64_t sub_23C5CF440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5CF494(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23C5E1250(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

unint64_t sub_23C5CF53C()
{
  result = qword_27E1FA408;
  if (!qword_27E1FA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA408);
  }

  return result;
}

uint64_t sub_23C5CF590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v129 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB48, &qword_23C878F10);
  MEMORY[0x28223BE20](v7 - 8);
  v128 = &v108 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB50, &qword_23C878F18);
  MEMORY[0x28223BE20](v130);
  v132 = &v108 - v9;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v10 = *(matched - 8);
  MEMORY[0x28223BE20](matched);
  v133 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB58, &unk_23C8791F0);
  MEMORY[0x28223BE20](v12 - 8);
  v135 = &v108 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB60, &qword_23C878F20);
  MEMORY[0x28223BE20](v134);
  v138 = &v108 - v14;
  v143 = type metadata accessor for ContextProtoEntityMatch(0);
  v140 = *(v143 - 8);
  v15 = MEMORY[0x28223BE20](v143);
  v142 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v108 - v17;
  v19 = type metadata accessor for ToolKitProtoTypedValue(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v131 = (&v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v22 - 8);
  v136 = (&v108 - v23);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v137);
  v25 = &v108 - v24;
  v26 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v27 = MEMORY[0x28223BE20](v26);
  v139 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v144 = &v108 - v31;
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
LABEL_95:
    v102 = 0;
    return v102 & 1;
  }

  if (!v32 || a1 == a2)
  {
    v102 = 1;
    return v102 & 1;
  }

  v123 = v19;
  v127 = v29;
  v110 = v4;
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = a1 + v33;
  v122 = a2 + v33;
  v121 = (v20 + 48);
  v117 = (v10 + 48);
  v35 = 0;
  v109 = (v5 + 48);
  v36 = *(v30 + 72);
  v37 = v139;
  v38 = v144;
  v113 = v25;
  v126 = v32;
  v112 = a1 + v33;
  v111 = v36;
  v120 = v18;
  while (1)
  {
    result = sub_23C5EDC08(v34 + v36 * v35, v38, type metadata accessor for ContextProtoSpanMatchedEntity);
    if (v35 == v126)
    {
      break;
    }

    sub_23C5EDC08(v122 + v36 * v35, v37, type metadata accessor for ContextProtoSpanMatchedEntity);
    v40 = *(v127 + 20);
    v41 = *(v137 + 48);
    sub_23C5855B0(v38 + v40, v25, &qword_27E1FAB68, &unk_23C879140);
    sub_23C5855B0(v37 + v40, &v25[v41], &qword_27E1FAB68, &unk_23C879140);
    v42 = *v121;
    v43 = v25;
    v44 = v25;
    v45 = v123;
    v46 = (*v121)(v43, 1, v123);
    v124 = v35;
    if (v46 == 1)
    {
      v47 = v42((v44 + v41), 1, v45);
      v38 = v144;
      if (v47 != 1)
      {
        goto LABEL_82;
      }

      result = sub_23C585C34(v44, &qword_27E1FAB68, &unk_23C879140);
      v48 = v142;
      v49 = v120;
    }

    else
    {
      v50 = v136;
      sub_23C5855B0(v44, v136, &qword_27E1FAB68, &unk_23C879140);
      if (v42((v44 + v41), 1, v45) == 1)
      {
        sub_23C5EDCC4(v50, type metadata accessor for ToolKitProtoTypedValue);
        v38 = v144;
LABEL_82:
        sub_23C585C34(v44, &qword_27E1FAB70, &qword_23C878F28);
        goto LABEL_94;
      }

      v51 = v131;
      sub_23C5EDD24(v44 + v41, v131, type metadata accessor for ToolKitProtoTypedValue);
      v52 = *v50;
      v53 = *v51;
      v38 = v144;
      if ((~v52 & 0xF000000000000007) != 0)
      {
        v146 = v52;
        v49 = v120;
        if ((~v53 & 0xF000000000000007) == 0)
        {
          sub_23C56F2C0(v52);
          sub_23C56F2C0(v53);
          sub_23C56F2C0(v52);

LABEL_86:
          sub_23C56F2D8(v52);
          sub_23C56F2D8(v53);
LABEL_87:
          sub_23C5EDCC4(v51, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C5EDCC4(v136, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C585C34(v44, &qword_27E1FAB68, &unk_23C879140);
LABEL_94:
          sub_23C5EDCC4(v37, type metadata accessor for ContextProtoSpanMatchedEntity);
          sub_23C5EDCC4(v38, type metadata accessor for ContextProtoSpanMatchedEntity);
          goto LABEL_95;
        }

        v145 = v53;
        sub_23C56F2C0(v52);
        sub_23C56F2C0(v53);
        sub_23C56F2C0(v52);
        v54 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v146, &v145);

        sub_23C56F2D8(v52);
        if ((v54 & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        sub_23C56F2C0(v52);
        sub_23C56F2C0(v53);
        v49 = v120;
        if ((~v53 & 0xF000000000000007) != 0)
        {
          goto LABEL_86;
        }

        sub_23C56F2D8(v52);
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v55 = v136;
      v56 = sub_23C871754();
      sub_23C5EDCC4(v51, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C5EDCC4(v55, type metadata accessor for ToolKitProtoTypedValue);
      result = sub_23C585C34(v44, &qword_27E1FAB68, &unk_23C879140);
      v48 = v142;
      if ((v56 & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    v57 = *v38;
    v58 = *v37;
    v59 = *(*v38 + 16);
    if (v59 != *(*v37 + 16))
    {
      goto LABEL_94;
    }

    if (v59 && v57 != v58)
    {
      v60 = 0;
      v61 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v119 = v57 + v61;
      v118 = v58 + v61;
      v115 = v57;
      v116 = v58;
      v114 = v59;
      do
      {
        if (v60 >= *(v57 + 16))
        {
          goto LABEL_98;
        }

        v62 = v60;
        v63 = *(v140 + 72) * v60;
        result = sub_23C5EDC08(v119 + v63, v49, type metadata accessor for ContextProtoEntityMatch);
        v64 = *(v58 + 16);
        v125 = v62;
        if (v62 >= v64)
        {
          goto LABEL_99;
        }

        sub_23C5EDC08(v118 + v63, v48, type metadata accessor for ContextProtoEntityMatch);
        if ((*v49 != *v48 || *(v49 + 8) != *(v48 + 8)) && (sub_23C872014() & 1) == 0 || (*(v49 + 16) != *(v48 + 16) || *(v49 + 24) != *(v48 + 24)) && (sub_23C872014() & 1) == 0 || *(v49 + 32) != *(v48 + 32) || *(v49 + 40) != *(v48 + 40) || *(v49 + 48) != *(v48 + 48))
        {
          goto LABEL_93;
        }

        v65 = *(v143 + 48);
        v66 = *(v134 + 48);
        v67 = v138;
        sub_23C5855B0(v49 + v65, v138, &qword_27E1FAB58, &unk_23C8791F0);
        sub_23C5855B0(v48 + v65, v67 + v66, &qword_27E1FAB58, &unk_23C8791F0);
        v68 = *v117;
        v69 = matched;
        if ((*v117)(v67, 1, matched) == 1)
        {
          v70 = v68(v67 + v66, 1, v69) == 1;
          v71 = v67;
          if (!v70)
          {
            goto LABEL_84;
          }

          sub_23C585C34(v67, &qword_27E1FAB58, &unk_23C8791F0);
          v37 = v139;
          v38 = v144;
          v58 = v116;
        }

        else
        {
          v72 = v135;
          sub_23C5855B0(v67, v135, &qword_27E1FAB58, &unk_23C8791F0);
          if (v68(v67 + v66, 1, v69) == 1)
          {
            sub_23C5EDCC4(v72, type metadata accessor for ContextProtoMatchProperties);
            v71 = v67;
LABEL_84:
            v106 = &qword_27E1FAB60;
            v107 = &qword_23C878F20;
            goto LABEL_92;
          }

          v73 = v133;
          sub_23C5EDD24(v67 + v66, v133, type metadata accessor for ContextProtoMatchProperties);
          v74 = *(v73 + 8);
          if (*(v72 + 8))
          {
            v75 = matched;
            if (!*(v73 + 8))
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (*v72 != *v73)
            {
              v74 = 1;
            }

            v75 = matched;
            if (v74)
            {
              goto LABEL_91;
            }
          }

          v76 = *(v73 + 24);
          if (*(v72 + 24))
          {
            if (!*(v73 + 24))
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (*(v72 + 16) != *(v73 + 16))
            {
              v76 = 1;
            }

            if (v76)
            {
              goto LABEL_91;
            }
          }

          v77 = *(v75 + 24);
          v78 = *(v130 + 48);
          v79 = v132;
          sub_23C5855B0(v72 + v77, v132, &qword_27E1FAB48, &qword_23C878F10);
          sub_23C5855B0(v73 + v77, v79 + v78, &qword_27E1FAB48, &qword_23C878F10);
          v80 = *v109;
          v81 = v110;
          if ((*v109)(v79, 1, v110) == 1)
          {
            v82 = v80(v79 + v78, 1, v81);
            v72 = v135;
            v73 = v133;
            v48 = v142;
            if (v82 != 1)
            {
              goto LABEL_89;
            }

            sub_23C585C34(v79, &qword_27E1FAB48, &qword_23C878F10);
            v58 = v116;
          }

          else
          {
            v83 = v128;
            sub_23C5855B0(v79, v128, &qword_27E1FAB48, &qword_23C878F10);
            if (v80(v79 + v78, 1, v81) == 1)
            {
              sub_23C5EDCC4(v83, type metadata accessor for ContextProtoAliasTypes);
              v73 = v133;
              v72 = v135;
              v48 = v142;
LABEL_89:
              v103 = &qword_27E1FAB50;
              v104 = &qword_23C878F18;
              v105 = v79;
LABEL_90:
              sub_23C585C34(v105, v103, v104);
LABEL_91:
              sub_23C5EDCC4(v73, type metadata accessor for ContextProtoMatchProperties);
              sub_23C5EDCC4(v72, type metadata accessor for ContextProtoMatchProperties);
              v106 = &qword_27E1FAB58;
              v107 = &unk_23C8791F0;
              v71 = v138;
LABEL_92:
              sub_23C585C34(v71, v106, v107);
              v37 = v139;
              v38 = v144;
LABEL_93:
              sub_23C5EDCC4(v48, type metadata accessor for ContextProtoEntityMatch);
              sub_23C5EDCC4(v49, type metadata accessor for ContextProtoEntityMatch);
              goto LABEL_94;
            }

            v84 = v79 + v78;
            v85 = v129;
            sub_23C5EDD24(v84, v129, type metadata accessor for ContextProtoAliasTypes);
            v86 = *v83;
            v87 = *v85;
            v88 = *(*v83 + 16);
            v73 = v133;
            v72 = v135;
            v48 = v142;
            v58 = v116;
            if (v88 != *(*v85 + 16))
            {
              goto LABEL_80;
            }

            if (v88 && v86 != v87)
            {
              v89 = (v86 + 32);
              v90 = (v87 + 32);
              while (*v89 == *v90)
              {
                ++v89;
                ++v90;
                if (!--v88)
                {
                  goto LABEL_58;
                }
              }

LABEL_80:
              sub_23C5EDCC4(v129, type metadata accessor for ContextProtoAliasTypes);
              sub_23C5EDCC4(v83, type metadata accessor for ContextProtoAliasTypes);
              v103 = &qword_27E1FAB48;
              v104 = &qword_23C878F10;
              v105 = v132;
              goto LABEL_90;
            }

LABEL_58:
            sub_23C870F34();
            sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v91 = v73;
            v92 = v129;
            v93 = sub_23C871754();
            v94 = v92;
            v73 = v91;
            v48 = v142;
            v72 = v135;
            sub_23C5EDCC4(v94, type metadata accessor for ContextProtoAliasTypes);
            sub_23C5EDCC4(v83, type metadata accessor for ContextProtoAliasTypes);
            sub_23C585C34(v132, &qword_27E1FAB48, &qword_23C878F10);
            if ((v93 & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v95 = sub_23C871754();
          sub_23C5EDCC4(v73, type metadata accessor for ContextProtoMatchProperties);
          sub_23C5EDCC4(v72, type metadata accessor for ContextProtoMatchProperties);
          sub_23C585C34(v138, &qword_27E1FAB58, &unk_23C8791F0);
          v37 = v139;
          v38 = v144;
          if ((v95 & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        if (*(v49 + 52) != *(v48 + 52) || (*(v49 + 56) != *(v48 + 56) || *(v49 + 64) != *(v48 + 64)) && (sub_23C872014() & 1) == 0 || (*(v49 + 72) != *(v48 + 72) || *(v49 + 80) != *(v48 + 80)) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_93;
        }

        v96 = *(v143 + 52);
        v97 = (v49 + v96);
        v98 = *(v49 + v96 + 8);
        v99 = (v48 + v96);
        v100 = v99[1];
        if (v98)
        {
          if (!v100 || (*v97 != *v99 || v98 != v100) && (sub_23C872014() & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        else if (v100)
        {
          goto LABEL_93;
        }

        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v101 = sub_23C871754();
        sub_23C5EDCC4(v48, type metadata accessor for ContextProtoEntityMatch);
        result = sub_23C5EDCC4(v49, type metadata accessor for ContextProtoEntityMatch);
        v57 = v115;
        if ((v101 & 1) == 0)
        {
          goto LABEL_94;
        }

        v60 = v125 + 1;
      }

      while (v125 + 1 != v114);
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v102 = sub_23C871754();
    sub_23C5EDCC4(v37, type metadata accessor for ContextProtoSpanMatchedEntity);
    sub_23C5EDCC4(v38, type metadata accessor for ContextProtoSpanMatchedEntity);
    if (v102)
    {
      v35 = v124 + 1;
      v34 = v112;
      v36 = v111;
      v25 = v113;
      if (v124 + 1 != v126)
      {
        continue;
      }
    }

    return v102 & 1;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_23C5D08D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_23C5EDC08(v20, v17, a4);
        sub_23C5EDC08(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_23C5EDCC4(v14, a6);
        sub_23C5EDCC4(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_23C5D0A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSampleInvocation(0);
  v5 = *(v4 - 8);
  v86 = v4;
  v87 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v67 - v9;
  v11 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v79 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v67 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD0, &qword_23C878EB8);
  MEMORY[0x28223BE20](v80);
  v18 = &v67 - v17;
  v83 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v19 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  MEMORY[0x28223BE20](v21 - 8);
  v82 = &v67 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE0, &qword_23C878EC8);
  MEMORY[0x28223BE20](v23);
  v84 = &v67 - v24;
  v85 = type metadata accessor for ContextProtoRetrievedTool(0);
  v25 = MEMORY[0x28223BE20](v85);
  v89 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v88 = &v67 - v28;
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
LABEL_36:
    v66 = 0;
    return v66 & 1;
  }

  if (!v29 || a1 == a2)
  {
    v66 = 1;
    return v66 & 1;
  }

  v68 = v16;
  v70 = v11;
  v71 = v13;
  v30 = 0;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v77 = a2 + v31;
  v78 = v29;
  v75 = v18;
  v76 = (v19 + 48);
  v69 = (v79 + 48);
  v33 = *(v27 + 72);
  v34 = v88;
  v73 = a1 + v31;
  v74 = v23;
  v72 = v33;
  while (1)
  {
    result = sub_23C5EDC08(v32 + v33 * v30, v34, type metadata accessor for ContextProtoRetrievedTool);
    if (v30 == v78)
    {
      goto LABEL_45;
    }

    v79 = v30;
    v36 = v77 + v33 * v30;
    v37 = v89;
    sub_23C5EDC08(v36, v89, type metadata accessor for ContextProtoRetrievedTool);
    v38 = v84;
    v39 = *(v85 + 28);
    v40 = *(v23 + 48);
    sub_23C5855B0(v34 + v39, v84, &qword_27E1FAAD8, &qword_23C878EC0);
    sub_23C5855B0(v37 + v39, v38 + v40, &qword_27E1FAAD8, &qword_23C878EC0);
    v41 = *v76;
    v42 = v83;
    if ((*v76)(v38, 1, v83) == 1)
    {
      if (v41(v38 + v40, 1, v42) != 1)
      {
        goto LABEL_39;
      }

      result = sub_23C585C34(v38, &qword_27E1FAAD8, &qword_23C878EC0);
      goto LABEL_16;
    }

    v43 = v82;
    sub_23C5855B0(v38, v82, &qword_27E1FAAD8, &qword_23C878EC0);
    v44 = v41(v38 + v40, 1, v42);
    v45 = v71;
    if (v44 == 1)
    {
      sub_23C5EDCC4(v43, type metadata accessor for ContextProtoRetrievedTool.Definition);
LABEL_39:
      sub_23C585C34(v38, &qword_27E1FAAE0, &qword_23C878EC8);
      goto LABEL_35;
    }

    v46 = v81;
    sub_23C5EDD24(v38 + v40, v81, type metadata accessor for ContextProtoRetrievedTool.Definition);
    v47 = *(v80 + 48);
    sub_23C5855B0(v43, v18, &qword_27E1FA540, &unk_23C8791D0);
    sub_23C5855B0(v46, &v18[v47], &qword_27E1FA540, &unk_23C8791D0);
    v48 = v70;
    v49 = *v69;
    if ((*v69)(v18, 1, v70) == 1)
    {
      v50 = v49(&v18[v47], 1, v48);
      v51 = v82;
      if (v50 != 1)
      {
        goto LABEL_41;
      }

      sub_23C585C34(v18, &qword_27E1FA540, &unk_23C8791D0);
      v52 = v81;
      goto LABEL_15;
    }

    v53 = v68;
    sub_23C5855B0(v18, v68, &qword_27E1FA540, &unk_23C8791D0);
    if (v49(&v18[v47], 1, v48) == 1)
    {
      sub_23C5EDCC4(v53, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v51 = v82;
LABEL_41:
      sub_23C585C34(v18, &qword_27E1FAAD0, &qword_23C878EB8);
      v52 = v81;
LABEL_42:
      sub_23C5EDCC4(v52, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C5EDCC4(v51, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C585C34(v84, &qword_27E1FAAD8, &qword_23C878EC0);
LABEL_35:
      sub_23C5EDCC4(v89, type metadata accessor for ContextProtoRetrievedTool);
      sub_23C5EDCC4(v88, type metadata accessor for ContextProtoRetrievedTool);
      goto LABEL_36;
    }

    sub_23C5EDD24(&v18[v47], v45, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v54 = static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)(v53, v45);
    sub_23C5EDCC4(v45, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C5EDCC4(v53, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C585C34(v18, &qword_27E1FA540, &unk_23C8791D0);
    v51 = v82;
    v52 = v81;
    if ((v54 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_15:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v55 = sub_23C871754();
    sub_23C5EDCC4(v52, type metadata accessor for ContextProtoRetrievedTool.Definition);
    sub_23C5EDCC4(v51, type metadata accessor for ContextProtoRetrievedTool.Definition);
    result = sub_23C585C34(v84, &qword_27E1FAAD8, &qword_23C878EC0);
    if ((v55 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_16:
    if (*v88 != *v89)
    {
      goto LABEL_35;
    }

    v56 = *(v88 + 8);
    v57 = *(v89 + 8);
    v58 = *(v56 + 16);
    if (v58 != *(v57 + 16))
    {
      goto LABEL_35;
    }

    if (v58 && v56 != v57)
    {
      break;
    }

LABEL_29:
    if (*(v88 + 16) != *(v89 + 16))
    {
      goto LABEL_35;
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = v88;
    v65 = v89;
    v66 = sub_23C871754();
    sub_23C5EDCC4(v65, type metadata accessor for ContextProtoRetrievedTool);
    sub_23C5EDCC4(v34, type metadata accessor for ContextProtoRetrievedTool);
    if (v66)
    {
      v30 = v79 + 1;
      v23 = v74;
      v18 = v75;
      v33 = v72;
      v32 = v73;
      if (v79 + 1 != v78)
      {
        continue;
      }
    }

    return v66 & 1;
  }

  v59 = 0;
  v60 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v61 = v56 + v60;
  v62 = v57 + v60;
  while (v59 < *(v56 + 16))
  {
    v63 = *(v87 + 72) * v59;
    result = sub_23C5EDC08(v61 + v63, v10, type metadata accessor for ContextProtoSampleInvocation);
    if (v59 >= *(v57 + 16))
    {
      goto LABEL_44;
    }

    sub_23C5EDC08(v62 + v63, v8, type metadata accessor for ContextProtoSampleInvocation);
    if ((*v10 != *v8 || *(v10 + 1) != *(v8 + 1)) && (sub_23C872014() & 1) == 0 || *(v10 + 4) != *(v8 + 4))
    {
      sub_23C5EDCC4(v8, type metadata accessor for ContextProtoSampleInvocation);
      sub_23C5EDCC4(v10, type metadata accessor for ContextProtoSampleInvocation);
      goto LABEL_35;
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v64 = sub_23C871754();
    sub_23C5EDCC4(v8, type metadata accessor for ContextProtoSampleInvocation);
    result = sub_23C5EDCC4(v10, type metadata accessor for ContextProtoSampleInvocation);
    if ((v64 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (v58 == ++v59)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_23C5D15A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v11 || a1 == a2)
  {
    v19 = 1;
    return v19 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_23C5EDC08(v13, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C5EDC08(v14, v7, type metadata accessor for ToolKitProtoTypedValue);
    v16 = *v10;
    v17 = *v7;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_23C56F2C0(*v10);
    sub_23C56F2C0(v17);
    if ((~v17 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_23C56F2D8(v16);
LABEL_10:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_23C871754();
    sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoTypedValue);
    if (v19)
    {
      v14 += v15;
      v13 += v15;
      if (--v11)
      {
        continue;
      }
    }

    return v19 & 1;
  }

  v22 = *v10;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v21 = v17;
    sub_23C56F2C0(v16);
    sub_23C56F2C0(v17);
    sub_23C56F2C0(v16);
    v18 = _s26AIMLInstrumentationStreams26ToolKitProtoTypedValueKindO2eeoiySbAC_ACtFZ_0(&v22, &v21);

    sub_23C56F2D8(v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_23C56F2C0(v16);
  sub_23C56F2C0(v17);
  sub_23C56F2C0(v16);

LABEL_15:
  sub_23C56F2D8(v16);
  sub_23C56F2D8(v17);
LABEL_16:
  sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_17:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_23C5D18B4(uint64_t a1, uint64_t a2)
{
  v94 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v4 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v81 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB80, &qword_23C878F30);
  v12 = MEMORY[0x28223BE20](v93);
  v88 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v81 - v14;
  v97 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v15 = *(v97 - 8);
  v16 = MEMORY[0x28223BE20](v97);
  v92 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v99 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v100 = &v81 - v22;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v23 = MEMORY[0x28223BE20](v102);
  v98 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v81 - v25;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v26 = MEMORY[0x28223BE20](updated);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v31 = &v81 - v30;
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
LABEL_44:
    v77 = 0;
    return v77 & 1;
  }

  if (!v32 || a1 == a2)
  {
    v77 = 1;
    return v77 & 1;
  }

  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = a1 + v33;
  v96 = (v15 + 48);
  v35 = a2 + v33;
  v85 = (v4 + 48);
  v36 = *(v29 + 72);
  v83 = v6;
  v84 = v36;
  v38 = v97;
  v37 = v98;
  v82 = v10;
  while (1)
  {
    v91 = v34;
    result = sub_23C5EDC08(v34, v31, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    if (!v32)
    {
      break;
    }

    v89 = v32;
    v90 = v35;
    sub_23C5EDC08(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    v40 = *(updated + 24);
    v41 = *(v102 + 48);
    v42 = v101;
    sub_23C5855B0(&v31[v40], v101, &qword_27E1FAB88, &unk_23C8A1350);
    sub_23C5855B0(&v28[v40], v42 + v41, &qword_27E1FAB88, &unk_23C8A1350);
    v43 = *v96;
    if ((*v96)(v42, 1, v38) == 1)
    {
      if (v43(v42 + v41, 1, v38) != 1)
      {
        goto LABEL_33;
      }

      sub_23C585C34(v42, &qword_27E1FAB88, &unk_23C8A1350);
    }

    else
    {
      sub_23C5855B0(v42, v100, &qword_27E1FAB88, &unk_23C8A1350);
      if (v43(v42 + v41, 1, v38) == 1)
      {
        sub_23C5EDCC4(v100, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_33:
        v78 = &qword_27E1FAB90;
        v79 = &qword_23C878F38;
        v80 = v42;
LABEL_42:
        sub_23C585C34(v80, v78, v79);
LABEL_43:
        sub_23C5EDCC4(v28, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
        sub_23C5EDCC4(v31, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
        goto LABEL_44;
      }

      v44 = v95;
      sub_23C5EDD24(v42 + v41, v95, type metadata accessor for TranscriptProtoASTFlatValue);
      v45 = *(v93 + 48);
      v46 = v87;
      sub_23C5855B0(v100, v87, &qword_27E1FAB78, &unk_23C8A1360);
      sub_23C5855B0(v44, v46 + v45, &qword_27E1FAB78, &unk_23C8A1360);
      v47 = *v85;
      v48 = v94;
      if ((*v85)(v46, 1, v94) == 1)
      {
        if (v47(v46 + v45, 1, v48) != 1)
        {
          goto LABEL_37;
        }

        sub_23C585C34(v46, &qword_27E1FAB78, &unk_23C8A1360);
      }

      else
      {
        v49 = v86;
        sub_23C5855B0(v46, v86, &qword_27E1FAB78, &unk_23C8A1360);
        if (v47(v46 + v45, 1, v48) == 1)
        {
          sub_23C5EDCC4(v49, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_37:
          sub_23C585C34(v46, &qword_27E1FAB80, &qword_23C878F30);
LABEL_38:
          sub_23C5EDCC4(v95, type metadata accessor for TranscriptProtoASTFlatValue);
          sub_23C5EDCC4(v100, type metadata accessor for TranscriptProtoASTFlatValue);
          v78 = &qword_27E1FAB88;
          v79 = &unk_23C8A1350;
          v80 = v101;
          goto LABEL_42;
        }

        v50 = v83;
        sub_23C5EDD24(v46 + v45, v83, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v51 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v49, v50);
        sub_23C5EDCC4(v50, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_23C5EDCC4(v49, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_23C585C34(v46, &qword_27E1FAB78, &unk_23C8A1360);
        if ((v51 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v38 = v97;
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = v100;
      v53 = v95;
      v54 = sub_23C871754();
      sub_23C5EDCC4(v53, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C5EDCC4(v52, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v101, &qword_27E1FAB88, &unk_23C8A1350);
      v37 = v98;
      if ((v54 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if ((sub_23C5D4D58(*v31, *v28) & 1) == 0)
    {
      goto LABEL_43;
    }

    v55 = *(updated + 28);
    v56 = *(v102 + 48);
    sub_23C5855B0(&v31[v55], v37, &qword_27E1FAB88, &unk_23C8A1350);
    sub_23C5855B0(&v28[v55], v37 + v56, &qword_27E1FAB88, &unk_23C8A1350);
    if (v43(v37, 1, v38) == 1)
    {
      if (v43(v37 + v56, 1, v38) != 1)
      {
        goto LABEL_35;
      }

      sub_23C585C34(v37, &qword_27E1FAB88, &unk_23C8A1350);
    }

    else
    {
      sub_23C5855B0(v37, v99, &qword_27E1FAB88, &unk_23C8A1350);
      v57 = v43(v37 + v56, 1, v38);
      v58 = v94;
      if (v57 == 1)
      {
        sub_23C5EDCC4(v99, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_35:
        v78 = &qword_27E1FAB90;
        v79 = &qword_23C878F38;
        v80 = v37;
        goto LABEL_42;
      }

      v59 = v92;
      sub_23C5EDD24(v37 + v56, v92, type metadata accessor for TranscriptProtoASTFlatValue);
      v60 = *(v93 + 48);
      v61 = v88;
      sub_23C5855B0(v99, v88, &qword_27E1FAB78, &unk_23C8A1360);
      sub_23C5855B0(v59, v61 + v60, &qword_27E1FAB78, &unk_23C8A1360);
      v62 = *v85;
      if ((*v85)(v61, 1, v58) == 1)
      {
        if (v62(v61 + v60, 1, v58) != 1)
        {
          goto LABEL_40;
        }

        sub_23C585C34(v61, &qword_27E1FAB78, &unk_23C8A1360);
      }

      else
      {
        v63 = v82;
        sub_23C5855B0(v61, v82, &qword_27E1FAB78, &unk_23C8A1360);
        if (v62(v61 + v60, 1, v58) == 1)
        {
          sub_23C5EDCC4(v63, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_40:
          sub_23C585C34(v61, &qword_27E1FAB80, &qword_23C878F30);
LABEL_41:
          sub_23C5EDCC4(v92, type metadata accessor for TranscriptProtoASTFlatValue);
          sub_23C5EDCC4(v99, type metadata accessor for TranscriptProtoASTFlatValue);
          v78 = &qword_27E1FAB88;
          v79 = &unk_23C8A1350;
          v80 = v98;
          goto LABEL_42;
        }

        v64 = v61 + v60;
        v65 = v83;
        sub_23C5EDD24(v64, v83, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v66 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v63, v65);
        v67 = v65;
        v68 = v88;
        sub_23C5EDCC4(v67, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_23C5EDCC4(v63, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_23C585C34(v68, &qword_27E1FAB78, &unk_23C8A1360);
        if ((v66 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v69 = v31;
      v70 = v28;
      v71 = v99;
      v72 = v97;
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v73 = v92;
      v74 = sub_23C871754();
      v75 = v73;
      v38 = v72;
      v76 = v71;
      v28 = v70;
      v31 = v69;
      sub_23C5EDCC4(v75, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C5EDCC4(v76, type metadata accessor for TranscriptProtoASTFlatValue);
      v37 = v98;
      sub_23C585C34(v98, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v74 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (v31[8] != v28[8])
    {
      goto LABEL_43;
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v77 = sub_23C871754();
    sub_23C5EDCC4(v28, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    sub_23C5EDCC4(v31, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    if (v77)
    {
      v32 = v89 - 1;
      v35 = v90 + v84;
      v34 = v91 + v84;
      if (v89 != 1)
      {
        continue;
      }
    }

    return v77 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D25E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_23C5D2670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD0, &qword_23C878EB8);
  MEMORY[0x28223BE20](v55);
  v63 = &v50 - v11;
  v58 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v12 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v50 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE0, &qword_23C878EC8);
  MEMORY[0x28223BE20](v62);
  v17 = &v50 - v16;
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  v18 = MEMORY[0x28223BE20](Output);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v50 - v22;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_26:
    v49 = 0;
    return v49 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v50 = v7;
  v51 = v10;
  v53 = v4;
  v54 = v20;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = (v12 + 48);
  v52 = (v5 + 48);
  v56 = *(v21 + 72);
  v57 = v27;
  v28 = v58;
  while (1)
  {
    v29 = v65;
    result = sub_23C5EDC08(v25, v65, type metadata accessor for ContextProtoToolQueryOutput);
    if (!v23)
    {
      break;
    }

    v64 = v23;
    sub_23C5EDC08(v26, v20, type metadata accessor for ContextProtoToolQueryOutput);
    v31 = *(v62 + 48);
    v32 = v17;
    sub_23C5855B0(v29, v17, &qword_27E1FAAD8, &qword_23C878EC0);
    sub_23C5855B0(v20, &v17[v31], &qword_27E1FAAD8, &qword_23C878EC0);
    v33 = *v27;
    if ((*v27)(v17, 1, v28) == 1)
    {
      if (v33(&v17[v31], 1, v28) != 1)
      {
        goto LABEL_21;
      }

      sub_23C585C34(v17, &qword_27E1FAAD8, &qword_23C878EC0);
    }

    else
    {
      v34 = v61;
      sub_23C5855B0(v17, v61, &qword_27E1FAAD8, &qword_23C878EC0);
      if (v33(&v17[v31], 1, v28) == 1)
      {
        sub_23C5EDCC4(v34, type metadata accessor for ContextProtoRetrievedTool.Definition);
        v20 = v54;
LABEL_21:
        sub_23C585C34(v17, &qword_27E1FAAE0, &qword_23C878EC8);
        goto LABEL_25;
      }

      v35 = v60;
      sub_23C5EDD24(&v17[v31], v60, type metadata accessor for ContextProtoRetrievedTool.Definition);
      v36 = *(v55 + 48);
      v37 = v63;
      sub_23C5855B0(v34, v63, &qword_27E1FA540, &unk_23C8791D0);
      sub_23C5855B0(v35, v37 + v36, &qword_27E1FA540, &unk_23C8791D0);
      v38 = *v52;
      v39 = v37;
      v40 = v53;
      if ((*v52)(v39, 1, v53) == 1)
      {
        if (v38(v63 + v36, 1, v40) != 1)
        {
          goto LABEL_23;
        }

        sub_23C585C34(v63, &qword_27E1FA540, &unk_23C8791D0);
      }

      else
      {
        v41 = v63;
        v42 = v51;
        sub_23C5855B0(v63, v51, &qword_27E1FA540, &unk_23C8791D0);
        if (v38(v41 + v36, 1, v40) == 1)
        {
          sub_23C5EDCC4(v42, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
          v17 = v32;
LABEL_23:
          sub_23C585C34(v63, &qword_27E1FAAD0, &qword_23C878EB8);
LABEL_24:
          sub_23C5EDCC4(v60, type metadata accessor for ContextProtoRetrievedTool.Definition);
          sub_23C5EDCC4(v61, type metadata accessor for ContextProtoRetrievedTool.Definition);
          sub_23C585C34(v17, &qword_27E1FAAD8, &qword_23C878EC0);
          v20 = v54;
LABEL_25:
          sub_23C5EDCC4(v20, type metadata accessor for ContextProtoToolQueryOutput);
          sub_23C5EDCC4(v65, type metadata accessor for ContextProtoToolQueryOutput);
          goto LABEL_26;
        }

        v43 = v50;
        sub_23C5EDD24(v41 + v36, v50, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        v44 = _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV0cD14DefinitionEnumO2eeoiySbAE_AEtFZ_0(v42, v43);
        sub_23C5EDCC4(v43, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        sub_23C5EDCC4(v42, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        sub_23C585C34(v41, &qword_27E1FA540, &unk_23C8791D0);
        v17 = v32;
        if ((v44 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v28 = v58;
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v45 = v60;
      v46 = v61;
      v47 = sub_23C871754();
      sub_23C5EDCC4(v45, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C5EDCC4(v46, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C585C34(v17, &qword_27E1FAAD8, &qword_23C878EC0);
      v20 = v54;
      if ((v47 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v48 = v65;
    v49 = sub_23C871754();
    sub_23C5EDCC4(v20, type metadata accessor for ContextProtoToolQueryOutput);
    sub_23C5EDCC4(v48, type metadata accessor for ContextProtoToolQueryOutput);
    if (v49)
    {
      v23 = v64 - 1;
      v27 = v57;
      v26 += v56;
      v25 += v56;
      if (v64 != 1)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D2F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = (&v63 - v8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v70);
  v75 = &v63 - v9;
  v77 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v63 - v13);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v73);
  v78 = &v63 - v15;
  v79 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v16 = MEMORY[0x28223BE20](v79);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v63 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_48:
    v58 = 0;
    return v58 & 1;
  }

  if (v22 && a1 != a2)
  {
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v67 = v4;
    v68 = v14;
    v25 = a2 + v23;
    v65 = v18;
    v66 = (v10 + 48);
    v63 = *(v19 + 72);
    v64 = (v5 + 48);
    while (1)
    {
      v72 = v24;
      sub_23C5EDC08(v24, v21, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_23C5EDC08(v25, v18, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v27 = v18;
      v74 = v25;
      v28 = v78;
      v29 = *(v79 + 20);
      v30 = *(v73 + 48);
      sub_23C5855B0(v21 + v29, v78, &qword_27E1FAC40, &unk_23C8791C0);
      sub_23C5855B0(v27 + v29, v28 + v30, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = *v66;
      v32 = v77;
      if ((*v66)(v28, 1, v77) == 1)
      {
        v26 = v31(v28 + v30, 1, v32) == 1;
        v33 = v28;
        if (!v26)
        {
          goto LABEL_36;
        }

        sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
        v35 = v74;
        v34 = v75;
        v36 = v64;
        v18 = v65;
      }

      else
      {
        v37 = v68;
        sub_23C5855B0(v28, v68, &qword_27E1FAC40, &unk_23C8791C0);
        if (v31(v28 + v30, 1, v32) == 1)
        {
          sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoTypeInstance);
          v33 = v28;
LABEL_36:
          sub_23C585C34(v33, &qword_27E1FAC48, &qword_23C878FD0);
          v18 = v65;
          break;
        }

        v38 = v71;
        sub_23C5EDD24(v28 + v30, v71, type metadata accessor for ToolKitProtoTypeInstance);
        v39 = *v37;
        v40 = *v38;
        if ((~*v37 & 0xF000000000000007) != 0)
        {
          v81[0] = *v37;
          v35 = v74;
          if ((~v40 & 0xF000000000000007) == 0)
          {
            sub_23C56F2C0(v39);
            sub_23C56F2C0(v40);
            sub_23C56F2C0(v39);

            v18 = v65;
LABEL_40:
            sub_23C56F2D8(v39);
            sub_23C56F2D8(v40);
LABEL_41:
            sub_23C5EDCC4(v71, type metadata accessor for ToolKitProtoTypeInstance);
            sub_23C5EDCC4(v68, type metadata accessor for ToolKitProtoTypeInstance);
            v59 = &qword_27E1FAC40;
            v60 = &unk_23C8791C0;
            v61 = v78;
            goto LABEL_46;
          }

          v80 = v40;
          sub_23C56F2C0(v39);
          sub_23C56F2C0(v40);
          sub_23C56F2C0(v39);
          v41 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(v81, &v80);

          sub_23C56F2D8(v39);
          v18 = v65;
          if ((v41 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_23C56F2C0(*v37);
          sub_23C56F2C0(v40);
          v35 = v74;
          v18 = v65;
          if ((~v40 & 0xF000000000000007) != 0)
          {
            goto LABEL_40;
          }

          sub_23C56F2D8(v39);
        }

        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v42 = v71;
        v43 = sub_23C871754();
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C5EDCC4(v68, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C585C34(v78, &qword_27E1FAC40, &unk_23C8791C0);
        v36 = v64;
        v34 = v75;
        if ((v43 & 1) == 0)
        {
          break;
        }
      }

      v74 = v22;
      v44 = *(v79 + 24);
      v45 = *(v70 + 48);
      sub_23C5855B0(v21 + v44, v34, &qword_27E1FAB68, &unk_23C879140);
      sub_23C5855B0(v18 + v44, v34 + v45, &qword_27E1FAB68, &unk_23C879140);
      v46 = *v36;
      v47 = v67;
      if ((*v36)(v34, 1, v67) == 1)
      {
        if (v46(v34 + v45, 1, v47) != 1)
        {
          goto LABEL_38;
        }

        sub_23C585C34(v34, &qword_27E1FAB68, &unk_23C879140);
        v48 = v74;
      }

      else
      {
        sub_23C5855B0(v34, v76, &qword_27E1FAB68, &unk_23C879140);
        if (v46(v34 + v45, 1, v47) == 1)
        {
          sub_23C5EDCC4(v76, type metadata accessor for ToolKitProtoTypedValue);
LABEL_38:
          v59 = &qword_27E1FAB70;
          v60 = &qword_23C878F28;
          goto LABEL_45;
        }

        v49 = v69;
        sub_23C5EDD24(v34 + v45, v69, type metadata accessor for ToolKitProtoTypedValue);
        v50 = *v76;
        v51 = *v49;
        if ((~*v76 & 0xF000000000000007) != 0)
        {
          v81[0] = *v76;
          if ((~v51 & 0xF000000000000007) == 0)
          {
            sub_23C56F2C0(v50);
            sub_23C56F2C0(v51);
            sub_23C56F2C0(v50);

LABEL_43:
            sub_23C56F2D8(v50);
            sub_23C56F2D8(v51);
LABEL_44:
            sub_23C5EDCC4(v69, type metadata accessor for ToolKitProtoTypedValue);
            sub_23C5EDCC4(v76, type metadata accessor for ToolKitProtoTypedValue);
            v59 = &qword_27E1FAB68;
            v60 = &unk_23C879140;
LABEL_45:
            v61 = v34;
LABEL_46:
            sub_23C585C34(v61, v59, v60);
            break;
          }

          v80 = v51;
          sub_23C56F2C0(v50);
          sub_23C56F2C0(v51);
          sub_23C56F2C0(v50);
          v52 = static ToolKitProtoTypedValueKind.== infix(_:_:)(v81, &v80);

          sub_23C56F2D8(v50);
          if ((v52 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_23C56F2C0(*v76);
          sub_23C56F2C0(v51);
          if ((~v51 & 0xF000000000000007) != 0)
          {
            goto LABEL_43;
          }

          sub_23C56F2D8(v50);
        }

        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v53 = v76;
        v54 = v69;
        v55 = sub_23C871754();
        v56 = v54;
        v57 = v75;
        sub_23C5EDCC4(v56, type metadata accessor for ToolKitProtoTypedValue);
        sub_23C5EDCC4(v53, type metadata accessor for ToolKitProtoTypedValue);
        sub_23C585C34(v57, &qword_27E1FAB68, &unk_23C879140);
        v48 = v74;
        if ((v55 & 1) == 0)
        {
          break;
        }
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v58 = sub_23C871754();
      sub_23C5EDCC4(v18, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_23C5EDCC4(v21, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      if (v58)
      {
        v25 = v35 + v63;
        v24 = v72 + v63;
        v22 = v48 - 1;
        if (v22)
        {
          continue;
        }
      }

      return v58 & 1;
    }

    sub_23C5EDCC4(v18, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    sub_23C5EDCC4(v21, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    goto LABEL_48;
  }

  v58 = 1;
  return v58 & 1;
}

uint64_t sub_23C5D3A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v52);
  v55 = &v46 - v11;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v13 = MEMORY[0x28223BE20](updated);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_40:
    v42 = 0;
    return v42 & 1;
  }

  if (v19 && a1 != a2)
  {
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = a1 + v20;
    v22 = v5;
    v23 = a2 + v20;
    v49 = (v22 + 48);
    v50 = v4;
    v47 = *(v16 + 72);
    v48 = updated;
    v46 = v7;
    while (1)
    {
      v51 = v21;
      sub_23C5EDC08(v21, v18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_23C5EDC08(v23, v15, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      v24 = *v18 == *v15 && *(v18 + 1) == *(v15 + 1);
      if (!v24 && (sub_23C872014() & 1) == 0 || v18[16] != v15[16])
      {
        break;
      }

      v53 = v19;
      v54 = v23;
      v25 = *(updated + 24);
      v26 = *(v52 + 48);
      v27 = v55;
      sub_23C5855B0(&v18[v25], v55, &qword_27E1FAAF8, &unk_23C8A1180);
      sub_23C5855B0(&v15[v25], v27 + v26, &qword_27E1FAAF8, &unk_23C8A1180);
      v28 = v50;
      v29 = *v49;
      if ((*v49)(v27, 1, v50) == 1)
      {
        v24 = v29(v27 + v26, 1, v28) == 1;
        v30 = v27;
        if (!v24)
        {
          goto LABEL_37;
        }

        sub_23C585C34(v27, &qword_27E1FAAF8, &unk_23C8A1180);
        updated = v48;
        v31 = v53;
        v32 = v54;
      }

      else
      {
        sub_23C5855B0(v27, v10, &qword_27E1FAAF8, &unk_23C8A1180);
        if (v29(v27 + v26, 1, v28) == 1)
        {
          sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoStatementID);
          v30 = v27;
LABEL_37:
          v43 = &qword_27E1FAB00;
          v44 = &qword_23C878ED8;
LABEL_38:
          sub_23C585C34(v30, v43, v44);
          break;
        }

        v33 = v46;
        sub_23C5EDD24(v27 + v26, v46, type metadata accessor for TranscriptProtoStatementID);
        updated = v48;
        v31 = v53;
        v32 = v54;
        if (*v10 != *v33)
        {
          goto LABEL_35;
        }

        v34 = *(v10 + 2);
        v35 = *(v33 + 16);
        if (v34)
        {
          if (!v35 || (*(v10 + 1) != *(v33 + 8) || v34 != v35) && (sub_23C872014() & 1) == 0)
          {
LABEL_35:
            sub_23C5EDCC4(v33, type metadata accessor for TranscriptProtoStatementID);
            sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoStatementID);
            v43 = &qword_27E1FAAF8;
            v44 = &unk_23C8A1180;
            v30 = v55;
            goto LABEL_38;
          }
        }

        else if (v35)
        {
          goto LABEL_35;
        }

        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = sub_23C871754();
        sub_23C5EDCC4(v33, type metadata accessor for TranscriptProtoStatementID);
        sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoStatementID);
        sub_23C585C34(v55, &qword_27E1FAAF8, &unk_23C8A1180);
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      v37 = *(updated + 28);
      v38 = &v18[v37];
      v39 = v18[v37 + 8];
      v40 = &v15[v37];
      v41 = v15[v37 + 8];
      if (v39)
      {
        if (!v41)
        {
          break;
        }
      }

      else
      {
        if (*v38 != *v40)
        {
          LOBYTE(v41) = 1;
        }

        if (v41)
        {
          break;
        }
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = sub_23C871754();
      sub_23C5EDCC4(v15, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      if (v42)
      {
        v23 = v32 + v47;
        v21 = v51 + v47;
        v19 = v31 - 1;
        if (v19)
        {
          continue;
        }
      }

      return v42 & 1;
    }

    sub_23C5EDCC4(v15, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
    sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
    goto LABEL_40;
  }

  v42 = 1;
  return v42 & 1;
}

uint64_t sub_23C5D40D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = (&v42 - v8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v48);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v42 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_36:
    v38 = 0;
    return v38 & 1;
  }

  if (v18 && a1 != a2)
  {
    v43 = v11;
    v44 = v10;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v45 = (v5 + 48);
    v46 = v4;
    v42 = *(v15 + 72);
    while (1)
    {
      sub_23C5EDC08(v20, v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      v50 = v21;
      sub_23C5EDC08(v21, v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v23 = v17[2] == v14[2] && v17[3] == v14[3];
      if (!v23 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v49 = v20;
      v24 = *(v11 + 24);
      v25 = *(v48 + 48);
      v26 = v44;
      sub_23C5855B0(v17 + v24, v44, &qword_27E1FAC40, &unk_23C8791C0);
      sub_23C5855B0(v14 + v24, v26 + v25, &qword_27E1FAC40, &unk_23C8791C0);
      v27 = v46;
      v28 = *v45;
      if ((*v45)(v26, 1, v46) == 1)
      {
        if (v28(v26 + v25, 1, v27) != 1)
        {
          goto LABEL_30;
        }

        sub_23C585C34(v26, &qword_27E1FAC40, &unk_23C8791C0);
        v11 = v43;
        v29 = v49;
      }

      else
      {
        sub_23C5855B0(v26, v51, &qword_27E1FAC40, &unk_23C8791C0);
        if (v28(v26 + v25, 1, v27) == 1)
        {
          sub_23C5EDCC4(v51, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_30:
          v39 = &qword_27E1FAC48;
          v40 = &qword_23C878FD0;
          goto LABEL_34;
        }

        v30 = v26 + v25;
        v31 = v47;
        sub_23C5EDD24(v30, v47, type metadata accessor for ToolKitProtoTypeInstance);
        v32 = *v51;
        v33 = *v31;
        if ((~*v51 & 0xF000000000000007) != 0)
        {
          v53 = *v51;
          if ((~v33 & 0xF000000000000007) == 0)
          {
            sub_23C56F2C0(v32);
            sub_23C56F2C0(v33);
            sub_23C56F2C0(v32);

LABEL_32:
            sub_23C56F2D8(v32);
            sub_23C56F2D8(v33);
LABEL_33:
            sub_23C5EDCC4(v47, type metadata accessor for ToolKitProtoTypeInstance);
            sub_23C5EDCC4(v51, type metadata accessor for ToolKitProtoTypeInstance);
            v39 = &qword_27E1FAC40;
            v40 = &unk_23C8791C0;
LABEL_34:
            sub_23C585C34(v26, v39, v40);
            break;
          }

          v52 = v33;
          sub_23C56F2C0(v32);
          sub_23C56F2C0(v33);
          sub_23C56F2C0(v32);
          v34 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v53, &v52);

          sub_23C56F2D8(v32);
          if ((v34 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_23C56F2C0(*v51);
          sub_23C56F2C0(v33);
          if ((~v33 & 0xF000000000000007) != 0)
          {
            goto LABEL_32;
          }

          sub_23C56F2D8(v32);
        }

        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v35 = v51;
        v36 = v47;
        v37 = sub_23C871754();
        sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C5EDCC4(v35, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C585C34(v26, &qword_27E1FAC40, &unk_23C8791C0);
        v11 = v43;
        v29 = v49;
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_23C871754();
      sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      if (v38)
      {
        v21 = v50 + v42;
        v20 = v29 + v42;
        if (--v18)
        {
          continue;
        }
      }

      return v38 & 1;
    }

    sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_36;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t sub_23C5D4798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  MEMORY[0x28223BE20](v48);
  v11 = &v41 - v10;
  v45 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  v12 = MEMORY[0x28223BE20](v45);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v50 = (&v41 - v16);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_23:
    v40 = 0;
    return v40 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v18 = *(a1 + 16);
  v42 = v9;
  v46 = v14;
  v47 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v44 = *(v15 + 72);
  v23 = v45;
  v24 = v18;
  while (1)
  {
    v25 = v50;
    result = sub_23C5EDC08(v20, v50, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    if (!v24)
    {
      break;
    }

    v49 = v24;
    sub_23C5EDC08(v21, v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    v27 = *v25 == *v14 && v25[1] == v14[1];
    if (!v27 && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_22;
    }

    v28 = *(v23 + 20);
    v29 = *(v48 + 48);
    sub_23C5855B0(v50 + v28, v11, &qword_27E1FAC30, &qword_23C878FC0);
    sub_23C5855B0(v14 + v28, &v11[v29], &qword_27E1FAC30, &qword_23C878FC0);
    v30 = *v22;
    v31 = v11;
    v32 = v11;
    v33 = v47;
    if ((*v22)(v31, 1, v47) == 1)
    {
      if (v30((v32 + v29), 1, v33) != 1)
      {
        goto LABEL_21;
      }

      sub_23C585C34(v32, &qword_27E1FAC30, &qword_23C878FC0);
      v11 = v32;
      v14 = v46;
    }

    else
    {
      v34 = v42;
      sub_23C5855B0(v32, v42, &qword_27E1FAC30, &qword_23C878FC0);
      if (v30((v32 + v29), 1, v33) == 1)
      {
        sub_23C5EDCC4(v34, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_21:
        sub_23C585C34(v32, &qword_27E1FAC38, &qword_23C878FC8);
        v14 = v46;
LABEL_22:
        sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        sub_23C5EDCC4(v50, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        goto LABEL_23;
      }

      v35 = v22;
      v36 = v43;
      sub_23C5EDD24(v32 + v29, v43, type metadata accessor for ToolKitProtoDisplayRepresentation);
      v37 = static ToolKitProtoDisplayRepresentation.== infix(_:_:)(v34, v36);
      v38 = v36;
      v22 = v35;
      sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_23C5EDCC4(v34, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_23C585C34(v32, &qword_27E1FAC30, &qword_23C878FC0);
      v11 = v32;
      v23 = v45;
      v14 = v46;
      if ((v37 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = v50;
    v40 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    sub_23C5EDCC4(v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    if (v40)
    {
      v24 = v49 - 1;
      v21 += v44;
      v20 += v44;
      if (v49 != 1)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D4D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB80, &qword_23C878F30);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27E1FAB78;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for TranscriptProtoASTFlatValue);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for TranscriptProtoASTFlatValue);
    v25 = *(v42 + 48);
    sub_23C5855B0(v17, v11, v23, &unk_23C8A1360);
    sub_23C5855B0(v14, &v11[v25], v23, &unk_23C8A1360);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &unk_23C8A1360);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_23C5855B0(v11, v37, v27, &unk_23C8A1360);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_23C585C34(v11, &qword_27E1FAB80, &qword_23C878F30);
LABEL_17:
        sub_23C5EDCC4(v14, type metadata accessor for TranscriptProtoASTFlatValue);
        sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoASTFlatValue);
        goto LABEL_18;
      }

      v31 = v38;
      sub_23C5EDD24(&v11[v25], v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v32 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_23C585C34(v11, v27, &unk_23C8A1360);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for TranscriptProtoASTFlatValue);
    sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoASTFlatValue);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D5284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v87 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v81 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB10, &qword_23C878EE8);
  MEMORY[0x28223BE20](v93);
  v94 = &v81 - v9;
  v108 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v10 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v99 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB18, &qword_23C878EF0);
  MEMORY[0x28223BE20](v12 - 8);
  v100 = &v81 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB20, &qword_23C878EF8);
  MEMORY[0x28223BE20](v101);
  v15 = &v81 - v14;
  v97 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v106 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v88 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = &v81 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB30, &qword_23C878F00);
  MEMORY[0x28223BE20](v95);
  v96 = &v81 - v19;
  v20 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v102 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v23 - 8);
  v107 = &v81 - v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  MEMORY[0x28223BE20](v103);
  v26 = &v81 - v25;
  v109 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v27 = MEMORY[0x28223BE20](v109);
  v111 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v110 = &v81 - v30;
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
LABEL_43:
    v76 = 0;
    return v76 & 1;
  }

  if (!v31 || a1 == a2)
  {
    v76 = 1;
    return v76 & 1;
  }

  v84 = v4;
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = a1 + v32;
  v91 = (v21 + 48);
  v34 = a2 + v32;
  v85 = (v106 + 48);
  v83 = (v5 + 48);
  v86 = *(v29 + 72);
  v35 = v110;
  v98 = v20;
  v36 = v107;
  v82 = v15;
  v90 = (v10 + 48);
  while (1)
  {
    v106 = v33;
    result = sub_23C5EDC08(v33, v35, type metadata accessor for ContextProtoToolRetrievalType);
    if (!v31)
    {
      break;
    }

    v104 = v31;
    v105 = v34;
    v38 = v34;
    v39 = v111;
    sub_23C5EDC08(v38, v111, type metadata accessor for ContextProtoToolRetrievalType);
    v40 = *(v103 + 48);
    v41 = v26;
    sub_23C5855B0(v35, v26, &qword_27E1FAB38, &unk_23C8791E0);
    sub_23C5855B0(v39, &v26[v40], &qword_27E1FAB38, &unk_23C8791E0);
    v42 = *v91;
    if ((*v91)(v26, 1, v20) == 1)
    {
      if (v42(&v26[v40], 1, v20) != 1)
      {
        goto LABEL_31;
      }

      sub_23C585C34(v26, &qword_27E1FAB38, &unk_23C8791E0);
      v43 = v90;
    }

    else
    {
      sub_23C5855B0(v26, v36, &qword_27E1FAB38, &unk_23C8791E0);
      if (v42(&v26[v40], 1, v20) == 1)
      {
        sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_31:
        v78 = &qword_27E1FAB40;
        v79 = &qword_23C878F08;
LABEL_37:
        v80 = v26;
        goto LABEL_41;
      }

      v44 = v102;
      sub_23C5EDD24(&v26[v40], v102, type metadata accessor for ToolKitProtoTypeIdentifier);
      v45 = v96;
      v46 = *(v95 + 48);
      sub_23C5855B0(v36, v96, &qword_27E1FAB28, &unk_23C889C40);
      sub_23C5855B0(v44, v45 + v46, &qword_27E1FAB28, &unk_23C889C40);
      v47 = *v85;
      v48 = v97;
      if ((*v85)(v45, 1, v97) == 1)
      {
        if (v47(v45 + v46, 1, v48) != 1)
        {
          goto LABEL_35;
        }

        sub_23C585C34(v45, &qword_27E1FAB28, &unk_23C889C40);
      }

      else
      {
        v49 = v89;
        sub_23C5855B0(v45, v89, &qword_27E1FAB28, &unk_23C889C40);
        if (v47(v45 + v46, 1, v48) == 1)
        {
          sub_23C5EDCC4(v49, type metadata accessor for ToolKitProtoTypeIdentifierKind);
          v36 = v107;
          v26 = v41;
LABEL_35:
          sub_23C585C34(v45, &qword_27E1FAB30, &qword_23C878F00);
LABEL_36:
          sub_23C5EDCC4(v102, type metadata accessor for ToolKitProtoTypeIdentifier);
          sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypeIdentifier);
          v78 = &qword_27E1FAB38;
          v79 = &unk_23C8791E0;
          goto LABEL_37;
        }

        v50 = v88;
        sub_23C5EDD24(v45 + v46, v88, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        v51 = static ToolKitProtoTypeIdentifierKind.== infix(_:_:)(v49, v50);
        v52 = v50;
        v35 = v110;
        sub_23C5EDCC4(v52, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        sub_23C5EDCC4(v49, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        sub_23C585C34(v45, &qword_27E1FAB28, &unk_23C889C40);
        v36 = v107;
        v26 = v41;
        if ((v51 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v53 = v102;
      v54 = sub_23C871754();
      v55 = v53;
      v36 = v107;
      sub_23C5EDCC4(v55, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v26, &qword_27E1FAB38, &unk_23C8791E0);
      v43 = v90;
      if ((v54 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v56 = v35;
    v57 = *(v109 + 20);
    v58 = v100;
    v59 = *(v101 + 48);
    sub_23C5855B0(v56 + v57, v15, &qword_27E1FAB18, &qword_23C878EF0);
    sub_23C5855B0(v111 + v57, &v15[v59], &qword_27E1FAB18, &qword_23C878EF0);
    v60 = *v43;
    v61 = v108;
    if ((*v43)(v15, 1, v108) == 1)
    {
      if (v60(&v15[v59], 1, v61) != 1)
      {
        goto LABEL_33;
      }

      sub_23C585C34(v15, &qword_27E1FAB18, &qword_23C878EF0);
      v20 = v98;
    }

    else
    {
      sub_23C5855B0(v15, v58, &qword_27E1FAB18, &qword_23C878EF0);
      if (v60(&v15[v59], 1, v61) == 1)
      {
        sub_23C5EDCC4(v58, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
LABEL_33:
        sub_23C585C34(v15, &qword_27E1FAB20, &qword_23C878EF8);
        v35 = v110;
        goto LABEL_42;
      }

      v62 = v92;
      v63 = v99;
      sub_23C5EDD24(&v15[v59], v99, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      v64 = v94;
      v65 = *(v93 + 48);
      sub_23C5855B0(v58, v94, &qword_27E1FAB08, &qword_23C878EE0);
      sub_23C5855B0(v63, v64 + v65, &qword_27E1FAB08, &qword_23C878EE0);
      v66 = *v83;
      v67 = v84;
      if ((*v83)(v64, 1, v84) == 1)
      {
        v68 = v66(v64 + v65, 1, v67);
        v69 = v58;
        v36 = v107;
        if (v68 != 1)
        {
          goto LABEL_39;
        }

        sub_23C585C34(v64, &qword_27E1FAB08, &qword_23C878EE0);
        v35 = v110;
      }

      else
      {
        sub_23C5855B0(v64, v62, &qword_27E1FAB08, &qword_23C878EE0);
        v70 = v66(v64 + v65, 1, v67);
        v36 = v107;
        if (v70 == 1)
        {
          sub_23C5EDCC4(v62, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
          v69 = v58;
LABEL_39:
          sub_23C585C34(v64, &qword_27E1FAB10, &qword_23C878EE8);
          v35 = v110;
LABEL_40:
          sub_23C5EDCC4(v99, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
          sub_23C5EDCC4(v69, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
          v78 = &qword_27E1FAB18;
          v79 = &qword_23C878EF0;
          v80 = v82;
LABEL_41:
          sub_23C585C34(v80, v78, v79);
LABEL_42:
          sub_23C5EDCC4(v111, type metadata accessor for ContextProtoToolRetrievalType);
          sub_23C5EDCC4(v35, type metadata accessor for ContextProtoToolRetrievalType);
          goto LABEL_43;
        }

        v71 = v87;
        sub_23C5EDD24(v64 + v65, v87, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        v72 = static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)(v62, v71);
        sub_23C5EDCC4(v71, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        sub_23C5EDCC4(v62, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        sub_23C585C34(v64, &qword_27E1FAB08, &qword_23C878EE0);
        v69 = v58;
        v35 = v110;
        if ((v72 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v73 = v99;
      v74 = sub_23C871754();
      sub_23C5EDCC4(v73, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      sub_23C5EDCC4(v69, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      v15 = v82;
      sub_23C585C34(v82, &qword_27E1FAB18, &qword_23C878EF0);
      v20 = v98;
      if ((v74 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v75 = v111;
    v76 = sub_23C871754();
    v77 = v75;
    v35 = v110;
    sub_23C5EDCC4(v77, type metadata accessor for ContextProtoToolRetrievalType);
    sub_23C5EDCC4(v35, type metadata accessor for ContextProtoToolRetrievalType);
    if (v76)
    {
      v31 = v104 - 1;
      v34 = v105 + v86;
      v33 = v106 + v86;
      if (v104 != 1)
      {
        continue;
      }
    }

    return v76 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D622C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v26 = a3(0);
  v9 = MEMORY[0x28223BE20](v26);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = (&v25 - v13);
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_22:
    v23 = 0;
    return v23 & 1;
  }

  if (v15 && a1 != a2)
  {
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v12 + 72);
    while (1)
    {
      sub_23C5EDC08(v17, v14, a5);
      sub_23C5EDC08(v18, v11, a5);
      v20 = *v14 == *v11 && v14[1] == v11[1];
      if (!v20 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v21 = v14[3];
      v22 = v11[3];
      if (v21)
      {
        if (!v22 || (v14[2] != v11[2] || v21 != v22) && (sub_23C872014() & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        break;
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v23 = sub_23C871754();
      sub_23C5EDCC4(v11, a4);
      sub_23C5EDCC4(v14, a4);
      if (v23)
      {
        v18 += v19;
        v17 += v19;
        if (--v15)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_23C5EDCC4(v11, a4);
    sub_23C5EDCC4(v14, a4);
    goto LABEL_22;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_23C5D6494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA8, &qword_23C878F50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB0, &qword_23C878F58);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v52 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v62);
  v63 = &v52 - v16;
  v67 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v17 = MEMORY[0x28223BE20](v67);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_36:
    v47 = 0;
    return v47 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v56 = v19;
  v57 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v58 = (v66 + 48);
  v54 = v13;
  v55 = (v5 + 48);
  v53 = *(v20 + 72);
  v68 = &v52 - v21;
  while (1)
  {
    v65 = v25;
    result = sub_23C5EDC08(v25, v22, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    if (!v23)
    {
      break;
    }

    v66 = v23;
    v64 = v26;
    sub_23C5EDC08(v26, v19, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    v28 = v63;
    v29 = *(v62 + 48);
    sub_23C5855B0(v22, v63, &qword_27E1FAAF8, &unk_23C8A1180);
    sub_23C5855B0(v19, v28 + v29, &qword_27E1FAAF8, &unk_23C8A1180);
    v30 = *v58;
    if ((*v58)(v28, 1, v11) == 1)
    {
      v31 = v11;
      if (v30(v28 + v29, 1, v11) != 1)
      {
        goto LABEL_31;
      }

      sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
      v32 = v66;
    }

    else
    {
      sub_23C5855B0(v28, v69, &qword_27E1FAAF8, &unk_23C8A1180);
      v31 = v11;
      if (v30(v28 + v29, 1, v11) == 1)
      {
        sub_23C5EDCC4(v69, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        v49 = &qword_27E1FAB00;
        v50 = &qword_23C878ED8;
        v51 = v28;
LABEL_32:
        sub_23C585C34(v51, v49, v50);
LABEL_35:
        sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        sub_23C5EDCC4(v68, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        goto LABEL_36;
      }

      sub_23C5EDD24(v28 + v29, v13, type metadata accessor for TranscriptProtoStatementID);
      v32 = v66;
      if (*v69 != *v13)
      {
        goto LABEL_29;
      }

      v33 = *(v69 + 16);
      v34 = *(v13 + 2);
      if (v33)
      {
        if (!v34 || (*(v69 + 8) != *(v13 + 1) || v33 != v34) && (sub_23C872014() & 1) == 0)
        {
LABEL_29:
          sub_23C5EDCC4(v13, type metadata accessor for TranscriptProtoStatementID);
          sub_23C5EDCC4(v69, type metadata accessor for TranscriptProtoStatementID);
          v49 = &qword_27E1FAAF8;
          v50 = &unk_23C8A1180;
          v51 = v28;
          goto LABEL_32;
        }
      }

      else if (v34)
      {
        goto LABEL_29;
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = v69;
      v36 = sub_23C871754();
      sub_23C5EDCC4(v13, type metadata accessor for TranscriptProtoStatementID);
      sub_23C5EDCC4(v35, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v36 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v37 = v9;
    v38 = *(v67 + 20);
    v39 = *(v61 + 48);
    v40 = v19;
    v41 = v60;
    sub_23C5855B0(&v68[v38], v60, &qword_27E1FABA8, &qword_23C878F50);
    sub_23C5855B0(&v40[v38], v41 + v39, &qword_27E1FABA8, &qword_23C878F50);
    v42 = *v55;
    v43 = v57;
    if ((*v55)(v41, 1, v57) == 1)
    {
      if (v42(v41 + v39, 1, v43) != 1)
      {
        goto LABEL_34;
      }

      sub_23C585C34(v41, &qword_27E1FABA8, &qword_23C878F50);
      v9 = v37;
      v11 = v31;
      v13 = v54;
      v19 = v56;
    }

    else
    {
      sub_23C5855B0(v41, v37, &qword_27E1FABA8, &qword_23C878F50);
      if (v42(v41 + v39, 1, v43) == 1)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ContextProtoRetrievedContext);
LABEL_34:
        sub_23C585C34(v41, &qword_27E1FABB0, &qword_23C878F58);
        v19 = v56;
        goto LABEL_35;
      }

      v44 = v59;
      sub_23C5EDD24(v41 + v39, v59, type metadata accessor for ContextProtoRetrievedContext);
      v45 = _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0(v37, v44);
      sub_23C5EDCC4(v44, type metadata accessor for ContextProtoRetrievedContext);
      sub_23C5EDCC4(v37, type metadata accessor for ContextProtoRetrievedContext);
      sub_23C585C34(v41, &qword_27E1FABA8, &qword_23C878F50);
      v9 = v37;
      v11 = v31;
      v13 = v54;
      v19 = v56;
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v46 = v68;
    v47 = sub_23C871754();
    sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    sub_23C5EDCC4(v46, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    if (v47)
    {
      v26 = v64 + v53;
      v25 = v65 + v53;
      v48 = v32 == 1;
      v23 = v32 - 1;
      v22 = v68;
      if (!v48)
      {
        continue;
      }
    }

    return v47 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D6DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE8, &unk_23C8A1330);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF0, &qword_23C878ED0);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v52 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v62);
  v63 = &v52 - v16;
  v67 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v17 = MEMORY[0x28223BE20](v67);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_36:
    v47 = 0;
    return v47 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v56 = v19;
  v57 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v58 = (v66 + 48);
  v54 = v13;
  v55 = (v5 + 48);
  v53 = *(v20 + 72);
  v68 = &v52 - v21;
  while (1)
  {
    v65 = v25;
    result = sub_23C5EDC08(v25, v22, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    if (!v23)
    {
      break;
    }

    v66 = v23;
    v64 = v26;
    sub_23C5EDC08(v26, v19, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    v28 = v63;
    v29 = *(v62 + 48);
    sub_23C5855B0(v22, v63, &qword_27E1FAAF8, &unk_23C8A1180);
    sub_23C5855B0(v19, v28 + v29, &qword_27E1FAAF8, &unk_23C8A1180);
    v30 = *v58;
    if ((*v58)(v28, 1, v11) == 1)
    {
      v31 = v11;
      if (v30(v28 + v29, 1, v11) != 1)
      {
        goto LABEL_31;
      }

      sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
      v32 = v66;
    }

    else
    {
      sub_23C5855B0(v28, v69, &qword_27E1FAAF8, &unk_23C8A1180);
      v31 = v11;
      if (v30(v28 + v29, 1, v11) == 1)
      {
        sub_23C5EDCC4(v69, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        v49 = &qword_27E1FAB00;
        v50 = &qword_23C878ED8;
        v51 = v28;
LABEL_32:
        sub_23C585C34(v51, v49, v50);
LABEL_35:
        sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_23C5EDCC4(v68, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        goto LABEL_36;
      }

      sub_23C5EDD24(v28 + v29, v13, type metadata accessor for TranscriptProtoStatementID);
      v32 = v66;
      if (*v69 != *v13)
      {
        goto LABEL_29;
      }

      v33 = *(v69 + 16);
      v34 = *(v13 + 2);
      if (v33)
      {
        if (!v34 || (*(v69 + 8) != *(v13 + 1) || v33 != v34) && (sub_23C872014() & 1) == 0)
        {
LABEL_29:
          sub_23C5EDCC4(v13, type metadata accessor for TranscriptProtoStatementID);
          sub_23C5EDCC4(v69, type metadata accessor for TranscriptProtoStatementID);
          v49 = &qword_27E1FAAF8;
          v50 = &unk_23C8A1180;
          v51 = v28;
          goto LABEL_32;
        }
      }

      else if (v34)
      {
        goto LABEL_29;
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = v69;
      v36 = sub_23C871754();
      sub_23C5EDCC4(v13, type metadata accessor for TranscriptProtoStatementID);
      sub_23C5EDCC4(v35, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v36 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v37 = v9;
    v38 = *(v67 + 20);
    v39 = *(v61 + 48);
    v40 = v19;
    v41 = v60;
    sub_23C5855B0(&v68[v38], v60, &qword_27E1FAAE8, &unk_23C8A1330);
    sub_23C5855B0(&v40[v38], v41 + v39, &qword_27E1FAAE8, &unk_23C8A1330);
    v42 = *v55;
    v43 = v57;
    if ((*v55)(v41, 1, v57) == 1)
    {
      if (v42(v41 + v39, 1, v43) != 1)
      {
        goto LABEL_34;
      }

      sub_23C585C34(v41, &qword_27E1FAAE8, &unk_23C8A1330);
      v9 = v37;
      v11 = v31;
      v13 = v54;
      v19 = v56;
    }

    else
    {
      sub_23C5855B0(v41, v37, &qword_27E1FAAE8, &unk_23C8A1330);
      if (v42(v41 + v39, 1, v43) == 1)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ContextProtoDynamicEnumerationEntity);
LABEL_34:
        sub_23C585C34(v41, &qword_27E1FAAF0, &qword_23C878ED0);
        v19 = v56;
        goto LABEL_35;
      }

      v44 = v59;
      sub_23C5EDD24(v41 + v39, v59, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v45 = _s26AIMLInstrumentationStreams36ContextProtoDynamicEnumerationEntityV2eeoiySbAC_ACtFZ_0(v37, v44);
      sub_23C5EDCC4(v44, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_23C5EDCC4(v37, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_23C585C34(v41, &qword_27E1FAAE8, &unk_23C8A1330);
      v9 = v37;
      v11 = v31;
      v13 = v54;
      v19 = v56;
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v46 = v68;
    v47 = sub_23C871754();
    sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    sub_23C5EDCC4(v46, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    if (v47)
    {
      v26 = v64 + v53;
      v25 = v65 + v53;
      v48 = v32 == 1;
      v23 = v32 - 1;
      v22 = v68;
      if (!v48)
      {
        continue;
      }
    }

    return v47 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D76C4(uint64_t a1, uint64_t a2)
{
  v149 = type metadata accessor for TranscriptProtoStatementID(0);
  v155 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v150 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v5 - 8);
  v139 = (&v118 - v6);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v140);
  v147 = &v118 - v7;
  v8 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v146 = (&v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB8, &unk_23C8A11E0);
  MEMORY[0x28223BE20](v11 - 8);
  v136 = &v118 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC0, &qword_23C878F60);
  MEMORY[0x28223BE20](v141);
  v148 = &v118 - v13;
  v151 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v142 = (&v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v16 - 8);
  v143 = (&v118 - v17);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v144);
  v152 = &v118 - v18;
  v19 = type metadata accessor for TranscriptProtoCandidate(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v159 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB98, &qword_23C878F40);
  MEMORY[0x28223BE20](v22 - 8);
  v158 = &v118 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA0, &qword_23C878F48);
  MEMORY[0x28223BE20](v154);
  v25 = &v118 - v24;
  v160 = type metadata accessor for TranscriptProtoParameter(0);
  v156 = *(v160 - 8);
  v26 = MEMORY[0x28223BE20](v160);
  v28 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v118 - v29;
  v31 = type metadata accessor for TranscriptProtoParameterSet(0);
  v32 = MEMORY[0x28223BE20](v31);
  v157 = (&v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v153 = &v118 - v36;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_96:
    v115 = 0;
    return v115 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v115 = 1;
    return v115 & 1;
  }

  v138 = v19;
  v123 = v34;
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = a1 + v38;
  v127 = a2 + v38;
  v132 = (v20 + 48);
  v125 = (v14 + 48);
  v124 = (v9 + 48);
  v40 = 0;
  v120 = (v155 + 48);
  v41 = *(v35 + 72);
  v42 = v149;
  v43 = v158;
  v44 = v153;
  v126 = v8;
  v135 = v37;
  v122 = a1 + v38;
  v121 = v41;
  while (1)
  {
    v45 = v41 * v40;
    result = sub_23C5EDC08(v39 + v41 * v40, v44, type metadata accessor for TranscriptProtoParameterSet);
    if (v40 == v135)
    {
      break;
    }

    v47 = v127 + v45;
    v48 = v157;
    result = sub_23C5EDC08(v47, v157, type metadata accessor for TranscriptProtoParameterSet);
    v49 = *v44;
    v50 = *(*v44 + 16);
    v155 = *v48;
    if (v50 != *(v155 + 16))
    {
LABEL_95:
      sub_23C5EDCC4(v157, type metadata accessor for TranscriptProtoParameterSet);
      sub_23C5EDCC4(v153, type metadata accessor for TranscriptProtoParameterSet);
      goto LABEL_96;
    }

    v51 = v42;
    if (v50 && v49 != v155)
    {
      v52 = 0;
      v53 = (*(v156 + 80) + 32) & ~*(v156 + 80);
      v134 = v49 + v53;
      v133 = v155 + v53;
      v119 = v40;
      v137 = v28;
      v131 = v30;
      v128 = v25;
      v130 = v49;
      v129 = v50;
      while (v52 < *(v49 + 16))
      {
        v54 = *(v156 + 72) * v52;
        result = sub_23C5EDC08(v134 + v54, v30, type metadata accessor for TranscriptProtoParameter);
        if (v52 >= *(v155 + 16))
        {
          goto LABEL_99;
        }

        sub_23C5EDC08(v133 + v54, v28, type metadata accessor for TranscriptProtoParameter);
        if ((*v30 != *v28 || *(v30 + 1) != *(v28 + 1)) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_94;
        }

        v55 = v28[24];
        if (v30[24])
        {
          if (!v28[24])
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (*(v30 + 2) != *(v28 + 2))
          {
            v55 = 1;
          }

          if (v55)
          {
            goto LABEL_94;
          }
        }

        v145 = v52;
        v56 = *(v160 + 24);
        v57 = *(v154 + 48);
        sub_23C5855B0(&v30[v56], v25, &qword_27E1FAB98, &qword_23C878F40);
        sub_23C5855B0(&v28[v56], &v25[v57], &qword_27E1FAB98, &qword_23C878F40);
        v58 = v138;
        v59 = *v132;
        if ((*v132)(v25, 1, v138) == 1)
        {
          if (v59(&v25[v57], 1, v58) != 1)
          {
            goto LABEL_78;
          }

          sub_23C585C34(v25, &qword_27E1FAB98, &qword_23C878F40);
          v28 = v137;
          v30 = v131;
          v60 = v145;
        }

        else
        {
          sub_23C5855B0(v25, v43, &qword_27E1FAB98, &qword_23C878F40);
          if (v59(&v25[v57], 1, v58) == 1)
          {
            sub_23C5EDCC4(v43, type metadata accessor for TranscriptProtoCandidate);
LABEL_78:
            sub_23C585C34(v25, &qword_27E1FABA0, &qword_23C878F48);
            v28 = v137;
            goto LABEL_93;
          }

          v61 = v25;
          v62 = &v25[v57];
          v63 = v159;
          sub_23C5EDD24(v62, v159, type metadata accessor for TranscriptProtoCandidate);
          v64 = *(v58 + 20);
          v65 = *(v144 + 48);
          v66 = v152;
          sub_23C5855B0(&v43[v64], v152, &qword_27E1FAB68, &unk_23C879140);
          sub_23C5855B0(v63 + v64, v66 + v65, &qword_27E1FAB68, &unk_23C879140);
          v67 = *v125;
          v68 = v151;
          if ((*v125)(v66, 1, v151) == 1)
          {
            v69 = v67(v66 + v65, 1, v68) == 1;
            v70 = v66;
            if (!v69)
            {
              goto LABEL_82;
            }

            sub_23C585C34(v66, &qword_27E1FAB68, &unk_23C879140);
            v43 = v158;
            v71 = v159;
            v25 = v61;
            v72 = v138;
            v28 = v137;
          }

          else
          {
            v73 = v143;
            sub_23C5855B0(v66, v143, &qword_27E1FAB68, &unk_23C879140);
            if (v67(v66 + v65, 1, v68) == 1)
            {
              sub_23C5EDCC4(v73, type metadata accessor for ToolKitProtoTypedValue);
              v70 = v66;
LABEL_82:
              sub_23C585C34(v70, &qword_27E1FAB70, &qword_23C878F28);
              v43 = v158;
              v25 = v61;
              v28 = v137;
              goto LABEL_91;
            }

            v74 = v142;
            sub_23C5EDD24(v66 + v65, v142, type metadata accessor for ToolKitProtoTypedValue);
            v75 = *v73;
            v76 = *v74;
            if ((~*v73 & 0xF000000000000007) != 0)
            {
              v162 = *v73;
              v43 = v158;
              v25 = v61;
              if ((~v76 & 0xF000000000000007) == 0)
              {
                sub_23C56F2C0(v75);
                sub_23C56F2C0(v76);
                sub_23C56F2C0(v75);

                v28 = v137;
LABEL_88:
                sub_23C56F2D8(v75);
                sub_23C56F2D8(v76);
                v43 = v158;
LABEL_89:
                sub_23C5EDCC4(v142, type metadata accessor for ToolKitProtoTypedValue);
                sub_23C5EDCC4(v143, type metadata accessor for ToolKitProtoTypedValue);
                v116 = &qword_27E1FAB68;
                v117 = &unk_23C879140;
                v99 = v66;
                goto LABEL_90;
              }

              v161 = v76;
              sub_23C56F2C0(v75);
              sub_23C56F2C0(v76);
              sub_23C56F2C0(v75);
              v77 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v162, &v161);

              sub_23C56F2D8(v75);
              v28 = v137;
              if ((v77 & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            else
            {
              sub_23C56F2C0(*v73);
              sub_23C56F2C0(v76);
              v25 = v61;
              v28 = v137;
              if ((~v76 & 0xF000000000000007) != 0)
              {
                goto LABEL_88;
              }

              sub_23C56F2D8(v75);
              v43 = v158;
            }

            sub_23C870F34();
            sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v78 = v142;
            v79 = v143;
            v80 = sub_23C871754();
            sub_23C5EDCC4(v78, type metadata accessor for ToolKitProtoTypedValue);
            sub_23C5EDCC4(v79, type metadata accessor for ToolKitProtoTypedValue);
            sub_23C585C34(v152, &qword_27E1FAB68, &unk_23C879140);
            v72 = v138;
            v71 = v159;
            if ((v80 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          if (*v43 != *v71)
          {
            goto LABEL_92;
          }

          v81 = *(v72 + 24);
          v82 = *(v141 + 48);
          v83 = v148;
          sub_23C5855B0(&v43[v81], v148, &qword_27E1FABB8, &unk_23C8A11E0);
          sub_23C5855B0(&v71[v81], v83 + v82, &qword_27E1FABB8, &unk_23C8A11E0);
          v84 = *v124;
          v85 = v126;
          if ((*v124)(v83, 1, v126) == 1)
          {
            v86 = v84(v83 + v82, 1, v85);
            v25 = v128;
            v71 = v159;
            if (v86 != 1)
            {
              goto LABEL_84;
            }

            sub_23C585C34(v83, &qword_27E1FABB8, &unk_23C8A11E0);
            v28 = v137;
            v51 = v149;
          }

          else
          {
            v87 = v136;
            sub_23C5855B0(v83, v136, &qword_27E1FABB8, &unk_23C8A11E0);
            if (v84(v83 + v82, 1, v85) == 1)
            {
              sub_23C5EDCC4(v87, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              v43 = v158;
              v71 = v159;
              v25 = v128;
LABEL_84:
              sub_23C585C34(v83, &qword_27E1FABC0, &qword_23C878F60);
              v28 = v137;
              goto LABEL_92;
            }

            v88 = v83 + v82;
            v89 = v146;
            sub_23C5EDD24(v88, v146, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v25 = v128;
            if (*(v87 + 9))
            {
              v28 = v137;
              v51 = v149;
              if ((*(v89 + 9) & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v28 = v137;
              v51 = v149;
              if (*(v89 + 9))
              {
                goto LABEL_80;
              }

              v90 = *v87;
              v91 = *v146;
              if (*(v87 + 8))
              {
                if (v90)
                {
                  if ((v146[1] & 1) == 0 || !v91)
                  {
                    goto LABEL_80;
                  }
                }

                else if ((v146[1] & 1) == 0 || v91)
                {
                  goto LABEL_80;
                }
              }

              else if ((v146[1] & 1) != 0 || v90 != v91)
              {
LABEL_80:
                sub_23C5EDCC4(v146, type metadata accessor for TranscriptProtoCandidatePromptStatus);
                sub_23C5EDCC4(v87, type metadata accessor for TranscriptProtoCandidatePromptStatus);
                sub_23C585C34(v148, &qword_27E1FABB8, &unk_23C8A11E0);
                v43 = v158;
                goto LABEL_91;
              }
            }

            sub_23C870F34();
            sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v92 = v146;
            v93 = sub_23C871754();
            sub_23C5EDCC4(v92, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            sub_23C5EDCC4(v87, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            sub_23C585C34(v148, &qword_27E1FABB8, &unk_23C8A11E0);
            v43 = v158;
            v71 = v159;
            if ((v93 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v94 = *(v72 + 28);
          v95 = *(v140 + 48);
          v96 = &v43[v94];
          v97 = v147;
          sub_23C5855B0(v96, v147, &qword_27E1FAAF8, &unk_23C8A1180);
          sub_23C5855B0(&v71[v94], v97 + v95, &qword_27E1FAAF8, &unk_23C8A1180);
          v98 = *v120;
          if ((*v120)(v97, 1, v51) == 1)
          {
            v69 = v98(v97 + v95, 1, v51) == 1;
            v99 = v97;
            v43 = v158;
            v25 = v128;
            if (!v69)
            {
              goto LABEL_86;
            }

            sub_23C585C34(v99, &qword_27E1FAAF8, &unk_23C8A1180);
            v71 = v159;
          }

          else
          {
            v100 = v51;
            v101 = v139;
            sub_23C5855B0(v97, v139, &qword_27E1FAAF8, &unk_23C8A1180);
            if (v98(v97 + v95, 1, v100) == 1)
            {
              sub_23C5EDCC4(v101, type metadata accessor for TranscriptProtoStatementID);
              v99 = v97;
              v43 = v158;
              v25 = v128;
LABEL_86:
              v116 = &qword_27E1FAB00;
              v117 = &qword_23C878ED8;
LABEL_90:
              sub_23C585C34(v99, v116, v117);
LABEL_91:
              v71 = v159;
LABEL_92:
              sub_23C5EDCC4(v71, type metadata accessor for TranscriptProtoCandidate);
              sub_23C5EDCC4(v43, type metadata accessor for TranscriptProtoCandidate);
              sub_23C585C34(v25, &qword_27E1FAB98, &qword_23C878F40);
LABEL_93:
              v30 = v131;
LABEL_94:
              sub_23C5EDCC4(v28, type metadata accessor for TranscriptProtoParameter);
              sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoParameter);
              goto LABEL_95;
            }

            v102 = v97 + v95;
            v103 = v150;
            sub_23C5EDD24(v102, v150, type metadata accessor for TranscriptProtoStatementID);
            v43 = v158;
            v104 = v101;
            if (*v101 != *v103)
            {
              goto LABEL_79;
            }

            v51 = v100;
            v105 = *(v104 + 16);
            v106 = *(v150 + 16);
            if (v105)
            {
              if (!v106 || (*(v104 + 8) != *(v150 + 8) || v105 != v106) && (sub_23C872014() & 1) == 0)
              {
LABEL_79:
                sub_23C5EDCC4(v150, type metadata accessor for TranscriptProtoStatementID);
                sub_23C5EDCC4(v104, type metadata accessor for TranscriptProtoStatementID);
                sub_23C585C34(v147, &qword_27E1FAAF8, &unk_23C8A1180);
                v71 = v159;
                v25 = v128;
                goto LABEL_92;
              }
            }

            else if (v106)
            {
              goto LABEL_79;
            }

            sub_23C870F34();
            sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v107 = v43;
            v108 = v150;
            v109 = sub_23C871754();
            v110 = v108;
            v43 = v107;
            sub_23C5EDCC4(v110, type metadata accessor for TranscriptProtoStatementID);
            sub_23C5EDCC4(v139, type metadata accessor for TranscriptProtoStatementID);
            sub_23C585C34(v147, &qword_27E1FAAF8, &unk_23C8A1180);
            v71 = v159;
            v25 = v128;
            if ((v109 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v111 = sub_23C871754();
          sub_23C5EDCC4(v71, type metadata accessor for TranscriptProtoCandidate);
          sub_23C5EDCC4(v43, type metadata accessor for TranscriptProtoCandidate);
          sub_23C585C34(v25, &qword_27E1FAB98, &qword_23C878F40);
          v40 = v119;
          v30 = v131;
          v60 = v145;
          if ((v111 & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v112 = sub_23C871754();
        sub_23C5EDCC4(v28, type metadata accessor for TranscriptProtoParameter);
        result = sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoParameter);
        v49 = v130;
        if ((v112 & 1) == 0)
        {
          goto LABEL_95;
        }

        v52 = v60 + 1;
        if (v129 == v52)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
      break;
    }

LABEL_73:
    v42 = v51;
    v113 = v40;
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v44 = v153;
    v114 = v157;
    v115 = sub_23C871754();
    sub_23C5EDCC4(v114, type metadata accessor for TranscriptProtoParameterSet);
    sub_23C5EDCC4(v44, type metadata accessor for TranscriptProtoParameterSet);
    if (v115)
    {
      v40 = v113 + 1;
      v39 = v122;
      v41 = v121;
      if (v113 + 1 != v135)
      {
        continue;
      }
    }

    return v115 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D8D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB98, &qword_23C878F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA0, &qword_23C878F48);
  MEMORY[0x28223BE20](v46);
  v12 = &v40 - v11;
  v45 = type metadata accessor for TranscriptProtoParameter(0);
  v13 = MEMORY[0x28223BE20](v45);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_29:
    v39 = 0;
    return v39 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v41 = v7;
  v42 = v10;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v49 = a2 + v20;
  v22 = (v5 + 48);
  v43 = *(v16 + 72);
  v44 = v4;
  v23 = v45;
  while (1)
  {
    v48 = v19;
    result = sub_23C5EDC08(v21, v18, type metadata accessor for TranscriptProtoParameter);
    if (!v48)
    {
      break;
    }

    sub_23C5EDC08(v49, v15, type metadata accessor for TranscriptProtoParameter);
    v25 = *v18 == *v15 && *(v18 + 1) == *(v15 + 1);
    if (!v25 && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }

    v26 = v15[24];
    if (v18[24])
    {
      if (!v15[24])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(v18 + 2) != *(v15 + 2))
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_28;
      }
    }

    v47 = v21;
    v27 = *(v23 + 24);
    v28 = *(v46 + 48);
    sub_23C5855B0(&v18[v27], v12, &qword_27E1FAB98, &qword_23C878F40);
    sub_23C5855B0(&v15[v27], &v12[v28], &qword_27E1FAB98, &qword_23C878F40);
    v29 = *v22;
    v30 = v12;
    v31 = v12;
    v32 = v44;
    if ((*v22)(v30, 1, v44) == 1)
    {
      if (v29((v31 + v28), 1, v32) != 1)
      {
        goto LABEL_27;
      }

      sub_23C585C34(v31, &qword_27E1FAB98, &qword_23C878F40);
      v12 = v31;
      v33 = v47;
    }

    else
    {
      v34 = v42;
      sub_23C5855B0(v31, v42, &qword_27E1FAB98, &qword_23C878F40);
      if (v29((v31 + v28), 1, v32) == 1)
      {
        sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoCandidate);
LABEL_27:
        sub_23C585C34(v31, &qword_27E1FABA0, &qword_23C878F48);
LABEL_28:
        sub_23C5EDCC4(v15, type metadata accessor for TranscriptProtoParameter);
        sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoParameter);
        goto LABEL_29;
      }

      v35 = v22;
      v36 = v41;
      sub_23C5EDD24(v31 + v28, v41, type metadata accessor for TranscriptProtoCandidate);
      v37 = static TranscriptProtoCandidate.== infix(_:_:)(v34, v36);
      v38 = v36;
      v22 = v35;
      sub_23C5EDCC4(v38, type metadata accessor for TranscriptProtoCandidate);
      sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoCandidate);
      sub_23C585C34(v31, &qword_27E1FAB98, &qword_23C878F40);
      v23 = v45;
      v12 = v31;
      v33 = v47;
      if ((v37 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = sub_23C871754();
    sub_23C5EDCC4(v15, type metadata accessor for TranscriptProtoParameter);
    sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoParameter);
    if (v39)
    {
      v49 += v43;
      v21 = v33 + v43;
      v19 = v48 - 1;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D92E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_23C5EDC08(v20, v17, a4);
        sub_23C5EDC08(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_23C5EDCC4(v14, a6);
        sub_23C5EDCC4(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_23C5D9488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_18:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_23C5EDC08(v13, v10, type metadata accessor for TranscriptProtoStatementID);
      sub_23C5EDC08(v14, v7, type metadata accessor for TranscriptProtoStatementID);
      if (*v10 != *v7)
      {
        break;
      }

      v16 = *(v10 + 2);
      v17 = *(v7 + 2);
      if (v16)
      {
        if (!v17 || (*(v10 + 1) != *(v7 + 1) || v16 != v17) && (sub_23C872014() & 1) == 0)
        {
          break;
        }
      }

      else if (v17)
      {
        break;
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_23C871754();
      sub_23C5EDCC4(v7, type metadata accessor for TranscriptProtoStatementID);
      sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoStatementID);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_23C5EDCC4(v7, type metadata accessor for TranscriptProtoStatementID);
    sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_18;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_23C5D976C(uint64_t a1, uint64_t a2)
{
  v133 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v137 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  MEMORY[0x28223BE20](v6 - 8);
  v128 = &v106 - v7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  MEMORY[0x28223BE20](v129);
  v141 = &v106 - v8;
  v136 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v9 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = (&v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB8, &unk_23C8A11E0);
  MEMORY[0x28223BE20](v11 - 8);
  v125 = &v106 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC0, &qword_23C878F60);
  MEMORY[0x28223BE20](v13);
  v135 = &v106 - v14;
  v139 = type metadata accessor for ToolKitProtoTypedValue(0);
  v15 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v126 = (&v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v17 - 8);
  v130 = (&v106 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v19);
  v140 = &v106 - v20;
  v21 = type metadata accessor for TranscriptProtoCandidate(0);
  v134 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v106 - v25;
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v28 = MEMORY[0x28223BE20](Results);
  v138 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v131 = &v106 - v32;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
LABEL_76:
    v102 = 0;
    return v102 & 1;
  }

  if (!v33 || a1 == a2)
  {
    v102 = 1;
    return v102 & 1;
  }

  v111 = v30;
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = a1 + v34;
  v36 = 0;
  v112 = a2 + v34;
  v124 = (v15 + 48);
  v119 = (v9 + 48);
  v117 = (v4 + 48);
  v37 = *(v31 + 72);
  v38 = v131;
  v116 = v19;
  v142 = v21;
  v122 = v33;
  v110 = v35;
  v109 = v37;
  while (1)
  {
    v39 = v37 * v36;
    result = sub_23C5EDC08(v35 + v37 * v36, v38, type metadata accessor for TranscriptProtoQueryResults);
    if (v36 == v122)
    {
      break;
    }

    v118 = v36;
    v41 = v112 + v39;
    v42 = v138;
    result = sub_23C5EDC08(v41, v138, type metadata accessor for TranscriptProtoQueryResults);
    v43 = *v38;
    v44 = *v42;
    v45 = *(*v38 + 16);
    if (v45 != *(*v42 + 16))
    {
LABEL_75:
      sub_23C5EDCC4(v138, type metadata accessor for TranscriptProtoQueryResults);
      sub_23C5EDCC4(v131, type metadata accessor for TranscriptProtoQueryResults);
      goto LABEL_76;
    }

    v46 = v13;
    if (v45 && v43 != v44)
    {
      v47 = 0;
      v48 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v121 = v43 + v48;
      v120 = v44 + v48;
      v108 = v26;
      v127 = v46;
      v107 = v24;
      v115 = v43;
      v114 = v44;
      v113 = v45;
      while (v47 < *(v43 + 16))
      {
        v49 = *(v134 + 72) * v47;
        result = sub_23C5EDC08(v121 + v49, v26, type metadata accessor for TranscriptProtoCandidate);
        if (v47 >= *(v44 + 16))
        {
          goto LABEL_79;
        }

        v123 = v47;
        sub_23C5EDC08(v120 + v49, v24, type metadata accessor for TranscriptProtoCandidate);
        v50 = *(v142 + 20);
        v51 = *(v19 + 48);
        v52 = v140;
        sub_23C5855B0(&v26[v50], v140, &qword_27E1FAB68, &unk_23C879140);
        sub_23C5855B0(&v24[v50], v52 + v51, &qword_27E1FAB68, &unk_23C879140);
        v53 = *v124;
        v54 = v139;
        if ((*v124)(v52, 1, v139) == 1)
        {
          if (v53(v52 + v51, 1, v54) != 1)
          {
            goto LABEL_65;
          }

          sub_23C585C34(v52, &qword_27E1FAB68, &unk_23C879140);
          v56 = v141;
          v55 = v142;
          v57 = v127;
        }

        else
        {
          v58 = v54;
          v59 = v130;
          sub_23C5855B0(v52, v130, &qword_27E1FAB68, &unk_23C879140);
          if (v53(v52 + v51, 1, v58) == 1)
          {
            sub_23C5EDCC4(v59, type metadata accessor for ToolKitProtoTypedValue);
LABEL_65:
            v104 = &qword_27E1FAB70;
            v105 = &qword_23C878F28;
            v75 = v52;
LABEL_73:
            sub_23C585C34(v75, v104, v105);
            goto LABEL_74;
          }

          v60 = v126;
          sub_23C5EDD24(v52 + v51, v126, type metadata accessor for ToolKitProtoTypedValue);
          v61 = *v59;
          v62 = *v60;
          if ((~*v59 & 0xF000000000000007) != 0)
          {
            v144 = *v59;
            if ((~v62 & 0xF000000000000007) == 0)
            {
              sub_23C56F2C0(v61);
              sub_23C56F2C0(v62);
              sub_23C56F2C0(v61);

LABEL_71:
              sub_23C56F2D8(v61);
              sub_23C56F2D8(v62);
LABEL_72:
              sub_23C5EDCC4(v60, type metadata accessor for ToolKitProtoTypedValue);
              sub_23C5EDCC4(v130, type metadata accessor for ToolKitProtoTypedValue);
              v104 = &qword_27E1FAB68;
              v105 = &unk_23C879140;
              v75 = v140;
              goto LABEL_73;
            }

            v143 = v62;
            sub_23C56F2C0(v61);
            sub_23C56F2C0(v62);
            sub_23C56F2C0(v61);
            v63 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v144, &v143);

            sub_23C56F2D8(v61);
            if ((v63 & 1) == 0)
            {
              goto LABEL_72;
            }
          }

          else
          {
            sub_23C56F2C0(v61);
            sub_23C56F2C0(v62);
            if ((~v62 & 0xF000000000000007) != 0)
            {
              goto LABEL_71;
            }

            sub_23C56F2D8(v61);
          }

          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v64 = v130;
          v65 = sub_23C871754();
          sub_23C5EDCC4(v60, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C5EDCC4(v64, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C585C34(v140, &qword_27E1FAB68, &unk_23C879140);
          v56 = v141;
          v55 = v142;
          v57 = v127;
          if ((v65 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        if (*v26 != *v24)
        {
          goto LABEL_74;
        }

        v66 = *(v55 + 24);
        v67 = *(v57 + 48);
        v68 = &v26[v66];
        v69 = v26;
        v70 = v24;
        v71 = v135;
        sub_23C5855B0(v68, v135, &qword_27E1FABB8, &unk_23C8A11E0);
        sub_23C5855B0(&v70[v66], v71 + v67, &qword_27E1FABB8, &unk_23C8A11E0);
        v72 = *v119;
        v73 = v136;
        if ((*v119)(v71, 1, v136) == 1)
        {
          v74 = v72(v71 + v67, 1, v73) == 1;
          v75 = v71;
          v24 = v70;
          v26 = v69;
          if (!v74)
          {
            goto LABEL_67;
          }

          sub_23C585C34(v75, &qword_27E1FABB8, &unk_23C8A11E0);
          v76 = v56;
          v77 = v142;
        }

        else
        {
          v78 = v56;
          v79 = v125;
          sub_23C5855B0(v71, v125, &qword_27E1FABB8, &unk_23C8A11E0);
          if (v72(v71 + v67, 1, v73) == 1)
          {
            sub_23C5EDCC4(v79, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v75 = v71;
            v24 = v107;
            v26 = v108;
LABEL_67:
            v104 = &qword_27E1FABC0;
            v105 = &qword_23C878F60;
            goto LABEL_73;
          }

          v80 = v71 + v67;
          v81 = v132;
          sub_23C5EDD24(v80, v132, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          if (*(v79 + 9))
          {
            if ((*(v81 + 9) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (*(v81 + 9))
            {
              goto LABEL_63;
            }

            v82 = *v79;
            v83 = *v132;
            if (*(v79 + 8))
            {
              if (v82)
              {
                if ((v132[1] & 1) == 0 || !v83)
                {
                  goto LABEL_63;
                }
              }

              else if ((v132[1] & 1) == 0 || v83)
              {
                goto LABEL_63;
              }
            }

            else if ((v132[1] & 1) != 0 || v82 != v83)
            {
LABEL_63:
              sub_23C5EDCC4(v132, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              sub_23C5EDCC4(v79, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              sub_23C585C34(v135, &qword_27E1FABB8, &unk_23C8A11E0);
              v24 = v107;
              v26 = v108;
LABEL_74:
              sub_23C5EDCC4(v24, type metadata accessor for TranscriptProtoCandidate);
              sub_23C5EDCC4(v26, type metadata accessor for TranscriptProtoCandidate);
              goto LABEL_75;
            }
          }

          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v84 = v132;
          v85 = sub_23C871754();
          sub_23C5EDCC4(v84, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          sub_23C5EDCC4(v79, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          sub_23C585C34(v135, &qword_27E1FABB8, &unk_23C8A11E0);
          v76 = v78;
          v24 = v107;
          v26 = v108;
          v77 = v142;
          if ((v85 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v86 = *(v77 + 28);
        v87 = *(v129 + 48);
        v88 = v141;
        sub_23C5855B0(&v26[v86], v76, &qword_27E1FAAF8, &unk_23C8A1180);
        sub_23C5855B0(&v24[v86], v88 + v87, &qword_27E1FAAF8, &unk_23C8A1180);
        v89 = *v117;
        v90 = v133;
        if ((*v117)(v88, 1, v133) == 1)
        {
          if (v89(v88 + v87, 1, v90) != 1)
          {
            goto LABEL_69;
          }

          sub_23C585C34(v88, &qword_27E1FAAF8, &unk_23C8A1180);
          v46 = v127;
        }

        else
        {
          v91 = v128;
          sub_23C5855B0(v88, v128, &qword_27E1FAAF8, &unk_23C8A1180);
          if (v89(v88 + v87, 1, v90) == 1)
          {
            sub_23C5EDCC4(v91, type metadata accessor for TranscriptProtoStatementID);
LABEL_69:
            v104 = &qword_27E1FAB00;
            v105 = &qword_23C878ED8;
            v75 = v88;
            goto LABEL_73;
          }

          v92 = v88 + v87;
          v93 = v137;
          sub_23C5EDD24(v92, v137, type metadata accessor for TranscriptProtoStatementID);
          v94 = v127;
          if (*v91 != *v93)
          {
            goto LABEL_62;
          }

          v95 = *(v91 + 16);
          v96 = *(v137 + 16);
          if (v95)
          {
            if (!v96 || (*(v91 + 8) != *(v137 + 8) || v95 != v96) && (sub_23C872014() & 1) == 0)
            {
LABEL_62:
              sub_23C5EDCC4(v137, type metadata accessor for TranscriptProtoStatementID);
              sub_23C5EDCC4(v91, type metadata accessor for TranscriptProtoStatementID);
              v104 = &qword_27E1FAAF8;
              v105 = &unk_23C8A1180;
              v75 = v141;
              goto LABEL_73;
            }
          }

          else if (v96)
          {
            goto LABEL_62;
          }

          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v97 = v137;
          v98 = sub_23C871754();
          v46 = v94;
          sub_23C5EDCC4(v97, type metadata accessor for TranscriptProtoStatementID);
          sub_23C5EDCC4(v128, type metadata accessor for TranscriptProtoStatementID);
          sub_23C585C34(v141, &qword_27E1FAAF8, &unk_23C8A1180);
          if ((v98 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v99 = sub_23C871754();
        sub_23C5EDCC4(v24, type metadata accessor for TranscriptProtoCandidate);
        result = sub_23C5EDCC4(v26, type metadata accessor for TranscriptProtoCandidate);
        v19 = v116;
        v43 = v115;
        v44 = v114;
        if ((v99 & 1) == 0)
        {
          goto LABEL_75;
        }

        v47 = v123 + 1;
        if (v113 == v123 + 1)
        {
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
      break;
    }

LABEL_58:
    v13 = v46;
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v100 = v131;
    v101 = v138;
    v102 = sub_23C871754();
    v103 = v101;
    v38 = v100;
    sub_23C5EDCC4(v103, type metadata accessor for TranscriptProtoQueryResults);
    sub_23C5EDCC4(v100, type metadata accessor for TranscriptProtoQueryResults);
    if (v102)
    {
      v36 = v118 + 1;
      v35 = v110;
      v37 = v109;
      if (v118 + 1 != v122)
      {
        continue;
      }
    }

    return v102 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DA9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC08, &qword_23C878FA0);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for TranscriptProtoShimParameter(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27E1FAC00;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for TranscriptProtoShimParameter);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for TranscriptProtoShimParameter);
    v25 = *(v42 + 48);
    sub_23C5855B0(v17, v11, v23, &qword_23C878F98);
    sub_23C5855B0(v14, &v11[v25], v23, &qword_23C878F98);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &qword_23C878F98);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_23C5855B0(v11, v37, v27, &qword_23C878F98);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoShimParameterEnum);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_23C585C34(v11, &qword_27E1FAC08, &qword_23C878FA0);
LABEL_17:
        sub_23C5EDCC4(v14, type metadata accessor for TranscriptProtoShimParameter);
        sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoShimParameter);
        goto LABEL_18;
      }

      v31 = v38;
      sub_23C5EDD24(&v11[v25], v38, type metadata accessor for TranscriptProtoShimParameterEnum);
      v32 = _s26AIMLInstrumentationStreams32TranscriptProtoShimParameterEnumO2eeoiySbAC_ACtFZ_0(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for TranscriptProtoShimParameterEnum);
      sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoShimParameterEnum);
      sub_23C585C34(v11, v27, &qword_23C878F98);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for TranscriptProtoShimParameter);
    sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoShimParameter);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DAEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUitype(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE8, &qword_23C878F80);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for TranscriptProtoUIType(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27E1FABE0;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for TranscriptProtoUIType);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for TranscriptProtoUIType);
    v25 = *(v42 + 48);
    sub_23C5855B0(v17, v11, v23, &qword_23C878F78);
    sub_23C5855B0(v14, &v11[v25], v23, &qword_23C878F78);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &qword_23C878F78);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_23C5855B0(v11, v37, v27, &qword_23C878F78);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoUitype);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_23C585C34(v11, &qword_27E1FABE8, &qword_23C878F80);
LABEL_17:
        sub_23C5EDCC4(v14, type metadata accessor for TranscriptProtoUIType);
        sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoUIType);
        goto LABEL_18;
      }

      v31 = v38;
      sub_23C5EDD24(&v11[v25], v38, type metadata accessor for TranscriptProtoUitype);
      v32 = static TranscriptProtoUitype.== infix(_:_:)(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for TranscriptProtoUitype);
      sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoUitype);
      sub_23C585C34(v11, v27, &qword_23C878F78);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for TranscriptProtoUIType);
    sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoUIType);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DB40C(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v4 = MEMORY[0x28223BE20](v48);
  v56 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = (&v46 - v6);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC8, &qword_23C878F68);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - v8;
  v60 = type metadata accessor for TranscriptProtoLabel(0);
  v9 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD0, &unk_23C8A1300);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v46 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD8, &qword_23C878F70);
  MEMORY[0x28223BE20](v54);
  v51 = &v46 - v13;
  v52 = type metadata accessor for TranscriptProtoUILabel(0);
  v14 = MEMORY[0x28223BE20](v52);
  v61 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_26:
    v42 = 0;
    return v42 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = (v9 + 48);
  v24 = *(v16 + 72);
  v25 = v51;
  v55 = &v46 - v17;
  v46 = v24;
  v47 = (v9 + 48);
  while (1)
  {
    v58 = v21;
    result = sub_23C5EDC08(v21, v18, type metadata accessor for TranscriptProtoUILabel);
    if (!v19)
    {
      break;
    }

    v57 = v19;
    v27 = v61;
    sub_23C5EDC08(v22, v61, type metadata accessor for TranscriptProtoUILabel);
    v28 = *(v54 + 48);
    sub_23C5855B0(v18, v25, &qword_27E1FABD0, &unk_23C8A1300);
    sub_23C5855B0(v27, v25 + v28, &qword_27E1FABD0, &unk_23C8A1300);
    v29 = *v23;
    if ((*v23)(v25, 1, v60) == 1)
    {
      if (v29(v25 + v28, 1, v60) != 1)
      {
        goto LABEL_22;
      }

      sub_23C585C34(v25, &qword_27E1FABD0, &unk_23C8A1300);
    }

    else
    {
      sub_23C5855B0(v25, v59, &qword_27E1FABD0, &unk_23C8A1300);
      if (v29(v25 + v28, 1, v60) == 1)
      {
        sub_23C5EDCC4(v59, type metadata accessor for TranscriptProtoLabel);
LABEL_22:
        v44 = &qword_27E1FABD8;
        v45 = &qword_23C878F70;
        goto LABEL_24;
      }

      v30 = v53;
      sub_23C5EDD24(v25 + v28, v53, type metadata accessor for TranscriptProtoLabel);
      v31 = v49;
      v32 = *(v50 + 48);
      sub_23C5EDC08(v59, v49, type metadata accessor for TranscriptProtoLabel);
      sub_23C5EDC08(v30, v31 + v32, type metadata accessor for TranscriptProtoLabel);
      sub_23C5EDD24(v31, v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      v33 = v31 + v32;
      v34 = v56;
      sub_23C5EDD24(v33, v56, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      if ((*v7 != *v34 || v7[1] != v34[1]) && (sub_23C872014() & 1) == 0 || (v7[2] != v56[2] || v7[3] != v56[3]) && (sub_23C872014() & 1) == 0)
      {
        sub_23C5EDCC4(v56, type metadata accessor for TranscriptProtoUIConfirmationLabel);
        sub_23C5EDCC4(v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
        sub_23C5EDCC4(v53, type metadata accessor for TranscriptProtoLabel);
        sub_23C5EDCC4(v59, type metadata accessor for TranscriptProtoLabel);
        v44 = &qword_27E1FABD0;
        v45 = &unk_23C8A1300;
LABEL_24:
        sub_23C585C34(v25, v44, v45);
LABEL_25:
        sub_23C5EDCC4(v61, type metadata accessor for TranscriptProtoUILabel);
        sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoUILabel);
        goto LABEL_26;
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = v7;
      v36 = v56;
      v37 = sub_23C871754();
      v38 = v36;
      v7 = v35;
      v18 = v55;
      v39 = v53;
      v40 = v59;
      v25 = v51;
      sub_23C5EDCC4(v38, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      sub_23C5EDCC4(v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      sub_23C5EDCC4(v39, type metadata accessor for TranscriptProtoLabel);
      sub_23C5EDCC4(v40, type metadata accessor for TranscriptProtoLabel);
      sub_23C585C34(v25, &qword_27E1FABD0, &unk_23C8A1300);
      v24 = v46;
      v23 = v47;
      if ((v37 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = v61;
    v42 = sub_23C871754();
    v43 = v41;
    v18 = v55;
    sub_23C5EDCC4(v43, type metadata accessor for TranscriptProtoUILabel);
    sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoUILabel);
    if (v42)
    {
      v19 = v57 - 1;
      v22 += v24;
      v21 = v58 + v24;
      if (v57 != 1)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DBBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF8, &qword_23C878F90);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27E1FABF0;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for TranscriptProtoVisualOutput);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for TranscriptProtoVisualOutput);
    v25 = *(v42 + 48);
    sub_23C5855B0(v17, v11, v23, &qword_23C878F88);
    sub_23C5855B0(v14, &v11[v25], v23, &qword_23C878F88);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &qword_23C878F88);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_23C5855B0(v11, v37, v27, &qword_23C878F88);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoVisualOutputType);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_23C585C34(v11, &qword_27E1FABF8, &qword_23C878F90);
LABEL_17:
        sub_23C5EDCC4(v14, type metadata accessor for TranscriptProtoVisualOutput);
        sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoVisualOutput);
        goto LABEL_18;
      }

      v31 = v38;
      sub_23C5EDD24(&v11[v25], v38, type metadata accessor for TranscriptProtoVisualOutputType);
      v32 = static TranscriptProtoVisualOutputType.== infix(_:_:)(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for TranscriptProtoVisualOutputType);
      sub_23C5EDCC4(v30, type metadata accessor for TranscriptProtoVisualOutputType);
      sub_23C585C34(v11, v27, &qword_23C878F88);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for TranscriptProtoVisualOutput);
    sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoVisualOutput);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DC13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_23C5EDC08(v13, v10, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_23C5EDC08(v14, v7, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      if ((sub_23C5DC390(*v10, *v7) & 1) == 0)
      {
        break;
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v16 = sub_23C871754();
      sub_23C5EDCC4(v7, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_23C5EDCC4(v7, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_23C5DC390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_19:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_23C5EDC08(v13, v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_23C5EDC08(v14, v7, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_23C872014() & 1) == 0 || *(v10 + 2) != *(v7 + 2) || *(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4) || *(v10 + 5) != *(v7 + 5))
      {
        break;
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      sub_23C5EDCC4(v7, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_23C5EDCC4(v7, type metadata accessor for TranscriptProtoSpeechPackage.Token);
    sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
    goto LABEL_19;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_23C5DC634(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = (&v37 - v7);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v40);
  v9 = &v37 - v8;
  v43 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v10 = MEMORY[0x28223BE20](v43);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v15 = (&v37 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_29:
    v33 = 0;
    return v33 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v37 = *(v13 + 72);
  v38 = (v4 + 48);
  v41 = (&v37 - v14);
  while (1)
  {
    result = sub_23C5EDC08(v18, v15, type metadata accessor for TranscriptProtoVariableSetter);
    if (!v16)
    {
      break;
    }

    sub_23C5EDC08(v19, v12, type metadata accessor for TranscriptProtoVariableSetter);
    v21 = *(v43 + 20);
    v22 = *(v40 + 48);
    sub_23C5855B0(v15 + v21, v9, &qword_27E1FAB68, &unk_23C879140);
    sub_23C5855B0(v12 + v21, &v9[v22], &qword_27E1FAB68, &unk_23C879140);
    v23 = *v38;
    if ((*v38)(v9, 1, v44) == 1)
    {
      if (v23(&v9[v22], 1, v44) != 1)
      {
        goto LABEL_23;
      }

      sub_23C585C34(v9, &qword_27E1FAB68, &unk_23C879140);
      v24 = v41;
    }

    else
    {
      sub_23C5855B0(v9, v42, &qword_27E1FAB68, &unk_23C879140);
      if (v23(&v9[v22], 1, v44) == 1)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoTypedValue);
LABEL_23:
        v35 = &qword_27E1FAB70;
        v36 = &qword_23C878F28;
LABEL_27:
        sub_23C585C34(v9, v35, v36);
        v24 = v41;
LABEL_28:
        sub_23C5EDCC4(v12, type metadata accessor for TranscriptProtoVariableSetter);
        sub_23C5EDCC4(v24, type metadata accessor for TranscriptProtoVariableSetter);
        goto LABEL_29;
      }

      v25 = &v9[v22];
      v26 = v39;
      sub_23C5EDD24(v25, v39, type metadata accessor for ToolKitProtoTypedValue);
      v27 = *v42;
      v28 = *v26;
      if ((~*v42 & 0xF000000000000007) != 0)
      {
        v46 = *v42;
        if ((~v28 & 0xF000000000000007) == 0)
        {
          sub_23C56F2C0(v27);
          sub_23C56F2C0(v28);
          sub_23C56F2C0(v27);

LABEL_25:
          sub_23C56F2D8(v27);
          sub_23C56F2D8(v28);
LABEL_26:
          sub_23C5EDCC4(v39, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoTypedValue);
          v35 = &qword_27E1FAB68;
          v36 = &unk_23C879140;
          goto LABEL_27;
        }

        v45 = v28;
        sub_23C56F2C0(v27);
        sub_23C56F2C0(v28);
        sub_23C56F2C0(v27);
        v29 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v46, &v45);

        sub_23C56F2D8(v27);
        if ((v29 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_23C56F2C0(*v42);
        sub_23C56F2C0(v28);
        if ((~v28 & 0xF000000000000007) != 0)
        {
          goto LABEL_25;
        }

        sub_23C56F2D8(v27);
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v30 = v42;
      v31 = v39;
      v32 = sub_23C871754();
      sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C585C34(v9, &qword_27E1FAB68, &unk_23C879140);
      v24 = v41;
      if ((v32 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if ((sub_23C7FD0C0(*v24, *v12) & 1) == 0)
    {
      goto LABEL_28;
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v12, type metadata accessor for TranscriptProtoVariableSetter);
    sub_23C5EDCC4(v24, type metadata accessor for TranscriptProtoVariableSetter);
    if (v33)
    {
      v19 += v37;
      v18 += v37;
      v34 = v16-- == 1;
      v15 = v41;
      if (!v34)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DCD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v33 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_43:
    v32 = 0;
    return v32 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v34 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_23C5EDC08(v14 + v15 * v12, v10, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    if (v12 == v11)
    {
      break;
    }

    result = sub_23C5EDC08(v34 + v15 * v12, v7, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    v17 = *v10;
    v18 = *v7;
    v19 = *(*v10 + 16);
    if (v19 != *(*v7 + 16))
    {
      goto LABEL_42;
    }

    if (v19)
    {
      v20 = v17 == v18;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v23 = (v17 + 40);
      v24 = (v18 + 40);
      while (v19)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_23C872014();
          if ((result & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v19)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      __break(1u);
      break;
    }

LABEL_12:
    v21 = v10[3];
    v22 = v7[3];
    if (v21)
    {
      if (!v22 || (v10[2] != v7[2] || v21 != v22) && (sub_23C872014() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v22)
    {
      goto LABEL_42;
    }

    v26 = v10[1];
    v27 = v7[1];
    v28 = *(v26 + 16);
    if (v28 != *(v27 + 16))
    {
      goto LABEL_42;
    }

    if (v28 && v26 != v27)
    {
      v29 = (v26 + 40);
      v30 = (v27 + 40);
      while (1)
      {
        v31 = *(v29 - 1) == *(v30 - 1) && *v29 == *v30;
        if (!v31 && (sub_23C872014() & 1) == 0)
        {
          break;
        }

        v29 += 2;
        v30 += 2;
        if (!--v28)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      goto LABEL_43;
    }

LABEL_38:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_23C871754();
    sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    if ((v32 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v32 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DD078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC68, &qword_23C878FE8);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for ToolKitProtoRuntimeRequirement(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_27E1FAC60;
  v37 = v14;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for ToolKitProtoRuntimeRequirement);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for ToolKitProtoRuntimeRequirement);
    v25 = *(v44 + 48);
    sub_23C5855B0(v17, v11, v23, &unk_23C889D20);
    sub_23C5855B0(v14, &v11[v25], v23, &unk_23C889D20);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoRuntimeRequirement);
        v35 = v17;
        v34 = type metadata accessor for ToolKitProtoRuntimeRequirement;
        goto LABEL_17;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &unk_23C889D20);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_23C5855B0(v11, v39, v27, &unk_23C889D20);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoRuntimeRequirement);
        sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoRuntimeRequirement);
        v34 = type metadata accessor for ToolKitProtoRuntimeRequirementKind;
        v35 = v30;
LABEL_17:
        sub_23C5EDCC4(v35, v34);
        sub_23C585C34(v11, &qword_27E1FAC68, &qword_23C878FE8);
        goto LABEL_19;
      }

      v31 = v40;
      sub_23C5EDD24(&v11[v25], v40, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v32 = static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      sub_23C585C34(v11, v27, &unk_23C889D20);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoRuntimeRequirement);
        sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoRuntimeRequirement);
        goto LABEL_19;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoRuntimeRequirement);
    sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoRuntimeRequirement);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DD5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC58, &qword_23C878FE0);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_27E1FAC50;
  v37 = v14;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    v25 = *(v44 + 48);
    sub_23C5855B0(v17, v11, v23, &qword_23C878FD8);
    sub_23C5855B0(v14, &v11[v25], v23, &qword_23C878FD8);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        v35 = v17;
        v34 = type metadata accessor for ToolKitProtoSystemTypeProtocol;
        goto LABEL_17;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &qword_23C878FD8);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_23C5855B0(v11, v39, v27, &qword_23C878FD8);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        v34 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind;
        v35 = v30;
LABEL_17:
        sub_23C5EDCC4(v35, v34);
        sub_23C585C34(v11, &qword_27E1FAC58, &qword_23C878FE0);
        goto LABEL_19;
      }

      v31 = v40;
      sub_23C5EDD24(&v11[v25], v40, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v32 = static ToolKitProtoSystemTypeProtocolKind.== infix(_:_:)(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      sub_23C585C34(v11, v27, &qword_23C878FD8);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        goto LABEL_19;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DDB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = (&v38 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v46);
  v10 = &v38 - v9;
  v11 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = (&v38 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v18 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v43 = (v5 + 48);
  v44 = v4;
  v22 = *(v15 + 72);
  v38 = v10;
  v39 = v22;
  v40 = v11;
  v41 = v14;
  v42 = (&v38 - v16);
  while (1)
  {
    sub_23C5EDC08(v20, v17, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_23C5EDC08(v21, v14, type metadata accessor for ToolKitProtoCoercionDefinition);
    if (*v17 != *v14)
    {
      goto LABEL_26;
    }

    v23 = *(v11 + 20);
    v24 = *(v46 + 48);
    sub_23C5855B0(v17 + v23, v10, &qword_27E1FAC40, &unk_23C8791C0);
    sub_23C5855B0(&v14[v23], &v10[v24], &qword_27E1FAC40, &unk_23C8791C0);
    v25 = v44;
    v26 = *v43;
    if ((*v43)(v10, 1, v44) == 1)
    {
      if (v26(&v10[v24], 1, v25) == 1)
      {
        sub_23C585C34(v10, &qword_27E1FAC40, &unk_23C8791C0);
        v14 = v41;
        v17 = v42;
        goto LABEL_16;
      }

      sub_23C5EDCC4(v41, type metadata accessor for ToolKitProtoCoercionDefinition);
      v35 = v42;
      v36 = type metadata accessor for ToolKitProtoCoercionDefinition;
LABEL_22:
      sub_23C5EDCC4(v35, v36);
      sub_23C585C34(v10, &qword_27E1FAC48, &qword_23C878FD0);
      goto LABEL_27;
    }

    sub_23C5855B0(v10, v47, &qword_27E1FAC40, &unk_23C8791C0);
    if (v26(&v10[v24], 1, v25) == 1)
    {
      sub_23C5EDCC4(v41, type metadata accessor for ToolKitProtoCoercionDefinition);
      sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoCoercionDefinition);
      v36 = type metadata accessor for ToolKitProtoTypeInstance;
      v35 = v47;
      goto LABEL_22;
    }

    v27 = v45;
    sub_23C5EDD24(&v10[v24], v45, type metadata accessor for ToolKitProtoTypeInstance);
    v28 = *v47;
    v29 = *v27;
    if ((~*v47 & 0xF000000000000007) == 0)
    {
      sub_23C56F2C0(*v47);
      sub_23C56F2C0(v29);
      if ((~v29 & 0xF000000000000007) != 0)
      {
        goto LABEL_24;
      }

      sub_23C56F2D8(v28);
      goto LABEL_15;
    }

    v49 = *v47;
    if ((~v29 & 0xF000000000000007) == 0)
    {
      break;
    }

    v48 = v29;
    sub_23C56F2C0(v28);
    sub_23C56F2C0(v29);
    sub_23C56F2C0(v28);
    v30 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v49, &v48);

    sub_23C56F2D8(v28);
    if ((v30 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_15:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = v47;
    v32 = v45;
    v33 = sub_23C871754();
    sub_23C5EDCC4(v32, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C585C34(v10, &qword_27E1FAC40, &unk_23C8791C0);
    v14 = v41;
    v17 = v42;
    if ((v33 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_16:
    v11 = v40;
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoCoercionDefinition);
    if (v34)
    {
      v10 = v38;
      v21 += v39;
      v20 += v39;
      if (--v18)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  sub_23C56F2C0(v28);
  sub_23C56F2C0(v29);
  sub_23C56F2C0(v28);

LABEL_24:
  sub_23C56F2D8(v28);
  sub_23C56F2D8(v29);
LABEL_25:
  sub_23C5EDCC4(v45, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C5EDCC4(v47, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v10, &qword_27E1FAC40, &unk_23C8791C0);
  v14 = v41;
  v17 = v42;
LABEL_26:
  sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoCoercionDefinition);
  sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoCoercionDefinition);
LABEL_27:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_23C5DE28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSampleInvocation(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_23C5EDC08(v13, v10, type metadata accessor for ContextProtoSampleInvocation);
      sub_23C5EDC08(v14, v7, type metadata accessor for ContextProtoSampleInvocation);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_23C872014() & 1) == 0 || *(v10 + 4) != *(v7 + 4))
      {
        break;
      }

      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      sub_23C5EDCC4(v7, type metadata accessor for ContextProtoSampleInvocation);
      sub_23C5EDCC4(v10, type metadata accessor for ContextProtoSampleInvocation);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_23C5EDCC4(v7, type metadata accessor for ContextProtoSampleInvocation);
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoSampleInvocation);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_23C5DE500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v11 || a1 == a2)
  {
    v19 = 1;
    return v19 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_23C5EDC08(v13, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C5EDC08(v14, v7, type metadata accessor for ToolKitProtoTypeInstance);
    v16 = *v10;
    v17 = *v7;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_23C56F2C0(*v10);
    sub_23C56F2C0(v17);
    if ((~v17 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_23C56F2D8(v16);
LABEL_10:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_23C871754();
    sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoTypeInstance);
    if (v19)
    {
      v14 += v15;
      v13 += v15;
      if (--v11)
      {
        continue;
      }
    }

    return v19 & 1;
  }

  v22 = *v10;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v21 = v17;
    sub_23C56F2C0(v16);
    sub_23C56F2C0(v17);
    sub_23C56F2C0(v16);
    v18 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v22, &v21);

    sub_23C56F2D8(v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_23C56F2C0(v16);
  sub_23C56F2C0(v17);
  sub_23C56F2C0(v16);

LABEL_15:
  sub_23C56F2D8(v16);
  sub_23C56F2D8(v17);
LABEL_16:
  sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_17:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_23C5DE810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v11 || a1 == a2)
  {
    v19 = 1;
    return v19 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_23C5EDC08(v13, v10, type metadata accessor for ToolKitProtoRestrictionContext);
    sub_23C5EDC08(v14, v7, type metadata accessor for ToolKitProtoRestrictionContext);
    v16 = *v10;
    v17 = *v7;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_23C56F2C0(*v10);
    sub_23C56F2C0(v17);
    if ((~v17 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_23C56F2D8(v16);
LABEL_10:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_23C871754();
    sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoRestrictionContext);
    sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoRestrictionContext);
    if (v19)
    {
      v14 += v15;
      v13 += v15;
      if (--v11)
      {
        continue;
      }
    }

    return v19 & 1;
  }

  v22 = *v10;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v21 = v17;
    sub_23C56F2C0(v16);
    sub_23C56F2C0(v17);
    sub_23C56F2C0(v16);
    v18 = _s26AIMLInstrumentationStreams34ToolKitProtoRestrictionContextKindO2eeoiySbAC_ACtFZ_0(&v22, &v21);

    sub_23C56F2D8(v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_23C56F2C0(v16);
  sub_23C56F2C0(v17);
  sub_23C56F2C0(v16);

LABEL_15:
  sub_23C56F2D8(v16);
  sub_23C56F2D8(v17);
LABEL_16:
  sub_23C5EDCC4(v7, type metadata accessor for ToolKitProtoRestrictionContext);
  sub_23C5EDCC4(v10, type metadata accessor for ToolKitProtoRestrictionContext);
LABEL_17:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_23C5DEB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v25 = (&v50 - v24);
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
LABEL_36:
    v49 = 0;
    return v49 & 1;
  }

  if (!v26 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v64 = *(a1 + 16);
  v65 = v4;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = a1 + v27;
  v29 = 0;
  v62 = v21;
  v63 = a2 + v27;
  v30 = *(v23 + 72);
  v61 = (&v50 - v24);
  v54 = v28;
  v55 = v22;
  v53 = v30;
  while (1)
  {
    v31 = v30 * v29;
    result = sub_23C5EDC08(v28 + v30 * v29, v25, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    if (v29 == v64)
    {
      __break(1u);
      goto LABEL_39;
    }

    result = sub_23C5EDC08(v63 + v31, v21, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    v33 = *v25;
    v34 = *v21;
    v35 = *(v33 + 16);
    if (v35 != *(*v21 + 16))
    {
LABEL_35:
      sub_23C5EDCC4(v62, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
      sub_23C5EDCC4(v61, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
      goto LABEL_36;
    }

    if (v35 && v33 != v34)
    {
      break;
    }

LABEL_29:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v25 = v61;
    v21 = v62;
    v49 = sub_23C871754();
    sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    sub_23C5EDCC4(v25, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    if (v49)
    {
      ++v29;
      v30 = v53;
      v28 = v54;
      if (v29 != v64)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  v36 = 0;
  v37 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v58 = v34 + v37;
  v59 = v33 + v37;
  v60 = v5;
  v56 = v17;
  v57 = v15;
  v51 = v33;
  v52 = v29;
  v50 = v35;
  while (v36 < *(v33 + 16))
  {
    v38 = *(v67 + 72) * v36;
    result = sub_23C5EDC08(v59 + v38, v17, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    if (v36 >= *(v34 + 16))
    {
      goto LABEL_40;
    }

    sub_23C5EDC08(v58 + v38, v15, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    v39 = *v17;
    v40 = *v15;
    v41 = *(*v17 + 16);
    if (v41 != *(*v15 + 16))
    {
      goto LABEL_34;
    }

    if (v41 && v39 != v40)
    {
      v42 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v43 = v39 + v42;
      v44 = v40 + v42;
      v45 = *(v60 + 72);
      while (1)
      {
        sub_23C5EDC08(v43, v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        sub_23C5EDC08(v44, v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        v46 = *v10 == *v8 && *(v10 + 1) == *(v8 + 1);
        if (!v46 && (sub_23C872014() & 1) == 0 || *(v10 + 2) != *(v8 + 2) || *(v10 + 3) != *(v8 + 3) || *(v10 + 4) != *(v8 + 4) || *(v10 + 5) != *(v8 + 5))
        {
          break;
        }

        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v47 = sub_23C871754();
        sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        if ((v47 & 1) == 0)
        {
          goto LABEL_34;
        }

        v44 += v45;
        v43 += v45;
        if (!--v41)
        {
          goto LABEL_27;
        }
      }

      sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_23C5EDCC4(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
LABEL_34:
      sub_23C5EDCC4(v57, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_23C5EDCC4(v56, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      goto LABEL_35;
    }

LABEL_27:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = v56;
    v15 = v57;
    v48 = sub_23C871754();
    sub_23C5EDCC4(v15, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    result = sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    v5 = v60;
    v33 = v51;
    v29 = v52;
    if ((v48 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (++v36 == v50)
    {
      goto LABEL_29;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23C5DF35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC18, &qword_23C878FB0);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27E1FAC10;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    v25 = *(v42 + 48);
    sub_23C5855B0(v17, v11, v23, &qword_23C878FA8);
    sub_23C5855B0(v14, &v11[v25], v23, &qword_23C878FA8);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &qword_23C878FA8);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_23C5855B0(v11, v37, v27, &qword_23C878FA8);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_23C585C34(v11, &qword_27E1FAC18, &qword_23C878FB0);
LABEL_17:
        sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        goto LABEL_18;
      }

      v31 = v38;
      sub_23C5EDD24(&v11[v25], v38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v32 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      sub_23C585C34(v11, v27, &qword_23C878FA8);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DF888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB10, &qword_23C878EE8);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_27E1FAB08;
  v37 = v14;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    v25 = *(v44 + 48);
    sub_23C5855B0(v17, v11, v23, &qword_23C878EE0);
    sub_23C5855B0(v14, &v11[v25], v23, &qword_23C878EE0);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        v35 = v17;
        v34 = type metadata accessor for ToolKitProtoTypeDefinition.Version1;
        goto LABEL_17;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &qword_23C878EE0);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_23C5855B0(v11, v39, v27, &qword_23C878EE0);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        v34 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind;
        v35 = v30;
LABEL_17:
        sub_23C5EDCC4(v35, v34);
        sub_23C585C34(v11, &qword_27E1FAB10, &qword_23C878EE8);
        goto LABEL_19;
      }

      v31 = v40;
      sub_23C5EDD24(&v11[v25], v40, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v32 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV0cdE12Version1KindO2eeoiySbAE_AEtFZ_0(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      sub_23C585C34(v11, v27, &qword_23C878EE0);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        goto LABEL_19;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DFE0C(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  v4 = MEMORY[0x28223BE20](v29);
  v30 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7];
  v9 = *(a1 + 16);
  if (v9 != *(a2 + 16))
  {
    goto LABEL_31;
  }

  if (!v9 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v28 = *(v6 + 72);
  while (1)
  {
    sub_23C5EDC08(v11, v8, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    v13 = v30;
    sub_23C5EDC08(v12, v30, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    v15 = *v8;
    v14 = *(v8 + 1);
    v16 = v8[16];
    v17 = *v13;
    v18 = *(v13 + 1);
    v19 = v13[16];
    if (v16 == 255)
    {
      if (v19 != 255)
      {
LABEL_26:
        sub_23C5EDA0C(*v8, *(v8 + 1), v8[16]);
        sub_23C5EDA0C(v17, v18, v19);
        sub_23C5EDA2C(v15, v14, v16);
        v22 = v17;
        v23 = v18;
        v24 = v19;
        goto LABEL_29;
      }

      LOBYTE(v16) = -1;
      sub_23C5EDA0C(*v8, *(v8 + 1), 255);
      sub_23C5EDA0C(v17, v18, 255);
      goto LABEL_19;
    }

    if (v19 == 255)
    {
      goto LABEL_26;
    }

    if (v16)
    {
      if ((v19 & 1) == 0)
      {
        break;
      }

      if (v15 == v17 && v14 == v18)
      {
LABEL_18:
        sub_23C5EDA0C(*v8, *(v8 + 1), v8[16]);
        sub_23C5EDA0C(v15, v14, v19);
        sub_23C5EDA0C(v15, v14, v16);
        sub_23C5EDA44(v15, v14);
        sub_23C5EDA44(v15, v14);
      }

      else
      {
        v27 = sub_23C872014();
        sub_23C5EDA0C(v15, v14, v16);
        sub_23C5EDA0C(v17, v18, v19);
        sub_23C5EDA0C(v15, v14, v16);
        sub_23C5EDA44(v15, v14);
        sub_23C5EDA44(v17, v18);
        if ((v27 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_19:
      sub_23C5EDA2C(v15, v14, v16);
      goto LABEL_20;
    }

    if (v19)
    {
      break;
    }

    if (v15 == v17 && v14 == v18)
    {
      goto LABEL_18;
    }

    v27 = sub_23C872014();
    sub_23C5EDA0C(v15, v14, v16);
    sub_23C5EDA0C(v17, v18, v19);
    sub_23C5EDA0C(v15, v14, v16);
    sub_23C5EDA44(v15, v14);
    sub_23C5EDA44(v17, v18);
    sub_23C5EDA2C(v15, v14, v16);
    if ((v27 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_20:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v20 = v30;
    v21 = sub_23C871754();
    sub_23C5EDCC4(v20, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    if (v21)
    {
      v12 += v28;
      v11 += v28;
      if (--v9)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  sub_23C5EDA0C(*v8, *(v8 + 1), v8[16]);
  sub_23C5EDA0C(v17, v18, v19);
  sub_23C5EDA0C(v15, v14, v16);
  sub_23C5EDA44(v15, v14);
  sub_23C5EDA44(v17, v18);
LABEL_28:
  v22 = v15;
  v23 = v14;
  v24 = v16;
LABEL_29:
  sub_23C5EDA2C(v22, v23, v24);
LABEL_30:
  sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoToolSummaryString.Component);
  sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoToolSummaryString.Component);
LABEL_31:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_23C5E0328(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_23C8790F0[v5];
    v9 = qword_23C8790F0[v7];
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5E0394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC78, &qword_23C878FF8);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for ToolKitProtoSystemToolProtocol(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_27E1FAC70;
  v37 = v14;
  while (1)
  {
    result = sub_23C5EDC08(v20, v17, type metadata accessor for ToolKitProtoSystemToolProtocol);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_23C5EDC08(v21, v14, type metadata accessor for ToolKitProtoSystemToolProtocol);
    v25 = *(v44 + 48);
    sub_23C5855B0(v17, v11, v23, &qword_23C878FF0);
    sub_23C5855B0(v14, &v11[v25], v23, &qword_23C878FF0);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoSystemToolProtocol);
        v35 = v17;
        v34 = type metadata accessor for ToolKitProtoSystemToolProtocol;
        goto LABEL_17;
      }

      v23 = v27;
      sub_23C585C34(v11, v27, &qword_23C878FF0);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_23C5855B0(v11, v39, v27, &qword_23C878FF0);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoSystemToolProtocol);
        sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoSystemToolProtocol);
        v34 = type metadata accessor for ToolKitProtoSystemToolProtocolKind;
        v35 = v30;
LABEL_17:
        sub_23C5EDCC4(v35, v34);
        sub_23C585C34(v11, &qword_27E1FAC78, &qword_23C878FF8);
        goto LABEL_19;
      }

      v31 = v40;
      sub_23C5EDD24(&v11[v25], v40, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v32 = static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)(v30, v31);
      sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      sub_23C585C34(v11, v27, &qword_23C878FF0);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoSystemToolProtocol);
        sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoSystemToolProtocol);
        goto LABEL_19;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_23C871754();
    sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoSystemToolProtocol);
    sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoSystemToolProtocol);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5E0918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_23C5E098C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC18, &qword_23C878FB0);
  MEMORY[0x28223BE20](v60);
  v12 = &v52 - v11;
  v64 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC20, &unk_23C889D70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC28, &qword_23C878FB8);
  MEMORY[0x28223BE20](v67);
  v65 = &v52 - v17;
  v69 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  v18 = MEMORY[0x28223BE20](v69);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v23 = (&v52 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_31:
    v51 = 0;
    return v51 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v51 = 1;
    return v51 & 1;
  }

  v25 = *(a1 + 16);
  v53 = v7;
  v54 = v10;
  v58 = v4;
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v61 = (v68 + 48);
  v62 = &v52 - v22;
  v56 = v12;
  v57 = (v5 + 48);
  v59 = *(v21 + 72);
  v29 = v64;
  v30 = v65;
  v31 = v25;
  v55 = v16;
  v63 = v20;
  while (1)
  {
    result = sub_23C5EDC08(v27, v23, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    if (!v31)
    {
      break;
    }

    v68 = v31;
    sub_23C5EDC08(v28, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    v33 = *v23 == *v20 && v23[1] == v20[1];
    if (!v33 && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_30;
    }

    v34 = *(v69 + 20);
    v35 = *(v67 + 48);
    sub_23C5855B0(v23 + v34, v30, &qword_27E1FAC20, &unk_23C889D70);
    sub_23C5855B0(v20 + v34, v30 + v35, &qword_27E1FAC20, &unk_23C889D70);
    v36 = *v61;
    if ((*v61)(v30, 1, v29) == 1)
    {
      v37 = v36(v30 + v35, 1, v29);
      v20 = v63;
      if (v37 != 1)
      {
        goto LABEL_26;
      }

      sub_23C585C34(v30, &qword_27E1FAC20, &unk_23C889D70);
      v23 = v62;
    }

    else
    {
      sub_23C5855B0(v30, v16, &qword_27E1FAC20, &unk_23C889D70);
      if (v36(v30 + v35, 1, v29) == 1)
      {
        sub_23C5EDCC4(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        v20 = v63;
LABEL_26:
        sub_23C585C34(v30, &qword_27E1FAC28, &qword_23C878FB8);
        v23 = v62;
        goto LABEL_30;
      }

      v38 = v66;
      sub_23C5EDD24(v30 + v35, v66, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v39 = *(v60 + 48);
      v40 = v56;
      sub_23C5855B0(v16, v56, &qword_27E1FAC10, &qword_23C878FA8);
      sub_23C5855B0(v38, v40 + v39, &qword_27E1FAC10, &qword_23C878FA8);
      v41 = v58;
      v42 = *v57;
      if ((*v57)(v40, 1, v58) == 1)
      {
        if (v42(v40 + v39, 1, v41) != 1)
        {
          goto LABEL_28;
        }

        sub_23C585C34(v40, &qword_27E1FAC10, &qword_23C878FA8);
      }

      else
      {
        v43 = v54;
        sub_23C5855B0(v40, v54, &qword_27E1FAC10, &qword_23C878FA8);
        if (v42(v40 + v39, 1, v41) == 1)
        {
          sub_23C5EDCC4(v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
LABEL_28:
          sub_23C585C34(v40, &qword_27E1FAC18, &qword_23C878FB0);
LABEL_29:
          sub_23C5EDCC4(v66, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
          sub_23C5EDCC4(v55, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
          sub_23C585C34(v65, &qword_27E1FAC20, &unk_23C889D70);
          v23 = v62;
          v20 = v63;
LABEL_30:
          sub_23C5EDCC4(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          sub_23C5EDCC4(v23, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          goto LABEL_31;
        }

        v44 = v53;
        sub_23C5EDD24(v40 + v39, v53, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        v45 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v43, v44);
        sub_23C5EDCC4(v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        sub_23C5EDCC4(v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        sub_23C585C34(v40, &qword_27E1FAC10, &qword_23C878FA8);
        if ((v45 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v46 = v64;
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v47 = v55;
      v48 = v66;
      v49 = sub_23C871754();
      v50 = v48;
      v29 = v46;
      sub_23C5EDCC4(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v16 = v47;
      sub_23C5EDCC4(v47, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v30 = v65;
      sub_23C585C34(v65, &qword_27E1FAC20, &unk_23C889D70);
      v23 = v62;
      v20 = v63;
      if ((v49 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v51 = sub_23C871754();
    sub_23C5EDCC4(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    sub_23C5EDCC4(v23, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    if (v51)
    {
      v31 = v68 - 1;
      v28 += v59;
      v27 += v59;
      if (v68 != 1)
      {
        continue;
      }
    }

    return v51 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5E1250(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5E12AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v43 - v9);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC0, &qword_23C8790B0);
  MEMORY[0x28223BE20](v49);
  v51 = &v43 - v11;
  v52 = type metadata accessor for ContextProtoSurroundingText(0);
  v12 = MEMORY[0x28223BE20](v52);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v43 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_51;
  }

  if (!v18 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v47 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v45 = v14;
  v46 = (v5 + 48);
  v43 = *(v15 + 72);
  v44 = (&v43 - v16);
  while (1)
  {
    sub_23C5EDC08(v20, v17, type metadata accessor for ContextProtoSurroundingText);
    sub_23C5EDC08(v21, v14, type metadata accessor for ContextProtoSurroundingText);
    v22 = v17[1];
    v23 = v14[1];
    if (v22)
    {
      if (!v23 || (*v17 != *v14 || v22 != v23) && (sub_23C872014() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v23)
    {
      goto LABEL_46;
    }

    v50 = v21;
    v48 = v20;
    v24 = v7;
    v25 = v51;
    v26 = *(v52 + 20);
    v27 = *(v49 + 48);
    sub_23C5855B0(v17 + v26, v51, &qword_27E1FADB8, &unk_23C879160);
    v28 = v14 + v26;
    v29 = v25;
    sub_23C5855B0(v28, v25 + v27, &qword_27E1FADB8, &unk_23C879160);
    v30 = *v46;
    v31 = v25;
    v32 = v47;
    if ((*v46)(v31, 1, v47) != 1)
    {
      break;
    }

    if (v30(v29 + v27, 1, v32) != 1)
    {
      v40 = type metadata accessor for ContextProtoSurroundingText;
      v41 = v44;
      goto LABEL_49;
    }

    sub_23C585C34(v29, &qword_27E1FADB8, &unk_23C879160);
    v7 = v24;
    v17 = v44;
    v14 = v45;
    v33 = v50;
LABEL_41:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = sub_23C871754();
    sub_23C5EDCC4(v17, type metadata accessor for ContextProtoSurroundingText);
    sub_23C5EDCC4(v14, type metadata accessor for ContextProtoSurroundingText);
    if (v39)
    {
      v21 = v33 + v43;
      v20 = v48 + v43;
      if (--v18)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  sub_23C5855B0(v29, v10, &qword_27E1FADB8, &unk_23C879160);
  if (v30(v29 + v27, 1, v32) != 1)
  {
    v7 = v24;
    sub_23C5EDD24(v29 + v27, v24, type metadata accessor for ContextProtoBoundingBox);
    v34 = *(v24 + 4);
    v17 = v44;
    if (v10[1])
    {
      v14 = v45;
      v33 = v50;
      if (!v34)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (*v10 != *v24)
      {
        LOBYTE(v34) = 1;
      }

      v14 = v45;
      v33 = v50;
      if (v34)
      {
LABEL_45:
        sub_23C5EDCC4(v7, type metadata accessor for ContextProtoBoundingBox);
        sub_23C5EDCC4(v10, type metadata accessor for ContextProtoBoundingBox);
        sub_23C585C34(v51, &qword_27E1FADB8, &unk_23C879160);
LABEL_46:
        sub_23C5EDCC4(v17, type metadata accessor for ContextProtoSurroundingText);
        goto LABEL_50;
      }
    }

    v35 = *(v7 + 12);
    if (v10[3])
    {
      if (!*(v7 + 12))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v10[2] != v7[2])
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_45;
      }
    }

    v36 = *(v7 + 20);
    if (v10[5])
    {
      if (!*(v7 + 20))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v10[4] != v7[4])
      {
        v36 = 1;
      }

      if (v36)
      {
        goto LABEL_45;
      }
    }

    v37 = *(v7 + 28);
    if (v10[7])
    {
      if (!*(v7 + 28))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v10[6] != v7[6])
      {
        v37 = 1;
      }

      if (v37)
      {
        goto LABEL_45;
      }
    }

    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v7, type metadata accessor for ContextProtoBoundingBox);
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoBoundingBox);
    sub_23C585C34(v51, &qword_27E1FADB8, &unk_23C879160);
    if ((v38 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  sub_23C5EDCC4(v44, type metadata accessor for ContextProtoSurroundingText);
  v40 = type metadata accessor for ContextProtoBoundingBox;
  v41 = v10;
LABEL_49:
  sub_23C5EDCC4(v41, v40);
  sub_23C585C34(v29, &qword_27E1FADC0, &qword_23C8790B0);
  v14 = v45;
LABEL_50:
  sub_23C5EDCC4(v14, type metadata accessor for ContextProtoSurroundingText);
LABEL_51:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams49ContextProtoContextualEntityDisplayRepresentationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (v8 && (a1[2] == a2[2] && v7 == v8 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_15;
    }
  }

  else if (!v8)
  {
LABEL_15:
    type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams42ContextProtoVersionedQueryDecorationOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v27 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE8, &qword_23C879020);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if ((sub_23C5CF590(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_14;
  }

  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v15 = *(DecorationOutput + 44);
  v16 = *(v11 + 48);
  v27 = DecorationOutput;
  v28 = a1;
  sub_23C5855B0(a1 + v15, v13, &qword_27E1FACE0, &unk_23C8A13B0);
  sub_23C5855B0(a2 + v15, &v13[v16], &qword_27E1FACE0, &unk_23C8A13B0);
  v17 = *(v5 + 48);
  if (v17(v13, 1, DecorationToolRetrievalResponse) != 1)
  {
    sub_23C5855B0(v13, v10, &qword_27E1FACE0, &unk_23C8A13B0);
    if (v17(&v13[v16], 1, DecorationToolRetrievalResponse) != 1)
    {
      sub_23C5EDD24(&v13[v16], v7, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_23C5EDCC4(v7, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C5EDCC4(v10, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C585C34(v13, &qword_27E1FACE0, &unk_23C8A13B0);
      if ((DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_8:
    sub_23C585C34(v13, &qword_27E1FACE8, &qword_23C879020);
    goto LABEL_14;
  }

  if (v17(&v13[v16], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_8;
  }

  sub_23C585C34(v13, &qword_27E1FACE0, &unk_23C8A13B0);
LABEL_10:
  v19 = v28;
  if ((sub_23C5D2F10(*(v28 + 16), *(a2 + 16)) & 1) == 0 || *(v19 + 24) != *(a2 + 24) || (sub_23C5D08D4(*(v19 + 32), *(a2 + 32), type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoRetrievedContext) & 1) == 0 || *(v19 + 40) != *(a2 + 40))
  {
    goto LABEL_14;
  }

  v22 = *(v27 + 48);
  v23 = (v19 + v22);
  v24 = *(v19 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v20 = sub_23C871754();
    return v20 & 1;
  }

  if (!v26)
  {
    goto LABEL_23;
  }

LABEL_14:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(float *a1, uint64_t a2)
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

  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams36ContextProtoDynamicEnumerationEntityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = (&v42 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  MEMORY[0x28223BE20](v46);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v42 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = a1[1];
  v49 = a1;
  if ((v21 != *a2 || v22 != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v44 = v10;
  v42 = v6;
  v23 = a2;
  v43 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v24 = *(v43 + 20);
  v25 = *(v18 + 48);
  sub_23C5855B0(v49 + v24, v20, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(v23 + v24, &v20[v25], &qword_27E1FAC40, &unk_23C8791C0);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) != 1)
  {
    sub_23C5855B0(v20, v17, &qword_27E1FAC40, &unk_23C8791C0);
    if (v26(&v20[v25], 1, v11) != 1)
    {
      sub_23C5EDD24(&v20[v25], v14, type metadata accessor for ToolKitProtoTypeInstance);
      v30 = static ToolKitProtoTypeInstance.== infix(_:_:)(v17, v14);
      sub_23C5EDCC4(v14, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C585C34(v20, &qword_27E1FAC40, &unk_23C8791C0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_9:
    v27 = &qword_27E1FAC48;
    v28 = &qword_23C878FD0;
    v29 = v20;
LABEL_17:
    sub_23C585C34(v29, v27, v28);
    goto LABEL_18;
  }

  if (v26(&v20[v25], 1, v11) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v20, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_11:
  v31 = v44;
  v32 = *(v43 + 24);
  v33 = *(v46 + 48);
  sub_23C5855B0(v49 + v32, v44, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(v23 + v32, v31 + v33, &qword_27E1FAB68, &unk_23C879140);
  v34 = v48;
  v35 = *(v47 + 48);
  if (v35(v31, 1, v48) == 1)
  {
    if (v35(v31 + v33, 1, v34) == 1)
    {
      sub_23C585C34(v31, &qword_27E1FAB68, &unk_23C879140);
LABEL_21:
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v37 = sub_23C871754();
      return v37 & 1;
    }

    goto LABEL_16;
  }

  v36 = v45;
  sub_23C5855B0(v31, v45, &qword_27E1FAB68, &unk_23C879140);
  if (v35(v31 + v33, 1, v34) == 1)
  {
    sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypedValue);
LABEL_16:
    v27 = &qword_27E1FAB70;
    v28 = &qword_23C878F28;
    v29 = v31;
    goto LABEL_17;
  }

  v39 = v31 + v33;
  v40 = v42;
  sub_23C5EDD24(v39, v42, type metadata accessor for ToolKitProtoTypedValue);
  v41 = static ToolKitProtoTypedValue.== infix(_:_:)(v36, v40);
  sub_23C5EDCC4(v40, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v31, &qword_27E1FAB68, &unk_23C879140);
  if (v41)
  {
    goto LABEL_21;
  }

LABEL_18:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ContextProtoQueryDecorationOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v27 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE8, &qword_23C879020);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if ((sub_23C5CF590(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || (sub_23C5D08D4(*(a1 + 16), *(a2 + 16), type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoRetrievedContext) & 1) == 0 || *(a1 + 24) != *(a2 + 24) || (sub_23C5D08D4(*(a1 + 32), *(a2 + 32), type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoRetrievedContext) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_18;
  }

  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v14 = *(DecorationOutput + 56);
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
      sub_23C5EDD24(&v13[v17], v7, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_23C5EDCC4(v7, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C5EDCC4(v10, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C585C34(v13, &qword_27E1FACE0, &unk_23C8A13B0);
      if ((DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_12:
    sub_23C585C34(v13, &qword_27E1FACE8, &qword_23C879020);
    goto LABEL_18;
  }

  if (v18(&v13[v17], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_12;
  }

  sub_23C585C34(v13, &qword_27E1FACE0, &unk_23C8A13B0);
LABEL_14:
  if ((sub_23C5D2F10(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56) || (sub_23C5D08D4(*(a1 + 64), *(a2 + 64), type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoRetrievedContext) & 1) == 0 || *(a1 + 72) != *(a2 + 72))
  {
    goto LABEL_18;
  }

  v22 = *(DecorationOutput + 60);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_27:
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v20 = sub_23C871754();
    return v20 & 1;
  }

  if (!v26)
  {
    goto LABEL_27;
  }

LABEL_18:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams32ContextProtoQueryDecorationInputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[4] == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    v8 = a1[7];
    v9 = *(a2 + 56);
    if (v8)
    {
      if (!v9 || (a1[6] != *(a2 + 48) || v8 != v9) && (sub_23C872014() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    v10 = a1[9];
    v11 = *(a2 + 72);
    if (v10)
    {
      if (!v11 || (a1[8] != *(a2 + 64) || v10 != v11) && (sub_23C872014() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (sub_23C5E1250(a1[3], *(a2 + 24)))
    {
      v12 = a1[11];
      v13 = *(a2 + 88);
      if (v12)
      {
        if (v13 && (a1[10] == *(a2 + 80) && v12 == v13 || (sub_23C872014() & 1) != 0))
        {
          goto LABEL_36;
        }
      }

      else if (!v13)
      {
LABEL_36:
        type metadata accessor for ContextProtoQueryDecorationInput(0);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        return sub_23C871754() & 1;
      }
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams29ContextProtoToolRetrievalTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB18, &qword_23C878EF0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB20, &qword_23C878EF8);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - v8;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(v17 + 56);
  v43 = a1;
  sub_23C5855B0(a1, &v37 - v18, &qword_27E1FAB38, &unk_23C8791E0);
  v44 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E1FAB38, &unk_23C8791E0);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_23C5855B0(v19, v15, &qword_27E1FAB38, &unk_23C8791E0);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_23C5EDD24(&v19[v20], v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      v25 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v15, v12);
      sub_23C5EDCC4(v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C5EDCC4(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v19, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C5EDCC4(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v22 = &qword_27E1FAB40;
    v23 = &qword_23C878F08;
    v24 = v19;
LABEL_14:
    sub_23C585C34(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v19, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_8:
  v26 = *(type metadata accessor for ContextProtoToolRetrievalType(0) + 20);
  v27 = *(v39 + 48);
  v28 = v42;
  sub_23C5855B0(v43 + v26, v42, &qword_27E1FAB18, &qword_23C878EF0);
  sub_23C5855B0(v44 + v26, v28 + v27, &qword_27E1FAB18, &qword_23C878EF0);
  v29 = v41;
  v30 = *(v40 + 48);
  if (v30(v28, 1, v41) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAB18, &qword_23C878EF0);
LABEL_18:
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v28, v38, &qword_27E1FAB18, &qword_23C878EF0);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
LABEL_13:
    v22 = &qword_27E1FAB20;
    v23 = &qword_23C878EF8;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v37;
  sub_23C5EDD24(v34, v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  v36 = static ToolKitProtoTypeDefinition.Version1.== infix(_:_:)(v31, v35);
  sub_23C5EDCC4(v35, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_23C5EDCC4(v31, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_23C585C34(v28, &qword_27E1FAB18, &qword_23C878EF0);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29ContextProtoSpanMatchedEntityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
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
  v22 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
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
    sub_23C5EDCC4(v9, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FAB70, &qword_23C878F28);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_23C5EDD24(&v13[v15], v23, type metadata accessor for ToolKitProtoTypedValue);
  v18 = static ToolKitProtoTypedValue.== infix(_:_:)(v9, v17);
  sub_23C5EDCC4(v17, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v9, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v13, &qword_27E1FAB68, &unk_23C879140);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C5D08D4(*v24, *a2, type metadata accessor for ContextProtoEntityMatch, type metadata accessor for ContextProtoEntityMatch, _s26AIMLInstrumentationStreams23ContextProtoEntityMatchV2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoEntityMatch) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_23C871754();
  return v19 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27ContextProtoToolQueryOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE0, &qword_23C878EC8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FAAD8, &qword_23C878EC0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FAAD8, &qword_23C878EC0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAAD8, &qword_23C878EC0);
LABEL_9:
      type metadata accessor for ContextProtoToolQueryOutput(0);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAAD8, &qword_23C878EC0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoRetrievedTool.Definition);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAAE0, &qword_23C878EC8);
    goto LABEL_7;
  }

  sub_23C5EDD24(&v14[v15], v7, type metadata accessor for ContextProtoRetrievedTool.Definition);
  v18 = _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_23C5EDCC4(v7, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C5EDCC4(v10, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C585C34(v14, &qword_27E1FAAD8, &qword_23C878EC0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27ContextProtoSurroundingTextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC0, &qword_23C8790B0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  v16 = type metadata accessor for ContextProtoSurroundingText(0);
  v17 = a1;
  v18 = a2;
  v25[0] = v16;
  v25[1] = v17;
  v19 = *(v16 + 20);
  v20 = *(v11 + 48);
  sub_23C5855B0(v17 + v19, v13, &qword_27E1FADB8, &unk_23C879160);
  sub_23C5855B0(v18 + v19, &v13[v20], &qword_27E1FADB8, &unk_23C879160);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FADB8, &unk_23C879160);
LABEL_17:
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_13;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FADB8, &unk_23C879160);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoBoundingBox);
LABEL_13:
    sub_23C585C34(v13, &qword_27E1FADC0, &qword_23C8790B0);
    goto LABEL_14;
  }

  sub_23C5EDD24(&v13[v20], v7, type metadata accessor for ContextProtoBoundingBox);
  v24 = _s26AIMLInstrumentationStreams23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C5EDCC4(v7, type metadata accessor for ContextProtoBoundingBox);
  sub_23C5EDCC4(v10, type metadata accessor for ContextProtoBoundingBox);
  sub_23C585C34(v13, &qword_27E1FADB8, &unk_23C879160);
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_14:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE0, &qword_23C878EC8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for ContextProtoRetrievedTool(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAAD8, &qword_23C878EC0);
  sub_23C5855B0(a2 + v14, &v13[v15], &qword_27E1FAAD8, &qword_23C878EC0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23C5855B0(v13, v9, &qword_27E1FAAD8, &qword_23C878EC0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_23C5EDD24(&v13[v15], v24, type metadata accessor for ContextProtoRetrievedTool.Definition);
      v18 = _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(v9, v17);
      sub_23C5EDCC4(v17, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C5EDCC4(v9, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C585C34(v13, &qword_27E1FAAD8, &qword_23C878EC0);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_12:
      v20 = 0;
      return v20 & 1;
    }

    sub_23C5EDCC4(v9, type metadata accessor for ContextProtoRetrievedTool.Definition);
LABEL_6:
    sub_23C585C34(v13, &qword_27E1FAAE0, &qword_23C878EC8);
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v13, &qword_27E1FAAD8, &qword_23C878EC0);
LABEL_8:
  v19 = v25;
  if (*v25 != *a2 || (sub_23C5DE28C(*(v25 + 8), *(a2 + 8)) & 1) == 0 || *(v19 + 16) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_23C871754();
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD0, &qword_23C878EB8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FA540, &unk_23C8791D0);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FA540, &unk_23C8791D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FA540, &unk_23C8791D0);
LABEL_9:
      type metadata accessor for ContextProtoRetrievedTool.Definition(0);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FA540, &unk_23C8791D0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FAAD0, &qword_23C878EB8);
    goto LABEL_7;
  }

  sub_23C5EDD24(&v14[v15], v7, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  v18 = static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)(v10, v7);
  sub_23C5EDCC4(v7, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_23C5EDCC4(v10, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_23C585C34(v14, &qword_27E1FA540, &unk_23C8791D0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27ContextProtoMatchPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB48, &qword_23C878F10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v28 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB50, &qword_23C878F18);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_21;
    }
  }

  v16 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_21;
    }
  }

  v28 = v7;
  v17 = v12;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v18 = *(matched + 24);
  v19 = *(v17 + 48);
  sub_23C5855B0(a1 + v18, v14, &qword_27E1FAB48, &qword_23C878F10);
  sub_23C5855B0(a2 + v18, &v14[v19], &qword_27E1FAB48, &qword_23C878F10);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v19], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FAB48, &qword_23C878F10);
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FAB48, &qword_23C878F10);
  if (v20(&v14[v19], 1, v4) == 1)
  {
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoAliasTypes);
LABEL_19:
    v22 = &qword_27E1FAB50;
    v23 = &qword_23C878F18;
LABEL_20:
    sub_23C585C34(v14, v22, v23);
LABEL_21:
    v21 = 0;
    return v21 & 1;
  }

  v25 = &v14[v19];
  v26 = v28;
  sub_23C5EDD24(v25, v28, type metadata accessor for ContextProtoAliasTypes);
  if ((sub_23C5E1250(*v10, *v26) & 1) == 0)
  {
    sub_23C5EDCC4(v26, type metadata accessor for ContextProtoAliasTypes);
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoAliasTypes);
    v22 = &qword_27E1FAB48;
    v23 = &qword_23C878F10;
    goto LABEL_20;
  }

  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v27 = sub_23C871754();
  sub_23C5EDCC4(v26, type metadata accessor for ContextProtoAliasTypes);
  sub_23C5EDCC4(v10, type metadata accessor for ContextProtoAliasTypes);
  sub_23C585C34(v14, &qword_27E1FAB48, &qword_23C878F10);
  if ((v27 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = sub_23C871754();
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams23ContextProtoEntityMatchV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v5 = *(matched - 8);
  MEMORY[0x28223BE20](matched);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB58, &unk_23C8791F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB60, &qword_23C878F20);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (*a1 != *a2 && (sub_23C872014() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_30;
  }

  v28 = type metadata accessor for ContextProtoEntityMatch(0);
  v14 = *(v28 + 48);
  v15 = *(v11 + 48);
  sub_23C5855B0(a1 + v14, v13, &qword_27E1FAB58, &unk_23C8791F0);
  v16 = a2 + v14;
  v17 = v15;
  sub_23C5855B0(v16, &v13[v15], &qword_27E1FAB58, &unk_23C8791F0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, matched) == 1)
  {
    if (v18(&v13[v17], 1, matched) == 1)
    {
      sub_23C585C34(v13, &qword_27E1FAB58, &unk_23C8791F0);
      goto LABEL_16;
    }

LABEL_14:
    sub_23C585C34(v13, &qword_27E1FAB60, &qword_23C878F20);
    goto LABEL_30;
  }

  sub_23C5855B0(v13, v10, &qword_27E1FAB58, &unk_23C8791F0);
  if (v18(&v13[v17], 1, matched) == 1)
  {
    sub_23C5EDCC4(v10, type metadata accessor for ContextProtoMatchProperties);
    goto LABEL_14;
  }

  sub_23C5EDD24(&v13[v17], v7, type metadata accessor for ContextProtoMatchProperties);
  v19 = _s26AIMLInstrumentationStreams27ContextProtoMatchPropertiesV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_23C5EDCC4(v7, type metadata accessor for ContextProtoMatchProperties);
  sub_23C5EDCC4(v10, type metadata accessor for ContextProtoMatchProperties);
  sub_23C585C34(v13, &qword_27E1FAB58, &unk_23C8791F0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  if (*(a1 + 52) != *(a2 + 52) || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_23C872014() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v20 = *(v28 + 52);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (v24 && (*v21 == *v23 && v22 == v24 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_28;
    }

LABEL_30:
    v25 = 0;
    return v25 & 1;
  }

  if (v24)
  {
    goto LABEL_30;
  }

LABEL_28:
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v25 = sub_23C871754();
  return v25 & 1;
}