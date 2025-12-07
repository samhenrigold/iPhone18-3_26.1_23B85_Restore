void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v0 = OUTLINED_FUNCTION_252_3();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v0);
  OUTLINED_FUNCTION_880(v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_522_0();
    sub_1C89681C4();
    OUTLINED_FUNCTION_951(v2);
  }

  v3 = OUTLINED_FUNCTION_9_4();
  sub_1C896DCA0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C896DCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C896DD08(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1C896DD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C896DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C8778ED8(v6, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4E2C();
  return sub_1C88E3C58();
}

BOOL sub_1C896E018(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v2);
  v23[0] = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - v12;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v14 = *(v5 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) != 1)
  {
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(&v7[v14], 1, v2) != 1)
    {
      v19 = v23[0];
      sub_1C88E3EC4();
      if (*&v11[*(v2 + 20)] == *(v19 + *(v2 + 20)) || (, , sub_1C896B338(), v21 = v20, , , (v21 & 1) != 0))
      {
        sub_1C8BD49FC();
        sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v22 = sub_1C8BD517C();
        sub_1C88E3C58();
        sub_1C8778ED8(v13, &qword_1EC2B60D8, &qword_1C8BE6D88);
        sub_1C88E3C58();
        sub_1C8778ED8(v7, &qword_1EC2B60D8, &qword_1C8BE6D88);
        return (v22 & 1) != 0;
      }

      sub_1C88E3C58();
      sub_1C8778ED8(v13, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3C58();
      v17 = v7;
      v15 = &qword_1EC2B60D8;
      v16 = &qword_1C8BE6D88;
LABEL_7:
      sub_1C8778ED8(v17, v15, v16);
      return 0;
    }

    sub_1C8778ED8(v13, &qword_1EC2B60D8, &qword_1C8BE6D88);
    sub_1C88E3C58();
LABEL_6:
    v15 = &qword_1EC2B60E0;
    v16 = &qword_1C8BE6D90;
    v17 = v7;
    goto LABEL_7;
  }

  sub_1C8778ED8(v13, &qword_1EC2B60D8, &qword_1C8BE6D88);
  if (__swift_getEnumTagSinglePayload(&v7[v14], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_1C8778ED8(v7, &qword_1EC2B60D8, &qword_1C8BE6D88);
  return 1;
}

uint64_t sub_1C896E4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD450, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C896E568(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD48, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C896E5D8(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBD48, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C896E658()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C25200);
  qword_1EC2B9AD8 = 0xD00000000000002BLL;
  unk_1EC2B9AE0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C896E6EC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9AE8);
  __swift_project_value_buffer(v0, qword_1EC2B9AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inSet";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "representableAs";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "personReachableAs";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dateExpressibleAs";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "textTypedWith";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C896EA54(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_33_4();
        sub_1C896EF0C(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C896F3C8(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_33_4();
        sub_1C896F574(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C896F720(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C896EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD768, &qword_1C8C0A610);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v19, &qword_1EC2BD768, &qword_1C8C0A610);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BBD70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD768, &qword_1C8C0A610);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD768, &qword_1C8C0A610);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6098, &qword_1C8BFAAC0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C896EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD770, &qword_1C8C0A618);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD770, &qword_1C8C0A618);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDE0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD770, &qword_1C8C0A618);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD770, &qword_1C8C0A618);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6098, &qword_1C8BFAAC0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C896F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v16 = a1;
  sub_1C89CBE2C();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_1C8778ED8(v8, &qword_1EC2B6098, &qword_1C8BFAAC0);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v4))
  {
    v14 = 0;
    v15 = 256;
    sub_1C89DF358();
    result = sub_1C8BD4B4C();
    if (!v4 && (v15 & 0x100) == 0)
    {
      v11 = v15;
      v12 = v14;
      v13 = v16;
      sub_1C8778ED8(v16, &qword_1EC2B6098, &qword_1C8BFAAC0);
      *v13 = v12;
      *(v13 + 8) = v11 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1C896F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v16 = a1;
  sub_1C89CBE2C();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_1C8778ED8(v8, &qword_1EC2B6098, &qword_1C8BFAAC0);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v4))
  {
    v14 = 0;
    v15 = 256;
    sub_1C89DF304();
    result = sub_1C8BD4B4C();
    if (!v4 && (v15 & 0x100) == 0)
    {
      v11 = v15;
      v12 = v14;
      v13 = v16;
      sub_1C8778ED8(v16, &qword_1EC2B6098, &qword_1C8BFAAC0);
      *v13 = v12;
      *(v13 + 8) = v11 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1C896F720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD778, &qword_1C8C0A620);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD778, &qword_1C8C0A620);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD778, &qword_1C8C0A620);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD778, &qword_1C8C0A620);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6098, &qword_1C8BFAAC0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v27 = OUTLINED_FUNCTION_9_4();
        sub_1C896FF04(v27, v28, v29, v30);
        goto LABEL_12;
      case 2:
        v19 = OUTLINED_FUNCTION_9_4();
        sub_1C8970118(v19, v20, v21, v22);
        goto LABEL_9;
      case 3:
        v23 = OUTLINED_FUNCTION_9_4();
        sub_1C897027C(v23, v24, v25, v26);
LABEL_9:
        if (!v3)
        {
          break;
        }

        goto LABEL_13;
      case 4:
        v15 = OUTLINED_FUNCTION_9_4();
        sub_1C89703E0(v15, v16, v17, v18);
        goto LABEL_12;
      default:
        v11 = OUTLINED_FUNCTION_9_4();
        sub_1C896FCF4(v11, v12, v13, v14);
LABEL_12:
        OUTLINED_FUNCTION_249_1();
        sub_1C88E3C58();
        if (v3)
        {
          goto LABEL_13;
        }

        break;
    }
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(0);
  OUTLINED_FUNCTION_113_1();
LABEL_13:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C896FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBD70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C896FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDE0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8970118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v8 = v6[8];
      v10 = *v6;
      v11 = v8;
      sub_1C89DF358();
      return sub_1C8BD4D4C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C897027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v8 = v6[8];
      v10 = *v6;
      v11 = v8;
      sub_1C89DF304();
      return sub_1C8BD4D4C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89703E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A0, &qword_1C8BE6D50);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_249_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B60A0, &qword_1C8BE6D50);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8970874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD448, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89708F4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB160, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8970964(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB160, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89709E4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B00);
  __swift_project_value_buffer(v0, qword_1EC2B9B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PersonReachableAs_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PersonReachableAs_CONTACT";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PersonReachableAs_PHONE";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PersonReachableAs_EMAIL";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PersonReachableAs_EMAILORPHONE";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8970C9C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B18);
  __swift_project_value_buffer(v0, qword_1EC2B9B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DateExpressibleAs_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

uint64_t sub_1C8970F14()
{
  if (qword_1EC2B5540 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9AD8;
  v2 = unk_1EC2B9AE0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x7465536E492ELL, 0xE600000000000000);

  qword_1EC2B9B30 = v1;
  *algn_1EC2B9B38 = v2;
  return result;
}

uint64_t sub_1C8970FD4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B40);
  __swift_project_value_buffer(v0, qword_1EC2B9B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8971214()
{
  OUTLINED_FUNCTION_529_0();
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = OUTLINED_FUNCTION_578();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_578();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_1C8971288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  sub_1C8776818(&qword_1EC2BB180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C897133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_1C8776818(&qword_1EC2BAFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1059(v13, v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAC0, &qword_1C8BFA9D8);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_17_4();
  v36 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_115_3(v20, v35);
  v21 = OUTLINED_FUNCTION_315();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_80(v23);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_278_1();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v26);
  OUTLINED_FUNCTION_615();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v27, v28, v29);
  if (v30)
  {
    sub_1C8778ED8(v10, &qword_1EC2BAC58, &qword_1C8BFAAD0);
  }

  else
  {
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_251_0();
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);
    OUTLINED_FUNCTION_768();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_521();
    sub_1C88E3C58();
    if (v11)
    {
      goto LABEL_10;
    }
  }

  sub_1C89CBE2C();
  v31 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_76(v31, v32, v36);
  if (v30)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
LABEL_9:
    OUTLINED_FUNCTION_611();
    sub_1C8BD49DC();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_5();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_843();
  sub_1C8776818(v33, v34, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_248_2();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_242_2();
  sub_1C88E3C58();
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8971724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89717A4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8971814(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBD70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8971894()
{
  if (qword_1EC2B5560 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9B30;
  v2 = *algn_1EC2B9B38;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x655365756C61562ELL, 0xE900000000000074);

  qword_1EC2B9B58 = v1;
  unk_1EC2B9B60 = v2;
  return result;
}

uint64_t sub_1C897195C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B68);
  __swift_project_value_buffer(v0, qword_1EC2B9B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8971D40();
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_33_4();
        sub_1C8971D90(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C8972248(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C8972704(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C8972BC0(v3, v4, v5, v6);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_33_4();
        sub_1C8972D54(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8971D40()
{
  OUTLINED_FUNCTION_534_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_329_0(v2);
  OUTLINED_FUNCTION_1076();
  OUTLINED_FUNCTION_55();
  return v0();
}

uint64_t sub_1C8971D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD750, &qword_1C8C0A5F8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v19, &qword_1EC2BD750, &qword_1C8C0A5F8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BBD98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD750, &qword_1C8C0A5F8);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD750, &qword_1C8C0A5F8);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8972248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD758, &qword_1C8C0A600);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD758, &qword_1C8C0A600);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD758, &qword_1C8C0A600);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD758, &qword_1C8C0A600);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8972704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD760, &qword_1C8C0A608);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD760, &qword_1C8C0A608);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD760, &qword_1C8C0A608);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD760, &qword_1C8C0A608);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8972BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v16 = a1;
  sub_1C89CBE2C();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_1C8778ED8(v8, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v4))
  {
    v14 = 0;
    v15 = 0;
    result = sub_1C8BD4C1C();
    v11 = v15;
    if (v4)
    {
    }

    else if (v15)
    {
      v12 = v14;
      v13 = v16;
      sub_1C8778ED8(v16, &qword_1EC2BAC68, &qword_1C8BFAAE0);
      *v13 = v12;
      v13[1] = v11;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1C8972D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD760, &qword_1C8C0A608);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD760, &qword_1C8C0A608);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD760, &qword_1C8C0A608);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD760, &qword_1C8C0A608);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_50_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v8);
  OUTLINED_FUNCTION_1148();
  if (!*(v3 + v9 + 8) || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v4))
  {
    sub_1C89CBE2C();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
    OUTLINED_FUNCTION_19(v5);
    if (!v10)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C89735A0(v27, v28, v29, v30);
          goto LABEL_11;
        case 2u:
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C89737B4(v19, v20, v21, v22);
          goto LABEL_11;
        case 3u:
          OUTLINED_FUNCTION_189_2();
          sub_1C88E3C58();
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C89739C8(v23, v24, v25, v26);
          if (!v4)
          {
            break;
          }

          goto LABEL_13;
        case 4u:
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C8973B1C(v15, v16, v17, v18);
          goto LABEL_11;
        default:
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C8973390(v11, v12, v13, v14);
LABEL_11:
          OUTLINED_FUNCTION_189_2();
          sub_1C88E3C58();
          if (!v4)
          {
            break;
          }

          goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_69();
  }

LABEL_13:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8973390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBD98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89735A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89737B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89739C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8BD4DDC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8973B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB190, &qword_1C8BFAD08);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v7);
  OUTLINED_FUNCTION_1();
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v9);
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v8)
  {
    goto LABEL_19;
  }

  v14 = *(v1 + 48);
  OUTLINED_FUNCTION_307();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_17_6(v0);
  if (v13)
  {
    OUTLINED_FUNCTION_17_6(v0 + v14);
    if (v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_22:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v21 = sub_1C8776818(v19, v20, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_64_0(v21);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_268();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_17_6(v0 + v14);
  if (v15)
  {
    OUTLINED_FUNCTION_189_2();
    sub_1C88E3C58();
LABEL_18:
    sub_1C8778ED8(v0, &qword_1EC2BB190, &qword_1C8BFAD08);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1107();
  OUTLINED_FUNCTION_100();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind.== infix(_:_:)();
  v18 = v17;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_229();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  if (v18)
  {
    goto LABEL_22;
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  OUTLINED_FUNCTION_157(v16);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8974020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD438, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89740A0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8974110(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8974190()
{
  if (qword_1EC2B5570 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9B58;
  v2 = unk_1EC2B9B60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C24FC0);

  qword_1EC2B9B80 = v1;
  *algn_1EC2B9B88 = v2;
  return result;
}

uint64_t sub_1C8974258()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B90);
  __swift_project_value_buffer(v0, qword_1EC2B9B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void sub_1C8974480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1065();
  v6 = v5;
  OUTLINED_FUNCTION_60_4();
  if (!v7 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v4))
  {
    OUTLINED_FUNCTION_88_0();
    if (!v8 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v4))
    {
      v6(0);
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C897457C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD430, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89745FC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C897466C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBD98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89746EC()
{
  if (qword_1EC2B5570 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9B58;
  v2 = unk_1EC2B9B60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001ELL, 0x80000001C8C24F90);

  qword_1EC2B9BA8 = v1;
  unk_1EC2B9BB0 = v2;
  return result;
}

uint64_t sub_1C89747B4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9BB8);
  __swift_project_value_buffer(v0, qword_1EC2B9BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemClass";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyName";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_465();
      sub_1C8BD4C2C();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8974A18(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C8974A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_692();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v6);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211_3();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  OUTLINED_FUNCTION_1148();
  OUTLINED_FUNCTION_915(v8);
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v1);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAC78, &qword_1C8BFAAF0);
  }

  else
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_829();
    sub_1C8776818(v10, v11, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
    OUTLINED_FUNCTION_225_1();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_188_1();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_88_0();
  if (!v12 || (sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_301_1();
    sub_1C8BD49DC();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8974CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8974D78(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBDB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8974DE8(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBDB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8974E68()
{
  if (qword_1EC2B5570 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9B58;
  v2 = unk_1EC2B9B60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6575516B6E694C2ELL, 0xEA00000000007972);

  qword_1EC2B9BD0 = v1;
  *algn_1EC2B9BD8 = v2;
  return result;
}

uint64_t sub_1C8974F30()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9BE0);
  __swift_project_value_buffer(v0, qword_1EC2B9BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "parameterKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "queryIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "actionIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 5 || result == 4)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60_4();
  if (!v1 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_88_0();
    if (!v3 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
    {
      OUTLINED_FUNCTION_88_0();
      if (!v4 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
      {
        type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
        return OUTLINED_FUNCTION_69();
      }
    }
  }

  return result;
}

uint64_t sub_1C897530C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD420, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C897538C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89753FC(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C897547C()
{
  if (qword_1EC2B5540 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9AD8;
  v2 = unk_1EC2B9AE0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C24F40);

  qword_1EC2B9BF8 = v1;
  unk_1EC2B9C00 = v2;
  return result;
}

void sub_1C89755C4()
{
  OUTLINED_FUNCTION_178_1();
  v3 = v2;
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_0_1(), sub_1C8BD4DAC(), !v1))
  {
    v3(0);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89756A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD418, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8975724(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBDE0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8975794(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBDE0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8975814()
{
  if (qword_1EC2B5540 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9AD8;
  v2 = unk_1EC2B9AE0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x707954747865542ELL, 0xEE00687469576465);

  qword_1EC2B9C20 = v1;
  *algn_1EC2B9C28 = v2;
  return result;
}

uint64_t sub_1C89758E4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9C30);
  __swift_project_value_buffer(v0, qword_1EC2B9C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "multiline_allowed";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "smart_quotes_enabled";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "smart_dashes_enabled";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "keyboard_type";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "autocorrection_type";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "capitalization_type";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4B3C();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8975C8C(v7, v8, v9, v10);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8975CF4(v3, v4, v5, v6);
        break;
      case 6:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C8975D5C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (*v0 != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
  {
    if (*(v2 + 1) != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
    {
      if (*(v2 + 2) != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
      {
        if (!*(v2 + 8) || (OUTLINED_FUNCTION_940(), sub_1C89CC0B8(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v1))
        {
          if (!*(v2 + 24) || (OUTLINED_FUNCTION_940(), sub_1C89CC10C(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v1))
          {
            if (!*(v2 + 40) || (OUTLINED_FUNCTION_940(), sub_1C89CC160(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v1))
            {
              type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(0);
              return OUTLINED_FUNCTION_69();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C8975FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD410, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8976030(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBDF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89760A0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBDF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8976120()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9C48);
  __swift_project_value_buffer(v0, qword_1EC2B9C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AutocorrectionType_DEFAULT";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AutocorrectionType_ON";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AutocorrectionType_OFF";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8976360()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9C60);
  __swift_project_value_buffer(v0, qword_1EC2B9C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KeyboardType_DEFAULT";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KeyboardType_ASCII_CAPABLE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KeyboardType_NUMBERS_AND_PUNCTUATION";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "KeyboardType_URL";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "KeyboardType_NUMBER_PAD";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "KeyboardType_PHONE_PAD";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "KeyboardType_NAME_PHONE_PAD";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "KeyboardType_EMAIL_ADDRESS";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "KeyboardType_DECIMAL_PAD";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "KeyboardType_TWITTER";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "KeyboardType_WEB_SEARCH";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "KeyboardType_ASCII_CAPABLE_NUMBER_PAD";
  *(v30 + 1) = 37;
  v30[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89767CC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9C78);
  __swift_project_value_buffer(v0, qword_1EC2B9C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CapitalizationType_NONE";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CapitalizationType_WORDS";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CapitalizationType_SENTENCES";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CapitalizationType_ALL_CHARACTERS";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8976A48()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001BLL, 0x80000001C8C24BD0);
  qword_1EC2B9C90 = 0xD00000000000002BLL;
  *algn_1EC2B9C98 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C8976ADC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9CA0);
  __swift_project_value_buffer(v0, qword_1EC2B9CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "regularContentItemClass";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkEntityContentItemClass";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "linkEnumContentItemClass";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C8977280(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C8976DC4(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_36_6();
        sub_1C8955054();
        break;
    }
  }
}

uint64_t sub_1C8976DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD740, &qword_1C8C0A5E8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD740, &qword_1C8C0A5E8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBE20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD740, &qword_1C8C0A5E8);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD740, &qword_1C8C0A5E8);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAC88, &qword_1C8BFAB00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8977280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD748, &qword_1C8C0A5F0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v19, &qword_1EC2BD748, &qword_1C8C0A5F0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBE38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2BD748, &qword_1C8C0A5F0);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2BD748, &qword_1C8C0A5F0);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BAC88, &qword_1C8BFAB00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (v9)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_104_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_246_1();
    sub_1C88E3C58();
    v15 = OUTLINED_FUNCTION_9_4();
    sub_1C8977830(v15, v16, v17, v18);
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = OUTLINED_FUNCTION_9_4();
    sub_1C8977980(v11, v12, v13, v14);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_9_4();
    sub_1C8977B94(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_246_1();
  sub_1C88E3C58();
  if (!v3)
  {
LABEL_3:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
    OUTLINED_FUNCTION_113_1();
  }

LABEL_11:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8977830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C8BD4DDC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8977980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBE20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8977B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBE38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB1E8, &qword_1C8BFAD10);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_246_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB1E8, &qword_1C8BFAD10);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8978028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD408, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89780A8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8978118(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8978198()
{
  if (qword_1EC2B55E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9C90;
  v2 = *algn_1EC2B9C98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001BLL, 0x80000001C8C24B50);

  qword_1EC2B9CB8 = v1;
  unk_1EC2B9CC0 = v2;
  return result;
}

uint64_t sub_1C8978260()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9CC8);
  __swift_project_value_buffer(v0, qword_1EC2B9CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C897851C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C897859C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBE20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C897860C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBE20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C897868C()
{
  if (qword_1EC2B55E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9C90;
  v2 = *algn_1EC2B9C98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000019, 0x80000001C8C24B30);

  qword_1EC2B9CE0 = v1;
  *algn_1EC2B9CE8 = v2;
  return result;
}

uint64_t sub_1C8978754()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9CF0);
  __swift_project_value_buffer(v0, qword_1EC2B9CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8978954()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

uint64_t sub_1C8978A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8978AD8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBE38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8978B48(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBE38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8978BC8()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000014, 0x80000001C8C24B10);
  qword_1EC2B9D08 = 0xD00000000000002BLL;
  unk_1EC2B9D10 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C8978C5C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9D18);
  __swift_project_value_buffer(v0, qword_1EC2B9D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

uint64_t sub_1C8978F08()
{
  v1 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__property;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__comparison;
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__contentItemClass;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  return v0;
}

uint64_t sub_1C8978FA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BACA8, &qword_1C8BFAB18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC98, &qword_1C8BFAB10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__property;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__comparison;
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__contentItemClass;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v14 = (a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  swift_beginAccess();
  *v11 = v16;
  v11[1] = v15;

  swift_beginAccess();
  sub_1C89CBE2C();

  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C8979300()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__property, &qword_1EC2BAC98, &qword_1C8BFAB10);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__comparison, &unk_1EC2BACA8, &qword_1C8BFAB18);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__contentItemClass, &qword_1EC2BAC78, &qword_1C8BFAAF0);
  return v0;
}

uint64_t sub_1C897940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C8979514(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C89795F0(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C89AF0A0();
        break;
      case 4:
        sub_1C89796CC(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8979514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  sub_1C8776818(&qword_1EC2BAF68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89795F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  sub_1C8776818(&qword_1EC2BBE60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89796CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89797E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = v23 - v6;
  v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  MEMORY[0x1EEE9AC00](v25);
  v23[1] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BACA8, &qword_1C8BFAB18);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - v9;
  v27 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC98, &qword_1C8BFAB10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v23 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAC98, &qword_1C8BFAB10);
    v16 = v28;
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BAF68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);
    v17 = v28;
    sub_1C8BD4E2C();
    v16 = v17;
    result = sub_1C88E3C58();
    if (v17)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v27) == 1)
  {
    sub_1C8778ED8(v10, &unk_1EC2BACA8, &qword_1C8BFAB18);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BBE60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison);
    sub_1C8BD4E2C();
    result = sub_1C88E3C58();
    if (v16)
    {
      return result;
    }
  }

  v19 = (a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  swift_beginAccess();
  v20 = v19[1];
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21 || (, sub_1C8BD4DDC(), result = , !v16))
  {
    swift_beginAccess();
    v22 = v24;
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
    {
      return sub_1C8778ED8(v22, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    }

    else
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }
  }

  return result;
}

void sub_1C8979DAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v24;
  a20 = v25;
  v117 = v26;
  v28 = v27;
  v29 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  v30 = OUTLINED_FUNCTION_265_2(v29, &v119);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC80, &qword_1C8BFAAF8);
  OUTLINED_FUNCTION_265_2(v32, &v118);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  v36 = OUTLINED_FUNCTION_80(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_96();
  v39 = OUTLINED_FUNCTION_63_0(v38);
  v40 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(v39);
  v41 = OUTLINED_FUNCTION_265_2(v40, &a11);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD878, &unk_1C8C0A720);
  OUTLINED_FUNCTION_265_2(v43, &a10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BACA8, &qword_1C8BFAB18);
  v47 = OUTLINED_FUNCTION_80(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_96();
  v50 = OUTLINED_FUNCTION_63_0(v49);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v50);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB240, &unk_1C8BFAD28);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_525();
  v54 = OUTLINED_FUNCTION_121();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
  v57 = OUTLINED_FUNCTION_80(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_34();
  v60 = (v58 - v59);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_783();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  sub_1C89CBE2C();
  v62 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__property;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v63 = *(v21 + 56);
  OUTLINED_FUNCTION_233();
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v23);
  if (v65)
  {

    sub_1C8778ED8(v22, &qword_1EC2BAC98, &qword_1C8BFAB10);
    OUTLINED_FUNCTION_19(v23 + v63);
    v64 = v28;
    if (v65)
    {
      sub_1C8778ED8(v23, &qword_1EC2BAC98, &qword_1C8BFAB10);
      goto LABEL_13;
    }

LABEL_9:
    v66 = &qword_1EC2BB240;
    v67 = &unk_1C8BFAD28;
    v68 = v23;
LABEL_22:
    sub_1C8778ED8(v68, v66, v67);
    goto LABEL_23;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v23 + v63);
  if (v65)
  {

    sub_1C8778ED8(v22, &qword_1EC2BAC98, &qword_1C8BFAB10);
    OUTLINED_FUNCTION_340();
    sub_1C88E3C58();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_1042();
  v69 = *(v20 + 20);
  v70 = *(v60 + v69);
  v71 = *(v62 + v69);

  if (v70 != v71)
  {

    OUTLINED_FUNCTION_218();
    sub_1C894A748();
    OUTLINED_FUNCTION_511();

    if ((&qword_1EC2BAC98 & 1) == 0)
    {
      OUTLINED_FUNCTION_839();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_615();
      sub_1C8778ED8(v99, v100, v101);
      OUTLINED_FUNCTION_118();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_615();
      sub_1C8778ED8(v102, v103, v104);
      goto LABEL_23;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v72, v73, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_168_0();
  v74 = sub_1C8BD517C();
  sub_1C88E3C58();
  v75 = OUTLINED_FUNCTION_292();
  sub_1C8778ED8(v75, v76, &qword_1C8BFAB10);
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v23, &qword_1EC2BAC98, &qword_1C8BFAB10);
  v64 = v28;
  if ((v74 & 1) == 0)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_13:
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_955();
  v77 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__comparison;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v78 = *(v113 + 48);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v79 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_124_1(v79, v80);
  if (v65)
  {
    sub_1C8778ED8(v60, &unk_1EC2BACA8, &qword_1C8BFAB18);
    OUTLINED_FUNCTION_24(v115 + v78);
    v81 = v116;
    if (v65)
    {
      sub_1C8778ED8(v115, &unk_1EC2BACA8, &qword_1C8BFAB18);
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v115 + v78);
  v81 = v116;
  if (v82)
  {
    sub_1C8778ED8(v60, &unk_1EC2BACA8, &qword_1C8BFAB18);
    OUTLINED_FUNCTION_764();
    sub_1C88E3C58();
LABEL_21:
    v66 = &qword_1EC2BD878;
    v67 = &unk_1C8C0A720;
    v68 = v115;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_347_0();
  OUTLINED_FUNCTION_1042();
  if (*(v112 + *(v114 + 20)) != *(v77 + *(v114 + 20)))
  {

    v83 = OUTLINED_FUNCTION_218();
    sub_1C8982050(v83, v84);
    OUTLINED_FUNCTION_511();

    if ((v78 & 1) == 0)
    {
      sub_1C88E3C58();
      OUTLINED_FUNCTION_615();
      sub_1C8778ED8(v105, v106, v107);
      sub_1C88E3C58();
      OUTLINED_FUNCTION_615();
      goto LABEL_22;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v85, v86, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_223();
  v87 = sub_1C8BD517C();
  sub_1C88E3C58();
  v88 = v60;
  v60 = &qword_1C8BFAB18;
  sub_1C8778ED8(v88, &unk_1EC2BACA8, &qword_1C8BFAB18);
  sub_1C88E3C58();
  v89 = OUTLINED_FUNCTION_246();
  sub_1C8778ED8(v89, v90, &qword_1C8BFAB18);
  if ((v87 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_28:
  v91 = (v64 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[1];
  v94 = (v117 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  if (v92 != *v94 || v93 != v94[1])
  {
    OUTLINED_FUNCTION_218();
    if ((sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v96 = *(v110 + 48);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_955();
  sub_1C89CBE2C();
  v97 = OUTLINED_FUNCTION_109();
  if (__swift_getEnumTagSinglePayload(v97, v98, v111) == 1)
  {

    sub_1C8778ED8(v81, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    OUTLINED_FUNCTION_19(v60 + v96);
    if (!v65)
    {
      goto LABEL_41;
    }

    sub_1C8778ED8(v60, &qword_1EC2BAC78, &qword_1C8BFAAF0);
  }

  else
  {
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_19(v60 + v96);
    if (v65)
    {

      sub_1C8778ED8(v81, &qword_1EC2BAC78, &qword_1C8BFAAF0);
      OUTLINED_FUNCTION_188_1();
      sub_1C88E3C58();
LABEL_41:
      sub_1C8778ED8(v60, &qword_1EC2BAC80, &qword_1C8BFAAF8);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_1042();
    static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.== infix(_:_:)();

    OUTLINED_FUNCTION_862();
    sub_1C88E3C58();
    sub_1C8778ED8(v81, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    sub_1C88E3C58();
    v108 = OUTLINED_FUNCTION_168_0();
    sub_1C8778ED8(v108, v109, &qword_1C8BFAAF0);
  }

LABEL_24:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C897A880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3F0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C897A900(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C897A970(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C897A9F0()
{
  if (qword_1EC2B5618 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9D08;
  v2 = unk_1EC2B9D10;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x697261706D6F432ELL, 0xEB000000006E6F73);

  qword_1EC2B9D38 = v1;
  unk_1EC2B9D40 = v2;
  return result;
}

uint64_t sub_1C897AABC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9D48);
  __swift_project_value_buffer(v0, qword_1EC2B9D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C8BFA920;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "notEqualTo";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v0 = OUTLINED_FUNCTION_252_3();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(v0);
  OUTLINED_FUNCTION_880(v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_951(v2);
  }

  v3 = OUTLINED_FUNCTION_9_4();
  sub_1C897B0F8(v3, v4, v5, v6);
  OUTLINED_FUNCTION_177_0();
}

void sub_1C897B0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1C897B324(a1, a2, a3, a4);
        break;
      case 2:
        sub_1C897B848(a1, a2, a3, a4);
        break;
      case 3:
      case 4:
      case 15:
        sub_1C897F100();
        break;
      case 5:
        sub_1C897BD70(a1, a2, a3, a4);
        break;
      case 6:
        sub_1C897C298(a1, a2, a3, a4);
        break;
      case 7:
        sub_1C897C7C0(a1, a2, a3, a4);
        break;
      case 8:
        sub_1C897CCE8(a1, a2, a3, a4);
        break;
      case 9:
        sub_1C897D210(a1, a2, a3, a4);
        break;
      case 10:
        sub_1C897D738(a1, a2, a3, a4);
        break;
      case 11:
        sub_1C897DC60(a1, a2, a3, a4);
        break;
      case 12:
        sub_1C897E188(a1, a2, a3, a4);
        break;
      case 13:
        sub_1C897E6B0(a1, a2, a3, a4);
        break;
      case 14:
        sub_1C897EBD8(a1, a2, a3, a4);
        break;
      case 16:
        sub_1C897F410(a1, a2, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C897B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897B848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897C7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897CCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897D210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897DC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897E188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C8778ED8(v21, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

void sub_1C897F100()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1034();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_116_3();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD610, &qword_1C8C0A4B8);
  v7 = OUTLINED_FUNCTION_80(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_919();
  v9 = OUTLINED_FUNCTION_1022();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_783();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v14 = OUTLINED_FUNCTION_193_0();
  v32 = v15;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v16, v15);
  sub_1C8778ED8(v3, &qword_1EC2BACD0, &qword_1C8BFAB20);
  if (EnumTagSinglePayload == 1 || (sub_1C8BD4B0C(), !v0))
  {
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v1);
    OUTLINED_FUNCTION_6_16();
    sub_1C8776818(v21, v22, MEMORY[0x1E69AA8E0]);
    OUTLINED_FUNCTION_516();
    OUTLINED_FUNCTION_195();
    sub_1C8BD4B4C();
    if (v0 || (OUTLINED_FUNCTION_1145(), sub_1C89DF3F4(), OUTLINED_FUNCTION_219(), OUTLINED_FUNCTION_76(v23, v24, v25), v26))
    {
      sub_1C8778ED8(v2, &qword_1EC2BD610, &qword_1C8C0A4B8);
    }

    else
    {
      v27 = *(v33 + 32);
      OUTLINED_FUNCTION_627();
      v27();
      v28 = OUTLINED_FUNCTION_666();
      (v27)(v28);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_19_1();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      OUTLINED_FUNCTION_23();
      swift_beginAccess();
      sub_1C89CBD78();
      swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C897F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD738, &qword_1C8C0A5E0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C8778ED8(v21, &qword_1EC2BD738, &qword_1C8C0A5E0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBE78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BD738, &qword_1C8C0A5E0);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BD738, &qword_1C8C0A5E0);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C897F978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  swift_beginAccess();
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1C897FEB8(a1, a2, a3, a4);
        break;
      case 2u:
        sub_1C89800EC(a1, a2, a3, a4);
        break;
      case 3u:
        sub_1C8980340(a1, a2, a3, a4);
        break;
      case 4u:
        sub_1C8980594(a1, a2, a3, a4);
        break;
      case 5u:
        sub_1C89807C8(a1, a2, a3, a4);
        break;
      case 6u:
        sub_1C89809FC(a1, a2, a3, a4);
        break;
      case 7u:
        sub_1C8980C30(a1, a2, a3, a4);
        break;
      case 8u:
        sub_1C8980E64(a1, a2, a3, a4);
        break;
      case 9u:
        sub_1C8981098(a1, a2, a3, a4);
        break;
      case 0xAu:
        sub_1C89812CC(a1, a2, a3, a4);
        break;
      case 0xBu:
        sub_1C8981500(a1, a2, a3, a4);
        break;
      case 0xCu:
        sub_1C8981734(a1, a2, a3, a4);
        break;
      case 0xDu:
        sub_1C8981968(a1, a2, a3, a4);
        break;
      case 0xEu:
        sub_1C8981B9C(a1, a2, a3, a4);
        break;
      case 0xFu:
        sub_1C8981DF0(a1, a2, a3, a4);
        break;
      default:
        sub_1C897FC88(a1, a2, a3, a4);
        break;
    }

    return sub_1C88E3C58();
  }

  return result;
}

uint64_t sub_1C897FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C897FEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89800EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a3;
  v13[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8980340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a3;
  v13[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8980594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89807C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89809FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8980C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8980E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8981098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89812CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8981500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8981734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8981968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8981B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a3;
  v13[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1C8BD47CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
      sub_1C8BD4D4C();
      return (*(v8 + 8))(v10, v7);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8981DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBE78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

BOOL sub_1C8982050(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  MEMORY[0x1EEE9AC00](v2);
  v17[0] = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD730, &qword_1C8C0A5D8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v17[1] = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v13 = *(v5 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) != 1)
  {
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(&v7[v13], 1, v2) != 1)
    {
      sub_1C88E3EC4();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind.== infix(_:_:)();
      v16 = v15;
      sub_1C88E3C58();
      sub_1C8778ED8(v12, &qword_1EC2BACD0, &qword_1C8BFAB20);
      sub_1C88E3C58();
      sub_1C8778ED8(v7, &qword_1EC2BACD0, &qword_1C8BFAB20);
      return (v16 & 1) != 0;
    }

    sub_1C8778ED8(v12, &qword_1EC2BACD0, &qword_1C8BFAB20);
    sub_1C88E3C58();
LABEL_6:
    sub_1C8778ED8(v7, &qword_1EC2BD730, &qword_1C8C0A5D8);
    return 0;
  }

  sub_1C8778ED8(v12, &qword_1EC2BACD0, &qword_1C8BFAB20);
  if (__swift_getEnumTagSinglePayload(&v7[v13], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_1C8778ED8(v7, &qword_1EC2BACD0, &qword_1C8BFAB20);
  return 1;
}

uint64_t sub_1C8982434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89824B4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBE60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8982524(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBE60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89825A4()
{
  if (qword_1EC2B5630 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9D38;
  v2 = unk_1EC2B9D40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x726961502ELL, 0xE500000000000000);

  qword_1EC2B9D68 = v1;
  unk_1EC2B9D70 = v2;
  return result;
}

uint64_t sub_1C8982664()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9D78);
  __swift_project_value_buffer(v0, qword_1EC2B9D78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8982864()
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicate10Comparison4PairP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__first;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  result = __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicate10Comparison4PairP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second, 1, 1, v2);
  qword_1EC2B9D90 = v0;
  return result;
}

uint64_t sub_1C89828EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicate10Comparison4PairP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__first;
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicate10Comparison4PairP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second, 1, 1, v4);
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();

  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C8982AB4(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  sub_1C8778ED8(v4 + *a1, a2, a3);
  sub_1C8778ED8(v4 + *a4, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  v6 = *(*v4 + 48);
  v7 = *(*v4 + 52);

  return MEMORY[0x1EEE6BDC0](v4, v6, v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v0 = OUTLINED_FUNCTION_252_3();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v0);
  OUTLINED_FUNCTION_880(v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_2();
    v3 = sub_1C89828EC(v2);
    OUTLINED_FUNCTION_951(v3);
  }

  v4 = OUTLINED_FUNCTION_9_4();
  sub_1C8982BCC(v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C8982BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_801();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v6 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v12 = OUTLINED_FUNCTION_137_2();
      a6(v12);
    }

    else if (result == 1)
    {
      v11 = OUTLINED_FUNCTION_137_2();
      a5(v11);
    }
  }

  return result;
}

uint64_t sub_1C8982C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8982D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8982E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[11] = a4;
  v15[2] = a2;
  v15[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15[1] = v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C8778ED8(v10, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
    sub_1C8BD4E2C();
    result = sub_1C88E3C58();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    return sub_1C8778ED8(v8, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4E2C();
  return sub_1C88E3C58();
}

BOOL sub_1C8983198(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v2 = MEMORY[0x1EEE9AC00](v51);
  v45 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD880, &unk_1C8C0A730);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v49 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v43[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v43[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43[-v18];
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v48 = v5;
  v20 = *(v5 + 48);
  v21 = v51;
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v21) != 1)
  {
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v21) != 1)
    {
      v25 = v47;
      sub_1C88E3EC4();
      v26 = *(v21 + 20);
      v27 = *&v17[v26];
      v28 = *&v25[v26];

      if (v27 == v28 || (, , sub_1C8952AB8(), v30 = v29, , , (v30 & 1) != 0))
      {
        sub_1C8BD49FC();
        sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v44 = sub_1C8BD517C();
        sub_1C88E3C58();
        sub_1C8778ED8(v19, &qword_1EC2BAC38, &qword_1C8BFAAB8);
        sub_1C88E3C58();
        sub_1C8778ED8(v9, &qword_1EC2BAC38, &qword_1C8BFAAB8);
        if (v44)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      sub_1C88E3C58();
      sub_1C8778ED8(v19, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3C58();
      v24 = v9;
      v22 = &qword_1EC2BAC38;
      v23 = &qword_1C8BFAAB8;
LABEL_7:
      sub_1C8778ED8(v24, v22, v23);
      goto LABEL_8;
    }

    sub_1C8778ED8(v19, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    sub_1C88E3C58();
LABEL_6:
    v22 = &qword_1EC2BD880;
    v23 = &unk_1C8C0A730;
    v24 = v9;
    goto LABEL_7;
  }

  sub_1C8778ED8(v19, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v21) != 1)
  {
    goto LABEL_6;
  }

  sub_1C8778ED8(v9, &qword_1EC2BAC38, &qword_1C8BFAAB8);
LABEL_12:
  swift_beginAccess();
  v31 = v50;
  sub_1C89CBE2C();
  swift_beginAccess();
  v32 = v49;
  v33 = *(v48 + 48);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v32, 1, v21) == 1)
  {

    sub_1C8778ED8(v31, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    if (__swift_getEnumTagSinglePayload(v32 + v33, 1, v21) == 1)
    {
      sub_1C8778ED8(v32, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      return 1;
    }

    goto LABEL_17;
  }

  v34 = v46;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v32 + v33, 1, v21) == 1)
  {

    sub_1C8778ED8(v31, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    sub_1C88E3C58();
LABEL_17:
    v35 = &qword_1EC2BD880;
    v36 = &unk_1C8C0A730;
    v37 = v32;
LABEL_18:
    sub_1C8778ED8(v37, v35, v36);
    return 0;
  }

  v39 = v45;
  sub_1C88E3EC4();
  if (*&v34[*(v21 + 20)] != *&v39[*(v21 + 20)])
  {

    sub_1C8952AB8();
    v41 = v40;

    if ((v41 & 1) == 0)
    {

      sub_1C88E3C58();
      sub_1C8778ED8(v50, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3C58();
      v37 = v32;
      v35 = &qword_1EC2BAC38;
      v36 = &qword_1C8BFAAB8;
      goto LABEL_18;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v42 = sub_1C8BD517C();

  sub_1C88E3C58();
  sub_1C8778ED8(v50, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  sub_1C88E3C58();
  sub_1C8778ED8(v32, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  return (v42 & 1) != 0;
}

uint64_t sub_1C8983A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8983B0C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBE78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8983B7C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBE78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8983BFC()
{
  if (qword_1EC2B5630 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9D38;
  v2 = unk_1EC2B9D40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74616C706D65542ELL, 0xE900000000000065);

  qword_1EC2B9D98 = v1;
  unk_1EC2B9DA0 = v2;
  return result;
}

uint64_t sub_1C8983CC4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9DA8);
  __swift_project_value_buffer(v0, qword_1EC2B9DA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C8BFA920;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "equalTo";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C89843C0(v3, v4, v5, v6);
        break;
      case 2:
        v31 = OUTLINED_FUNCTION_33_4();
        sub_1C8984878(v31, v32, v33, v34);
        break;
      case 3:
      case 4:
      case 15:
        OUTLINED_FUNCTION_36_6();
        sub_1C89BF374();
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C8984D34(v11, v12, v13, v14);
        break;
      case 6:
        v35 = OUTLINED_FUNCTION_33_4();
        sub_1C89851F0(v35, v36, v37, v38);
        break;
      case 7:
        v43 = OUTLINED_FUNCTION_33_4();
        sub_1C89856AC(v43, v44, v45, v46);
        break;
      case 8:
        v27 = OUTLINED_FUNCTION_33_4();
        sub_1C8985B68(v27, v28, v29, v30);
        break;
      case 9:
        v51 = OUTLINED_FUNCTION_33_4();
        sub_1C8986024(v51, v52, v53, v54);
        break;
      case 10:
        v19 = OUTLINED_FUNCTION_33_4();
        sub_1C89864E0(v19, v20, v21, v22);
        break;
      case 11:
        v47 = OUTLINED_FUNCTION_33_4();
        sub_1C898699C(v47, v48, v49, v50);
        break;
      case 12:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C8986E58(v7, v8, v9, v10);
        break;
      case 13:
        v15 = OUTLINED_FUNCTION_33_4();
        sub_1C8987314(v15, v16, v17, v18);
        break;
      case 14:
        v39 = OUTLINED_FUNCTION_33_4();
        sub_1C89877D0(v39, v40, v41, v42);
        break;
      case 16:
        v23 = OUTLINED_FUNCTION_33_4();
        sub_1C8987C8C(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89843C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8984878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8984D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89851F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89856AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8985B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8986024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89864E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C898699C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8986E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8987314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C89877D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8987C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C8778ED8(v19, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v20 = v26;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2BACF0, &qword_1C8BFAB30);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v5 = OUTLINED_FUNCTION_233();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_235_2();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_144_2(v9);
  if (!v10)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v42 = OUTLINED_FUNCTION_9_4();
        sub_1C89885B8(v42, v43, v44, v45);
        goto LABEL_21;
      case 2:
        OUTLINED_FUNCTION_514_0();
        v32 = v3;
        sub_1C89A2FF0();
        goto LABEL_15;
      case 3:
        OUTLINED_FUNCTION_514_0();
        v32 = v3;
        sub_1C89A312C();
LABEL_15:
        v37 = v32;
        OUTLINED_FUNCTION_104_0();
        goto LABEL_22;
      case 4:
        v20 = OUTLINED_FUNCTION_9_4();
        sub_1C89887CC(v20, v21, v22, v23);
        goto LABEL_21;
      case 5:
        v46 = OUTLINED_FUNCTION_9_4();
        sub_1C89889E0(v46, v47, v48, v49);
        goto LABEL_21;
      case 6:
        v54 = OUTLINED_FUNCTION_9_4();
        sub_1C8988BF4(v54, v55, v56, v57);
        goto LABEL_21;
      case 7:
        v38 = OUTLINED_FUNCTION_9_4();
        sub_1C8988E08(v38, v39, v40, v41);
        goto LABEL_21;
      case 8:
        v62 = OUTLINED_FUNCTION_9_4();
        sub_1C898901C(v62, v63, v64, v65);
        goto LABEL_26;
      case 9:
        v28 = OUTLINED_FUNCTION_9_4();
        sub_1C8989230(v28, v29, v30, v31);
        goto LABEL_26;
      case 10:
        v58 = OUTLINED_FUNCTION_9_4();
        sub_1C8989444(v58, v59, v60, v61);
        goto LABEL_26;
      case 11:
        v16 = OUTLINED_FUNCTION_9_4();
        sub_1C8989658(v16, v17, v18, v19);
        goto LABEL_26;
      case 12:
        v24 = OUTLINED_FUNCTION_9_4();
        sub_1C898986C(v24, v25, v26, v27);
        goto LABEL_26;
      case 13:
        v50 = OUTLINED_FUNCTION_9_4();
        sub_1C8989A80(v50, v51, v52, v53);
        goto LABEL_26;
      case 14:
        OUTLINED_FUNCTION_514_0();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A3F98();
        goto LABEL_26;
      case 15:
        v33 = OUTLINED_FUNCTION_9_4();
        sub_1C8989C94(v33, v34, v35, v36);
LABEL_26:
        if (v4)
        {
          OUTLINED_FUNCTION_57_6();
          sub_1C88E3C58();
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_57_6();
        sub_1C88E3C58();
        break;
      default:
        v12 = OUTLINED_FUNCTION_9_4();
        sub_1C89883A8(v12, v13, v14, v15);
LABEL_21:
        v37 = v4;
        OUTLINED_FUNCTION_57_6();
LABEL_22:
        sub_1C88E3C58();
        if (!v37)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template(0);
  OUTLINED_FUNCTION_113_1();
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89883A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89885B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89887CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89889E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8988BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8988E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C898901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8989230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8989444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8989658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C898986C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8989A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8989C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACF0, &qword_1C8BFAB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C898A128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898A1A8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB230, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898A218(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB230, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898A298()
{
  if (qword_1EC2B5618 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9D08;
  v2 = unk_1EC2B9D10;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74616C706D65542ELL, 0xE900000000000065);

  qword_1EC2B9DC0 = v1;
  *algn_1EC2B9DC8 = v2;
  return result;
}

uint64_t sub_1C898A360()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9DD0);
  __swift_project_value_buffer(v0, qword_1EC2B9DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C898A67C(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C898A730(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C898A7E4(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C898A67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  sub_1C8776818(&qword_1EC2BAF68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C898A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template(0);
  sub_1C8776818(&qword_1EC2BB230, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C898A7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_294_0(v5, v29);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD00, &qword_1C8BFAB40);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_165_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_7(v13, v30);
  v14 = OUTLINED_FUNCTION_260_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v18);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_211_3();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template(0);
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2);
  if (v20)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAC98, &qword_1C8BFAB10);
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_516_0();
    sub_1C8776818(v21, v22, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);
    OUTLINED_FUNCTION_225_1();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_340();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_16;
    }
  }

  sub_1C89CBE2C();
  v23 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_41_2(v23, v24);
  if (v20)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAD00, &qword_1C8BFAB40);
    v25 = v31;
  }

  else
  {
    OUTLINED_FUNCTION_100_4();
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB230, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template);
    OUTLINED_FUNCTION_298_0();
    OUTLINED_FUNCTION_749();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_511_0();
    sub_1C88E3C58();
    v25 = v31;
    if (v0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_88_0();
  if (!v26 || (OUTLINED_FUNCTION_749(), sub_1C8BD4DDC(), !v0))
  {
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_72_2(v25);
    if (v20)
    {
      sub_1C8778ED8(v25, &qword_1EC2BAC78, &qword_1C8BFAAF0);
LABEL_15:
      OUTLINED_FUNCTION_215_0();
      sub_1C8BD49DC();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_1145();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_829();
    sub_1C8776818(v27, v28, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
    OUTLINED_FUNCTION_298_0();
    OUTLINED_FUNCTION_749();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_188_1();
    sub_1C88E3C58();
    if (!v0)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_1085();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v56 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC80, &qword_1C8BFAAF8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_81();
  v59 = v14;
  v15 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD00, &qword_1C8BFAB40);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81_3(v19, v56);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB238, &qword_1C8BFAD20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v22 = OUTLINED_FUNCTION_294_0(v21, v57);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v22);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51_1();
  v24 = OUTLINED_FUNCTION_890();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_80(v26);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB240, &unk_1C8BFAD28);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_552();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template(0);
  v29 = *(v4 + 56);
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  v30 = v7;
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_19(v1 + v29);
    if (v31)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAC98, &qword_1C8BFAB10);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_220();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v1 + v29);
  if (v31)
  {
    OUTLINED_FUNCTION_340();
    sub_1C88E3C58();
LABEL_9:
    v32 = &qword_1EC2BB240;
    v33 = &unk_1C8BFAD28;
LABEL_10:
    v34 = v1;
LABEL_40:
    sub_1C8778ED8(v34, v32, v33);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_52_5();
  sub_1C88E3EC4();
  if (*(v3 + *(v0 + 20)) != *(v5 + *(v0 + 20)))
  {

    OUTLINED_FUNCTION_954();
    sub_1C894A748();
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      OUTLINED_FUNCTION_839();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_118();
      sub_1C88E3C58();
      v32 = &qword_1EC2BAC98;
      v33 = &qword_1C8BFAB10;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v37, v38, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_768();
  v39 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_299_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAC98, &qword_1C8BFAB10);
  if ((v39 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_14:
  v40 = *(v60 + 48);
  OUTLINED_FUNCTION_1150();
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v41 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_124_1(v41, v42);
  if (v31)
  {
    OUTLINED_FUNCTION_24(v2 + v40);
    if (v31)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAD00, &qword_1C8BFAB40);
      goto LABEL_24;
    }

LABEL_22:
    v32 = &qword_1EC2BB238;
    v33 = &qword_1C8BFAD20;
LABEL_39:
    v34 = v2;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_945();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v2 + v40);
  if (v43)
  {
    OUTLINED_FUNCTION_511_0();
    sub_1C88E3C58();
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_100_4();
  sub_1C88E3EC4();
  v44 = OUTLINED_FUNCTION_168_0();
  v45 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.== infix(_:_:)(v44);
  sub_1C88E3C58();
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAD00, &qword_1C8BFAB40);
  if ((v45 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  v46 = *v2 == *v30 && v2[1] == v30[1];
  if (!v46 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_41;
  }

  v47 = *(v58 + 48);
  OUTLINED_FUNCTION_955();
  v2 = v59;
  OUTLINED_FUNCTION_955();
  v48 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_124_1(v48, v49);
  if (v31)
  {
    OUTLINED_FUNCTION_24(v59 + v47);
    if (v31)
    {
      sub_1C8778ED8(v59, &qword_1EC2BAC78, &qword_1C8BFAAF0);
LABEL_44:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v54, v55, MEMORY[0x1E69AAC10]);
      v51 = sub_1C8BD517C();
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v59 + v47);
  if (v50)
  {
    OUTLINED_FUNCTION_188_1();
    sub_1C88E3C58();
LABEL_38:
    v32 = &qword_1EC2BAC80;
    v33 = &qword_1C8BFAAF8;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_29_6();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.== infix(_:_:)();
  v53 = v52;
  OUTLINED_FUNCTION_862();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v59, &qword_1EC2BAC78, &qword_1C8BFAAF0);
  if (v53)
  {
    goto LABEL_44;
  }

LABEL_41:
  v51 = 0;
LABEL_42:
  OUTLINED_FUNCTION_157(v51);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C898B400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898B480(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAFE8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898B4F0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAFE8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898B570()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C24A00);
  qword_1EC2B9DE8 = 0xD00000000000002BLL;
  unk_1EC2B9DF0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C898B604()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9DF8);
  __swift_project_value_buffer(v0, qword_1EC2B9DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C899B5E8();
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C898B8B8(v3, v4, v5, v6);
    }
  }
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*v0 || (OUTLINED_FUNCTION_940(), sub_1C89CC1B4(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(0), sub_1C8776818(&qword_1EC2BB258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
    {
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate(0);
      return OUTLINED_FUNCTION_69();
    }
  }

  return result;
}

uint64_t sub_1C898BA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898BB1C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBEB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898BB8C(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBEB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898BC0C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9E10);
  __swift_project_value_buffer(v0, qword_1EC2B9E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Operator_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Operator_AND";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Operator_OR";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C898BE4C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000016, 0x80000001C8C249A0);
  qword_1EC2B9E28 = 0xD00000000000002BLL;
  unk_1EC2B9E30 = 0x80000001C8C22BA0;
  return result;
}

void sub_1C898BF5C()
{
  OUTLINED_FUNCTION_178_1();
  v2 = v1;
  OUTLINED_FUNCTION_60_4();
  if (!v3 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    v2(0);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C898C034(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898C0B4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBEC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898C124(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBEC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898C1A4()
{
  if (qword_1EC2B5698 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9E28;
  v2 = unk_1EC2B9E30;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74616C706D65542ELL, 0xE900000000000065);

  qword_1EC2B9E50 = v1;
  *algn_1EC2B9E58 = v2;
  return result;
}

uint64_t sub_1C898C2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898C37C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB018, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898C3EC(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB018, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898C468()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C24980);
  qword_1EC2B9E78 = 0xD00000000000002BLL;
  unk_1EC2B9E80 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C898C5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898C668(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBEF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898C6D8(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBEF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898C758()
{
  if (qword_1EC2B56B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9E78;
  v2 = unk_1EC2B9E80;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74616C706D65542ELL, 0xE900000000000065);

  qword_1EC2B9EA0 = v1;
  *algn_1EC2B9EA8 = v2;
  return result;
}

uint64_t sub_1C898C8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898C930(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB010, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898C9A0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB010, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898CA1C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000018, 0x80000001C8C24960);
  qword_1EC2B9EC8 = 0xD00000000000002BLL;
  unk_1EC2B9ED0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C898CBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898CC20(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBF18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898CC90(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBF18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898CD10()
{
  if (qword_1EC2B56D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9EC8;
  v2 = unk_1EC2B9ED0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74616C706D65542ELL, 0xE900000000000065);

  qword_1EC2B9EF0 = v1;
  *algn_1EC2B9EF8 = v2;
  return result;
}

uint64_t sub_1C898CE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD398, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898CEE8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAFF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898CF58(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAFF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898D0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD390, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898D134(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB008, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898D1A4(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB008, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898D300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD388, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898D380(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAFF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898D3F0(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BAFF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898D46C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C24940);
  qword_1EC2B9F68 = 0xD00000000000002BLL;
  unk_1EC2B9F70 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C898D590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD380, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898D610(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898D680(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BB000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898D73C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9FA0);
  __swift_project_value_buffer(v0, qword_1EC2B9FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "predicate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

uint64_t sub_1C898D9B0()
{
  v1 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__predicate;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sort;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__limit;
  *v4 = 0;
  *(v4 + 8) = 1;
  return v0;
}

uint64_t sub_1C898DA28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD08, &qword_1C8BFAB48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__predicate;
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sort;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__limit;
  *v7 = 0;
  *(v7 + 8) = 1;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v8 = (a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sort);
  swift_beginAccess();
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  swift_beginAccess();
  *v6 = v9;
  *(v6 + 8) = v8;
  v10 = (a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__limit);
  swift_beginAccess();
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);

  swift_beginAccess();
  *v7 = v11;
  *(v7 + 8) = v10;
  return v1;
}

uint64_t sub_1C898DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C898DE5C();
        break;
      case 2:
        sub_1C89AF42C();
        break;
      case 1:
        sub_1C898DD80(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1C898DD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate(0);
  sub_1C8776818(&qword_1EC2BBF88, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C898DE5C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_119();
  v0 = sub_1C8BD4BBC();
  return OUTLINED_FUNCTION_53_1(v0);
}

uint64_t sub_1C898DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v14[0] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD08, &qword_1C8BFAB48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate(0);
  MEMORY[0x1EEE9AC00](v9);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2BAD08, &qword_1C8BFAB48);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BBF88, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate);
    sub_1C8BD4E2C();
    result = sub_1C88E3C58();
    if (v4)
    {
      return result;
    }
  }

  v11 = a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sort;
  swift_beginAccess();
  if (!*v11 || (v12 = *(v11 + 8), v14[1] = *v11, v15 = v12, sub_1C89DF2B0(), result = sub_1C8BD4D4C(), !v4))
  {
    v13 = a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__limit;
    result = swift_beginAccess();
    if ((*(v13 + 8) & 1) == 0)
    {
      return sub_1C8BD4D9C();
    }
  }

  return result;
}

uint64_t sub_1C898E1D8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate(0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD728, &qword_1C8C0A5D0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD08, &qword_1C8BFAB48);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  swift_beginAccess();
  v15 = v37;
  sub_1C89CBE2C();
  swift_beginAccess();
  v16 = *(v6 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {

    sub_1C8778ED8(v14, &qword_1EC2BAD08, &qword_1C8BFAB48);
    if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v3) == 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2BAD08, &qword_1C8BFAB48);
LABEL_10:
      v23 = a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sort;
      swift_beginAccess();
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = (v15 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sort);
      swift_beginAccess();
      if (sub_1C87E4678(v24, v25, *v26))
      {
        v27 = (a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__limit);
        swift_beginAccess();
        v28 = *v27;
        v29 = *(v27 + 8);

        v30 = v15 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit5QueryP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__limit;
        swift_beginAccess();
        v31 = *v30;
        v32 = *(v30 + 8);

        if (v29)
        {
          if (!v32)
          {
            return 0;
          }
        }

        else
        {
          if (v28 == v31)
          {
            v33 = v32;
          }

          else
          {
            v33 = 1;
          }

          if (v33)
          {
            return 0;
          }
        }

        return 1;
      }

      goto LABEL_20;
    }

LABEL_6:
    sub_1C8778ED8(v8, &qword_1EC2BD728, &qword_1C8C0A5D0);
    goto LABEL_20;
  }

  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v3) == 1)
  {

    sub_1C8778ED8(v14, &qword_1EC2BAD08, &qword_1C8BFAB48);
    sub_1C88E3C58();
    goto LABEL_6;
  }

  v17 = v36;
  sub_1C88E3EC4();
  v18 = *(v3 + 20);
  v19 = *&v12[v18];
  v20 = *&v17[v18];

  if (v19 != v20)
  {

    v21 = sub_1C8992F64(v19, v20);

    if (!v21)
    {
      sub_1C88E3C58();
      sub_1C8778ED8(v14, &qword_1EC2BAD08, &qword_1C8BFAB48);
      sub_1C88E3C58();
      sub_1C8778ED8(v8, &qword_1EC2BAD08, &qword_1C8BFAB48);
      goto LABEL_20;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1C8BD517C();
  sub_1C88E3C58();
  sub_1C8778ED8(v14, &qword_1EC2BAD08, &qword_1C8BFAB48);
  sub_1C88E3C58();
  sub_1C8778ED8(v8, &qword_1EC2BAD08, &qword_1C8BFAB48);
  if (v22)
  {
    goto LABEL_10;
  }

LABEL_20:

  return 0;
}

uint64_t sub_1C898E7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD378, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C898E844(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C898E8B4(uint64_t a1, uint64_t a2)
{
  sub_1C8776818(&qword_1EC2BBF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C898E934()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9FC0);
  __swift_project_value_buffer(v0, qword_1EC2B9FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SortOrder_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SortOrder_FORWARD";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SortOrder_REVERSE";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C898EB70()
{
  if (qword_1EC2B5728 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9F90;
  v2 = *algn_1EC2B9F98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x64657250796E412ELL, 0xED00006574616369);

  qword_1EC2B9FD8 = v1;
  unk_1EC2B9FE0 = v2;
  return result;
}

uint64_t sub_1C898EC40()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9FE8);
  __swift_project_value_buffer(v0, qword_1EC2B9FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "comparison";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "compound";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stringSearch";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "idSearch";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "all";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "suggested";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "searchableItem";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "valid";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v0 = OUTLINED_FUNCTION_252_3();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate(v0);
  OUTLINED_FUNCTION_880(v1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_51_4();
    sub_1C89681C4();
    OUTLINED_FUNCTION_951(v2);
  }

  v3 = OUTLINED_FUNCTION_9_4();
  sub_1C898F0A0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C898F0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C898F1F0(a1, a2, a3, a4);
        break;
      case 2:
        sub_1C898F714(a1, a2, a3, a4);
        break;
      case 3:
        sub_1C898FC3C(a1, a2, a3, a4);
        break;
      case 4:
        sub_1C8990164(a1, a2, a3, a4);
        break;
      case 5:
        sub_1C899068C(a1, a2, a3, a4);
        break;
      case 6:
        sub_1C8990BB4(a1, a2, a3, a4);
        break;
      case 7:
        sub_1C89910DC(a1, a2, a3, a4);
        break;
      case 8:
        sub_1C8991604(a1, a2, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C898F1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD700, &qword_1C8C0A5A8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v21, &qword_1EC2BD700, &qword_1C8C0A5A8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BB258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BD700, &qword_1C8C0A5A8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BD700, &qword_1C8C0A5A8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C898F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD708, &qword_1C8C0A5B0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v21, &qword_1EC2BD708, &qword_1C8C0A5B0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBEB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BD708, &qword_1C8C0A5B0);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BD708, &qword_1C8C0A5B0);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C898FC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v27[1] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27[0] = v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD30, &qword_1C8BFAB50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate.OneOf_AnyPredicateKind(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD710, &qword_1C8C0A5B8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v30 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v6);
  swift_beginAccess();
  v29 = a1;
  sub_1C89CBE2C();
  v31 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD30, &qword_1C8BFAB50);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v21, &qword_1EC2BD710, &qword_1C8C0A5B8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBEC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate, &protocol conformance descriptor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v23 = v21;
    return sub_1C8778ED8(v23, &qword_1EC2BD710, &qword_1C8C0A5B8);
  }

  v22 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v6) == 1)
  {
    v23 = v22;
    return sub_1C8778ED8(v23, &qword_1EC2BD710, &qword_1C8C0A5B8);
  }

  sub_1C88E3EC4();
  v25 = v28;
  sub_1C88E3EC4();
  v26 = v31;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}