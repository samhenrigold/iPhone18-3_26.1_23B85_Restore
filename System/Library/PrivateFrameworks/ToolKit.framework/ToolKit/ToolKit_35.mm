uint64_t sub_1C8FA2550()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B270);
  __swift_project_value_buffer(v0, qword_1EC31B270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "regularContentItemClass";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkEntityContentItemClass";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "linkEnumContentItemClass";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkCodableContentItemClass";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoContentItemClassDescriptor.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_6_44();
        sub_1C8F7677C();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA2898(v11, v12, v13, v14);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA2D90(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA3288(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FA2898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D960, &qword_1C90BBD48);
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
    sub_1C8D16D78(v10, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D960, &qword_1C90BBD48);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA63DD8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D960, &qword_1C90BBD48);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D960, &qword_1C90BBD48);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D960, &qword_1C90BBD48);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D960, &qword_1C90BBD48);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3145A0, &qword_1C9074E00);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA2D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D968, &qword_1C90BBD50);
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
    sub_1C8D16D78(v10, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC31D968, &qword_1C90BBD50);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CD50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D968, &qword_1C90BBD50);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D968, &qword_1C90BBD50);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D968, &qword_1C90BBD50);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D968, &qword_1C90BBD50);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3145A0, &qword_1C9074E00);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA3288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D970, &qword_1C90BBD58);
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
    sub_1C8D16D78(v10, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v20, &qword_1EC31D970, &qword_1C90BBD58);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CD68, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D970, &qword_1C90BBD58);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D970, &qword_1C90BBD58);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D970, &qword_1C90BBD58);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D970, &qword_1C90BBD58);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC3145A0, &qword_1C9074E00);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA38DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA63DD8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FA3AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CD50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FA3CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CD68, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FA418C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5C8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA420C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA427C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA42FC()
{
  result = MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CECD0);
  qword_1EC31B288 = 0xD000000000000022;
  unk_1EC31B290 = 0x80000001C90CD380;
  return result;
}

uint64_t sub_1C8FA4390()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B298);
  __swift_project_value_buffer(v0, qword_1EC31B298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA464C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5C0, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA46CC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA63DD8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA473C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA63DD8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA47BC()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000019, 0x80000001C90CECB0);
  qword_1EC31B2B0 = 0xD000000000000022;
  *algn_1EC31B2B8 = 0x80000001C90CD380;
  return result;
}

uint64_t sub_1C8FA4850()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B2C0);
  __swift_project_value_buffer(v0, qword_1EC31B2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA4A50()
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

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t sub_1C8FA4B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5B8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA4BD4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA4C44(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CD50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA4CC4()
{
  result = MEMORY[0x1CCA81A90](0xD00000000000001CLL, 0x80000001C90CEC90);
  qword_1EC31B2D8 = 0xD000000000000022;
  unk_1EC31B2E0 = 0x80000001C90CD380;
  return result;
}

uint64_t sub_1C8FA4E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5B0, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA4EE4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD68, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA4F54(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CD68, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA4FEC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B300);
  __swift_project_value_buffer(v0, qword_1EC31B300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparison";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA52B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FA536C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  sub_1C8CD1B00(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FA5420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FA553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314750, &qword_1C9074E10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314750, &qword_1C9074E10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_1C8FA5710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314758, &qword_1C9074E18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314758, &qword_1C9074E18);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
}

uint64_t sub_1C8FA58E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314580, &qword_1C9074DA0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_1C8FA5B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5A8, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA5C00(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA5C70(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA5D3C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B328);
  __swift_project_value_buffer(v0, qword_1EC31B328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C90ABF00;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "notEqualTo";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "equalTo";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
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
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "contains";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "notContains";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "beginsWith";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "endsWith";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "inTheNext";
  *(v31 + 1) = 9;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "inTheLast";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "isToday";
  *(v35 + 1) = 7;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "isBetween";
  *(v37 + 1) = 9;
  v37[16] = 2;
  v8();
  return sub_1C9063BEC();
}

void ToolKitProtoComparisonPredicate.Comparison.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA6438(v3, v4, v5, v6);
        break;
      case 2:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA6930(v31, v32, v33, v34);
        break;
      case 3:
      case 4:
      case 15:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F6278C();
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA6E28(v11, v12, v13, v14);
        break;
      case 6:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA7320(v35, v36, v37, v38);
        break;
      case 7:
        v43 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA7818(v43, v44, v45, v46);
        break;
      case 8:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA7D10(v27, v28, v29, v30);
        break;
      case 9:
        v51 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA8208(v51, v52, v53, v54);
        break;
      case 10:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA8700(v19, v20, v21, v22);
        break;
      case 11:
        v47 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA8BF8(v47, v48, v49, v50);
        break;
      case 12:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA90F0(v7, v8, v9, v10);
        break;
      case 13:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA95E8(v15, v16, v17, v18);
        break;
      case 14:
        v39 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA9AE0(v39, v40, v41, v42);
        break;
      case 16:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA9FD8(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FA6438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA6930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA6E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA7320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA7D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA8208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA8700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA8BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA90F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA95E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA9AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314368, &unk_1C9074D90);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FA9FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D958, &qword_1C90BBD40);
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
    sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8D16D78(v20, &qword_1EC31D958, &qword_1C90BBD40);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CDA8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D958, &qword_1C90BBD40);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D958, &qword_1C90BBD40);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D958, &qword_1C90BBD40);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D958, &qword_1C90BBD40);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FAA690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAA894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAAA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
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

uint64_t sub_1C8FAACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
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

uint64_t sub_1C8FAAEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FABB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FABD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FABF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAC134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAC33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
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

uint64_t sub_1C8FAC564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CDA8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAC9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5A0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FACA60(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FACAD0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FACB50()
{
  if (qword_1EC311B78 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B318;
  v2 = unk_1EC31B320;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x726961502ELL, 0xE500000000000000);

  qword_1EC31B340 = v1;
  *algn_1EC31B348 = v2;
  return result;
}

uint64_t sub_1C8FACC10()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B350);
  __swift_project_value_buffer(v0, qword_1EC31B350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoComparisonPredicate.Comparison.Pair.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8FACEC0(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8FACEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FACFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_1C8FAD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_1C8FAD3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D598, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FAD46C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CDA8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FAD4DC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CDA8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FAD55C()
{
  if (qword_1EC311B78 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B318;
  v2 = unk_1EC31B320;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);

  qword_1EC31B368 = v1;
  unk_1EC31B370 = v2;
  return result;
}

uint64_t sub_1C8FAD624()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B378);
  __swift_project_value_buffer(v0, qword_1EC31B378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C90ABF00;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "equalTo";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "notEqualTo";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
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
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "contains";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "notContains";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "beginsWith";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "endsWith";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "inTheNext";
  *(v31 + 1) = 9;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "inTheLast";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "isToday";
  *(v35 + 1) = 7;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "isBetween";
  *(v37 + 1) = 9;
  v37[16] = 2;
  v8();
  return sub_1C9063BEC();
}

void ToolKitProtoComparisonPredicate.Comparison.Template.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FADD20(v3, v4, v5, v6);
        break;
      case 2:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAE218(v31, v32, v33, v34);
        break;
      case 3:
      case 4:
      case 15:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F6278C();
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAE710(v11, v12, v13, v14);
        break;
      case 6:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAEC08(v35, v36, v37, v38);
        break;
      case 7:
        v43 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAF100(v43, v44, v45, v46);
        break;
      case 8:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAF5F8(v27, v28, v29, v30);
        break;
      case 9:
        v51 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAFAF0(v51, v52, v53, v54);
        break;
      case 10:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAFFE8(v19, v20, v21, v22);
        break;
      case 11:
        v47 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB04E0(v47, v48, v49, v50);
        break;
      case 12:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB09D8(v7, v8, v9, v10);
        break;
      case 13:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB0ED0(v15, v16, v17, v18);
        break;
      case 14:
        v39 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB13C8(v39, v40, v41, v42);
        break;
      case 16:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB18C0(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FADD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FAE218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FAE710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FAEC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FAF100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FAF5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FAFAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FAFFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FB04E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FB09D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FB0ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FB13C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FB18C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC312A58, &unk_1C9074CC0);
  v25 = v27;
  sub_1C8D16D78(v27, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FB1F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB2384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
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

uint64_t sub_1C8FB25AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
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

uint64_t sub_1C8FB27D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB2BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB2FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB31FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB360C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB3C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  sub_1C8D63FCC();
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    result = sub_1C8D16D78(v10, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
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

uint64_t sub_1C8FB3E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeInstance);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FB42C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D590, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB4348(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB43B8(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_1C9063ABC();
}

void sub_1C8FB4460(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FB44C8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B3A0);
  __swift_project_value_buffer(v0, qword_1EC31B3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparisonTemplate";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8FB4798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_340_2();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  while (1)
  {
    v11 = sub_1C90638DC();
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    switch(v11)
    {
      case 1:
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_92_5();
        v10();
        break;
      case 2:
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_92_5();
        v8();
        break;
      case 3:
        sub_1C9063A0C();
        break;
      case 4:
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_92_5();
        v6();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FB487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FB4930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  sub_1C8CD1B00(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FB49E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_1C9063A4C();
}

void sub_1C8FB4B00()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_7_48();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_2_55();
    v6(v9);
    OUTLINED_FUNCTION_36_21();
    if (v10)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    v11 = OUTLINED_FUNCTION_2_55();
    v4(v11);
    v2(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8FB4BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314750, &qword_1C9074E10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314750, &qword_1C9074E10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_1C8FB4D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314780, &qword_1C9074E40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314780, &qword_1C9074E40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64640, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
}

uint64_t sub_1C8FB4F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC314580, &qword_1C9074DA0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

void static ToolKitProtoComparisonPredicate.Template.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v62 = v2;
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_369_0(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C190, &qword_1C90ABFE8);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v59 = v8;
  v9 = OUTLINED_FUNCTION_111();
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(v9);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_316_2(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314780, &qword_1C9074E40);
  OUTLINED_FUNCTION_9(v12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_102_8(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C4D0, &qword_1C90AC090);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_134_3(v16);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = OUTLINED_FUNCTION_245();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_9(v23);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_72();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C1A8, &qword_1C90AC000) - 8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_51();
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  v27 = *(v25 + 56);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_133_4(v0);
  if (v28)
  {
    OUTLINED_FUNCTION_133_4(v0 + v27);
    if (v28)
    {
      sub_1C8D16D78(v0, &qword_1EC314750, &qword_1C9074E10);
      goto LABEL_11;
    }

LABEL_9:
    v29 = &qword_1EC31C1A8;
    v30 = &qword_1C90AC000;
    v31 = v0;
LABEL_35:
    sub_1C8D16D78(v31, v29, v30);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_181();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_133_4(v0 + v27);
  if (v28)
  {
    OUTLINED_FUNCTION_267_2();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_228_5();
  sub_1C900BE74();
  OUTLINED_FUNCTION_93();
  static ToolKitProtoTypeDefinition.Version1.Entity.Property.== infix(_:_:)();
  v33 = v32;
  sub_1C8CD20B4(v20, v25);
  v34 = OUTLINED_FUNCTION_287();
  sub_1C8CD20B4(v34, v35);
  sub_1C8D16D78(v0, &qword_1EC314750, &qword_1C9074E10);
  if ((v33 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_11:
  OUTLINED_FUNCTION_368_0();
  OUTLINED_FUNCTION_193_5(v25 + v27);
  OUTLINED_FUNCTION_290_2();
  v36 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v36, v37);
  if (v28)
  {
    OUTLINED_FUNCTION_34_17(v61 + v1);
    if (v28)
    {
      sub_1C8D16D78(v61, &qword_1EC314780, &qword_1C9074E40);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v61 + v1);
  if (v38)
  {
    sub_1C8CD20B4(v60, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
LABEL_19:
    v29 = &qword_1EC31C4D0;
    v30 = &qword_1C90AC090;
    v31 = v61;
    goto LABEL_35;
  }

  sub_1C900BE74();
  v39 = OUTLINED_FUNCTION_380_0();
  static ToolKitProtoComparisonPredicate.Comparison.Template.== infix(_:_:)(v39);
  OUTLINED_FUNCTION_163_7();
  v40 = OUTLINED_FUNCTION_130_1();
  sub_1C8CD20B4(v40, v41);
  sub_1C8D16D78(v61, &qword_1EC314780, &qword_1C9074E40);
  if ((&qword_1C9074E40 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  OUTLINED_FUNCTION_336_2();
  if (v28)
  {
    v44 = v42 == v43;
  }

  else
  {
    v44 = 0;
  }

  if (!v44 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_36;
  }

  v45 = dword_1EC31476C;
  OUTLINED_FUNCTION_193_5(v25 + dword_1EC31476C);
  OUTLINED_FUNCTION_202_5(v62 + v45);
  v46 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v46, v47);
  if (v28)
  {
    OUTLINED_FUNCTION_30_26();
    if (v28)
    {
      sub_1C8D16D78(v59, &qword_1EC314580, &qword_1C9074DA0);
LABEL_39:
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v53, v54, MEMORY[0x1E69AAC10]);
      v55 = OUTLINED_FUNCTION_257_2();
      v49 = OUTLINED_FUNCTION_343_2(v55, v56, v57, v58);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  if (v48)
  {
    OUTLINED_FUNCTION_128_4();
LABEL_34:
    v29 = &qword_1EC31C190;
    v30 = &qword_1C90ABFE8;
    v31 = v59;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_231_4();
  sub_1C900BE74();
  v50 = OUTLINED_FUNCTION_347();
  static ToolKitProtoContentItemClassDescriptor.== infix(_:_:)(v50);
  OUTLINED_FUNCTION_163_7();
  v51 = OUTLINED_FUNCTION_274_0();
  sub_1C8CD20B4(v51, v52);
  sub_1C8D16D78(v59, &qword_1EC314580, &qword_1C9074DA0);
  if (&qword_1C9074DA0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v49 = 0;
LABEL_37:
  OUTLINED_FUNCTION_50_0(v49);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FB57A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D588, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB5820(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA645B8, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB5890(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA645B8, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB591C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B3B8);
  __swift_project_value_buffer(v0, qword_1EC31B3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoCompoundPredicate.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BFE0();
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8FB5BCC(v3, v4, v5, v6);
    }
  }
}

void ToolKitProtoCompoundPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  if (!*v21 || (sub_1C8DC0968(v23, v24, v25), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v22))
  {
    OUTLINED_FUNCTION_347_2();
    if (!v26 || (type metadata accessor for ToolKitProtoComparisonPredicate(0), sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate), OUTLINED_FUNCTION_126_4(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v22))
    {
      type metadata accessor for ToolKitProtoCompoundPredicate(0);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FB5DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D580, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB5E34(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CDD0, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB5EA4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CDD0, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB5F24()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B3D0);
  __swift_project_value_buffer(v0, qword_1EC31B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OperatorUnspecified";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OperatorAnd";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "OperatorOr";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FB6284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D578, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB6304(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CDF0, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB6374(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CDF0, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB63F4()
{
  result = MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EC31B400 = 0xD00000000000001DLL;
  *algn_1EC31B408 = 0x80000001C90CD3F0;
  return result;
}

uint64_t sub_1C8FB6520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D570, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB65A0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64158, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB6610(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64158, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB6698()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B428);
  __swift_project_value_buffer(v0, qword_1EC31B428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
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
  *v10 = "identifiers";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FB6968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D568, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB69E8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE10, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB6A58(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CE10, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB6AD8()
{
  result = MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EC31B440 = 0xD000000000000019;
  *algn_1EC31B448 = 0x80000001C90CD410;
  return result;
}

uint64_t sub_1C8FB6C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D560, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB6C84(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64B50, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB6CF4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA64B50, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);

  return sub_1C9063ABC();
}

void ToolKitProtoValueSearchPredicate.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_233_4();
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void ToolKitProtoValueSearchPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoTypedValue(0), OUTLINED_FUNCTION_19_31(), sub_1C8CD1B00(v5, v6, &protocol conformance descriptor for ToolKitProtoTypedValue), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v3))
  {
    type metadata accessor for ToolKitProtoValueSearchPredicate(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FB6F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D558, type metadata accessor for ToolKitProtoValueSearchPredicate, &protocol conformance descriptor for ToolKitProtoValueSearchPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB7008(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE30, type metadata accessor for ToolKitProtoValueSearchPredicate, &protocol conformance descriptor for ToolKitProtoValueSearchPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7078(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CE30, type metadata accessor for ToolKitProtoValueSearchPredicate, &protocol conformance descriptor for ToolKitProtoValueSearchPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB70F8()
{
  result = MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EC31B480 = 0xD00000000000001CLL;
  *algn_1EC31B488 = 0x80000001C90CD430;
  return result;
}

uint64_t sub_1C8FB7468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D550, type metadata accessor for ToolKitProtoValueSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoValueSearchPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB74E8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE48, type metadata accessor for ToolKitProtoValueSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoValueSearchPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7558(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CE48, type metadata accessor for ToolKitProtoValueSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoValueSearchPredicate.Template);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB76FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D548, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB777C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE60, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB77EC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CE60, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB786C()
{
  result = MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EC31B4C0 = 0xD00000000000001FLL;
  *algn_1EC31B4C8 = 0x80000001C90CD450;
  return result;
}

uint64_t sub_1C8FB7998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D540, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB7A18(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA63F30, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7A88(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA63F30, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_1C9063ABC();
}

uint64_t ToolKitProtoAllPredicate.decodeMessage<A>(decoder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_349_1();
  do
  {
    OUTLINED_FUNCTION_93();
    result = sub_1C90638DC();
  }

  while (!v1 && (v3 & 1) == 0);
  return result;
}

uint64_t sub_1C8FB7C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D538, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB7CA8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7D18(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB7E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D530, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB7ED8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB7F48(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB8088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D528, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB8108(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB8178(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB8218()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B530);
  __swift_project_value_buffer(v0, qword_1EC31B530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "predicate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sort";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "limit";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoQuery.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FB8618(v11, v12, v13, v14, v15, v16);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FB85B0(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FB84FC(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8FB84FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoQuery(0);
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  sub_1C8CD1B00(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FB8618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = OUTLINED_FUNCTION_41_15();
  v8(v7);
  OUTLINED_FUNCTION_29_18();
  return a6();
}

void ToolKitProtoQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  v23 = OUTLINED_FUNCTION_7_48();
  v27 = sub_1C8FB872C(v23, v24, v25, v26);
  if (!v21)
  {
    if (*v22)
    {
      sub_1C8DC0914(v27, v28, v29);
      OUTLINED_FUNCTION_29_23();
      sub_1C9063B1C();
    }

    OUTLINED_FUNCTION_2_55();
    sub_1C8FB8900();
    type metadata accessor for ToolKitProtoQuery(0);
    OUTLINED_FUNCTION_53_15();
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FB872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoQuery(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313400, &qword_1C906B680);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
}

uint64_t sub_1C8FB8900()
{
  v1 = OUTLINED_FUNCTION_325_2();
  result = v2(v1);
  if ((*(v0 + *(result + 24) + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_138_6();
    return sub_1C9063B5C();
  }

  return result;
}

void static ToolKitProtoQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v5 = v4;
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v7 = OUTLINED_FUNCTION_245();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C548, &qword_1C90AC098);
  OUTLINED_FUNCTION_184_6();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_35();
  v30 = type metadata accessor for ToolKitProtoQuery(v12);
  OUTLINED_FUNCTION_348_2();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0);
  if (v13)
  {
    OUTLINED_FUNCTION_78_4(v0 + v1);
    if (v13)
    {
      sub_1C8D16D78(v0, &qword_1EC313400, &qword_1C906B680);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C548, &qword_1C90AC098);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_177_5();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0 + v1);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_273();
    sub_1C8CD20B4(v14, v15);
    goto LABEL_9;
  }

  sub_1C900BE74();
  v16 = OUTLINED_FUNCTION_49();
  v17 = static ToolKitProtoQuery.AnyPredicate.== infix(_:_:)(v16);
  v18 = OUTLINED_FUNCTION_287();
  sub_1C8CD20B4(v18, v19);
  v20 = OUTLINED_FUNCTION_203();
  sub_1C8CD20B4(v20, v21);
  sub_1C8D16D78(v0, &qword_1EC313400, &qword_1C906B680);
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*v5 == *v3)
  {
    v22 = *(v30 + 24);
    v23 = v5[v22 + 8];
    v24 = v3[v22 + 8];
    if (v23)
    {
      if (!v24)
      {
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_55_14();
      if (v26)
      {
        goto LABEL_14;
      }
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    v29 = sub_1C8CD1B00(v27, v28, MEMORY[0x1E69AAC10]);
    v25 = OUTLINED_FUNCTION_169_5(v29);
    goto LABEL_15;
  }

LABEL_14:
  v25 = 0;
LABEL_15:
  OUTLINED_FUNCTION_50_0(v25);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FB8C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D520, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FB8D0C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CE98, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FB8D7C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CE98, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FB8DFC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B548);
  __swift_project_value_buffer(v0, qword_1EC31B548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SortOrderUnspecified";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SortOrderForward";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SortOrderReverse";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FB9044()
{
  strcpy(v1, "ToolKit.Query");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x1CCA81A90](0x64657250796E412ELL, 0xED00006574616369);
  qword_1EC31B560 = v1[0];
  *algn_1EC31B568 = v1[1];
  return result;
}

uint64_t sub_1C8FB90E4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B570);
  __swift_project_value_buffer(v0, qword_1EC31B570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C909C460;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "comparison";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "compound";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "stringSearch";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "idSearch";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "all";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "suggested";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "searchableItem";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "valid";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "valueSearch";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoQuery.AnyPredicate.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB9580(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB9A78(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB9F70(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBA468(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBA960(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBAE58(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBB350(v31, v32, v33, v34);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBB848(v19, v20, v21, v22);
        break;
      case 9:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBBD40(v35, v36, v37, v38);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FB9580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D928, &qword_1C90BBD10);
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
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D928, &qword_1C90BBD10);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D928, &qword_1C90BBD10);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D928, &qword_1C90BBD10);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D928, &qword_1C90BBD10);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D928, &qword_1C90BBD10);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FB9A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D930, &qword_1C90BBD18);
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
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D930, &qword_1C90BBD18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CDD0, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D930, &qword_1C90BBD18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D930, &qword_1C90BBD18);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D930, &qword_1C90BBD18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D930, &qword_1C90BBD18);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FB9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D938, &qword_1C90BBD20);
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
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC31D938, &qword_1C90BBD20);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CDF0, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D938, &qword_1C90BBD20);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D938, &qword_1C90BBD20);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D938, &qword_1C90BBD20);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D938, &qword_1C90BBD20);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D940, &qword_1C90BBD28);
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
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v20, &qword_1EC31D940, &qword_1C90BBD28);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CE10, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D940, &qword_1C90BBD28);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D940, &qword_1C90BBD28);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D940, &qword_1C90BBD28);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D940, &qword_1C90BBD28);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBA960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoAllPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
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
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v20, &qword_1EC314248, &unk_1C9072A80);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314248, &unk_1C9072A80);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314248, &unk_1C9072A80);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314248, &unk_1C9072A80);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314248, &unk_1C9072A80);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBAE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
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
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v20, &qword_1EC314240, &unk_1C9074D50);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314240, &unk_1C9074D50);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314240, &unk_1C9074D50);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314240, &unk_1C9074D50);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314240, &unk_1C9074D50);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBB350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D948, &qword_1C90BBD30);
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
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v20, &qword_1EC31D948, &qword_1C90BBD30);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CE60, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D948, &qword_1C90BBD30);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D948, &qword_1C90BBD30);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D948, &qword_1C90BBD30);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D948, &qword_1C90BBD30);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBB848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  MEMORY[0x1EEE9AC00](valid);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_storeEnumTagSinglePayload(&v26 - v19, 1, 1, valid);
  v27 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v29 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v20, &qword_1EC314230, &unk_1C9074D60);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, valid);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC314230, &unk_1C9074D60);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, valid) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC314230, &unk_1C9074D60);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC314230, &unk_1C9074D60);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC314230, &unk_1C9074D60);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBBD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoValueSearchPredicate(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D950, &qword_1C90BBD38);
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
    sub_1C8D16D78(v10, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v20, &qword_1EC31D950, &qword_1C90BBD38);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CE30, type metadata accessor for ToolKitProtoValueSearchPredicate, &protocol conformance descriptor for ToolKitProtoValueSearchPredicate);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D950, &qword_1C90BBD38);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D950, &qword_1C90BBD38);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D950, &qword_1C90BBD38);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D950, &qword_1C90BBD38);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC314788, &qword_1C9074E48);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoComparisonPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBC59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CDD0, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoCompoundPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBC7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CDF0, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoStringSearchPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CE10, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoIdSearchPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBCBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoAllPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAllPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBCDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSuggestedPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBCFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CE60, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBD1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  MEMORY[0x1EEE9AC00](valid);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoValidPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoValueSearchPredicate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC314788, &qword_1C9074E48);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CE30, type metadata accessor for ToolKitProtoValueSearchPredicate, &protocol conformance descriptor for ToolKitProtoValueSearchPredicate);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoValueSearchPredicate);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBD850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D518, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FBD8D0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FBD940(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FBD9D8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B588);
  __swift_project_value_buffer(v0, qword_1EC31B588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isWildcard";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimePlatformVersion.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_22_0();
        sub_1C906399C();
        break;
      case 4:
        OUTLINED_FUNCTION_22_0();
        sub_1C906391C();
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoRuntimePlatformVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B4C(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B4C(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B4C(), !v1))
      {
        if (*(v2 + 12) != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v1))
        {
          type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
          return OUTLINED_FUNCTION_13_23();
        }
      }
    }
  }

  return result;
}

uint64_t static ToolKitProtoRuntimePlatformVersion.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  v9 = sub_1C8CD1B00(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v9) & 1;
}

uint64_t sub_1C8FBDF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D510, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FBDF80(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FBDFF0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FBE07C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B5A0);
  __swift_project_value_buffer(v0, qword_1EC31B5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceCapability";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "featureFlag";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deviceState";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBE394(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBE88C(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FBED84(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FBF27C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FBE394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D910, &qword_1C90BBCF8);
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
    sub_1C8D16D78(v10, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D910, &qword_1C90BBCF8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EDA67C58, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D910, &qword_1C90BBCF8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D910, &qword_1C90BBCF8);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D910, &qword_1C90BBCF8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D910, &qword_1C90BBCF8);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312A78, &qword_1C9068E58);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBE88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D918, &qword_1C90BBD00);
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
    sub_1C8D16D78(v10, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v20, &qword_1EC31D918, &qword_1C90BBD00);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D918, &qword_1C90BBD00);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D918, &qword_1C90BBD00);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D918, &qword_1C90BBD00);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D918, &qword_1C90BBD00);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312A78, &qword_1C9068E58);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D920, &qword_1C90BBD08);
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
    sub_1C8D16D78(v10, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v20, &qword_1EC31D920, &qword_1C90BBD08);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA67C88, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D920, &qword_1C90BBD08);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D920, &qword_1C90BBD08);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D920, &qword_1C90BBD08);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D920, &qword_1C90BBD08);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC312A78, &qword_1C9068E58);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FBF27C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v17 = 7;
  sub_1C8DC08C0(v9, v10, v11);
  result = sub_1C906392C();
  if (!v4)
  {
    v13 = v17;
    if (v17 != 7)
    {
      sub_1C8D63FCC();
      v14 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v14);
      sub_1C8D16D78(v8, &qword_1EC312A78, &qword_1C9068E58);
      if (EnumTagSinglePayload != 1)
      {
        sub_1C90638EC();
      }

      sub_1C8D16D78(a2, &qword_1EC312A78, &qword_1C9068E58);
      *a2 = v13;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v14);
    }
  }

  return result;
}

uint64_t sub_1C8FBF528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA67C58, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBF72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBF934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA67C88, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBFB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A78, &qword_1C9068E58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  sub_1C8D63FCC();
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC312A78, &qword_1C9068E58);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v12[15] = *v6;
      sub_1C8DC08C0(EnumCaseMultiPayload, v9, v10);
      return sub_1C9063B1C();
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FBFF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D508, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FBFFB0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA6C268, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC0020(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA6C268, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC00A0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B5B8);
  __swift_project_value_buffer(v0, qword_1EC31B5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DeviceStateUnspecified";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceStateUnlocked";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DeviceStateWritingToolsAvailable";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DeviceStateUseModelAvailable";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DeviceStatePhotosMemoriesAvailable";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DeviceStateImagePlaygroundAvailable";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DeviceStateVisualIntelligenceCameraAvailable";
  *(v20 + 1) = 44;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FC03E4()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000017, 0x80000001C90CE940);
  qword_1EC31B5D0 = 0xD00000000000001ALL;
  *algn_1EC31B5D8 = 0x80000001C90CD4F0;
  return result;
}

uint64_t sub_1C8FC0478()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B5E0);
  __swift_project_value_buffer(v0, qword_1EC31B5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "introducingVersion";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deprecatingVersion";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "obsoletingVersion";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC0790(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC07F8(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC08AC(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC0960(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FC07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC08AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC0960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_1C9063A4C();
}

void ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v21 || (sub_1C8DC0F50(v23, v24, v25), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v22))
  {
    v26 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC0AC0(v26, v27, v28, v29);
    if (!v22)
    {
      v30 = OUTLINED_FUNCTION_2_55();
      sub_1C8FC0C94(v30, v31, v32, v33);
      v34 = OUTLINED_FUNCTION_2_55();
      sub_1C8FC0E68(v34, v35, v36, v37);
      type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FC0AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313D00, &qword_1C9070750);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_1C8FC0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313D00, &qword_1C9070750);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_1C8FC0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313D00, &qword_1C9070750);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA671F8, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_1C8FC10C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D500, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC1144(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA67C58, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC11B4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA67C58, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC1234()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CE920);
  qword_1EC31B5F8 = 0xD00000000000001ALL;
  unk_1EC31B600 = 0x80000001C90CD4F0;
  return result;
}

uint64_t sub_1C8FC12C8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B608);
  __swift_project_value_buffer(v0, qword_1EC31B608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mobileGestalt";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "capability";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.decodeMessage<A>(decoder:)()
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
      v7 = OUTLINED_FUNCTION_5_39();
      sub_1C8FC1A24(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8_32();
      sub_1C8FC152C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C8FC152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D908, &qword_1C90BBCF0);
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
    sub_1C8D16D78(v10, &qword_1EC313CD8, &qword_1C9074E60);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v13, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    }

    else
    {
      sub_1C8D16D78(v20, &qword_1EC31D908, &qword_1C90BBCF0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EDA67C78, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v21 = v31;
  sub_1C9063A4C();
  if (v21)
  {
    v22 = v20;
    return sub_1C8D16D78(v22, &qword_1EC31D908, &qword_1C90BBCF0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v5) == 1)
  {
    sub_1C8D16D78(v20, &qword_1EC31D908, &qword_1C90BBCF0);
    v22 = v17;
    return sub_1C8D16D78(v22, &qword_1EC31D908, &qword_1C90BBCF0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v24 = v29;
  sub_1C8D16D78(v20, &qword_1EC31D908, &qword_1C90BBCF0);
  v25 = v27;
  sub_1C8D16D78(v27, &qword_1EC313CD8, &qword_1C9074E60);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
}

uint64_t sub_1C8FC1A24(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v17 = 8;
  sub_1C8DC086C(v9, v10, v11);
  result = sub_1C906392C();
  if (!v4)
  {
    v13 = v17;
    if (v17 != 8)
    {
      sub_1C8D63FCC();
      v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v14);
      sub_1C8D16D78(v8, &qword_1EC313CD8, &qword_1C9074E60);
      if (EnumTagSinglePayload != 1)
      {
        sub_1C90638EC();
      }

      sub_1C8D16D78(a2, &qword_1EC313CD8, &qword_1C9074E60);
      *a2 = v13;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v14);
    }
  }

  return result;
}

uint64_t sub_1C8FC1CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v10 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC313CD8, &qword_1C9074E60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA67C78, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FC1EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313CD8, &qword_1C9074E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  sub_1C8D63FCC();
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8D16D78(v6, &qword_1EC313CD8, &qword_1C9074E60);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v12[15] = *v6;
      sub_1C8DC086C(EnumCaseMultiPayload, v9, v10);
      return sub_1C9063B1C();
    }

    result = sub_1C8CD20B4(v6, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FC208C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4F8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC210C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC217C(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA67C68, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC21FC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B620);
  __swift_project_value_buffer(v0, qword_1EC31B620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DeviceCapabilityTypePersonalHotspot";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceCapabilityTypePosters";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DeviceCapabilityTypeCellularTelephony";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DeviceCapabilityTypeCellularData";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DeviceCapabilityTypeStageManager";
  *(v16 + 1) = 32;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DeviceCapabilityTypeRemovingBackgrounds";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "DeviceCapabilityTypeAlwaysOnDisplay";
  *(v20 + 1) = 35;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "DeviceCapabilityTypeVibration";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FC2584()
{
  if (qword_1EC311C88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B5F8;
  v2 = unk_1EC31B600;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x47656C69626F4D2ELL, 0xEE00746C61747365);

  qword_1EC31B638 = v1;
  unk_1EC31B640 = v2;
  return result;
}

uint64_t sub_1C8FC2654()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B648);
  __swift_project_value_buffer(v0, qword_1EC31B648);
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
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.decodeMessage<A>(decoder:)()
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
      sub_1C906391C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v0))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8FC29C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4F0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC2A44(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA67C78, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC2AB4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA67C78, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC2B34()
{
  result = MEMORY[0x1CCA81A90](0x657275746165462ELL, 0xEC00000067616C46);
  qword_1EC31B660 = 0xD00000000000001ALL;
  *algn_1EC31B668 = 0x80000001C90CD4F0;
  return result;
}

uint64_t sub_1C8FC2BC8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B670);
  __swift_project_value_buffer(v0, qword_1EC31B670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C906391C();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    OUTLINED_FUNCTION_36_21();
    if (!v4 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v0))
      {
        type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
        return OUTLINED_FUNCTION_53_15();
      }
    }
  }

  return result;
}

uint64_t sub_1C8FC2FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4E8, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC3028(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA67C88, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC3098(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA67C88, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_1C9063ABC();
}

void ToolKitProtoToolSummaryString.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void ToolKitProtoToolSummaryString.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoToolSummaryString.Component(0), sub_1C8CD1B00(&qword_1EC31A000, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v3))
  {
    type metadata accessor for ToolKitProtoToolSummaryString(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC3388(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4E0, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC3408(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CEF8, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC3478(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CEF8, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC34F8()
{
  result = MEMORY[0x1CCA81A90](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);
  qword_1EC31B6A0 = 0xD000000000000019;
  *algn_1EC31B6A8 = 0x80000001C90CD510;
  return result;
}

uint64_t sub_1C8FC3588()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B6B0);
  __swift_project_value_buffer(v0, qword_1EC31B6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolSummaryString.Component.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      v10 = 1;
LABEL_8:
      sub_1C8FC37EC(v3, v4, v5, v6, v10, v7, v8, v9);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      v10 = 0;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1C8FC37EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  result = OUTLINED_FUNCTION_308_1(a1, a2, a3, a4, a5, a6, a7, a8, v15, v17);
  if (v8)
  {
  }

  if (v18)
  {
    if (*(v9 + 16) == 255)
    {
      v12 = -1;
    }

    else
    {
      sub_1C90638EC();
      v12 = *(v9 + 16);
    }

    v13 = *v9;
    v14 = *(v9 + 8);
    *v9 = v16;
    *(v9 + 8) = v18;
    *(v9 + 16) = v10;
    return sub_1C8D06DF8(v13, v14, v12);
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  if (*(v0 + 16) == 255 || ((v2 = OUTLINED_FUNCTION_3_4(), (v3 & 1) == 0) ? (result = sub_1C8FC3908(v2)) : (result = sub_1C8FC3954(v2)), !v1))
  {
    type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
    return OUTLINED_FUNCTION_52_17();
  }

  return result;
}

uint64_t sub_1C8FC3908(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != 255 && (v1 & 1) == 0)
  {
    return sub_1C9063B8C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FC3954(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != 255 && (v1 & 1) != 0)
  {
    return sub_1C9063B8C();
  }

  __break(1u);
  return result;
}

uint64_t static ToolKitProtoToolSummaryString.Component.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v2 != 255)
  {
    v40[0] = *v0;
    v40[1] = v1;
    v41 = v2;
    if (v6 != 255)
    {
      v38[0] = v5;
      v38[1] = v4;
      v39 = v6 & 1;
      v7 = OUTLINED_FUNCTION_100();
      sub_1C8D06DE0(v7, v8, v2);
      v9 = OUTLINED_FUNCTION_203();
      sub_1C8D06DE0(v9, v10, v6);
      v11 = OUTLINED_FUNCTION_100();
      sub_1C8D06DE0(v11, v12, v2);
      v13 = static ToolKitProtoToolSummaryString.ToolKitProtoComponentKind.== infix(_:_:)(v40, v38);
      j_j__OUTLINED_FUNCTION_265();
      j_j__OUTLINED_FUNCTION_265();
      v14 = OUTLINED_FUNCTION_100();
      sub_1C8D06DF8(v14, v15, v2);
      if (v13)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v20 = OUTLINED_FUNCTION_100();
    sub_1C8D06DE0(v20, v21, v2);
    v22 = OUTLINED_FUNCTION_203();
    sub_1C8D06DE0(v22, v23, 255);
    v24 = OUTLINED_FUNCTION_100();
    sub_1C8D06DE0(v24, v25, v2);
    OUTLINED_FUNCTION_100();
    j_j__OUTLINED_FUNCTION_265();
LABEL_8:
    v26 = OUTLINED_FUNCTION_100();
    sub_1C8D06DF8(v26, v27, v2);
    v28 = OUTLINED_FUNCTION_203();
    sub_1C8D06DF8(v28, v29, v6);
    return 0;
  }

  v16 = OUTLINED_FUNCTION_100();
  sub_1C8D06DE0(v16, v17, 255);
  if (v6 != 255)
  {
    v18 = OUTLINED_FUNCTION_203();
    sub_1C8D06DE0(v18, v19, v6);
    goto LABEL_8;
  }

  v31 = OUTLINED_FUNCTION_203();
  sub_1C8D06DE0(v31, v32, 255);
  v33 = OUTLINED_FUNCTION_100();
  sub_1C8D06DF8(v33, v34, 255);
LABEL_11:
  type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_1_76();
  v37 = sub_1C8CD1B00(v35, v36, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v37) & 1;
}

uint64_t sub_1C8FC3BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4D8, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC3C44(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31A000, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC3CB4(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31A000, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC3D4C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B6C8);
  __swift_project_value_buffer(v0, qword_1EC31B6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visibleParameterKeys";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "invisibleParameterKeys";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "valueConstraints";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoToolInvocationSignature.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_5_39();
      sub_1C8FC4004(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C90639CC();
    }
  }

  return result;
}

uint64_t sub_1C8FC4004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C90637BC();
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  sub_1C8CD1B00(&qword_1EC31C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  sub_1C8CD1B00(&qword_1EC31C5B0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  return sub_1C90638CC();
}

void ToolKitProtoToolInvocationSignature.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_4_36();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_17_25(), sub_1C9063B6C(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_17_25(), sub_1C9063B6C(), !v1))
    {
      OUTLINED_FUNCTION_346_2();
      if (!v3 || (sub_1C90637BC(), type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0), sub_1C8CD1B00(&qword_1EC31C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations), sub_1C8CD1B00(&qword_1EC31C5B0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations), OUTLINED_FUNCTION_146_6(), sub_1C9063ADC(), !v1))
      {
        type metadata accessor for ToolKitProtoToolInvocationSignature(0);
        OUTLINED_FUNCTION_53_15();
      }
    }
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t static ToolKitProtoToolInvocationSignature.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_96_6(a1);
  sub_1C8CEB10C(v3, *v4);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v2 + 8), *(v1 + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1C8F560FC(*(v2 + 16), *(v1 + 16));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoToolInvocationSignature(0);
  OUTLINED_FUNCTION_327_1();
  OUTLINED_FUNCTION_1_76();
  v10 = sub_1C8CD1B00(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v10) & 1;
}

uint64_t sub_1C8FC4374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4D0, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC43F4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CF20, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC4464(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CF20, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC44E4()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CE700);
  qword_1EC31B6E0 = 0xD00000000000001FLL;
  *algn_1EC31B6E8 = 0x80000001C90CD530;
  return result;
}

void ToolKitProtoToolInvocationSignature.ListOfRelations.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void ToolKitProtoToolInvocationSignature.ListOfRelations.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v4 || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0), sub_1C8CD1B00(&qword_1EDA63B68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v3))
  {
    type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC47C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4C8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC4840(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC48B0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC4948()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B708);
  __swift_project_value_buffer(v0, qword_1EC31B708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phrases";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedResult";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "negativePhrases";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoSampleInvocationDefinition.decodeMessage<A>(decoder:)()
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
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639CC();
        break;
    }
  }
}

uint64_t ToolKitProtoSampleInvocationDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B6C(), !v1))
  {
    v4 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8CE2E28(v4);
    if (!v1)
    {
      if (*(*(v2 + 8) + 16))
      {
        OUTLINED_FUNCTION_17_25();
        sub_1C9063B6C();
      }

      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      return OUTLINED_FUNCTION_53_15();
    }
  }

  return result;
}

uint64_t static ToolKitProtoSampleInvocationDefinition.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_96_6(a1);
  sub_1C8CEB10C(v3, *v4);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_371_0();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_272_1();
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_1C8CEB10C(*(v2 + 8), *(v1 + 8));
  if (v11)
  {
    type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
    OUTLINED_FUNCTION_327_1();
    OUTLINED_FUNCTION_1_76();
    v14 = sub_1C8CD1B00(v12, v13, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_12_28(v14) & 1;
  }

  return 0;
}

uint64_t sub_1C8FC4DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4C0, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC4E70(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA61050, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC4EE0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA61050, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC4F78()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B720);
  __swift_project_value_buffer(v0, qword_1EC31B720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoAssistantSchemaVersion.decodeMessage<A>(decoder:)()
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

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C9063A2C();
    }
  }

  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063BAC(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063BAC(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063BAC(), !v1))
      {
        type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
        return OUTLINED_FUNCTION_53_15();
      }
    }
  }

  return result;
}

uint64_t static ToolKitProtoAssistantSchemaVersion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_330_2();
  if (!v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  if (*(v1 + 8) != *(v2 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_337_2();
  if (!v0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  OUTLINED_FUNCTION_327_1();
  OUTLINED_FUNCTION_1_76();
  v5 = sub_1C8CD1B00(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_12_28(v5) & 1;
}

uint64_t sub_1C8FC53EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4B8, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC546C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA611C8, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC54DC(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EDA611C8, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC5574()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B738);
  __swift_project_value_buffer(v0, qword_1EC31B738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "domain";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FC57F4()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_278_3();
        sub_1C9063A0C();
        break;
      case 2:
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_305_1();
        v0();
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_177_5();
        v2(v5);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8FC588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  sub_1C8CD1B00(&qword_1EDA611C8, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoAssistantSchemaIdentifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v1 || (OUTLINED_FUNCTION_23_29(), result = sub_1C9063B8C(), !v0))
  {
    v3 = OUTLINED_FUNCTION_2_55();
    result = sub_1C8FC59C8(v3, v4, v5, v6);
    if (!v0)
    {
      OUTLINED_FUNCTION_36_21();
      if (v7)
      {
        OUTLINED_FUNCTION_10_33();
        sub_1C9063B8C();
      }

      type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
      return OUTLINED_FUNCTION_53_15();
    }
  }

  return result;
}

uint64_t sub_1C8FC59C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8D16D78(v6, &qword_1EC313F28, &qword_1C9072058);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA611C8, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
}

void static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v5 = OUTLINED_FUNCTION_55_3();
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(v5);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C5D0, &qword_1C90AC0A8);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_72();
  v13 = *v1 == *v0 && v1[1] == v0[1];
  if (!v13 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_28;
  }

  v14 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_276_2(v14);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_191(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_191(v2 + v4);
    if (v13)
    {
      sub_1C8D16D78(v2, &qword_1EC313F28, &qword_1C9072058);
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(v2 + v4);
  if (v20)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_20:
    v21 = &qword_1EC31C5D0;
    v22 = &qword_1C90AC0A8;
LABEL_27:
    sub_1C8D16D78(v2, v21, v22);
LABEL_28:
    v19 = 0;
    goto LABEL_29;
  }

  sub_1C900BE74();
  if (*v3 != *v9 || v3[1] != v9[1] || v3[2] != v9[2])
  {
    sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
    OUTLINED_FUNCTION_335_1();
    v21 = &qword_1EC313F28;
    v22 = &qword_1C9072058;
    goto LABEL_27;
  }

  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v23, v24, MEMORY[0x1E69AAC10]);
  v25 = sub_1C9063EAC();
  sub_1C8CD20B4(v9, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_1C8D16D78(v2, &qword_1EC313F28, &qword_1C9072058);
  if ((v25 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  v15 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v15 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_303_2();
  OUTLINED_FUNCTION_1_76();
  v18 = sub_1C8CD1B00(v16, v17, MEMORY[0x1E69AAC10]);
  v19 = OUTLINED_FUNCTION_265_2(v18);
LABEL_29:
  OUTLINED_FUNCTION_50_0(v19);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FC5F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4B0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC5FF0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC6060(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FC60F8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B750);
  __swift_project_value_buffer(v0, qword_1EC31B750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
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
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "sampleInvocations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "outputType";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoAssistantToolSchemaDefinition.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC6568(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC661C(v7, v8, v9, v10, v11, v12);
        break;
      case 4:
        OUTLINED_FUNCTION_17_34();
        sub_1C8FC6684();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6C148();
        break;
      case 6:
        v13 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC66D0(v13, v14, v15, v16);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FC6568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FC661C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = OUTLINED_FUNCTION_41_15();
  v8(v7);
  OUTLINED_FUNCTION_29_18();
  return a6();
}

void sub_1C8FC6684()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A3C();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8FC66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoAssistantToolSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_340_2();
  v4 = OUTLINED_FUNCTION_7_48();
  sub_1C8FC68C4(v4, v5, v6, v7);
  if (!v3)
  {
    OUTLINED_FUNCTION_36_21();
    if (v8)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    v9 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC6A98(v9);
    OUTLINED_FUNCTION_346_2();
    if (v10)
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
      OUTLINED_FUNCTION_74_5();
      sub_1C8CD1B00(v11, v12, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_367_0();
    if (v13)
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      OUTLINED_FUNCTION_47_18();
      sub_1C8CD1B00(v14, v15, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v16 = OUTLINED_FUNCTION_2_55();
    sub_1C8FC6B10(v16, v17, v18, v19);
    type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8FC68C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
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

uint64_t sub_1C8FC6A98(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8FC6B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
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

void static ToolKitProtoAssistantToolSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_41_15();
  v58 = type metadata accessor for ToolKitProtoTypeInstance(v4);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86_7(v9, v54);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A60, &unk_1C9068E40);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_120_7(v11, v55);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_51_15();
  v13 = OUTLINED_FUNCTION_112();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_9(v15);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_73();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C108, &qword_1C90ABF68) - 8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_109_0();
  v60 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(v19);
  v20 = *(v17 + 56);
  OUTLINED_FUNCTION_138_6();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_138_6();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v1);
  if (v21)
  {
    OUTLINED_FUNCTION_54_15(v1 + v20);
    if (v21)
    {
      sub_1C8D16D78(v1, &qword_1EC313F20, &unk_1C9074D20);
      goto LABEL_14;
    }

LABEL_9:
    v22 = &qword_1EC31C108;
    v23 = &qword_1C90ABF68;
    v24 = v1;
LABEL_10:
    sub_1C8D16D78(v24, v22, v23);
    goto LABEL_11;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v1 + v20);
  if (v21)
  {
    OUTLINED_FUNCTION_129_6();
    goto LABEL_9;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_300();
  static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)();
  v27 = v26;
  v28 = OUTLINED_FUNCTION_380_0();
  sub_1C8CD20B4(v28, v29);
  v30 = OUTLINED_FUNCTION_398();
  sub_1C8CD20B4(v30, v31);
  sub_1C8D16D78(v1, &qword_1EC313F20, &unk_1C9074D20);
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v32 = *v0 == *v3 && v0[1] == v3[1];
  if (!v32 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v33 = *(v60 + 32);
  v34 = *(v3 + v33 + 8);
  if (*(v0 + v33 + 8))
  {
    if (!v34)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_105_5(v0 + v33);
    v37 = v21 && v35 == v36;
    if (!v37 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v34)
  {
    goto LABEL_11;
  }

  sub_1C8CED650(v0[2], v3[2]);
  if ((v38 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1C8CEDC30();
  if ((v39 & 1) == 0)
  {
    goto LABEL_11;
  }

  v40 = *(v57 + 48);
  OUTLINED_FUNCTION_362_1();
  OUTLINED_FUNCTION_362_1();
  v41 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_108_2(v41, v42, v58);
  if (v21)
  {
    OUTLINED_FUNCTION_54_15(v59 + v40);
    if (v21)
    {
      sub_1C8D16D78(v59, &qword_1EC312A58, &unk_1C9074CC0);
LABEL_40:
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v52, v53, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_257_2();
      v25 = sub_1C9063EAC();
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_54_15(v59 + v40);
  if (v43)
  {
    OUTLINED_FUNCTION_5_52();
    sub_1C8CD20B4(v56, v44);
LABEL_38:
    v22 = &qword_1EC312A60;
    v23 = &unk_1C9068E40;
    v24 = v59;
    goto LABEL_10;
  }

  sub_1C900BE74();
  v45 = OUTLINED_FUNCTION_378();
  v47 = static ToolKitProtoTypeInstance.== infix(_:_:)(v45, v46);
  v48 = OUTLINED_FUNCTION_209();
  sub_1C8CD20B4(v48, v49);
  v50 = OUTLINED_FUNCTION_347();
  sub_1C8CD20B4(v50, v51);
  sub_1C8D16D78(v59, &qword_1EC312A58, &unk_1C9074CC0);
  if (v47)
  {
    goto LABEL_40;
  }

LABEL_11:
  v25 = 0;
LABEL_12:
  OUTLINED_FUNCTION_50_0(v25);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FC7238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D4A8, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FC72B8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CF60, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FC7328(uint64_t a1, uint64_t a2)
{
  sub_1C8CD1B00(&qword_1EC31CF60, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_1C9063ABC();
}