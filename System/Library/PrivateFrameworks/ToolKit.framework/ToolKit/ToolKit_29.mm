void ParameterRelationshipDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312938, &unk_1C9074EC0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_50_1();
  v7 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  v9 = *(v0 + 24);

  sub_1C8D07154(v8, v9, v10, v11, v12, v13);
  ParameterRelationshipDefinition.Relation.protobuf(useCase:)();
  sub_1C8D07168(v8, v9);
  if (v1)
  {
  }

  else
  {
    v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v3 = v7;
    v3[1] = v6;
    sub_1C8D7300C();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ParameterRelationshipDefinition.Relation.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v65[1] = v2;
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v65 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v65 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v65 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v65 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v65 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v65[0] = v65 - v26;
  v27 = *(v0 + 8);
  switch(v27 >> 5)
  {
    case 1u:
      v51 = sub_1C8DDC4F8(v23, v24, v25);
      v54 = sub_1C8D4F110(v51, v52, v53);
      OUTLINED_FUNCTION_17_27(v54, v55, &type metadata for TypedValue);
      if (!v1)
      {
        v56 = OUTLINED_FUNCTION_258();
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(v56);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v18 = v51;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 2u:
      v39 = sub_1C8DDC4F8(v23, v24, v25);
      v42 = sub_1C8D4F110(v39, v40, v41);
      OUTLINED_FUNCTION_17_27(v42, v43, &type metadata for TypedValue);
      if (!v1)
      {
        v44 = OUTLINED_FUNCTION_258();
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(v44);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v15 = v39;
        v15[8] = v27 & 1;
        OUTLINED_FUNCTION_288();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 3u:
      v45 = sub_1C8DDC4F8(v23, v24, v25);
      v48 = sub_1C8D4F110(v45, v46, v47);
      OUTLINED_FUNCTION_17_27(v48, v49, &type metadata for TypedValue);
      if (!v1)
      {
        v50 = OUTLINED_FUNCTION_258();
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(v50);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v12 = v45;
        v12[8] = v27 & 1;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 4u:
      v33 = sub_1C8DDC4F8(v23, v24, v25);
      v36 = sub_1C8D4F110(v33, v34, v35);
      OUTLINED_FUNCTION_17_27(v36, v37, &type metadata for TypedValue);
      if (!v1)
      {
        v38 = OUTLINED_FUNCTION_258();
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(v38);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v9 = v33;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 5u:
      v57 = sub_1C8DDC4F8(v23, v24, v25);
      v60 = sub_1C8D4F110(v57, v58, v59);
      OUTLINED_FUNCTION_17_27(v60, v61, &type metadata for TypedValue);
      if (!v1)
      {
        v62 = OUTLINED_FUNCTION_258();
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(v62);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v6 = v57;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 6u:
      v63 = v65[0];
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    default:
      v28 = sub_1C8DDC4F8(v23, v24, v25);
      sub_1C8D4F110(v28, v29, v30);
      v31 = sub_1C906437C();
      if (!v1)
      {
        v32 = v31;
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v21 = v32;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
LABEL_14:
        v63 = v65[0];
        sub_1C8F07010();
LABEL_16:
        v64 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
        MEMORY[0x1EEE9AC00](v64);
        v65[-2] = v63;
        sub_1C8F073B0(&qword_1EDA63B68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        sub_1C9063ACC();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
      }

      break;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8F06198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  sub_1C8D16D78(a1, a3, a4);
  sub_1C8F06FB8();
  a6(0);
  OUTLINED_FUNCTION_150();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void AppDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314800, &unk_1C9074EE8);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_290();
  v7 = v2[1];
  v8 = v2[3];
  v20 = v2[2];
  v21 = *v2;
  v9 = v2[5];
  v10 = v2[7];
  v18 = v2[6];
  v19 = v2[4];
  v11 = v2[9];
  v17 = v2[8];
  type metadata accessor for ToolKitProtoAppDefinition(0);
  v12 = sub_1C8D63FCC();
  sub_1C8F070BC(v12, v13, v14);

  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_24_24();
  }

  else
  {
    v16 = *(v2 + 80);
    v15 = v2[11];

    OUTLINED_FUNCTION_24_24();
    *v4 = v21;
    *(v4 + 8) = v7;
    *(v4 + 16) = v20;
    *(v4 + 24) = v8;
    *(v4 + 32) = v19;
    *(v4 + 40) = v9;
    *(v4 + 48) = v18;
    *(v4 + 56) = v10;
    *(v4 + 64) = v17;
    *(v4 + 72) = v11;
    *(v4 + 80) = v22;
    *(v4 + 88) = v23;
    *(v4 + 96) = v16;
    *(v4 + 104) = v15;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t AppDefinition.Device.protobuf(useCase:)()
{
  v0 = OUTLINED_FUNCTION_49_14();
  type metadata accessor for ToolKitProtoAppDefinition.Device(v0);
  OUTLINED_FUNCTION_19_24();
  sub_1C8F073B0(v1, v2, &protocol conformance descriptor for ToolKitProtoAppDefinition.Device);

  OUTLINED_FUNCTION_30_22();
  sub_1C9063ACC();
}

uint64_t AppDefinition.Device.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  if (v8 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319B48, &qword_1C90A5C70);
    OUTLINED_FUNCTION_56_10();
    v12 = sub_1C8D4F674(v9, v10, v11);
    OUTLINED_FUNCTION_213(v12);
    *v13 = &type metadata for ToolKitProtoAppDefinition.ToolKitProtoDeviceKind;
    OUTLINED_FUNCTION_10_0();
    (*(v14 + 104))();
    swift_willThrow();
    return OUTLINED_FUNCTION_23_24();
  }

  else
  {
    OUTLINED_FUNCTION_62_11(a1, a2, a3, a4, a5, a6);
    result = OUTLINED_FUNCTION_23_24();
    if (v8)
    {
      v16 = v7;
    }

    else
    {
      v16 = 0;
    }

    *v6 = v16;
    v6[1] = v8;
  }

  return result;
}

void ContainerDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[1];
  v8 = v2[3];
  v19 = v2[2];
  v20 = *v2;
  v9 = v2[7];
  v10 = v2[9];
  v17 = v2[6];
  v18 = v2[8];
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  v11 = sub_1C8D63FCC();
  sub_1C8D7441C(v11, v12, v13);

  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_22_28();
  }

  else
  {
    v16 = *(v2 + 33);
    v14 = 0x4030201uLL >> (8 * *(v2 + 32));
    v15 = v2[5];

    OUTLINED_FUNCTION_22_28();
    *v4 = v20;
    *(v4 + 8) = v7;
    *(v4 + 16) = v15;
    *(v4 + 24) = v19;
    *(v4 + 32) = v8;
    *(v4 + 40) = v17;
    *(v4 + 48) = v9;
    *(v4 + 56) = v14;
    *(v4 + 64) = v18;
    *(v4 + 72) = v10;
    *(v4 + 80) = v21;
    *(v4 + 88) = v22;
    *(v4 + 96) = v16;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ContainerDefinition.Device.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  if (v8 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319B58, &qword_1C90A5C78);
    OUTLINED_FUNCTION_56_10();
    v12 = sub_1C8D4F674(v9, v10, v11);
    OUTLINED_FUNCTION_213(v12);
    *v13 = &type metadata for ToolKitProtoContainerDefinition.ToolKitProtoDeviceKind;
    OUTLINED_FUNCTION_10_0();
    (*(v14 + 104))();
    swift_willThrow();
    return OUTLINED_FUNCTION_26_17();
  }

  else
  {
    OUTLINED_FUNCTION_62_11(a1, a2, a3, a4, a5, a6);
    result = OUTLINED_FUNCTION_26_17();
    if (v8)
    {
      v16 = v7;
    }

    else
    {
      v16 = 0;
    }

    *v6 = v16;
    v6[1] = v8;
  }

  return result;
}

uint64_t sub_1C8F06950(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];

  result = a4(v9, v10);
  *a1 = a2;
  a1[1] = a3;
  return result;
}

unint64_t sub_1C8F069D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319AC0;
  if (!qword_1EC319AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AC0);
  }

  return result;
}

unint64_t sub_1C8F06A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319AC8;
  if (!qword_1EC319AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AC8);
  }

  return result;
}

unint64_t sub_1C8F06A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319AD0;
  if (!qword_1EC319AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AD0);
  }

  return result;
}

unint64_t sub_1C8F06ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319AD8;
  if (!qword_1EC319AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AD8);
  }

  return result;
}

unint64_t sub_1C8F06B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA694E0;
  if (!qword_1EDA694E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694E0);
  }

  return result;
}

unint64_t sub_1C8F06C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319AE0;
  if (!qword_1EC319AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AE0);
  }

  return result;
}

unint64_t sub_1C8F06C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319AE8;
  if (!qword_1EC319AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AE8);
  }

  return result;
}

unint64_t sub_1C8F06CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319AF8;
  if (!qword_1EC319AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AF8);
  }

  return result;
}

unint64_t sub_1C8F06D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B00;
  if (!qword_1EC319B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B00);
  }

  return result;
}

unint64_t sub_1C8F06D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B08;
  if (!qword_1EC319B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B08);
  }

  return result;
}

unint64_t sub_1C8F06DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60988;
  if (!qword_1EDA60988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60988);
  }

  return result;
}

unint64_t sub_1C8F06E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62438;
  if (!qword_1EDA62438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62438);
  }

  return result;
}

unint64_t sub_1C8F06E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69318;
  if (!qword_1EDA69318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69318);
  }

  return result;
}

unint64_t sub_1C8F06EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA609A0;
  if (!qword_1EDA609A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609A0);
  }

  return result;
}

uint64_t sub_1C8F06FB8()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8F07010()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

unint64_t sub_1C8F070BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B40;
  if (!qword_1EC319B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B40);
  }

  return result;
}

uint64_t sub_1C8F07110()
{
  v1 = OUTLINED_FUNCTION_258();
  v2(v1);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C8F07168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B68;
  if (!qword_1EC319B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B68);
  }

  return result;
}

unint64_t sub_1C8F071C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B70;
  if (!qword_1EC319B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B70);
  }

  return result;
}

unint64_t sub_1C8F07218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B78;
  if (!qword_1EC319B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B78);
  }

  return result;
}

unint64_t sub_1C8F07270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B80;
  if (!qword_1EC319B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B80);
  }

  return result;
}

unint64_t sub_1C8F07314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B90;
  if (!qword_1EC319B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B90);
  }

  return result;
}

uint64_t sub_1C8F073B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8F07400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319B98;
  if (!qword_1EC319B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B98);
  }

  return result;
}

unint64_t sub_1C8F07458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BA0;
  if (!qword_1EC319BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BA0);
  }

  return result;
}

unint64_t sub_1C8F074B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BA8;
  if (!qword_1EC319BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BA8);
  }

  return result;
}

unint64_t sub_1C8F0750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BB0;
  if (!qword_1EC319BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BB0);
  }

  return result;
}

unint64_t sub_1C8F07564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BB8;
  if (!qword_1EC319BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BB8);
  }

  return result;
}

unint64_t sub_1C8F075BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BC0;
  if (!qword_1EC319BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BC0);
  }

  return result;
}

unint64_t sub_1C8F07614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BC8;
  if (!qword_1EC319BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BC8);
  }

  return result;
}

unint64_t sub_1C8F07670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BD0;
  if (!qword_1EC319BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BD0);
  }

  return result;
}

unint64_t sub_1C8F076C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BD8;
  if (!qword_1EC319BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BD8);
  }

  return result;
}

unint64_t sub_1C8F07720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BE0;
  if (!qword_1EC319BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_24()
{

  return sub_1C8F07110();
}

uint64_t sub_1C8F07894(uint64_t a1)
{
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 8))(a1, valid);
  return a1;
}

unint64_t sub_1C8F078F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C00;
  if (!qword_1EDA60C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C00);
  }

  return result;
}

void *AssistantTypeSchemaDefinition.init(protobuf:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &__src[-v9 - 8];
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &__src[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &__src[-v15 - 8];
  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &__src[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C8F07CB0(a1, v19, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8F07C50(v19, v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_1C8F07CB0(v10, v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    AssistantEnumerationSchemaDefinition.init(protobuf:)(v7, __src);
    if (v2)
    {
      OUTLINED_FUNCTION_0_68();
      v20 = OUTLINED_FUNCTION_1_63();
      return sub_1C8F07D10(v20, v21);
    }

    OUTLINED_FUNCTION_0_68();
    v23 = OUTLINED_FUNCTION_1_63();
    sub_1C8F07D10(v23, v24);
    memcpy(__dst, __src, sizeof(__dst));
    v25 = 1;
    v30 = 1;
  }

  else
  {
    sub_1C8F07C50(v19, v16, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_1C8F07CB0(v16, v13, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    AssistantEntitySchemaDefinition.init(protobuf:)(v13, __src);
    if (v2)
    {
      OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_2_60();
      v20 = v16;
      return sub_1C8F07D10(v20, v21);
    }

    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_2_60();
    sub_1C8F07D10(v16, v26);
    memcpy(__dst, __src, sizeof(__dst));
    v25 = 0;
    v30 = 0;
  }

  result = memcpy(a2, __dst, 0x68uLL);
  a2[104] = v25;
  return result;
}

uint64_t sub_1C8F07C50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8F07CB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8F07D10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t AssistantTypeSchemaDefinition.protobuf(useCase:)()
{
  if (v1[104])
  {
    memcpy(__dst, v1, sizeof(__dst));
    v3 = OUTLINED_FUNCTION_4_43();
    result = AssistantEnumerationSchemaDefinition.protobuf(useCase:)(v3, v4);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    memcpy(__dst, v1, sizeof(__dst));
    v6 = OUTLINED_FUNCTION_4_43();
    result = AssistantEntitySchemaDefinition.protobuf(useCase:)(v6, v7);
    if (v2)
    {
      return result;
    }
  }

  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1C8F07E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319BE8;
  if (!qword_1EC319BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BE8);
  }

  return result;
}

void sub_1C8F07E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v43;
    v6 = sub_1C8E544E8(v2);
    v7 = 0;
    v8 = v2 + 64;
    v27 = v4;
    v28 = v1;
    v26 = v2 + 72;
    v29 = v2 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_23;
      }

      v31 = v7;
      v32 = v4;
      v30 = v5;
      v10 = *(v2 + 48) + 56 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 48);
      v14 = v2;
      v15 = (*(v2 + 56) + 112 * v6);
      v33 = *(v10 + 32);
      v34 = *(v10 + 16);
      memcpy(__dst, v15, 0x69uLL);
      memcpy(__src, v15, sizeof(__src));
      v38[0] = v12;
      v38[1] = v11;
      v39 = v34;
      v40 = v33;
      v41 = v13;
      memcpy(v42, __src, sizeof(v42));

      sub_1C8ED3E6C(__dst, v35);

      sub_1C8D16D78(v38, &qword_1EC319C20, &unk_1C90A65F0);
      v43 = v3;
      v16 = *(v3 + 16);
      if (v16 >= *(v3 + 24) >> 1)
      {
        sub_1C8CA6480();
        v3 = v43;
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      v18 = 1 << *(v14 + 32);
      if (v6 >= v18)
      {
        goto LABEL_24;
      }

      v2 = v14;
      v8 = v29;
      v19 = *(v29 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v2 + 36) != v32)
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1C8CAF698(v6, v32, v30 & 1);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_1C8CAF698(v6, v32, v30 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v31 + 1;
      v6 = v18;
      v4 = v27;
      if (v31 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1C8F0815C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v43;
    v6 = sub_1C8E544E8(v2);
    v7 = 0;
    v8 = v2 + 64;
    v27 = v4;
    v28 = v1;
    v26 = v2 + 72;
    v29 = v2 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_23;
      }

      v31 = v7;
      v32 = v4;
      v30 = v5;
      v10 = *(v2 + 48) + 56 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 48);
      v14 = v2;
      v15 = (*(v2 + 56) + 112 * v6);
      v33 = *(v10 + 32);
      v34 = *(v10 + 16);
      memcpy(__dst, v15, sizeof(__dst));
      memcpy(__src, v15, sizeof(__src));
      v38[0] = v12;
      v38[1] = v11;
      v39 = v34;
      v40 = v33;
      v41 = v13;
      memcpy(v42, __src, sizeof(v42));

      sub_1C8CBFC60(__dst, v35);

      sub_1C8D16D78(v38, &qword_1EC319C10, &qword_1C90A65E0);
      v43 = v3;
      v16 = *(v3 + 16);
      if (v16 >= *(v3 + 24) >> 1)
      {
        sub_1C8CA6480();
        v3 = v43;
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      v18 = 1 << *(v14 + 32);
      if (v6 >= v18)
      {
        goto LABEL_24;
      }

      v2 = v14;
      v8 = v29;
      v19 = *(v29 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v2 + 36) != v32)
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1C8CAF698(v6, v32, v30 & 1);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_1C8CAF698(v6, v32, v30 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v31 + 1;
      v6 = v18;
      v4 = v27;
      if (v31 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t static AssistantSchemaProvider.shared.getter()
{
  if (qword_1EDA631E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C8F08480()
{
  v0 = sub_1C9063D3C();
  __swift_allocate_value_buffer(v0, qword_1EC319BF0);
  __swift_project_value_buffer(v0, qword_1EC319BF0);
  return sub_1C9063D2C();
}

uint64_t sub_1C8F0852C()
{
  result = sub_1C8F0854C();
  qword_1EDA631F0 = result;
  return result;
}

uint64_t sub_1C8F0854C()
{
  v0 = type metadata accessor for ToolDatabaseLocaleOptions(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssistantSchemaProvider();
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  v3[*(v1 + 28)] = 0;
  v4 = static AssistantSchemaProvider.load(with:)(v3);
  sub_1C8CC0B58(v3);
  return v4;
}

uint64_t static AssistantSchemaProvider.load(with:)(uint64_t a1)
{
  v4 = type metadata accessor for ToolDatabaseLocaleOptions(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_7_40();
  result = sub_1C906311C();
  if (!v1)
  {
    v6 = result;
    type metadata accessor for AssistantSchemaProvider();
    sub_1C8F0885C(a1, v2);
    return sub_1C8CBF50C(v6, v2);
  }

  return result;
}

uint64_t sub_1C8F0885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabaseLocaleOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AssistantSchemaProvider.__allocating_init(tools:types:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AssistantSchemaProvider.init(tools:types:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C8F0890C()
{
  sub_1C8F07E94(*(v0 + 24));

  return sub_1C8D2BCE0(v1);
}

uint64_t sub_1C8F0894C()
{
  OUTLINED_FUNCTION_10_35();
  if (!v2)
  {
    v6 = *(v1 + 24);

    if (!v0)
    {
      return v6;
    }

    goto LABEL_3;
  }

  v4 = *(v3 + 8);
  v5 = *(v1 + 24);
  sub_1C8E05190(v2, v4);
  v6 = sub_1C8F08F00(v5, v2, v4, sub_1C8F092E0);
  if (v0)
  {
LABEL_3:

    v7 = OUTLINED_FUNCTION_14_32();

    return v7;
  }

  return v6;
}

uint64_t sub_1C8F08A20()
{
  sub_1C8F0815C(*(v0 + 16));

  return sub_1C8D2BCE0(v1);
}

uint64_t sub_1C8F08A60()
{
  OUTLINED_FUNCTION_10_35();
  if (!v2)
  {
    v6 = *(v1 + 16);

    if (!v0)
    {
      return v6;
    }

    goto LABEL_3;
  }

  v4 = *(v3 + 8);
  v5 = *(v1 + 16);
  sub_1C8E05190(v2, v4);
  v6 = sub_1C8F08F00(v5, v2, v4, sub_1C8F096BC);
  if (v0)
  {
LABEL_3:

    v7 = OUTLINED_FUNCTION_14_32();

    return v7;
  }

  return v6;
}

uint64_t AssistantSchemaProvider.deinit()
{

  return v0;
}

uint64_t AssistantSchemaProvider.__deallocating_deinit()
{
  AssistantSchemaProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1C8F08B90(void *a1, const void *a2, void *a3)
{
  sub_1C9064D7C();
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v6);
  MEMORY[0x1CCA82830](v7);
  MEMORY[0x1CCA82830](v8);
  sub_1C9063FBC();
  sub_1C9064DBC();
  v9 = sub_1C90646FC();
  *(a3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
  v10 = a3[6] + 56 * v9;
  v11 = *(a1 + 1);
  *v10 = *a1;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a1 + 2);
  *(v10 + 48) = a1[6];
  result = memcpy((a3[7] + 112 * v9), a2, 0x69uLL);
  ++a3[2];
  return result;
}

void *sub_1C8F08CC4(void *a1, const void *a2, void *a3)
{
  sub_1C9064D7C();
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v6);
  MEMORY[0x1CCA82830](v7);
  MEMORY[0x1CCA82830](v8);
  sub_1C9063FBC();
  sub_1C9064DBC();
  v9 = sub_1C90646FC();
  *(a3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
  v10 = a3[6] + 56 * v9;
  v11 = *(a1 + 1);
  *v10 = *a1;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a1 + 2);
  *(v10 + 48) = a1[6];
  result = memcpy((a3[7] + 112 * v9), a2, 0x70uLL);
  ++a3[2];
  return result;
}

void sub_1C8F08DF8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    if (v5)
    {
      bzero(v4, 8 * v3);
    }

    OUTLINED_FUNCTION_11_31();
    swift_retain_n();
    v6 = OUTLINED_FUNCTION_3_49();
    v2(v6);
    OUTLINED_FUNCTION_11_31();
  }
}

void sub_1C8F08E7C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    if (v5)
    {
      bzero(v4, 8 * v3);
    }

    OUTLINED_FUNCTION_11_31();
    swift_bridgeObjectRetain_n();
    v6 = OUTLINED_FUNCTION_3_49();
    sub_1C8F09558(v6, v7, v8, v9, v10, v2);
    OUTLINED_FUNCTION_11_31();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1C8F08F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32) & 0x3F;
  OUTLINED_FUNCTION_12_30();
  v7 = swift_retain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();

      OUTLINED_FUNCTION_9_32();
      sub_1C8F08DF8(v11, v12);
      a2 = v13;
      MEMORY[0x1CCA833A0](v10, -1, -1);
      OUTLINED_FUNCTION_4_44();

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_39(v14);

  OUTLINED_FUNCTION_9_32();
  v8 = a4();
  if (v6)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v8;
  }

  OUTLINED_FUNCTION_4_44();

LABEL_6:

  return a2;
}

uint64_t sub_1C8F090A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32) & 0x3F;
  OUTLINED_FUNCTION_12_30();
  v6 = swift_bridgeObjectRetain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v16 = OUTLINED_FUNCTION_1_64();
      sub_1C8F08E7C(v16, v17);
      v4 = v18;
      MEMORY[0x1CCA833A0](v15, -1, -1);
      OUTLINED_FUNCTION_4_44();
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_39(v19);

  v7 = OUTLINED_FUNCTION_1_64();
  v13 = sub_1C8F09558(v7, v8, v9, v10, v11, v12);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v13;
  }

  OUTLINED_FUNCTION_4_44();
  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

unint64_t *sub_1C8F092E0(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(__int128 *), uint64_t a5)
{
  v29 = result;
  v30 = 0;
  v5 = 0;
  v8 = a3[8];
  v6 = a3 + 8;
  v7 = v8;
  v9 = 1 << *(v6 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v31 = (v9 + 63) >> 6;
  v32 = v6;
  while (v11)
  {
    v12 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_11:
    v15 = v12 | (v5 << 6);
    v16 = a3[6] + 56 * v15;
    v17 = *(v16 + 32);
    v33 = v15;
    v18 = (a3[7] + 112 * v15);
    v44 = *v18;
    v41 = v18[1];
    v39 = v18[2];
    v19 = v18[4];
    v36 = v18[3];
    v20 = v18[6];
    v38 = v18[5];
    v21 = v18[8];
    v37 = v18[7];
    v22 = v18[9];
    v23 = v18[10];
    v24 = v18[11];
    v25 = v18[12];
    v42 = *(v16 + 16);
    v43 = v17;

    sub_1C8F09C64(v44, v41, v39, v36, v19, v38, v20, v37, v21, v22, v23, v24, v25);
    LOBYTE(v24) = a4(&v42);
    sub_1C8F09CDC();

    v11 = v40;
    if (v24)
    {
      *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_15:
        v27 = sub_1C8F09908(v29, a2, v30, a3);

        return v27;
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v31)
    {
      goto LABEL_15;
    }

    v14 = v32[v5];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v40 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F09558(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = result;
  v9 = 0;
  v10 = 0;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = (*(a3 + 48) + 56 * v19);
    result = *v20;
    if (*v20 != a4 || v20[1] != a5)
    {
      result = sub_1C9064C2C();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v26 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_19:
      v23 = a6(v26, a2, v9, a3);

      return v23;
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_19;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C8F096BC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *), uint64_t a5)
{
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v28 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 48) + 56 * v14;
    v16 = *(v15 + 32);
    v23 = v14;
    v26 = *(v15 + 16);
    v27 = v16;

    v17 = a4(&v26);

    v9 = v28;
    if (v17)
    {
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v19 = sub_1C8F09A88(v21, a2, v22, a3);

        return v19;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v28 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C8F09908(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C18, &qword_1C90A65E8);
  result = sub_1C906495C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(v4 + 56);
    v17 = *(v4 + 48) + 56 * v15;
    v19 = *(v17 + 16);
    v18 = *(v17 + 32);
    v20 = *v17;
    v24 = *(v17 + 48);
    v23[1] = v19;
    v23[2] = v18;
    v23[0] = v20;
    memcpy(__dst, (v16 + 112 * v15), 0x69uLL);
    sub_1C8F09C08(v23, v22);
    sub_1C8ED3E6C(__dst, v22);
    result = sub_1C8F08B90(v23, __dst, v9);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_1C8F09A88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C08, &qword_1C90C6600);
  result = sub_1C906495C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(v4 + 56);
    v17 = *(v4 + 48) + 56 * v15;
    v19 = *(v17 + 16);
    v18 = *(v17 + 32);
    v20 = *v17;
    v24 = *(v17 + 48);
    v23[1] = v19;
    v23[2] = v18;
    v23[0] = v20;
    memcpy(__dst, (v16 + 112 * v15), sizeof(__dst));
    sub_1C8F09C08(v23, v22);
    sub_1C8CBFC60(__dst, v22);
    result = sub_1C8F08CC4(v23, __dst, v9);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C8F09C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
}

uint64_t sub_1C8F09CDC()
{
}

unint64_t sub_1C8F09DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C38;
  if (!qword_1EC319C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C38);
  }

  return result;
}

uint64_t sub_1C8F09E0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8F09E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8F09EA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x644965707974 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8F09FB0(char a1)
{
  if (!a1)
  {
    return 0x64496C6F6F74;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x644965707974;
}

uint64_t sub_1C8F09FF8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CC8, &qword_1C90A6B38);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F0BFFC(v9, v10, v11);
  sub_1C9064E1C();
  v13[15] = 0;
  sub_1C9064B9C();
  if (!v1)
  {
    v13[14] = 1;
    sub_1C9064B2C();
    v13[13] = 2;
    sub_1C9064B2C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C8F0A174@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CB8, &qword_1C90A6B30);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F0BFFC(v11, v12, v13);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  OUTLINED_FUNCTION_3_3();
  v14 = sub_1C9064A7C();
  v27 = 1;
  OUTLINED_FUNCTION_3_3();
  v15 = sub_1C9064A0C();
  v17 = v16;
  v25 = v15;
  v26 = 2;
  OUTLINED_FUNCTION_3_3();
  v18 = sub_1C9064A0C();
  v19 = v10;
  v21 = v20;
  (*(v7 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v25;
  *a2 = v14;
  a2[1] = v23;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v21;
  return result;
}

uint64_t sub_1C8F0A36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F09EA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F0A394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F0BFFC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F0A3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F0BFFC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

double sub_1C8F0A40C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C8F0A174(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1C8F0A46C@<D0>(uint64_t a1@<X8>)
{
  sub_1C8F0A4B0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C8F0A4B0@<X0>(void *a2@<X8>)
{
  if (qword_1EC3115D0 != -1)
  {
    OUTLINED_FUNCTION_15_26(&qword_1EC3115D0);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, &unk_1EC390DB8);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v5 = v4;

  if (qword_1EC3115D8 != -1)
  {
    OUTLINED_FUNCTION_13_26(&qword_1EC3115D8);
  }

  OUTLINED_FUNCTION_10(v3, &unk_1EC390DD0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v7 = v6;
  v9 = v8;

  if (qword_1EC3115E0 != -1)
  {
    OUTLINED_FUNCTION_11_32(&qword_1EC3115E0);
  }

  OUTLINED_FUNCTION_10(v3, &unk_1EC390DE8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  v11 = v10;
  v13 = v12;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
  return result;
}

uint64_t sub_1C8F0A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8F0BE50(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8F0A720()
{
  if (qword_1EC3115D0 != -1)
  {
    OUTLINED_FUNCTION_15_26(&qword_1EC3115D0);
  }

  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v0, &unk_1EC390DB8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  sub_1C9062BFC();
  if (qword_1EC3115D8 != -1)
  {
    OUTLINED_FUNCTION_13_26(&qword_1EC3115D8);
  }

  OUTLINED_FUNCTION_10(v0, &unk_1EC390DD0);
  sub_1C9062E5C();

  sub_1C9062BFC();
  if (qword_1EC3115E0 != -1)
  {
    OUTLINED_FUNCTION_11_32(&qword_1EC3115E0);
  }

  OUTLINED_FUNCTION_10(v0, &unk_1EC390DE8);
  sub_1C9062E5C();

  return sub_1C9062BFC();
}

uint64_t sub_1C8F0A8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC319C40;

  return v5;
}

uint64_t sub_1C8F0A954()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CF0, &qword_1C90A6B78);
  __swift_allocate_value_buffer(v3, qword_1EDA6E690);
  __swift_project_value_buffer(v3, qword_1EDA6E690);
  v4 = sub_1C90623FC();
  v5 = __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  v8 = sub_1C8F0BCF0(v5, v6, v7);
  sub_1C8D24D68(v8, v9, v10);
  sub_1C906254C();
  return sub_1C8DD1ED0(v2);
}

uint64_t sub_1C8F0AA64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8F0AC58(char a1)
{
  result = 0x74736E4965707974;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x6564724F74726F73;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0x7367616C66;
      break;
    case 5:
      result = 0x64496C6F6F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F0AD14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CD8, &qword_1C90A6B58);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v27 = v1[2];
  v28 = v9;
  v12 = v1[5];
  v25 = v1[4];
  v26 = v11;
  v23[1] = v1[6];
  v24 = v12;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1C8F0C86C(v13, v14, v15);

  sub_1C9064E1C();
  v30 = v10;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8F0C934(&qword_1EC3131E8);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v16)
  {
  }

  else
  {
    v17 = v25;
    v18 = v24;

    LOBYTE(v30) = 1;
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    LOBYTE(v30) = 2;
    OUTLINED_FUNCTION_205();
    sub_1C9064B6C();
    v30 = v17;
    v29 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
    sub_1C8F0C8C0(&qword_1EC313338);
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_205();
    v19 = sub_1C9064B8C();
    v30 = v18;
    v29 = 4;
    sub_1C8D26A34(v19, v20, v21);
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    LOBYTE(v30) = 5;
    OUTLINED_FUNCTION_205();
    sub_1C9064B9C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C8F0AFC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CD0, &unk_1C90A6B40);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F0C86C(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8F0C934(&qword_1EC3131C8);
  OUTLINED_FUNCTION_20_25();
  OUTLINED_FUNCTION_3_50(1);
  v9 = sub_1C9064A0C();
  v11 = v10;
  v20 = v9;
  OUTLINED_FUNCTION_3_50(2);
  v19 = sub_1C9064A4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
  sub_1C8F0C8C0(&qword_1EC313328);
  v12 = OUTLINED_FUNCTION_20_25();
  sub_1C8D26910(v12, v13, v14);
  sub_1C9064A6C();
  OUTLINED_FUNCTION_3_50(5);
  v15 = sub_1C9064A7C();
  v16 = OUTLINED_FUNCTION_92();
  v17(v16);
  *a2 = v21;
  a2[1] = v20;
  a2[2] = v11;
  a2[3] = v19;
  a2[4] = v21;
  a2[5] = v21;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8F0B310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F0AA64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F0B338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F0C86C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F0B374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F0C86C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F0B3E4@<X0>(void *a2@<X8>)
{
  if (qword_1EDA626C0 != -1)
  {
    OUTLINED_FUNCTION_14_33(&qword_1EDA626C0);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, &unk_1EDA6E750);
  v4 = sub_1C9062E5C();
  sub_1C8D277DC(v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v29, v30, v31, v32, v33, v34, v35, v36, vars0, vars8);

  *a2 = v28;
  if (qword_1EDA626A8 != -1)
  {
    OUTLINED_FUNCTION_12_31(&qword_1EDA626A8);
  }

  OUTLINED_FUNCTION_10(v3, &unk_1EDA6E720);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  v13 = v12;
  v15 = v14;

  a2[1] = v13;
  a2[2] = v15;
  if (qword_1EDA62690 != -1)
  {
    OUTLINED_FUNCTION_10_36(&qword_1EDA62690);
  }

  OUTLINED_FUNCTION_10(v3, &unk_1EDA6E6D8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  v17 = v16;

  a2[3] = v17;
  if (qword_1EDA626B8 != -1)
  {
    OUTLINED_FUNCTION_9_33(&qword_1EDA626B8);
  }

  OUTLINED_FUNCTION_10(v3, &unk_1EDA6E738);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8D279DC(v18);
  v20 = v19;

  a2[4] = v20;
  if (qword_1EDA626A0 != -1)
  {
    OUTLINED_FUNCTION_8_40(&qword_1EDA626A0);
  }

  OUTLINED_FUNCTION_10(v3, &unk_1EDA6E708);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  v22 = v21;

  a2[5] = v22;
  if (qword_1EDA62698 != -1)
  {
    OUTLINED_FUNCTION_7_41(&qword_1EDA62698);
  }

  OUTLINED_FUNCTION_10(v3, &unk_1EDA6E6F0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v24 = v23;

  a2[6] = v24;
  return result;
}

uint64_t sub_1C8F0B658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8F0BB98(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8F0B750()
{
  v0 = qword_1EDA626C0;

  if (v0 != -1)
  {
    OUTLINED_FUNCTION_14_33(&qword_1EDA626C0);
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, &unk_1EDA6E750);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D28184(&qword_1EDA69128, &qword_1EC3131C0, &unk_1C906B4E0, &unk_1C908BB30);
  sub_1C9062BFC();
  if (qword_1EDA626A8 != -1)
  {
    OUTLINED_FUNCTION_12_31(&qword_1EDA626A8);
  }

  OUTLINED_FUNCTION_10(v1, &unk_1EDA6E720);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_6_38(v2, v3, v4, v5, v6, v7, v8);
  if (qword_1EDA62690 != -1)
  {
    OUTLINED_FUNCTION_10_36(&qword_1EDA62690);
  }

  OUTLINED_FUNCTION_10(v1, &unk_1EDA6E6D8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_6_38(v9, v10, v11, v12, v13, v14, v15);
  if (qword_1EDA626B8 != -1)
  {
    OUTLINED_FUNCTION_9_33(&qword_1EDA626B8);
  }

  OUTLINED_FUNCTION_10(v1, &unk_1EDA6E738);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
  sub_1C8D28184(&qword_1EDA69138, &qword_1EC313320, &qword_1C90A6B50, &unk_1C908BBDC);
  sub_1C9062BFC();
  if (qword_1EDA626A0 != -1)
  {
    OUTLINED_FUNCTION_8_40(&qword_1EDA626A0);
  }

  OUTLINED_FUNCTION_10(v1, &unk_1EDA6E708);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_6_38(v16, v17, v18, v19, v20, v21, v22);
  if (qword_1EDA62698 != -1)
  {
    OUTLINED_FUNCTION_7_41(&qword_1EDA62698);
  }

  OUTLINED_FUNCTION_10(v1, &unk_1EDA6E6F0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  return OUTLINED_FUNCTION_6_38(v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_1C8F0BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = aParameters_7[0];

  return v5;
}

unint64_t sub_1C8F0BA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C60;
  if (!qword_1EC319C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C60);
  }

  return result;
}

unint64_t sub_1C8F0BB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C68;
  if (!qword_1EC319C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C68);
  }

  return result;
}

unint64_t sub_1C8F0BB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C70;
  if (!qword_1EC319C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C70);
  }

  return result;
}

unint64_t sub_1C8F0BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62678;
  if (!qword_1EDA62678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62678);
  }

  return result;
}

unint64_t sub_1C8F0BC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C78;
  if (!qword_1EC319C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C78);
  }

  return result;
}

unint64_t sub_1C8F0BC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C80;
  if (!qword_1EC319C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C80);
  }

  return result;
}

unint64_t sub_1C8F0BCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA624C0;
  if (!qword_1EDA624C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624C0);
  }

  return result;
}

uint64_t sub_1C8F0BD98(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8F0BDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C88;
  if (!qword_1EC319C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C88);
  }

  return result;
}

unint64_t sub_1C8F0BE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C90;
  if (!qword_1EC319C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C90);
  }

  return result;
}

unint64_t sub_1C8F0BEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319C98;
  if (!qword_1EC319C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C98);
  }

  return result;
}

unint64_t sub_1C8F0BEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319CA0;
  if (!qword_1EC319CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319CA0);
  }

  return result;
}

unint64_t sub_1C8F0BF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319CA8;
  if (!qword_1EC319CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319CA8);
  }

  return result;
}

unint64_t sub_1C8F0BFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319CB0;
  if (!qword_1EC319CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319CB0);
  }

  return result;
}

unint64_t sub_1C8F0BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319CC0;
  if (!qword_1EC319CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319CC0);
  }

  return result;
}

uint64_t sub_1C8F0C14C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), char a5)
{
  v7 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  a4();
  return sub_1C9062E8C();
}

uint64_t sub_1C8F0C1D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CE0, &qword_1C90A6B68);
  __swift_allocate_value_buffer(v4, qword_1EDA6E780);
  v5 = OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_10(v5, v6);
  type metadata accessor for ToolRecord(0);
  v7 = sub_1C90623FC();
  v8 = __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  sub_1C8D24B4C(v8, v9, v10);
  sub_1C8EB79AC();
  sub_1C906254C();
  return sub_1C8DD1ED0(v3);
}

uint64_t sub_1C8F0C2DC()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA62480 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EDA6E630);
  (*(v2 + 16))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v0);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  result = (*(v2 + 32))(v9 + v8, v6, v0);
  qword_1EDA6E7B0 = sub_1C8F0C9A8;
  *algn_1EDA6E7B8 = v9;
  return result;
}

uint64_t sub_1C8F0C434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CF0, &qword_1C90A6B78);
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CF8, &unk_1C90A6B80);
  OUTLINED_FUNCTION_11();
  v12 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D00, &unk_1C90A7A50);
  __swift_allocate_value_buffer(v16, qword_1EDA6E768);
  __swift_project_value_buffer(v16, qword_1EDA6E768);
  v17 = sub_1C90623FC();
  v18 = __swift_storeEnumTagSinglePayload(v9, 1, 1, v17);
  v21 = sub_1C8D24B4C(v18, v19, v20);
  sub_1C8F0BCF0(v21, v22, v23);
  sub_1C906251C();
  sub_1C8DD1ED0(v9);
  if (qword_1EDA624C8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v0, qword_1EDA6E690);
  (*(v2 + 16))(v5, v24, v0);
  sub_1C8D28184(&qword_1EDA62C98, &qword_1EC319CF8, &unk_1C90A6B80, MEMORY[0x1E699FED8]);
  sub_1C8D28184(&qword_1EDA62C48, &qword_1EC319CF0, &qword_1C90A6B78, MEMORY[0x1E699FF30]);
  sub_1C906252C();
  (*(v2 + 8))(v5, v0);
  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_1C8F0C76C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CE8, &qword_1C90A6B70);
  __swift_allocate_value_buffer(v4, qword_1EDA6E798);
  v5 = OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_10(v5, v6);
  v7 = sub_1C90623FC();
  v8 = __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v11 = sub_1C8D24B4C(v8, v9, v10);
  sub_1C8D24988(v11, v12, v13);
  sub_1C906251C();
  return sub_1C8DD1ED0(v3);
}

unint64_t sub_1C8F0C86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62710[0];
  if (!qword_1EDA62710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA62710);
  }

  return result;
}

uint64_t sub_1C8F0C8C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313320, &qword_1C90A6B50);
    v8 = sub_1C8D26868(v3, v4, v5);
    sub_1C8D268BC(v8, v6, v7);
    OUTLINED_FUNCTION_209();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8F0C934(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    v8 = sub_1C8CAC450(v3, v4, v5);
    sub_1C8CA6D90(v8, v6, v7);
    OUTLINED_FUNCTION_209();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C8F0C9A8()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v0);

  sub_1C8D2760C();
}

_BYTE *storeEnumTagSinglePayload for ToolParameterRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolParameterTypeRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8F0CBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319D08;
  if (!qword_1EC319D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D08);
  }

  return result;
}

unint64_t sub_1C8F0CC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319D10;
  if (!qword_1EC319D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D10);
  }

  return result;
}

unint64_t sub_1C8F0CC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62700;
  if (!qword_1EDA62700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62700);
  }

  return result;
}

unint64_t sub_1C8F0CCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62708;
  if (!qword_1EDA62708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62708);
  }

  return result;
}

unint64_t sub_1C8F0CD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319D18;
  if (!qword_1EC319D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D18);
  }

  return result;
}

unint64_t sub_1C8F0CDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319D20;
  if (!qword_1EC319D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D20);
  }

  return result;
}

uint64_t SampleInvocationDefinition.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t *a6@<X8>)
{
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[1];
  *a6 = *a1;
  a6[1] = v9;
  a6[2] = v8;

  result = sub_1C8F0CE74(a1);
  a6[3] = v10;
  return result;
}

uint64_t sub_1C8F0CE74(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SampleInvocationDefinition.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  a1[2] = v4;
  a1[3] = v6;
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t StringSearchPredicate.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a6@<X8>)
{
  v9 = *a1;
  v8 = a1[1];

  result = sub_1C8F0D0AC(a1, type metadata accessor for ToolKitProtoStringSearchPredicate);
  *a6 = v9;
  a6[1] = v8;
  return result;
}

uint64_t StringSearchPredicate.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for ToolKitProtoStringSearchPredicate(0);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C8F0D0AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C8F0D110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319D28;
  if (!qword_1EC319D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D28);
  }

  return result;
}

unint64_t sub_1C8F0D168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60870;
  if (!qword_1EDA60870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60870);
  }

  return result;
}

uint64_t ToolDisplayMetadata.sourceContainer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), 0x61uLL);
  memcpy(a1, (v1 + 80), 0x61uLL);
  return sub_1C8CC1340(__dst, &v4);
}

uint64_t ToolDisplayMetadata.attributionContainer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 184), 0x61uLL);
  memcpy(a1, (v1 + 184), 0x61uLL);
  return sub_1C8D52860(__dst, &v4, &qword_1EC312EF8, &unk_1C90839D0);
}

uint64_t type metadata accessor for ToolDisplayMetadata(uint64_t a1)
{
  result = qword_1EDA627C8;
  if (!qword_1EDA627C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static ToolDisplayMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F90, &qword_1C90A6ED0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v15 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v16 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C8E5ACB0(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C8D07714() & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB10C(*(a1 + 48), *(a2 + 48));
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C8CEB710() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  memcpy(v51, (a1 + 80), 0x61uLL);
  memcpy(v45, (a1 + 80), 0x61uLL);
  memcpy(v52, (a2 + 80), 0x61uLL);
  memcpy(v50, (a2 + 80), 0x61uLL);
  sub_1C8CC1340(v51, v49);
  sub_1C8CC1340(v52, v49);
  v18 = static ContainerDefinition.== infix(_:_:)(v45);
  memcpy(v53, v50, 0x61uLL);
  sub_1C8CC15FC(v53);
  memcpy(__dst, v45, 0x61uLL);
  sub_1C8CC15FC(__dst);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  memcpy(v49, (a1 + 184), 0x61uLL);
  memcpy(v50, (a2 + 184), 0x61uLL);
  v19 = v49[0];
  v20 = v49[1];
  memcpy(v48, (a1 + 200), sizeof(v48));
  v39 = v50[0];
  v40 = v50[1];
  OUTLINED_FUNCTION_15_27(v47);
  v21 = v20;
  if (v20)
  {
    v22 = v19;
    v45[0] = v19;
    v45[1] = v21;
    v38 = v21;
    OUTLINED_FUNCTION_14_34();
    memcpy(v44, v45, 0x61uLL);
    v23 = v40;
    if (v40)
    {
      OUTLINED_FUNCTION_15_27(&v43[2]);
      v43[0] = v39;
      v43[1] = v23;
      v40 = v22;
      sub_1C8D52860(v49, v42, &qword_1EC312EF8, &unk_1C90839D0);
      sub_1C8D52860(v50, v42, &qword_1EC312EF8, &unk_1C90839D0);
      sub_1C8D52860(v45, v42, &qword_1EC312EF8, &unk_1C90839D0);
      LODWORD(v39) = static ContainerDefinition.== infix(_:_:)(v44);
      memcpy(v41, v43, 0x61uLL);
      sub_1C8CC15FC(v41);
      memcpy(v42, v44, 0x61uLL);
      sub_1C8CC15FC(v42);
      v43[0] = v40;
      v43[1] = v38;
      memcpy(&v43[2], v48, 0x51uLL);
      sub_1C8D16D78(v43, &qword_1EC312EF8, &unk_1C90839D0);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    v24 = v38;
    memcpy(v43, v45, 0x61uLL);
    OUTLINED_FUNCTION_12_32(v49);
    OUTLINED_FUNCTION_12_32(v50);
    OUTLINED_FUNCTION_12_32(v45);
    sub_1C8CC15FC(v43);
LABEL_25:
    v45[0] = v22;
    v45[1] = v24;
    memcpy(&v45[2], v48, 0x51uLL);
    v45[13] = v39;
    v45[14] = v23;
    memcpy(v46, v47, sizeof(v46));
    v25 = &qword_1EC313988;
    v26 = &qword_1C906F410;
    v27 = v45;
    goto LABEL_26;
  }

  v22 = v19;
  v23 = v40;
  if (v40)
  {
    v24 = 0;
    sub_1C8D52860(v49, v45, &qword_1EC312EF8, &unk_1C90839D0);
    sub_1C8D52860(v50, v45, &qword_1EC312EF8, &unk_1C90839D0);
    goto LABEL_25;
  }

  v45[0] = v22;
  v45[1] = 0;
  OUTLINED_FUNCTION_14_34();
  sub_1C8D52860(v49, v44, &qword_1EC312EF8, &unk_1C90839D0);
  sub_1C8D52860(v50, v44, &qword_1EC312EF8, &unk_1C90839D0);
  sub_1C8D16D78(v45, &qword_1EC312EF8, &unk_1C90839D0);
LABEL_28:
  if ((sub_1C8CF15C4() & 1) == 0)
  {
    return 0;
  }

  v28 = *(a1 + 304);
  v29 = *(a2 + 304);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    v30 = *(a1 + 296) == *(a2 + 296) && v28 == v29;
    if (!v30 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v32 = *(type metadata accessor for ToolDisplayMetadata(0) + 64);
  v33 = *(v11 + 48);
  sub_1C8D52860(a1 + v32, v14, &qword_1EC3144B8, &qword_1C90839E0);
  sub_1C8D52860(a2 + v32, &v14[v33], &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_14_2(v14);
  if (v15)
  {
    OUTLINED_FUNCTION_14_2(&v14[v33]);
    if (v15)
    {
      sub_1C8D16D78(v14, &qword_1EC3144B8, &qword_1C90839E0);
      return 1;
    }
  }

  else
  {
    sub_1C8D52860(v14, v10, &qword_1EC3144B8, &qword_1C90839E0);
    OUTLINED_FUNCTION_14_2(&v14[v33]);
    if (!v34)
    {
      OUTLINED_FUNCTION_3_51();
      sub_1C8F11F5C(&v14[v33], v7, v35);
      static ToolIcon.== infix(_:_:)();
      v37 = v36;
      sub_1C8F11F04(v7, type metadata accessor for ToolIcon);
      sub_1C8F11F04(v10, type metadata accessor for ToolIcon);
      sub_1C8D16D78(v14, &qword_1EC3144B8, &qword_1C90839E0);
      return (v37 & 1) != 0;
    }

    OUTLINED_FUNCTION_4_46();
  }

  v25 = &qword_1EC317F90;
  v26 = &qword_1C90A6ED0;
  v27 = v14;
LABEL_26:
  sub_1C8D16D78(v27, v25, v26);
  return 0;
}

uint64_t ToolDisplayMetadata.hash(into:)(uint64_t a1)
{
  type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C8D305AC(a1, *(v1 + 32));
  sub_1C8D0771C();
  sub_1C8CC1590();
  sub_1C8D02E34();
  MEMORY[0x1CCA82810](*(v1 + 64));
  MEMORY[0x1CCA82810](*(v1 + 72));
  memcpy(v19, (v1 + 80), 0x61uLL);
  ContainerDefinition.hash(into:)(a1);
  v10 = *(v1 + 184);
  v11 = *(v1 + 192);
  OUTLINED_FUNCTION_15_27(__src);
  if (v11)
  {
    OUTLINED_FUNCTION_15_27(&v16[2]);
    v16[0] = v10;
    v16[1] = v11;
    sub_1C9064D9C();
    v17[0] = v10;
    v17[1] = v11;
    memcpy(v18, __src, sizeof(v18));
    sub_1C8CC1340(v17, v19);
    ContainerDefinition.hash(into:)(a1);
    memcpy(v19, v16, 0x61uLL);
    sub_1C8CC15FC(v19);
  }

  else
  {
    sub_1C9064D9C();
  }

  sub_1C8D048FC();
  if (*(v1 + 304))
  {
    sub_1C9064D9C();
    sub_1C9063FBC();
  }

  else
  {
    sub_1C9064D9C();
  }

  v12 = type metadata accessor for ToolDisplayMetadata(0);
  sub_1C8D52860(v1 + *(v12 + 64), v9, &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_14_2(v9);
  if (v13)
  {
    return sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_3_51();
  sub_1C8F11F5C(v9, v6, v14);
  sub_1C9064D9C();
  ToolIcon.hash(into:)(a1);
  return OUTLINED_FUNCTION_4_46();
}

uint64_t ToolDisplayMetadata.hashValue.getter()
{
  sub_1C9064D7C();
  ToolDisplayMetadata.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8F0DD48(uint64_t a1)
{
  sub_1C9064D7C();
  ToolDisplayMetadata.hash(into:)(v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8F0DD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = ToolDisplayMetadata.id.getter(a1, a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

uint64_t sub_1C8F0DDB0()
{
  v0 = sub_1C9063CBC();
  __swift_allocate_value_buffer(v0, qword_1EDA60DD8);
  __swift_project_value_buffer(v0, qword_1EDA60DD8);
  return sub_1C9063CAC();
}

uint64_t ToolDatabase.idsForContainersProvidingLocalTools.getter()
{
  sub_1C9063C8C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  v5 = sub_1C9063CBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  if (qword_1EDA60DD0 != -1)
  {
    OUTLINED_FUNCTION_5_45(&qword_1EDA60DD0);
  }

  __swift_project_value_buffer(v5, qword_1EDA60DD8);
  v7 = OUTLINED_FUNCTION_10_37();
  v8(v7);
  sub_1C9063C7C();
  *swift_slowAlloc() = 0;
  v9 = sub_1C9063C9C();
  v10 = sub_1C906453C();
  v11 = sub_1C9063C6C();
  OUTLINED_FUNCTION_9_34(&dword_1C8C9B000, v12, v10, v11, "idsForContainersProvidingLocalTools", "");
  v13 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315498, &qword_1C907D0D0);
  sub_1C906272C();
  if (v22)
  {
  }

  else
  {
    v18 = sub_1C906452C();
    v13 = v4;
    v19 = sub_1C9063C6C();
    OUTLINED_FUNCTION_9_34(&dword_1C8C9B000, v20, v18, v19, "idsForContainersProvidingLocalTools", "");

    OUTLINED_FUNCTION_13_27();
  }

  v14 = OUTLINED_FUNCTION_7_42();
  v15(v14);
  v16 = OUTLINED_FUNCTION_6_39();
  v17(v16);
  return v13;
}

uint64_t sub_1C8F0E0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v92 = a1;
  v70 = a2;
  v75 = sub_1C9063D3C();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1C906298C();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v88 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C9062B9C();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v70 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v97 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v70 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v70 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319348, &qword_1C909EDA8);
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v70 - v19;
  sub_1C906247C();
  swift_allocObject();
  v20 = sub_1C906246C();
  type metadata accessor for ToolRecord(0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v21 = swift_allocObject();
  v90 = xmmword_1C906A950;
  *(v21 + 16) = xmmword_1C906A950;
  if (qword_1EDA69668 != -1)
  {
    swift_once();
  }

  v22 = sub_1C9062E6C();
  v23 = __swift_project_value_buffer(v22, qword_1EDA6EB50);
  v76 = v23;
  v100 = v22;
  v101 = MEMORY[0x1E69A0050];
  v24 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v25 = *(*(v22 - 8) + 16);
  v25(v24, v23, v22);
  v26 = sub_1C90627EC();
  v27 = MEMORY[0x1E699FE50];
  *(v21 + 56) = v26;
  *(v21 + 64) = v27;
  __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  sub_1C906248C();
  __swift_destroy_boxed_opaque_existential_1(&v98);
  sub_1C8F11E58(&qword_1EDA6B220, type metadata accessor for ToolRecord, &unk_1C906B058);
  sub_1C906250C();

  v28 = swift_allocObject();
  *(v28 + 16) = v90;
  v100 = v22;
  v101 = MEMORY[0x1E69A0050];
  v29 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v25(v29, v76, v22);
  *(v28 + 56) = v26;
  *(v28 + 64) = MEMORY[0x1E699FE50];
  __swift_allocate_boxed_opaque_existential_1((v28 + 32));
  sub_1C906248C();
  __swift_destroy_boxed_opaque_existential_1(&v98);
  sub_1C8D28184(&qword_1EDA62C28, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF88]);
  v30 = v77;
  sub_1C9062AFC();

  v31 = v97 + 8;
  v32 = *(v97 + 8);
  v32(v8, v30);
  if (qword_1EDA68E70 != -1)
  {
    swift_once();
  }

  v33 = v80;
  __swift_project_value_buffer(v80, qword_1EDA6E9C8);
  sub_1C8D28184(&qword_1EDA69390, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF30]);
  v34 = v78;
  *&v90 = v20;
  sub_1C906249C();
  sub_1C8D28184(&qword_1EDA69360, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF78]);
  v35 = v81;
  v36 = v96;
  sub_1C906293C();
  (*(v79 + 8))(v34, v33);
  v95 = v32;
  v32(v36, v30);
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_1C906478C();

  v98 = 0xD00000000000001DLL;
  v99 = 0x80000001C90CCC70;
  v102 = 1;
  v97 = v31;
  v37 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v37);

  MEMORY[0x1CCA81A90](0x31203D2029, 0xE500000000000000);
  v38 = v85;
  sub_1C9062B8C();
  v96 = sub_1C8D28184(&qword_1EDA69368, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF70]);
  v39 = v82;
  sub_1C906290C();

  v40 = v87;
  v41 = *(v86 + 8);
  v41(v38, v87);
  v95(v35, v30);
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_1C906478C();

  v98 = 0xD000000000000028;
  v99 = 0x80000001C90CCCC0;
  v102 = 1;
  v42 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v42);

  sub_1C9062B8C();
  v43 = v83;
  sub_1C906290C();

  v41(v38, v40);
  v44 = v95;
  v95(v39, v30);
  v45 = v84;
  sub_1C9062C4C();
  v44(v43, v30);
  v46 = v93;
  sub_1C9062C1C();
  v44(v45, v30);
  v48 = v88;
  v47 = v89;
  v49 = v94;
  sub_1C9062C0C();
  if (v47)
  {
    (*(v91 + 8))(v46, v49);
  }

  else
  {
    sub_1C906297C();
    (*(v71 + 8))(v48, v72);
    v50 = sub_1C9062FFC();
    v52 = v51;

    v53 = v73;
    sub_1C906371C();

    v54 = sub_1C9063D1C();
    v55 = sub_1C906443C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v98 = v57;
      *v56 = 136315394;
      *(v56 + 4) = sub_1C8CACE04(0xD000000000000023, 0x80000001C90CCC20, &v98, v58, v59, v60);
      *(v56 + 12) = 2080;
      v64 = sub_1C8CACE04(v50, v52, &v98, v61, v62, v63);

      *(v56 + 14) = v64;
      _os_log_impl(&dword_1C8C9B000, v54, v55, "%s making SQL request: %s", v56, 0x16u);
      swift_arrayDestroy();
      v65 = v57;
      v46 = v93;
      MEMORY[0x1CCA833A0](v65, -1, -1);
      v66 = v56;
      v49 = v94;
      MEMORY[0x1CCA833A0](v66, -1, -1);
    }

    else
    {
    }

    (*(v74 + 8))(v53, v75);
    sub_1C8D28184(&qword_1EDA6CB90, &qword_1EC319348, &qword_1C909EDA8, MEMORY[0x1E699FF60]);
    v67 = sub_1C906259C();
    v68 = sub_1C8D2BCE0(v67);

    result = (*(v91 + 8))(v46, v49);
    *v70 = v68;
  }

  return result;
}

uint64_t ToolDatabase.visibleLocalToolMetadata.getter()
{
  v1 = v0;
  sub_1C9063C8C();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  v6 = sub_1C9063CBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  if (qword_1EDA60DD0 != -1)
  {
    OUTLINED_FUNCTION_5_45(&qword_1EDA60DD0);
  }

  __swift_project_value_buffer(v6, qword_1EDA60DD8);
  v8 = OUTLINED_FUNCTION_10_37();
  v9(v8);
  sub_1C9063C7C();
  *swift_slowAlloc() = 0;
  v10 = sub_1C9063C9C();
  v11 = sub_1C906453C();
  v12 = v5;
  v13 = sub_1C9063C6C();
  OUTLINED_FUNCTION_9_34(&dword_1C8C9B000, v14, v11, v13, "VisibleLocalToolMetadata", "");
  sub_1C8F0EFEC(v1);
  if (v23)
  {
  }

  else
  {
    v19 = sub_1C906452C();
    v12 = v5;
    v20 = sub_1C9063C6C();
    OUTLINED_FUNCTION_9_34(&dword_1C8C9B000, v21, v19, v20, "VisibleLocalToolMetadata", "");

    OUTLINED_FUNCTION_13_27();
  }

  v15 = OUTLINED_FUNCTION_7_42();
  v16(v15);
  v17 = OUTLINED_FUNCTION_6_39();
  v18(v17);
  return v12;
}

uint64_t sub_1C8F0EFEC(uint64_t a1)
{
  v3 = sub_1C90620BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  sub_1C8F39BAC(v6);
  v10 = *(v4 + 8);
  v10(v6, v3);
  v13 = a1;
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D38, &qword_1C90A6FD8);
  sub_1C906272C();
  return (v10)(v9, v3);
}

uint64_t sub_1C8F0F164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v118 = a1;
  v116 = a3;
  v117 = a2;
  v109 = a4;
  v4 = type metadata accessor for FetchedToolDisplayMetadata(0);
  v104 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolDisplayMetadata(0);
  v123 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D40, &unk_1C90A6FE0);
  v114 = *(v8 - 8);
  v115 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v95 - v9;
  v102 = sub_1C9063D3C();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v95 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v95 - v14;
  v120 = sub_1C9062B9C();
  isa = v120[-1].isa;
  MEMORY[0x1EEE9AC00](v120);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v121 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v95 - v23;
  v25 = type metadata accessor for ToolRecord(0);
  v111 = sub_1C8F11E58(&qword_1EDA6B220, type metadata accessor for ToolRecord, &unk_1C906B058);
  v112 = v25;
  sub_1C90624BC();
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_1C906478C();

  v124 = 0xD00000000000001DLL;
  v125 = 0x80000001C90CCC70;
  v106 = 0x80000001C90CCC70;
  v126 = 5;
  v26 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v26);
  v27 = v17;

  MEMORY[0x1CCA81A90](0x203D3D2029, 0xE500000000000000);
  v126 = 5;
  v28 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v28);

  sub_1C9062B8C();
  v29 = sub_1C8D28184(&qword_1EDA69368, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF70]);
  sub_1C906290C();

  v30 = *(isa + 1);
  v108 = v16;
  isa += 8;
  v30(v16, v120);
  v31 = v121 + 8;
  v32 = *(v121 + 1);
  v32(v21, v27);
  if (!VCIsInternalBuild())
  {
    goto LABEL_19;
  }

  v96 = v30;
  v97 = v29;
  v110 = v32;
  v33 = sub_1C9063EEC();
  v35 = v34;
  v36 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v37 = sub_1C8F11B10(v33, v35);
  v95 = v37;
  if (!v37)
  {
    goto LABEL_18;
  }

  v38 = v37;
  v39 = sub_1C9063EBC();
  v40 = [v38 stringForKey_];

  if (!v40)
  {
    goto LABEL_18;
  }

  v41 = v38;
  v42 = sub_1C9063EEC();
  v44 = v43;

  v45 = v44;
  if (v42 != 0x6968747972657645 || v44 != 0xEA0000000000676ELL)
  {
    v47 = v42;
    if ((sub_1C9064C2C() & 1) == 0)
    {
      if (v42 != 0x6C616E7265746E49 || v45 != 0xE800000000000000)
      {
        v54 = v41;
        if ((sub_1C9064C2C() & 1) == 0)
        {
          v77 = v47 == 0x63696C627550 && v45 == 0xE600000000000000;
          v32 = v110;
          if (v77 || (sub_1C9064C2C() & 1) != 0)
          {
            v121 = v54;
            v78 = v99;
            sub_1C906371C();
            v79 = sub_1C9063D1C();
            v80 = sub_1C906446C();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&dword_1C8C9B000, v79, v80, "[Internal-only] Restricting to public tools, as defined by the current value for the WFShortcutsDrawerVisibilityLevelKey", v81, 2u);
              MEMORY[0x1CCA833A0](v81, -1, -1);
            }

            else
            {
            }

            (*(v101 + 8))(v78, v102);
          }

          else
          {
            sub_1C906371C();

            v82 = v45;
            v83 = sub_1C9063D1C();
            v84 = sub_1C906446C();
            isa = v82;

            v120 = v83;
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v121 = v54;
              v86 = v47;
              v87 = v85;
              v88 = v31;
              v89 = swift_slowAlloc();
              v124 = v89;
              *v87 = 136315138;
              *(v87 + 4) = sub_1C8CACE04(v86, isa, &v124, v90, v91, v92);
              v93 = v120;
              _os_log_impl(&dword_1C8C9B000, v120, v84, "[Internal-only] Unexpected value %s found for WFShortcutsDrawerVisibilityLevelKey.", v87, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v89);
              v94 = v89;
              v31 = v88;
              MEMORY[0x1CCA833A0](v94, -1, -1);
              MEMORY[0x1CCA833A0](v87, -1, -1);
            }

            else
            {
            }

            (*(v101 + 8))(v98, v102);
          }

          goto LABEL_19;
        }
      }

LABEL_18:
      v55 = v107;
      sub_1C90624BC();
      v124 = 0;
      v125 = 0xE000000000000000;
      sub_1C906478C();

      v124 = 0xD00000000000001DLL;
      v125 = v106;
      v126 = 1;
      v56 = sub_1C9064BDC();
      MEMORY[0x1CCA81A90](v56);

      MEMORY[0x1CCA81A90](0x203D3D2029, 0xE500000000000000);
      v126 = 1;
      v57 = sub_1C9064BDC();
      MEMORY[0x1CCA81A90](v57);

      v58 = v108;
      sub_1C9062B8C();
      sub_1C906290C();

      v96(v58, v120);
      v59 = v55;
      v32 = v110;
      v110(v59, v27);
      v32(v24, v27);
      (*(v121 + 4))(v24, v21, v27);
      goto LABEL_19;
    }
  }

  isa = v45;
  v48 = v21;
  v49 = v100;
  sub_1C906371C();
  v50 = sub_1C9063D1C();
  v51 = sub_1C906446C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1C8C9B000, v50, v51, "[Internal-only] Showing all tools, as defined by the current value for the WFShortcutsDrawerVisibilityLevelKey", v52, 2u);
    MEMORY[0x1CCA833A0](v52, -1, -1);
  }

  (*(v101 + 8))(v49, v102);
  sub_1C90624BC();

  v32 = v110;
  v110(v24, v27);
  (*(v121 + 4))(v24, v48, v27);
LABEL_19:
  v60 = sub_1C906206C();
  v61 = v113;
  sub_1C8F0FFD0(v60, v62, v113);

  sub_1C8D28184(&qword_1EDA62C38, &qword_1EC319D40, &unk_1C90A6FE0, MEMORY[0x1E699FF60]);
  sub_1C8F11E58(&qword_1EDA62930, type metadata accessor for FetchedToolDisplayMetadata, &unk_1C90740D4);
  v63 = v119;
  v64 = v115;
  v65 = sub_1C906255C();
  (*(v114 + 8))(v61, v64);
  if (v63)
  {
    return (v32)(v24, v27);
  }

  isa = v31;
  v67 = *(v65 + 16);
  if (v67)
  {
    v119 = 0;
    v120 = v24;
    v110 = v32;
    v121 = v27;
    v124 = MEMORY[0x1E69E7CC0];
    sub_1C8D0A004(0, v67, 0);
    v68 = v124;
    v69 = *(v104 + 80);
    v118 = v65;
    v70 = v65 + ((v69 + 32) & ~v69);
    v71 = *(v104 + 72);
    v72 = v105;
    v73 = v103;
    do
    {
      sub_1C8F11EA0(v70, v73);
      sub_1C8D7EA04(v72);
      sub_1C8F11F04(v73, type metadata accessor for FetchedToolDisplayMetadata);
      v124 = v68;
      v75 = *(v68 + 16);
      v74 = *(v68 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1C8D0A004(v74 > 1, v75 + 1, 1);
        v68 = v124;
      }

      *(v68 + 16) = v75 + 1;
      sub_1C8F11F5C(v72, v68 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v75, type metadata accessor for ToolDisplayMetadata);
      v70 += v71;
      --v67;
    }

    while (v67);
    v110(v120, v121);

    v76 = v109;
  }

  else
  {

    result = (v32)(v24, v27);
    v68 = MEMORY[0x1E69E7CC0];
    v76 = v109;
  }

  *v76 = v68;
  return result;
}

uint64_t sub_1C8F0FFD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v217 = a2;
  v188 = a3;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313230, &unk_1C90A6FF0);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v184 = v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v185 = v164 - v6;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313240, &unk_1C90A7A20);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v179 = v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v180 = v164 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v181 = v164 - v11;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313250, &unk_1C90A7000);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v174 = v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v175 = v164 - v14;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313268, &unk_1C909F240);
  v209 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v201 = v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v204 = v164 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  v19 = *(v18 - 8);
  v212 = v18;
  v213 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v210 = v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v211 = v164 - v22;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  v208 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v197 = v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v198 = v164 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v199 = v164 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313270, &unk_1C90A7010);
  v194 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v193 = v164 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v215 = v164 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v36 = *(v35 - 8);
  v218 = v35;
  v219 = v36;
  MEMORY[0x1EEE9AC00](v35);
  v216 = v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v195 = v164 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v196 = v164 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v200 = v164 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v206 = v164 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v207 = v164 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v178 = v164 - v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C909C460;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  v51 = sub_1C9062E6C();
  v52 = __swift_project_value_buffer(v51, qword_1EDA6E8A8);
  v53 = MEMORY[0x1E69A0038];
  *(v50 + 56) = v51;
  *(v50 + 64) = v53;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v50 + 32));
  v55 = *(v51 - 8);
  v56 = *(v55 + 16);
  v57 = v55 + 16;
  v56(boxed_opaque_existential_1, v52, v51);
  if (qword_1EDA68E08 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v51, qword_1EDA6E8D8);
  *(v50 + 96) = v51;
  *(v50 + 104) = v53;
  v59 = __swift_allocate_boxed_opaque_existential_1((v50 + 72));
  v56(v59, v58, v51);
  if (qword_1EDA68DF8 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v51, qword_1EDA6E8C0);
  *(v50 + 136) = v51;
  *(v50 + 144) = v53;
  v61 = __swift_allocate_boxed_opaque_existential_1((v50 + 112));
  v56(v61, v60, v51);
  if (qword_1EDA68E30 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v51, qword_1EDA6E938);
  *(v50 + 176) = v51;
  *(v50 + 184) = v53;
  v63 = __swift_allocate_boxed_opaque_existential_1((v50 + 152));
  v56(v63, v62, v51);
  if (qword_1EDA68DE0 != -1)
  {
    swift_once();
  }

  v64 = __swift_project_value_buffer(v51, qword_1EDA6E890);
  *(v50 + 216) = v51;
  *(v50 + 224) = v53;
  v65 = __swift_allocate_boxed_opaque_existential_1((v50 + 192));
  v56(v65, v64, v51);
  if (qword_1EDA68E40 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v51, qword_1EDA6E968);
  *(v50 + 256) = v51;
  *(v50 + 264) = v53;
  v67 = __swift_allocate_boxed_opaque_existential_1((v50 + 232));
  v56(v67, v66, v51);
  if (qword_1EDA68E38 != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v51, qword_1EDA6E950);
  *(v50 + 296) = v51;
  *(v50 + 304) = v53;
  v69 = __swift_allocate_boxed_opaque_existential_1((v50 + 272));
  v56(v69, v68, v51);
  if (qword_1EDA6B248 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v51, qword_1EDA6EBE0);
  *(v50 + 336) = v51;
  *(v50 + 344) = v53;
  v71 = __swift_allocate_boxed_opaque_existential_1((v50 + 312));
  v56(v71, v70, v51);
  if (qword_1EDA6B230 != -1)
  {
    swift_once();
  }

  v72 = __swift_project_value_buffer(v51, qword_1EDA6EBB0);
  *(v50 + 376) = v51;
  *(v50 + 384) = v53;
  v73 = __swift_allocate_boxed_opaque_existential_1((v50 + 352));
  v56(v73, v72, v51);
  sub_1C8D28184(&qword_1EDA62C28, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF88]);
  sub_1C9062AEC();

  if (qword_1EDA68EA8 != -1)
  {
    swift_once();
  }

  v202 = v57;
  v203 = v56;
  v74 = v30;
  v214 = a1;
  qword_1EDA6E5F0(a1, v217, 0x79616C70736964, 0xE700000000000000);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D48, &qword_1C90A7020);
  v75 = swift_allocObject();
  v170 = xmmword_1C906A950;
  *(v75 + 16) = xmmword_1C906A950;
  if (qword_1EDA691E8 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v51, qword_1EDA6EA48);
  v77 = MEMORY[0x1E69A0048];
  *(v75 + 56) = v51;
  *(v75 + 64) = v77;
  v78 = __swift_allocate_boxed_opaque_existential_1((v75 + 32));
  v203(v78, v76, v51);
  sub_1C8D28184(&qword_1EDA69408, &qword_1EC313270, &unk_1C90A7010, MEMORY[0x1E699FEB8]);
  v79 = v193;
  sub_1C906280C();

  v80 = v74;
  v81 = *(v194 + 8);
  v81(v80, v28);
  sub_1C8D28184(&qword_1EDA69410, &qword_1EC313270, &unk_1C90A7010, MEMORY[0x1E699FEB0]);
  v82 = v215;
  sub_1C9062A1C();
  v81(v79, v28);
  v83 = sub_1C8D28184(&qword_1EDA69360, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF78]);
  sub_1C8D28184(&qword_1EDA69418, &qword_1EC313270, &unk_1C90A7010, MEMORY[0x1E699FEA8]);
  v84 = v218;
  v85 = v216;
  sub_1C906296C();
  v81(v82, v28);
  v86 = *(v219 + 8);
  v219 += 8;
  v86(v85, v84);
  if (qword_1EDA68E70 != -1)
  {
    swift_once();
  }

  v215 = v83;
  v216 = v86;
  v87 = v172;
  v194 = __swift_project_value_buffer(v172, qword_1EDA6E9C8);
  v88 = v217;
  v89 = v214;
  if (qword_1EDA69688 != -1)
  {
    swift_once();
  }

  v173 = v51;
  v90 = v210;
  v192 = unk_1EDA6EBA0;
  v193 = qword_1EDA6EB98;
  qword_1EDA6EB98(v89, v88);
  v91 = sub_1C8D28184(&qword_1EDA6B4E0, &qword_1EC3133C8, &unk_1C909F250, MEMORY[0x1E699FEB0]);
  v92 = v211;
  v93 = v212;
  v191 = v91;
  sub_1C9062A1C();
  v95 = v213 + 8;
  v94 = *(v213 + 8);
  v94(v90, v93);
  v96 = sub_1C8D28184(&qword_1EDA69378, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF50]);
  v97 = sub_1C8D28184(&qword_1EDA6B4E8, &qword_1EC3133C8, &unk_1C909F250, MEMORY[0x1E699FEA8]);
  v98 = v197;
  v189 = v96;
  v190 = v97;
  sub_1C906295C();
  v213 = v95;
  v194 = v94;
  v94(v92, v93);
  v99 = v87;
  if (qword_1EDA69630 != -1)
  {
    swift_once();
  }

  v100 = v201;
  v166 = *algn_1EDA6EAE8;
  v168 = qword_1EDA6EAE0;
  qword_1EDA6EAE0(v89, v217);
  v101 = sub_1C8D28184(&qword_1EDA6B4D0, &qword_1EC313268, &unk_1C909F240, MEMORY[0x1E699FEE0]);
  v102 = v204;
  v103 = v205;
  sub_1C9062B1C();
  v104 = v209 + 8;
  v105 = *(v209 + 8);
  v105(v100, v103);
  v106 = v198;
  v167 = v101;
  sub_1C906294C();
  v209 = v104;
  v165 = v105;
  v105(v102, v103);
  v108 = v208 + 8;
  v107 = *(v208 + 8);
  v107(v98, v99);
  v109 = v217;
  v110 = sub_1C8D28184(&qword_1EDA69388, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF38]);
  v111 = v199;
  v164[2] = v110;
  sub_1C9062A1C();
  v107(v106, v99);
  v112 = sub_1C8D28184(&qword_1EDA69390, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF30]);
  v113 = v218;
  v164[1] = v112;
  v114 = v195;
  sub_1C906295C();
  v169 = v107;
  v208 = v108;
  v107(v111, v99);
  (v216)(v114, v113);
  if (qword_1EDA68E98 != -1)
  {
    swift_once();
  }

  v195 = __swift_project_value_buffer(v99, qword_1EDA6EA10);
  v115 = v210;
  v116 = v214;
  (v193)(v214, v109);
  v117 = v211;
  v118 = v99;
  v119 = v212;
  sub_1C9062A1C();
  v120 = v194;
  (v194)(v115, v119);
  v121 = v197;
  sub_1C906295C();
  v120(v117, v119);
  v122 = v201;
  v168(v116, v109);
  v123 = v204;
  v124 = v205;
  sub_1C9062B1C();
  v125 = v165;
  v165(v122, v124);
  v126 = v198;
  sub_1C906294C();
  v125(v123, v124);
  v127 = v169;
  v169(v121, v118);
  v128 = v199;
  sub_1C9062A1C();
  v127(v126, v118);
  v129 = v218;
  v130 = v196;
  sub_1C906296C();
  v127(v128, v118);
  (v216)(v130, v129);
  v131 = v217;
  if (qword_1EDA68EB8 != -1)
  {
    swift_once();
  }

  v132 = v174;
  v133 = v214;
  qword_1EDA6EA38(v214, v131);
  sub_1C8D28184(&qword_1EDA693B8, &qword_1EC313250, &unk_1C90A7000, MEMORY[0x1E699FEE0]);
  v134 = v175;
  v135 = v177;
  sub_1C9062B1C();
  v136 = *(v176 + 8);
  v136(v132, v135);
  v137 = v200;
  sub_1C906294C();
  v136(v134, v135);
  (v216)(v137, v129);
  v138 = v133;
  v139 = v183;
  v140 = v182;
  v141 = v180;
  v142 = v173;
  if (qword_1EDA68EA0 != -1)
  {
    swift_once();
  }

  v143 = v179;
  qword_1EDA6EA28(v138, v131);
  sub_1C8D28184(&qword_1EDA693F0, &qword_1EC313240, &unk_1C90A7A20, MEMORY[0x1E699FEE0]);
  sub_1C9062B1C();
  v144 = *(v140 + 8);
  v144(v143, v139);
  v145 = swift_allocObject();
  *(v145 + 16) = v170;
  if (qword_1EDA66938 != -1)
  {
    swift_once();
  }

  v146 = __swift_project_value_buffer(v142, qword_1EDA6E860);
  *(v145 + 56) = v142;
  *(v145 + 64) = MEMORY[0x1E69A0048];
  v147 = __swift_allocate_boxed_opaque_existential_1((v145 + 32));
  v203(v147, v146, v142);
  sub_1C8D28184(&qword_1EDA693E8, &qword_1EC313240, &unk_1C90A7A20, MEMORY[0x1E699FEE8]);
  v148 = v181;
  sub_1C906280C();

  v144(v141, v139);
  v149 = v218;
  v150 = v206;
  sub_1C906294C();
  v144(v148, v139);
  (v216)(v150, v149);
  if (qword_1EDA68E48 != -1)
  {
    swift_once();
  }

  v151 = v187;
  __swift_project_value_buffer(v187, qword_1EDA6E980);
  v152 = v210;
  (v193)(v214, v131);
  v154 = v211;
  v153 = v212;
  sub_1C9062A1C();
  v155 = v194;
  (v194)(v152, v153);
  sub_1C8D28184(&qword_1EDA69350, &qword_1EC313230, &unk_1C90A6FF0, MEMORY[0x1E699FFC0]);
  v156 = v184;
  sub_1C906296C();
  v155(v154, v153);
  sub_1C8D28184(&qword_1EDA69358, &qword_1EC313230, &unk_1C90A6FF0, MEMORY[0x1E699FFB0]);
  v157 = v185;
  sub_1C9062B1C();
  v158 = *(v186 + 8);
  v158(v156, v151);
  v159 = v178;
  v160 = v218;
  v161 = v207;
  sub_1C906294C();
  v158(v157, v151);
  v162 = v216;
  (v216)(v161, v160);
  type metadata accessor for FetchedToolDisplayMetadata(0);
  sub_1C9062C1C();
  return v162(v159, v160);
}

id sub_1C8F11B10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C9063EBC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void sub_1C8F11BE4(uint64_t a1)
{
  sub_1C8F11DEC(319, &qword_1EDA6E370, &type metadata for ToolCategory, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8F11DEC(319, &qword_1EDA6E550, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C8F11DEC(319, &qword_1EDA6E368, &type metadata for RuntimeRequirement, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C8F11DEC(319, &qword_1EDA6E398, &type metadata for ContainerDefinition, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C8F11DEC(319, &qword_1EDA6E360, &type metadata for ContainerDefinition, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1C8F11DEC(319, &qword_1EDA6E558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C8CC30E0(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C8F11DEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C8F11E58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8F11EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchedToolDisplayMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8F11F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8F11F5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t ToolDatabase.checkpointWAL(maxRetries:waitInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5[5] = a3;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = sub_1C906245C();
  v5[7] = v6;
  OUTLINED_FUNCTION_46(v6);
  v5[8] = v7;
  v5[9] = OUTLINED_FUNCTION_38_1();
  v5[10] = swift_task_alloc();
  v8 = sub_1C90626DC();
  v5[11] = v8;
  OUTLINED_FUNCTION_46(v8);
  v5[12] = v9;
  v5[13] = OUTLINED_FUNCTION_38_1();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v10 = sub_1C906204C();
  v5[16] = v10;
  OUTLINED_FUNCTION_46(v10);
  v5[17] = v11;
  v5[18] = swift_task_alloc();
  v12 = sub_1C906489C();
  v5[19] = v12;
  OUTLINED_FUNCTION_46(v12);
  v5[20] = v13;
  v5[21] = swift_task_alloc();
  v14 = sub_1C9063D3C();
  v5[22] = v14;
  OUTLINED_FUNCTION_46(v14);
  v5[23] = v15;
  v5[24] = OUTLINED_FUNCTION_38_1();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v16 = sub_1C9063DEC();
  v5[28] = v16;
  OUTLINED_FUNCTION_46(v16);
  v5[29] = v17;
  v5[30] = swift_task_alloc();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C8F12244()
{
  v43 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = *(v0[6] + 24);
  v0[31] = v4;
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v5 = v4;
  LOBYTE(v4) = sub_1C9063DFC();
  result = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v0[32] = *MEMORY[0x1E69E10F0];
    sub_1C906371C();
    v7 = sub_1C9063D1C();
    v8 = sub_1C906446C();
    if (OUTLINED_FUNCTION_15_2(v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C8C9B000, v7, v3, "Starting WAL checkpoint", v9, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
    }

    v10 = v0[23];

    v0[33] = *(v10 + 8);
    v11 = OUTLINED_FUNCTION_145();
    v13 = v12(v11);
    v13.n128_u64[0] = 134218242;
    v42 = v13;
    v0[34] = 0;
    if (v0[3])
    {
      v15 = v0[17];
      v14 = v0[18];
      v16 = v0[16];
      _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
      v17 = sub_1C906200C();
      v19 = v18;
      (*(v15 + 8))(v14, v16);
      sub_1C906371C();
      v20 = sub_1C9063D1C();
      v21 = sub_1C906446C();
      if (OUTLINED_FUNCTION_15_2(v21))
      {
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_27_18(v22, v23, v24, v25, v26, v27, v28, v29, v30, v42.n128_i64[0], v42.n128_i64[1], v31);
        _os_log_impl(&dword_1C8C9B000, v20, v32, "Attempt %ld: trying to checkpoint", v22, 0xCu);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      v33 = v0[33];

      v34 = OUTLINED_FUNCTION_145();
      v33(v34);
      if (qword_1EDA63970 != -1)
      {
        OUTLINED_FUNCTION_1_66();
        swift_once();
      }

      v35 = v0[6];
      v36 = swift_task_alloc();
      *(v36 + 16) = v17;
      *(v36 + 24) = v19;
      v37 = OUTLINED_FUNCTION_9_35();
      sub_1C8D927FC(v37, v36);

      v38 = swift_task_alloc();
      v38[2] = v35;
      v38[3] = v17;
      v38[4] = v19;
      OUTLINED_FUNCTION_8_41();
      sub_1C90644BC();
    }

    v39 = OUTLINED_FUNCTION_5_46();
    OUTLINED_FUNCTION_32_18(v39);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_19_26();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F12BF8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C8F12D5C(uint64_t a1, __n128 a2)
{
  v124 = v2;
  v3 = *(v2 + 288);
  a2.n128_u64[0] = 134218242;
  v118 = a2;
  while (1)
  {
    v5 = *(v2 + 136);
    v4 = *(v2 + 144);
    v6 = *(v2 + 128);
    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    v7 = sub_1C906200C();
    v9 = v8;
    (*(v5 + 8))(v4, v6);
    sub_1C906371C();
    v10 = sub_1C9063D1C();
    v11 = sub_1C906446C();
    if (OUTLINED_FUNCTION_15_2(v11))
    {
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_27_18(v12, v13, v14, v15, v16, v17, v18, v19, v20, v118.n128_i64[0], v118.n128_i64[1], v21);
      _os_log_impl(&dword_1C8C9B000, v10, v22, "Attempt %ld: trying to checkpoint", v12, 0xCu);
      v23 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v23);
    }

    v24 = *(v2 + 264);
    v25 = *(v2 + 200);
    v26 = *(v2 + 176);

    v24(v25, v26);
    if (qword_1EDA63970 != -1)
    {
      OUTLINED_FUNCTION_1_66();
      swift_once();
    }

    v27 = *(v2 + 48);
    v28 = off_1EDA63980;
    v29 = swift_task_alloc();
    *(v29 + 16) = v7;
    *(v29 + 24) = v9;
    v30 = OUTLINED_FUNCTION_9_35();
    sub_1C8D927FC(v30, v29);

    v31 = swift_task_alloc();
    v31[2] = v27;
    v31[3] = v7;
    v121 = v7;
    v31[4] = v9;
    OUTLINED_FUNCTION_8_41();
    sub_1C90644BC();
    if (!v3)
    {

LABEL_20:
      v80 = OUTLINED_FUNCTION_5_46();
      OUTLINED_FUNCTION_32_18(v80);

      OUTLINED_FUNCTION_6_0();
      goto LABEL_27;
    }

    *(v2 + 16) = v3;
    v32 = v3;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
    if (!OUTLINED_FUNCTION_21_22(v33))
    {
      goto LABEL_25;
    }

    v120 = v9;
    v34 = OUTLINED_FUNCTION_18_28();
    v35(v34);
    sub_1C906266C();
    sub_1C906242C();
    OUTLINED_FUNCTION_11_33();
    sub_1C8F14FB8(&qword_1EC319D50, v36, MEMORY[0x1E699FD98]);
    OUTLINED_FUNCTION_17_29();
    OUTLINED_FUNCTION_16_27();
    v37 = v28[1];
    v38 = OUTLINED_FUNCTION_114_0();
    v37(v38);
    v39 = OUTLINED_FUNCTION_300();
    v37(v39);
    if (*(v2 + 296) != *(v2 + 300))
    {
      OUTLINED_FUNCTION_31_20();
      sub_1C906269C();
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_16_27();
      v40 = OUTLINED_FUNCTION_114_0();
      v37(v40);
      v41 = OUTLINED_FUNCTION_300();
      v37(v41);
      if (*(v2 + 304) != *(v2 + 308))
      {
        (*(*(v2 + 96) + 8))(*(v2 + 112), *(v2 + 88));
LABEL_25:

        v109 = swift_task_alloc();
        v109[2] = v7;
        v109[3] = v9;
        v109[4] = v3;
        v110 = OUTLINED_FUNCTION_7_43();
        sub_1C8D927FC(v110, v111);

        swift_willThrow();
LABEL_26:
        OUTLINED_FUNCTION_5_46();
        OUTLINED_FUNCTION_23_25();

        OUTLINED_FUNCTION_6_0();
LABEL_27:
        OUTLINED_FUNCTION_19_26();

        __asm { BRAA            X1, X16 }
      }
    }

    v43 = *(v2 + 104);
    v42 = *(v2 + 112);
    v45 = *(v2 + 88);
    v44 = *(v2 + 96);

    sub_1C906371C();
    v46 = *(v44 + 16);
    v47 = v45;
    v48 = (v44 + 16);
    v46(v43, v42, v47);
    v49 = sub_1C9063D1C();
    v50 = sub_1C906444C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v2 + 272);
      v52 = *(v2 + 104);
      v53 = *(v2 + 88);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = v118.n128_u32[0];
      *(v54 + 4) = v51;
      *(v54 + 12) = 2112;
      OUTLINED_FUNCTION_0_70();
      v57 = sub_1C8F14FB8(&qword_1EC312ED8, v56, MEMORY[0x1E699FE18]);
      OUTLINED_FUNCTION_6_3(v53, v57);
      v46(v58, v52, v53);
      v59 = _swift_stdlib_bridgeErrorToNSError();
      v60 = OUTLINED_FUNCTION_114_0();
      v48 = (v44 + 16);
      v119 = v61;
      (v61)(v60);
      *(v54 + 14) = v59;
      *v55 = v59;
      _os_log_impl(&dword_1C8C9B000, v49, v50, "Attempt %ld: checkpointing database failed with %@", v54, 0x16u);
      sub_1C8D14208(v55, &qword_1EC312EC8, &qword_1C9071EA0);
      v62 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v62);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
    }

    else
    {
      v63 = *(v2 + 96);
      v64 = *(v2 + 104);
      v65 = *(v2 + 88);

      v119 = *(v63 + 8);
      v119(v64, v65);
    }

    v66 = *(v2 + 272);
    v67 = *(v2 + 112);
    v68 = *(v2 + 88);
    (*(v2 + 264))(*(v2 + 192), *(v2 + 176));
    OUTLINED_FUNCTION_0_70();
    v70 = sub_1C8F14FB8(&qword_1EC312ED8, v69, MEMORY[0x1E699FE18]);
    v71 = OUTLINED_FUNCTION_6_3(v68, v70);
    v46(v72, v67, v68);
    v73 = swift_task_alloc();
    v73[2] = v121;
    v73[3] = v120;
    v73[4] = v71;
    v74 = OUTLINED_FUNCTION_10_38();
    sub_1C8D927FC(v74, v73);

    v76 = __OFADD__(v66, 1);
    v77 = v66 + 1;
    if (v76)
    {
      break;
    }

    v78 = *(v2 + 112);
    v79 = *(v2 + 88);
    if ((v77 & 0x8000000000000000) == 0 && v77 == *(v2 + 24))
    {
      v81 = OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_6_3(v81, v82);
      v46(v83, v78, v79);
      swift_willThrow();
      v119(v78, v79);

      goto LABEL_26;
    }

    v119(*(v2 + 112), *(v2 + 88));

    *(v2 + 272) = v77;
    if (v77 >= *(v2 + 24))
    {
      goto LABEL_20;
    }

    v3 = 0;
    if (v77)
    {
      sub_1C906371C();
      v84 = sub_1C9063D1C();
      v85 = sub_1C906446C();
      v86 = os_log_type_enabled(v84, v85);
      v87 = *(v2 + 264);
      if (v86)
      {
        v122 = *(v2 + 264);
        v88 = OUTLINED_FUNCTION_29_21();
        v89 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_25(v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
        *(v88 + 4) = v77;
        *(v88 + 12) = 2080;
        v99 = sub_1C9064E3C();
        v104 = sub_1C8CACE04(v99, v100, &v123, v101, v102, v103);

        *(v88 + 14) = v104;
        OUTLINED_FUNCTION_33_16(&dword_1C8C9B000, v105, v106, "Attempt %ld: sleeping for %s and trying again");
        __swift_destroy_boxed_opaque_existential_1(v48);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v107 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v107);

        v108 = OUTLINED_FUNCTION_145();
        v122(v108);
      }

      else
      {

        v114 = OUTLINED_FUNCTION_145();
        v87(v114);
      }

      sub_1C9064CEC();
      v115 = OUTLINED_FUNCTION_30_23();
      *(v2 + 280) = v115;
      *v115 = v2;
      OUTLINED_FUNCTION_4_47(v115);
      OUTLINED_FUNCTION_19_26();

      __asm { BR              X5 }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F13600()
{

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8F13700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9063D3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C8F13B84();
  if (!v3)
  {
    v11 = sub_1C8F13CC0();
    if (v11 == 2)
    {
      if (qword_1EDA63970 != -1)
      {
        v11 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v11);
      v14 = &v42 - 8;
      *(&v42 - 6) = a2;
      *(&v42 - 5) = a3;
      *(&v42 - 32) = 2;
      *(&v42 - 7) = 0;
      *(&v42 - 24) = 1;
      *(&v42 - 5) = 0;
      *(&v42 - 16) = 1;
      v15 = sub_1C8F14FB4;
      return sub_1C8D927FC(v15, v14);
    }

    v16 = v11;
    v17 = v12;
    v49 = v13;
    sub_1C906371C();
    v18 = sub_1C9063D1C();
    v48 = sub_1C906446C();
    if (os_log_type_enabled(v18, v48))
    {
      v44 = v18;
      v46 = a2;
      v47 = a3;
      v19 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v19 = 136315906;
      v45 = v16;
      if (v16)
      {
        v23 = 28494;
      }

      else
      {
        v23 = 7562585;
      }

      v24 = 0xE300000000000000;
      if (v16)
      {
        v25 = 0xE200000000000000;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      v26 = sub_1C8CACE04(v23, v25, &v50, v20, v21, v22);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v17;
      *(v19 + 22) = 2048;
      v30 = v49;
      *(v19 + 24) = v49;
      *(v19 + 32) = 2080;
      if (v17 < 1)
      {
        v33 = 4271950;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D58, &qword_1C90A7040);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1C906A950;
        v32 = MEMORY[0x1E69E6438];
        *(v31 + 56) = MEMORY[0x1E69E63B0];
        *(v31 + 64) = v32;
        *(v31 + 32) = v30 / v17 * 100.0;
        v33 = sub_1C9063F1C();
        v24 = v34;
      }

      v35 = sub_1C8CACE04(v33, v24, &v50, v27, v28, v29);

      *(v19 + 34) = v35;
      v36 = v44;
      _os_log_impl(&dword_1C8C9B000, v44, v48, "WAL checkpoint completed:\n- Busy: %s\n- Total frames: %ld\n- Checkpointed frames: %ld\n- Efficiency: %s", v19, 0x2Au);
      v37 = v43;
      swift_arrayDestroy();
      MEMORY[0x1CCA833A0](v37, -1, -1);
      MEMORY[0x1CCA833A0](v19, -1, -1);

      result = (*(v7 + 8))(v9, v6);
      a2 = v46;
      a3 = v47;
    }

    else
    {

      result = (*(v7 + 8))(v9, v6);
    }

    v38 = v49;
    if (qword_1EDA63970 != -1)
    {
      result = swift_once();
      v38 = v49;
    }

    if (v17 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v17 >= 0xFFFFFFFF80000000 && v38 >= 0xFFFFFFFF80000000)
    {
      if (v38 <= 0x7FFFFFFF)
      {
        MEMORY[0x1EEE9AC00](result);
        v14 = &v42 - 8;
        *(&v42 - 6) = a2;
        *(&v42 - 5) = a3;
        *(&v42 - 32) = v40;
        *(&v42 - 7) = v17;
        *(&v42 - 24) = 0;
        *(&v42 - 5) = v41;
        *(&v42 - 16) = 0;
        v15 = sub_1C8F150A4;
        return sub_1C8D927FC(v15, v14);
      }

LABEL_31:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1C8F13B84()
{
  v1 = sub_1C9063DEC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1C9063DFC();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    return sub_1C90626EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F13CC0()
{
  v1 = sub_1C9063DEC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1C9063DFC();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D60, &qword_1C90A7048);
    sub_1C90626EC();
    return v9[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8F13E14()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F10, qword_1C9071EA8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = pnCkpt - v1;
  v3 = sub_1C906245C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  *pnCkpt = 0;
  v4 = sub_1C9062F4C();
  result = sqlite3_wal_checkpoint_v2(v4, 0, 3, &pnCkpt[1], pnCkpt);
  if (result)
  {
    sub_1C906244C();
LABEL_6:
    v6 = sub_1C9062B9C();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
    sub_1C90626DC();
    sub_1C8F14FB8(&qword_1EC312ED8, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
    swift_allocError();
    sub_1C906265C();
    return swift_willThrow();
  }

  if (pnCkpt[1] >= 1 && !pnCkpt[0])
  {
    sub_1C906242C();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C8F13FF0@<X0>(void *a2@<X8>)
{
  v32 = a2;
  v29 = sub_1C9063D3C();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C9062B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9062DFC();
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_1C9062B8C();
  v10 = sub_1C9062DEC();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
    sub_1C8D14208(v30, &qword_1EC319D68, &unk_1C90C6370);
    sub_1C906371C();
    v11 = v2;
    v12 = sub_1C9063D1C();
    v13 = sub_1C906444C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1C8C9B000, v12, v13, "Could not fetch WAL checkpoint info: %@", v14, 0xCu);
      sub_1C8D14208(v15, &qword_1EC312EC8, &qword_1C9071EA0);
      MEMORY[0x1CCA833A0](v15, -1, -1);
      MEMORY[0x1CCA833A0](v14, -1, -1);
    }

    else
    {
    }

    result = (*(v3 + 8))(v5, v29);
    v27 = v32;
    v32[2] = 0;
  }

  else
  {
    v18 = v10;
    (*(v7 + 8))(v9, v6);
    result = sub_1C8D14208(v30, &qword_1EC319D68, &unk_1C90C6370);
    if (v18)
    {
      sub_1C8E2B088();
      v21 = v20;
      sub_1C8E2B088();
      v23 = v22;
      sub_1C8E2B088();
      v25 = v24;

      v26 = v32;
      *v32 = v21 != 0;
      v26[1] = v23;
      v26[2] = v25;
      return result;
    }

    v27 = v32;
    v32[2] = 0;
  }

  *v27 = 2;
  v27[1] = 0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.vacuum()()
{
  v1 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v42 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v45 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - v11;
  v13 = sub_1C9063DEC();
  OUTLINED_FUNCTION_11();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v0;
  v20 = *(v0 + 24);
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8018], v13, v17);
  v21 = v20;
  v22 = sub_1C9063DFC();
  (*(v15 + 8))(v19, v13);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    OUTLINED_FUNCTION_1_66();
    v27 = swift_once();
    goto LABEL_5;
  }

  v41[1] = v21;
  sub_1C906371C();
  v23 = sub_1C9063D1C();
  v24 = sub_1C906446C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C8C9B000, v23, v24, "Maintaining database load factor", v25, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
  }

  v42 = *(v42 + 8);
  (v42)(v12, v46);
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  v22 = sub_1C906200C();
  v19 = v26;
  v27 = (*(v3 + 8))(v6, v1);
  if (qword_1EDA63970 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_28_21();
  sub_1C8D927FC(sub_1C8F14F90, v28);
  v29 = v44;
  v30 = sub_1C90644BC();
  if (v29)
  {
    sub_1C906371C();
    v31 = v29;
    v32 = sub_1C9063D1C();
    v33 = sub_1C906444C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1C8C9B000, v32, v33, "Failed to maintain database load factor: %@", v34, 0xCu);
      sub_1C8D14208(v35, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v38 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v38);
    }

    v39 = (v42)(v45, v46);
    MEMORY[0x1EEE9AC00](v39);
    v41[-4] = v22;
    v41[-3] = v19;
    v41[-2] = v29;
    sub_1C8D927FC(sub_1C8D93E84, &v41[-6]);

    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v30);
    OUTLINED_FUNCTION_28_21();
    sub_1C8D927FC(sub_1C8D93D90, v40);
  }
}

uint64_t sub_1C8F14958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F10, qword_1C9071EA8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C906245C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C9062F4C();
  result = _sqlite3_maintain_load_factor();
  if (result)
  {
    sub_1C906244C();
    v5 = sub_1C9062B9C();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
    sub_1C90626DC();
    sub_1C8F14FB8(&qword_1EC312ED8, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
    swift_allocError();
    sub_1C906265C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C8F14AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C906488C();
  *(v6 + 64) = v12;
  OUTLINED_FUNCTION_46(v12);
  *(v6 + 72) = v13;
  *(v6 + 80) = OUTLINED_FUNCTION_38_1();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C8F14BC0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C906489C();
  v5 = sub_1C8F14FB8(&qword_1EC319D70, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  OUTLINED_FUNCTION_145();
  sub_1C9064CCC();
  sub_1C8F14FB8(&qword_1EC319D78, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C90648AC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C8F14D4C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C8F14D4C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v8();
  }
}

uint64_t sub_1C8F14F00()
{

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t sub_1C8F14FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7WALInfoVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s7WALInfoVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_25()
{
}

uint64_t OUTLINED_FUNCTION_29_21()
{

  return swift_slowAlloc();
}

void SystemToolProtocol.init(protobuf:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v293 = a2;
  v3 = type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v292 = v5;
  v6 = OUTLINED_FUNCTION_111();
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(v6);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v289 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v287 = &v283 - v12;
  v13 = OUTLINED_FUNCTION_111();
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(v13);
  v15 = OUTLINED_FUNCTION_9(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v288 = v16;
  v17 = OUTLINED_FUNCTION_111();
  v18 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(v17);
  v19 = OUTLINED_FUNCTION_9(v18);
  MEMORY[0x1EEE9AC00](v19);
  v290 = &v283 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v291 = &v283 - v22;
  v23 = OUTLINED_FUNCTION_111();
  v24 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(v23);
  v25 = OUTLINED_FUNCTION_9(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_0();
  v286 = v26;
  v27 = OUTLINED_FUNCTION_111();
  v28 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(v27);
  v29 = OUTLINED_FUNCTION_9(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_0();
  v285 = v30;
  v31 = OUTLINED_FUNCTION_111();
  v32 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(v31);
  v33 = OUTLINED_FUNCTION_9(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_0();
  v284 = v34;
  v35 = OUTLINED_FUNCTION_111();
  v36 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(v35);
  v37 = OUTLINED_FUNCTION_9(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_7_0();
  v283 = v38;
  v39 = OUTLINED_FUNCTION_111();
  v40 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(v39);
  v41 = OUTLINED_FUNCTION_9(v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v283 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v45 = OUTLINED_FUNCTION_9(v44);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v283 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  OUTLINED_FUNCTION_9(v48);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v283 - v50;
  v52 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v53);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v283 - v55;
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
  {
    sub_1C8F16378(v51);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D80, &qword_1C90A7070);
    v58 = sub_1C8D4F674(&qword_1EC319D88, &qword_1EC319D80, &qword_1C90A7070);
    OUTLINED_FUNCTION_213(v58);
    *v59 = v52;
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E08B0], v57);
    swift_willThrow();
    OUTLINED_FUNCTION_1_67();
    v61 = a1;
LABEL_3:
    sub_1C8F16490(v61, v60);
  }

  else
  {
    sub_1C8F16438();
    sub_1C8F163E0();
    v62 = a1;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v172);
        v173 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v173, v174);
        OUTLINED_FUNCTION_45_0();
        sub_1C8F16438();
        v69 = *v43;

        sub_1C8F16490(v43, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
        v68 = 0;
        v70 = v69 & 0xFFFFFFFFFFFFFF00;
        v72 = 5;
        goto LABEL_52;
      case 2u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v147);
        v148 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v148, v149);
        OUTLINED_FUNCTION_45_0();
        v52 = v283;
        sub_1C8F16438();
        v69 = *v52;

        sub_1C8F16490(v52, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
        v68 = 0;
        v70 = v69 & 0xFFFFFFFFFFFFFF00;
        v72 = 6;
        goto LABEL_52;
      case 3u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v156);
        v157 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v157, v158);
        OUTLINED_FUNCTION_45_0();
        v159 = v284;
        sub_1C8F16438();
        v69 = *v159;
        v52 = v159[1];

        sub_1C8F16490(v159, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
        OUTLINED_FUNCTION_12_33();
        v72 = 7;
        goto LABEL_52;
      case 4u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v127);
        v128 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v128, v129);
        OUTLINED_FUNCTION_45_0();
        v130 = v285;
        sub_1C8F16438();
        v69 = *v130;
        v52 = v130[1];
        v56 = v130[2];
        v131 = v130[3];

        sub_1C8F16490(v130, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
        OUTLINED_FUNCTION_12_33();
        *&v71 = v131;
        v72 = 8;
        goto LABEL_52;
      case 5u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v202);
        v203 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v203, v204);
        OUTLINED_FUNCTION_45_0();
        v205 = v286;
        sub_1C8F16438();
        v69 = *v205;
        v52 = v205[1];

        sub_1C8F16490(v205, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
        OUTLINED_FUNCTION_12_33();
        v72 = 2;
        goto LABEL_52;
      case 6u:
        OUTLINED_FUNCTION_45_0();
        v209 = v291;
        sub_1C8F16438();
        v210 = v290;
        sub_1C8F163E0();
        if (*(v210 + 5))
        {
          v211 = OUTLINED_FUNCTION_94();
          v213 = __swift_instantiateConcreteTypeFromMangledNameV2(v211, v212);
          sub_1C8D4F674(&qword_1EC319D98, &qword_1EC319D90, &qword_1C90A7078);
          swift_allocError();
          *v214 = &type metadata for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind;
          (*(*(v213 - 8) + 104))(v214, *MEMORY[0x1E69E08B0], v213);
          swift_willThrow();
          OUTLINED_FUNCTION_1_67();
          sub_1C8F16490(v62, v215);
          OUTLINED_FUNCTION_8_42();
          sub_1C8F16490(v210, v216);
          sub_1C8F16490(v209, &qword_1EC319D90);
          v61 = OUTLINED_FUNCTION_0_71();
          goto LABEL_3;
        }

        v278 = *v210;
        v69 = v278 | (*(v210 + 4) << 32);
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(v62, v279);
        OUTLINED_FUNCTION_8_42();
        sub_1C8F16490(v210, v280);
        sub_1C8F16490(v209, v52);
        v281 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v281, v282);
        if ((v69 & 0x100000000) != 0)
        {
          v168 = v293;
          v68 = 0;
          if (v278)
          {
            v70 = 0;
            LOBYTE(v69) = 1;
            v72 = 9;
            LOBYTE(v52) = 1;
          }

          else
          {
            LOBYTE(v69) = 0;
            v70 = 0;
            LOBYTE(v52) = 1;
            v72 = 9;
          }
        }

        else
        {
          LOBYTE(v52) = 0;
          v68 = 0;
          v66 = v278 & 0xFFFFFF00;
          v70 = v66;
          v72 = 9;
LABEL_52:
          v168 = v293;
        }

LABEL_53:
        *v168 = v70 | v69;
        *(v168 + 8) = v68 | v52;
        *(v168 + 16) = v56;
        *(v168 + 24) = v71;
        *(v168 + 40) = v66;
        *(v168 + 48) = v67;
        *(v168 + 56) = v72;
        break;
      case 7u:
        OUTLINED_FUNCTION_45_0();
        v160 = v288;
        sub_1C8F16438();
        v161 = sub_1C8D63FCC();
        sub_1C8D60A64(v161, v162, v163);
        v164 = v294;
        sub_1C906351C();
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v165);
        sub_1C8F16490(v160, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
        v166 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v166, v167);
        if (v164)
        {
          return;
        }

        LOBYTE(v69) = v295;
        LOBYTE(v52) = v296;
        v56 = v297;
        OUTLINED_FUNCTION_12_33();
        v168 = v293;
        goto LABEL_53;
      case 8u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v217);
        v218 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v218, v219);
        OUTLINED_FUNCTION_45_0();
        v220 = v289;
        sub_1C8F16438();
        v69 = *v220;
        v52 = v220[1];

        sub_1C8F16490(v220, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
        OUTLINED_FUNCTION_12_33();
        v72 = 1;
        goto LABEL_52;
      case 9u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v144);
        v145 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v145, v146);
        OUTLINED_FUNCTION_45_0();
        v52 = v292;
        sub_1C8F16438();
        v69 = *v52;

        sub_1C8F16490(v52, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);
        v68 = 0;
        v70 = v69 & 0xFFFFFFFFFFFFFF00;
        v72 = 3;
        goto LABEL_52;
      case 0xAu:
      case 0x3Au:
      case 0x3Bu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v63);
        v64 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v64, v65);
        v56 = 0;
        v66 = 0;
        v67 = 0;
        LOBYTE(v52) = 0;
        v68 = 0;
        LOBYTE(v69) = 0;
        v70 = 0;
        v71 = 0uLL;
        v72 = 10;
        goto LABEL_52;
      case 0xBu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v199);
        v200 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v200, v201);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 3;
        goto LABEL_52;
      case 0xCu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v109);
        v110 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v110, v111);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 4;
        goto LABEL_52;
      case 0xDu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v150);
        v151 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v151, v152);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 5;
        goto LABEL_52;
      case 0xEu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v103);
        v104 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v104, v105);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 6;
        goto LABEL_52;
      case 0xFu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v178);
        v179 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v179, v180);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 7;
        goto LABEL_52;
      case 0x10u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v206);
        v207 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v207, v208);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 8;
        goto LABEL_52;
      case 0x11u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v236);
        v237 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v237, v238);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 11;
        goto LABEL_52;
      case 0x12u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v184);
        v185 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v185, v186);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 12;
        goto LABEL_52;
      case 0x13u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v196);
        v197 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v197, v198);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 13;
        goto LABEL_52;
      case 0x14u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v230);
        v231 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v231, v232);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 14;
        goto LABEL_52;
      case 0x15u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v248);
        v249 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v249, v250);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 15;
        goto LABEL_52;
      case 0x16u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v141);
        v142 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v142, v143);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 16;
        goto LABEL_52;
      case 0x17u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v138);
        v139 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v139, v140);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 17;
        goto LABEL_52;
      case 0x18u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v260);
        v261 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v261, v262);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 18;
        goto LABEL_52;
      case 0x19u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v97);
        v98 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v98, v99);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 19;
        goto LABEL_52;
      case 0x1Au:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v251);
        v252 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v252, v253);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 20;
        goto LABEL_52;
      case 0x1Bu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v254);
        v255 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v255, v256);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 21;
        goto LABEL_52;
      case 0x1Cu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v221);
        v222 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v222, v223);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 22;
        goto LABEL_52;
      case 0x1Du:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v175);
        v176 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v176, v177);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 23;
        goto LABEL_52;
      case 0x1Eu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v224);
        v225 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v225, v226);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 24;
        goto LABEL_52;
      case 0x1Fu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v112);
        v113 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v113, v114);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 25;
        goto LABEL_52;
      case 0x20u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v100);
        v101 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v101, v102);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 26;
        goto LABEL_52;
      case 0x21u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v91);
        v92 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v92, v93);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 27;
        goto LABEL_52;
      case 0x22u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v94);
        v95 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v95, v96);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 28;
        goto LABEL_52;
      case 0x23u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v79);
        v80 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v80, v81);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 29;
        goto LABEL_52;
      case 0x24u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v257);
        v258 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v258, v259);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 30;
        goto LABEL_52;
      case 0x25u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v233);
        v234 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v234, v235);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 31;
        goto LABEL_52;
      case 0x26u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v124);
        v125 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v125, v126);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 32;
        goto LABEL_52;
      case 0x27u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v181);
        v182 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v182, v183);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 33;
        goto LABEL_52;
      case 0x28u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v242);
        v243 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v243, v244);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 34;
        goto LABEL_52;
      case 0x29u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v76);
        v77 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v77, v78);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 35;
        goto LABEL_52;
      case 0x2Au:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v106);
        v107 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v107, v108);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 36;
        goto LABEL_52;
      case 0x2Bu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v227);
        v228 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v228, v229);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 37;
        goto LABEL_52;
      case 0x2Cu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v272);
        v273 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v273, v274);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 38;
        goto LABEL_52;
      case 0x2Du:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v85);
        v86 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v86, v87);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 39;
        goto LABEL_52;
      case 0x2Eu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v115);
        v116 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v116, v117);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 41;
        goto LABEL_52;
      case 0x2Fu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v121);
        v122 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v122, v123);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 42;
        goto LABEL_52;
      case 0x30u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v73);
        v74 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v74, v75);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 43;
        goto LABEL_52;
      case 0x31u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v275);
        v276 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v276, v277);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 44;
        goto LABEL_52;
      case 0x32u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v269);
        v270 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v270, v271);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 45;
        goto LABEL_52;
      case 0x33u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v82);
        v83 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v83, v84);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 46;
        goto LABEL_52;
      case 0x34u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v263);
        v264 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v264, v265);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 47;
        goto LABEL_52;
      case 0x35u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v266);
        v267 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v267, v268);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 48;
        goto LABEL_52;
      case 0x36u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v88);
        v89 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v89, v90);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 49;
        goto LABEL_52;
      case 0x37u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v239);
        v240 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v240, v241);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 50;
        goto LABEL_52;
      case 0x38u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v118);
        v119 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v119, v120);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 52;
        goto LABEL_52;
      case 0x39u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v245);
        v246 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v246, v247);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 53;
        goto LABEL_52;
      case 0x3Cu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v132);
        v133 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v133, v134);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 1;
        goto LABEL_52;
      case 0x3Du:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v187);
        v188 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v188, v189);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 2;
        goto LABEL_52;
      case 0x3Eu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v193);
        v194 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v194, v195);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 9;
        goto LABEL_52;
      case 0x3Fu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v153);
        v154 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v154, v155);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 40;
        goto LABEL_52;
      case 0x40u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v135);
        v136 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v136, v137);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 10;
        goto LABEL_52;
      case 0x41u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v190);
        v191 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v191, v192);
        *&v71 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v69) = 51;
        goto LABEL_52;
      default:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v169);
        v170 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v170, v171);
        OUTLINED_FUNCTION_45_0();
        sub_1C8F16438();
        LOBYTE(v69) = *v47;
        sub_1C8F16490(v47, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
        v68 = 0;
        v70 = 0;
        v72 = 4;
        goto LABEL_52;
    }
  }
}

uint64_t IntentSideEffect.init(protobuf:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 5))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D90, &qword_1C90A7078);
    v4 = sub_1C8D4F674(&qword_1EC319D98, &qword_1EC319D90, &qword_1C90A7078);
    OUTLINED_FUNCTION_213(v4);
    *v5 = &type metadata for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind;
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E08B0], v3);
    swift_willThrow();
    return OUTLINED_FUNCTION_10_39();
  }

  else
  {
    v7 = *(a1 + 4);
    v8 = *a1;
    result = OUTLINED_FUNCTION_10_39();
    v9 = v8;
    if (((v8 | (v7 << 32)) & 0x100000000) != 0)
    {
      v9 = v8 != 0;
    }

    *a2 = v9;
    *(a2 + 8) = v7 & 1;
  }

  return result;
}

uint64_t sub_1C8F16378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8F163E0()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8F16438()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8F16490(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SystemToolProtocol.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v45[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v45 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v45 - v8);
  type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v46 = v12;
  v13 = *v1;
  v14 = *(v1 + 8);
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = *(v1 + 48);
  switch(*(v1 + 56))
  {
    case 1:
      v30 = OUTLINED_FUNCTION_4_48();
      type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(v30);

      OUTLINED_FUNCTION_14_35(v31);
      *v18 = v1;
      *(v18 + 8) = v14;
      goto LABEL_17;
    case 2:
      v24 = OUTLINED_FUNCTION_4_48();
      type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(v24);

      OUTLINED_FUNCTION_14_35(v25);
      *v18 = v1;
      *(v18 + 8) = v14;
      goto LABEL_17;
    case 3:
      v26 = OUTLINED_FUNCTION_4_48();
      type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(v26);

      OUTLINED_FUNCTION_14_35(v27);
      *v18 = v1;
      goto LABEL_17;
    case 4:
      v22 = OUTLINED_FUNCTION_4_48();
      type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(v22);
      v18 = v46;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v18 = v1 & 1;
      goto LABEL_17;
    case 5:
      v32 = OUTLINED_FUNCTION_4_48();
      type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(v32);

      OUTLINED_FUNCTION_14_35(v33);
      *v18 = v1;
      goto LABEL_17;
    case 6:
      v34 = OUTLINED_FUNCTION_4_48();
      type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(v34);

      OUTLINED_FUNCTION_14_35(v35);
      *v18 = v1;
      goto LABEL_17;
    case 7:
      v28 = OUTLINED_FUNCTION_4_48();
      type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(v28);

      OUTLINED_FUNCTION_14_35(v29);
      *v18 = v1;
      *(v18 + 8) = v14;
      goto LABEL_17;
    case 8:
      v38 = *v1;
      type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);

      OUTLINED_FUNCTION_14_35(v39);
      *v18 = v38;
      *(v18 + 8) = v14;
      *(v18 + 16) = v16;
      *(v18 + 24) = v15;
      goto LABEL_17;
    case 9:
      if ((v14 & 1) == 0)
      {
        if (v13 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v18 = v46;
          if (v13 <= 0x7FFFFFFF)
          {
            v23 = *v1;
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_22;
      }

      LODWORD(v23) = v13 != 0;
      v18 = v46;
LABEL_21:
      v42 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
      MEMORY[0x1EEE9AC00](v42);
      LODWORD(v45[-2]) = v23;
      BYTE4(v45[-2]) = v14 & 1;
      OUTLINED_FUNCTION_7_44();
      sub_1C8F17054(v43, v44, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      sub_1C9063ACC();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      v40 = type metadata accessor for ToolKitProtoSystemToolProtocol(0);
      MEMORY[0x1EEE9AC00](v40);
      v45[-2] = v18;
      sub_1C8F17054(&qword_1EDA63CE8, type metadata accessor for ToolKitProtoSystemToolProtocol, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol);
      sub_1C9063ACC();
      return sub_1C8F16490(v18, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    case 0xA:
      v36 = v17 | v18 | v19;
      if (!(v16 | v14 | v13 | v15 | v36) || ((v37 = v16 | v14 | v15 | v36, v18 = v46, v13 != 1) || v37) && (v13 != 2 || v37) && (v13 != 3 || v37) && (v13 != 4 || v37) && (v13 != 5 || v37) && (v13 != 6 || v37) && (v13 != 7 || v37) && (v13 != 8 || v37) && (v13 != 9 || v37) && (v13 != 10 || v37))
      {
LABEL_22:
        v18 = v46;
      }

      goto LABEL_17;
    default:
      v45[0] = *v1;
      v45[1] = v11;
      v20 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v5 = v16;
      v5[1] = v15;
      v5[2] = v17;
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v20);
      v21 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
      __swift_storeEnumTagSinglePayload(v9 + *(v21 + 24), 1, 1, v20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v9 = v45[0];
      v9[1] = v14;
      sub_1C8D7300C();
      v9[2] = v18;
      v9[3] = v19;
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v21);
      v18 = v46;
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v21);
      type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      goto LABEL_17;
  }
}

void IntentSideEffect.protobuf(useCase:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    goto LABEL_4;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
LABEL_4:
    v2 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_7_44();
    sub_1C8F17054(v3, v4, &protocol conformance descriptor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_1C9063ACC();
    return;
  }

  __break(1u);
}

uint64_t sub_1C8F16F7C(uint64_t a1)
{
  sub_1C8F16378(a1);
  sub_1C8F163E0();
  v2 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_1C8F17054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8F1709C(uint64_t result)
{
  v2 = *(v1 + 16);
  *(result + 4) = *(v1 + 20);
  *result = v2;
  *(result + 5) = 0;
  return result;
}

unint64_t sub_1C8F170C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319DA0;
  if (!qword_1EC319DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DA0);
  }

  return result;
}

uint64_t SearchableItemPredicate.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = MEMORY[0x1CCA82A80]();
  v7 = sub_1C8D00800(v4, v5);
  if (v2)
  {
    objc_autoreleasePoolPop(v6);
    return OUTLINED_FUNCTION_0_72();
  }

  else
  {
    v9 = v7;
    objc_autoreleasePoolPop(v6);
    result = OUTLINED_FUNCTION_0_72();
    *a2 = v9;
  }

  return result;
}

void SearchableItemPredicate.protobuf(useCase:)(uint64_t *a1@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = MEMORY[0x1CCA82A80]();
  v11[0] = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v11];
  v6 = v11[0];
  if (v5)
  {
    v7 = sub_1C9061F3C();
    v9 = v8;

    objc_autoreleasePoolPop(v4);
    type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a1 = v7;
    a1[1] = v9;
  }

  else
  {
    v10 = v6;
    sub_1C9061D7C();

    swift_willThrow();
    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_1C8F17374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C8F173D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319DA8;
  if (!qword_1EC319DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DA8);
  }

  return result;
}

unint64_t sub_1C8F17430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA607F8;
  if (!qword_1EDA607F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA607F8);
  }

  return result;
}

void sub_1C8F174C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v34;
    v6 = sub_1C8D3F274();
    v7 = 0;
    v8 = v2 + 56;
    v27 = v2 + 64;
    v28 = v1;
    v29 = v2 + 56;
    v30 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_25;
        }

        v32 = v5;
        v31 = v4;
        v33 = *(*(v2 + 48) + 8 * v6);

        v14 = String.init(typeIdentifier:)(&v33, v10, v11, v12, v13);
        v16 = v15;
        v34 = v3;
        v17 = *(v3 + 16);
        if (v17 >= *(v3 + 24) >> 1)
        {
          sub_1C8CA6480();
          v3 = v34;
        }

        *(v3 + 16) = v17 + 1;
        v18 = v3 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v16;
        if (v32)
        {
          goto LABEL_29;
        }

        v8 = v29;
        v2 = v30;
        v19 = 1 << *(v30 + 32);
        if (v6 >= v19)
        {
          goto LABEL_26;
        }

        v20 = *(v29 + 8 * v9);
        if ((v20 & (1 << v6)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v30 + 36) != v31)
        {
          goto LABEL_28;
        }

        v21 = v20 & (-2 << (v6 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v9 << 6;
          v23 = v9 + 1;
          v24 = (v27 + 8 * v9);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1C8CAF698(v6, v31, 0);
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v6, v31, 0);
        }

LABEL_19:
        if (++v7 == v28)
        {
          return;
        }

        v5 = 0;
        v4 = *(v30 + 36);
        v6 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C8F1770C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v30;
    v6 = sub_1C8D3F274();
    v7 = 0;
    v29 = v2 + 56;
    v24 = v2 + 64;
    v25 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v28 = v5;
        v26 = v7;
        v27 = v4;
        SystemToolProtocol.Identifier.rawValue.getter();
        v10 = v9;
        v12 = v11;
        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1C8CA6480();
        }

        *(v3 + 16) = v13 + 1;
        v14 = v3 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        if (v28)
        {
          goto LABEL_30;
        }

        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v6 >= v15)
        {
          goto LABEL_27;
        }

        v16 = *(v29 + 8 * v8);
        if ((v16 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_29;
        }

        v17 = v16 & (-2 << (v6 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v3;
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (v24 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1C8CAF698(v6, v27, 0);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v6, v27, 0);
LABEL_19:
          v3 = v18;
        }

        v7 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v25 + 36);
        v6 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t static ToolDefinitionQuery.from(device:)@<X0>(uint64_t *a1@<X0>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  if (qword_1EDA69218 != -1)
  {
    OUTLINED_FUNCTION_14_36(&qword_1EDA69218);
  }

  v9 = qword_1EDA69220;
  v10 = qword_1EDA69200;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_13_28(&qword_1EDA69200);
  }

  v11 = qword_1EDA69208;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v7;
  v13 = vdupq_n_s64(0xA000000000000000);
  *a6 = v13;
  *(a6 + 16) = 0xA000000000000000;
  *(a6 + 24) = v9;
  *(a6 + 32) = v11;
  *(a6 + 40) = v13;
  v14 = MEMORY[0x1E69E7CD0];
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0xA000000000000000;
  *(a6 + 56) = v12;
  *(a6 + 64) = v14;
}

uint64_t ToolDefinitionQuery.rowID.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ToolDefinitionQuery.toolID.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.type.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.input.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.output.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.sourceContainer.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.attributionContainer.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.sourceDevice.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 56) = v2;
  return result;
}

uint64_t ToolDefinitionQuery.systemProtocol.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  *a5 = v6;
  *(a5 + 8) = v7;
  return j__swift_bridgeObjectRetain_0(v6, v7, a1, a2, a3, a4);
}

uint64_t ToolDefinitionQuery.systemProtocol.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = j__swift_bridgeObjectRelease_0(*(v1 + 64));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t ToolDefinitionQuery.assistantVersion.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C8E05190(v2, v3);
}

uint64_t ToolDefinitionQuery.assistantVersion.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C8CC7E94(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

uint64_t ToolDefinitionQuery.cascadeSharedIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 104) = v2;
  return result;
}

uint64_t static ToolDefinitionQuery.all()@<X0>(uint64_t a5@<X8>)
{
  if (qword_1EDA69218 != -1)
  {
    OUTLINED_FUNCTION_14_36(&qword_1EDA69218);
  }

  v6 = qword_1EDA69220;
  v7 = qword_1EDA69200;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_13_28(&qword_1EDA69200);
  }

  v8 = qword_1EDA69208;
  v9 = vdupq_n_s64(0xA000000000000000);
  *a5 = v9;
  *(a5 + 16) = 0xA000000000000000;
  *(a5 + 24) = v6;
  *(a5 + 32) = v8;
  *(a5 + 40) = v9;
  v10 = MEMORY[0x1E69E7CD0];
  *(a5 + 56) = 0xA000000000000000;
  *(a5 + 64) = v10;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0xA000000000000000;
}

uint64_t static ToolDefinitionQuery.local()@<X0>(uint64_t a5@<X8>)
{
  v6[0] = 0;
  v6[1] = 0;
  return static ToolDefinitionQuery.from(device:)(v6, a5);
}

uint64_t ToolDefinitionQuery.where(_:_:)@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(a3, v3, 0x70uLL);
  v8[14] = v5;
  v8[15] = v6;
  sub_1C8EE2C10(__dst, v8);
  sub_1C8E05190(v5, v6);
  return swift_setAtWritableKeyPath();
}

void ToolDefinitionQuery.shouldFilterOut(model:)(uint64_t a1)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 88);
    v4 = *(a1 + *(type metadata accessor for ToolDefinition(0) + 92));
    v5 = *(v4 + 16);

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = v4 + (v6 << 6);
    while (v5 != v6)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      ++v6;
      v9 = (v8 + 64);
      v10 = *(v8 + 88);
      v8 += 64;
      if (!v10)
      {
        v11 = *(v9 - 2);
        v12 = *(v9 - 1);
        v23 = *v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C8D01378();
          v7 = v15;
        }

        v13 = v7[2];
        if (v13 >= v7[3] >> 1)
        {
          sub_1C8D01378();
          v7 = v16;
        }

        v7[2] = v13 + 1;
        v14 = &v7[3 * v13];
        v14[4] = v11;
        v14[5] = v12;
        v14[6] = v23;
        goto LABEL_3;
      }
    }

    v17 = v7 + 6;
    v18 = -v7[2];
    v19 = -1;
    do
    {
      if (v18 + v19 == -1)
      {
        break;
      }

      if (++v19 >= v7[2])
      {
        goto LABEL_19;
      }

      v20 = v17 + 3;
      v21 = *v17;
      v24 = *(v17 - 1);
      v25 = v21;
      v22 = v2(&v24);
      v17 = v20;
    }

    while ((v22 & 1) != 0);
    sub_1C8CC7E94(v2, v3);
  }
}

uint64_t ToolDefinitionQuery.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v23 = *(v0 + 72);
  v24 = *(v0 + 96);
  v25 = *(v0 + 104);
  sub_1C906478C();
  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  sub_1C8DFFB9C(v1);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](0x3A44496C6F6F7420, 0xE900000000000020);
  sub_1C8DFFCB8(v2);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](0x203A6570797420, 0xE700000000000000);
  sub_1C8DFFDDC(v3);
  OUTLINED_FUNCTION_23_26();

  v7 = MEMORY[0x1CCA81A90](0x203A7475706E6920, 0xE800000000000000);
  sub_1C8D3AEB8(v7, v8, v9);
  v10 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v10);

  OUTLINED_FUNCTION_19_27();
  MEMORY[0x1CCA81A90](0x203A666F28796E61, 0xE800000000000000);

  MEMORY[0x1CCA81A90](0x3A74757074756F20, 0xE900000000000020);
  v11 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v11);

  OUTLINED_FUNCTION_19_27();
  MEMORY[0x1CCA81A90](0x203A666F28796E61, 0xE800000000000000);

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  sub_1C8DFFEF4(v4);
  OUTLINED_FUNCTION_23_26();

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  sub_1C8DFFEF4(v6);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](0x44656372756F7320, 0xEF203A6563697665);
  sub_1C8E00098(v5);
  OUTLINED_FUNCTION_23_26();

  OUTLINED_FUNCTION_21_23();
  v12 = MEMORY[0x1CCA81A90](0xD000000000000011);
  if (v23 == 1)
  {
    v15 = 678194273;
  }

  else
  {
    v15 = 679046753;
  }

  v26 = v15;
  sub_1C8D3EC70(v12, v13, v14);
  v16 = sub_1C906433C();
  MEMORY[0x1CCA81A90](v16);

  OUTLINED_FUNCTION_19_27();
  MEMORY[0x1CCA81A90](v26, 0xE400000000000000);

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316168, &qword_1C9084380);
  sub_1C906462C();
  OUTLINED_FUNCTION_23_26();

  v17 = MEMORY[0x1CCA81A90](0x6C69626973697620, 0xED0000203A797469);
  if (v24)
  {
    v20 = ToolVisibilityFlag.description.getter(v17, v18, v19);
    MEMORY[0x1CCA81A90](v20);

    OUTLINED_FUNCTION_19_27();
    v21 = 2650985;
  }

  else
  {
    v21 = 7958113;
  }

  MEMORY[0x1CCA81A90](v21, 0xE300000000000000);

  OUTLINED_FUNCTION_21_23();
  MEMORY[0x1CCA81A90]();
  sub_1C8DFFCB8(v25);
  OUTLINED_FUNCTION_23_26();

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8F1861C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C8D3AEB8(a1, a2, a3);
  v3 = sub_1C906435C();
  MEMORY[0x1CCA81A90](v3);

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 0x203A666F28796E61;
}

uint64_t SystemToolProtocolFilter.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 8) == 1)
  {
    v4 = 678194273;
  }

  else
  {
    v4 = 679046753;
  }

  v7 = v4;
  sub_1C8D3EC70(a1, a2, a3);
  v5 = sub_1C906433C();
  MEMORY[0x1CCA81A90](v5);

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return v7;
}

uint64_t ToolVisibilityFilter.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3)
  {
    return 7958113;
  }

  v4 = ToolVisibilityFlag.description.getter(a1, 0xE300000000000000, a3);
  MEMORY[0x1CCA81A90](v4);

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 2650985;
}

uint64_t sub_1C8F187B4(const void *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  memcpy(__dst, a1, sizeof(__dst));
  (*(v9 + 16))(v4, a3, v7);
  v11 = sub_1C902E244();
  (*(v9 + 8))(a3, v7);
  return v11;
}

void *sub_1C8F188EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FetchedTool(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  sub_1C8F21500(a1, v8);
  v11 = a2;
  return sub_1C90571A8(v8, &v11, a3);
}

void sub_1C8F18998()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = v0 + *(*v0 + 136);
  memcpy(v21, v10, sizeof(v21));
  v11 = swift_allocObject();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = v11;
    *(v11 + 16) = v2;
    memcpy(v18, (v10 + 8), sizeof(v18));
    sub_1C8EE2C10(v21, &v19);

    v17 = v12;
    v13 = *v0;
    v14 = v0 + *(*v0 + 144);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    v19 = v15;
    v20 = v14;
    (*(v5 + 16))(v9, v0 + *(v13 + 152), v3);
    v16 = *(v0 + *(*v0 + 160));
    type metadata accessor for ToolDefinitionQueryRequest(0);
    swift_allocObject();
    sub_1C8F187B4(&v17, &v19, v9, &v16);
    OUTLINED_FUNCTION_163();
  }
}

void sub_1C8F18B58(uint64_t a1)
{
  v3 = MEMORY[0x1CCA82A80]();
  sub_1C8F18BC4(v1, a1, &v4);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1C8F18BC4(uint64_t *a1, uint64_t a2, void *a3)
{
  v403 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313200, &qword_1C906B098);
  v367 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v366 = &v295 - v6;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313210, &unk_1C90A7A10);
  v364 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365);
  v363 = &v295 - v7;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313218, &qword_1C906B0A0);
  v361 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v360 = &v295 - v8;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313230, &unk_1C90A6FF0);
  v358 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v356 = &v295 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v357 = &v295 - v11;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313238, &qword_1C906B0B0);
  v354 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355);
  v352 = &v295 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v353 = &v295 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313240, &unk_1C90A7A20);
  v349 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v345 = &v295 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v347 = &v295 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v348 = &v295 - v20;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313250, &unk_1C90A7000);
  v342 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v340 = &v295 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v341 = &v295 - v23;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313258, &unk_1C90A7A30);
  v393 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v382 = &v295 - v24;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CE0, &qword_1C90A6B68);
  v337 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338);
  v334 = &v295 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v335 = &v295 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v336 = &v295 - v29;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319DD0, &unk_1C90A7A40);
  v391 = *(v380 - 8);
  MEMORY[0x1EEE9AC00](v380);
  v379 = &v295 - v30;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CE8, &qword_1C90A6B70);
  v328 = *(v329 - 1);
  MEMORY[0x1EEE9AC00](v329);
  v326 = &v295 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v327 = &v295 - v33;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D00, &unk_1C90A7A50);
  v324 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325);
  v323 = &v295 - v34;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C0, &unk_1C906B550);
  v320 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321);
  v318 = &v295 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v319 = &v295 - v37;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313260, &unk_1C90A7A60);
  v395 = *(v398 - 8);
  MEMORY[0x1EEE9AC00](v398);
  v322 = &v295 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v373 = &v295 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v375 = &v295 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v330 = &v295 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v332 = &v295 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v333 = &v295 - v48;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313268, &unk_1C909F240);
  v386 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v371 = &v295 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v372 = &v295 - v51;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  v396 = *(v390 - 8);
  MEMORY[0x1EEE9AC00](v390);
  v388 = &v295 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v389 = &v295 - v54;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313270, &unk_1C90A7010);
  v315 = *(v316 - 1);
  MEMORY[0x1EEE9AC00](v316);
  v312 = &v295 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v313 = &v295 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v314 = &v295 - v59;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v394 = *(v402 - 8);
  MEMORY[0x1EEE9AC00](v402);
  v368 = &v295 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v369 = &v295 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v370 = &v295 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v374 = &v295 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v331 = &v295 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v376 = &v295 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v377 = &v295 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v339 = &v295 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v378 = &v295 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v344 = &v295 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v346 = &v295 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v295 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v351 = &v295 - v85;
  v311 = sub_1C90627EC();
  v310 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311);
  v87 = &v295 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  v400 = *(v397 - 8);
  MEMORY[0x1EEE9AC00](v397);
  v384 = &v295 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v385 = &v295 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v387 = &v295 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v392 = &v295 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v399 = &v295 - v96;
  v401 = sub_1C906206C();
  v407 = v97;
  v98 = *a1;
  v99 = *(a1 + *(*a1 + 160)) == 0;
  v100 = 0x79616C70736964;
  if (*(a1 + *(*a1 + 160)))
  {
    v100 = 0x65676175676E616CLL;
  }

  v309 = v100;
  if (v99)
  {
    v101 = 0xE700000000000000;
  }

  else
  {
    v101 = 0xED00006C65646F4DLL;
  }

  v102 = a1 + *(v98 + 136);
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  v350 = v15;
  v381 = v83;
  v103 = sub_1C9062E6C();
  v104 = __swift_project_value_buffer(v103, qword_1EDA6E8A8);
  sub_1C8F20BF4(a2, v104);
  if (qword_1EDA68E08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v103, qword_1EDA6E8D8);
  sub_1C8F20F18();
  v405 = *(v102 + 3);

  v105 = v404;
  sub_1C8F1C2A4(a2);
  if (v105)
  {

    *v403 = v105;
  }

  else
  {
    v404 = v103;

    v405 = *(v102 + 4);

    sub_1C8F1C990(a2);
    v308 = v5;

    sub_1C8D5FBD4(*(v102 + 2), v107, v108, v109, v110, v111, v112, v113, v295, v296, v297, v298);
    if (qword_1EDA68DE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v404, qword_1EDA6E890);
    sub_1C8F20F18();

    v405 = *(v102 + 12);
    sub_1C8F1CDD0();
    v114 = *(v102 + 8);
    v115 = a2;
    v116 = v102[72];
    v405 = v114;
    v406 = v116;
    j__swift_bridgeObjectRetain_0(v114, v116, v117, v118, v119, v120);
    sub_1C8F1D1B4(v115);
    v307 = v115;
    j__swift_bridgeObjectRelease_0(v114);
    if (qword_1EDA68E98 != -1)
    {
      swift_once();
    }

    v121 = v397;
    v122 = __swift_project_value_buffer(v397, qword_1EDA6EA10);
    v123 = *(v400 + 16);
    v123(v399, v122, v121);
    v124 = v392;
    if (qword_1EDA68E70 != -1)
    {
      swift_once();
    }

    v125 = __swift_project_value_buffer(v121, qword_1EDA6E9C8);
    v123(v124, v125, v121);
    sub_1C8D5ED2C(*(v102 + 7), &v405);
    if (qword_1EDA69640 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v404, qword_1EDA6EAF0);
    v126 = v399;
    sub_1C8F20F18();

    sub_1C8D5F064(*(v102 + 5), &v405);
    sub_1C8E294C8();
    sub_1C8F211D8(v126, v87);

    v127 = *(v310 + 8);
    v128 = v311;
    v127(v87, v311);
    sub_1C8D5F064(*(v102 + 6), &v405);
    v300 = v105;
    sub_1C8E294C8();
    sub_1C8F211D8(v124, v87);

    v127(v87, v128);
    v129 = v307;
    sub_1C8F1DE4C();
    (*(v394 + 16))(v368, v129, v402);
    if (qword_1EDA68EA8 != -1)
    {
      swift_once();
    }

    v130 = v312;
    qword_1EDA6E5F0(v401, v407, v309, v101);

    sub_1C8D28184(&qword_1EDA69410, &qword_1EC313270, &unk_1C90A7010, MEMORY[0x1E699FEB0]);
    v131 = v313;
    v132 = v316;
    sub_1C9062A1C();
    v133 = *(v315 + 1);
    v133(v130, v132);
    v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D48, &qword_1C90A7020);
    v134 = swift_allocObject();
    v303 = xmmword_1C906A950;
    *(v134 + 16) = xmmword_1C906A950;
    if (qword_1EDA691E8 != -1)
    {
      swift_once();
    }

    v135 = v404;
    v136 = __swift_project_value_buffer(v404, qword_1EDA6EA48);
    v137 = MEMORY[0x1E69A0048];
    *(v134 + 56) = v135;
    *(v134 + 64) = v137;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v134 + 32));
    v139 = *(v135 - 8);
    v305 = *(v139 + 16);
    v304 = v139 + 16;
    v305(boxed_opaque_existential_1, v136, v135);
    sub_1C8D28184(&qword_1EDA69408, &qword_1EC313270, &unk_1C90A7010, MEMORY[0x1E699FEB8]);
    v140 = v314;
    sub_1C906280C();

    v133(v131, v132);
    v141 = sub_1C8D28184(&qword_1EDA69360, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF78]);
    sub_1C8D28184(&qword_1EDA69418, &qword_1EC313270, &unk_1C90A7010, MEMORY[0x1E699FEA8]);
    v142 = v402;
    v403 = v141;
    v143 = v368;
    sub_1C906296C();
    v133(v140, v132);
    v144 = *(v394 + 8);
    v368 = (v394 + 8);
    v316 = v144;
    (v144)(v143, v142);
    v146 = v389;
    v145 = v390;
    v147 = v396;
    if (qword_1EDA69688 != -1)
    {
      swift_once();
    }

    v148 = v388;
    v149 = v401;
    v311 = unk_1EDA6EBA0;
    v312 = qword_1EDA6EB98;
    qword_1EDA6EB98(v401, v407);
    v310 = sub_1C8D28184(&qword_1EDA6B4E0, &qword_1EC3133C8, &unk_1C909F250, MEMORY[0x1E699FEB0]);
    sub_1C9062A1C();
    v150 = *(v147 + 8);
    v396 = v147 + 8;
    v150(v148, v145);
    v151 = sub_1C8D28184(&qword_1EDA69378, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF50]);
    v152 = sub_1C8D28184(&qword_1EDA6B4E8, &qword_1EC3133C8, &unk_1C909F250, MEMORY[0x1E699FEA8]);
    v153 = v384;
    v154 = v397;
    v314 = v151;
    v309 = v152;
    sub_1C906295C();
    v313 = v150;
    v150(v146, v145);
    if (qword_1EDA69630 != -1)
    {
      swift_once();
    }

    v299 = qword_1EDA6EAE0;
    v298 = *algn_1EDA6EAE8;
    v155 = v371;
    qword_1EDA6EAE0(v149, v407);
    v156 = sub_1C8D28184(&qword_1EDA6B4D0, &qword_1EC313268, &unk_1C909F240, MEMORY[0x1E699FEE0]);
    v157 = v372;
    v158 = v317;
    v297 = v156;
    sub_1C9062B1C();
    v160 = v386 + 8;
    v159 = *(v386 + 8);
    v159(v155, v158);
    v296 = v159;
    v386 = v160;
    sub_1C906294C();
    v159(v157, v158);
    v162 = v400 + 8;
    v161 = *(v400 + 8);
    v161(v153, v154);
    v163 = v161;
    v302 = sub_1C8D28184(&qword_1EDA69388, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF38]);
    v164 = v387;
    v165 = v385;
    sub_1C9062A1C();
    v163(v165, v154);
    v166 = v163;
    v315 = v163;
    v301 = sub_1C8D28184(&qword_1EDA69390, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF30]);
    v167 = v164;
    v168 = v402;
    v169 = v369;
    sub_1C906296C();
    v166(v167, v154);
    (v316)(v169, v168);
    v170 = v388;
    v171 = v401;
    (v312)(v401, v407);
    v172 = v389;
    v173 = v390;
    sub_1C9062A1C();
    v174 = v170;
    v175 = v173;
    v176 = v172;
    v177 = v173;
    v178 = v313;
    (v313)(v174, v175);
    sub_1C906295C();
    v178(v176, v177);
    v179 = v371;
    v299(v171, v407);
    v180 = v372;
    sub_1C9062B1C();
    v181 = v179;
    v182 = v296;
    v296(v181, v158);
    v183 = v385;
    v184 = v384;
    sub_1C906294C();
    v182(v180, v158);
    v185 = v315;
    v315(v184, v154);
    v186 = v387;
    sub_1C9062A1C();
    v185(v183, v154);
    v187 = v402;
    v188 = v370;
    sub_1C906295C();
    v400 = v162;
    v185(v186, v154);
    (v316)(v188, v187);
    v189 = v401;
    if (qword_1EDA68EB0 != -1)
    {
      swift_once();
    }

    v386 = __swift_project_value_buffer(v398, qword_1EDA6E600);
    if (qword_1EDA626F8 != -1)
    {
      swift_once();
    }

    v190 = v318;
    qword_1EDA6E7B0(v189, v407);
    sub_1C8D28184(&qword_1EDA62CB8, &qword_1EC3133C0, &unk_1C906B550, MEMORY[0x1E699FEB0]);
    v191 = v319;
    v192 = v321;
    sub_1C9062A1C();
    v193 = *(v320 + 8);
    v193(v190, v192);
    v194 = sub_1C8D28184(&qword_1EDA62C78, &qword_1EC313260, &unk_1C90A7A60, MEMORY[0x1E699FEF8]);
    sub_1C8D28184(&qword_1EDA62CC0, &qword_1EC3133C0, &unk_1C906B550, MEMORY[0x1E699FEA8]);
    v195 = v322;
    sub_1C906296C();
    v193(v191, v192);
    if (qword_1EDA626D0 != -1)
    {
      swift_once();
    }

    v196 = v325;
    __swift_project_value_buffer(v325, qword_1EDA6E768);
    sub_1C8D28184(&qword_1EDA62BF0, &qword_1EC319D00, &unk_1C90A7A50, MEMORY[0x1E699FFB0]);
    v197 = v323;
    sub_1C9062B1C();
    v198 = v398;
    v385 = v194;
    sub_1C906294C();
    (*(v324 + 8))(v197, v196);
    v200 = v395 + 8;
    v199 = *(v395 + 8);
    v199(v195, v198);
    if (qword_1EDA626E8 != -1)
    {
      swift_once();
    }

    v386 = v199;
    v395 = v200;
    v201 = v329;
    v371 = __swift_project_value_buffer(v329, qword_1EDA6E798);
    if (qword_1EDA668E0 != -1)
    {
      swift_once();
    }

    v202 = v380;
    v203 = __swift_project_value_buffer(v380, qword_1EDA6E830);
    v204 = MEMORY[0x1E699FEE0];
    v205 = sub_1C8D28184(&qword_1EDA693A0, &qword_1EC319DD0, &unk_1C90A7A40, MEMORY[0x1E699FEE0]);
    v206 = v379;
    v372 = v203;
    sub_1C9062B1C();
    sub_1C8D28184(&qword_1EDA62CA0, &qword_1EC319CE8, &qword_1C90A6B70, MEMORY[0x1E699FEF8]);
    v207 = v326;
    v384 = v205;
    sub_1C906294C();
    v208 = *(v391 + 8);
    v391 += 8;
    v369 = v208;
    (v208)(v206, v202);
    sub_1C8D28184(&qword_1EDA62CA8, &qword_1EC319CE8, &qword_1C90A6B70, v204);
    v371 = "assistantSchema.";
    v209 = v327;
    v370 = 0xD000000000000011;
    sub_1C9062B1C();
    v210 = *(v328 + 1);
    v210(v207, v201);
    v211 = v398;
    v212 = v373;
    sub_1C906294C();
    v210(v209, v201);
    (v386)(v212, v211);
    if (qword_1EDA626E0 != -1)
    {
      swift_once();
    }

    v213 = v338;
    __swift_project_value_buffer(v338, qword_1EDA6E780);
    v214 = v387;
    v215 = v397;
    sub_1C9062A1C();
    sub_1C8D28184(&qword_1EDA62C50, &qword_1EC319CE0, &qword_1C90A6B68, MEMORY[0x1E699FF50]);
    v216 = v334;
    sub_1C906296C();
    v315(v214, v215);
    if (qword_1EDA68E60 != -1)
    {
      swift_once();
    }

    v217 = v383;
    v218 = __swift_project_value_buffer(v383, qword_1EDA6E9B0);
    v327 = MEMORY[0x1E699FEE0];
    v219 = sub_1C8D28184(&qword_1EDA693C8, &qword_1EC313258, &unk_1C90A7A30, MEMORY[0x1E699FEE0]);
    v329 = "olDefinitionQueryRequest";
    v220 = v382;
    v387 = v218;
    sub_1C9062B1C();
    v221 = v335;
    v373 = v219;
    sub_1C906294C();
    v222 = *(v393 + 8);
    v393 += 8;
    v328 = v222;
    v222(v220, v217);
    v223 = *(v337 + 8);
    v223(v216, v213);
    sub_1C8D28184(&qword_1EDA62C58, &qword_1EC319CE0, &qword_1C90A6B68, MEMORY[0x1E699FF38]);
    v224 = v336;
    sub_1C9062A1C();
    v223(v221, v213);
    sub_1C8D28184(&qword_1EDA62C60, &qword_1EC319CE0, &qword_1C90A6B68, MEMORY[0x1E699FF30]);
    v225 = v330;
    v226 = v398;
    v227 = v375;
    sub_1C906296C();
    v228 = v213;
    v229 = v226;
    v223(v224, v228);
    v230 = v386;
    (v386)(v227, v226);
    sub_1C8D28184(&qword_1EDA62C88, &qword_1EC313260, &unk_1C90A7A60, v327);
    v231 = v332;
    sub_1C9062B1C();
    v230(v225, v226);
    v232 = swift_allocObject();
    *(v232 + 16) = v303;
    if (qword_1EDA62690 != -1)
    {
      swift_once();
    }

    v233 = v404;
    v234 = __swift_project_value_buffer(v404, &unk_1EDA6E6D8);
    *(v232 + 56) = v233;
    *(v232 + 64) = MEMORY[0x1E69A0048];
    v235 = __swift_allocate_boxed_opaque_existential_1((v232 + 32));
    v305(v235, v234, v233);
    sub_1C8D28184(&qword_1EDA62C80, &qword_1EC313260, &unk_1C90A7A60, MEMORY[0x1E699FEE8]);
    v236 = v333;
    sub_1C906280C();

    v230(v231, v229);
    v237 = v331;
    v238 = v402;
    v239 = v374;
    sub_1C906294C();
    v230(v236, v229);
    (v316)(v239, v238);
    v240 = v407;
    if (qword_1EDA68EB8 != -1)
    {
      swift_once();
    }

    v241 = v340;
    qword_1EDA6EA38(v401, v240);
    sub_1C8D28184(&qword_1EDA693B8, &qword_1EC313250, &unk_1C90A7000, MEMORY[0x1E699FEE0]);
    v242 = v341;
    v243 = v343;
    sub_1C9062B1C();
    v244 = *(v342 + 8);
    v244(v241, v243);
    sub_1C906294C();
    v244(v242, v243);
    (v316)(v237, v238);
    v245 = v347;
    if (qword_1EDA68EA0 != -1)
    {
      swift_once();
    }

    v246 = v345;
    qword_1EDA6EA28(v401, v407);
    v247 = sub_1C8D28184(&qword_1EDA693F0, &qword_1EC313240, &unk_1C90A7A20, MEMORY[0x1E699FEE0]);
    v248 = v350;
    v398 = v247;
    sub_1C9062B1C();
    v249 = *(v349 + 8);
    v249(v246, v248);
    v250 = swift_allocObject();
    *(v250 + 16) = v303;
    if (qword_1EDA66938 != -1)
    {
      swift_once();
    }

    v251 = v404;
    v252 = __swift_project_value_buffer(v404, qword_1EDA6E860);
    *(v250 + 56) = v251;
    *(v250 + 64) = MEMORY[0x1E69A0048];
    v253 = __swift_allocate_boxed_opaque_existential_1((v250 + 32));
    v305(v253, v252, v251);
    sub_1C8D28184(&qword_1EDA693E8, &qword_1EC313240, &unk_1C90A7A20, MEMORY[0x1E699FEE8]);
    v254 = v348;
    sub_1C906280C();

    v249(v245, v248);
    v255 = v402;
    v256 = v376;
    sub_1C906294C();
    v249(v254, v248);
    (v316)(v256, v255);
    if (qword_1EDA68E78 != -1)
    {
      swift_once();
    }

    v257 = v355;
    __swift_project_value_buffer(v355, qword_1EDA6E9E0);
    v258 = v379;
    v259 = v380;
    sub_1C9062B1C();
    sub_1C8D28184(&qword_1EDA693D0, &qword_1EC313238, &qword_1C906B0B0, MEMORY[0x1E699FEF8]);
    v260 = v352;
    sub_1C906294C();
    (v369)(v258, v259);
    sub_1C8D28184(&qword_1EDA693D8, &qword_1EC313238, &qword_1C906B0B0, MEMORY[0x1E699FEE0]);
    v261 = v353;
    sub_1C9062B1C();
    v262 = *(v354 + 8);
    v262(v260, v257);
    v263 = v339;
    v264 = v377;
    sub_1C906294C();
    v262(v261, v257);
    v265 = v316;
    (v316)(v264, v255);
    v266 = v382;
    v267 = v383;
    sub_1C9062B1C();
    sub_1C906294C();
    v328(v266, v267);
    v265(v263, v255);
    if (qword_1EDA68E48 != -1)
    {
      swift_once();
    }

    v268 = v359;
    __swift_project_value_buffer(v359, qword_1EDA6E980);
    v269 = v388;
    (v312)(v401, v407);

    v271 = v389;
    v270 = v390;
    sub_1C9062A1C();
    v272 = v269;
    v273 = v313;
    (v313)(v272, v270);
    sub_1C8D28184(&qword_1EDA69350, &qword_1EC313230, &unk_1C90A6FF0, MEMORY[0x1E699FFC0]);
    v274 = v356;
    sub_1C906296C();
    v273(v271, v270);
    sub_1C8D28184(&qword_1EDA69358, &qword_1EC313230, &unk_1C90A6FF0, MEMORY[0x1E699FFB0]);
    v275 = v357;
    sub_1C9062B1C();
    v276 = *(v358 + 8);
    v276(v274, v268);
    v277 = v344;
    v278 = v402;
    v279 = v378;
    sub_1C906294C();
    v276(v275, v268);
    v280 = v316;
    (v316)(v279, v278);
    v281 = v278;
    if (qword_1EDA68E88 != -1)
    {
      swift_once();
    }

    v282 = v362;
    __swift_project_value_buffer(v362, qword_1EDA6E9F8);
    sub_1C8D28184(&qword_1EDA693C0, &qword_1EC313218, &qword_1C906B0A0, MEMORY[0x1E699FEE0]);
    v283 = v360;
    sub_1C9062B1C();
    v284 = v346;
    sub_1C906294C();
    (*(v361 + 8))(v283, v282);
    v280(v277, v281);
    v285 = v308;
    v286 = v281;
    if (qword_1EDA68E50 != -1)
    {
      swift_once();
    }

    v287 = v365;
    __swift_project_value_buffer(v365, qword_1EDA6E998);
    sub_1C8D28184(&qword_1EDA693A8, &qword_1EC313210, &unk_1C90A7A10, MEMORY[0x1E699FEE0]);
    v288 = v363;
    sub_1C9062B1C();
    sub_1C906294C();
    (*(v364 + 8))(v288, v287);
    v280(v284, v286);
    if (qword_1EC3111B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v285, qword_1EC3906B0);
    v289 = v285;
    sub_1C8D28184(&qword_1EC319DD8, &qword_1EC313200, &qword_1C906B098, MEMORY[0x1E699FEE0]);
    v290 = v366;
    sub_1C9062B1C();
    sub_1C8D28184(&qword_1EC319DE0, &qword_1EC313200, &qword_1C906B098, MEMORY[0x1E699FED8]);
    v291 = v351;
    v292 = v381;
    sub_1C906295C();
    (*(v367 + 8))(v290, v289);
    v280(v292, v286);
    v293 = v397;
    v294 = v315;
    v315(v392, v397);
    v294(v399, v293);
    return (*(v394 + 40))(v307, v291, v286);
  }

  return result;
}

uint64_t sub_1C8F1C2A4(uint64_t a1)
{
  v75 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D00, &unk_1C90A7A50);
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v70 = v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313260, &unk_1C90A7A60);
  OUTLINED_FUNCTION_11();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v60 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v73 = v22;
  v74 = v21;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  v72 = v60 - v24;
  sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v76 = v30 - v29;
  result = *v1;
  if (*(*v1 + 16))
  {
    v64 = v26;
    v65 = v20;
    v71 = v28;
    v66 = v4;
    v67 = v13;
    sub_1C8F174C4(result);
    v68 = v2;
    v80 = v32;
    if (qword_1EC3112C0 != -1)
    {
      swift_once();
    }

    v33 = sub_1C9062E6C();
    __swift_project_value_buffer(v33, qword_1EC390958);
    v78 = v33;
    v79 = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v77);
    OUTLINED_FUNCTION_10_0();
    (*(v34 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_2_36();
    sub_1C8D28184(v35, &qword_1EC312558, &qword_1C9066990, v36);
    sub_1C90640CC();
    __swift_destroy_boxed_opaque_existential_1(v77);

    sub_1C906247C();
    swift_allocObject();
    v37 = sub_1C906246C();
    swift_allocObject();
    v38 = sub_1C906246C();
    (*(v73 + 32))(v72, v75, v74);
    if (qword_1EDA68EB0 != -1)
    {
      swift_once();
    }

    v39 = v11;
    __swift_project_value_buffer(v11, qword_1EDA6E600);
    OUTLINED_FUNCTION_5_47();
    v44 = sub_1C8D28184(v40, v41, v42, v43);
    v61 = v17;
    v63 = v44;
    sub_1C906249C();
    v62 = v38;
    if (qword_1EDA626D0 != -1)
    {
      swift_once();
    }

    v45 = v69;
    __swift_project_value_buffer(v69, qword_1EDA6E768);
    sub_1C8D28184(&qword_1EC319E08, &qword_1EC319D00, &unk_1C90A7A50, MEMORY[0x1E699FFA8]);
    v60[1] = v37;
    sub_1C906249C();
    v46 = v71;
    v78 = v71;
    v79 = MEMORY[0x1E699FE60];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
    v48 = v64;
    (*(v64 + 16))(boxed_opaque_existential_1, v76, v46);
    sub_1C8D28184(&qword_1EC319E10, &qword_1EC319D00, &unk_1C90A7A50, MEMORY[0x1E699FFB8]);
    v49 = v70;
    sub_1C906292C();
    v50 = *(v66 + 8);
    v50(v8, v45);
    __swift_destroy_boxed_opaque_existential_1(v77);
    sub_1C8D28184(&qword_1EDA62C78, &qword_1EC313260, &unk_1C90A7A60, MEMORY[0x1E699FEF8]);
    v51 = v65;
    v52 = v61;
    sub_1C906293C();
    v50(v49, v45);
    v53 = *(v67 + 8);
    v53(v52, v39);
    OUTLINED_FUNCTION_6_40();
    sub_1C8D28184(v54, v55, v56, v57);
    v58 = v74;
    v59 = v72;
    sub_1C906293C();

    v53(v51, v39);
    (*(v73 + 8))(v59, v58);
    return (*(v48 + 8))(v76, v71);
  }

  return result;
}

uint64_t sub_1C8F1C990(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313210, &unk_1C90A7A10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  result = *v1;
  if (*(*v1 + 16))
  {
    v43 = v14;
    v46 = v13;
    v48 = a1;
    sub_1C8F174C4(result);
    v19 = v18;
    if (qword_1EDA68E50 != -1)
    {
      swift_once();
    }

    v44 = v6;
    v45 = v9;
    v47 = v4;
    v49 = v2;
    __swift_project_value_buffer(v10, qword_1EDA6E998);
    v51[6] = v19;
    if (qword_1EC311360 != -1)
    {
      swift_once();
    }

    v20 = sub_1C9062E6C();
    __swift_project_value_buffer(v20, qword_1EC390AC8);
    v50[3] = v20;
    v50[4] = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_10_0();
    (*(v21 + 16))();
    v51[3] = sub_1C90627EC();
    v51[4] = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_2_36();
    sub_1C8D28184(v22, &qword_1EC312558, &qword_1C9066990, v23);
    sub_1C90640CC();
    __swift_destroy_boxed_opaque_existential_1(v50);

    OUTLINED_FUNCTION_4_49();
    sub_1C8D28184(v24, v25, v26, v27);
    sub_1C906292C();
    __swift_destroy_boxed_opaque_existential_1(v51);
    v28 = v44;
    v29 = v45;
    v30 = v47;
    (*(v44 + 32))(v45, v48, v47);
    OUTLINED_FUNCTION_3_52();
    sub_1C8D28184(v31, v32, &unk_1C90A7A10, v33);
    v34 = v43;
    sub_1C9062B1C();
    OUTLINED_FUNCTION_6_40();
    sub_1C8D28184(v35, v36, v37, v38);
    OUTLINED_FUNCTION_5_47();
    sub_1C8D28184(v39, &qword_1EC313210, &unk_1C90A7A10, v40);
    sub_1C906293C();
    v41 = *(v46 + 8);
    v41(v34, v10);
    (*(v28 + 8))(v29, v30);
    return (v41)(v16, v10);
  }

  return result;
}

void sub_1C8F1CDD0()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  sub_1C9062E4C();
  OUTLINED_FUNCTION_11();
  v34 = v4;
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v33 = v6 - v5;
  v32 = sub_1C9062B9C();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = sub_1C9062ADC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v16 = v15;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v30 = *v0;
  if (qword_1EDA68E30 != -1)
  {
    swift_once();
  }

  v20 = sub_1C9062E6C();
  __swift_project_value_buffer(v20, qword_1EDA6E938);
  sub_1C9062E5C();
  v21 = *(v16 + 32);
  v31 = v19;
  v21(v19, v2, v14);
  sub_1C9062AAC();
  sub_1C9062A9C();
  sub_1C9062B8C();
  sub_1C9062ABC();
  v29 = v2;
  v22 = *(v8 + 8);
  v23 = v32;
  v22(v12, v32);
  sub_1C9062A9C();
  sub_1C9062B8C();
  sub_1C9062ABC();

  v22(v12, v23);
  sub_1C9062A9C();
  v24 = MEMORY[0x1E69E6530];
  v25 = MEMORY[0x1E69A0178];
  v37 = MEMORY[0x1E69E6530];
  v38 = MEMORY[0x1E69A0178];
  v26 = v30;
  v36[0] = v30;
  sub_1C9062ACC();
  sub_1C8D3F0C4(v36, &qword_1EC313248, &unk_1C906B540);
  sub_1C9062A9C();
  v37 = v24;
  v38 = v25;
  v36[0] = v26;
  sub_1C9062ACC();
  sub_1C8D3F0C4(v36, &qword_1EC313248, &unk_1C906B540);
  sub_1C9062A9C();
  v27 = v33;
  sub_1C9062E3C();
  sub_1C8D28184(&qword_1EDA69368, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF70]);
  v28 = v31;
  sub_1C906291C();
  (*(v34 + 8))(v27, v35);
  (*(v16 + 8))(v28, v14);
  OUTLINED_FUNCTION_163();
}

void sub_1C8F1D1B4(uint64_t a1)
{
  v130 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v6 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_94_1();
  v127 = sub_1C90627DC();
  OUTLINED_FUNCTION_11();
  v126 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v125 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313218, &qword_1C906B0A0);
  OUTLINED_FUNCTION_11();
  v132 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v131 = &v116[-v15];
  v138 = sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  v139 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v116[-v22];
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319DE8, &qword_1C90A7A80);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v116[-v32];
  v33 = *v1;
  if (!*(*v1 + 16))
  {
    return;
  }

  v118 = v12;
  v119 = v31;
  v120 = v23;
  v121 = v30;
  v122 = v3;
  v123 = v6;
  v124 = v4;
  v137 = v2;
  v34 = v1[8];
  v154 = v33;
  v35 = v33 + 56;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v33 + 56);
  j__swift_bridgeObjectRetain_0(v33, v34, v26, v27, v28, v29);
  v117 = v34;
  j__swift_bridgeObjectRetain_0(v33, v34, v39, v40, v41, v42);
  v43 = 0;
  v44 = (v36 + 63) >> 6;
  v129 = v20;
  v128 = v33;
  while (v38)
  {
LABEL_10:
    v46 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v47 = *(v33 + 48) + 40 * (v46 | (v43 << 6));
    if (!*(v47 + 32))
    {
      v48 = *v47;
      v49 = *(v47 + 8);
      sub_1C8D54590(*v47, v49, *(v47 + 16), *(v47 + 24), 0);

      v50 = sub_1C906316C();
      if (*(v50 + 16) && (v51 = sub_1C8CAE064(v48, v49), (v52 & 1) != 0))
      {
        v53 = (*(v50 + 56) + 16 * v51);
        v54 = v53[1];
        v136 = *v53;
        v135 = v54;
      }

      else
      {

        v136 = 0x446E776F6E6B6E55;
        v135 = 0xED00006E69616D6FLL;
      }

      v149 = v48;
      v150 = v49;
      v151 = 0;
      v152 = 0;
      v153 = 0;

      sub_1C8F1F094(&v141);
      OUTLINED_FUNCTION_62_1();
      sub_1C8F214D8(v141, v142, v143, v144, v145);
      v147[0] = v48;
      v147[1] = v49;
      v147[2] = v136;
      v147[3] = v135;
      v148 = 1;
      sub_1C8D87EF8(&v141, v147);
      OUTLINED_FUNCTION_62_1();
      sub_1C8D3ED20(v141, v142, v143, v144, v145);
      v20 = v129;
      v33 = v128;
    }
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_10_40();
      swift_once();
      goto LABEL_27;
    }

    if (v45 >= v44)
    {
      break;
    }

    v38 = *(v35 + 8 * v45);
    ++v43;
    if (v38)
    {
      v43 = v45;
      goto LABEL_10;
    }
  }

  v55 = v154;
  v56 = v137;
  sub_1C8F1770C(v154);
  v58 = v57;
  v137 = v56;
  if (v117)
  {
    v59 = *(v57 + 16);
    v136 = v59;
    if (v59)
    {
      v128 = v55;
      v146 = MEMORY[0x1E69E7CC0];
      sub_1C8D09DBC(0, v59, 0);
      v135 = v58;
      v60 = (v58 + 40);
      v61 = v146;
      v62 = v59;
      do
      {
        v64 = *(v60 - 1);
        v63 = *v60;
        v65 = qword_1EDA62948;

        if (v65 != -1)
        {
          OUTLINED_FUNCTION_10_40();
          swift_once();
        }

        v66 = sub_1C9062E6C();
        __swift_project_value_buffer(v66, qword_1EDA6E7C0);
        v144 = v66;
        v145 = MEMORY[0x1E69A0050];
        __swift_allocate_boxed_opaque_existential_1(&v141);
        OUTLINED_FUNCTION_10_0();
        (*(v67 + 16))();
        v140[3] = MEMORY[0x1E69E6158];
        v140[4] = MEMORY[0x1E69A0130];
        v140[0] = v64;
        v140[1] = v63;
        sub_1C9062D6C();
        sub_1C8D3F0C4(v140, &qword_1EC313248, &unk_1C906B540);
        __swift_destroy_boxed_opaque_existential_1(&v141);
        v146 = v61;
        v69 = *(v61 + 16);
        v68 = *(v61 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1C8D09DBC(v68 > 1, v69 + 1, 1);
          v61 = v146;
        }

        *(v61 + 16) = v69 + 1;
        (*(v139 + 32))(v61 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v69, v20, v138);
        v60 += 2;
        --v62;
      }

      while (v62);
    }

    else
    {

      v61 = MEMORY[0x1E69E7CC0];
    }

    v141 = v61;
    v91 = v125;
    sub_1C90627AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162C8, &unk_1C9084E70);
    OUTLINED_FUNCTION_2_36();
    sub_1C8D28184(v92, &qword_1EC3162C8, &unk_1C9084E70, v93);
    v94 = MEMORY[0x1E699FE60];
    v95 = v120;
    sub_1C90640DC();
    (*(v126 + 8))(v91, v127);

    v96 = v134;
    if (qword_1EDA68E88 != -1)
    {
      OUTLINED_FUNCTION_15_28(&qword_1EDA68E88);
    }

    v97 = v118;
    __swift_project_value_buffer(v118, qword_1EDA6E9F8);
    v98 = v138;
    v144 = v138;
    v145 = v94;
    v99 = __swift_allocate_boxed_opaque_existential_1(&v141);
    v100 = v139;
    (*(v139 + 16))(v99, v95, v98);
    OUTLINED_FUNCTION_4_49();
    sub_1C8D28184(v101, v102, &qword_1C906B0A0, v103);
    OUTLINED_FUNCTION_25_21();
    sub_1C906292C();
    __swift_destroy_boxed_opaque_existential_1(&v141);
    OUTLINED_FUNCTION_3_52();
    sub_1C8D28184(v104, v105, &qword_1C906B0A0, v106);
    OUTLINED_FUNCTION_32_19();
    v85 = v94;
    sub_1C9062B0C();
    v107 = OUTLINED_FUNCTION_30_24();
    v108(v107, v97);
    v144 = MEMORY[0x1E69E6530];
    v145 = MEMORY[0x1E69A0178];
    v141 = v136;
    type metadata accessor for ToolRecord(0);
    OUTLINED_FUNCTION_17_30();
    sub_1C9062D8C();
    v109 = OUTLINED_FUNCTION_20_26();
    v136 = v110;
    v110(v109, v96);
    (*(v100 + 8))(v95, v98);
    __swift_destroy_boxed_opaque_existential_1(&v141);
    v89 = v96;
    goto LABEL_34;
  }

  v140[0] = v58;
  v35 = v118;
  if (qword_1EDA62948 != -1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v70 = sub_1C9062E6C();
  __swift_project_value_buffer(v70, qword_1EDA6E7C0);
  v144 = v70;
  v145 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(&v141);
  OUTLINED_FUNCTION_10_0();
  (*(v71 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_2_36();
  sub_1C8D28184(v72, &qword_1EC312558, &qword_1C9066990, v73);
  v74 = v120;
  sub_1C90640CC();
  __swift_destroy_boxed_opaque_existential_1(&v141);

  v75 = v134;
  if (qword_1EDA68E88 != -1)
  {
    OUTLINED_FUNCTION_15_28(&qword_1EDA68E88);
  }

  __swift_project_value_buffer(v35, qword_1EDA6E9F8);
  v76 = v138;
  v144 = v138;
  v145 = MEMORY[0x1E699FE60];
  v77 = __swift_allocate_boxed_opaque_existential_1(&v141);
  v78 = v139;
  (*(v139 + 16))(v77, v74, v76);
  OUTLINED_FUNCTION_4_49();
  sub_1C8D28184(v79, v80, &qword_1C906B0A0, v81);
  OUTLINED_FUNCTION_25_21();
  sub_1C906292C();
  __swift_destroy_boxed_opaque_existential_1(&v141);
  OUTLINED_FUNCTION_3_52();
  sub_1C8D28184(v82, v83, &qword_1C906B0A0, v84);
  OUTLINED_FUNCTION_32_19();
  v85 = &qword_1EC312558;
  sub_1C9062B0C();
  v86 = OUTLINED_FUNCTION_30_24();
  v87(v86, v35);
  v144 = MEMORY[0x1E69E6530];
  v145 = MEMORY[0x1E69A0178];
  v141 = 0;
  type metadata accessor for ToolRecord(0);
  OUTLINED_FUNCTION_17_30();
  sub_1C9062BCC();
  v88 = OUTLINED_FUNCTION_20_26();
  v89 = v75;
  v136 = v90;
  v90(v88, v75);
  (*(v78 + 8))(v74, v76);
  __swift_destroy_boxed_opaque_existential_1(&v141);
LABEL_34:
  v111 = v124;
  v112 = v123;
  v113 = v122;
  (*(v123 + 32))(v122, v130, v124);
  v114 = v85;
  sub_1C9062BEC();
  sub_1C8D28184(&qword_1EDA62C30, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF80]);
  sub_1C9062A6C();
  v115 = v136;
  (v136)(&qword_1EC313218, v89);
  (*(v112 + 8))(v113, v111);
  v115(v114, v89);
}

void sub_1C8F1DE4C()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313200, &qword_1C906B098);
  OUTLINED_FUNCTION_11();
  v11 = v10;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-v13];
  if (*(v0 + *(*v0 + 136) + 104) >> 61 <= 4uLL)
  {
    if (qword_1EC3111B0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v9, qword_1EC3906B0);
    (*(v11 + 16))(v14, v15, v9);
    sub_1C8D5F978();
    if (qword_1EC311230 != -1)
    {
      swift_once();
    }

    v16 = sub_1C9062E6C();
    __swift_project_value_buffer(v16, qword_1EC390828);
    sub_1C8F20F18();

    (*(v5 + 32))(v8, v2, v3);
    OUTLINED_FUNCTION_6_40();
    sub_1C8D28184(v17, v18, v19, v20);
    OUTLINED_FUNCTION_5_47();
    sub_1C8D28184(v21, &qword_1EC313200, &qword_1C906B098, v22);
    sub_1C906293C();
    (*(v5 + 8))(v8, v3);
    (*(v11 + 8))(v14, v9);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F1E13C()
{
  v0 = sub_1C902E6D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C8F1E204@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a6@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  *a6 = *a2;
}

unint64_t sub_1C8F1E274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8F1E29C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69228[0];
  if (!qword_1EDA69228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA69228);
  }

  return result;
}

unint64_t sub_1C8F1E2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8F1E318(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319DB0;
  if (!qword_1EC319DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DB0);
  }

  return result;
}

unint64_t sub_1C8F1E36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8F1E394(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319DB8;
  if (!qword_1EC319DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DB8);
  }

  return result;
}

unint64_t sub_1C8F1E3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8F1E410(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319DC0;
  if (!qword_1EC319DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DC0);
  }

  return result;
}

unint64_t sub_1C8F1E464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C8F1E48C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8F1E48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319DC8;
  if (!qword_1EC319DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319DC8);
  }

  return result;
}

uint64_t sub_1C8F1E4EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8F1E52C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ToolDefinitionQueryRequest(uint64_t a1)
{
  result = qword_1EDA69008;
  if (!qword_1EDA69008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C8F1E624(uint64_t a1)
{
  OUTLINED_FUNCTION_16_28(a1);
  TypedValue.hash(into:)();
  sub_1C9064DBC();
  OUTLINED_FUNCTION_22_29();
  do
  {
    OUTLINED_FUNCTION_24_26();
    if ((v4 & 1) == 0)
    {
      *v1 = 0xF000000000000007;
      return;
    }

    v19 = *(*(v3 + 48) + 8 * v2);

    static TypedValue.== infix(_:_:)();
    v6 = v5;
  }

  while ((v6 & 1) == 0);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_36_18();
  if ((v8 & 1) == 0)
  {
    sub_1C8D8DE88();
    v7 = v19;
  }

  v9 = OUTLINED_FUNCTION_26_18(v7);
  v10 = sub_1C8F1F458(v9);
  OUTLINED_FUNCTION_37_19(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C8F1E700(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9064DBC();
  OUTLINED_FUNCTION_22_29();
  while (1)
  {
    v8 = v7 & v3;
    if (((*(v6 + 56 + (((v7 & v3) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v3)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v6 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1C9064C2C() & 1) != 0)
    {
      break;
    }

    v7 = v8 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_36_18();
  if ((v12 & 1) == 0)
  {
    sub_1C8D8D458();
    v11 = v24;
  }

  v13 = *(*(v11 + 48) + 16 * v8);
  v14 = sub_1C8F1F60C(v8);
  OUTLINED_FUNCTION_37_19(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
  return v13;
}

uint64_t sub_1C8F1E818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v4 = *v2;
  result = sub_1C8D31238(*(*v2 + 40));
  v11 = -1 << *(v4 + 32);
  v12 = result & ~v11;
  if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_128:
    *v82 = 0u;
    *(v82 + 16) = 0u;
    *(v82 + 32) = -1;
    return result;
  }

  v13 = ~v11;
  v77 = 0x80000001C90CA2E0;
  v78 = 0x80000001C90CA300;
  v79 = 0x80000001C90CA320;
  v80 = 0x80000001C90CA340;
  v84 = 0x80000001C90CA380;
  v85 = 0x80000001C90CA360;
  while (1)
  {
    v86 = 5 * v12;
    v88 = v12;
    v14 = *(v4 + 48) + 40 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v94 = v17;
    v92 = v19;
    if (!v19)
    {
      OUTLINED_FUNCTION_16();
      v95 = v21;
      v98 = v84;

      MEMORY[0x1CCA81A90](v16, v15);
      goto LABEL_7;
    }

    if (v19 == 1)
    {
      OUTLINED_FUNCTION_16();
      v95 = v20;
      v98 = v85;

      MEMORY[0x1CCA81A90](v17, v18);

      MEMORY[0x1CCA81A90](46, 0xE100000000000000);

      MEMORY[0x1CCA81A90](v16, v15);

LABEL_7:
      v22 = v95;
      v23 = v98;
      goto LABEL_8;
    }

    if (!(v17 | v15 | v16 | v18))
    {
      v23 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E75;
      goto LABEL_8;
    }

    v46 = v17 | v15 | v18;
    v47 = v16 == 1 && v46 == 0;
    v22 = 0x6F6363416C69616DLL;
    v23 = 0xEB00000000746E75;
    if (!v47)
    {
      v48 = v16 == 2 && v46 == 0;
      v22 = 0x726464416C69616DLL;
      v23 = 0xED00006565737365;
      if (!v48)
      {
        v49 = v16 == 3 && v46 == 0;
        v22 = 0x7373654D6C69616DLL;
        v23 = 0xEB00000000656761;
        if (!v49)
        {
          if (v16 == 4 && v46 == 0)
          {
            v23 = 0xE700000000000000;
            v22 = 0x786F626C69616DLL;
            goto LABEL_8;
          }

          if (v16 == 5 && v46 == 0)
          {
            v22 = 0x654D746E65746E69;
            v60 = 0x6567617373;
LABEL_67:
            v23 = v60 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_8;
          }

          if (v16 == 6 && !v46)
          {
            v22 = 0x476567617373656DLL;
            v52 = 1886744434;
LABEL_44:
            v23 = v52 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_8;
          }

          if (v16 != 7 || v46)
          {
            if (v16 != 8 || v46)
            {
              if (v16 == 9 && !v46)
              {
                v22 = 0x6E45657571696E75;
                v52 = 2037672308;
                goto LABEL_44;
              }

              if (v16 != 10 || v46)
              {
                if (v16 == 11 && !v46)
                {
                  v22 = 0x4564657865646E69;
                  v60 = 0x797469746ELL;
                  goto LABEL_67;
                }

                if (v16 != 12 || v46)
                {
                  if (v16 != 13 || (v22 = 0xD000000000000010, v23 = v78, v46))
                  {
                    if (v16 != 14 || v46)
                    {
                      if (v46)
                      {
                        v70 = 0;
                      }

                      else
                      {
                        v70 = v16 == 15;
                      }

                      if (v70)
                      {
                        v23 = 0xEC00000068637261;
                      }

                      else
                      {
                        v23 = 0xEF52434F68637261;
                      }

                      v22 = 0x65536C6175736976;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16();
                      v22 = v68 + 10;
                      v23 = v77;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16();
                  v22 = v66 + 5;
                  v23 = v79;
                }
              }

              else
              {
                v22 = 0x6C62617461647075;
                v23 = 0xEF797469746E4565;
              }
            }

            else
            {
              OUTLINED_FUNCTION_42_5();
              v23 = v64 + 15;
              v22 = 0x6E6569736E617274;
            }
          }

          else
          {
            OUTLINED_FUNCTION_16();
            v22 = v62 + 2;
            v23 = v80;
          }
        }
      }
    }

LABEL_8:
    v93 = v18;
    v24 = *a1;
    v25 = a1[1];
    if (!*(a1 + 32))
    {
      OUTLINED_FUNCTION_16();
      v96 = v30;
      v99 = v84;
      v32 = v31;
      v26 = MEMORY[0x1CCA81A90](v24, v25);
      v22 = v32;
      goto LABEL_12;
    }

    v26 = a1[2];
    v27 = a1[3];
    if (*(a1 + 32) == 1)
    {
      OUTLINED_FUNCTION_16();
      v96 = v28;
      v99 = v85;
      v83 = v29;
      MEMORY[0x1CCA81A90]();

      MEMORY[0x1CCA81A90](46, 0xE100000000000000);

      MEMORY[0x1CCA81A90](v24, v25);

      v22 = v83;
LABEL_12:
      v33 = v96;
      v34 = v99;
      goto LABEL_13;
    }

    if (!(v26 | v25 | v24 | v27))
    {
      v34 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E75;
      goto LABEL_13;
    }

    v53 = v26 | v25 | v27;
    if (v24 != 1 || (OUTLINED_FUNCTION_50_2(), v33 = v54 | 0x6F63634100000000, v34 = 0xEB00000000746E75, v53))
    {
      if (v24 != 2 || (OUTLINED_FUNCTION_50_2(), v33 = v55 | 0x7264644100000000, v34 = 0xED00006565737365, v53))
      {
        if (v24 != 3 || (OUTLINED_FUNCTION_50_2(), v33 = v56 | 0x7373654D00000000, v34 = 0xEB00000000656761, v53))
        {
          if (v24 == 4 && !v53)
          {
            v34 = 0xE700000000000000;
            OUTLINED_FUNCTION_50_2();
            v33 = v57 | 0x786F6200000000;
            goto LABEL_13;
          }

          if (v24 == 5 && !v53)
          {
            v33 = 0x654D746E65746E69;
            v58 = 0x6567617373;
LABEL_60:
            v34 = v58 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_13;
          }

          if (v24 == 6 && !v53)
          {
            v33 = 0x476567617373656DLL;
            v59 = 1886744434;
LABEL_65:
            v34 = v59 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_13;
          }

          if (v24 != 7 || v53)
          {
            if (v24 != 8 || v53)
            {
              if (v24 == 9 && !v53)
              {
                v33 = 0x6E45657571696E75;
                v59 = 2037672308;
                goto LABEL_65;
              }

              if (v24 != 10 || v53)
              {
                if (v24 == 11 && !v53)
                {
                  v33 = 0x4564657865646E69;
                  v58 = 0x797469746ELL;
                  goto LABEL_60;
                }

                if (v24 != 12 || v53)
                {
                  if (v24 != 13 || (v33 = 0xD000000000000010, v34 = v78, v53))
                  {
                    if (v24 != 14 || v53)
                    {
                      if (v53)
                      {
                        v69 = 0;
                      }

                      else
                      {
                        v69 = v24 == 15;
                      }

                      if (v69)
                      {
                        v34 = 0xEC00000068637261;
                      }

                      else
                      {
                        v34 = 0xEF52434F68637261;
                      }

                      v33 = 0x65536C6175736976;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16();
                      v33 = v67 + 10;
                      v34 = v77;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16();
                  v33 = v65 + 5;
                  v34 = v79;
                }
              }

              else
              {
                v33 = 0x6C62617461647075;
                v34 = 0xEF797469746E4565;
              }
            }

            else
            {
              OUTLINED_FUNCTION_42_5();
              v34 = v63 + 15;
              v33 = 0x6E6569736E617274;
            }
          }

          else
          {
            OUTLINED_FUNCTION_16();
            v33 = v61 + 2;
            v34 = v80;
          }
        }
      }
    }

LABEL_13:
    if (v22 == v33 && v23 == v34)
    {
      break;
    }

    v36 = sub_1C9064C2C();
    v37 = v36;
    OUTLINED_FUNCTION_39_17(v36, v38, v39, v40, v41, v42, v43, v44, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v88, v91, v92, v93, v94);

    v45 = v89;
    if (v37)
    {
      goto LABEL_130;
    }

    v12 = (v89 + 1) & v13;
    if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  OUTLINED_FUNCTION_39_17(v26, v27, v33, v6, v7, v8, v9, v10, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v88, v91, v92, v93, v94);

  v45 = v90;
LABEL_130:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v81;
  v97 = *v81;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C8D8DF50();
    v72 = v97;
  }

  v73 = *(v72 + 48) + 8 * v87;
  v74 = *(v73 + 32);
  v75 = *(v73 + 16);
  *v82 = *v73;
  *(v82 + 16) = v75;
  *(v82 + 32) = v74;
  result = sub_1C8F1F7C4(v45);
  *v81 = v97;
  return result;
}