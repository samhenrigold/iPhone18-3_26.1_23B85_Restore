uint64_t sub_1B9041E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9049374();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAB9110, &qword_1B964D900);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_KGID);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAB9110, &qword_1B964D900);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAB9110, &qword_1B964D900);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAB9110, &qword_1B964D900);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAB9110, &qword_1B964D900);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9042378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2C78, &qword_1B9683598);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2C78, &qword_1B9683598);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9049374();
    }
  }

  sub_1B8CD24E0(&qword_1EBAC2A98, type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_AdamID);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2C78, &qword_1B9683598);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2C78, &qword_1B9683598);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2C78, &qword_1B9683598);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2C78, &qword_1B9683598);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9042870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2C80, &qword_1B96835A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2C80, &qword_1B96835A0);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9049374();
    }
  }

  sub_1B8CD24E0(&qword_1EBAC2AB0, type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_UMCID);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2C80, &qword_1B96835A0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2C80, &qword_1B96835A0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2C80, &qword_1B96835A0);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2C80, &qword_1B96835A0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9042D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2C88, &qword_1B96835A8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2C88, &qword_1B96835A8);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9049374();
    }
  }

  sub_1B8CD24E0(&qword_1EBAC2AC8, type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_WikiDataID);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2C88, &qword_1B96835A8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2C88, &qword_1B96835A8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2C88, &qword_1B96835A8);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2C88, &qword_1B96835A8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9043260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2C90, &unk_1B96835B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2C90, &unk_1B96835B0);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9049374();
    }
  }

  sub_1B8CD24E0(&qword_1EBAC2AE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_StatsID);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2C90, &unk_1B96835B0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2C90, &unk_1B96835B0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2C90, &unk_1B96835B0);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2C90, &unk_1B96835B0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_190_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v6 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  OUTLINED_FUNCTION_178(v1, 1, v6);
  if (v7)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_686();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v24 = OUTLINED_FUNCTION_7_6();
      sub_1B9043AC0(v24, v25, v26, v27);
      break;
    case 2u:
      v16 = OUTLINED_FUNCTION_7_6();
      sub_1B9043CD4(v16, v17, v18, v19);
      break;
    case 3u:
      v20 = OUTLINED_FUNCTION_7_6();
      sub_1B9043EE8(v20, v21, v22, v23);
      break;
    case 4u:
      v12 = OUTLINED_FUNCTION_7_6();
      sub_1B90440FC(v12, v13, v14, v15);
      break;
    default:
      v8 = OUTLINED_FUNCTION_7_6();
      sub_1B90438B0(v8, v9, v10, v11);
      break;
  }

  OUTLINED_FUNCTION_17_13();
  result = sub_1B9049374();
  if (!v0)
  {
LABEL_9:
    type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B90438B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_KGID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9043AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC2A98, type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_AdamID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9043CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC2AB0, type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_UMCID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9043EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC2AC8, type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_WikiDataID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B90440FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC2AE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_StatsID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Kg_V1alpha_EntityID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_468();
  v24 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_62();
  v26 = OUTLINED_FUNCTION_686();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_183(v28);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_79();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E8, &qword_1B964D8D8);
  OUTLINED_FUNCTION_183(v30);
  OUTLINED_FUNCTION_176();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &a9 - v33;
  v35 = *(v32 + 56);
  OUTLINED_FUNCTION_643(v21, &a9 - v33);
  OUTLINED_FUNCTION_643(v20, &v34[v35]);
  v36 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v36, v37, v24);
  if (v38)
  {
    OUTLINED_FUNCTION_178(&v34[v35], 1, v24);
    if (v38)
    {
      sub_1B8D9207C(v34, &qword_1EBAB90E0, &qword_1B964D8D0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_43();
      v44 = sub_1B8CD24E0(v42, v43, MEMORY[0x1E69AAC10]);
      v39 = OUTLINED_FUNCTION_634(v44);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v34[v35], 1, v24);
  if (v38)
  {
    OUTLINED_FUNCTION_17_13();
    sub_1B9049374();
LABEL_9:
    sub_1B8D9207C(v34, &qword_1EBAB90E8, &qword_1B964D8D8);
    goto LABEL_10;
  }

  sub_1B90492C4();
  static Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID.== infix(_:_:)();
  v41 = v40;
  sub_1B9049374();
  OUTLINED_FUNCTION_467();
  sub_1B9049374();
  sub_1B8D9207C(v34, &qword_1EBAB90E0, &qword_1B964D8D0);
  if (v41)
  {
    goto LABEL_12;
  }

LABEL_10:
  v39 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v39);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9044610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C38, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9044690(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9044700(uint64_t a1, uint64_t a2)
{
  sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityID);

  return sub_1B964C5D0();
}

uint64_t sub_1B9044798()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2868);
  __swift_project_value_buffer(v0, qword_1EBAC2868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sub_responses";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entities";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Kg_V1alpha_IDSearchResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9044A94(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9044A40();
    }
  }
}

void sub_1B9044A40()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD24E0(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9044A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0);
  sub_1B8CD24E0(&qword_1EBAC2998, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Entity);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0), sub_1B8CD24E0(&qword_1EBAC2990, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0), sub_1B8CD24E0(&qword_1EBAC2998, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Entity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B9044D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C30, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_IDSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9044E08(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2B08, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_IDSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9044E78(uint64_t a1, uint64_t a2)
{
  sub_1B8CD24E0(&qword_1EBAC2B08, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_IDSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B9044F10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2880);
  __swift_project_value_buffer(v0, qword_1EBAC2880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "kg_id";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B904513C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = OUTLINED_FUNCTION_44_5();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = OUTLINED_FUNCTION_44_5();
      a4(v10);
    }
  }

  return result;
}

uint64_t sub_1B90451C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityID);
  return sub_1B964C580();
}

uint64_t sub_1B904527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_KGID);
  return sub_1B964C580();
}

void Apple_Parsec_Kg_V1alpha_EntityResponseInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v26 = v4;
  v27 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_140_1();
  v24 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v23[1] = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9128, &qword_1B964D910);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v16 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0);
  v25 = v3;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v15, 1, v16);
  if (v18)
  {
    sub_1B8D9207C(v15, &qword_1EBAB9128, &qword_1B964D910);
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    sub_1B90492C4();
    OUTLINED_FUNCTION_28_12();
    sub_1B8CD24E0(v19, v20, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityID);
    OUTLINED_FUNCTION_151_3();
    sub_1B964C740();
    OUTLINED_FUNCTION_7_23();
    sub_1B9049374();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2, 1, v24);
  if (v18)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9110, &qword_1B964D900);
LABEL_9:
    sub_1B964C290();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_37();
  sub_1B90492C4();
  OUTLINED_FUNCTION_94_7();
  sub_1B8CD24E0(v21, v22, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_KGID);
  OUTLINED_FUNCTION_151_3();
  sub_1B964C740();
  OUTLINED_FUNCTION_3_25();
  sub_1B9049374();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9045BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C28, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9045C64(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2990, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9045CD4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD24E0(&qword_1EBAC2990, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9045D6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2898);
  __swift_project_value_buffer(v0, qword_1EBAC2898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locale";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primary_name";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Kg_V1alpha_LocalizedEntityNames.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_LocalizedEntityNames.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Kg_V1alpha_LocalizedEntityNames.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1) == *v1 && v2[1] == v1[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_43();
  v7 = sub_1B8CD24E0(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B90461A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C20, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9046220(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9046290(uint64_t a1, uint64_t a2)
{
  sub_1B8CD24E0(&qword_1EBAC29D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);

  return sub_1B964C5D0();
}

uint64_t sub_1B9046328()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC28B0);
  __swift_project_value_buffer(v0, qword_1EBAC28B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "kg_id";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity_type";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "facts";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "localized_names";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "alternate_ids";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Kg_V1alpha_Entity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B90466D4(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8CFC4BC();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9048E0C();
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9046788(v11, v12, v13, v14);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9046828(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90466D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_KGID);
  return sub_1B964C580();
}

uint64_t sub_1B9046788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0);
  sub_1B8CD24E0(&qword_1EBAC29D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);
  return sub_1B964C570();
}

uint64_t sub_1B9046828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityID);
  return sub_1B964C570();
}

void Apple_Parsec_Kg_V1alpha_Entity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_151();
  v6 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_140_1();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(v8);
  sub_1B8D92024();
  v9 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v9, v10, v6);
  if (v11)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9110, &qword_1B964D900);
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_2();
    sub_1B90492C4();
    OUTLINED_FUNCTION_94_7();
    sub_1B8CD24E0(v12, v13, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_KGID);
    OUTLINED_FUNCTION_97_2();
    OUTLINED_FUNCTION_39_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_25();
    sub_1B9049374();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  if (!*v0 || (sub_1B904960C(), OUTLINED_FUNCTION_39_4(), sub_1B964C680(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0), sub_1B8CD24E0(&qword_1EBAC29C8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
    {
      if (!*(v0[3] + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0), sub_1B8CD24E0(&qword_1EBAC29D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
      {
        if (!*(v0[4] + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0), OUTLINED_FUNCTION_28_12(), sub_1B8CD24E0(v14, v15, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityID), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
        {
          sub_1B964C290();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Kg_V1alpha_Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = OUTLINED_FUNCTION_190_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9118, &unk_1B9681970);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0);
  v14 = *(v4 + 56);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v15)
  {
    OUTLINED_FUNCTION_467();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_1_37();
      sub_1B90492C4();
      v18 = *v3 == *v8 && v3[1] == v8[1];
      if (v18 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_43();
        sub_1B8CD24E0(v19, v20, MEMORY[0x1E69AAC10]);
        v21 = sub_1B964C850();
        sub_1B9049374();
        OUTLINED_FUNCTION_686();
        sub_1B9049374();
        sub_1B8D9207C(v2, &qword_1EBAB9110, &qword_1B964D900);
        if (v21)
        {
          goto LABEL_17;
        }

LABEL_22:
        v31 = 0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_95_5();
      sub_1B9049374();
      sub_1B9049374();
      v16 = &qword_1EBAB9110;
      v17 = &qword_1B964D900;
LABEL_10:
      sub_1B8D9207C(v2, v16, v17);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_3_25();
    sub_1B9049374();
LABEL_9:
    v16 = &qword_1EBAB9118;
    v17 = &unk_1B9681970;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v2 + v14);
  if (!v15)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9110, &qword_1B964D900);
LABEL_17:
  OUTLINED_FUNCTION_148_2();
  if (!sub_1B8D92198(v22, v23, v24))
  {
    goto LABEL_22;
  }

  sub_1B8D78718(v1[2], v0[2]);
  if ((v25 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1B8D7876C(v1[3], v0[3]);
  if ((v26 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1B8D787AC(v1[4], v0[4]);
  if ((v27 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_43();
  v30 = sub_1B8CD24E0(v28, v29, MEMORY[0x1E69AAC10]);
  v31 = OUTLINED_FUNCTION_199_0(v30);
LABEL_23:
  OUTLINED_FUNCTION_264(v31);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9046F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C18, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B904700C(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2998, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B904707C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD24E0(&qword_1EBAC2998, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Entity);

  return sub_1B964C5D0();
}

uint64_t sub_1B9047114()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC28C8);
  __swift_project_value_buffer(v0, qword_1EBAC28C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "typed_qualifiers";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "last_update_timestamp";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ttl_timestamp";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8CFC46C();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B904747C(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9047530(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B90475E4(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B904747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
  sub_1B8CD24E0(&qword_1EBAC29E0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);
  return sub_1B964C580();
}

uint64_t sub_1B9047530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
  sub_1B964C110();
  sub_1B8CD24E0(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

uint64_t sub_1B90475E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
  sub_1B964C110();
  sub_1B8CD24E0(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

void Apple_Parsec_Kg_V1alpha_Fact.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v4 = OUTLINED_FUNCTION_183(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44_0();
  v37 = v5;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v35 - v7;
  v41 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v38 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v36 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  v35[2] = v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9100, &unk_1B964D8F0);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_151();
  v17 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(v16);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (v19 = *(v0 + 8), v39 = *v0, v40 = v19, sub_1B90495B8(), sub_1B964C680(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v20 || (sub_1B964C700(), !v1))
    {
      v35[1] = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
      sub_1B8D92024();
      v21 = OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_178(v21, v22, v17);
      if (v23)
      {
        sub_1B8D9207C(v2, &qword_1EBAB9100, &unk_1B964D8F0);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_292();
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC29E0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);
      sub_1B964C740();
      OUTLINED_FUNCTION_35_8();
      sub_1B9049374();
      if (!v1)
      {
LABEL_9:
        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v8, 1, v41);
        v25 = v37;
        v24 = v38;
        if (v23)
        {
          sub_1B8D9207C(v8, &off_1EBAB90F0, &unk_1B964D8E0);
        }

        else
        {
          (*(v38 + 32))();
          OUTLINED_FUNCTION_18_12();
          sub_1B8CD24E0(v26, v27, MEMORY[0x1E69AA8F8]);
          OUTLINED_FUNCTION_150_4();
          sub_1B964C740();
          if (v1)
          {
            goto LABEL_18;
          }

          v28 = OUTLINED_FUNCTION_467();
          v29(v28);
        }

        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v25, 1, v41);
        v30 = v36;
        if (v23)
        {
          sub_1B8D9207C(v25, &off_1EBAB90F0, &unk_1B964D8E0);
        }

        else
        {
          (*(v24 + 32))(v36, v25, v41);
          OUTLINED_FUNCTION_18_12();
          sub_1B8CD24E0(v31, v32, MEMORY[0x1E69AA8F8]);
          OUTLINED_FUNCTION_150_4();
          sub_1B964C740();
          if (v1)
          {
LABEL_18:
            v33 = OUTLINED_FUNCTION_467();
            v34(v33);
            goto LABEL_21;
          }

          (*(v24 + 8))(v30, v41);
        }

        sub_1B964C290();
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Kg_V1alpha_Fact.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v12 = OUTLINED_FUNCTION_183(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  v78 = v13;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v73 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v79 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v73 - v19;
  v20 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(v20);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9100, &unk_1B964D8F0);
  OUTLINED_FUNCTION_183(v25);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_137();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9108, &qword_1B9681980);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_148_2();
  if (!sub_1B8D92198(v29, v30, v31))
  {
    goto LABEL_39;
  }

  v32 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v74 = v10;
  v75 = v6;
  v76 = v4;
  v77 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
  v33 = *(v27 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (v32)
  {
    OUTLINED_FUNCTION_37_0(v3 + v33);
    if (v32)
    {
      sub_1B8D9207C(v3, &qword_1EBAB9100, &unk_1B964D8F0);
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3 + v33);
  if (v41)
  {
    OUTLINED_FUNCTION_35_8();
    sub_1B9049374();
LABEL_20:
    v42 = &qword_1EBAB9108;
    v43 = &qword_1B9681980;
LABEL_26:
    v48 = v3;
LABEL_38:
    sub_1B8D9207C(v48, v42, v43);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_5_18();
  sub_1B90492C4();
  if (!sub_1B8D92198(*v2, *(v2 + 8), *v24) || (sub_1B8D7AE94(*(v2 + 16), v24[2]), (v44 & 1) == 0))
  {
    sub_1B9049374();
    sub_1B9049374();
    v42 = &qword_1EBAB9100;
    v43 = &unk_1B964D8F0;
    goto LABEL_26;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_43();
  sub_1B8CD24E0(v45, v46, MEMORY[0x1E69AAC10]);
  v47 = sub_1B964C850();
  sub_1B9049374();
  sub_1B9049374();
  sub_1B8D9207C(v3, &qword_1EBAB9100, &unk_1B964D8F0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v34 = v81;
  v35 = *(v82 + 48);
  OUTLINED_FUNCTION_164_1();
  v36 = v34;
  OUTLINED_FUNCTION_164_1();
  v37 = v34;
  v38 = v76;
  OUTLINED_FUNCTION_178(v37, 1, v76);
  if (v32)
  {
    OUTLINED_FUNCTION_99_0(v36 + v35);
    v40 = v74;
    v39 = v75;
    if (!v32)
    {
      goto LABEL_37;
    }

    sub_1B8D9207C(v36, &off_1EBAB90F0, &unk_1B964D8E0);
    goto LABEL_29;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v36 + v35);
  v40 = v74;
  v39 = v75;
  if (v49)
  {
LABEL_36:
    v60 = OUTLINED_FUNCTION_292();
    v61(v60);
LABEL_37:
    v42 = &qword_1EBAB90F8;
    v43 = &qword_1B9687990;
    v48 = v36;
    goto LABEL_38;
  }

  v50 = OUTLINED_FUNCTION_135_5();
  v51(v50);
  OUTLINED_FUNCTION_18_12();
  sub_1B8CD24E0(v52, v53, MEMORY[0x1E69AA908]);
  OUTLINED_FUNCTION_2();
  v54 = sub_1B964C850();
  v55 = *(v39 + 8);
  v55(v40, v38);
  v56 = OUTLINED_FUNCTION_292();
  (v55)(v56);
  sub_1B8D9207C(v36, &off_1EBAB90F0, &unk_1B964D8E0);
  if (v54)
  {
LABEL_29:
    v57 = *(v82 + 48);
    v58 = v79;
    OUTLINED_FUNCTION_164_1();
    v36 = v58;
    OUTLINED_FUNCTION_164_1();
    OUTLINED_FUNCTION_99_0(v58);
    if (v32)
    {
      OUTLINED_FUNCTION_99_0(v58 + v57);
      if (v32)
      {
        sub_1B8D9207C(v58, &off_1EBAB90F0, &unk_1B964D8E0);
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v58 + v57);
    if (!v59)
    {
      v63 = OUTLINED_FUNCTION_135_5();
      v64(v63);
      OUTLINED_FUNCTION_18_12();
      sub_1B8CD24E0(v65, v66, MEMORY[0x1E69AA908]);
      OUTLINED_FUNCTION_2();
      v67 = sub_1B964C850();
      v68 = *(v39 + 8);
      v68(v40, v38);
      v69 = OUTLINED_FUNCTION_292();
      (v68)(v69);
      sub_1B8D9207C(v58, &off_1EBAB90F0, &unk_1B964D8E0);
      if ((v67 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_42:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_43();
      v72 = sub_1B8CD24E0(v70, v71, MEMORY[0x1E69AAC10]);
      v62 = OUTLINED_FUNCTION_199_0(v72);
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_39:
  v62 = 0;
LABEL_40:
  OUTLINED_FUNCTION_264(v62);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9048334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C10, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90483B4(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29C8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9048424(uint64_t a1, uint64_t a2)
{
  sub_1B8CD24E0(&qword_1EBAC29C8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact);

  return sub_1B964C5D0();
}

uint64_t sub_1B90484A4()
{
  result = MEMORY[0x1BFADC850](0x6966696C6175512ELL, 0xEA00000000007265);
  qword_1EBAC28E0 = 0xD00000000000001CLL;
  *algn_1EBAC28E8 = 0x80000001B97026D0;
  return result;
}

uint64_t sub_1B9048534()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC28F0);
  __swift_project_value_buffer(v0, qword_1EBAC28F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.Qualifier.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8CFC46C();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.Qualifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (sub_1B90495B8(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C680(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Kg_V1alpha_Fact.Qualifier.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  OUTLINED_FUNCTION_148_2();
  if (!sub_1B8D92198(v3, v4, v5))
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_43();
  v9 = sub_1B8CD24E0(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B9048960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C08, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90489E0(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29F8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9048A50(uint64_t a1, uint64_t a2)
{
  sub_1B8CD24E0(&qword_1EBAC29F8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier);

  return sub_1B964C5D0();
}

uint64_t sub_1B9048AD0()
{
  result = MEMORY[0x1BFADC850](0xD000000000000010, 0x80000001B9702710);
  qword_1EBAC2908 = 0xD00000000000001CLL;
  unk_1EBAC2910 = 0x80000001B97026D0;
  return result;
}

uint64_t sub_1B9048B64()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2918);
  __swift_project_value_buffer(v0, qword_1EBAC2918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "qualifier_type";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qualifier";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9048E0C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8CFC4BC();
    }
  }
}

void sub_1B9048E0C()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD24E0(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 16, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (sub_1B904960C(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C680(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(0), sub_1B8CD24E0(&qword_1EBAC29F8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  OUTLINED_FUNCTION_148_2();
  if (!sub_1B8D92198(v3, v4, v5))
  {
    return 0;
  }

  sub_1B8D7AE94(*(v2 + 16), *(v1 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_43();
  v9 = sub_1B8CD24E0(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B9049038()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B8CD24E0(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B90490F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C00, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9049174(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29E0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90491E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD24E0(&qword_1EBAC29E0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers, protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);

  return sub_1B964C5D0();
}

uint64_t sub_1B90492C4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B904931C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B9049374()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B9049468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B90495B8()
{
  result = qword_1EBAC2948;
  if (!qword_1EBAC2948)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_PropertyID, &type metadata for Apple_Parsec_Kg_V1alpha_PropertyID, v0, v1);
    atomic_store(result, &qword_1EBAC2948);
  }

  return result;
}

unint64_t sub_1B904960C()
{
  result = qword_1EBAC29C0;
  if (!qword_1EBAC29C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityType, &type metadata for Apple_Parsec_Kg_V1alpha_EntityType, v0, v1);
    atomic_store(result, &qword_1EBAC29C0);
  }

  return result;
}

unint64_t sub_1B9049664()
{
  result = qword_1EBAC2A08;
  if (!qword_1EBAC2A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_PropertyID, &type metadata for Apple_Parsec_Kg_V1alpha_PropertyID, v0, v1);
    atomic_store(result, &qword_1EBAC2A08);
  }

  return result;
}

unint64_t sub_1B90496BC()
{
  result = qword_1EBAC2A10;
  if (!qword_1EBAC2A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_PropertyID, &type metadata for Apple_Parsec_Kg_V1alpha_PropertyID, v0, v1);
    atomic_store(result, &qword_1EBAC2A10);
  }

  return result;
}

unint64_t sub_1B9049714()
{
  result = qword_1EBAC2A18;
  if (!qword_1EBAC2A18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_PropertyID, &type metadata for Apple_Parsec_Kg_V1alpha_PropertyID, v0, v1);
    atomic_store(result, &qword_1EBAC2A18);
  }

  return result;
}

unint64_t sub_1B904979C()
{
  result = qword_1EBAC2A30;
  if (!qword_1EBAC2A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityType, &type metadata for Apple_Parsec_Kg_V1alpha_EntityType, v0, v1);
    atomic_store(result, &qword_1EBAC2A30);
  }

  return result;
}

unint64_t sub_1B90497F4()
{
  result = qword_1EBAC2A38;
  if (!qword_1EBAC2A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityType, &type metadata for Apple_Parsec_Kg_V1alpha_EntityType, v0, v1);
    atomic_store(result, &qword_1EBAC2A38);
  }

  return result;
}

unint64_t sub_1B904984C()
{
  result = qword_1EBAC2A40;
  if (!qword_1EBAC2A40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Kg_V1alpha_EntityType, &type metadata for Apple_Parsec_Kg_V1alpha_EntityType, v0, v1);
    atomic_store(result, &qword_1EBAC2A40);
  }

  return result;
}

void sub_1B904A9F8(uint64_t a1)
{
  sub_1B904AAFC(319, &qword_1EBAC2B78, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904AAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B904AB88(uint64_t a1)
{
  sub_1B904AC54();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1EBAB4FE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904AC54()
{
  if (!qword_1EBAC2B80)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAC2B80);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_54Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_55Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B904AE54(uint64_t a1)
{
  sub_1B904AAFC(319, &qword_1EBAB4FF8, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B904AF08(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B904AFE0(uint64_t a1)
{
  sub_1B904AAFC(319, &qword_1EBAC2B88, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B904AAFC(319, &qword_1EBAC2B90, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904B104(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B904AAFC(319, &qword_1EBAB4FE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1EBAB53D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904B250(uint64_t a1)
{
  sub_1B904AAFC(319, &qword_1EBAC2BA8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B904AAFC(319, &qword_1EBAC2BB0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1EBAC2BB8, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1B964C2B0();
        if (v4 <= 0x3F)
        {
          sub_1B904AAFC(319, &qword_1EBAB53D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B904B414(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B904AAFC(319, &qword_1EBAC2BD0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1ED9EB350, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904B584(uint64_t a1)
{
  sub_1B904AAFC(319, &qword_1EBAC2BF8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_27_9()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_61_3()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_77_6(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_143_3()
{

  return sub_1B90492C4();
}

uint64_t OUTLINED_FUNCTION_147_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_158_4(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_161_4()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_164_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_165_2()
{

  return sub_1B90492C4();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.prefix.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.query.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.completionScore.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_22();
  sub_1B904BDB4(v1 + *(v6 + 44), v2);
  v7 = sub_1B964C150();
  v8 = OUTLINED_FUNCTION_178(v2, 1, v7);
  if (!v9)
  {
    return (*(*(v7 - 8) + 32))(a1, v2, v7);
  }

  MEMORY[0x1BFADC0D0](v8);
  result = OUTLINED_FUNCTION_178(v2, 1, v7);
  if (!v9)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC2CB0, &qword_1B96835C0);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(uint64_t a1)
{
  result = qword_1EBAC2CE8;
  if (!qword_1EBAC2CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B904BDB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B904BE24(uint64_t a1)
{
  v2 = sub_1B964C150();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return Apple_Parsec_Lookup_V1alpha_LookupSearchResults.completionScore.setter(v4);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.completionScore.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0) + 44);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
  v4 = sub_1B964C150();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, a1, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchResults.completionScore.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C150();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1();
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0) + 44);
  *(v3 + 12) = v13;
  sub_1B904BDB4(v1 + v13, v6);
  v14 = OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v15)
  {
    MEMORY[0x1BFADC0D0](v14);
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBAC2CB0, &qword_1B96835C0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B904C124;
}

void sub_1B904C124(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1B8D9207C(v9 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_43_1();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.hasCompletionScore.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_11_22();
  sub_1B904BDB4(v0 + *(v4 + 44), v1);
  v5 = sub_1B964C150();
  OUTLINED_FUNCTION_178(v1, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  return v7;
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchResults.clearCompletionScore()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0) + 44);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  v2 = sub_1B964C150();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.feedbackQuery.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.feedbackQuery.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.results.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 44);
  v4 = sub_1B964C150();

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t sub_1B904C670()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2C98);
  __swift_project_value_buffer(v0, qword_1EBAC2C98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B9650810;
  v4 = v22 + v3;
  v5 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v5 = "prefix";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "query";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "completion_score";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "feedback_query";
  *(v13 + 1) = 14;
  v13[16] = 2;
  *(v13 + 3) = "fbq";
  *(v13 + 4) = 3;
  v13[40] = 2;
  v8();
  v14 = v1[14];
  v15 = (v4 + 4 * v2);
  *v15 = 5;
  v16 = v15 + v14;
  *v16 = "max_age_seconds";
  *(v16 + 1) = 15;
  v16[16] = 2;
  *(v16 + 3) = "max_age";
  *(v16 + 4) = 7;
  v16[40] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "suggestions_are_blended";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 51;
  *v20 = "results";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Lookup_V1alpha_LookupSearchResults._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6FD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC2C98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_9();
        sub_1B904CB2C(v9, v10, v11, v12);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        if (result == 51)
        {
          v5 = OUTLINED_FUNCTION_9();
          sub_1B904CBE0(v5, v6, v7, v8);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B904CB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  sub_1B964C150();
  sub_1B904D8B0(&qword_1ED9C8FD8, MEMORY[0x1E69AA960], MEMORY[0x1E69AA958]);
  return sub_1B964C580();
}

uint64_t sub_1B904CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0);
  sub_1B904D8B0(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_SearchResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = sub_1B964C150();
  OUTLINED_FUNCTION_30_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v15 || (result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v17 || (result = sub_1B964C700(), !v4))
    {
      v21 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
      sub_1B904BDB4(v3 + *(v21 + 44), v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1B8D9207C(v8, &qword_1EBAC2CB0, &qword_1B96835C0);
      }

      else
      {
        (*(v11 + 32))(v14, v8, v9);
        OUTLINED_FUNCTION_1_38();
        sub_1B904D8B0(v18, v19, MEMORY[0x1E69AA958]);
        sub_1B964C740();
        if (v4)
        {
          return (*(v11 + 8))(v14, v9);
        }

        (*(v11 + 8))(v14, v9);
      }

      if (sub_1B8D99EA8(*(v3 + 32), *(v3 + 40)) || (result = sub_1B964C6A0(), !v4))
      {
        if (!*(v3 + 48) || (result = sub_1B964C6D0(), !v4))
        {
          if (*(v3 + 56) != 1 || (result = sub_1B964C670(), !v4))
          {
            if (!*(*(v3 + 64) + 16))
            {
              return sub_1B964C290();
            }

            type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0);
            sub_1B904D8B0(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, protocol conformance descriptor for Apple_Parsec_Search_V1alpha_SearchResult);
            result = sub_1B964C730();
            if (!v4)
            {
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Lookup_V1alpha_LookupSearchResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C150();
  OUTLINED_FUNCTION_30_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB8, &qword_1B96835C8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v17 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0) + 44);
  v19 = *(v12 + 48);
  sub_1B904BDB4(v1 + v18, v15);
  sub_1B904BDB4(v0 + v18, &v15[v19]);
  OUTLINED_FUNCTION_178(v15, 1, v2);
  if (v16)
  {
    OUTLINED_FUNCTION_178(&v15[v19], 1, v2);
    if (v16)
    {
      sub_1B8D9207C(v15, &qword_1EBAC2CB0, &qword_1B96835C0);
      goto LABEL_21;
    }

LABEL_19:
    sub_1B8D9207C(v15, &qword_1EBAC2CB8, &qword_1B96835C8);
LABEL_26:
    v26 = 0;
    return v26 & 1;
  }

  sub_1B904BDB4(v15, v11);
  OUTLINED_FUNCTION_178(&v15[v19], 1, v2);
  if (v20)
  {
    (*(v4 + 8))(v11, v2);
    goto LABEL_19;
  }

  (*(v4 + 32))(v7, &v15[v19], v2);
  OUTLINED_FUNCTION_1_38();
  sub_1B904D8B0(v21, v22, MEMORY[0x1E69AA968]);
  v23 = sub_1B964C850();
  v24 = *(v4 + 8);
  v24(v7, v2);
  v24(v11, v2);
  sub_1B8D9207C(v15, &qword_1EBAC2CB0, &qword_1B96835C0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((MEMORY[0x1BFADC060](*(v1 + 32), *(v1 + 40), *(v0 + 32), *(v0 + 40)) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (*(v1 + 48) != *(v0 + 48))
  {
    goto LABEL_26;
  }

  if (*(v1 + 56) != *(v0 + 56))
  {
    goto LABEL_26;
  }

  sub_1B8D61678(*(v1 + 64), *(v0 + 64));
  if ((v25 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1B964C2B0();
  sub_1B904D8B0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v26 = sub_1B964C850();
  return v26 & 1;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  sub_1B904D8B0(&qword_1EBAC2CC8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B904D464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B904D8B0(&qword_1EBAC2CF8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B904D4E4(uint64_t a1)
{
  v2 = sub_1B904D8B0(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B904D554(uint64_t a1, uint64_t a2)
{
  sub_1B904D8B0(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);

  return sub_1B964C5D0();
}

void sub_1B904D71C(uint64_t a1)
{
  sub_1B904D84C(319, &qword_1ED9C8FA8, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B904D84C(319, &qword_1ED9C8FD0, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904D84C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B904D8B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.searchQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v7);
  OUTLINED_FUNCTION_115(*(v8 + 20));
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v9, v10, v11, v12);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_57(v1);
  if (v13)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v13)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_44();
    return sub_1B9051124();
  }

  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.searchQuery.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_41_11();
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.searchQuery.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v13) + 20);
  *(v0 + 40) = v14;
  v15 = OUTLINED_FUNCTION_115(v14);
  sub_1B8DD9078(v15, v16, &qword_1EBAC2228, &unk_1B967FDC0);
  v17 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v17, v18, v7);
  if (v19)
  {
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v20, v21, v7);
    if (!v19)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_44();
    sub_1B9051124();
  }

  return sub_1B904DC08;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.hasSearchQuery.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v2);
  OUTLINED_FUNCTION_23_2(*(v3 + 20));
  v4 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_11(v4);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.clearSearchQuery()()
{
  v1 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v9, v10, v11, v12);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_57(v1);
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(a1 + v15) = qword_1ED9D38C8;
    v16 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_39();
    return sub_1B9051124();
  }

  return result;
}

uint64_t sub_1B904DE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B9051178();
  return a7(v11);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_1_39();
  OUTLINED_FUNCTION_41_11();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.queryContext.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v6);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 24));
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v15, v16, v17);
  if (v18)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(v9 + v19) = qword_1ED9D38C8;
    OUTLINED_FUNCTION_28_13();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, v21, v22);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_39();
    sub_1B9051124();
  }

  return sub_1B904E0A0;
}

void sub_1B904E0C8(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = **a1;
  if (a2)
  {
    sub_1B9051178();
    sub_1B8D9207C(v12 + v8, a3, a4);
    sub_1B9051124();
    OUTLINED_FUNCTION_187_1();
    sub_1B90511CC();
  }

  else
  {
    sub_1B8D9207C(v12 + v8, a3, a4);
    sub_1B9051124();
    OUTLINED_FUNCTION_187_1();
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.hasQueryContext.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v2);
  OUTLINED_FUNCTION_23_2(*(v3 + 24));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_11(Context);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.clearQueryContext()()
{
  v1 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v7);
  OUTLINED_FUNCTION_115(*(v8 + 32));
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v9, v10, v11, v12);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_57(v1);
  if (v13)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v13)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_19();
    return sub_1B9051124();
  }

  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_41_11();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.error.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Search_Error(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v13) + 32);
  *(v0 + 40) = v14;
  v15 = OUTLINED_FUNCTION_115(v14);
  sub_1B8DD9078(v15, v16, &qword_1EBAB9188, &qword_1B964D970);
  v17 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v17, v18, v7);
  if (v19)
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v20, v21, v7);
    if (!v19)
    {
      sub_1B8D9207C(v5, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_19();
    sub_1B9051124();
  }

  return sub_1B904E6D8;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.hasError.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v2);
  OUTLINED_FUNCTION_23_2(*(v3 + 32));
  v4 = type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_11(v4);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.clearError()()
{
  v1 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9188, &qword_1B964D970);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.traceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.searchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v8, v9, v10, v11);
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  OUTLINED_FUNCTION_57(v7);
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = xmmword_1B9652FE0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v12)
    {
      return sub_1B8D9207C(v7, &qword_1EBAC2D30, &unk_1B96E8F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_15();
    return sub_1B9051124();
  }

  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.searchResults.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC2D30, &unk_1B96E8F80);
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_41_11();
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.searchResults.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  *(v0 + 16) = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 36));
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_178(v14, v15, v16);
  if (v17)
  {
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0xE000000000000000;
    *(v8 + 32) = xmmword_1B9652FE0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_178(v22, v23, v24);
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2D30, &unk_1B96E8F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_15();
    sub_1B9051124();
  }

  return sub_1B904EB7C;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.hasSearchResults.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v2);
  OUTLINED_FUNCTION_23_2(*(v3 + 36));
  v4 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  OUTLINED_FUNCTION_11(v4);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.clearSearchResults()()
{
  v1 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC2D30, &unk_1B96E8F80);
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.serviceDebug.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(a1 + 32) = sub_1B964C7B0();
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B904EED8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2D00);
  __swift_project_value_buffer(v0, qword_1EBAC2D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "search_query";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_context";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B904F1E0(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B904F12C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B904F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  sub_1B9051220(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Search_PegasusSearchQuery);
  return sub_1B964C580();
}

uint64_t sub_1B904F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B9051220(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v27 = a3;
  v25 = a1;
  v26 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_156();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v9);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v22[1] = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v19 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(0);
  v20 = *(v19 + 20);
  v24 = v6;
  sub_1B8DD9078(v6 + v20, v16, &qword_1EBAC2228, &unk_1B967FDC0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1B8D9207C(v16, &qword_1EBAC2228, &unk_1B967FDC0);
  }

  else
  {
    sub_1B9051124();
    sub_1B9051220(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Search_PegasusSearchQuery);
    sub_1B964C740();
    result = sub_1B90511CC();
    if (v4)
    {
      return result;
    }
  }

  sub_1B8DD9078(v24 + *(v19 + 24), v5, &qword_1EBABED40, &qword_1B96809F0);
  if (__swift_getEnumTagSinglePayload(v5, 1, Context) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B9051124();
    sub_1B9051220(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
    sub_1B964C740();
    result = sub_1B90511CC();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Apple_Parsec_Lookup_V1alpha_LookupSearchRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v53 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v54 = v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v58 = v12;
  v13 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v18);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2250, &unk_1B967FDF0) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_156();
  v55 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest(v24);
  v25 = *(v55 + 20);
  v26 = *(v22 + 56);
  v59 = a1;
  sub_1B8DD9078(a1 + v25, v2, &qword_1EBAC2228, &unk_1B967FDC0);
  sub_1B8DD9078(a2 + v25, v2 + v26, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_178(v2, 1, v13);
  if (v31)
  {
    OUTLINED_FUNCTION_178(v2 + v26, 1, v13);
    if (v31)
    {
      sub_1B8D9207C(v2, &qword_1EBAC2228, &unk_1B967FDC0);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_1B8DD9078(v2, v21, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_178(v2 + v26, 1, v13);
  if (v31)
  {
    sub_1B90511CC();
LABEL_14:
    v32 = &qword_1EBAC2250;
    v33 = &unk_1B967FDF0;
LABEL_24:
    v38 = v2;
LABEL_30:
    sub_1B8D9207C(v38, v32, v33);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_44();
  sub_1B9051124();
  v34 = *v21 == *v17 && *(v21 + 1) == v17[1];
  if (!v34 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v21 + 2), v21[24], v17[2]))
  {
    sub_1B90511CC();
    OUTLINED_FUNCTION_432();
    sub_1B90511CC();
    v32 = &qword_1EBAC2228;
    v33 = &unk_1B967FDC0;
    goto LABEL_24;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_24();
  sub_1B9051220(v35, v36, MEMORY[0x1E69AAC10]);
  v37 = sub_1B964C850();
  sub_1B90511CC();
  sub_1B90511CC();
  sub_1B8D9207C(v2, &qword_1EBAC2228, &unk_1B967FDC0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v27 = *(v55 + 24);
  v28 = *(v56 + 48);
  v29 = v58;
  sub_1B8DD9078(v59 + v27, v58, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B8DD9078(a2 + v27, v29 + v28, &qword_1EBABED40, &qword_1B96809F0);
  v30 = Context;
  OUTLINED_FUNCTION_178(v29, 1, Context);
  if (v31)
  {
    OUTLINED_FUNCTION_178(v29 + v28, 1, v30);
    if (v31)
    {
      sub_1B8D9207C(v29, &qword_1EBABED40, &qword_1B96809F0);
LABEL_36:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_24();
      sub_1B9051220(v50, v51, MEMORY[0x1E69AAC10]);
      v41 = sub_1B964C850();
      return v41 & 1;
    }

    goto LABEL_28;
  }

  v39 = v54;
  sub_1B8DD9078(v29, v54, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_178(v29 + v28, 1, v30);
  if (v40)
  {
    sub_1B90511CC();
LABEL_28:
    v32 = &qword_1EBABED68;
    v33 = &qword_1B9680A10;
LABEL_29:
    v38 = v29;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_39();
  v43 = v53;
  sub_1B9051124();
  if (*(v39 + *(v30 + 20)) != *(v43 + *(v30 + 20)))
  {

    v44 = OUTLINED_FUNCTION_432();
    v46 = sub_1B9090820(v44, v45);

    if (!v46)
    {
      sub_1B90511CC();
      sub_1B90511CC();
      v32 = &qword_1EBABED40;
      v33 = &qword_1B96809F0;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_24();
  sub_1B9051220(v47, v48, MEMORY[0x1E69AAC10]);
  v49 = sub_1B964C850();
  sub_1B90511CC();
  sub_1B90511CC();
  sub_1B8D9207C(v29, &qword_1EBABED40, &qword_1B96809F0);
  if (v49)
  {
    goto LABEL_36;
  }

LABEL_31:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_1B904FCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9051220(&qword_1EBAC2DB0, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B904FD68(uint64_t a1)
{
  v2 = sub_1B9051220(&qword_1EBAC2D58, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B904FDD8(uint64_t a1, uint64_t a2)
{
  sub_1B9051220(&qword_1EBAC2D58, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B904FE74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2D18);
  __swift_project_value_buffer(v0, qword_1EBAC2D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "trace_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 50;
  *v14 = "search_results";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "service_debug";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B9050348(v15, v16, v17, v18);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B90501E0(v7, v8, v9, v10);
        break;
      case 3:
        sub_1B964C530();
        break;
      case 50:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9050294(v11, v12, v13, v14);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F283B0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B90501E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  sub_1B9051220(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
  return sub_1B964C580();
}

uint64_t sub_1B9050294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  sub_1B9051220(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
  return sub_1B964C580();
}

uint64_t sub_1B9050348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B9051220(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  sub_1B9051220(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  return sub_1B964C3A0();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D30, &unk_1B96E8F80);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v31 = v7;
  v8 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v28 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  if (!*v3 || (v17 = *(v3 + 8), v29 = *v3, v30 = v17, sub_1B8F2116C(), result = sub_1B964C680(), !v4))
  {
    v26 = v8;
    v27 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
    sub_1B8DD9078(v3 + *(v27 + 32), v15, &qword_1EBAB9188, &qword_1B964D970);
    OUTLINED_FUNCTION_28_13();
    if (__swift_getEnumTagSinglePayload(v19, v20, v21) == 1)
    {
      sub_1B8D9207C(v15, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B9051124();
      sub_1B9051220(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
      sub_1B964C740();
      result = sub_1B90511CC();
      if (v4)
      {
        return result;
      }
    }

    v22 = v3[3];
    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    v24 = v31;
    if (!v23 || (result = sub_1B964C700(), !v4))
    {
      sub_1B8DD9078(v3 + *(v27 + 36), v24, &qword_1EBAC2D30, &unk_1B96E8F80);
      if (__swift_getEnumTagSinglePayload(v24, 1, v26) == 1)
      {
        sub_1B8D9207C(v24, &qword_1EBAC2D30, &unk_1B96E8F80);
      }

      else
      {
        sub_1B9051124();
        sub_1B9051220(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
        sub_1B964C740();
        result = sub_1B90511CC();
        if (v4)
        {
          return result;
        }
      }

      if (!*(v3[4] + 16))
      {
        return sub_1B964C290();
      }

      v31 = sub_1B964C280();
      type metadata accessor for Debuglevelspb_AnyArray(0);
      sub_1B9051220(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
      sub_1B9051220(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
      result = sub_1B964C5E0();
      if (!v4)
      {
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  v60 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults(v2);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D30, &unk_1B96E8F80);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v59 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D40, &unk_1B9683790);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v56 - v12;
  v14 = type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v56 - v25;
  v27 = *v1;
  v28 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v28)
    {
      if (v28 == 1)
      {
        if (v27 != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v27 != 2)
      {
        goto LABEL_36;
      }
    }

    else if (v27)
    {
      goto LABEL_36;
    }
  }

  else if (v27 != v28)
  {
    goto LABEL_36;
  }

  v57 = v13;
  v56[0] = v6;
  v29 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse(0);
  v30 = v1;
  v56[1] = v29;
  v31 = *(v29 + 32);
  v32 = *(v23 + 48);
  v58 = v30;
  sub_1B8DD9078(v30 + v31, v26, &qword_1EBAB9188, &qword_1B964D970);
  sub_1B8DD9078(v0 + v31, &v26[v32], &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(v26, 1, v14);
  if (v33)
  {
    OUTLINED_FUNCTION_178(&v26[v32], 1, v14);
    if (v33)
    {
      sub_1B8D9207C(v26, &qword_1EBAB9188, &qword_1B964D970);
      goto LABEL_21;
    }

LABEL_19:
    v34 = &qword_1EBAB9190;
    v35 = &qword_1B964D978;
    v36 = v26;
LABEL_35:
    sub_1B8D9207C(v36, v34, v35);
    goto LABEL_36;
  }

  sub_1B8DD9078(v26, v22, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(&v26[v32], 1, v14);
  if (v33)
  {
    sub_1B90511CC();
    goto LABEL_19;
  }

  sub_1B9051124();
  v37 = static Apple_Parsec_Search_Error.== infix(_:_:)(v22, v18);
  sub_1B90511CC();
  OUTLINED_FUNCTION_236();
  sub_1B90511CC();
  sub_1B8D9207C(v26, &qword_1EBAB9188, &qword_1B964D970);
  if ((v37 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  v38 = v58[2] == v0[2] && v58[3] == v0[3];
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_36;
  }

  v39 = v57;
  v40 = *(v10 + 48);
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v41, v42, v43, v44);
  OUTLINED_FUNCTION_26_12();
  sub_1B8DD9078(v45, v46, v47, v48);
  OUTLINED_FUNCTION_178(v39, 1, v60);
  if (!v33)
  {
    sub_1B8DD9078(v39, v59, &qword_1EBAC2D30, &unk_1B96E8F80);
    OUTLINED_FUNCTION_57(v39 + v40);
    if (!v49)
    {
      sub_1B9051124();
      v52 = static Apple_Parsec_Lookup_V1alpha_LookupSearchResults.== infix(_:_:)();
      sub_1B90511CC();
      sub_1B90511CC();
      sub_1B8D9207C(v39, &qword_1EBAC2D30, &unk_1B96E8F80);
      if ((v52 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    sub_1B90511CC();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_57(v39 + v40);
  if (!v33)
  {
LABEL_34:
    v34 = &qword_1EBAC2D40;
    v35 = &unk_1B9683790;
    v36 = v39;
    goto LABEL_35;
  }

  sub_1B8D9207C(v39, &qword_1EBAC2D30, &unk_1B96E8F80);
LABEL_39:
  sub_1B8DAFA20();
  if (v53)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_24();
    sub_1B9051220(v54, v55, MEMORY[0x1E69AAC10]);
    v50 = sub_1B964C850();
    return v50 & 1;
  }

LABEL_36:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_1B9050EB0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B9051220(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9050F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9051220(&qword_1EBAC2DA8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9051014(uint64_t a1)
{
  v2 = sub_1B9051220(&qword_1EBAC2D70, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9051084(uint64_t a1, uint64_t a2)
{
  sub_1B9051220(&qword_1EBAC2D70, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse, protocol conformance descriptor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B9051124()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B9051178()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B90511CC()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B9051220(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B90514D0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B90516D0(319, &qword_1EBAB5CF0, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);
    if (v2 <= 0x3F)
    {
      sub_1B90516D0(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B90515CC(uint64_t a1)
{
  sub_1B8E00BFC(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B90516D0(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error);
      if (v3 <= 0x3F)
      {
        sub_1B90516D0(319, &qword_1EBAC2DA0, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B90516D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_40_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return sub_1B9051124();
}

unint64_t Apple_Parsec_Multimodal_V1_Placement.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9051828@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Multimodal_V1_Placement.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B905185C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B905895C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Multimodal_V1_Placement.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC2DB8 = a1;
}

uint64_t sub_1B90519A4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Multimodal_V1_Placement.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 24));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(a1 + v11) = qword_1ED9D38C8;
    v12 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_40();
    OUTLINED_FUNCTION_182();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_MultimodalRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v6);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 24));
  v15 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v15, v16, Context);
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0(&qword_1ED9D38C0);
    }

    *(v9 + v18) = qword_1ED9D38C8;
    v19 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v20, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_40();
    OUTLINED_FUNCTION_246();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.textualSignal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v7);
  OUTLINED_FUNCTION_51_9(*(v8 + 28));
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0xE000000000000000;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2E50, &qword_1B9683AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_18();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.textualSignal.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_MultimodalRequest.textualSignal.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 28));
  v15 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v15, v16, v7);
  if (v17)
  {
    *v9 = 0;
    *(v9 + 8) = 1;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0xE000000000000000;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0xE000000000000000;
    *(v9 + 64) = 0;
    *(v9 + 72) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v22, v23, v7);
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2E50, &qword_1B9683AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_18();
    OUTLINED_FUNCTION_246();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.visualSignal.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v5);
  OUTLINED_FUNCTION_51_9(*(v6 + 32));
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    result = OUTLINED_FUNCTION_57(v0);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC2E58, &qword_1B9683B00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_25();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.visualSignal.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC2E58, &qword_1B9683B00);
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_MultimodalRequest.visualSignal.modify()
{
  OUTLINED_FUNCTION_243();
  v0 = OUTLINED_FUNCTION_212();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_145_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v5);
  OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_202_0(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v11);
  OUTLINED_FUNCTION_19_11(*(v12 + 32));
  OUTLINED_FUNCTION_75(v4);
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_75(v4);
    if (!v13)
    {
      sub_1B8D9207C(v4, &qword_1EBAC2E58, &qword_1B9683B00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_25();
    OUTLINED_FUNCTION_461();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  v9 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.cardData.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v5);
  OUTLINED_FUNCTION_32_11(*(v6 + 24));
  sub_1B964C1C0();
  OUTLINED_FUNCTION_57(v0);
  if (v7)
  {
    sub_1B964C1B0();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_397();
    return v8();
  }

  return result;
}

uint64_t sub_1B9052658(uint64_t a1)
{
  v2 = sub_1B964C1C0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Multimodal_V1_Rendering.cardData.setter();
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.cardData.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Multimodal_V1_Rendering.cardData.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = sub_1B964C1C0();
  OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_30_1();
  *(v1 + 24) = v7;
  v9 = *(v8 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v9);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0) + 24);
  *(v1 + 48) = v10;
  sub_1B8DD9078(v0 + v10, v5, &qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_75(v5);
  if (v11)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_75(v5);
    if (!v11)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_461();
    v13(v12);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B905292C()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    (*(v5 + 16))((*v0)[4], v3, v4);
    sub_1B8D9207C(v7 + v1, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
    v12 = OUTLINED_FUNCTION_236();
    v13(v12);
  }

  else
  {
    sub_1B8D9207C(v7 + v1, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t sub_1B9052A9C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_103();
  v1(v7);
  OUTLINED_FUNCTION_24_3();
  sub_1B8DD9078(v8, v9, v10, v11);
  v12 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v15, v16, v17);
  return v14;
}

uint64_t sub_1B9052B88()
{
  OUTLINED_FUNCTION_111_0();
  v1(0);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v2, v3, v4);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.feedback.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.feedback.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t sub_1B9052C98()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9052D20()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  sub_1B964C1C0();
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.rendering.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v7);
  OUTLINED_FUNCTION_51_9(*(v8 + 28));
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C1C0();
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB90D0, &qword_1B964D8C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_19();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.rendering.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB90D0, &qword_1B964D8C0);
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_SectionResult.rendering.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 28));
  v15 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v15, v16, v7);
  if (v17)
  {
    *v9 = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C1C0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v22, v23, v7);
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAB90D0, &qword_1B964D8C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_19();
    OUTLINED_FUNCTION_246();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9053150()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_103();
  v1(v7);
  OUTLINED_FUNCTION_24_3();
  sub_1B8DD9078(v8, v9, v10, v11);
  v12 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v15, v16, v17);
  return v14;
}

uint64_t sub_1B905323C()
{
  OUTLINED_FUNCTION_111_0();
  v1(0);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v2, v3, v4);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_74_4(a1);
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.sectionBundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 36));
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB90C0, &unk_1B964D8B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_182();
    return sub_1B9058798();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_SectionRendering.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v0 = OUTLINED_FUNCTION_212();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_145_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v5);
  OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_75(v4);
  if (v14)
  {
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v4);
    if (!v14)
    {
      sub_1B8D9207C(v4, &qword_1EBAB90C0, &unk_1B964D8B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_461();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.hasBoundingBox.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v4);
  sub_1B8DD9078(v0 + *(v5 + 36), v1, &qword_1EBAB90C0, &unk_1B964D8B0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B964D8B0);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Multimodal_V1_SectionRendering.clearBoundingBox()()
{
  v1 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB90C0, &unk_1B964D8B0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionRendering.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Multimodal_V1_MultimodalResponse.statusCode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.statusCode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 32));
  type metadata accessor for Apple_Parsec_Search_Error(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_182();
    return sub_1B9058798();
  }

  return result;
}

uint64_t sub_1B9053B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B90587EC();
  return a7(v7);
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_11_23();
  OUTLINED_FUNCTION_75_4();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Multimodal_V1_MultimodalResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v0 = OUTLINED_FUNCTION_212();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_145_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Search_Error(v5);
  OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_75(v4);
  if (v14)
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = -1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v4);
    if (!v14)
    {
      sub_1B8D9207C(v4, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_461();
    sub_1B9058798();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B9053DE4()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    sub_1B90587EC();
    sub_1B8D9207C(v10 + v5, v3, v2);
    sub_1B9058798();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_177_1();
    sub_1B9058840();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v0, v1);
    sub_1B9058798();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t sub_1B9053F18()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_103();
  v1(v7);
  OUTLINED_FUNCTION_24_3();
  sub_1B8DD9078(v8, v9, v10, v11);
  v12 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v15, v16, v17);
  return v14;
}

uint64_t sub_1B9054004()
{
  OUTLINED_FUNCTION_111_0();
  v1(0);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v2, v3, v4);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.query.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.sectionRenderings.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_74_4(a1);
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Search_Error(0);
  v2 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B90542B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2DC0);
  __swift_project_value_buffer(v0, qword_1EBAC2DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLACEMENT_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLACEMENT_TOP";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLACEMENT_BOTTOM";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLACEMENT_TOP_HIT";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9054538()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2DD8);
  __swift_project_value_buffer(v0, qword_1EBAC2DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "textual_signal";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "visual_signal";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query_id";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_MultimodalRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9054840(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B90548F4(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B90549A8(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9054840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B9058914(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t sub_1B90548F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  sub_1B9058914(&qword_1EBAC2E68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextualSignal);
  return sub_1B964C580();
}

uint64_t sub_1B90549A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  sub_1B9058914(&qword_1EBAC2E60, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualSignal);
  return sub_1B964C580();
}

void Apple_Parsec_Multimodal_V1_MultimodalRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E58, &qword_1B9683B00);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v34 = v7;
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v32 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_77_3();
  v35 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v33 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_103();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v19);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v36 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(0);
  sub_1B8DD9078(v0 + v36[6], v2, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v21, v22, v23);
  if (v24)
  {
    sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B9058798();
    sub_1B9058914(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, protocol conformance descriptor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_80_3();
    sub_1B964C740();
    OUTLINED_FUNCTION_76_4();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  sub_1B8DD9078(v0 + v36[7], v3, &qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_178(v3, 1, v35);
  if (v24)
  {
    sub_1B8D9207C(v3, &qword_1EBAC2E50, &qword_1B9683AF8);
  }

  else
  {
    sub_1B9058798();
    v25 = sub_1B9058914(&qword_1EBAC2E68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextualSignal);
    OUTLINED_FUNCTION_108_3(v33, 2, v26, v25);
    v4 = v1;
    sub_1B9058840();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  sub_1B8DD9078(v0 + v36[8], v34, &qword_1EBAC2E58, &qword_1B9683B00);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v27, v28, v29);
  if (v24)
  {
    sub_1B8D9207C(v34, &qword_1EBAC2E58, &qword_1B9683B00);
  }

  else
  {
    sub_1B9058798();
    v30 = sub_1B9058914(&qword_1EBAC2E60, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualSignal);
    OUTLINED_FUNCTION_108_3(v32, 3, v31, v30);
    v4 = v1;
    sub_1B9058840();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  if (!*v0 || (sub_1B964C720(), !v4))
  {
    sub_1B964C290();
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Multimodal_V1_MultimodalRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v69 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E58, &qword_1B9683B00);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v67 = v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E70, &qword_1B9683B08);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v70 = v11;
  v73 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v71 = v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E78, &unk_1B9683B10);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v74 = v17;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v23);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_79();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_103();
  v75 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest(v27);
  v76 = v5;
  v28 = v75[6];
  v29 = *(v25 + 56);
  sub_1B8DD9078(v5 + v28, v1, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B8DD9078(v3 + v28, v1 + v29, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v30, v31, v32);
  if (v39)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v33, v34, v35);
    if (v39)
    {
      sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1B8DD9078(v1, v0, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v36, v37, v38);
  if (v39)
  {
    sub_1B9058840();
LABEL_9:
    v40 = &qword_1EBABED68;
    v41 = &qword_1B9680A10;
LABEL_10:
    v42 = v1;
LABEL_34:
    sub_1B8D9207C(v42, v40, v41);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_1_40();
  sub_1B9058798();
  v43 = *(Context + 20);
  v44 = *(v0 + v43);
  v45 = *(v22 + v43);
  if (v44 != v45)
  {

    v46 = sub_1B9090820(v44, v45);

    if (!v46)
    {
      sub_1B9058840();
      sub_1B9058840();
      v40 = &qword_1EBABED40;
      v41 = &qword_1B96809F0;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_45();
  sub_1B9058914(v47, v48, MEMORY[0x1E69AAC10]);
  v49 = sub_1B964C850();
  sub_1B9058840();
  OUTLINED_FUNCTION_246();
  sub_1B9058840();
  sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_14:
  v50 = v75[7];
  v51 = *(v72 + 48);
  sub_1B8DD9078(v5 + v50, v74, &qword_1EBAC2E50, &qword_1B9683AF8);
  sub_1B8DD9078(v3 + v50, v74 + v51, &qword_1EBAC2E50, &qword_1B9683AF8);
  v52 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v52, v53, v73);
  if (v39)
  {
    OUTLINED_FUNCTION_178(v74 + v51, 1, v73);
    if (v39)
    {
      sub_1B8D9207C(v74, &qword_1EBAC2E50, &qword_1B9683AF8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_1B8DD9078(v74, v71, &qword_1EBAC2E50, &qword_1B9683AF8);
  OUTLINED_FUNCTION_178(v74 + v51, 1, v73);
  if (v54)
  {
    sub_1B9058840();
LABEL_22:
    v40 = &qword_1EBAC2E78;
    v41 = &unk_1B9683B10;
    v42 = v74;
    goto LABEL_34;
  }

  sub_1B9058798();
  v55 = static Apple_Parsec_Multimodal_V1_TextualSignal.== infix(_:_:)();
  sub_1B9058840();
  sub_1B9058840();
  sub_1B8D9207C(v74, &qword_1EBAC2E50, &qword_1B9683AF8);
  if ((v55 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  v56 = v75[8];
  v57 = *(v68 + 48);
  sub_1B8DD9078(v76 + v56, v70, &qword_1EBAC2E58, &qword_1B9683B00);
  sub_1B8DD9078(v3 + v56, v70 + v57, &qword_1EBAC2E58, &qword_1B9683B00);
  v58 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v58, v59, v69);
  if (!v39)
  {
    sub_1B8DD9078(v70, v67, &qword_1EBAC2E58, &qword_1B9683B00);
    OUTLINED_FUNCTION_178(v70 + v57, 1, v69);
    if (!v60)
    {
      sub_1B9058798();
      v62 = OUTLINED_FUNCTION_461();
      v64 = static Apple_Parsec_Multimodal_V1_VisualSignal.== infix(_:_:)(v62, v63);
      sub_1B9058840();
      OUTLINED_FUNCTION_182();
      sub_1B9058840();
      sub_1B8D9207C(v70, &qword_1EBAC2E58, &qword_1B9683B00);
      if ((v64 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    sub_1B9058840();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_178(v70 + v57, 1, v69);
  if (!v39)
  {
LABEL_33:
    v40 = &qword_1EBAC2E70;
    v41 = &qword_1B9683B08;
    v42 = v70;
    goto LABEL_34;
  }

  sub_1B8D9207C(v70, &qword_1EBAC2E58, &qword_1B9683B00);
LABEL_38:
  if (*v76 == *v3)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_45();
    sub_1B9058914(v65, v66, MEMORY[0x1E69AAC10]);
    v61 = sub_1B964C850();
    goto LABEL_36;
  }

LABEL_35:
  v61 = 0;
LABEL_36:
  OUTLINED_FUNCTION_264(v61);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B905574C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FF8, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_MultimodalRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90557CC(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2F00, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_MultimodalRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905583C(uint64_t a1, uint64_t a2)
{
  sub_1B9058914(&qword_1EBAC2F00, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalRequest, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_MultimodalRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B90558D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2DF0);
  __swift_project_value_buffer(v0, qword_1EBAC2DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cardData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feedback";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_Rendering.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C470();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9055B24(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9055B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  sub_1B964C1C0();
  sub_1B9058914(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  return sub_1B964C580();
}

void Apple_Parsec_Multimodal_V1_Rendering.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v18[1] = v3;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_186_1();
  v18[0] = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v14);
  sub_1B8DD9078(v1 + *(v18[0] + 24), v9, &qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_178(v9, 1, v10);
  if (v15)
  {
    sub_1B8D9207C(v9, &qword_1EBAB8F20, &qword_1B964D720);
  }

  else
  {
    (*(v12 + 32))(v2, v9, v10);
    OUTLINED_FUNCTION_31_14();
    sub_1B9058914(v16, v17, MEMORY[0x1E69AAB08]);
    sub_1B964C740();
    if (v0)
    {
      (*(v12 + 8))(v2, v10);
      goto LABEL_10;
    }

    (*(v12 + 8))(v2, v10);
  }

  if (sub_1B8D99EA8(*v1, *(v1 + 8)) || (sub_1B964C6A0(), !v0))
  {
    sub_1B964C290();
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Multimodal_V1_Rendering.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  OUTLINED_FUNCTION_313();
  v5 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v35 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_173();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_103();
  v16 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v15) + 24);
  v17 = *(v13 + 56);
  OUTLINED_FUNCTION_65_7(v0 + v16, v1);
  OUTLINED_FUNCTION_65_7(v4 + v16, v1 + v17);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v18, v19, v20);
  if (v27)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v21, v22, v23);
    if (v27)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v1, &qword_1EBAB8F28, &unk_1B9683B20);
LABEL_13:
    v34 = 0;
    goto LABEL_14;
  }

  sub_1B8DD9078(v1, v2, &qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v24, v25, v26);
  if (v27)
  {
    (*(v35 + 8))(v2, v5);
    goto LABEL_9;
  }

  (*(v35 + 32))(v10, v1 + v17, v5);
  OUTLINED_FUNCTION_31_14();
  sub_1B9058914(v28, v29, MEMORY[0x1E69AAB20]);
  v30 = sub_1B964C850();
  v31 = *(v35 + 8);
  v31(v10, v5);
  v31(v2, v5);
  sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((MEMORY[0x1BFADC060](*v0, v0[1], *v4, v4[1]) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_45();
  sub_1B9058914(v32, v33, MEMORY[0x1E69AAC10]);
  v34 = sub_1B964C850();
LABEL_14:
  OUTLINED_FUNCTION_264(v34);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90561C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FF0, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Rendering);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9056240(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2E98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Rendering);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90562B0(uint64_t a1, uint64_t a2)
{
  sub_1B9058914(&qword_1EBAC2E98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Rendering);

  return sub_1B964C5D0();
}

uint64_t sub_1B9056348()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2E08);
  __swift_project_value_buffer(v0, qword_1EBAC2E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rendering";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "placement";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 1000;
  *v12 = "rendering_metadata_json";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_SectionResult.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1000:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B90566AC(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B90565F8(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B90565F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  sub_1B9058914(&qword_1EBAC2E98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Rendering);
  return sub_1B964C580();
}

void Apple_Parsec_Multimodal_V1_SectionResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_186_1();
  type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v14 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0);
  sub_1B8DD9078(v1 + *(v14 + 28), v2, &qword_1EBAB90D0, &qword_1B964D8C0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v9, v10, v11);
  if (v12)
  {
    sub_1B8D9207C(v2, &qword_1EBAB90D0, &qword_1B964D8C0);
  }

  else
  {
    sub_1B9058798();
    sub_1B9058914(&qword_1EBAC2E98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Rendering);
    OUTLINED_FUNCTION_80_3();
    sub_1B964C740();
    OUTLINED_FUNCTION_76_4();
    if (v0)
    {
      goto LABEL_10;
    }
  }

  if (!*v1 || (sub_1B905895C(), sub_1B964C680(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v13 || (sub_1B964C700(), !v0))
    {
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Multimodal_V1_SectionResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D0, &qword_1B964D8C0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_173();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D8, &qword_1B964D8C8) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_79();
  v10 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0) + 28);
  v11 = *(v8 + 56);
  OUTLINED_FUNCTION_65_7(v1 + v10, v2);
  OUTLINED_FUNCTION_65_7(v0 + v10, v2 + v11);
  v12 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v12, v13, v4);
  if (!v14)
  {
    sub_1B8DD9078(v2, v3, &qword_1EBAB90D0, &qword_1B964D8C0);
    OUTLINED_FUNCTION_178(v2 + v11, 1, v4);
    if (!v14)
    {
      sub_1B9058798();
      static Apple_Parsec_Multimodal_V1_Rendering.== infix(_:_:)();
      v17 = v16;
      sub_1B9058840();
      sub_1B9058840();
      sub_1B8D9207C(v2, &qword_1EBAB90D0, &qword_1B964D8C0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1B9058840();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBAB90D8, &qword_1B964D8C8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_178(v2 + v11, 1, v4);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB90D0, &qword_1B964D8C0);
LABEL_13:
  v18 = *v1;
  v19 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v19)
    {
      case 1:
        if (v18 == 1)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 2:
        if (v18 == 2)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 3:
        if (v18 == 3)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      default:
        if (!v18)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
    }
  }

  if (v18 == v19)
  {
LABEL_18:
    v20 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v20 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_45();
      sub_1B9058914(v21, v22, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_81_6();
      v15 = sub_1B964C850();
      goto LABEL_11;
    }
  }

LABEL_10:
  v15 = 0;
LABEL_11:
  OUTLINED_FUNCTION_264(v15);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9056CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FE8, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_SectionResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9056D74(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2EA8, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_SectionResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9056DE4(uint64_t a1, uint64_t a2)
{
  sub_1B9058914(&qword_1EBAC2EA8, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_SectionResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B9056E7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2E20);
  __swift_project_value_buffer(v0, qword_1EBAC2E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "section_bundle_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "section_header";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "section_results";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "max_initially_visible_results";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 1000;
  *v16 = "bounding_box";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Multimodal_V1_SectionRendering.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9057EA8();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        if (v1 == 1000)
        {
          v3 = OUTLINED_FUNCTION_9();
          sub_1B9057228(v3, v4, v5, v6);
        }

        break;
    }
  }
}

uint64_t sub_1B9057228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  sub_1B9058914(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox);
  return sub_1B964C580();
}

void Apple_Parsec_Multimodal_V1_SectionRendering.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_186_1();
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v9 || (v1 = v0, sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v10 || (v1 = v0, sub_1B964C700(), !v0))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0), sub_1B9058914(&qword_1EBAC2EA8, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_SectionResult), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), (v0 = v1) == 0))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_24_3(), sub_1B964C710(), !v0))
        {
          v11 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0);
          sub_1B8DD9078(v2 + *(v11 + 36), v3, &qword_1EBAB90C0, &unk_1B964D8B0);
          OUTLINED_FUNCTION_178(v3, 1, v7);
          if (v12)
          {
            sub_1B8D9207C(v3, &qword_1EBAB90C0, &unk_1B964D8B0);
LABEL_13:
            OUTLINED_FUNCTION_12();
            sub_1B964C290();
            goto LABEL_14;
          }

          sub_1B9058798();
          sub_1B9058914(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox);
          OUTLINED_FUNCTION_39_4();
          sub_1B964C740();
          OUTLINED_FUNCTION_76_4();
          if (!v0)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9057900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FE0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_SectionRendering);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9057980(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2EC0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_SectionRendering);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90579F0(uint64_t a1, uint64_t a2)
{
  sub_1B9058914(&qword_1EBAC2EC0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_SectionRendering);

  return sub_1B964C5D0();
}

uint64_t sub_1B9057A88()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2E38);
  __swift_project_value_buffer(v0, qword_1EBAC2E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status_code";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "query";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "section_renderings";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Multimodal_V1_MultimodalResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8F283B0(v3, v4, v5, v6);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9057DF4(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9057EA8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9057DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(0);
  type metadata accessor for Apple_Parsec_Search_Error(0);
  sub_1B9058914(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
  return sub_1B964C580();
}

void sub_1B9057EA8()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6(0);
  sub_1B9058914(v5, v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Multimodal_V1_MultimodalResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_77_3();
  v7 = type metadata accessor for Apple_Parsec_Search_Error(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  if (!*v2 || (sub_1B8F2116C(), v1 = v0, sub_1B964C680(), !v0))
  {
    v11 = type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse(0);
    sub_1B8DD9078(v2 + *(v11 + 32), v3, &qword_1EBAB9188, &qword_1B964D970);
    OUTLINED_FUNCTION_178(v3, 1, v7);
    if (v9)
    {
      sub_1B8D9207C(v3, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B9058798();
      sub_1B9058914(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error, protocol conformance descriptor for Apple_Parsec_Search_Error);
      v1 = v0;
      sub_1B964C740();
      sub_1B9058840();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v10 || (v1 = v0, sub_1B964C700(), !v0))
    {
      if (!*(v2[4] + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(0), sub_1B9058914(&qword_1EBAC2EC0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_SectionRendering), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
      {
        OUTLINED_FUNCTION_12();
        sub_1B964C290();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9058550()
{
  OUTLINED_FUNCTION_111_0();
  v2 = v1;
  sub_1B964CA70();
  v2(0);
  v3 = OUTLINED_FUNCTION_461();
  sub_1B9058914(v3, v4, v0);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9058628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9058914(&qword_1EBAC2FD8, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_MultimodalResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90586A8(uint64_t a1)
{
  v2 = sub_1B9058914(&qword_1EBAC2F48, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_MultimodalResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9058718(uint64_t a1, uint64_t a2)
{
  sub_1B9058914(&qword_1EBAC2F48, type metadata accessor for Apple_Parsec_Multimodal_V1_MultimodalResponse, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_MultimodalResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B9058798()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B90587EC()
{
  v1 = OUTLINED_FUNCTION_280();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  v3 = OUTLINED_FUNCTION_432();
  v4(v3);
  return v0;
}

uint64_t sub_1B9058840()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B9058914(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B905895C()
{
  result = qword_1EBAC2E90;
  if (!qword_1EBAC2E90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Placement, &type metadata for Apple_Parsec_Multimodal_V1_Placement, v0, v1);
    atomic_store(result, &qword_1EBAC2E90);
  }

  return result;
}

unint64_t sub_1B90589B4()
{
  result = qword_1EBAC2ED0;
  if (!qword_1EBAC2ED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Placement, &type metadata for Apple_Parsec_Multimodal_V1_Placement, v0, v1);
    atomic_store(result, &qword_1EBAC2ED0);
  }

  return result;
}

unint64_t sub_1B9058A0C()
{
  result = qword_1EBAC2ED8;
  if (!qword_1EBAC2ED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Placement, &type metadata for Apple_Parsec_Multimodal_V1_Placement, v0, v1);
    atomic_store(result, &qword_1EBAC2ED8);
  }

  return result;
}

unint64_t sub_1B9058A64()
{
  result = qword_1EBAC2EE0;
  if (!qword_1EBAC2EE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Multimodal_V1_Placement, &type metadata for Apple_Parsec_Multimodal_V1_Placement, v0, v1);
    atomic_store(result, &qword_1EBAC2EE0);
  }

  return result;
}

unint64_t sub_1B9058ABC()
{
  result = qword_1EBAC2EE8;
  if (!qword_1EBAC2EE8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC2EF0, &qword_1B9683C28);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC2EE8);
  }

  return result;
}

void sub_1B90590F8(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B905924C(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B905924C(319, &qword_1EBAC2F68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B905924C(319, &qword_1EBAC2F70, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B905924C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B90592D8(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B905924C(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90593C4(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B905924C(319, &qword_1EBAC2F98, type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90594B8(uint64_t a1)
{
  sub_1B905924C(319, &qword_1EBAC2FB0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B905924C(319, &qword_1EBAC2FB8, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B90595F4(uint64_t a1)
{
  sub_1B905924C(319, &qword_1EBAC2FD0, type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B905924C(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_32_11@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v1 + a1, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_51_9@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v2 + a1, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_75_4()
{

  return sub_1B9058798();
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return sub_1B9058840();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.surroundingText.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.queryBoundingBoxes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Multimodal_V1_TextContext.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.queryType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.query.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.textContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  sub_1B9059D4C(v1 + *(v7 + 40), v6);
  v8 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (!v11)
  {
    return sub_1B9059DBC(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v12, v13, v8);
  if (!v11)
  {
    return sub_1B8D9207C(v6, &qword_1EBAC3030, &qword_1B9684520);
  }

  return result;
}

uint64_t sub_1B9059D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9059DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9059E20(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B905A164(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Multimodal_V1_TextualSignal.textContext.setter();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.textContext.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v2) + 40);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC3030, &qword_1B9684520);
  sub_1B9059DBC(v0, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Multimodal_V1_TextualSignal.textContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0) + 40);
  *(v3 + 10) = v11;
  sub_1B9059D4C(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAC3030, &qword_1B9684520);
    }
  }

  else
  {
    sub_1B9059DBC(v6, v10);
  }

  return sub_1B905A084;
}

void sub_1B905A084(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B905A164((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBAC3030, &qword_1B9684520);
    sub_1B9059DBC(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B905A1C8(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAC3030, &qword_1B9684520);
    sub_1B9059DBC(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B905A164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B905A1C8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.hasTextContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  v5 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  sub_1B9059D4C(v0 + *(v5 + 40), v4);
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_1B8D9207C(v4, &qword_1EBAC3030, &qword_1B9684520);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Multimodal_V1_TextualSignal.clearTextContext()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0) + 40);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC3030, &qword_1B9684520);
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.lookupSelectionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.lookupAppBundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.lookupHintDomain.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v2) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Multimodal_V1_TextualSignal.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(v0);
  return nullsub_1;
}

uint64_t sub_1B905A5C8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3000);
  __swift_project_value_buffer(v0, qword_1EBAC3000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "surrounding_text";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1000;
  *v10 = "query_bounding_boxes";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1000)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B905A828(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B905A828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  sub_1B905BAA4(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Multimodal_V1_TextContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v1))
  {
    if (!*(*(v0 + 16) + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0), sub_1B905BAA4(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_TextContext.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D83D3C(a1[2], a2[2]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_46();
  sub_1B905BAA4(v6, v7, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B905AB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B905BAA4(&qword_1EBAC30C0, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905AB94(uint64_t a1)
{
  v2 = sub_1B905BAA4(&qword_1EBAC3050, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905AC04(uint64_t a1, uint64_t a2)
{
  sub_1B905BAA4(&qword_1EBAC3050, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B905ACA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3018);
  __swift_project_value_buffer(v0, qword_1EBAC3018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "queryType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_context";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "lookupSelectionType";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "lookupAppBundleId";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "lookupHintDomain";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B905B048(v3, v4, v5, v6);
        break;
      case 2:
      case 5:
      case 6:
        sub_1B964C530();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B905B0B0(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B905B164(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B905B0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  sub_1B905BAA4(&qword_1EBAC3050, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Multimodal_V1_TextualSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v27 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = *(v5 + 8);
  if (sub_1B8D92198(v13, v14, 0) || (v25 = v13, v26 = v14, sub_1B905BAEC(), result = sub_1B964C680(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v16 || (result = sub_1B964C700(), !v4))
    {
      v17 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0);
      sub_1B9059D4C(v5 + *(v17 + 40), v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v27) == 1)
      {
        sub_1B8D9207C(v9, &qword_1EBAC3030, &qword_1B9684520);
      }

      else
      {
        sub_1B9059DBC(v9, v12);
        sub_1B905BAA4(&qword_1EBAC3050, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextContext);
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        result = sub_1B905A1C8(v12);
        if (v4)
        {
          return result;
        }
      }

      if (!v5[4] || (v18 = *(v5 + 40), v25 = v5[4], v26 = v18, sub_1B905BB40(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v4))
      {
        OUTLINED_FUNCTION_1();
        if (!v21 || (result = OUTLINED_FUNCTION_3(v19, v20, 5), !v4))
        {
          OUTLINED_FUNCTION_1();
          if (!v24)
          {
            return OUTLINED_FUNCTION_8_1();
          }

          result = OUTLINED_FUNCTION_3(v22, v23, 6);
          if (!v4)
          {
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_TextualSignal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v31 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3058, &qword_1B9684528);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  if (!sub_1B8D92198(*v1, *(v1 + 8), *v0))
  {
    goto LABEL_38;
  }

  v14 = *(v1 + 16) == v0[2] && *(v1 + 24) == v0[3];
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  v15 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal(0) + 40);
  v16 = *(v10 + 48);
  sub_1B9059D4C(v1 + v15, v13);
  sub_1B9059D4C(v0 + v15, &v13[v16]);
  OUTLINED_FUNCTION_178(v13, 1, v2);
  if (v14)
  {
    OUTLINED_FUNCTION_178(&v13[v16], 1, v2);
    if (v14)
    {
      sub_1B8D9207C(v13, &qword_1EBAC3030, &qword_1B9684520);
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  sub_1B9059D4C(v13, v9);
  OUTLINED_FUNCTION_178(&v13[v16], 1, v2);
  if (v22)
  {
    sub_1B905A1C8(v9);
LABEL_27:
    v23 = &qword_1EBAC3058;
    v24 = &qword_1B9684528;
LABEL_37:
    sub_1B8D9207C(v13, v23, v24);
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

  sub_1B9059DBC(&v13[v16], v5);
  v25 = *v9 == *v5 && v9[1] == v5[1];
  if (!v25 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D83D3C(v9[2], v5[2]), (v26 & 1) == 0))
  {
    sub_1B905A1C8(v5);
    sub_1B905A1C8(v9);
    v23 = &qword_1EBAC3030;
    v24 = &qword_1B9684520;
    goto LABEL_37;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_46();
  sub_1B905BAA4(v27, v28, MEMORY[0x1E69AAC10]);
  v29 = sub_1B964C850();
  sub_1B905A1C8(v5);
  sub_1B905A1C8(v9);
  sub_1B8D9207C(v13, &qword_1EBAC3030, &qword_1B9684520);
  if ((v29 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_12:
  if (!sub_1B8D92198(*(v1 + 32), *(v1 + 40), v0[4]))
  {
    goto LABEL_38;
  }

  v17 = *(v1 + 48) == v0[6] && *(v1 + 56) == v0[7];
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  v18 = *(v1 + 64) == v0[8] && *(v1 + 72) == v0[9];
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_46();
  sub_1B905BAA4(v19, v20, MEMORY[0x1E69AAC10]);
  v21 = sub_1B964C850();
  return v21 & 1;
}

uint64_t sub_1B905B850(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B905BAA4(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B905B934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B905BAA4(&qword_1EBAC30B8, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextualSignal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905B9B4(uint64_t a1)
{
  v2 = sub_1B905BAA4(&qword_1EBAC2E68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextualSignal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905BA24(uint64_t a1, uint64_t a2)
{
  sub_1B905BAA4(&qword_1EBAC2E68, type metadata accessor for Apple_Parsec_Multimodal_V1_TextualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_TextualSignal);

  return sub_1B964C5D0();
}

uint64_t sub_1B905BAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B905BAEC()
{
  result = qword_1EBAC3040;
  if (!qword_1EBAC3040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_V2_QueryType, &type metadata for Apple_Parsec_Search_V2_QueryType, v0, v1);
    atomic_store(result, &qword_1EBAC3040);
  }

  return result;
}

unint64_t sub_1B905BB40()
{
  result = qword_1EBAC3048;
  if (!qword_1EBAC3048)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Search_V2_LookupSelectionType, &type metadata for Apple_Parsec_Search_V2_LookupSelectionType, v0, v1);
    atomic_store(result, &qword_1EBAC3048);
  }

  return result;
}

void sub_1B905BDFC(uint64_t a1)
{
  sub_1B905BFC8(319, &qword_1EBAC3098, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B905BEE8(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B905BFC8(319, &qword_1EBAC30B0, type metadata accessor for Apple_Parsec_Multimodal_V1_TextContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B905BFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.init()(uint64_t a1)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v2) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v5);
  OUTLINED_FUNCTION_115(*(v6 + 24));
  sub_1B8D92024();
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v7);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v11, v12, v7);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB90C0, &unk_1B964D8B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_182();
    return sub_1B905CF40();
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_3_26();
  sub_1B905CF40();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Multimodal_V1_RegionInfo.boundingBox.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0) + 24);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  OUTLINED_FUNCTION_643(v12, v13);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBAB90C0, &unk_1B964D8B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_26();
    sub_1B905CF40();
  }

  return sub_1B905C684;
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.hasBoundingBox.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v2);
  OUTLINED_FUNCTION_115(*(v3 + 24));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  v4 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &unk_1B964D8B0);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Multimodal_V1_RegionInfo.clearBoundingBox()()
{
  v1 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB90C0, &unk_1B964D8B0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.predictedLabels.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.predictions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B905CAAC()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B905CB54()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B905CCC8()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B905CD50()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Apple_Parsec_Multimodal_V1_VisualQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualQuery.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.visualQuery.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v5);
  OUTLINED_FUNCTION_115(*(v6 + 20));
  sub_1B8D92024();
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v7);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v11, v12, v7);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3168, &unk_1B9684898);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_182();
    return sub_1B905CF40();
  }

  return result;
}

uint64_t sub_1B905CF40()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B905CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B905D32C();
  return a7(v11);
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.visualQuery.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_1_41();
  sub_1B905CF40();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Multimodal_V1_VisualSignal.visualQuery.modify(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0) + 20);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  OUTLINED_FUNCTION_643(v12, v13);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBAC3168, &unk_1B9684898);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_41();
    sub_1B905CF40();
  }

  return sub_1B905D210;
}

void sub_1B905D238(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = **a1;
  if (a2)
  {
    sub_1B905D32C();
    sub_1B8D9207C(v12 + v8, a3, a4);
    sub_1B905CF40();
    OUTLINED_FUNCTION_187_1();
    sub_1B905D384();
  }

  else
  {
    sub_1B8D9207C(v12 + v8, a3, a4);
    sub_1B905CF40();
    OUTLINED_FUNCTION_187_1();
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t sub_1B905D32C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B905D384()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.hasVisualQuery.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v2);
  OUTLINED_FUNCTION_115(*(v3 + 20));
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  v4 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v9, v10, &unk_1B9684898);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Multimodal_V1_VisualSignal.clearVisualQuery()()
{
  v1 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC3168, &unk_1B9684898);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B905D5D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC30C8);
  __swift_project_value_buffer(v0, qword_1EBAC30C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B964EE70;
  v4 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v4 = "x";
  *(v4 + 8) = 1;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v16 + v3 + v2 + v1[14];
  *(v16 + v3 + v2) = 2;
  *v8 = "y";
  *(v8 + 8) = 1;
  *(v8 + 16) = 2;
  v7();
  v9 = (v16 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "width";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v16 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v16 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "identifier";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
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
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Multimodal_V1_BoundingBox.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (result = OUTLINED_FUNCTION_23_3(1, *v0), !v1))
  {
    v3 = v2[1];
    if (v3 == 0.0 || (result = OUTLINED_FUNCTION_23_3(2, v3), !v1))
    {
      v4 = v2[2];
      if (v4 == 0.0 || (result = OUTLINED_FUNCTION_23_3(3, v4), !v1))
      {
        v5 = v2[3];
        if (v5 == 0.0 || (result = OUTLINED_FUNCTION_23_3(4, v5), !v1))
        {
          OUTLINED_FUNCTION_1();
          if (!v6 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
          {
            type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_BoundingBox.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v6 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  v9 = sub_1B8CD2528(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B905DB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32D0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905DBF0(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905DC60(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2528(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox);

  return sub_1B964C5D0();
}

uint64_t sub_1B905DCF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC30E0);
  __swift_project_value_buffer(v0, qword_1EBAC30E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "predicted_labels";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B905F6C8(v7, v8, v9, v10, v11, &qword_1EBAC3178, v12, v13);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B905DF94(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B905DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  sub_1B8CD2528(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Multimodal_V1_RegionInfo.traverse<A>(visitor:)(uint64_t a1)
{
  v12 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v10 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  v11 = v1;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAB90C0, &unk_1B964D8B0);
  }

  else
  {
    sub_1B905CF40();
    sub_1B8CD2528(&qword_1EBAC2EB0, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_BoundingBox);
    OUTLINED_FUNCTION_39_5();
    sub_1B964C740();
    result = sub_1B905D384();
    if (v2)
    {
      return result;
    }
  }

  if (!*(*v11 + 16))
  {
    return sub_1B964C290();
  }

  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(0);
  sub_1B8CD2528(&qword_1EBAC3178, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_39_5();
  result = sub_1B964C730();
  if (!v2)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_RegionInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C8, &unk_1B9683B30) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v25 = type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0);
  v26 = a1;
  v17 = *(v13 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v16, 1, v4);
  if (v18)
  {
    OUTLINED_FUNCTION_178(&v16[v17], 1, v4);
    if (v18)
    {
      sub_1B8D9207C(v16, &qword_1EBAB90C0, &unk_1B964D8B0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v16, &qword_1EBAB90C8, &unk_1B9683B30);
LABEL_13:
    v23 = 0;
    return v23 & 1;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v16[v17], 1, v4);
  if (v18)
  {
    sub_1B905D384();
    goto LABEL_9;
  }

  sub_1B905CF40();
  v19 = static Apple_Parsec_Multimodal_V1_BoundingBox.== infix(_:_:)(v12, v8);
  sub_1B905D384();
  sub_1B905D384();
  sub_1B8D9207C(v16, &qword_1EBAB90C0, &unk_1B964D8B0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1B8D70BB8(*v26, *a2);
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v21, v22, MEMORY[0x1E69AAC10]);
  v23 = sub_1B964C850();
  return v23 & 1;
}

uint64_t sub_1B905E620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32C8, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_RegionInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905E6A0(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC31A0, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_RegionInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905E710(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2528(&qword_1EBAC31A0, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_RegionInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B905E7A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC30F8);
  __swift_project_value_buffer(v0, qword_1EBAC30F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_urn";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "predictions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B905EA00(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B905EA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0);
  sub_1B8CD2528(&qword_1EBAC3188, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0), sub_1B8CD2528(&qword_1EBAC3188, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
    {
      type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_PredictedLabels.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D6ABF4(*(v1 + 16), *(v0 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  v9 = sub_1B8CD2528(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B905ECC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32C0, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905ED48(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC3178, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905EDB8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2528(&qword_1EBAC3178, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels);

  return sub_1B964C5D0();
}

uint64_t sub_1B905EE38()
{
  result = MEMORY[0x1BFADC850](0x746369646572502ELL, 0xEB000000006E6F69);
  qword_1EBAC3110 = 0xD00000000000002ALL;
  *algn_1EBAC3118 = 0x80000001B9703200;
  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.protoMessageName.getter()
{
  if (qword_1EBAB7048 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B905EF10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3120);
  __swift_project_value_buffer(v0, qword_1EBAC3120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
  {
    v4 = *(v1 + 16);
    if (v4 == 0.0 || (result = OUTLINED_FUNCTION_23_3(2, v4), !v0))
    {
      type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  v8 = sub_1B8CD2528(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B905F318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32B8, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905F398(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC3188, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905F408(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2528(&qword_1EBAC3188, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction);

  return sub_1B964C5D0();
}

uint64_t sub_1B905F4A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3138);
  __swift_project_value_buffer(v0, qword_1EBAC3138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1000;
  *v4 = "regions";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1000)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B905F6C8(v3, v4, v5, v6, v7, &qword_1EBAC31A0, v8, v9);
    }
  }

  return result;
}

uint64_t sub_1B905F6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), const char *a8)
{
  a5(0);
  sub_1B8CD2528(a6, a7, a8);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo(0), sub_1B8CD2528(&qword_1EBAC31A0, type metadata accessor for Apple_Parsec_Multimodal_V1_RegionInfo, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_RegionInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_Multimodal_V1_VisualQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D703F8(*v0, *v1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  v5 = sub_1B8CD2528(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B905F94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B905F9CC(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC31B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B905FA3C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2528(&qword_1EBAC31B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B905FAD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3150);
  __swift_project_value_buffer(v0, qword_1EBAC3150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "visual_query";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B905FCAC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B905FCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  sub_1B8CD2528(&qword_1EBAC31B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualQuery);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Multimodal_V1_VisualSignal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(0);
  v13 = v3;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAC3168, &unk_1B9684898);
  }

  else
  {
    sub_1B905CF40();
    sub_1B8CD2528(&qword_1EBAC31B0, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualQuery);
    sub_1B964C740();
    result = sub_1B905D384();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Apple_Parsec_Multimodal_V1_VisualSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Parsec_Multimodal_V1_VisualQuery(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC31B8, &qword_1B96848A8) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_22_3();
  v17 = *(type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal(v16) + 20);
  v18 = *(v14 + 56);
  OUTLINED_FUNCTION_643(a1 + v17, v2);
  OUTLINED_FUNCTION_643(a2 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v19, v20, v5);
  if (v24)
  {
    OUTLINED_FUNCTION_178(v2 + v18, 1, v5);
    if (v24)
    {
      sub_1B8D9207C(v2, &qword_1EBAC3168, &unk_1B9684898);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2 + v18, 1, v5);
  if (v24)
  {
    sub_1B905D384();
LABEL_10:
    v25 = &qword_1EBAC31B8;
    v26 = &qword_1B96848A8;
LABEL_11:
    sub_1B8D9207C(v2, v25, v26);
LABEL_12:
    v23 = 0;
    return v23 & 1;
  }

  OUTLINED_FUNCTION_1_41();
  sub_1B905CF40();
  sub_1B8D703F8(*v13, *v9);
  if ((v28 & 1) == 0)
  {
    sub_1B905D384();
    sub_1B905D384();
    v25 = &qword_1EBAC3168;
    v26 = &unk_1B9684898;
    goto LABEL_11;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v29, v30, MEMORY[0x1E69AAC10]);
  v31 = sub_1B964C850();
  sub_1B905D384();
  sub_1B905D384();
  sub_1B8D9207C(v2, &qword_1EBAC3168, &unk_1B9684898);
  if ((v31 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_47();
  sub_1B8CD2528(v21, v22, MEMORY[0x1E69AAC10]);
  v23 = sub_1B964C850();
  return v23 & 1;
}

uint64_t sub_1B90602B4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2528(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9060398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2528(&qword_1EBAC32A8, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualSignal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9060418(uint64_t a1)
{
  v2 = sub_1B8CD2528(&qword_1EBAC2E60, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualSignal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9060488(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2528(&qword_1EBAC2E60, type metadata accessor for Apple_Parsec_Multimodal_V1_VisualSignal, protocol conformance descriptor for Apple_Parsec_Multimodal_V1_VisualSignal);

  return sub_1B964C5D0();
}

uint64_t sub_1B9060BF0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9060CA8(uint64_t a1)
{
  sub_1B9060DA4(319, &qword_1EBAC3248, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9060DA4(319, &qword_1EBAC2FB8, type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9060DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B9060E30(uint64_t a1)
{
  sub_1B9060DA4(319, &qword_1EBAC3260, type metadata accessor for Apple_Parsec_Multimodal_V1_PredictedLabels.Prediction, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}