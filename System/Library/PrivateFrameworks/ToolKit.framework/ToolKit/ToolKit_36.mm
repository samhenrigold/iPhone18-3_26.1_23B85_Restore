uint64_t sub_1C8FC73C0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B768);
  __swift_project_value_buffer(v0, qword_1EC31B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FC7600()
{
  OUTLINED_FUNCTION_89_1();
  while (1)
  {
    OUTLINED_FUNCTION_203();
    result = sub_1C90638DC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_305_1();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_305_1();
      v2();
    }
  }

  return result;
}

uint64_t sub_1C8FC7684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A8, &qword_1C9074E78);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8E8, &qword_1C90BBCD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC3147A8, &qword_1C9074E78);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D8E8, &qword_1C90BBCD0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CF90, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8E8, &qword_1C90BBCD0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8E8, &qword_1C90BBCD0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8E8, &qword_1C90BBCD0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8E8, &qword_1C90BBCD0);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3147A8, &qword_1C9074E78);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FC7B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A8, &qword_1C9074E78);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8F0, &qword_1C90BBCD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC3147A8, &qword_1C9074E78);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8F0, &qword_1C90BBCD8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CFA8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8F0, &qword_1C90BBCD8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8F0, &qword_1C90BBCD8);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8F0, &qword_1C90BBCD8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8F0, &qword_1C90BBCD8);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3147A8, &qword_1C9074E78);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FC814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A8, &qword_1C9074E78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3147A8, &qword_1C9074E78);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CF90, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FC8354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147A8, &qword_1C9074E78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3147A8, &qword_1C9074E78);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CFA8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FC87F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC8874(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CF78, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC88E4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CF78, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC89A8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B790);
  __swift_project_value_buffer(v0, qword_1EC31B790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoAssistantTypeSchemaDefinition.Entity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC8D54(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_226_5();
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC8CA0(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_1C8FC8CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC8D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoAssistantTypeSchemaDefinition.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  v4 = OUTLINED_FUNCTION_7_48();
  sub_1C8FC8EBC(v4, v5, v6, v7);
  if (!v3)
  {
    OUTLINED_FUNCTION_271_1();
    if (v8)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      OUTLINED_FUNCTION_224_3();
      sub_1C8CD1B00(v9, v10, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v11 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC9090(v11, v12, v13, v14);
    type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
    OUTLINED_FUNCTION_53_15();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC8EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313F20, &unk_1C9074D20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_1C8FC9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313F18, &unk_1C9072A20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_1C8FC92EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D498, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC936C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CF90, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC93DC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CF90, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_1C9063ABC();
}

void sub_1C8FC9488(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FC94F0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B7B8);
  __swift_project_value_buffer(v0, qword_1EC31B7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cases";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC989C(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_222_5();
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC97E8(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_1C8FC97E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  v4 = OUTLINED_FUNCTION_7_48();
  sub_1C8FC9A04(v4, v5, v6, v7);
  if (!v3)
  {
    OUTLINED_FUNCTION_271_1();
    if (v8)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      OUTLINED_FUNCTION_260_1();
      sub_1C8CD1B00(v9, v10, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v11 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC9BD8(v11, v12, v13, v14);
    type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
    OUTLINED_FUNCTION_53_15();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC9A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313F20, &unk_1C9074D20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_1C8FC9BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313F18, &unk_1C9072A20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_1C8FC9E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D490, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC9EB4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CFA8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC9F24(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CFA8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC9FB0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B7D0);
  __swift_project_value_buffer(v0, qword_1EC31B7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_1C90ABF40;
  v4 = v138 + v3 + v1[14];
  *(v138 + v3) = 1;
  *v4 = "unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v138 + v3 + v2 + v1[14];
  *(v138 + v3 + v2) = 2;
  *v8 = "undoable";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v138 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sessionStarting";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v138 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urlRepresentable";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v138 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "conditionallyEnabled";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v138 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "foregroundContinuable";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v138 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "changeBinarySetting";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v138 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "requiresMdmChecks";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v138 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "cut";
  *(v22 + 1) = 3;
  v22[16] = 2;
  v7();
  v23 = (v138 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "copy";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v7();
  v25 = (v138 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "paste";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v138 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cancel";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  v29 = (v138 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "resize";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v138 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "scroll";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v138 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v7();
  v35 = (v138 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "zoom";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v7();
  v37 = (v138 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "closeEntity";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v138 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "createEntity";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v138 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "cutEntity";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v138 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "deleteEntity";
  *(v44 + 1) = 12;
  v44[16] = 2;
  v7();
  v45 = (v138 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "duplicateEntity";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v138 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "favoriteEntity";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v138 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "openEntity";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  v51 = (v138 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "previewEntity";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v138 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "saveEntity";
  *(v54 + 1) = 10;
  v54[16] = 2;
  v7();
  v55 = (v138 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "putEntityInContainer";
  *(v56 + 1) = 20;
  v56[16] = 2;
  v7();
  v57 = (v138 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "playVideo";
  *(v58 + 1) = 9;
  v58[16] = 2;
  v7();
  v59 = (v138 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "audioStarting";
  *(v60 + 1) = 13;
  v60[16] = 2;
  v7();
  v61 = (v138 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "audioRecording";
  *(v62 + 1) = 14;
  v62[16] = 2;
  v7();
  v63 = (v138 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "pushToTalkTransmission";
  *(v64 + 1) = 22;
  v64[16] = 2;
  v7();
  v65 = (v138 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "startDive";
  *(v66 + 1) = 9;
  v66[16] = 2;
  v7();
  v67 = (v138 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "startWorkout";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v138 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "pauseWorkout";
  *(v70 + 1) = 12;
  v70[16] = 2;
  v7();
  v71 = (v138 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "resumeWorkout";
  *(v72 + 1) = 13;
  v72[16] = 2;
  v7();
  v73 = (v138 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "enterMarkup";
  *(v74 + 1) = 11;
  v74[16] = 2;
  v7();
  v75 = (v138 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "exitMarkup";
  *(v76 + 1) = 10;
  v76[16] = 2;
  v7();
  v77 = (v138 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "focusConfiguration";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v138 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "widgetConfiguration";
  *(v80 + 1) = 19;
  v80[16] = 2;
  v7();
  v81 = (v138 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "search";
  *(v82 + 1) = 6;
  v82[16] = 2;
  v7();
  v83 = (v138 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "showSearchResultsInApp";
  *(v84 + 1) = 22;
  v84[16] = 2;
  v7();
  v85 = (v138 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "showStringSearchResultsInApp";
  *(v86 + 1) = 28;
  v86[16] = 2;
  v7();
  v87 = (v138 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "showInAppSearchResults";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v138 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "showInAppStringSearchResults";
  *(v90 + 1) = 28;
  v90[16] = 2;
  v7();
  v91 = (v138 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "moveSpatial";
  *(v92 + 1) = 11;
  v92[16] = 2;
  v7();
  v93 = (v138 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "navigateSequentially";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v138 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "sting";
  *(v96 + 1) = 5;
  v96[16] = 2;
  v7();
  v97 = (v138 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "toggle";
  *(v98 + 1) = 6;
  v98[16] = 2;
  v7();
  v99 = (v138 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "cameraCapture";
  *(v100 + 1) = 13;
  v100[16] = 2;
  v7();
  v101 = (v138 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "staccatoLongPress";
  *(v102 + 1) = 17;
  v102[16] = 2;
  v7();
  v103 = (v138 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "entityUpdating";
  *(v104 + 1) = 14;
  v104[16] = 2;
  v7();
  v105 = (v138 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "propertyUpdater";
  *(v106 + 1) = 15;
  v106[16] = 2;
  v7();
  v107 = (v138 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "sendMail";
  *(v108 + 1) = 8;
  v108[16] = 2;
  v7();
  v109 = (v138 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "setMailMessageIsRead";
  *(v110 + 1) = 20;
  v110[16] = 2;
  v7();
  v111 = (v138 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "siriKitIntent";
  *(v112 + 1) = 13;
  v112[16] = 2;
  v7();
  v113 = (v138 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "intentSideEffect";
  *(v114 + 1) = 16;
  v114[16] = 2;
  v7();
  v115 = (v138 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "assistantSchema";
  *(v116 + 1) = 15;
  v116[16] = 2;
  v7();
  v117 = (v138 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "rewriteWritingTool";
  *(v118 + 1) = 18;
  v118[16] = 2;
  v7();
  v119 = (v138 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "proofreadWritingTool";
  *(v120 + 1) = 20;
  v120[16] = 2;
  v7();
  v121 = (v138 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "assistantInvocable";
  *(v122 + 1) = 18;
  v122[16] = 2;
  v7();
  v123 = (v138 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "appIntent";
  *(v124 + 1) = 9;
  v124[16] = 2;
  v7();
  v125 = (v138 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "systemFrameworkIntent";
  *(v126 + 1) = 21;
  v126[16] = 2;
  v7();
  v127 = (v138 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "synthesizedTool";
  *(v128 + 1) = 15;
  v128[16] = 2;
  v7();
  v129 = (v138 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "progressReporting";
  *(v130 + 1) = 17;
  v130[16] = 2;
  v7();
  v131 = (v138 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "controlConfiguration";
  *(v132 + 1) = 20;
  v132[16] = 2;
  v7();
  v133 = (v138 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 65;
  *v134 = "valueSetting";
  *(v134 + 1) = 12;
  v134[16] = 2;
  v7();
  v135 = (v138 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 66;
  *v136 = "entityGetter";
  *(v136 + 1) = 12;
  v136[16] = 2;
  v7();
  return sub_1C9063BEC();
}

void ToolKitProtoSystemToolProtocol.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
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
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 52:
      case 53:
      case 57:
      case 58:
      case 59:
      case 61:
      case 63:
      case 64:
        goto LABEL_17;
      case 5:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCB824(v15, v16, v17, v18);
        break;
      case 27:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCBD1C(v31, v32, v33, v34);
        break;
      case 43:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCC214(v23, v24, v25, v26);
        break;
      case 50:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCC70C(v11, v12, v13, v14);
        break;
      case 51:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCCC04(v3, v4, v5, v6);
        break;
      case 54:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCD0FC(v7, v8, v9, v10);
        break;
      case 55:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCD5F4(v35, v36, v37, v38);
        break;
      case 56:
        v39 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCDAEC(v39, v40, v41, v42);
        break;
      case 60:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCDFE4(v27, v28, v29, v30);
        break;
      case 62:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FCE4DC(v19, v20, v21, v22);
        break;
      default:
        if (v1 == 66 || v1 == 65)
        {
LABEL_17:
          OUTLINED_FUNCTION_0_80();
          sub_1C8F6278C();
        }

        break;
    }
  }
}

uint64_t sub_1C8FCB824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D898, &qword_1C90BBC80);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D898, &qword_1C90BBC80);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CFC8, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D898, &qword_1C90BBC80);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D898, &qword_1C90BBC80);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D898, &qword_1C90BBC80);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D898, &qword_1C90BBC80);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCBD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8A0, &qword_1C90BBC88);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8A0, &qword_1C90BBC88);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CFE0, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8A0, &qword_1C90BBC88);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8A0, &qword_1C90BBC88);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8A0, &qword_1C90BBC88);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8A0, &qword_1C90BBC88);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCC214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8A8, &qword_1C90BBC90);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8A8, &qword_1C90BBC90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63CF8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8A8, &qword_1C90BBC90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8A8, &qword_1C90BBC90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8A8, &qword_1C90BBC90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8A8, &qword_1C90BBC90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCC70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8B0, &qword_1C90BBC98);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8B0, &qword_1C90BBC98);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63D18, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8B0, &qword_1C90BBC98);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8B0, &qword_1C90BBC98);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8B0, &qword_1C90BBC98);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8B0, &qword_1C90BBC98);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8B8, &qword_1C90BBCA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8B8, &qword_1C90BBCA0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA61020, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8B8, &qword_1C90BBCA0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8B8, &qword_1C90BBCA0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8B8, &qword_1C90BBCA0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8B8, &qword_1C90BBCA0);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCD0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8C0, &qword_1C90BBCA8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8C0, &qword_1C90BBCA8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63D28, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8C0, &qword_1C90BBCA8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8C0, &qword_1C90BBCA8);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8C0, &qword_1C90BBCA8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8C0, &qword_1C90BBCA8);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCD5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8C8, &qword_1C90BBCB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8C8, &qword_1C90BBCB0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63D08, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8C8, &qword_1C90BBCB0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8C8, &qword_1C90BBCB0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8C8, &qword_1C90BBCB0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8C8, &qword_1C90BBCB0);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCDAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8D0, &qword_1C90BBCB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8D0, &qword_1C90BBCB8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA61030, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8D0, &qword_1C90BBCB8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8D0, &qword_1C90BBCB8);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8D0, &qword_1C90BBCB8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8D0, &qword_1C90BBCB8);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCDFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8D8, &qword_1C90BBCC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8D8, &qword_1C90BBCC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6A460, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8D8, &qword_1C90BBCC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8D8, &qword_1C90BBCC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8D8, &qword_1C90BBCC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8D8, &qword_1C90BBCC0);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCE4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D8E0, &qword_1C90BBCC8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8D16D78(v20, &qword_1EC31D8E0, &qword_1C90BBCC8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA61040, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D8E0, &qword_1C90BBCC8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D8E0, &qword_1C90BBCC8);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D8E0, &qword_1C90BBCC8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D8E0, &qword_1C90BBCC8);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312948, &qword_1C9068D28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FCEDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 10)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FCEFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 11)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FCF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 12)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FCF44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FCF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CFC8, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FCF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FCFAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FCFCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 16)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FCFEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 17)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 18)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD0340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 19)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD0568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 20)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD0790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 21)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD09B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 22)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD0BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 23)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 24)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD1030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 25)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD1258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 26)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD1480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 27)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD16A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 28)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD18D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 29)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD1AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 30)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 31)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD1F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 32)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 33)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD2398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 34)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD25C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CFE0, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD27C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 35)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD29F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 36)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD2C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 37)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD2E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 38)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD3068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 39)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD3290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 40)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD34B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 41)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD36E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 42)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD3908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 43)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD3B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 44)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD3D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 45)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD3F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 46)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD41A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 47)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD43D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 48)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD45F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 49)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD4820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA63CF8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD4A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 50)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD4C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 51)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD4E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 52)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD50A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 53)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD52C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 54)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD54F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 55)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD5718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA63D18, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD5920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA61020, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD5B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 56)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD5D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 57)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD5F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA63D28, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA63D08, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD6388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA61030, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD6590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 58)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD67B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 59)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD69E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 60)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD6C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6A460, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 61)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD7038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA61040, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD7240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 62)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD7468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 63)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD7690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 64)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD78B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312948, &qword_1C9068D28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 65)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD7D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D488, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD7DF0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63CE8, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD7E60(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63CE8, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FD7EE0()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000015, 0x80000001C90CE3F0);
  qword_1EC31B7E8 = 0xD00000000000001ALL;
  unk_1EC31B7F0 = 0x80000001C90CD630;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C906391C();
    }
  }

  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (*v0 != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v1))
  {
    type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
    return OUTLINED_FUNCTION_13_23();
  }

  return result;
}

uint64_t sub_1C8FD8108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D480, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD8188(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CFC8, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD81F8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CFC8, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FD83B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D478, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD8430(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CFE0, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD84A0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CFE0, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FD8520()
{
  result = MEMORY[0x1CCA81A90](0xD00000000000001DLL, 0x80000001C90CE3C0);
  qword_1EC31B838 = 0xD00000000000001ALL;
  unk_1EC31B840 = 0x80000001C90CD630;
  return result;
}

uint64_t sub_1C8FD869C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D470, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD871C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63CF8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD878C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63CF8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FD8948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D468, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD89C8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63D18, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD8A38(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63D18, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FD8AB8()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CE3A0);
  qword_1EC31B888 = 0xD00000000000001ALL;
  unk_1EC31B890 = 0x80000001C90CD630;
  return result;
}

uint64_t sub_1C8FD8B50()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B898);
  __swift_project_value_buffer(v0, qword_1EC31B898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityProperty";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FD8DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D460, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD8E68(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA61020, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD8ED8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA61020, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FD8FFC()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t sub_1C8FD90E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D458, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD9168(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63D28, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD91D8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63D28, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FD9258()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CE360);
  qword_1EC31B8D8 = 0xD00000000000001ALL;
  unk_1EC31B8E0 = 0x80000001C90CD630;
  return result;
}

uint64_t sub_1C8FD92EC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B8E8);
  __swift_project_value_buffer(v0, qword_1EC31B8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "noSideEffect";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stateChange";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoSystemToolProtocol.IntentSideEffect.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8FD9744(v3, v4, v5, v6);
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8FD95A8();
    }
  }
}

void sub_1C8FD95A8()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  OUTLINED_FUNCTION_223();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3191B0, &qword_1C909DFA0);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  sub_1C906373C();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_353_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_32_20();
  v14 = sub_1C8CD1B00(v12, v13, MEMORY[0x1E69AA8E0]);
  OUTLINED_FUNCTION_171_6(v14);
  if (v1 || (OUTLINED_FUNCTION_170_7(), sub_1C8D63FCC(), v15 = OUTLINED_FUNCTION_125_7(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v17), OUTLINED_FUNCTION_150_1(), sub_1C8D16D78(v19, v20, v21), EnumTagSinglePayload == 1))
  {
    sub_1C8D16D78(v2, &qword_1EC3191B0, &qword_1C909DFA0);
  }

  else
  {
    if ((*(v0 + 5) & 1) == 0)
    {
      OUTLINED_FUNCTION_203();
      sub_1C90638EC();
    }

    sub_1C8D16D78(v2, &qword_1EC3191B0, &qword_1C909DFA0);
    *v0 = v4;
    *(v0 + 4) = BYTE4(v4);
    *(v0 + 5) = 0;
  }

  OUTLINED_FUNCTION_372_0();
  OUTLINED_FUNCTION_198();
}

void ToolKitProtoSystemToolProtocol.IntentSideEffect.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  if (*(v0 + 5))
  {
    goto LABEL_8;
  }

  v2 = OUTLINED_FUNCTION_3_4();
  v8 = v7 | (v6 << 32);
  if ((v8 & 0x100000000) != 0)
  {
    if (v8)
    {
      sub_1C8FD99AC(v2, v3, v4, v5);
    }

    else
    {
      sub_1C8FD984C(v2, v3, v4, v5);
    }
  }

  else
  {
    sub_1C8FD9B0C(v2);
  }

  if (!v1)
  {
LABEL_8:
    type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
    OUTLINED_FUNCTION_52_17();
  }
}

void sub_1C8FD984C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C906373C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) != 0 || (v9 = *a1, ((v9 | (*(a1 + 4) << 32)) & 0x100000000) == 0) || v9)
  {
    __break(1u);
  }

  else
  {
    sub_1C906372C();
    sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    sub_1C9063B1C();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1C8FD99AC(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C906373C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) == 0 && (v9 = *a1, ((v9 | (*(a1 + 4) << 32)) & 0x100000000) != 0) && v9)
  {
    sub_1C906372C();
    sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    sub_1C9063B1C();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1C8FD9B0C(unint64_t result)
{
  if ((*(result + 5) & 1) == 0)
  {
    result = *result | (*(result + 4) << 32);
    if ((result & 0x100000000) == 0)
    {
      return sub_1C9063B4C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FD9BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D450, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD9C58(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63D08, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD9CC8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63D08, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FD9D48()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CE320);
  qword_1EC31B900 = 0xD00000000000001ALL;
  *algn_1EC31B908 = 0x80000001C90CD630;
  return result;
}

uint64_t sub_1C8FD9EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D448, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FD9F64(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA61030, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FD9FD4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA61030, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_1C9063ABC();
}

void sub_1C8FDA07C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FDA1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D440, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FDA250(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA6A460, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FDA2C0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA6A460, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FDA340()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000018, 0x80000001C90CE2F0);
  qword_1EC31B950 = 0xD00000000000001ALL;
  *algn_1EC31B958 = 0x80000001C90CD630;
  return result;
}

uint64_t sub_1C8FDA428()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C90639CC();
    }
  }

  return result;
}

void sub_1C8FDA4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_340_2();
  v7 = v6;
  OUTLINED_FUNCTION_4_36();
  if (!*(*v4 + 16) || (OUTLINED_FUNCTION_17_25(), sub_1C9063B6C(), !v5))
  {
    v7(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FDA580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D438, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FDA600(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA61040, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FDA670(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA61040, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FDA7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D430, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FDA834(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D038, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FDA8A4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D038, type metadata accessor for ToolKitProtoToolDefinition, &protocol conformance descriptor for ToolKitProtoToolDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FDA920()
{
  result = MEMORY[0x1CCA81A90](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_1EC31B990 = 0xD000000000000016;
  *algn_1EC31B998 = 0x80000001C90CD650;
  return result;
}

uint64_t sub_1C8FDA9B0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B9A0);
  __swift_project_value_buffer(v0, qword_1EC31B9A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1C90ABF50;
  v4 = v60 + v3 + v1[14];
  *(v60 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v60 + v3 + v2 + v1[14];
  *(v60 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v60 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "toolType";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v60 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "parameters";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v60 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "outputType";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v60 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "outputResultName";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v60 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "sourceApplication";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v60 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "descriptionSummary";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v60 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "categories";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  v23 = (v60 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "searchKeywords";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v60 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "deprecationDefinition";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v7();
  v27 = (v60 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "requirements";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v7();
  v29 = (v60 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "flags";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v60 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "authenticationPolicy";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v7();
  v33 = (v60 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "sampleInvocations";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v7();
  v35 = (v60 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "systemProtocols";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v7();
  v37 = (v60 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "customIcon";
  *(v38 + 1) = 10;
  v38[16] = 2;
  v7();
  v39 = (v60 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "hiddenParameters";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v7();
  v41 = (v60 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "sourceContainer";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v60 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "attributionContainer";
  *(v44 + 1) = 20;
  v44[16] = 2;
  v7();
  v45 = (v60 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "visibilityFlags";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v60 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "descriptionAttribution";
  *(v48 + 1) = 22;
  v48[16] = 2;
  v7();
  v49 = (v60 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "descriptionResult";
  *(v50 + 1) = 17;
  v50[16] = 2;
  v7();
  v51 = (v60 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "descriptionNote";
  *(v52 + 1) = 15;
  v52[16] = 2;
  v7();
  v53 = (v60 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "descriptionRequires";
  *(v54 + 1) = 19;
  v54[16] = 2;
  v7();
  v55 = (v60 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "backingLinkActionIdentifiers";
  *(v56 + 1) = 28;
  v56[16] = 2;
  v7();
  v57 = (v60 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "additionalAttributionContainers";
  *(v58 + 1) = 31;
  v58[16] = 2;
  v7();
  return sub_1C9063BEC();
}

void ToolKitProtoToolDefinition.Version1.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A0C();
        break;
      case 3:
        v27 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB3D8(v27, v28, v29, v30);
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FDB440();
        break;
      case 5:
        v15 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB48C(v15, v16, v17, v18);
        break;
      case 6:
        v47 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB540(v47, v48, v49, v50);
        break;
      case 7:
        v59 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB5A4(v59, v60, v61, v62);
        break;
      case 8:
        v35 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB658(v35, v36, v37, v38);
        break;
      case 9:
        v71 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB6BC(v71, v72, v73, v74);
        break;
      case 10:
      case 26:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
      case 11:
        v67 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB75C(v67, v68, v69, v70);
        break;
      case 12:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB810(v11, v12, v13, v14);
        break;
      case 13:
        v19 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB8B0(v19, v20, v21, v22);
        break;
      case 14:
        v55 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB918(v55, v56, v57, v58);
        break;
      case 15:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDB980(v7, v8, v9, v10);
        break;
      case 16:
        v31 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBA20(v31, v32, v33, v34);
        break;
      case 17:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBAC0(v3, v4, v5, v6);
        break;
      case 18:
        v39 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBB74(v39, v40, v41, v42);
        break;
      case 19:
        v63 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBC14(v63, v64, v65, v66);
        break;
      case 20:
        v79 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBCC8(v79, v80, v81, v82);
        break;
      case 21:
        v43 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBD7C(v43, v44, v45, v46);
        break;
      case 22:
        v51 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBDE4(v51, v52, v53, v54);
        break;
      case 23:
        v75 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBE48(v75, v76, v77, v78);
        break;
      case 24:
        v83 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBEAC(v83, v84, v85, v86);
        break;
      case 25:
        v23 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBF10(v23, v24, v25, v26);
        break;
      case 27:
        v87 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDBF74(v87, v88, v89, v90);
        break;
      default:
        continue;
    }
  }
}

void sub_1C8FDB440()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A3C();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8FDB48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FDB5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_1C8CD1B00(qword_1EDA65300, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FDB6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
  sub_1C8CD1B00(&qword_1EDA63C70, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);
  return sub_1C9063A3C();
}

uint64_t sub_1C8FDB75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  sub_1C8CD1B00(&qword_1EDA61008, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FDB810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement(0);
  sub_1C8CD1B00(qword_1EDA6C268, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
  return sub_1C9063A3C();
}

uint64_t sub_1C8FDB980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  sub_1C8CD1B00(qword_1EDA61050, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
  return sub_1C9063A3C();
}

uint64_t sub_1C8FDBA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoSystemToolProtocol(0);
  sub_1C8CD1B00(&qword_1EDA63CE8, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);
  return sub_1C9063A3C();
}

uint64_t sub_1C8FDBAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  sub_1C8CD1B00(&qword_1EDA61010, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FDBB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_1C8CD1B00(&qword_1EDA63B58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
  return sub_1C9063A3C();
}

uint64_t sub_1C8FDBC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_1C8CD1B00(&qword_1EDA64508, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FDBCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_1C8CD1B00(&qword_1EDA64508, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FDBF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_1C8CD1B00(&qword_1EDA64508, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  return sub_1C9063A3C();
}

void ToolKitProtoToolDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_1_6();
  if (!v23 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v21))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v27 || (OUTLINED_FUNCTION_10_33(), v24 = sub_1C9063B8C(), !v21))
    {
      if (!*(v22 + 32) || (sub_1C8DC0818(v24, v25, v26), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v21))
      {
        OUTLINED_FUNCTION_366_1();
        if (!v28 || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0), OUTLINED_FUNCTION_74_5(), sub_1C8CD1B00(v29, v30, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter), OUTLINED_FUNCTION_227_0(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v21))
        {
          v31 = OUTLINED_FUNCTION_2_55();
          sub_1C8FDC4F8(v31, v32, v33, v34);
          if (!v21)
          {
            v35 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDC6CC(v35);
            v36 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDC744(v36, v37, v38, v39);
            v40 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDC918(v40);
            if (*(*(v22 + 48) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
              sub_1C8CD1B00(&qword_1EDA63C70, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);
              OUTLINED_FUNCTION_227_0();
              OUTLINED_FUNCTION_29_23();
              sub_1C9063BBC();
            }

            if (*(*(v22 + 56) + 16))
            {
              OUTLINED_FUNCTION_17_25();
              sub_1C9063B6C();
            }

            v41 = OUTLINED_FUNCTION_2_55();
            v45 = sub_1C8FDC990(v41, v42, v43, v44);
            if (*(*(v22 + 64) + 16))
            {
              type metadata accessor for ToolKitProtoRuntimeRequirement(0);
              OUTLINED_FUNCTION_71_9();
              sub_1C8CD1B00(v48, v49, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);
              OUTLINED_FUNCTION_227_0();
              OUTLINED_FUNCTION_29_23();
              v45 = sub_1C9063BBC();
            }

            if (*(*(v22 + 72) + 16))
            {
              sub_1C8DC07C4(v45, v46, v47);
              OUTLINED_FUNCTION_29_23();
              v45 = sub_1C9063AEC();
            }

            if (*(v22 + 80))
            {
              sub_1C8DC071C(v45, v46, v47);
              OUTLINED_FUNCTION_29_23();
              sub_1C9063B1C();
            }

            if (*(*(v22 + 88) + 16))
            {
              type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
              OUTLINED_FUNCTION_47_18();
              sub_1C8CD1B00(v50, v51, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
              OUTLINED_FUNCTION_227_0();
              OUTLINED_FUNCTION_29_23();
              sub_1C9063BBC();
            }

            if (*(*(v22 + 96) + 16))
            {
              type metadata accessor for ToolKitProtoSystemToolProtocol(0);
              sub_1C8CD1B00(&qword_1EDA63CE8, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);
              OUTLINED_FUNCTION_227_0();
              OUTLINED_FUNCTION_29_23();
              sub_1C9063BBC();
            }

            v52 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDCB64(v52, v53, v54, v55);
            if (*(*(v22 + 104) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
              OUTLINED_FUNCTION_74_5();
              sub_1C8CD1B00(v56, v57, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
              OUTLINED_FUNCTION_227_0();
              OUTLINED_FUNCTION_29_23();
              sub_1C9063BBC();
            }

            v58 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDCD38(v58, v59, v60, v61);
            v62 = OUTLINED_FUNCTION_2_55();
            v66 = sub_1C8FDCF0C(v62, v63, v64, v65);
            if (*(*(v22 + 112) + 16))
            {
              sub_1C8DC0770(v66, v67, v68);
              OUTLINED_FUNCTION_29_23();
              sub_1C9063AEC();
            }

            v69 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDD0E0(v69);
            v70 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDD158(v70);
            v71 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDD1D0(v71);
            v72 = OUTLINED_FUNCTION_2_55();
            sub_1C8FDD248(v72);
            if (*(*(v22 + 120) + 16))
            {
              OUTLINED_FUNCTION_17_25();
              sub_1C9063B6C();
            }

            if (*(*(v22 + 128) + 16))
            {
              type metadata accessor for ToolKitProtoContainerDefinition(0);
              sub_1C8CD1B00(&qword_1EDA64508, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
              OUTLINED_FUNCTION_227_0();
              OUTLINED_FUNCTION_29_23();
              sub_1C9063BBC();
            }

            type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
            OUTLINED_FUNCTION_13_23();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FDC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_1C8FDC6CC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 80) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FDC744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C0, &qword_1C9074E98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoAppDefinition(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3147C0, &qword_1C9074E98);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA65300, type metadata accessor for ToolKitProtoAppDefinition, &protocol conformance descriptor for ToolKitProtoAppDefinition);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAppDefinition);
}

uint64_t sub_1C8FDC918(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 88) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FDC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3147C8, &qword_1C9074EA0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA61008, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
}

uint64_t sub_1C8FDCB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3147D0, &qword_1C9074EA8);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA61010, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
}

uint64_t sub_1C8FDCD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314718, &qword_1C9074DA8);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA64508, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_1C8FDCF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314718, &qword_1C9074DA8);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA64508, type metadata accessor for ToolKitProtoContainerDefinition, &protocol conformance descriptor for ToolKitProtoContainerDefinition);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_1C8FDD0E0(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 108) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FDD158(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 112) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FDD1D0(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 116) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FDD248(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  if (*(a1 + *(result + 120) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

void static ToolKitProtoToolDefinition.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_41_15();
  v159 = type metadata accessor for ToolKitProtoContainerDefinition(v8);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  v155 = v12 - v13;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_147();
  v156 = v15;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C100, &qword_1C90ABF60);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v157 = v17 - v18;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_147();
  v160 = v20;
  v21 = OUTLINED_FUNCTION_111();
  v163 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(v21);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
  OUTLINED_FUNCTION_9(v23);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_97();
  v162 = v25;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C668, &qword_1C90AC0B8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_97();
  v164 = v27;
  v28 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(v28);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
  OUTLINED_FUNCTION_9(v30);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_314_2(v32);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C670, &qword_1C90AC0C0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_104_7(v34, v150);
  type metadata accessor for ToolKitProtoAppDefinition(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C0, &qword_1C9074E98);
  OUTLINED_FUNCTION_9(v36);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_120_7(v38, v151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C678, &qword_1C90AC0C8);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_35();
  type metadata accessor for ToolKitProtoTypeInstance(v40);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_51_15();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v42);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_142();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_110();
  v46 = *v2 == *v7 && *(v2 + 8) == *(v7 + 8);
  if (!v46 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_23;
  }

  v47 = *(v2 + 16) == *(v7 + 16) && *(v2 + 24) == *(v7 + 24);
  if (!v47 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(v2 + 32) != *(v7 + 32))
  {
    goto LABEL_23;
  }

  sub_1C8CED650(*(v2 + 40), *(v7 + 40));
  if ((v48 & 1) == 0)
  {
    goto LABEL_23;
  }

  v154 = v7;
  v152 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v49 = v2;
  v50 = *(v44 + 48);
  v153 = v49;
  OUTLINED_FUNCTION_365_1();
  OUTLINED_FUNCTION_365_1();
  OUTLINED_FUNCTION_54_15(v5);
  if (v46)
  {
    OUTLINED_FUNCTION_54_15(v5 + v50);
    if (v46)
    {
      sub_1C8D16D78(v5, &qword_1EC312A58, &unk_1C9074CC0);
      goto LABEL_26;
    }

LABEL_21:
    v53 = &qword_1EC312A60;
    v54 = &unk_1C9068E40;
    v55 = v5;
LABEL_22:
    sub_1C8D16D78(v55, v53, v54);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_206_0();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v5 + v50);
  if (v51)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v0, v52);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_236_3();
  sub_1C900BE74();
  v57 = static ToolKitProtoTypeInstance.== infix(_:_:)(v0, v4);
  v58 = OUTLINED_FUNCTION_306_2();
  sub_1C8CD20B4(v58, v59);
  v60 = OUTLINED_FUNCTION_94();
  sub_1C8CD20B4(v60, v61);
  sub_1C8D16D78(v5, &qword_1EC312A58, &unk_1C9074CC0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  OUTLINED_FUNCTION_200_5();
  if (v64)
  {
    if (!v62)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_105_5(v63);
    v67 = v46 && v65 == v66;
    if (!v67 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v62)
  {
    goto LABEL_23;
  }

  v68 = *(v152 + 84);
  v69 = *(v3 + 48);
  OUTLINED_FUNCTION_212_4(v153 + v68);
  OUTLINED_FUNCTION_218_1(v154 + v68);
  v70 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_65_13(v70, v71);
  if (v46)
  {
    OUTLINED_FUNCTION_34_17(v1 + v69);
    if (v46)
    {
      sub_1C8D16D78(v1, &qword_1EC3147C0, &qword_1C9074E98);
      goto LABEL_46;
    }

LABEL_43:
    v53 = &qword_1EC31C678;
    v54 = &qword_1C90AC0C8;
LABEL_44:
    v55 = v1;
    goto LABEL_22;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v1 + v69);
  if (v72)
  {
    OUTLINED_FUNCTION_313_2();
    goto LABEL_43;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_100();
  static ToolKitProtoAppDefinition.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v73 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v73, v74);
  sub_1C8D16D78(v1, &qword_1EC3147C0, &qword_1C9074E98);
  if ((&qword_1C9074E98 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_46:
  OUTLINED_FUNCTION_200_5();
  if (v77)
  {
    if (!v75)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_105_5(v76);
    v80 = v46 && v78 == v79;
    if (!v80 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v75)
  {
    goto LABEL_23;
  }

  sub_1C8CED6A4();
  if ((v81 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1C8CEB10C(*(v153 + 56), *(v154 + 56));
  if ((v82 & 1) == 0)
  {
    goto LABEL_23;
  }

  v83 = *(v152 + 92);
  v84 = *(v165 + 48);
  v1 = v166;
  OUTLINED_FUNCTION_212_4(v153 + v83);
  OUTLINED_FUNCTION_218_1(v154 + v83);
  v85 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_65_13(v85, v86);
  if (v46)
  {
    OUTLINED_FUNCTION_34_17(v166 + v84);
    if (v46)
    {
      sub_1C8D16D78(v166, &qword_1EC3147C8, &qword_1C9074EA0);
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v166 + v84);
  if (v87)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_65:
    v53 = &qword_1EC31C670;
    v54 = &qword_1C90AC0C0;
    goto LABEL_44;
  }

  sub_1C900BE74();
  v88 = OUTLINED_FUNCTION_100();
  static ToolKitProtoToolDefinition.Version1.Deprecation.== infix(_:_:)(v88);
  OUTLINED_FUNCTION_163_7();
  v89 = OUTLINED_FUNCTION_93();
  sub_1C8CD20B4(v89, v90);
  sub_1C8D16D78(v166, &qword_1EC3147C8, &qword_1C9074EA0);
  if ((&qword_1C9074EA0 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_67:
  sub_1C8CED86C();
  if ((v91 & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((sub_1C8CEDBCC(*(v153 + 72), *(v154 + 72)) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(v153 + 80) != *(v154 + 80))
  {
    goto LABEL_23;
  }

  sub_1C8CEDC30();
  if ((v92 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1C8CEDF1C();
  if ((v93 & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_293_2();
  v95 = *(v94 + 96);
  v96 = *(v161 + 48);
  OUTLINED_FUNCTION_212_4(v153 + v95);
  OUTLINED_FUNCTION_218_1(v154 + v95);
  v97 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v97, v98, v163);
  if (v46)
  {
    OUTLINED_FUNCTION_108_2(v164 + v96, 1, v163);
    if (v46)
    {
      sub_1C8D16D78(v164, &qword_1EC3147D0, &qword_1C9074EA8);
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_108_2(v164 + v96, 1, v163);
  if (v99)
  {
    sub_1C8CD20B4(v162, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
LABEL_80:
    v53 = &qword_1EC31C668;
    v54 = &qword_1C90AC0B8;
    v55 = v164;
    goto LABEL_22;
  }

  sub_1C900BE74();
  v100 = OUTLINED_FUNCTION_212();
  static ToolKitProtoToolDefinition.Version1.ToolIcon.== infix(_:_:)(v100);
  OUTLINED_FUNCTION_163_7();
  v101 = OUTLINED_FUNCTION_148();
  sub_1C8CD20B4(v101, v102);
  sub_1C8D16D78(v164, &qword_1EC3147D0, &qword_1C9074EA8);
  if ((&qword_1C9074EA8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_82:
  sub_1C8CED650(*(v153 + 104), *(v154 + 104));
  if ((v103 & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_293_2();
  v105 = *(v104 + 100);
  v106 = *(v158 + 48);
  OUTLINED_FUNCTION_212_4(v153 + v105);
  OUTLINED_FUNCTION_218_1(v154 + v105);
  v107 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v107, v108, v159);
  if (v46)
  {
    OUTLINED_FUNCTION_108_2(v160 + v106, 1, v159);
    if (v46)
    {
      sub_1C8D16D78(v160, &qword_1EC314718, &qword_1C9074DA8);
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_108_2(v160 + v106, 1, v159);
  if (v109)
  {
    OUTLINED_FUNCTION_119_9();
    sub_1C8CD20B4(v156, v110);
LABEL_91:
    v53 = &qword_1EC31C100;
    v54 = &qword_1C90ABF60;
    v55 = v160;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_77_8();
  sub_1C900BE74();
  OUTLINED_FUNCTION_212();
  static ToolKitProtoContainerDefinition.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v111 = OUTLINED_FUNCTION_148();
  sub_1C8CD20B4(v111, v112);
  sub_1C8D16D78(v160, &qword_1EC314718, &qword_1C9074DA8);
  if ((&qword_1C9074DA8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_93:
  OUTLINED_FUNCTION_293_2();
  v114 = *(v113 + 104);
  v115 = *(v158 + 48);
  OUTLINED_FUNCTION_212_4(v153 + v114);
  OUTLINED_FUNCTION_218_1(v154 + v114);
  v116 = OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_108_2(v116, v117, v159);
  if (v46)
  {
    OUTLINED_FUNCTION_108_2(v157 + v115, 1, v159);
    if (v46)
    {
      sub_1C8D16D78(v157, &qword_1EC314718, &qword_1C9074DA8);
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_108_2(v157 + v115, 1, v159);
  if (v118)
  {
    OUTLINED_FUNCTION_119_9();
    sub_1C8CD20B4(v155, v119);
LABEL_101:
    v53 = &qword_1EC31C100;
    v54 = &qword_1C90ABF60;
    v55 = v157;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_77_8();
  sub_1C900BE74();
  OUTLINED_FUNCTION_212();
  static ToolKitProtoContainerDefinition.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  v120 = OUTLINED_FUNCTION_148();
  sub_1C8CD20B4(v120, v121);
  sub_1C8D16D78(v157, &qword_1EC314718, &qword_1C9074DA8);
  if ((&qword_1C9074DA8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_103:
  if (sub_1C8D076F4(*(v153 + 112), *(v154 + 112)))
  {
    OUTLINED_FUNCTION_293_2();
    OUTLINED_FUNCTION_130_7();
    if (v124)
    {
      if (!v122)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_105_5(v123);
      v127 = v46 && v125 == v126;
      if (!v127 && (sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v122)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_293_2();
    OUTLINED_FUNCTION_130_7();
    if (v130)
    {
      if (!v128)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_105_5(v129);
      v133 = v46 && v131 == v132;
      if (!v133 && (sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v128)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_293_2();
    OUTLINED_FUNCTION_130_7();
    if (v136)
    {
      if (!v134)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_105_5(v135);
      v139 = v46 && v137 == v138;
      if (!v139 && (sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v134)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_293_2();
    OUTLINED_FUNCTION_130_7();
    if (v142)
    {
      if (!v140)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_105_5(v141);
      v145 = v46 && v143 == v144;
      if (!v145 && (sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v140)
    {
      goto LABEL_23;
    }

    sub_1C8CEB10C(*(v153 + 120), *(v154 + 120));
    if (v146)
    {
      sub_1C8CEE27C(*(v153 + 128), *(v154 + 128));
      if (v147)
      {
        OUTLINED_FUNCTION_293_2();
        sub_1C90637EC();
        OUTLINED_FUNCTION_1_76();
        sub_1C8CD1B00(v148, v149, MEMORY[0x1E69AAC10]);
        v56 = sub_1C9063EAC();
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  v56 = 0;
LABEL_24:
  OUTLINED_FUNCTION_50_0(v56);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FDE12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D428, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FDE1AC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA60EE0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FDE21C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA60EE0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FDE29C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B9B8);
  __swift_project_value_buffer(v0, qword_1EC31B9B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ToolTypeUnspecified";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolTypeAppIntent";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ToolTypeSiriIntent";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ToolTypeAction";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ToolTypeFlowTool";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FDE564()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B9D0);
  __swift_project_value_buffer(v0, qword_1EC31B9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C460;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FlagUnspecified";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FlagOpensAppWhenRun";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FlagIsDiscontinued";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "FlagIsUndiscoverable";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "FlagDoesNotImplementPerform";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "FlagShowsOpenWhenRun";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "FlagOutputHasSnippet";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "FlagOutputProvidesDialog";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 128;
  *v24 = "FlagIsHomeResidentCompatible";
  *(v24 + 1) = 28;
  v24[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FDE924()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B9E8);
  __swift_project_value_buffer(v0, qword_1EC31B9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VisibilityFlagUnspecified";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibilityFlagVisibleForShortcuts";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VisibilityFlagVisibleForAssistant";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "VisibilityFlagApproved";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FDEBA8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BA00);
  __swift_project_value_buffer(v0, qword_1EC31BA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AuthenticationPolicyUnspecified";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AuthenticationPolicyNone";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AuthenticationPolicyRequiresAuthenticationOnOrigin";
  *(v12 + 1) = 50;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AuthenticationPolicyRequiresAuthenticationOnOriginAndRemote";
  *(v14 + 1) = 59;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FDEE30()
{
  if (qword_1EC311DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B990;
  v2 = *algn_1EC31B998;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x74656D617261502ELL, 0xEA00000000007265);

  qword_1EC31BA18 = v1;
  unk_1EC31BA20 = v2;
  return result;
}

uint64_t sub_1C8FDEEF8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BA28);
  __swift_project_value_buffer(v0, qword_1EC31BA28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C909C460;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "key";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "valueType";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "relationships";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "sampleInvocations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "flags";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "parentToolMetadata";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "BOOLeanMetadata";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_1C9063BEC();
}

void ToolKitProtoToolDefinition.Version1.Parameter.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A0C();
        break;
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDF424(v3, v4, v5, v6);
        break;
      case 5:
        OUTLINED_FUNCTION_17_34();
        sub_1C8FF9044();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FDB440();
        break;
      case 7:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDF4D8(v11, v12, v13, v14);
        break;
      case 8:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDF540(v7, v8, v9, v10);
        break;
      case 9:
        v15 = OUTLINED_FUNCTION_5_39();
        sub_1C8FDF5F4(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FDF424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FDF540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
  sub_1C8CD1B00(&qword_1EDA60FB8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FDF5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
  sub_1C8CD1B00(&qword_1EC31D0D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata);
  return sub_1C9063A4C();
}

void ToolKitProtoToolDefinition.Version1.Parameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_1_6();
  if (!v5 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v3))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v6 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v3))
    {
      v7 = OUTLINED_FUNCTION_2_55();
      sub_1C8CE3964(v7);
      if (!v3)
      {
        v8 = OUTLINED_FUNCTION_2_55();
        sub_1C8FDF858(v8, v9, v10, v11);
        if (*(*(v4 + 32) + 16))
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_1C8CD1B00(&qword_1EDA60F88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          OUTLINED_FUNCTION_227_0();
          OUTLINED_FUNCTION_29_23();
          sub_1C9063BBC();
        }

        OUTLINED_FUNCTION_366_1();
        if (v15)
        {
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          OUTLINED_FUNCTION_47_18();
          sub_1C8CD1B00(v16, v17, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
          OUTLINED_FUNCTION_227_0();
          OUTLINED_FUNCTION_29_23();
          v12 = sub_1C9063BBC();
        }

        if (*(*(v4 + 48) + 16))
        {
          sub_1C8DC06C8(v12, v13, v14);
          OUTLINED_FUNCTION_29_23();
          sub_1C9063AEC();
        }

        v18 = OUTLINED_FUNCTION_2_55();
        sub_1C8FDFA2C(v18, v19, v20, v21);
        v22 = OUTLINED_FUNCTION_2_55();
        sub_1C8FDFC00(v22, v23, v24, v25);
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
        OUTLINED_FUNCTION_13_23();
      }
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FDF858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_1C8FDFA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3147D8, &qword_1C9074EB0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA60FB8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata);
}

uint64_t sub_1C8FDFC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC3147E0, &qword_1C9074EB8);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31D0D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata);
}

void static ToolKitProtoToolDefinition.Version1.Parameter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v8 = OUTLINED_FUNCTION_55_3();
  v86 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(v8);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C688, &qword_1C90AC0D0);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_51();
  v89 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_134_3(v17);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C690, &qword_1C90AC0D8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v90 = v19;
  v20 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoTypeInstance(v20);
  OUTLINED_FUNCTION_44_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v25);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15_0();
  v28 = *v2 == *v0 && v2[1] == v0[1];
  if (!v28 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_75;
  }

  v29 = v2[2] == v0[2] && v2[3] == v0[3];
  if (!v29 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_75;
  }

  v30 = v2[8];
  v31 = v0[8];
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_75;
    }

    v32 = v2[7] == v0[7] && v30 == v31;
    if (!v32 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  else if (v31)
  {
    goto LABEL_75;
  }

  v82 = v4;
  v83 = v1;
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  v33 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_108_2(v33, v34, v6);
  if (v28)
  {
    OUTLINED_FUNCTION_185_6();
    OUTLINED_FUNCTION_108_2(v35, v36, v37);
    if (v28)
    {
      sub_1C8D16D78(v5, &qword_1EC312A58, &unk_1C9074CC0);
      goto LABEL_32;
    }

LABEL_28:
    v43 = &qword_1EC312A60;
    v44 = &unk_1C9068E40;
LABEL_29:
    v45 = v5;
LABEL_30:
    sub_1C8D16D78(v45, v43, v44);
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_114_0();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_185_6();
  OUTLINED_FUNCTION_108_2(v38, v39, v40);
  if (v41)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v7, v42);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_234_3();
  sub_1C900BE74();
  v46 = static ToolKitProtoTypeInstance.== infix(_:_:)(v7, v24);
  v47 = OUTLINED_FUNCTION_278();
  sub_1C8CD20B4(v47, v48);
  sub_1C8CD20B4(v7, &unk_1C9074CC0);
  sub_1C8D16D78(v5, &qword_1EC312A58, &unk_1C9074CC0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_32:
  sub_1C8CEE2D0();
  if ((v49 & 1) == 0)
  {
    goto LABEL_75;
  }

  sub_1C8CEDC30();
  if ((v50 & 1) == 0 || (sub_1C8CEE988(v2[6], v0[6]) & 1) == 0)
  {
    goto LABEL_75;
  }

  v51 = *(v88 + 48);
  v5 = v90;
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  v52 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_108_2(v52, v53, v89);
  if (v28)
  {
    OUTLINED_FUNCTION_92_0(v90 + v51);
    if (v28)
    {
      sub_1C8D16D78(v90, &qword_1EC3147D8, &qword_1C9074EB0);
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_92_0(v90 + v51);
  if (v57)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_48:
    v43 = &qword_1EC31C690;
    v44 = &qword_1C90AC0D8;
    goto LABEL_29;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_336_2();
  if (v58)
  {
    v61 = v59 == v60;
  }

  else
  {
    v61 = 0;
  }

  if (!v61 && (sub_1C9064C2C() & 1) == 0 || (sub_1C8CEB10C(*(v87 + 16), *(v84 + 16)), (v62 & 1) == 0))
  {
    sub_1C8CD20B4(v84, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata);
    OUTLINED_FUNCTION_335_1();
    v43 = &qword_1EC3147D8;
    v44 = &qword_1C9074EB0;
    goto LABEL_29;
  }

  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v63, v64, MEMORY[0x1E69AAC10]);
  v65 = sub_1C9063EAC();
  sub_1C8CD20B4(v84, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata);
  v66 = OUTLINED_FUNCTION_278();
  sub_1C8CD20B4(v66, v67);
  sub_1C8D16D78(v90, &qword_1EC3147D8, &qword_1C9074EB0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_40:
  v54 = *(v85 + 48);
  OUTLINED_FUNCTION_365_1();
  sub_1C8D63FCC();
  v55 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_108_2(v55, v56, v86);
  if (!v28)
  {
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_133_4(v83 + v54);
    if (!v68)
    {
      sub_1C900BE74();
      v69 = *v82 == *v3 && v82[1] == v3[1];
      if (v69 || (sub_1C9064C2C() & 1) != 0)
      {
        v70 = v82[2] == v3[2] && v82[3] == v3[3];
        if (v70 || (sub_1C9064C2C() & 1) != 0)
        {
          sub_1C90637EC();
          OUTLINED_FUNCTION_1_76();
          sub_1C8CD1B00(v71, v72, MEMORY[0x1E69AAC10]);
          v73 = sub_1C9063EAC();
          sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata);
          v74 = OUTLINED_FUNCTION_49();
          sub_1C8CD20B4(v74, v75);
          sub_1C8D16D78(v83, &qword_1EC3147E0, &qword_1C9074EB8);
          if (v73)
          {
            goto LABEL_74;
          }

LABEL_75:
          v79 = 0;
          goto LABEL_76;
        }
      }

      sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata);
      v80 = OUTLINED_FUNCTION_148();
      sub_1C8CD20B4(v80, v81);
      v43 = &qword_1EC3147E0;
      v44 = &qword_1C9074EB8;
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_292_2();
LABEL_61:
    v43 = &qword_1EC31C688;
    v44 = &qword_1C90AC0D0;
LABEL_62:
    v45 = v83;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_133_4(v83 + v54);
  if (!v28)
  {
    goto LABEL_61;
  }

  sub_1C8D16D78(v83, &qword_1EC3147E0, &qword_1C9074EB8);
LABEL_74:
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  v78 = sub_1C8CD1B00(v76, v77, MEMORY[0x1E69AAC10]);
  v79 = OUTLINED_FUNCTION_265_2(v78);
LABEL_76:
  OUTLINED_FUNCTION_50_0(v79);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FE06FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D420, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE077C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63B58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE07EC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63B58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE086C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BA40);
  __swift_project_value_buffer(v0, qword_1EC31BA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ParameterFlagsUnspecified";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ParameterFlagsHidden";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ParameterFlagsSynthesized";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FE0AB8()
{
  if (qword_1EC311E18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA18;
  v2 = unk_1EC31BA20;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6F6974616C65522ELL, 0xED0000706968736ELL);

  qword_1EC31BA58 = v1;
  unk_1EC31BA60 = v2;
  return result;
}

uint64_t sub_1C8FE0B88()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BA68);
  __swift_project_value_buffer(v0, qword_1EC31BA68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relation";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FE0DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  sub_1C8CD1B00(&qword_1EDA63B68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FE0EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312938, &unk_1C9074EC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC312938, &unk_1C9074EC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA63B68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
}

void static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(v1);
  OUTLINED_FUNCTION_39_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_23();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312938, &unk_1C9074EC0);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312940, &qword_1C9068D20);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41_19();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  OUTLINED_FUNCTION_155_4(v9);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v8)
  {
    OUTLINED_FUNCTION_24_28();
    if (v8)
    {
      sub_1C8D16D78(v0, &qword_1EC312938, &unk_1C9074EC0);
LABEL_17:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      v20 = sub_1C8CD1B00(v18, v19, MEMORY[0x1E69AAC10]);
      v11 = OUTLINED_FUNCTION_12_28(v20);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v10)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_14:
    sub_1C8D16D78(v0, &qword_1EC312940, &qword_1C9068D20);
    goto LABEL_15;
  }

  sub_1C900BE74();
  v12 = OUTLINED_FUNCTION_398();
  v13 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(v12);
  v14 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v14, v15);
  v16 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v16, v17);
  sub_1C8D16D78(v0, &qword_1EC312938, &unk_1C9074EC0);
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = 0;
LABEL_18:
  OUTLINED_FUNCTION_50_0(v11);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FE1324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D418, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE13A4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA60F88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE1414(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA60F88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE1494()
{
  if (qword_1EC311E30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA58;
  v2 = unk_1EC31BA60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6F6974616C65522ELL, 0xE90000000000006ELL);

  qword_1EC31BA80 = v1;
  *algn_1EC31BA88 = v2;
  return result;
}

uint64_t sub_1C8FE155C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BA90);
  __swift_project_value_buffer(v0, qword_1EC31BA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C90ABEA0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "isSome";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
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
  return sub_1C9063BEC();
}

void ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F6278C();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FE19DC(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FE1ED4(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FE23CC(v3, v4, v5, v6);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FE28C4(v19, v20, v21, v22);
        break;
      case 7:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FE2DBC(v23, v24, v25, v26);
        break;
      case 8:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FE32B4(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FE19DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D868, &qword_1C90BBC50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D868, &qword_1C90BBC50);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(qword_1EDA63B98, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D868, &qword_1C90BBC50);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D868, &qword_1C90BBC50);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D868, &qword_1C90BBC50);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D868, &qword_1C90BBC50);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312928, &qword_1C9068D08);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FE1ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D870, &qword_1C90BBC58);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D870, &qword_1C90BBC58);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63B78, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D870, &qword_1C90BBC58);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D870, &qword_1C90BBC58);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D870, &qword_1C90BBC58);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D870, &qword_1C90BBC58);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312928, &qword_1C9068D08);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FE23CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D878, &qword_1C90BBC60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC31D878, &qword_1C90BBC60);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D080, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D878, &qword_1C90BBC60);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D878, &qword_1C90BBC60);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D878, &qword_1C90BBC60);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D878, &qword_1C90BBC60);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312928, &qword_1C9068D08);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FE28C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D880, &qword_1C90BBC68);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v20, &qword_1EC31D880, &qword_1C90BBC68);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D098, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D880, &qword_1C90BBC68);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D880, &qword_1C90BBC68);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D880, &qword_1C90BBC68);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D880, &qword_1C90BBC68);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312928, &qword_1C9068D08);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FE2DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D888, &qword_1C90BBC70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v20, &qword_1EC31D888, &qword_1C90BBC70);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA63B88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D888, &qword_1C90BBC70);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D888, &qword_1C90BBC70);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D888, &qword_1C90BBC70);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D888, &qword_1C90BBC70);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312928, &qword_1C9068D08);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FE32B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  MEMORY[0x1EEE9AC00](DoesNotContain);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D890, &qword_1C90BBC78);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, DoesNotContain);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v20, &qword_1EC31D890, &qword_1C90BBC78);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, DoesNotContain);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D0B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D890, &qword_1C90BBC78);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, DoesNotContain) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D890, &qword_1C90BBC78);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D890, &qword_1C90BBC78);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D890, &qword_1C90BBC78);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312928, &qword_1C9068D08);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FE38F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 6)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE3B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 7)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE3D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA63B98, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA63B78, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D080, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE4354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D098, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE455C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA63B88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE4764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  MEMORY[0x1EEE9AC00](DoesNotContain);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312928, &qword_1C9068D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D0B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE4BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D410, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE4C68(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63B68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE4CD8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63B68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE4D58()
{
  if (qword_1EC311E40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA80;
  v2 = *algn_1EC31BA88;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x736C617571452ELL, 0xE700000000000000);

  qword_1EC31BAA8 = v1;
  unk_1EC31BAB0 = v2;
  return result;
}

void ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoTypedValue(0), OUTLINED_FUNCTION_19_31(), sub_1C8CD1B00(v5, v6, &protocol conformance descriptor for ToolKitProtoTypedValue), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v3))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FE4F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D408, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE4FF8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA63B98, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE5068(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA63B98, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE50E8()
{
  if (qword_1EC311E40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA80;
  v2 = *algn_1EC31BA88;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x61757145746F4E2ELL, 0xEA0000000000736CLL);

  qword_1EC31BAD0 = v1;
  *algn_1EC31BAD8 = v2;
  return result;
}

void ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoTypedValue(0), OUTLINED_FUNCTION_19_31(), sub_1C8CD1B00(v5, v6, &protocol conformance descriptor for ToolKitProtoTypedValue), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v3))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FE530C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D400, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE538C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63B78, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE53FC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63B78, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE547C()
{
  if (qword_1EC311E40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA80;
  v2 = *algn_1EC31BA88;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x726574616572472ELL, 0xEC0000006E616854);

  qword_1EC31BAF8 = v1;
  unk_1EC31BB00 = v2;
  return result;
}

uint64_t sub_1C8FE5548()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BB08);
  __swift_project_value_buffer(v0, qword_1EC31BB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FE57FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE587C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D080, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE58EC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D080, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE596C()
{
  if (qword_1EC311E40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA80;
  v2 = *algn_1EC31BA88;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6168547373654C2ELL, 0xE90000000000006ELL);

  qword_1EC31BB20 = v1;
  *algn_1EC31BB28 = v2;
  return result;
}

uint64_t sub_1C8FE5A34()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BB30);
  __swift_project_value_buffer(v0, qword_1EC31BB30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8FE5C34()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_124_6();
      sub_1C906391C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void sub_1C8FE5D10()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoTypedValue(0), OUTLINED_FUNCTION_19_31(), sub_1C8CD1B00(v5, v6, &protocol conformance descriptor for ToolKitProtoTypedValue), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v0))
  {
    if (*(v1 + 8) != 1 || (OUTLINED_FUNCTION_17_25(), sub_1C9063B0C(), !v0))
    {
      v3(0);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FE5E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3F0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE5EC4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D098, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE5F34(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D098, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE5FB4()
{
  if (qword_1EC311E40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA80;
  v2 = *algn_1EC31BA88;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6E6961746E6F432ELL, 0xE900000000000073);

  qword_1EC31BB48 = v1;
  unk_1EC31BB50 = v2;
  return result;
}

void ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoTypedValue(0), OUTLINED_FUNCTION_19_31(), sub_1C8CD1B00(v5, v6, &protocol conformance descriptor for ToolKitProtoTypedValue), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v3))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FE61D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE6258(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63B88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE62C8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63B88, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE6348()
{
  if (qword_1EC311E40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA80;
  v2 = *algn_1EC31BA88;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x746F4E73656F442ELL, 0xEF6E6961746E6F43);

  qword_1EC31BB70 = v1;
  *algn_1EC31BB78 = v2;
  return result;
}

void ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoTypedValue(0), OUTLINED_FUNCTION_19_31(), sub_1C8CD1B00(v5, v6, &protocol conformance descriptor for ToolKitProtoTypedValue), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v3))
  {
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FE6574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3E0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE65F4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D0B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE6664(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D0B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE66E4()
{
  if (qword_1EC311E18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA18;
  v2 = unk_1EC31BA20;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x74654D6C6F6F542ELL, 0xED00006174616461);

  qword_1EC31BB98 = v1;
  unk_1EC31BBA0 = v2;
  return result;
}

uint64_t sub_1C8FE67B4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BBA8);
  __swift_project_value_buffer(v0, qword_1EC31BBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sourceContainerId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "backingLinkActionIdentifiers";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FE69B4()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C90639CC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }
  }

  return result;
}

void sub_1C8FE6A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_340_2();
  v7 = v6;
  OUTLINED_FUNCTION_1_6();
  if (!v8 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v4))
  {
    if (!*(*(v5 + 16) + 16) || (OUTLINED_FUNCTION_17_25(), sub_1C9063B6C(), !v4))
    {
      v7(0);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FE6AE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_6_33(a1);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v4 + 16), *(v3 + 16));
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_64_7();
  OUTLINED_FUNCTION_1_76();
  v12 = sub_1C8CD1B00(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v12) & 1;
}

uint64_t sub_1C8FE6BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE6C6C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA60FB8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE6CDC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA60FB8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE6D5C()
{
  if (qword_1EC311E18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BA18;
  v2 = unk_1EC31BA20;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CDE60);

  qword_1EC31BBC0 = v1;
  *algn_1EC31BBC8 = v2;
  return result;
}

uint64_t sub_1C8FE6E24()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BBD0);
  __swift_project_value_buffer(v0, qword_1EC31BBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "true_string";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "false_string";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FE70D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3D0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE7154(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D0D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE71C4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D0D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE7244()
{
  if (qword_1EC311DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B990;
  v2 = *algn_1EC31B998;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x726F67657461432ELL, 0xE900000000000079);

  qword_1EC31BBE8 = v1;
  unk_1EC31BBF0 = v2;
  return result;
}

uint64_t sub_1C8FE7410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3C8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE7490(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63C70, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE7500(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63C70, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE7580()
{
  if (qword_1EC311DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B990;
  v2 = *algn_1EC31B998;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6F63496C6F6F542ELL, 0xE90000000000006ELL);

  qword_1EC31BC10 = v1;
  *algn_1EC31BC18 = v2;
  return result;
}

uint64_t sub_1C8FE7648()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BC20);
  __swift_project_value_buffer(v0, qword_1EC31BC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workflowAsset";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "externalAsset";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoToolDefinition.Version1.ToolIcon.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FE7E28(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FE7930(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F7677C();
        break;
    }
  }
}

uint64_t sub_1C8FE7930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147F0, &qword_1C9074ED8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D858, &qword_1C90BBC40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC3147F0, &qword_1C9074ED8);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D858, &qword_1C90BBC40);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA66DA8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D858, &qword_1C90BBC40);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D858, &qword_1C90BBC40);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D858, &qword_1C90BBC40);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D858, &qword_1C90BBC40);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3147F0, &qword_1C9074ED8);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FE7E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147F0, &qword_1C9074ED8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D860, &qword_1C90BBC48);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC3147F0, &qword_1C9074ED8);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC31D860, &qword_1C90BBC48);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D108, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D860, &qword_1C90BBC48);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D860, &qword_1C90BBC48);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D860, &qword_1C90BBC48);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D860, &qword_1C90BBC48);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3147F0, &qword_1C9074ED8);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

void sub_1C8FE845C()
{
  OUTLINED_FUNCTION_196();
  v17 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v12 = OUTLINED_FUNCTION_342(v8, v9, v10, v11, v6, v4);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_92_5();
  sub_1C8D63FCC();
  v3(0);
  v14 = OUTLINED_FUNCTION_125_7();
  if (__swift_getEnumTagSinglePayload(v14, v15, v16) == 1)
  {
    sub_1C8D16D78(v0, v7, v5);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C9063B8C();

      OUTLINED_FUNCTION_277();
      OUTLINED_FUNCTION_198();
      return;
    }

    sub_1C8CD20B4(v0, v17);
  }

  __break(1u);
}

uint64_t sub_1C8FE8564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147F0, &qword_1C9074ED8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3147F0, &qword_1C9074ED8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA66DA8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147F0, &qword_1C9074ED8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3147F0, &qword_1C9074ED8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31D108, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FE8BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE8C70(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA61010, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE8CE0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA61010, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE8D60()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BC38);
  __swift_project_value_buffer(v0, qword_1EC31BC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ToolSymbolIconStyleMulticolor";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolSymbolIconStyleTinted";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FE8F70()
{
  if (qword_1EC311EE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BC10;
  v2 = *algn_1EC31BC18;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6D79536C6F6F542ELL, 0xEF6E6F63496C6F62);

  qword_1EC31BC50 = v1;
  *algn_1EC31BC58 = v2;
  return result;
}

uint64_t sub_1C8FE9040()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BC60);
  __swift_project_value_buffer(v0, qword_1EC31BC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
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
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A0C();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FE9358(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      default:
        continue;
    }
  }
}

void ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  v23 = OUTLINED_FUNCTION_1_6();
  if (!v26 || (OUTLINED_FUNCTION_23_29(), v23 = sub_1C9063B8C(), !v21))
  {
    if (*(v22 + 16) != 1 || (sub_1C8DC0674(v23, v24, v25), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v21))
    {
      OUTLINED_FUNCTION_36_21();
      if (!v27 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v21))
      {
        v28 = OUTLINED_FUNCTION_2_55();
        sub_1C8FE9484(v28);
        if (!v21)
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
          OUTLINED_FUNCTION_13_23();
        }
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FE9484(uint64_t result)
{
  if (*(result + 48))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FE9548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE95C8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA66DA8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE9638(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA66DA8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE96B8()
{
  if (qword_1EC311EE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31BC10;
  v2 = *algn_1EC31BC18;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000012, 0x80000001C90CDDC0);

  qword_1EC31BC78 = v1;
  unk_1EC31BC80 = v2;
  return result;
}

uint64_t sub_1C8FE9780()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BC88);
  __swift_project_value_buffer(v0, qword_1EC31BC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundlePath";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FE9A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3B0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FE9A98(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31D108, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FE9B08(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31D108, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FE9B88()
{
  if (qword_1EC311DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B990;
  v2 = *algn_1EC31B998;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x616365727065442ELL, 0xEC0000006E6F6974);

  qword_1EC31BCA0 = v1;
  *algn_1EC31BCA8 = v2;
  return result;
}

uint64_t sub_1C8FE9C54()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BCB0);
  __swift_project_value_buffer(v0, qword_1EC31BCB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deprecationMessage";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replacedByToolId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t static ToolKitProtoToolDefinition.Version1.Deprecation.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_33(a1);
  v3 = v3 && v1 == v2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {
    OUTLINED_FUNCTION_371_0();
    if (v5)
    {
      if (v4)
      {
        OUTLINED_FUNCTION_272_1();
        v8 = v3 && v6 == v7;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v4)
    {
LABEL_13:
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
      OUTLINED_FUNCTION_64_7();
      OUTLINED_FUNCTION_1_76();
      v11 = sub_1C8CD1B00(v9, v10, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_12_28(v11) & 1;
    }
  }

  return 0;
}

uint64_t sub_1C8FE9FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D3A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FEA074(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA61008, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FEA0E4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA61008, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FEA17C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31BCC8);
  __swift_project_value_buffer(v0, qword_1EC31BCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
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
  *v12 = "bundleId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "bundleVersion";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "teamId";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "device";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "origin";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "synonyms";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoAppDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A0C();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEA5AC(v3, v4, v5, v6);
        break;
      case 7:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FEA660(v7, v8, v9, v10);
        break;
      case 8:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FEA5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAppDefinition(0);
  type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  sub_1C8CD1B00(&qword_1EDA65338, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);
  return sub_1C9063A4C();
}

void ToolKitProtoAppDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_1_6();
  if (!v23 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v21))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v24 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v21))
    {
      OUTLINED_FUNCTION_36_21();
      if (!v25 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v21))
      {
        OUTLINED_FUNCTION_36_21();
        if (!v26 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v21))
        {
          OUTLINED_FUNCTION_36_21();
          if (!v27 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v21))
          {
            v28 = OUTLINED_FUNCTION_2_55();
            v32 = sub_1C8FEA80C(v28, v29, v30, v31);
            if (!v21)
            {
              if (*(v22 + 80))
              {
                sub_1C8DC0620(v32, v33, v34);
                OUTLINED_FUNCTION_29_23();
                sub_1C9063B1C();
              }

              if (*(*(v22 + 88) + 16))
              {
                OUTLINED_FUNCTION_17_25();
                sub_1C9063B6C();
              }

              type metadata accessor for ToolKitProtoAppDefinition(0);
              OUTLINED_FUNCTION_13_23();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FEA80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314800, &unk_1C9074EE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314800, &unk_1C9074EE8);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA65338, type metadata accessor for ToolKitProtoAppDefinition.Device, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAppDefinition.Device);
}

void static ToolKitProtoAppDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for ToolKitProtoAppDefinition.Device(v3);
  OUTLINED_FUNCTION_39_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314800, &unk_1C9074EE8);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C720, &qword_1C90AC0E8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_41_19();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_123_6();
  v13 = v10 && v11 == v12;
  if (!v13 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_39;
  }

  v14 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v14 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_39;
  }

  v15 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v15 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_39;
  }

  v16 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v16 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_39;
  }

  type metadata accessor for ToolKitProtoAppDefinition(0);
  OUTLINED_FUNCTION_182_6();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_310_1();
  OUTLINED_FUNCTION_18_32();
  if (v10)
  {
    OUTLINED_FUNCTION_24_28();
    if (v10)
    {
      sub_1C8D16D78(v2, &qword_1EC314800, &unk_1C9074EE8);
      goto LABEL_36;
    }

LABEL_34:
    sub_1C8D16D78(v2, &qword_1EC31C720, &qword_1C90AC0E8);
LABEL_39:
    v29 = 0;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
    goto LABEL_34;
  }

  sub_1C900BE74();
  v18 = OUTLINED_FUNCTION_398();
  v20 = static ToolKitProtoAppDefinition.Device.== infix(_:_:)(v18, v19);
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v2, &qword_1EC314800, &unk_1C9074EE8);
  if ((v20 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (*(v1 + 80) != *(v0 + 80))
  {
    goto LABEL_39;
  }

  sub_1C8CEB10C(*(v1 + 88), *(v0 + 88));
  if ((v25 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  v28 = sub_1C8CD1B00(v26, v27, MEMORY[0x1E69AAC10]);
  v29 = OUTLINED_FUNCTION_12_28(v28);
LABEL_40:
  OUTLINED_FUNCTION_50_0(v29);
  OUTLINED_FUNCTION_163();
}