uint64_t sub_1CFCD85F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CFD48CC8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CFCD867C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CFD48CC8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFCD8760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CFD48DF8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CFCD87E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CFD48DF8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFCD88B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CFCD8944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFCD8A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CFD48CC8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CFCD8A98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CFD48CC8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFCD8BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelInputContentRequest.Kind(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1CFCD8C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_35_0();
  result = type metadata accessor for ModelInputContentRequest.Kind(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1CFCD8DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CFCD8E64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFCD9008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummarizationFeedback.UIKind(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    OUTLINED_FUNCTION_192();
    return (v10 + 1);
  }
}

uint64_t sub_1CFCD90B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummarizationFeedback.UIKind(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_1CFCD9184(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SummarizationResponse(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1CFCD920C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SummarizationResponse(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFCD932C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFCD9364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F68, &qword_1CFD4CFD0);
  OUTLINED_FUNCTION_25();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1CFCD9450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CFCD94E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFCD9608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CFD48CC8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CFCD9690(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CFD48CC8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFCD980C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummarizationFeedback(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ModelInputContentKind(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1CFCD98A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SummarizationFeedback(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ModelInputContentKind(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1CFCD9A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32A8, &qword_1CFD4F918);
  OUTLINED_FUNCTION_25();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFCD9ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1CFCD9B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1CFCD9CE8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_35_0();
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1CFCD9D2C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_35_0();
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_1CFCD9FA4()
{

  OUTLINED_FUNCTION_129_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CFCD9FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_21();
  type metadata accessor for ModelInputAndOutputKind(v6);
  OUTLINED_FUNCTION_356();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_406(*(v3 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

void sub_1CFCDA074(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_35_0();
  type metadata accessor for ModelInputAndOutputKind(v8);
  OUTLINED_FUNCTION_356();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_425();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1CFCDA10C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_0();
  v4 = sub_1CFD48D98();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1CFCDA150()
{
  OUTLINED_FUNCTION_35_0();
  sub_1CFD48D98();
  v0 = OUTLINED_FUNCTION_425();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1CFCDA18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_406(*(a1 + 64));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  OUTLINED_FUNCTION_356();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 64);
  }

  else
  {
    v9 = type metadata accessor for ModelInputContentRequest(0);
    v10 = *(a3 + 88);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_1CFCDA254(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
    OUTLINED_FUNCTION_356();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 64);
    }

    else
    {
      v10 = type metadata accessor for ModelInputContentRequest(0);
      v11 = *(a4 + 88);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1CFCDA474()
{

  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CFCDA4E0()
{

  OUTLINED_FUNCTION_129_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CFCDA728()
{
  OUTLINED_FUNCTION_121_1();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_101_1();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  v5 = OUTLINED_FUNCTION_120_2(*(v4 + 80));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1CFCDA7A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_121_1();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
    v8 = OUTLINED_FUNCTION_120_2(*(v7 + 80));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1CFCDA828()
{
  OUTLINED_FUNCTION_121_1();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_101_1();
  }

  v4 = v0;
  sub_1CFD48CC8();
  v5 = OUTLINED_FUNCTION_120_2(*(v4 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1CFCDA898(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_121_1();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1CFD48CC8();
    v8 = OUTLINED_FUNCTION_120_2(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1CFCDAA20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFCDAA14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFCDAA4C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1CFCDEF6C(a2);
  *a1 = result;
  return result;
}

uint64_t MessageEntity.uniqueId.setter()
{
  OUTLINED_FUNCTION_30();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.domainId.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MessageEntity.donatingBundleId.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MessageEntity.absoluteTimestamp.getter()
{
  v2 = *(OUTLINED_FUNCTION_64() + 28);
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_25();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t type metadata accessor for MessageEntity(uint64_t a1)
{
  result = qword_1EDDD6030;
  if (!qword_1EDDD6030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageEntity.absoluteTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MessageEntity(v2) + 28);
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_25();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t MessageEntity.absoluteTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.appBundleId.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.appBundleId.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.appBundleId.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.conversationId.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.conversationId.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.conversationId.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.conversationUUID.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.conversationUUID.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.conversationUUID.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.inlineThreadId.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.inlineThreadId.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.inlineThreadId.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.accountHandles.getter()
{
  type metadata accessor for MessageEntity(0);
}

uint64_t MessageEntity.accountHandles.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MessageEntity(v2) + 48);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessageEntity.accountHandles.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.senderHandle.getter()
{
  v2 = *(OUTLINED_FUNCTION_64() + 52);
  memcpy(__dst, (v1 + v2), 0x41uLL);
  memcpy(v0, (v1 + v2), 0x41uLL);
  return sub_1CFCDB100(__dst, &v4);
}

void *MessageEntity.senderHandle.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MessageEntity(v2) + 52);
  memcpy(__dst, (v1 + v3), 0x41uLL);
  sub_1CFCDB1BC(__dst);
  return memcpy((v1 + v3), v0, 0x41uLL);
}

uint64_t MessageEntity.senderHandle.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.recipientHandles.getter()
{
  type metadata accessor for MessageEntity(0);
}

uint64_t MessageEntity.recipientHandles.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MessageEntity(v2) + 56);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessageEntity.recipientHandles.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.content.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.content.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.content.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.attachments.getter()
{
  type metadata accessor for MessageEntity(0);
}

uint64_t MessageEntity.attachments.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MessageEntity(v2) + 64);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessageEntity.attachments.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isNew.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 68)) = v0;
  return result;
}

uint64_t MessageEntity.isNew.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isTwoFactorCode.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 72)) = v0;
  return result;
}

uint64_t MessageEntity.isTwoFactorCode.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isFromMe.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 76)) = v0;
  return result;
}

uint64_t MessageEntity.isFromMe.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isFromKnownSender.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 80)) = v0;
  return result;
}

uint64_t MessageEntity.isFromKnownSender.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isGroupThread.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t MessageEntity.isGroupThread.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isJunk.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 88)) = v0;
  return result;
}

uint64_t MessageEntity.isJunk.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isRead.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 92)) = v0;
  return result;
}

uint64_t MessageEntity.isRead.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isPinned.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 96)) = v0;
  return result;
}

uint64_t MessageEntity.isPinned.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isBusinessChat.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 100)) = v0;
  return result;
}

uint64_t MessageEntity.isBusinessChat.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.tapbackAssociatedMessageId.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.tapbackAssociatedMessageId.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.tapbackAssociatedMessageId.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.tapbackType.getter()
{
  result = OUTLINED_FUNCTION_64();
  *v0 = *(v1 + *(result + 108));
  return result;
}

uint64_t MessageEntity.tapbackType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MessageEntity(0);
  *(v1 + *(result + 108)) = v2;
  return result;
}

uint64_t MessageEntity.tapbackType.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.resolvedTapbacks.getter()
{
  type metadata accessor for MessageEntity(0);
}

uint64_t MessageEntity.resolvedTapbacks.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MessageEntity(v2) + 112);

  *(v1 + v3) = v0;
  return result;
}

uint64_t MessageEntity.resolvedTapbacks.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.messageEffect.getter()
{
  result = OUTLINED_FUNCTION_64();
  *v0 = *(v1 + *(result + 116));
  return result;
}

uint64_t MessageEntity.messageEffect.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MessageEntity(0);
  *(v1 + *(result + 116)) = v2;
  return result;
}

uint64_t MessageEntity.messageEffect.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.messageType.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.messageType.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.messageType.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.messagesService.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.messagesService.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.messagesService.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.ownerIdentifier.getter()
{
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t MessageEntity.ownerIdentifier.setter()
{
  OUTLINED_FUNCTION_29();
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MessageEntity.ownerIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.isSpotlightUpdate.setter()
{
  result = OUTLINED_FUNCTION_40();
  *(v1 + *(result + 132)) = v0;
  return result;
}

uint64_t MessageEntity.isSpotlightUpdate.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

void *MessageEntity.fileProtectionType.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageEntity(0) + 136));
  v2 = v1;
  return v1;
}

void MessageEntity.fileProtectionType.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for MessageEntity(v2) + 136);

  *(v1 + v3) = v0;
}

uint64_t MessageEntity.fileProtectionType.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for MessageEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t MessageEntity.init(uniqueId:domainId:donatingBundleId:absoluteTimestamp:appBundleId:conversationId:conversationUUID:inlineThreadId:accountHandles:senderHandle:recipientHandles:content:attachments:isNew:isTwoFactorCode:isFromMe:isFromKnownSender:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageId:tapbackType:messageEffect:messageType:messagesService:ownerIdentifier:isSpotlightUpdate:fileProtectionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, char *a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43)
{
  v78 = *a34;
  v81 = *a35;
  v47 = type metadata accessor for MessageEntity(0);
  v48 = (a9 + v47[8]);
  v49 = (a9 + v47[9]);
  v50 = (a9 + v47[10]);
  v51 = (a9 + v47[11]);
  v58 = v47[12];
  v67 = v47[18];
  v68 = v47[17];
  v65 = v47[20];
  v66 = v47[19];
  v63 = v47[22];
  v64 = v47[21];
  v61 = v47[24];
  v62 = v47[23];
  v60 = v47[25];
  v59 = (a9 + v47[26]);
  v52 = v47[27];
  *(a9 + v52) = 10;
  v74 = v47[29];
  *(a9 + v74) = 15;
  v70 = (a9 + v47[30]);
  v71 = (a9 + v47[31]);
  v69 = (a9 + v47[32]);
  v72 = v47[34];
  v73 = v47[33];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v53 = v47[7];
  v54 = sub_1CFD48CC8();
  v55 = *(v54 - 8);
  (*(v55 + 16))(a9 + v53, a7, v54);
  *v48 = a8;
  v48[1] = a10;
  *v49 = a11;
  v49[1] = a12;
  *v50 = a13;
  v50[1] = a14;
  *v51 = a15;
  v51[1] = a16;
  *(a9 + v58) = a17;
  memcpy(a9 + v47[13], a18, 0x41uLL);
  *(a9 + v47[14]) = a19;
  v56 = (a9 + v47[15]);
  *v56 = a20;
  v56[1] = a21;
  *(a9 + v47[16]) = a22;
  *(a9 + v68) = a23;
  *(a9 + v67) = a24;
  *(a9 + v66) = a25;
  *(a9 + v65) = a26;
  *(a9 + v64) = a27;
  *(a9 + v63) = a28;
  *(a9 + v62) = a29;
  *(a9 + v61) = a30;
  *(a9 + v60) = a31;
  *v59 = a32;
  v59[1] = a33;
  *(a9 + v52) = v78;
  result = (*(v55 + 8))(a7, v54);
  *(a9 + v47[28]) = MEMORY[0x1E69E7CC0];
  *(a9 + v74) = v81;
  *v70 = a36;
  v70[1] = a37;
  *v71 = a38;
  v71[1] = a39;
  *v69 = a40;
  v69[1] = a41;
  *(a9 + v73) = a42;
  *(a9 + v72) = a43;
  return result;
}

ProactiveSummarizationClient::MessageEntity::MessageEffect_optional __swiftcall MessageEntity.MessageEffect.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if (rawValue < 0xF)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1CFCDC2B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFD48FA8();
  v4 = v3;
  if (v2 == sub_1CFD48FA8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CFD49668();
  }

  return v7 & 1;
}

uint64_t sub_1CFCDC360(uint64_t a1, unsigned __int8 a2)
{
  sub_1CFD49728();
  MEMORY[0x1D3874010](a2);
  return sub_1CFD49758();
}

uint64_t sub_1CFCDC3AC@<X0>(uint64_t *a1@<X8>)
{
  result = MessageEntity.MessageEffect.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CFCDC3D4()
{
  OUTLINED_FUNCTION_61();
  sub_1CFCE0240();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFCDC41C()
{
  OUTLINED_FUNCTION_61();
  sub_1CFCE0240();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

BOOL static MessageEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_30();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[3];
  v5 = v0[3];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = v1[2] == v0[2] && v4 == v5;
    if (!v6 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = v1[5];
  v8 = v0[5];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = v1[4] == v0[4] && v7 == v8;
    if (!v9 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = type metadata accessor for MessageEntity(0);
  if (sub_1CFD48CA8())
  {
    OUTLINED_FUNCTION_10();
    if (v13)
    {
      if (!v11)
      {
        return 0;
      }

      OUTLINED_FUNCTION_19(v12);
      v16 = v3 && v14 == v15;
      if (!v16 && (sub_1CFD49668() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_10();
    if (v19)
    {
      if (!v17)
      {
        return 0;
      }

      OUTLINED_FUNCTION_19(v18);
      v22 = v3 && v20 == v21;
      if (!v22 && (sub_1CFD49668() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_10();
    if (v25)
    {
      if (!v23)
      {
        return 0;
      }

      OUTLINED_FUNCTION_19(v24);
      v28 = v3 && v26 == v27;
      if (!v28 && (sub_1CFD49668() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v23)
    {
      return 0;
    }

    OUTLINED_FUNCTION_10();
    if (v31)
    {
      if (!v29)
      {
        return 0;
      }

      OUTLINED_FUNCTION_19(v30);
      v34 = v3 && v32 == v33;
      if (!v34 && (sub_1CFD49668() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    v35 = OUTLINED_FUNCTION_58(v10[12]);
    if (v35)
    {
      if (!v36 || (sub_1CFCDCA88(v35, v36) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v36)
    {
      return 0;
    }

    v37 = v10[13];
    memcpy(__dst, v1 + v37, 0x41uLL);
    memcpy(v112, v1 + v37, 0x41uLL);
    v38 = v10[13];
    memcpy(v114, v0 + v38, 0x41uLL);
    memcpy(__src, v0 + v38, 0x41uLL);
    sub_1CFCDB100(__dst, v110);
    sub_1CFCDB100(v114, v110);
    LOBYTE(v38) = static EntityHandle.== infix(_:_:)(v112, __src);
    memcpy(v115, __src, 0x41uLL);
    sub_1CFCDB1BC(v115);
    memcpy(v116, v112, 0x41uLL);
    sub_1CFCDB1BC(v116);
    if ((v38 & 1) == 0)
    {
      return 0;
    }

    v39 = OUTLINED_FUNCTION_58(v10[14]);
    if ((sub_1CFCDCB14(v39, v40) & 1) == 0)
    {
      return 0;
    }

    v41 = v10[15];
    v42 = *(v1 + v41);
    v43 = *(v1 + v41 + 8);
    v44 = (v0 + v41);
    v45 = v42 == *v44 && v43 == v44[1];
    if (!v45 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }

    v46 = OUTLINED_FUNCTION_58(v10[16]);
    if ((sub_1CFCDCC38(v46, v47) & 1) == 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v48 != 2)
      {
        return 0;
      }
    }

    else if (v48 == 2 || ((v48 ^ v49) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v50 != 2)
      {
        return 0;
      }
    }

    else if (v50 == 2 || ((v50 ^ v51) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v52 != 2)
      {
        return 0;
      }
    }

    else if (v52 == 2 || ((v52 ^ v53) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v54 != 2)
      {
        return 0;
      }
    }

    else if (v54 == 2 || ((v54 ^ v55) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v56 != 2)
      {
        return 0;
      }
    }

    else if (v56 == 2 || ((v56 ^ v57) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v58 != 2)
      {
        return 0;
      }
    }

    else if (v58 == 2 || ((v58 ^ v59) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v60 != 2)
      {
        return 0;
      }
    }

    else if (v60 == 2 || ((v60 ^ v61) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v62 != 2)
      {
        return 0;
      }
    }

    else if (v62 == 2 || ((v62 ^ v63) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_18();
    if (v3)
    {
      if (v64 != 2)
      {
        return 0;
      }
    }

    else if (v64 == 2 || ((v64 ^ v65) & 1) != 0)
    {
      return 0;
    }

    OUTLINED_FUNCTION_10();
    if (v68)
    {
      if (!v66)
      {
        return 0;
      }

      OUTLINED_FUNCTION_19(v67);
      v71 = v3 && v69 == v70;
      if (!v71 && (sub_1CFD49668() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v66)
    {
      return 0;
    }

    v72 = v10[27];
    v73 = *(v1 + v72);
    v74 = *(v0 + v72);
    if (v73 == 10)
    {
      if (v74 != 10)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(v112[0]) = v73;
      if (v74 == 10)
      {
        return 0;
      }

      LOBYTE(__src[0]) = v74;
      sub_1CFCDEFF8();
      if ((sub_1CFD48EE8() & 1) == 0)
      {
        return 0;
      }
    }

    v75 = OUTLINED_FUNCTION_58(v10[28]);
    if (sub_1CFCDCE30(v75, v76))
    {
      v77 = v10[29];
      v78 = *(v1 + v77);
      v79 = *(v0 + v77);
      if (v78 == 15)
      {
        if (v79 != 15)
        {
          return 0;
        }
      }

      else if (v78 != v79)
      {
        return 0;
      }

      OUTLINED_FUNCTION_10();
      if (v82)
      {
        if (!v80)
        {
          return 0;
        }

        OUTLINED_FUNCTION_19(v81);
        v85 = v3 && v83 == v84;
        if (!v85 && (sub_1CFD49668() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v80)
      {
        return 0;
      }

      OUTLINED_FUNCTION_10();
      if (v88)
      {
        if (!v86)
        {
          return 0;
        }

        OUTLINED_FUNCTION_19(v87);
        v91 = v3 && v89 == v90;
        if (!v91 && (sub_1CFD49668() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v86)
      {
        return 0;
      }

      OUTLINED_FUNCTION_10();
      if (v94)
      {
        if (!v92)
        {
          return 0;
        }

        OUTLINED_FUNCTION_19(v93);
        v97 = v3 && v95 == v96;
        if (!v97 && (sub_1CFD49668() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v92)
      {
        return 0;
      }

      OUTLINED_FUNCTION_18();
      if (v3)
      {
        if (v98 != 2)
        {
          return 0;
        }
      }

      else if (v98 == 2 || ((v98 ^ v99) & 1) != 0)
      {
        return 0;
      }

      v100 = v10[34];
      v101 = *(v1 + v100);
      v102 = *(v0 + v100);
      if (v101)
      {
        if (!v102)
        {
          return 0;
        }

        v103 = sub_1CFD48FA8();
        v105 = v104;
        if (v103 != sub_1CFD48FA8() || v105 != v106)
        {
          v108 = sub_1CFD49668();

          return (v108 & 1) != 0;
        }
      }

      else if (v102)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1CFCDCA88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1CFD49668() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1CFCDCB14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 72)
    {
      memcpy(__dst, v3, 0x41uLL);
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, 0x41uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1CFCDB100(__dst, v7);
      sub_1CFCDB100(v11, v7);
      sub_1CFCE0448();
      v5 = sub_1CFD48EE8();
      memcpy(v12, __src, 0x41uLL);
      sub_1CFCDB1BC(v12);
      memcpy(v13, v9, 0x41uLL);
      sub_1CFCDB1BC(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 72;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1CFCDCC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityAttachment(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1CFCE0398(v13, v10, type metadata accessor for EntityAttachment);
        sub_1CFCE0398(v14, v7, type metadata accessor for EntityAttachment);
        sub_1CFCDF1C8(&unk_1EC4F2B98);
        v16 = sub_1CFD48EE8();
        sub_1CFCE03F4();
        sub_1CFCE03F4();
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1CFCDCE30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 80)
    {
      memcpy(__dst, v3, 0x49uLL);
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, 0x49uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1CFCE0294(__dst, v7);
      sub_1CFCE0294(v11, v7);
      sub_1CFCE02F0();
      v5 = sub_1CFD48EE8();
      memcpy(v12, __src, 0x49uLL);
      sub_1CFCE0344(v12);
      memcpy(v13, v9, 0x49uLL);
      sub_1CFCE0344(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 80;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1CFCDCF54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_20(0x6449657571696E75, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_20(0x64496E69616D6F64, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_36();
      v8 = v4 && v7 == a2;
      if (v8 || (OUTLINED_FUNCTION_20(0xD000000000000010, v7) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000011 && 0x80000001CFD5D6B0 == a2;
        if (v9 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D6B0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_56();
          v12 = a1 == v10 && a2 == v11;
          if (v12 || (OUTLINED_FUNCTION_20(v10, v11) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_48();
            v15 = a1 == v13 && a2 == v14;
            if (v15 || (OUTLINED_FUNCTION_20(v13, v14) & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_36();
              v17 = v4 && v16 == a2;
              if (v17 || (OUTLINED_FUNCTION_20(0xD000000000000010, v16) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = OUTLINED_FUNCTION_46();
                v20 = a1 == v18 && a2 == v19;
                if (v20 || (OUTLINED_FUNCTION_20(v18, v19) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v21 = OUTLINED_FUNCTION_45();
                  v23 = a1 == v21 && a2 == v22;
                  if (v23 || (OUTLINED_FUNCTION_20(v21, v22) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v24 = OUTLINED_FUNCTION_55();
                    v26 = a1 == v24 && a2 == v25;
                    if (v26 || (OUTLINED_FUNCTION_20(v24, v25) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_36();
                      v28 = v4 && v27 == a2;
                      if (v28 || (OUTLINED_FUNCTION_20(0xD000000000000010, v27) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v29 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
                        if (v29 || (OUTLINED_FUNCTION_20(0x746E65746E6F63, 0xE700000000000000) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v30 = OUTLINED_FUNCTION_57();
                          v32 = a1 == v30 && a2 == v31;
                          if (v32 || (OUTLINED_FUNCTION_20(v30, v31) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v33 = a1 == 0x77654E7369 && a2 == 0xE500000000000000;
                            if (v33 || (OUTLINED_FUNCTION_20(0x77654E7369, 0xE500000000000000) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v34 = OUTLINED_FUNCTION_52();
                              v36 = a1 == v34 && a2 == v35;
                              if (v36 || (OUTLINED_FUNCTION_20(v34, v35) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v37 = a1 == 0x654D6D6F72467369 && a2 == 0xE800000000000000;
                                if (v37 || (OUTLINED_FUNCTION_20(0x654D6D6F72467369, 0xE800000000000000) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v38 = a1 == 0xD000000000000011 && 0x80000001CFD5D710 == a2;
                                  if (v38 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D710) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v39 = OUTLINED_FUNCTION_51();
                                    v41 = a1 == v39 && a2 == v40;
                                    if (v41 || (OUTLINED_FUNCTION_20(v39, v40) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v42 = a1 == 0x6B6E754A7369 && a2 == 0xE600000000000000;
                                      if (v42 || (OUTLINED_FUNCTION_20(0x6B6E754A7369, 0xE600000000000000) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v43 = a1 == 0x646165527369 && a2 == 0xE600000000000000;
                                        if (v43 || (OUTLINED_FUNCTION_20(0x646165527369, 0xE600000000000000) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v44 = a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000;
                                          if (v44 || (OUTLINED_FUNCTION_20(0x64656E6E69507369, 0xE800000000000000) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v45 = OUTLINED_FUNCTION_50();
                                            v47 = a1 == v45 && a2 == v46;
                                            if (v47 || (OUTLINED_FUNCTION_20(v45, v46) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v48 = a1 == 0xD00000000000001ALL && 0x80000001CFD5D730 == a2;
                                              if (v48 || (OUTLINED_FUNCTION_20(0xD00000000000001ALL, 0x80000001CFD5D730) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v49 = a1 == 0x546B636162706174 && a2 == 0xEB00000000657079;
                                                if (v49 || (OUTLINED_FUNCTION_20(0x546B636162706174, 0xEB00000000657079) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_36();
                                                  v51 = v4 && v50 == a2;
                                                  if (v51 || (OUTLINED_FUNCTION_20(0xD000000000000010, v50) & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v52 = OUTLINED_FUNCTION_49();
                                                    v54 = a1 == v52 && a2 == v53;
                                                    if (v54 || (OUTLINED_FUNCTION_20(v52, v53) & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v55 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
                                                      if (v55 || (OUTLINED_FUNCTION_20(0x546567617373656DLL, 0xEB00000000657079) & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v56 = OUTLINED_FUNCTION_47();
                                                        v58 = a1 == v56 && a2 == v57;
                                                        if (v58 || (OUTLINED_FUNCTION_20(v56, v57) & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v59 = OUTLINED_FUNCTION_53();
                                                          v61 = a1 == v59 && a2 == v60;
                                                          if (v61 || (OUTLINED_FUNCTION_20(v59, v60) & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v62 = a1 == 0xD000000000000011 && 0x80000001CFD5D770 == a2;
                                                            if (v62 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D770) & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else if (a1 == 0xD000000000000012 && 0x80000001CFD5D790 == a2)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v64 = OUTLINED_FUNCTION_20(0xD000000000000012, 0x80000001CFD5D790);

                                                              if (v64)
                                                              {
                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                return 31;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CFCDD5C0(unsigned __int8 a1)
{
  sub_1CFD49728();
  MEMORY[0x1D3874010](a1);
  return sub_1CFD49758();
}

uint64_t sub_1CFCDD608(char a1)
{
  result = 0x6449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0x64496E69616D6F64;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 16:
    case 29:
      result = 0xD000000000000011;
      break;
    case 4:
      result = OUTLINED_FUNCTION_56();
      break;
    case 5:
      result = OUTLINED_FUNCTION_48();
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = OUTLINED_FUNCTION_46();
      break;
    case 8:
      result = OUTLINED_FUNCTION_45();
      break;
    case 9:
      result = OUTLINED_FUNCTION_55();
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x746E65746E6F63;
      break;
    case 12:
      result = OUTLINED_FUNCTION_57();
      break;
    case 13:
      result = 0x77654E7369;
      break;
    case 14:
      result = OUTLINED_FUNCTION_52();
      break;
    case 15:
      result = 0x654D6D6F72467369;
      break;
    case 17:
      result = OUTLINED_FUNCTION_51();
      break;
    case 18:
      result = 0x6B6E754A7369;
      break;
    case 19:
      result = 0x646165527369;
      break;
    case 20:
      result = 0x64656E6E69507369;
      break;
    case 21:
      result = OUTLINED_FUNCTION_50();
      break;
    case 22:
      result = 0xD00000000000001ALL;
      break;
    case 23:
      result = 0x546B636162706174;
      break;
    case 24:
      result = 0xD000000000000010;
      break;
    case 25:
      result = OUTLINED_FUNCTION_49();
      break;
    case 26:
      result = 0x546567617373656DLL;
      break;
    case 27:
      result = OUTLINED_FUNCTION_47();
      break;
    case 28:
      result = OUTLINED_FUNCTION_53();
      break;
    case 30:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCDD8FC()
{
  v1 = *v0;
  sub_1CFD49728();
  MEMORY[0x1D3874010](v1);
  return sub_1CFD49758();
}

uint64_t sub_1CFCDD948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCDCF54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCDD984(uint64_t a1)
{
  v2 = sub_1CFCDF0D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCDD9C0(uint64_t a1)
{
  v2 = sub_1CFCDF0D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A88, &unk_1CFD49EF0);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCDF0D8();
  sub_1CFD497A8();
  __dst[0] = 0;
  OUTLINED_FUNCTION_13();
  sub_1CFD495E8();
  if (!v2)
  {
    __dst[0] = 1;
    OUTLINED_FUNCTION_13();
    sub_1CFD495B8();
    __dst[0] = 2;
    OUTLINED_FUNCTION_13();
    sub_1CFD495B8();
    v11 = type metadata accessor for MessageEntity(0);
    __dst[0] = 3;
    sub_1CFD48CC8();
    OUTLINED_FUNCTION_31();
    sub_1CFCDF1C8(v12);
    OUTLINED_FUNCTION_16();
    sub_1CFD49618();
    OUTLINED_FUNCTION_34(v11[8]);
    __dst[0] = 4;
    OUTLINED_FUNCTION_13();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[9]);
    __dst[0] = 5;
    OUTLINED_FUNCTION_13();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[10]);
    __dst[0] = 6;
    OUTLINED_FUNCTION_13();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[11]);
    __dst[0] = 7;
    OUTLINED_FUNCTION_13();
    sub_1CFD495B8();
    v21 = *(v3 + v11[12]);
    __dst[71] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    sub_1CFCDF3E8(&qword_1EDDD2B28);
    OUTLINED_FUNCTION_16();
    sub_1CFD495D8();
    v13 = v11[13];
    memcpy(__dst, (v3 + v13), 0x41uLL);
    memcpy(__src, (v3 + v13), sizeof(__src));
    v18[71] = 9;
    sub_1CFCDB100(__dst, v18);
    sub_1CFCDF174();
    OUTLINED_FUNCTION_15();
    sub_1CFD49618();
    memcpy(v18, __src, 0x41uLL);
    sub_1CFCDB1BC(v18);
    OUTLINED_FUNCTION_33(v11[14]);
    OUTLINED_FUNCTION_39(10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    sub_1CFCDF4A4(&unk_1EC4F2AB0);
    OUTLINED_FUNCTION_12();
    sub_1CFD49618();
    OUTLINED_FUNCTION_34(v11[15]);
    OUTLINED_FUNCTION_9(11);
    sub_1CFD495E8();
    OUTLINED_FUNCTION_33(v11[16]);
    OUTLINED_FUNCTION_39(12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFCDF510(&qword_1EC4F2AC0);
    OUTLINED_FUNCTION_12();
    sub_1CFD49618();
    OUTLINED_FUNCTION_8(13);
    OUTLINED_FUNCTION_8(14);
    OUTLINED_FUNCTION_8(15);
    OUTLINED_FUNCTION_8(16);
    OUTLINED_FUNCTION_8(17);
    OUTLINED_FUNCTION_8(18);
    OUTLINED_FUNCTION_8(19);
    OUTLINED_FUNCTION_8(20);
    OUTLINED_FUNCTION_8(21);
    OUTLINED_FUNCTION_34(v11[26]);
    OUTLINED_FUNCTION_9(22);
    sub_1CFD495B8();
    v17[0] = *(v3 + v11[27]);
    OUTLINED_FUNCTION_39(23);
    sub_1CFCDF20C();
    OUTLINED_FUNCTION_15();
    sub_1CFD495D8();
    OUTLINED_FUNCTION_33(v11[28]);
    OUTLINED_FUNCTION_39(24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AD8, &qword_1CFD49F10);
    sub_1CFCDF260(&unk_1EC4F2AE0);
    OUTLINED_FUNCTION_12();
    sub_1CFD49618();
    v17[0] = *(v3 + v11[29]);
    OUTLINED_FUNCTION_39(25);
    sub_1CFCDF320();
    OUTLINED_FUNCTION_15();
    sub_1CFD495D8();
    OUTLINED_FUNCTION_34(v11[30]);
    OUTLINED_FUNCTION_9(26);
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[31]);
    OUTLINED_FUNCTION_9(27);
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[32]);
    OUTLINED_FUNCTION_9(28);
    sub_1CFD495B8();
    OUTLINED_FUNCTION_8(29);
    OUTLINED_FUNCTION_33(v11[34]);
    OUTLINED_FUNCTION_39(30);
    type metadata accessor for FileProtectionType(0);
    OUTLINED_FUNCTION_3();
    sub_1CFCDF1C8(v14);
    OUTLINED_FUNCTION_12();
    sub_1CFD495D8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t MessageEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_37();
  v75 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2B00, &qword_1CFD49F18);
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - v9;
  type metadata accessor for MessageEntity(0);
  OUTLINED_FUNCTION_25();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 108);
  *(v14 + v15) = 10;
  v88 = v14;
  v89 = v12;
  v16 = *(v12 + 116);
  *(v14 + v16) = 15;
  v17 = a1[3];
  v87 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CFCDF0D8();
  v78 = v10;
  sub_1CFD49788();
  if (!v2)
  {
    v19 = v7;
    v72 = v15;
    v73 = v16;
    LOBYTE(__dst[0]) = 0;
    v20 = sub_1CFD49548();
    v23 = v88;
    *v88 = v20;
    *(v23 + 1) = v24;
    v25 = OUTLINED_FUNCTION_22(1);
    v26 = v89;
    v28 = v27;
    *(v23 + 2) = v25;
    *(v23 + 3) = v27;
    v29 = OUTLINED_FUNCTION_22(2);
    v74 = v28;
    *(v23 + 4) = v29;
    *(v23 + 5) = v30;
    v85 = v30;
    LOBYTE(__dst[0]) = 3;
    OUTLINED_FUNCTION_31();
    sub_1CFCDF1C8(v31);
    v32 = v76;
    sub_1CFD49578();
    (*(v75 + 32))(&v23[v26[7]], v19, v32);
    v33 = OUTLINED_FUNCTION_22(4);
    OUTLINED_FUNCTION_60(v33, v34, v26[8]);
    v86 = v35;
    v36 = OUTLINED_FUNCTION_22(5);
    OUTLINED_FUNCTION_60(v36, v37, v26[9]);
    v84 = v38;
    v39 = OUTLINED_FUNCTION_22(6);
    OUTLINED_FUNCTION_60(v39, v40, v26[10]);
    v83 = v41;
    v42 = OUTLINED_FUNCTION_22(7);
    OUTLINED_FUNCTION_60(v42, v43, v26[11]);
    v82 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    LOBYTE(v90) = 8;
    sub_1CFCDF3E8(&qword_1EDDD2B20);
    sub_1CFD49538();
    v45 = v26[12];
    v81 = __dst[0];
    *&v23[v45] = __dst[0];
    v93 = 9;
    sub_1CFCDF450();
    sub_1CFD49578();
    memcpy(v88 + v89[13], __dst, 0x41uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    v92 = 10;
    sub_1CFCDF4A4(&qword_1EC4F2B18);
    OUTLINED_FUNCTION_11_0();
    sub_1CFD49578();
    *(v88 + v89[14]) = v90;
    OUTLINED_FUNCTION_1(11);
    v46 = sub_1CFD49548();
    OUTLINED_FUNCTION_63(v46, v47, v89[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    v92 = 12;
    sub_1CFCDF510(&qword_1EC4F2B20);
    OUTLINED_FUNCTION_11_0();
    sub_1CFD49578();
    *(v88 + v89[16]) = v90;
    OUTLINED_FUNCTION_1(13);
    *(v88 + v89[17]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(14);
    *(v88 + v89[18]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(15);
    *(v88 + v89[19]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(16);
    *(v88 + v89[20]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(17);
    *(v88 + v89[21]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(18);
    *(v88 + v89[22]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(19);
    *(v88 + v89[23]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(20);
    *(v88 + v89[24]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(21);
    *(v88 + v89[25]) = sub_1CFD49528();
    OUTLINED_FUNCTION_1(22);
    v48 = sub_1CFD49518();
    v80 = v49;
    v50 = (v88 + v89[26]);
    *v50 = v48;
    v50[1] = v49;
    v92 = 23;
    v51 = sub_1CFCDF5A0();
    OUTLINED_FUNCTION_38(&type metadata for TapbackType, v52, v53, v54, v51);
    *(v88 + v72) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AD8, &qword_1CFD49F10);
    v92 = 24;
    sub_1CFCDF260(&unk_1EC4F2B38);
    OUTLINED_FUNCTION_11_0();
    sub_1CFD49578();
    *(v88 + v89[28]) = v90;
    v92 = 25;
    v55 = sub_1CFCDF648();
    OUTLINED_FUNCTION_38(&type metadata for MessageEntity.MessageEffect, v56, v57, v58, v55);
    *(v88 + v73) = v90;
    OUTLINED_FUNCTION_1(26);
    v59 = sub_1CFD49518();
    OUTLINED_FUNCTION_63(v59, v60, v89[30]);
    OUTLINED_FUNCTION_2(27);
    v61 = sub_1CFD49518();
    OUTLINED_FUNCTION_63(v61, v62, v89[31]);
    OUTLINED_FUNCTION_2(28);
    v63 = sub_1CFD49518();
    OUTLINED_FUNCTION_63(v63, v64, v89[32]);
    OUTLINED_FUNCTION_2(29);
    *(v88 + v89[33]) = sub_1CFD49528();
    type metadata accessor for FileProtectionType(0);
    v92 = 30;
    OUTLINED_FUNCTION_3();
    sub_1CFCDF1C8(v65);
    OUTLINED_FUNCTION_11_0();
    sub_1CFD49538();
    v66 = v89[34];
    v67 = OUTLINED_FUNCTION_5();
    v68(v67);
    v69 = v88;
    *(v88 + v66) = v90;
    sub_1CFCE0398(v69, v77, type metadata accessor for MessageEntity);
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_27();
    return sub_1CFCE03F4();
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_43();
  v21 = v88;
  v22 = v89;
  __swift_destroy_boxed_opaque_existential_1(v87);

  if (v78)
  {
    memcpy(__dst, v21 + v22[13], 0x41uLL);
    sub_1CFCDB1BC(__dst);
  }

  if (!v77)
  {
    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_13:

    if (!v18)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v15)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v18)
  {
LABEL_8:
  }

LABEL_9:

  if (v79)
  {
  }
}

uint64_t sub_1CFCDEE70(uint64_t a1, id *a2)
{
  result = sub_1CFD48F88();
  *a2 = 0;
  return result;
}

uint64_t sub_1CFCDEEEC(uint64_t a1, id *a2)
{
  v3 = sub_1CFD48F98();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CFCDEF6C(uint64_t a1)
{
  sub_1CFD48FA8();
  v1 = sub_1CFD48F78();

  return v1;
}

uint64_t sub_1CFCDEFB0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1CFD48F78();

  *a2 = v3;
  return result;
}

unint64_t sub_1CFCDEFF8()
{
  result = qword_1EC4F2A80;
  if (!qword_1EC4F2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2A80);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1CFCDF0D8()
{
  result = qword_1EC4F3800[0];
  if (!qword_1EC4F3800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F3800);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1CFCDF174()
{
  result = qword_1EC4F2AA0;
  if (!qword_1EC4F2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2AA0);
  }

  return result;
}

unint64_t sub_1CFCDF1C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_44(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1CFCDF20C()
{
  result = qword_1EC4F2AD0;
  if (!qword_1EC4F2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2AD0);
  }

  return result;
}

unint64_t sub_1CFCDF260(uint64_t a1)
{
  result = OUTLINED_FUNCTION_44(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AD8, &qword_1CFD49F10);
    v4();
    OUTLINED_FUNCTION_42();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1CFCDF2CC()
{
  result = qword_1EC4F2AE8;
  if (!qword_1EC4F2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2AE8);
  }

  return result;
}

unint64_t sub_1CFCDF320()
{
  result = qword_1EC4F2AF0;
  if (!qword_1EC4F2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2AF0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1CFCDF3E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_44(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1CFCDF450()
{
  result = qword_1EC4F2B10;
  if (!qword_1EC4F2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2B10);
  }

  return result;
}

unint64_t sub_1CFCDF4A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_44(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    v4();
    OUTLINED_FUNCTION_42();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1CFCDF510(uint64_t a1)
{
  result = OUTLINED_FUNCTION_44(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFCDF1C8(v4);
    OUTLINED_FUNCTION_42();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1CFCDF5A0()
{
  result = qword_1EC4F2B30;
  if (!qword_1EC4F2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2B30);
  }

  return result;
}

unint64_t sub_1CFCDF5F4()
{
  result = qword_1EC4F2B40;
  if (!qword_1EC4F2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2B40);
  }

  return result;
}

unint64_t sub_1CFCDF648()
{
  result = qword_1EC4F2B48;
  if (!qword_1EC4F2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2B48);
  }

  return result;
}

unint64_t sub_1CFCDF6A0()
{
  result = qword_1EC4F2B58;
  if (!qword_1EC4F2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2B58);
  }

  return result;
}

unint64_t sub_1CFCDF6F4(uint64_t a1)
{
  result = sub_1CFCDF1C8(&qword_1EDDD2EB8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CFCDF74C(uint64_t a1)
{
  *(a1 + 8) = sub_1CFCDF1C8(&unk_1EDDD2EC0);
  result = sub_1CFCDF1C8(&unk_1EDDD2EC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CFCDF848(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6158];
  v2 = OUTLINED_FUNCTION_6();
  sub_1CFCDFB20(v2, v3, v1, v4);
  v6 = v5;
  if (v7 <= 0x3F)
  {
    v8 = sub_1CFD48CC8();
    if (v9 > 0x3F)
    {
      return v8;
    }

    sub_1CFCDFABC(319);
    if (v10 > 0x3F)
    {
      return v8;
    }

    OUTLINED_FUNCTION_32(v8, &qword_1EDDD3338, &type metadata for EntityHandle);
    if (v11 > 0x3F)
    {
      return v8;
    }

    sub_1CFCDFB70(319, &qword_1EDDD3320, type metadata accessor for EntityAttachment, MEMORY[0x1E69E62F8]);
    if (v12 > 0x3F)
    {
      return v8;
    }

    v13 = OUTLINED_FUNCTION_6();
    sub_1CFCDFB20(v13, v14, v15, v16);
    if (v18 > 0x3F)
    {
      return v17;
    }

    v19 = OUTLINED_FUNCTION_6();
    sub_1CFCDFB20(v19, v20, v21, v22);
    if (v23 > 0x3F)
    {
      return v8;
    }

    OUTLINED_FUNCTION_32(v8, &qword_1EDDD3328, &type metadata for ResolvedTapback);
    if (v24 > 0x3F)
    {
      return v8;
    }

    v25 = OUTLINED_FUNCTION_6();
    sub_1CFCDFB20(v25, v26, v27, v28);
    if (v29 > 0x3F)
    {
      return v8;
    }

    else
    {
      sub_1CFCDFB70(319, &qword_1EDDD3300, type metadata accessor for FileProtectionType, MEMORY[0x1E69E6720]);
      v6 = v30;
      if (v31 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v6;
}

void sub_1CFCDFABC(uint64_t a1)
{
  if (!qword_1EDDD3310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    v1 = sub_1CFD49338();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDD3310);
    }
  }
}

void sub_1CFCDFB20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CFCDFB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for MessageEntity.MessageEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageEntity.MessageEffect(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFCDFEC0()
{
  result = qword_1EC4F3B90[0];
  if (!qword_1EC4F3B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F3B90);
  }

  return result;
}

uint64_t sub_1CFCDFF14(uint64_t a1)
{
  v2 = sub_1CFCDF1C8(&unk_1EC4F2B78);
  v3 = sub_1CFCDF1C8(&unk_1EC4F2B80);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFCE0080(uint64_t a1)
{
  v1 = sub_1CFD48FA8();
  v2 = MEMORY[0x1D38739A0](v1);

  return v2;
}

uint64_t sub_1CFCE00C0(uint64_t a1, uint64_t a2)
{
  sub_1CFD48FA8();
  sub_1CFD49038();
}

unint64_t sub_1CFCE0120()
{
  result = qword_1EC4F3CA0;
  if (!qword_1EC4F3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3CA0);
  }

  return result;
}

unint64_t sub_1CFCE0178()
{
  result = qword_1EC4F3CA8[0];
  if (!qword_1EC4F3CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F3CA8);
  }

  return result;
}

uint64_t sub_1CFCE01CC(uint64_t a1, uint64_t a2)
{
  sub_1CFD48FA8();
  sub_1CFD49728();
  sub_1CFD49038();
  v2 = sub_1CFD49758();

  return v2;
}

unint64_t sub_1CFCE0240()
{
  result = qword_1EC4F2B88;
  if (!qword_1EC4F2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2B88);
  }

  return result;
}

unint64_t sub_1CFCE02F0()
{
  result = qword_1EC4F2B90;
  if (!qword_1EC4F2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2B90);
  }

  return result;
}

uint64_t sub_1CFCE0398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_25();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t sub_1CFCE03F4()
{
  v1 = OUTLINED_FUNCTION_21();
  v2(v1);
  OUTLINED_FUNCTION_25();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1CFCE0448()
{
  result = qword_1EC4F2BA0;
  if (!qword_1EC4F2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2BA0);
  }

  return result;
}

void OUTLINED_FUNCTION_0()
{
  *(v0 - 264) = 0;
  *(v0 - 272) = 0;
  *(v0 - 256) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
}

uint64_t OUTLINED_FUNCTION_8@<X0>(char a2@<W8>)
{
  *(v2 - 304) = a2;

  return sub_1CFD495C8();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2)
{

  return sub_1CFD49668();
}

uint64_t OUTLINED_FUNCTION_22@<X0>(char a1@<W8>)
{
  *(v1 - 160) = a1;

  return sub_1CFD49518();
}

uint64_t OUTLINED_FUNCTION_28()
{
}

uint64_t OUTLINED_FUNCTION_29()
{

  return type metadata accessor for MessageEntity(0);
}

void OUTLINED_FUNCTION_32(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_1CFCDFB20(319, a2, a3, v4);
}

void *OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1CFD49538();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return type metadata accessor for MessageEntity(0);
}

uint64_t OUTLINED_FUNCTION_41()
{
}

void OUTLINED_FUNCTION_43()
{
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
}

uint64_t OUTLINED_FUNCTION_60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_62()
{
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 200) = 0;
}

uint64_t OUTLINED_FUNCTION_63@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_64()
{

  return type metadata accessor for MessageEntity(0);
}

uint64_t EntityAttachment.type.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EntityAttachment.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EntityAttachment(0) + 20);
  sub_1CFD48DF8();
  OUTLINED_FUNCTION_25();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EntityAttachment(uint64_t a1)
{
  result = qword_1EDDD6020;
  if (!qword_1EDDD6020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EntityAttachment.contentType.setter()
{
  v2 = *(OUTLINED_FUNCTION_15_0() + 20);
  sub_1CFD48DF8();
  OUTLINED_FUNCTION_25();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t EntityAttachment.filename.getter()
{
  type metadata accessor for EntityAttachment(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t EntityAttachment.filename.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_13_0() + 24));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t EntityAttachment.path.getter()
{
  type metadata accessor for EntityAttachment(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t EntityAttachment.path.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_13_0() + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t EntityAttachment.contentDescription.getter()
{
  type metadata accessor for EntityAttachment(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t EntityAttachment.contentDescription.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_13_0() + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t EntityAttachment.init(type:contentType:filename:path:contentDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a8;
  v52 = a5;
  v54 = a9;
  v55 = a7;
  v49 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BA8, &qword_1CFD4A3C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_9_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = sub_1CFD48DF8();
  OUTLINED_FUNCTION_37();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v47 = (v26 - v25);
  v27 = type metadata accessor for EntityAttachment(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = (v30 - v29);
  sub_1CFCE1180(a3, v17);
  OUTLINED_FUNCTION_17_0(v17);
  v50 = a6;
  v53 = a2;
  v48 = a1;
  if (v32)
  {
    OUTLINED_FUNCTION_27();
    sub_1CFCE11F0(a6, v55, v33);
    sub_1CFCE1538(a3);
    OUTLINED_FUNCTION_17_0(v17);
    v34 = v23;
    if (!v32)
    {
      sub_1CFCE1538(v17);
    }
  }

  else
  {
    sub_1CFCE1538(a3);
    (*(v23 + 32))(v20, v17, v21);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    v34 = v23;
  }

  OUTLINED_FUNCTION_17_0(v20);
  if (v32)
  {

    sub_1CFCE1538(v20);
    return __swift_storeEnumTagSinglePayload(v54, 1, 1, v27);
  }

  else
  {
    v35 = (v31 + v27[6]);
    v36 = (v31 + v27[7]);
    v37 = (v31 + v27[8]);
    v38 = *(v34 + 32);
    v46 = a10;
    v39 = v47;
    v38(v47, v20, v21);
    v40 = v53;
    *v31 = v48;
    v31[1] = v40;
    v38(v31 + v27[5], v39, v21);
    v41 = v52;
    *v35 = v49;
    v35[1] = v41;
    v43 = v54;
    v42 = v55;
    *v36 = v50;
    v36[1] = v42;
    v44 = v46;
    *v37 = v51;
    v37[1] = v44;
    sub_1CFCE15A0(v31, v43);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v27);
    return sub_1CFCE1604(v31);
  }
}

uint64_t sub_1CFCE1180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BA8, &qword_1CFD4A3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFCE11F0@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BA8, &qword_1CFD4A3C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_9_0();
  v38 = v8 - v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = sub_1CFD48DF8();
  OUTLINED_FUNCTION_37();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - v24;

  sub_1CFD48E08();
  OUTLINED_FUNCTION_8_0(v13);
  if (v26)
  {

    sub_1CFD48DE8();
    sub_1CFD48DB8();
    OUTLINED_FUNCTION_8_0(v13);
    if (!v26)
    {
      sub_1CFCE1538(v13);
    }
  }

  else
  {
    (*(v18 + 32))(v15, v13, v16);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  }

  OUTLINED_FUNCTION_8_0(v15);
  if (v26)
  {
    sub_1CFCE1538(v15);
    v27 = 1;
  }

  else
  {
    v36 = a5;
    v28 = *(v18 + 32);
    v28(v25, v15, v16);
    sub_1CFD48DE8();
    v29 = sub_1CFD48DD8();
    v30 = *(v18 + 8);
    v30(v22, v16);
    if ((v29 & 1) != 0 && a4)
    {
      v31 = sub_1CFD48F78();
      v32 = [v31 pathExtension];

      sub_1CFD48FA8();
      sub_1CFD48DE8();
      v33 = v38;
      sub_1CFD48DC8();
      OUTLINED_FUNCTION_8_0(v33);
      if (v26)
      {
        sub_1CFCE1538(v33);
      }

      else
      {
        v30(v25, v16);
        v28(v25, v33, v16);
      }
    }

    a5 = v36;
    v28(v36, v25, v16);
    v27 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v27, 1, v16);
}

uint64_t sub_1CFCE1538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BA8, &qword_1CFD4A3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFCE15A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFCE1604(uint64_t a1)
{
  v2 = type metadata accessor for EntityAttachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static EntityAttachment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for EntityAttachment(0);
  if ((sub_1CFD48DD8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v4);
    v8 = v2 && v6 == v7;
    if (!v8 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v10);
    v14 = v2 && v12 == v13;
    if (!v14 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v17)
  {
    if (v15)
    {
      OUTLINED_FUNCTION_19(v16);
      v20 = v2 && v18 == v19;
      if (v20 || (sub_1CFD49668() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v15)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1CFCE1768(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_20(1701869940, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_14();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_20(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
      if (v9 || (OUTLINED_FUNCTION_20(0x656D616E656C6966, 0xE800000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 1752457584 && a2 == 0xE400000000000000;
        if (v10 || (OUTLINED_FUNCTION_20(1752457584, 0xE400000000000000) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001CFD5D7B0 == a2)
        {

          return 4;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_20(0xD000000000000012, 0x80000001CFD5D7B0);

          if (v12)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1CFCE18C0(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_14();
      break;
    case 2:
      result = 0x656D616E656C6966;
      break;
    case 3:
      result = 1752457584;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCE195C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCE1768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCE1990(uint64_t a1)
{
  v2 = sub_1CFCE1C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCE19CC(uint64_t a1)
{
  v2 = sub_1CFCE1C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityAttachment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BB0, &qword_1CFD4A3C8);
  OUTLINED_FUNCTION_37();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE1C14();
  sub_1CFD497A8();
  v10[15] = 0;
  OUTLINED_FUNCTION_4_0();
  sub_1CFD495E8();
  if (!v1)
  {
    type metadata accessor for EntityAttachment(0);
    v10[14] = 1;
    sub_1CFD48DF8();
    sub_1CFCE2074(&qword_1EC4F2BB8, MEMORY[0x1E69E8458]);
    sub_1CFD49618();
    v10[13] = 2;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495B8();
    v10[12] = 3;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495B8();
    v10[11] = 4;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495B8();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1CFCE1C14()
{
  result = qword_1EC4F3D30[0];
  if (!qword_1EC4F3D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F3D30);
  }

  return result;
}

uint64_t EntityAttachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1CFD48DF8();
  OUTLINED_FUNCTION_37();
  v44 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BC0, &qword_1CFD4A3D0);
  OUTLINED_FUNCTION_37();
  v43 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - v11;
  v13 = type metadata accessor for EntityAttachment(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE1C14();
  v45 = v12;
  v18 = v47;
  sub_1CFD49788();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v43;
  v20 = v44;
  v41 = v13;
  v52 = 0;
  *v17 = sub_1CFD49548();
  v17[1] = v21;
  v47 = v21;
  v51 = 1;
  sub_1CFCE2074(&qword_1EC4F2BC8, MEMORY[0x1E69E8470]);
  v22 = v8;
  v23 = v3;
  sub_1CFD49578();
  v24 = v41;
  (*(v20 + 32))(v17 + *(v41 + 20), v22, v23);
  v50 = 2;
  v25 = v45;
  v40[2] = 0;
  v26 = sub_1CFD49518();
  v28 = v27;
  v29 = (v17 + *(v24 + 24));
  *v29 = v26;
  v29[1] = v27;
  v49 = 3;
  v30 = sub_1CFD49518();
  v40[1] = v28;
  v31 = (v17 + *(v24 + 28));
  *v31 = v30;
  v31[1] = v32;
  v48 = 4;
  v33 = sub_1CFD49518();
  v34 = a1;
  v35 = (v17 + *(v41 + 32));
  v36 = v25;
  v38 = v37;
  (*(v19 + 8))(v36, v46);
  *v35 = v33;
  v35[1] = v38;
  sub_1CFCE15A0(v17, v42);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_1CFCE1604(v17);
}

uint64_t sub_1CFCE2074(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFD48DF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFCE2114(uint64_t a1)
{
  sub_1CFD48DF8();
  if (v1 <= 0x3F)
  {
    sub_1CFCE21B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFCE21B0()
{
  if (!qword_1EDDD3340[0])
  {
    v0 = sub_1CFD49338();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDD3340);
    }
  }
}

uint64_t getEnumTagSinglePayload for EntityAttachment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntityAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFCE2368()
{
  result = qword_1EC4F3FC0[0];
  if (!qword_1EC4F3FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F3FC0);
  }

  return result;
}

unint64_t sub_1CFCE23C0()
{
  result = qword_1EC4F40D0;
  if (!qword_1EC4F40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F40D0);
  }

  return result;
}

unint64_t sub_1CFCE2418()
{
  result = qword_1EC4F40D8[0];
  if (!qword_1EC4F40D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F40D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return type metadata accessor for EntityAttachment(0);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return type metadata accessor for EntityAttachment(0);
}

uint64_t NotificationStackEntity.uniqueId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotificationStackEntity.domainId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NotificationStackEntity.donatingBundleId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t NotificationStackEntity.absoluteTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NotificationStackEntity(0) + 28);

  return sub_1CFCE2770(v3, a1);
}

uint64_t type metadata accessor for NotificationStackEntity(uint64_t a1)
{
  result = qword_1EDDD3ED0;
  if (!qword_1EDDD3ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFCE2770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NotificationStackEntity.absoluteTimestamp.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_0() + 28);

  return sub_1CFCE281C(v0, v2);
}

uint64_t sub_1CFCE281C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NotificationStackEntity.notificationIds.getter()
{
  type metadata accessor for NotificationStackEntity(0);
}

uint64_t NotificationStackEntity.notificationIds.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_0() + 32);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NotificationStackEntity.appBundleId.getter()
{
  type metadata accessor for NotificationStackEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationStackEntity.appBundleId.setter()
{
  v3 = OUTLINED_FUNCTION_8_1();
  v4 = (v1 + *(type metadata accessor for NotificationStackEntity(v3) + 36));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t NotificationStackEntity.threadId.getter()
{
  type metadata accessor for NotificationStackEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationStackEntity.threadId.setter()
{
  v3 = OUTLINED_FUNCTION_8_1();
  v4 = (v1 + *(type metadata accessor for NotificationStackEntity(v3) + 40));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t NotificationStackEntity.sectionId.getter()
{
  type metadata accessor for NotificationStackEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationStackEntity.sectionId.setter()
{
  v3 = OUTLINED_FUNCTION_8_1();
  v4 = (v1 + *(type metadata accessor for NotificationStackEntity(v3) + 44));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t NotificationStackEntity.init(uniqueId:domainId:donatingBundleId:absoluteTimestamp:notificationIds:appBundleId:threadId:sectionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = type metadata accessor for NotificationStackEntity(0);
  v21 = v20[7];
  v22 = sub_1CFD48CC8();
  __swift_storeEnumTagSinglePayload(a9 + v21, 1, 1, v22);
  v23 = (a9 + v20[9]);
  v24 = (a9 + v20[10]);
  v25 = (a9 + v20[11]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  result = sub_1CFCE281C(a7, a9 + v21);
  *(a9 + v20[8]) = a8;
  *v23 = a10;
  v23[1] = a11;
  *v24 = a12;
  v24[1] = a13;
  *v25 = a14;
  v25[1] = a15;
  return result;
}

uint64_t static NotificationStackEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_37();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD8, &qword_1CFD4A5B8);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = *v1 == *v0 && v1[1] == v0[1];
  if (!v14 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v15 = v1[3];
  v16 = v0[3];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = v1[2] == v0[2] && v15 == v16;
    if (!v17 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v1[5];
  v19 = v0[5];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = v1[4] == v0[4] && v18 == v19;
    if (!v20 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = type metadata accessor for NotificationStackEntity(0);
  v22 = *(v21 + 28);
  v23 = *(v10 + 48);
  sub_1CFCE2770(v1 + v22, v13);
  sub_1CFCE2770(v0 + v22, &v13[v23]);
  OUTLINED_FUNCTION_8_0(v13);
  if (v14)
  {
    OUTLINED_FUNCTION_8_0(&v13[v23]);
    if (v14)
    {
      sub_1CFCE3050(v13, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
      goto LABEL_34;
    }

LABEL_32:
    sub_1CFCE3050(v13, &qword_1EC4F2BD8, &qword_1CFD4A5B8);
    return 0;
  }

  sub_1CFCE2770(v13, v9);
  OUTLINED_FUNCTION_8_0(&v13[v23]);
  if (v24)
  {
    (*(v5 + 8))(v9, v3);
    goto LABEL_32;
  }

  (*(v5 + 32))(v2, &v13[v23], v3);
  OUTLINED_FUNCTION_0_0();
  sub_1CFCE3E70(v25, v26, MEMORY[0x1E6969550]);
  v27 = sub_1CFD48EE8();
  v28 = *(v5 + 8);
  v28(v2, v3);
  v28(v9, v3);
  sub_1CFCE3050(v13, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if (sub_1CFCDCA88(*(v1 + *(v21 + 32)), *(v0 + *(v21 + 32))))
  {
    OUTLINED_FUNCTION_10();
    if (v31)
    {
      if (!v29)
      {
        return 0;
      }

      OUTLINED_FUNCTION_19(v30);
      v34 = v14 && v32 == v33;
      if (!v34 && (sub_1CFD49668() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    OUTLINED_FUNCTION_10();
    if (v37)
    {
      if (!v35)
      {
        return 0;
      }

      OUTLINED_FUNCTION_19(v36);
      v40 = v14 && v38 == v39;
      if (!v40 && (sub_1CFD49668() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v35)
    {
      return 0;
    }

    OUTLINED_FUNCTION_10();
    if (v43)
    {
      if (v41)
      {
        OUTLINED_FUNCTION_19(v42);
        v46 = v14 && v44 == v45;
        if (v46 || (sub_1CFD49668() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v41)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1CFCE3050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_25();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CFCE30A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_20(0x6449657571696E75, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_20(0x64496E69616D6F64, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001CFD5D690 == a2;
      if (v7 || (OUTLINED_FUNCTION_20(0xD000000000000010, 0x80000001CFD5D690) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001CFD5D6B0 == a2;
        if (v8 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D6B0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_17_1();
          v11 = a1 == v9 && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_20(v9, v10) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = OUTLINED_FUNCTION_56();
            v14 = a1 == v12 && a2 == v13;
            if (v14 || (OUTLINED_FUNCTION_20(v12, v13) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v15 = a1 == 0x6449646165726874 && a2 == 0xE800000000000000;
              if (v15 || (OUTLINED_FUNCTION_20(0x6449646165726874, 0xE800000000000000) & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000064)
              {

                return 7;
              }

              else
              {
                v17 = OUTLINED_FUNCTION_20(0x496E6F6974636573, 0xE900000000000064);

                if (v17)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CFCE32AC(char a1)
{
  result = 0x6449657571696E75;
  switch(a1)
  {
    case 1:
      v3 = 0x6E69616D6F64;
      goto LABEL_9;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = OUTLINED_FUNCTION_17_1();
      break;
    case 5:
      result = OUTLINED_FUNCTION_56();
      break;
    case 6:
      v3 = 0x646165726874;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 7:
      result = 0x496E6F6974636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCE339C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCE30A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCE33D0(uint64_t a1)
{
  v2 = sub_1CFCE36E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCE340C(uint64_t a1)
{
  v2 = sub_1CFCE36E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationStackEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BE8, &unk_1CFD4A5C0);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE36E0();
  sub_1CFD497A8();
  LOBYTE(v16) = 0;
  OUTLINED_FUNCTION_1_0();
  sub_1CFD495E8();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    OUTLINED_FUNCTION_1_0();
    sub_1CFD495B8();
    LOBYTE(v16) = 2;
    OUTLINED_FUNCTION_1_0();
    sub_1CFD495B8();
    v11 = type metadata accessor for NotificationStackEntity(0);
    LOBYTE(v16) = 3;
    sub_1CFD48CC8();
    OUTLINED_FUNCTION_0_0();
    sub_1CFCE3E70(v12, v13, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_21_0();
    sub_1CFD495D8();
    v16 = *(v3 + *(v11 + 32));
    v15[7] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    sub_1CFCE3CB4(&qword_1EDDD2B28, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_21_0();
    sub_1CFD49618();
    LOBYTE(v16) = 5;
    OUTLINED_FUNCTION_1_0();
    sub_1CFD495B8();
    LOBYTE(v16) = 6;
    OUTLINED_FUNCTION_1_0();
    sub_1CFD495B8();
    LOBYTE(v16) = 7;
    OUTLINED_FUNCTION_1_0();
    sub_1CFD495B8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1CFCE36E0()
{
  result = qword_1EC4F4160[0];
  if (!qword_1EC4F4160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F4160);
  }

  return result;
}

uint64_t NotificationStackEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BF0, &qword_1CFD4A5D0);
  OUTLINED_FUNCTION_37();
  v43 = v7;
  v44 = v8;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  type metadata accessor for NotificationStackEntity(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v45 = v13;
  v14 = *(v13 + 28);
  v15 = sub_1CFD48CC8();
  v16 = v2;
  __swift_storeEnumTagSinglePayload(v2 + v14, 1, 1, v15);
  v17 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CFCE36E0();
  v18 = v46;
  sub_1CFD49788();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v47);

    OUTLINED_FUNCTION_22_0();
    sub_1CFCE3050(v16 + v14, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  }

  else
  {
    v19 = v6;
    LOBYTE(v49) = 0;
    v20 = v43;
    *v16 = sub_1CFD49548();
    v16[1] = v21;
    OUTLINED_FUNCTION_4_1(1);
    v46 = v11;
    v16[2] = sub_1CFD49518();
    v16[3] = v22;
    OUTLINED_FUNCTION_4_1(2);
    OUTLINED_FUNCTION_13_1();
    v16[4] = sub_1CFD49518();
    v16[5] = v23;
    v41 = v23;
    LOBYTE(v49) = 3;
    OUTLINED_FUNCTION_0_0();
    sub_1CFCE3E70(v24, v25, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_13_1();
    sub_1CFD49538();
    sub_1CFCE281C(v19, v16 + v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    v48 = 4;
    sub_1CFCE3CB4(&qword_1EDDD2B20, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_13_1();
    sub_1CFD49578();
    v26 = v16;
    v27 = v45;
    *(v26 + *(v45 + 32)) = v49;
    OUTLINED_FUNCTION_4_1(5);
    v28 = sub_1CFD49518();
    v29 = (v26 + *(v27 + 36));
    *v29 = v28;
    v29[1] = v30;
    OUTLINED_FUNCTION_4_1(6);
    OUTLINED_FUNCTION_13_1();
    v31 = sub_1CFD49518();
    v32 = (v26 + *(v27 + 40));
    *v32 = v31;
    v32[1] = v33;
    OUTLINED_FUNCTION_4_1(7);
    OUTLINED_FUNCTION_13_1();
    v34 = sub_1CFD49518();
    v35 = v26;
    v36 = (v26 + *(v45 + 44));
    v37 = v34;
    v39 = v38;
    (*(v44 + 8))(v46, v20);
    *v36 = v37;
    v36[1] = v39;
    sub_1CFCE3D20(v35, v42);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_1CFCE3D84(v35);
  }
}

uint64_t sub_1CFCE3CB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFCE3D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationStackEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFCE3D84(uint64_t a1)
{
  v2 = type metadata accessor for NotificationStackEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFCE3DEC(uint64_t a1)
{
  *(a1 + 8) = sub_1CFCE3E70(&qword_1EC4F2BF8, type metadata accessor for NotificationStackEntity, &protocol conformance descriptor for NotificationStackEntity);
  result = sub_1CFCE3E70(&qword_1EC4F2C00, type metadata accessor for NotificationStackEntity, &protocol conformance descriptor for NotificationStackEntity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CFCE3E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFCE3F14(uint64_t a1)
{
  sub_1CFCE4068(319, qword_1EDDD3340, MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1CFCE4010(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1CFCE4068(319, &qword_1EDDD3318, MEMORY[0x1E69E62F8]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1CFCE4010(uint64_t a1)
{
  if (!qword_1EDDD3748)
  {
    sub_1CFD48CC8();
    v1 = sub_1CFD49338();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDD3748);
    }
  }
}

void sub_1CFCE4068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NotificationStackEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotificationStackEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFCE4224()
{
  result = qword_1EC4F4470[0];
  if (!qword_1EC4F4470[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F4470);
  }

  return result;
}

unint64_t sub_1CFCE427C()
{
  result = qword_1EC4F4580;
  if (!qword_1EC4F4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F4580);
  }

  return result;
}

unint64_t sub_1CFCE42D4()
{
  result = qword_1EC4F4588[0];
  if (!qword_1EC4F4588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F4588);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return type metadata accessor for NotificationStackEntity(0);
}

uint64_t AudioTranscriptEntity.uniqueId.setter()
{
  OUTLINED_FUNCTION_30();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AudioTranscriptEntity.domainId.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AudioTranscriptEntity.donatingBundleId.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AudioTranscriptEntity.absoluteTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioTranscriptEntity(0) + 28);
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_25();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AudioTranscriptEntity(uint64_t a1)
{
  result = qword_1EDDD3EE0;
  if (!qword_1EDDD3EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioTranscriptEntity.absoluteTimestamp.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_1() + 28);
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_25();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t AudioTranscriptEntity.content.getter()
{
  type metadata accessor for AudioTranscriptEntity(0);

  return OUTLINED_FUNCTION_27();
}

uint64_t AudioTranscriptEntity.content.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = (v1 + *(type metadata accessor for AudioTranscriptEntity(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *AudioTranscriptEntity.fileProtectionType.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioTranscriptEntity(0) + 36));
  v2 = v1;
  return v1;
}

void AudioTranscriptEntity.fileProtectionType.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_1() + 36);

  *(v1 + v2) = v0;
}

uint64_t AudioTranscriptEntity.init(uniqueId:domainId:donatingBundleId:absoluteTimestamp:content:fileProtectionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for AudioTranscriptEntity(0);
  v19 = v18[9];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v20 = v18[7];
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_25();
  result = (*(v21 + 32))(&a9[v20], a7);
  v23 = &a9[v18[8]];
  *v23 = a8;
  *(v23 + 1) = a10;
  *&a9[v19] = a11;
  return result;
}

BOOL static AudioTranscriptEntity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[4] == a2[4] && v8 == v9;
    if (!v10 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = type metadata accessor for AudioTranscriptEntity(0);
  if ((sub_1CFD48CA8() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 32);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v17 = *(v11 + 36);
  v18 = *(a2 + v17);
  if (*(a1 + v17))
  {
    if (!v18)
    {
      return 0;
    }

    v19 = sub_1CFD48FA8();
    v21 = v20;
    if (v19 != sub_1CFD48FA8() || v21 != v22)
    {
      v24 = sub_1CFD49668();

      return (v24 & 1) != 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1CFCE4B00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_20(0x6449657571696E75, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_20(0x64496E69616D6F64, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001CFD5D690 == a2;
      if (v7 || (OUTLINED_FUNCTION_20(0xD000000000000010, 0x80000001CFD5D690) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001CFD5D6B0 == a2;
        if (v8 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D6B0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
          if (v9 || (OUTLINED_FUNCTION_20(0x746E65746E6F63, 0xE700000000000000) & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x80000001CFD5D790 == a2)
          {

            return 5;
          }

          else
          {
            v11 = OUTLINED_FUNCTION_20(0xD000000000000012, 0x80000001CFD5D790);

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

unint64_t sub_1CFCE4CA8(char a1)
{
  result = 0x6449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0x64496E69616D6F64;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x746E65746E6F63;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCE4D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCE4B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCE4DA8(uint64_t a1)
{
  v2 = sub_1CFCE5578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCE4DE4(uint64_t a1)
{
  v2 = sub_1CFCE5578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioTranscriptEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C08, &qword_1CFD4A7D0);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE5578();
  sub_1CFD497A8();
  v23 = 0;
  OUTLINED_FUNCTION_5_1();
  sub_1CFD495E8();
  if (!v2)
  {
    v22 = 1;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495B8();
    v21 = 2;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495B8();
    v11 = type metadata accessor for AudioTranscriptEntity(0);
    v20 = 3;
    sub_1CFD48CC8();
    OUTLINED_FUNCTION_2_1();
    sub_1CFCE55CC(v12, v13, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_21_0();
    sub_1CFD49618();
    v19 = 4;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495E8();
    v18 = *(v3 + *(v11 + 36));
    v17[15] = 5;
    type metadata accessor for FileProtectionType(0);
    OUTLINED_FUNCTION_0_1();
    sub_1CFCE55CC(v14, v15, &protocol conformance descriptor for NSFileProtectionType);
    OUTLINED_FUNCTION_21_0();
    sub_1CFD495D8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t AudioTranscriptEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_37();
  v36 = v5;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C10, &qword_1CFD4A7D8);
  OUTLINED_FUNCTION_37();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  v38 = type metadata accessor for AudioTranscriptEntity(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  v39 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE5578();
  sub_1CFD49788();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v7;
  v46 = 0;
  OUTLINED_FUNCTION_7_0();
  v17 = sub_1CFD49548();
  v18 = v39;
  *v39 = v17;
  *(v18 + 1) = v19;
  v45 = 1;
  OUTLINED_FUNCTION_7_0();
  *(v18 + 2) = sub_1CFD49518();
  *(v18 + 3) = v20;
  v44 = 2;
  OUTLINED_FUNCTION_7_0();
  *(v18 + 4) = sub_1CFD49518();
  *(v18 + 5) = v21;
  v34[1] = v21;
  v43 = 3;
  OUTLINED_FUNCTION_2_1();
  sub_1CFCE55CC(v22, v23, MEMORY[0x1E6969558]);
  v34[0] = v16;
  v24 = v37;
  OUTLINED_FUNCTION_7_0();
  sub_1CFD49578();
  v25 = v24;
  v26 = v38;
  (*(v36 + 32))(&v18[*(v38 + 28)], v34[0], v25);
  v42 = 4;
  OUTLINED_FUNCTION_7_0();
  v27 = sub_1CFD49548();
  v28 = &v18[*(v26 + 32)];
  *v28 = v27;
  v28[1] = v29;
  type metadata accessor for FileProtectionType(0);
  v41 = 5;
  OUTLINED_FUNCTION_0_1();
  sub_1CFCE55CC(v30, v31, &protocol conformance descriptor for NSFileProtectionType);
  OUTLINED_FUNCTION_7_0();
  sub_1CFD49538();
  v32 = *(v26 + 36);
  (*(v10 + 8))(v13, v8);
  *&v18[v32] = v40;
  sub_1CFCE5614(v18, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CFCE5678(v18);
}

unint64_t sub_1CFCE5578()
{
  result = qword_1EC4F4610[0];
  if (!qword_1EC4F4610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F4610);
  }

  return result;
}

uint64_t sub_1CFCE55CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFCE5614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioTranscriptEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFCE5678(uint64_t a1)
{
  v2 = type metadata accessor for AudioTranscriptEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFCE56D4(uint64_t a1)
{
  *(a1 + 8) = sub_1CFCE55CC(&qword_1EC4F2C18, type metadata accessor for AudioTranscriptEntity, &protocol conformance descriptor for AudioTranscriptEntity);
  result = sub_1CFCE55CC(&qword_1EC4F2C20, type metadata accessor for AudioTranscriptEntity, &protocol conformance descriptor for AudioTranscriptEntity);
  *(a1 + 16) = result;
  return result;
}

void sub_1CFCE5780(uint64_t a1)
{
  sub_1CFCE584C(319, qword_1EDDD3340, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1CFD48CC8();
    if (v2 <= 0x3F)
    {
      sub_1CFCE589C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CFCE584C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CFCE589C(uint64_t a1)
{
  if (!qword_1EDDD3300)
  {
    type metadata accessor for FileProtectionType(255);
    v1 = sub_1CFD49338();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDD3300);
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioTranscriptEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioTranscriptEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFCE5A5C()
{
  result = qword_1EC4F4920[0];
  if (!qword_1EC4F4920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F4920);
  }

  return result;
}

unint64_t sub_1CFCE5AB4()
{
  result = qword_1EC4F4A30;
  if (!qword_1EC4F4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F4A30);
  }

  return result;
}

unint64_t sub_1CFCE5B0C()
{
  result = qword_1EC4F4A38[0];
  if (!qword_1EC4F4A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F4A38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return type metadata accessor for AudioTranscriptEntity(0);
}

ProactiveSummarizationClient::SummarizationStatus_optional __swiftcall SummarizationStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1CFCE5BF4()
{
  result = qword_1EC4F2C28;
  if (!qword_1EC4F2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2C28);
  }

  return result;
}

uint64_t sub_1CFCE5C50@<X0>(uint64_t *a1@<X8>)
{
  result = SummarizationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CFCE5C78()
{
  OUTLINED_FUNCTION_61();
  sub_1CFCE5DD4();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFCE5CC0()
{
  OUTLINED_FUNCTION_61();
  sub_1CFCE5DD4();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

_BYTE *storeEnumTagSinglePayload for SummarizationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFCE5DD4()
{
  result = qword_1EC4F2C30;
  if (!qword_1EC4F2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2C30);
  }

  return result;
}

uint64_t sub_1CFCE5E28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818845549 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_20(1818845549, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001CFD5D860 == a2;
    if (v6 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D860) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_20(0x6567617373656DLL, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_30_0();
        v10 = a1 == v8 && a2 == v9;
        if (v10 || (OUTLINED_FUNCTION_20(v8, v9) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x80000001CFD5D8D0 == a2)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D8D0);
          OUTLINED_FUNCTION_37_0();
          if (a1)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1CFCE5F80(char a1)
{
  result = 1818845549;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6567617373656DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_30_0();
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCE601C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCE5E28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCE6050()
{
  sub_1CFCE6CBC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCE6088()
{
  sub_1CFCE6CBC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCE60E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001CFD5D8F0 == a2;
  if (v3 || (OUTLINED_FUNCTION_20(0xD000000000000014, 0x80000001CFD5D8F0) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFD5D910 == a2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_20(0xD000000000000015, 0x80000001CFD5D910);
    OUTLINED_FUNCTION_37_0();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1CFCE6198(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1CFCE61CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6867696C746F7073 && a2 == 0xEB00000000644974)
  {

    v4 = 0;
  }

  else
  {
    sub_1CFD49668();
    OUTLINED_FUNCTION_37_0();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFCE6240()
{
  sub_1CFD49728();
  MEMORY[0x1D3874010](0);
  return sub_1CFD49758();
}

uint64_t sub_1CFCE62AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCE61CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFCE62E0()
{
  sub_1CFCE6EB4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCE6318()
{
  sub_1CFCE6EB4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCE6358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCE60E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCE6380()
{
  sub_1CFCE6E0C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCE63B8()
{
  sub_1CFCE6E0C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCE63F0()
{
  sub_1CFCE6DB8();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCE6428()
{
  sub_1CFCE6DB8();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCE6460()
{
  sub_1CFCE6D64();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCE6498()
{
  sub_1CFCE6D64();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCE64D0()
{
  sub_1CFD49728();
  MEMORY[0x1D3874010](0);
  return sub_1CFD49758();
}

uint64_t sub_1CFCE6510()
{
  sub_1CFCE6D10();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCE6548()
{
  sub_1CFCE6D10();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t ModelInputContentRequest.Kind.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C38, &qword_1CFD4AB10);
  OUTLINED_FUNCTION_37();
  v80 = v4;
  v81 = v3;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_1();
  v79 = v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C40, &qword_1CFD4AB18);
  OUTLINED_FUNCTION_37();
  v75 = v7;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22_1();
  v73 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C48, &qword_1CFD4AB20);
  OUTLINED_FUNCTION_37();
  v70 = v11;
  v71 = v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C50, &qword_1CFD4AB28);
  OUTLINED_FUNCTION_37();
  v76 = v15;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22_1();
  v74 = v17;
  v68 = type metadata accessor for SummarizationResponse(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v72 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C58, &qword_1CFD4AB30);
  OUTLINED_FUNCTION_37();
  v69 = v22;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_33_0();
  type metadata accessor for ModelInputContentRequest.Kind(v24);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C60, &qword_1CFD4AB38);
  OUTLINED_FUNCTION_37();
  v83 = v29;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE6CBC();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_2_2();
  sub_1CFCE872C(v82, v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v49 = *v28;
      v50 = *(v28 + 8);
      v51 = *(v28 + 16);
      v52 = *(v28 + 17);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C68, &qword_1CFD4AB40);
      v54 = v72;
      sub_1CFCE8488(v28 + *(v53 + 48), v72);
      LOBYTE(v86[0]) = 1;
      sub_1CFCE6E0C();
      v55 = v85;
      sub_1CFD495A8();
      v86[0] = v49;
      v86[1] = v50;
      v87 = v51;
      v88 = v52;
      v89 = 0;
      sub_1CFCE6E60();
      v56 = v78;
      v57 = v84;
      sub_1CFD49618();
      if (!v57)
      {

        LOBYTE(v86[0]) = 1;
        OUTLINED_FUNCTION_15_1();
        sub_1CFCE8538(v63, v64, &protocol conformance descriptor for SummarizationResponse);
        sub_1CFD49618();
        v65 = OUTLINED_FUNCTION_21_1();
        v66(v65, v56);
        OUTLINED_FUNCTION_3_1();
        sub_1CFCE86D4(v54, v67);
        v32 = OUTLINED_FUNCTION_20_1();
        v34 = v55;
        return v33(v32, v34);
      }

      v58 = OUTLINED_FUNCTION_21_1();
      v59(v58, v56);
      OUTLINED_FUNCTION_3_1();
      sub_1CFCE86D4(v54, v60);
      v61 = OUTLINED_FUNCTION_20_1();
      v62(v61, v55);

    case 2u:
      LOBYTE(v86[0]) = 2;
      v41 = sub_1CFCE6DB8();
      OUTLINED_FUNCTION_24_0(&type metadata for ModelInputContentRequest.Kind.MessageCodingKeys, v86, v42, v43, v41);
      v44 = v71;
      sub_1CFD495E8();

      (*(v70 + 8))(v14, v44);
      goto LABEL_7;
    case 3u:
      LOBYTE(v86[0]) = 3;
      v45 = sub_1CFCE6D64();
      v36 = v73;
      OUTLINED_FUNCTION_24_0(&type metadata for ModelInputContentRequest.Kind.NotificationCodingKeys, v86, v46, v47, v45);
      OUTLINED_FUNCTION_32_0();
      v39 = v77;
      sub_1CFD495E8();

      v40 = v75;
      goto LABEL_6;
    case 4u:
      LOBYTE(v86[0]) = 4;
      v35 = sub_1CFCE6D10();
      v36 = v79;
      OUTLINED_FUNCTION_24_0(&type metadata for ModelInputContentRequest.Kind.NotificationStackCodingKeys, v86, v37, v38, v35);
      OUTLINED_FUNCTION_32_0();
      v39 = v81;
      sub_1CFD495E8();

      v40 = v80;
LABEL_6:
      (*(v40 + 8))(v36, v39);
LABEL_7:
      v32 = OUTLINED_FUNCTION_20_1();
      v34 = v1;
      break;
    default:
      LOBYTE(v86[0]) = 0;
      sub_1CFCE6EB4();
      v31 = v85;
      sub_1CFD495A8();
      sub_1CFD495E8();

      (*(v69 + 8))(v1, v21);
      v32 = OUTLINED_FUNCTION_20_1();
      v34 = v31;
      break;
  }

  return v33(v32, v34);
}

unint64_t sub_1CFCE6CBC()
{
  result = qword_1EC4F4D40;
  if (!qword_1EC4F4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F4D40);
  }

  return result;
}

unint64_t sub_1CFCE6D10()
{
  result = qword_1EC4F4D48;
  if (!qword_1EC4F4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F4D48);
  }

  return result;
}

unint64_t sub_1CFCE6D64()
{
  result = qword_1EC4F4D50;
  if (!qword_1EC4F4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F4D50);
  }

  return result;
}

unint64_t sub_1CFCE6DB8()
{
  result = qword_1EC4F4D58;
  if (!qword_1EC4F4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F4D58);
  }

  return result;
}

unint64_t sub_1CFCE6E0C()
{
  result = qword_1EC4F4D60;
  if (!qword_1EC4F4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F4D60);
  }

  return result;
}

unint64_t sub_1CFCE6E60()
{
  result = qword_1EC4F2C70;
  if (!qword_1EC4F2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2C70);
  }

  return result;
}

unint64_t sub_1CFCE6EB4()
{
  result = qword_1EC4F4D68;
  if (!qword_1EC4F4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F4D68);
  }

  return result;
}

uint64_t ModelInputContentRequest.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C80, &qword_1CFD4AB48);
  OUTLINED_FUNCTION_37();
  v137 = v4;
  v138 = v3;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_1();
  v144 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C88, &qword_1CFD4AB50);
  OUTLINED_FUNCTION_37();
  v133 = v8;
  v134 = v7;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_1();
  v142 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C90, &qword_1CFD4AB58);
  OUTLINED_FUNCTION_37();
  v131 = v12;
  v132 = v11;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22_1();
  v141 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C98, &qword_1CFD4AB60);
  OUTLINED_FUNCTION_37();
  v135 = v16;
  v136 = v15;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_22_1();
  v143 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CA0, &qword_1CFD4AB68);
  OUTLINED_FUNCTION_37();
  v129 = v20;
  v130 = v19;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_22_1();
  v140 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CA8, &unk_1CFD4AB70);
  OUTLINED_FUNCTION_37();
  v146 = v24;
  v147 = v23;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v121 - v26;
  v145 = type metadata accessor for ModelInputContentRequest.Kind(0);
  OUTLINED_FUNCTION_25();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v128 = (&v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = (&v121 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = (&v121 - v35);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = (&v121 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v121 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v121 - v43;
  v45 = a1[3];
  v148 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_1CFCE6CBC();
  v46 = v149;
  sub_1CFD49788();
  if (v46)
  {
    goto LABEL_11;
  }

  v123 = v36;
  v124 = v33;
  v125 = v42;
  v126 = v39;
  v127 = v44;
  v47 = v147;
  v48 = sub_1CFD49588();
  result = sub_1CFCE83C4(v48, 0);
  if (v51 == v52 >> 1)
  {
    v53 = v145;
LABEL_10:
    v62 = sub_1CFD49448();
    swift_allocError();
    v64 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00);
    *v64 = v53;
    sub_1CFD49508();
    sub_1CFD49438();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6AF8], v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = OUTLINED_FUNCTION_18_0();
    v66(v65, v47);
LABEL_11:
    v39 = v148;
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v149 = v27;
  v122 = 0;
  if (v51 < (v52 >> 1))
  {
    v54 = *(v50 + v51);
    sub_1CFCE840C(v51 + 1, v52 >> 1, result, v50, v51, v52);
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v59 = v127;
    if (v56 == v58 >> 1)
    {
      v60 = v122;
      switch(v54)
      {
        case 1:
          v153 = 1;
          v76 = sub_1CFCE6E0C();
          OUTLINED_FUNCTION_6_1(&type metadata for ModelInputContentRequest.Kind.MailManualSummaryCodingKeys, &v153, v77, v78, v76);
          OUTLINED_FUNCTION_31_0();
          v152 = 0;
          sub_1CFCE84E4();
          OUTLINED_FUNCTION_36_0();
          sub_1CFD49578();
          v144 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C68, &qword_1CFD4AB40) + 48);
          type metadata accessor for SummarizationResponse(0);
          v151 = 1;
          OUTLINED_FUNCTION_15_1();
          sub_1CFCE8538(v115, v116, &protocol conformance descriptor for SummarizationResponse);
          OUTLINED_FUNCTION_36_0();
          sub_1CFD49578();
          swift_unknownObjectRelease();
          v117 = OUTLINED_FUNCTION_32_0();
          v118(v117);
          v119 = OUTLINED_FUNCTION_7_1();
          v120(v119);
          v94 = v126;
          OUTLINED_FUNCTION_26();
          goto LABEL_20;
        case 2:
          v154 = 2;
          v70 = sub_1CFCE6DB8();
          OUTLINED_FUNCTION_6_1(&type metadata for ModelInputContentRequest.Kind.MessageCodingKeys, &v154, v71, v72, v70);
          v80 = v132;
          v95 = sub_1CFD49548();
          v97 = v96;
          swift_unknownObjectRelease();
          v98 = OUTLINED_FUNCTION_21_1();
          v99(v98, v80);
          v100 = OUTLINED_FUNCTION_7_1();
          v101(v100);
          v94 = v123;
          *v123 = v95;
          *(v94 + 8) = v97;
          OUTLINED_FUNCTION_26();
          swift_storeEnumTagMultiPayload();
          v39 = v148;
          goto LABEL_21;
        case 3:
          v155 = 3;
          v73 = sub_1CFCE6D64();
          OUTLINED_FUNCTION_6_1(&type metadata for ModelInputContentRequest.Kind.NotificationCodingKeys, &v155, v74, v75, v73);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_36_0();
          v102 = sub_1CFD49548();
          v104 = v103;
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_17_2();
          v106(v105);
          v107 = OUTLINED_FUNCTION_19_0();
          v108(v107);
          v94 = v124;
          *v124 = v102;
          *(v94 + 8) = v104;
          OUTLINED_FUNCTION_26();
          swift_storeEnumTagMultiPayload();
          goto LABEL_22;
        case 4:
          v156 = 4;
          v67 = sub_1CFCE6D10();
          OUTLINED_FUNCTION_6_1(&type metadata for ModelInputContentRequest.Kind.NotificationStackCodingKeys, &v156, v68, v69, v67);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_36_0();
          v87 = sub_1CFD49548();
          v89 = v88;
          swift_unknownObjectRelease();
          v90 = OUTLINED_FUNCTION_17_2();
          v91(v90);
          v92 = OUTLINED_FUNCTION_7_1();
          v93(v92);
          v94 = v128;
          *v128 = v87;
          *(v94 + 8) = v89;
          OUTLINED_FUNCTION_26();
          goto LABEL_20;
        default:
          v150 = 0;
          sub_1CFCE6EB4();
          sub_1CFD494F8();
          OUTLINED_FUNCTION_31_0();
          if (v60)
          {
            v61 = OUTLINED_FUNCTION_18_0();
            v79(v61, v47);
            swift_unknownObjectRelease();
          }

          else
          {
            v81 = sub_1CFD49548();
            if (v58)
            {
              swift_unknownObjectRelease();
              v83 = OUTLINED_FUNCTION_34_0();
              v84(v83);
              v85 = OUTLINED_FUNCTION_19_0();
              v86(v85);
            }

            else
            {
              v109 = v81;
              v110 = v82;
              swift_unknownObjectRelease();
              v111 = OUTLINED_FUNCTION_34_0();
              v112(v111);
              v113 = OUTLINED_FUNCTION_19_0();
              v114(v113);
              v94 = v125;
              *v125 = v109;
              *(v94 + 8) = v110;
              OUTLINED_FUNCTION_26();
LABEL_20:
              swift_storeEnumTagMultiPayload();
LABEL_21:
              v59 = v127;
LABEL_22:
              sub_1CFCE8488(v94, v59);
              sub_1CFCE8488(v59, v139);
            }
          }

          break;
      }

      return __swift_destroy_boxed_opaque_existential_1(v39);
    }

    v53 = v145;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t ModelInputContentRequest.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ModelInputContentRequest(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ModelInputContentRequest.init(kind:options:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 8);
  OUTLINED_FUNCTION_16_1();
  sub_1CFCE8488(v6, v7);
  result = type metadata accessor for ModelInputContentRequest(0);
  v9 = a2 + *(result + 20);
  *v9 = v3;
  *(v9 + 8) = v4;
  *(v9 + 16) = v5;
  return result;
}

unint64_t ModelInputContentRequest.piiSafeDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ModelInputContentRequest.Kind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_2_2();
  sub_1CFCE872C(v1, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = 0xD000000000000011;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C68, &qword_1CFD4AB40);
      OUTLINED_FUNCTION_3_1();
      sub_1CFCE86D4(v6 + v14, v15);
      return v12;
    case 2u:
      OUTLINED_FUNCTION_8_2();
      sub_1CFD49408();

      OUTLINED_FUNCTION_9_2();
      v8 = v10 | 4;
      goto LABEL_6;
    case 3u:
      OUTLINED_FUNCTION_8_2();
      sub_1CFD49408();

      OUTLINED_FUNCTION_9_2();
      v8 = v11 + 9;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_8_2();
      sub_1CFD49408();

      OUTLINED_FUNCTION_9_2();
      v8 = v9 | 0xE;
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_8_2();
      sub_1CFD49408();

      OUTLINED_FUNCTION_9_2();
      v8 = v7 + 1;
LABEL_6:
      v16 = v8;
      MEMORY[0x1D3873940](v1, v2);

      return v16;
  }
}

uint64_t sub_1CFCE7CBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_20(1684957547, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_20(0x736E6F6974706FLL, 0xE700000000000000);
    OUTLINED_FUNCTION_37_0();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CFCE7D9C(char a1)
{
  sub_1CFD49728();
  MEMORY[0x1D3874010](a1 & 1);
  return sub_1CFD49758();
}

uint64_t sub_1CFCE7DE4(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_1CFCE7E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCE7CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCE7E80()
{
  sub_1CFCE85D8();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCE7EB8()
{
  sub_1CFCE85D8();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t ModelInputContentRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CC8, &qword_1CFD4AB80);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE85D8();
  sub_1CFD497A8();
  LOBYTE(v18) = 0;
  type metadata accessor for ModelInputContentRequest.Kind(0);
  OUTLINED_FUNCTION_14_1();
  sub_1CFCE8538(v11, v12, &protocol conformance descriptor for ModelInputContentRequest.Kind);
  sub_1CFD49618();
  if (!v2)
  {
    v13 = (v3 + *(type metadata accessor for ModelInputContentRequest(0) + 20));
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v18 = v14;
    v19 = v15;
    v20 = v13;
    v17[7] = 1;
    sub_1CFCE862C();

    sub_1CFD495D8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ModelInputContentRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ModelInputContentRequest.Kind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v24 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CE0, &qword_1CFD4AB88);
  OUTLINED_FUNCTION_37();
  v22 = v9;
  v23 = v8;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_33_0();
  v12 = type metadata accessor for ModelInputContentRequest(v11);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE85D8();
  sub_1CFD49788();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  OUTLINED_FUNCTION_14_1();
  sub_1CFCE8538(v17, v18, &protocol conformance descriptor for ModelInputContentRequest.Kind);
  sub_1CFD49578();
  OUTLINED_FUNCTION_16_1();
  sub_1CFCE8488(v24, v16);
  sub_1CFCE8680();
  sub_1CFD49538();
  (*(v22 + 8))(v3, v23);
  v19 = v16 + *(v12 + 20);
  *v19 = v25;
  *(v19 + 16) = v26;
  sub_1CFCE872C(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CFCE86D4(v16, type metadata accessor for ModelInputContentRequest);
}

uint64_t sub_1CFCE83C4(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFCE840C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1CFCE8488(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_35_0();
  v5(v4);
  OUTLINED_FUNCTION_25();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1CFCE84E4()
{
  result = qword_1EC4F2CB8;
  if (!qword_1EC4F2CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2CB8);
  }

  return result;
}

uint64_t sub_1CFCE8538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFCE85A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CFCE85D8()
{
  result = qword_1EC4F4D70[0];
  if (!qword_1EC4F4D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F4D70);
  }

  return result;
}

unint64_t sub_1CFCE862C()
{
  result = qword_1EC4F2CD8;
  if (!qword_1EC4F2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2CD8);
  }

  return result;
}

unint64_t sub_1CFCE8680()
{
  result = qword_1EC4F2CF0;
  if (!qword_1EC4F2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2CF0);
  }

  return result;
}

uint64_t sub_1CFCE86D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_25();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CFCE872C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_35_0();
  v5(v4);
  OUTLINED_FUNCTION_25();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void sub_1CFCE87B0(uint64_t a1)
{
  type metadata accessor for ModelInputContentRequest.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_1CFCE8834();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFCE8834()
{
  if (!qword_1EDDD2B38[0])
  {
    v0 = sub_1CFD49338();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDD2B38);
    }
  }
}

uint64_t sub_1CFCE888C(uint64_t a1)
{
  v1 = sub_1CFCE8918();
  if (v2 <= 0x3F)
  {
    sub_1CFCE8940(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1CFCE8918()
{
  result = qword_1EDDD2B30;
  if (!qword_1EDDD2B30)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDDD2B30);
  }

  return result;
}

void sub_1CFCE8940(uint64_t a1)
{
  if (!qword_1EDDD3128[0])
  {
    type metadata accessor for SummarizationResponse(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDDD3128);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ModelInputContentRequest.Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s28ProactiveSummarizationClient24ModelInputContentRequestV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s28ProactiveSummarizationClient24ModelInputContentRequestV4KindO14MailCodingKeysOwet_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_23_0();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_109(a1);
}

_BYTE *_s28ProactiveSummarizationClient24ModelInputContentRequestV4KindO14MailCodingKeysOwst_0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1CFCE8D3C()
{
  result = qword_1EC4F5080[0];
  if (!qword_1EC4F5080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F5080);
  }

  return result;
}

unint64_t sub_1CFCE8D94()
{
  result = qword_1EC4F5290[0];
  if (!qword_1EC4F5290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F5290);
  }

  return result;
}

unint64_t sub_1CFCE8DEC()
{
  result = qword_1EC4F54A0[0];
  if (!qword_1EC4F54A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F54A0);
  }

  return result;
}

unint64_t sub_1CFCE8E44()
{
  result = qword_1EC4F56B0[0];
  if (!qword_1EC4F56B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F56B0);
  }

  return result;
}

unint64_t sub_1CFCE8E9C()
{
  result = qword_1EC4F58C0[0];
  if (!qword_1EC4F58C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F58C0);
  }

  return result;
}

unint64_t sub_1CFCE8EF4()
{
  result = qword_1EC4F5AD0[0];
  if (!qword_1EC4F5AD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F5AD0);
  }

  return result;
}

unint64_t sub_1CFCE8F4C()
{
  result = qword_1EC4F5CE0[0];
  if (!qword_1EC4F5CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F5CE0);
  }

  return result;
}

unint64_t sub_1CFCE8FA4()
{
  result = qword_1EC4F5DF0;
  if (!qword_1EC4F5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F5DF0);
  }

  return result;
}

unint64_t sub_1CFCE8FFC()
{
  result = qword_1EC4F5DF8[0];
  if (!qword_1EC4F5DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F5DF8);
  }

  return result;
}

unint64_t sub_1CFCE9054()
{
  result = qword_1EC4F5E80;
  if (!qword_1EC4F5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F5E80);
  }

  return result;
}

unint64_t sub_1CFCE90AC()
{
  result = qword_1EC4F5E88[0];
  if (!qword_1EC4F5E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F5E88);
  }

  return result;
}

unint64_t sub_1CFCE9104()
{
  result = qword_1EC4F5F10;
  if (!qword_1EC4F5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F5F10);
  }

  return result;
}

unint64_t sub_1CFCE915C()
{
  result = qword_1EC4F5F18[0];
  if (!qword_1EC4F5F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F5F18);
  }

  return result;
}

unint64_t sub_1CFCE91B4()
{
  result = qword_1EC4F5FA0;
  if (!qword_1EC4F5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F5FA0);
  }

  return result;
}

unint64_t sub_1CFCE920C()
{
  result = qword_1EC4F5FA8[0];
  if (!qword_1EC4F5FA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F5FA8);
  }

  return result;
}

unint64_t sub_1CFCE9264()
{
  result = qword_1EC4F6030;
  if (!qword_1EC4F6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F6030);
  }

  return result;
}

unint64_t sub_1CFCE92BC()
{
  result = qword_1EC4F6038[0];
  if (!qword_1EC4F6038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6038);
  }

  return result;
}

unint64_t sub_1CFCE9314()
{
  result = qword_1EC4F60C0;
  if (!qword_1EC4F60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F60C0);
  }

  return result;
}

unint64_t sub_1CFCE936C()
{
  result = qword_1EC4F60C8[0];
  if (!qword_1EC4F60C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F60C8);
  }

  return result;
}

unint64_t sub_1CFCE93C4()
{
  result = qword_1EC4F6150;
  if (!qword_1EC4F6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F6150);
  }

  return result;
}

unint64_t sub_1CFCE941C()
{
  result = qword_1EC4F6158[0];
  if (!qword_1EC4F6158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6158);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1CFD494F8();
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1CFD495A8();
}

uint64_t OUTLINED_FUNCTION_37_0()
{
}

uint64_t sub_1CFCE97CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileProtectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SummarizationRequest.options.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

ProactiveSummarizationClient::SummarizationRequest __swiftcall SummarizationRequest.init(items:options:)(Swift::OpaquePointer items, ProactiveSummarizationClient::SummarizationOptions options)
{
  v3 = *options.requestedSummaryStyles.rawValue;
  v4 = *(options.requestedSummaryStyles.rawValue + 8);
  v5 = *(options.requestedSummaryStyles.rawValue + 9);
  *v2 = items;
  *(v2 + 8) = v3;
  *(v2 + 16) = v4;
  *(v2 + 17) = v5;
  result.options = options;
  result.items = items;
  return result;
}

uint64_t sub_1CFCE9850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CFD49668() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CFD49668();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CFCE9914(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x736D657469;
  }
}

uint64_t sub_1CFCE9958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCE9850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCE998C(uint64_t a1)
{
  v2 = sub_1CFCE9C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCE99C8(uint64_t a1)
{
  v2 = sub_1CFCE9C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizationRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CF8, &qword_1CFD4B590);
  OUTLINED_FUNCTION_37();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  v17 = *(v1 + 16);
  HIDWORD(v12) = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE9C14();

  sub_1CFD497A8();
  v14 = v10;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D00, &qword_1CFD4B598);
  sub_1CFCE9EF8(&qword_1EC4F2D08, &qword_1EC4F2D10, &protocol conformance descriptor for SummarizableItem, MEMORY[0x1E69E6300]);
  sub_1CFD49618();

  if (!v2)
  {
    v14 = v13;
    v15 = v17;
    v16 = BYTE4(v12);
    v18 = 1;
    sub_1CFCE9C68();
    sub_1CFD49618();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1CFCE9C14()
{
  result = qword_1EC4F6460[0];
  if (!qword_1EC4F6460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6460);
  }

  return result;
}

unint64_t sub_1CFCE9C68()
{
  result = qword_1EC4F2D18;
  if (!qword_1EC4F2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D18);
  }

  return result;
}

uint64_t SummarizationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D20, &qword_1CFD4B5A0);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCE9C14();
  sub_1CFD49788();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D00, &qword_1CFD4B598);
  v19 = 0;
  sub_1CFCE9EF8(&qword_1EC4F2D28, &qword_1EC4F2D30, &protocol conformance descriptor for SummarizableItem, MEMORY[0x1E69E6330]);
  sub_1CFD49578();
  v11 = v16;
  v19 = 1;
  sub_1CFCE9FC4();
  sub_1CFD49578();
  (*(v7 + 8))(v10, v5);
  v12 = v16;
  v13 = v17;
  v14 = v18;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CFCE9EF8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2D00, &qword_1CFD4B598);
    sub_1CFCE9F80(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFCE9F80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SummarizableItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFCE9FC4()
{
  result = qword_1EC4F2D38;
  if (!qword_1EC4F2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D38);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFCEA05C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CFCEA09C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummarizationRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFCEA1D8()
{
  result = qword_1EC4F6670[0];
  if (!qword_1EC4F6670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6670);
  }

  return result;
}

unint64_t sub_1CFCEA230()
{
  result = qword_1EC4F6780;
  if (!qword_1EC4F6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F6780);
  }

  return result;
}

unint64_t sub_1CFCEA288()
{
  result = qword_1EC4F6788[0];
  if (!qword_1EC4F6788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6788);
  }

  return result;
}

uint64_t QuotedRegion.parsedEmail.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t QuotedRegion.parsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for QuotedRegion(0) + 28);

  return sub_1CFCE2770(v3, a1);
}

uint64_t type metadata accessor for QuotedRegion(uint64_t a1)
{
  result = qword_1EDDD4650;
  if (!qword_1EDDD4650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t QuotedRegion.parsedDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for QuotedRegion(0) + 28);

  return sub_1CFCE281C(a1, v3);
}

uint64_t QuotedRegion.parsedName.getter()
{
  type metadata accessor for QuotedRegion(0);

  return OUTLINED_FUNCTION_27();
}

uint64_t QuotedRegion.parsedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for QuotedRegion(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t QuotedRegion.init(attributionLine:textContent:parsedEmail:parsedDate:parsedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for QuotedRegion(0);
  v18 = *(v17 + 28);
  v19 = sub_1CFD48CC8();
  __swift_storeEnumTagSinglePayload(a9 + v18, 1, 1, v19);
  v20 = (a9 + *(v17 + 32));
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  result = sub_1CFCE281C(a7, a9 + v18);
  *v20 = a8;
  v20[1] = a10;
  return result;
}

Swift::Void __swiftcall QuotedRegion.extractInfo(handles:)(Swift::OpaquePointer handles)
{
  v2 = v1;
  rawValue = handles._rawValue;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  OUTLINED_FUNCTION_6_2(v3);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &rawValue - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D40, &qword_1CFD4B748);
  v8 = OUTLINED_FUNCTION_6_2(v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v83 = &rawValue - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &rawValue - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D48, &unk_1CFD4B750);
  OUTLINED_FUNCTION_6_2(v13);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &rawValue - v15;
  v17 = objc_allocWithZone(MEMORY[0x1E696AB60]);
  v18 = sub_1CFCEB958(40);
  v19 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1CFD48CF8();
  v20 = sub_1CFD48D18();
  v21 = 0;
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) != 1)
  {
    v21 = sub_1CFD48D08();
    (*(*(v20 - 8) + 8))(v16, v20);
  }

  [v19 setTimeZone_];

  sub_1CFCEBA0C(0xD000000000000018, 0x80000001CFD5D930, v19);
  if (v18)
  {
    v22 = v18;
    OUTLINED_FUNCTION_27();
    v23 = sub_1CFD48F78();
    v24 = OUTLINED_FUNCTION_27();
    v25 = [v22 matchesInString:v23 options:0 range:{0, MEMORY[0x1D3873980](v24)}];

    sub_1CFCEBB04();
    v26 = sub_1CFD49188();
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v80 = v6;
  v88 = v26;
  v27 = sub_1CFCEBA70(v26);
  v81 = v2;
  v78 = v19;
  v79 = v18;
  if (!v27)
  {
    v86 = 0;
    v28 = 0;
    v32 = 0xE000000000000000;
    v33 = 0xE000000000000000;
LABEL_41:
    v87 = v32;
    v60 = v28;

    v61 = rawValue[2];
    if (v61)
    {
      v62 = v33;
      v63 = rawValue + 7;
      v65 = v80;
      v64 = v81;
      v66 = v78;
      v67 = v79;
      while (1)
      {
        if (*v63)
        {
          v69 = *(v63 - 3);
          v68 = *(v63 - 2);
          v70 = *(v63 - 1) == v60 && *v63 == v62;
          if (v70 || (sub_1CFD49668()) && v68)
          {
            break;
          }
        }

        v63 += 9;
        if (!--v61)
        {
          v69 = 0;
          v68 = 0xE000000000000000;
          goto LABEL_54;
        }
      }

LABEL_54:
      v33 = v62;
    }

    else
    {
      v69 = 0;
      v68 = 0xE000000000000000;
      v65 = v80;
      v64 = v81;
      v66 = v78;
      v67 = v79;
    }

    v64[4] = v60;
    v64[5] = v33;
    v71 = sub_1CFD48F78();

    v72 = [v66 dateFromString_];

    if (v72)
    {
      sub_1CFD48CB8();

      v73 = 0;
      v66 = v72;
    }

    else
    {
      v73 = 1;
    }

    v74 = sub_1CFD48CC8();
    __swift_storeEnumTagSinglePayload(v65, v73, 1, v74);
    v75 = type metadata accessor for QuotedRegion(0);
    sub_1CFCE281C(v65, v64 + *(v75 + 28));
    v76 = (v64 + *(v75 + 32));

    *v76 = v69;
    v76[1] = v68;
    return;
  }

  if (v27 < 1)
  {
    goto LABEL_61;
  }

  v84 = v12;
  v86 = 0;
  v28 = 0;
  v29 = 0;
  v30 = *v2;
  v90 = v2[1];
  v91 = v30;
  v31 = v88;
  v89 = v88 & 0xC000000000000001;
  v32 = 0xE000000000000000;
  v33 = 0xE000000000000000;
  v34 = v83;
  while (1)
  {
    v35 = v27;
    if (v89)
    {
      v36 = MEMORY[0x1D3873D00](v29, v31);
    }

    else
    {
      v36 = *(v31 + 8 * v29 + 32);
    }

    v37 = v36;
    [v36 range];
    v38 = sub_1CFD492C8();
    if (v40)
    {
      goto LABEL_13;
    }

    v41 = v38;
    v42 = v39;
    v43 = v33;
    v44 = [v37 resultType];
    v45 = v42 >> 14;
    if (v44 == 8)
    {
      break;
    }

    if (v44 != 32)
    {
      goto LABEL_20;
    }

    v85 = v28;
    v46 = [v37 URL];
    v87 = v32;
    if (v46)
    {
      v47 = v46;
      sub_1CFD48C08();

      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v51 = sub_1CFD48C58();
    __swift_storeEnumTagSinglePayload(v34, v48, 1, v51);
    v52 = v84;
    sub_1CFCEBA94(v34, v84);
    if (__swift_getEnumTagSinglePayload(v52, 1, v51) == 1)
    {
      sub_1CFCE3050(v52, &qword_1EC4F2D40, &qword_1CFD4B748);

      goto LABEL_32;
    }

    v82 = sub_1CFD48C38();
    v54 = v53;
    (*(*(v51 - 8) + 8))(v52, v51);
    if (!v54)
    {

      v34 = v83;
LABEL_32:
      v32 = v87;
      v28 = v85;
LABEL_33:
      v33 = v43;
      v31 = v88;
      goto LABEL_34;
    }

    v55 = v82 == 0x6F746C69616DLL && v54 == 0xE600000000000000;
    v28 = v85;
    if (v55)
    {
    }

    else
    {
      v56 = sub_1CFD49668();

      if ((v56 & 1) == 0)
      {

        v34 = v83;
        v32 = v87;
        goto LABEL_33;
      }
    }

    v34 = v83;
    v32 = v87;
    v31 = v88;
    if (v45 < v41 >> 14)
    {
      goto LABEL_60;
    }

    v57 = sub_1CFD490F8();
    v58 = MEMORY[0x1D38738F0](v57);
    v33 = v59;
    v28 = v58;

LABEL_13:

LABEL_34:
    ++v29;
    v27 = v35;
    if (v35 == v29)
    {
      goto LABEL_41;
    }
  }

  if (v45 >= v41 >> 14)
  {
    v49 = sub_1CFD490F8();
    v86 = MEMORY[0x1D38738F0](v49);
    v32 = v50;

LABEL_20:

    goto LABEL_33;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t static QuotedRegion.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_37();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  OUTLINED_FUNCTION_6_2(v10);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD8, &qword_1CFD4A5B8);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v19 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v19 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v20 = a1[5];
  v21 = a2[5];
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    v22 = a1[4] == a2[4] && v20 == v21;
    if (!v22 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v23 = type metadata accessor for QuotedRegion(0);
  v24 = *(v23 + 28);
  v25 = *(v14 + 48);
  sub_1CFCE2770(a1 + v24, v17);
  sub_1CFCE2770(a2 + v24, &v17[v25]);
  OUTLINED_FUNCTION_8_0(v17);
  if (!v18)
  {
    sub_1CFCE2770(v17, v13);
    OUTLINED_FUNCTION_8_0(&v17[v25]);
    if (!v26)
    {
      (*(v6 + 32))(v9, &v17[v25], v4);
      sub_1CFCEBB9C(&qword_1EC4F2BE0, MEMORY[0x1E6969550]);
      v28 = sub_1CFD48EE8();
      v29 = *(v6 + 8);
      v29(v9, v4);
      v29(v13, v4);
      sub_1CFCE3050(v17, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

    (*(v6 + 8))(v13, v4);
LABEL_28:
    sub_1CFCE3050(v17, &qword_1EC4F2BD8, &qword_1CFD4A5B8);
    return 0;
  }

  OUTLINED_FUNCTION_8_0(&v17[v25]);
  if (!v18)
  {
    goto LABEL_28;
  }

  sub_1CFCE3050(v17, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
LABEL_32:
  v30 = *(v23 + 32);
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (v34)
    {
      v35 = *v31 == *v33 && v32 == v34;
      if (v35 || (sub_1CFD49668() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1CFCEB0C0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_7_2();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_20(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_0();
    v10 = a1 == v8 && a2 == v9;
    if (v10 || (OUTLINED_FUNCTION_20(v8, v9) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_9_3();
      v13 = a1 == v11 && a2 == v12;
      if (v13 || (OUTLINED_FUNCTION_20(v11, v12) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v14 = a1 == 0x6144646573726170 && a2 == 0xEA00000000006574;
        if (v14 || (OUTLINED_FUNCTION_20(0x6144646573726170, 0xEA00000000006574) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x614E646573726170 && a2 == 0xEA0000000000656DLL)
        {

          return 4;
        }

        else
        {
          v16 = OUTLINED_FUNCTION_20(0x614E646573726170, 0xEA0000000000656DLL);

          if (v16)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1CFCEB1F4(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_7_2();
  switch(v3)
  {
    case 1:
      result = OUTLINED_FUNCTION_10_0();
      break;
    case 2:
      result = OUTLINED_FUNCTION_9_3();
      break;
    case 3:
      result = 0x6144646573726170;
      break;
    case 4:
      result = 0x614E646573726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCEB2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCEB0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCEB2CC(uint64_t a1)
{
  v2 = sub_1CFCEBB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCEB308(uint64_t a1)
{
  v2 = sub_1CFCEBB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QuotedRegion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D58, &qword_1CFD4B760);
  OUTLINED_FUNCTION_37();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCEBB48();
  sub_1CFD497A8();
  v10[15] = 0;
  OUTLINED_FUNCTION_4_0();
  sub_1CFD495E8();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495E8();
    v10[13] = 2;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495B8();
    type metadata accessor for QuotedRegion(0);
    v10[12] = 3;
    sub_1CFD48CC8();
    sub_1CFCEBB9C(&qword_1EC4F2A90, MEMORY[0x1E6969538]);
    sub_1CFD495D8();
    v10[11] = 4;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495B8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t QuotedRegion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  OUTLINED_FUNCTION_6_2(v3);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v34 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D60, &qword_1CFD4B768);
  OUTLINED_FUNCTION_37();
  v38 = v8;
  v39 = v7;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  v12 = type metadata accessor for QuotedRegion(0);
  OUTLINED_FUNCTION_25();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 28);
  v18 = sub_1CFD48CC8();
  v42 = v17;
  v19 = v16;
  __swift_storeEnumTagSinglePayload(v16 + v17, 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCEBB48();
  v40 = v11;
  v20 = v41;
  sub_1CFD49788();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFCE3050(v16 + v42, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  }

  else
  {
    v47 = 0;
    *v16 = sub_1CFD49548();
    v16[1] = v21;
    v41 = v21;
    v46 = 1;
    v16[2] = sub_1CFD49548();
    v16[3] = v22;
    v45 = 2;
    v36 = 0;
    v23 = sub_1CFD49518();
    v24 = v42;
    v19[4] = v23;
    v19[5] = v25;
    v34[1] = v25;
    v44 = 3;
    sub_1CFCEBB9C(&qword_1EC4F2B08, MEMORY[0x1E6969558]);
    v35 = v19;
    sub_1CFD49538();
    v26 = v35;
    sub_1CFCE281C(v6, v35 + v24);
    v43 = 4;
    v27 = sub_1CFD49518();
    v29 = v28;
    v30 = (v26 + *(v12 + 32));
    v31 = OUTLINED_FUNCTION_11_2();
    v32(v31);
    *v30 = v27;
    v30[1] = v29;
    sub_1CFCEBBE0(v26, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFCEBC44(v26);
  }
}

id sub_1CFCEB958(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1CFD48BE8();

    swift_willThrow();
  }

  return v2;
}

void sub_1CFCEBA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CFD48F78();

  [a3 setDateFormat_];
}

uint64_t sub_1CFCEBA70(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

uint64_t sub_1CFCEBA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D40, &qword_1CFD4B748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFCEBB04()
{
  result = qword_1EC4F2D50;
  if (!qword_1EC4F2D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4F2D50);
  }

  return result;
}

unint64_t sub_1CFCEBB48()
{
  result = qword_1EC4F6810[0];
  if (!qword_1EC4F6810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6810);
  }

  return result;
}

uint64_t sub_1CFCEBB9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFD48CC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFCEBBE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotedRegion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFCEBC44(uint64_t a1)
{
  v2 = type metadata accessor for QuotedRegion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFCEBCC8(uint64_t a1)
{
  sub_1CFCE21B0();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1CFCE4010(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for QuotedRegion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}