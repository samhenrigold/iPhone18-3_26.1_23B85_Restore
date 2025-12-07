uint64_t sub_1DA2E2604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DA2E2658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DA2E272C@<X0>(uint64_t *a1@<X8>)
{
  result = AttributionListSnippetModel.attributions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E275C@<X0>(uint64_t *a1@<X8>)
{
  result = AttributionListSnippetModel.context.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1DA2E2840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DA2E299C(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2E2A20(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

unint64_t sub_1DA2E2A90(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x746E6F4379646F62;
      break;
    case 3:
      result = 0x65676175676E616CLL;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA2E2B6C()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DA2E2B98()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DA2E2BC4()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.bodyContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E2BF0()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.language.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DA2E2C44()
{
  OUTLINED_FUNCTION_20_0();
  result = TipSnippetModel.context.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E2C70(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  OUTLINED_FUNCTION_9_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
    OUTLINED_FUNCTION_9_0();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
      OUTLINED_FUNCTION_9_0();
      if (*(v14 + 84) == v3)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
        OUTLINED_FUNCTION_9_0();
        if (*(v16 + 84) == v3)
        {
          v8 = v15;
          v12 = a3[8];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
          v12 = a3[9];
        }
      }
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_1DA2E2E00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  OUTLINED_FUNCTION_9_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
    OUTLINED_FUNCTION_9_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
      OUTLINED_FUNCTION_9_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
        OUTLINED_FUNCTION_9_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[8];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
          v14 = a4[9];
        }
      }
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1DA2E2F98()
{
  OUTLINED_FUNCTION_62();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1DA2E2FE8()
{
  OUTLINED_FUNCTION_62();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

char *sub_1DA2E30C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

uint64_t sub_1DA2E30E4@<X0>(uint64_t *a1@<X8>)
{
  result = AttributionItem.appPunchOut.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3114(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1DA34C0C0();
    OUTLINED_FUNCTION_9_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
      v11 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1DA2E31E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DA34C0C0();
    OUTLINED_FUNCTION_9_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
      v11 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1DA2E3308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_0();
  v6 = sub_1DA34BFB0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DA2E33C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DA34BFB0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1DA2E34E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DA2E3534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DA2E3634()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_8();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E3698()
{

  OUTLINED_FUNCTION_3_8();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E36D0()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BE00();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E3708()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BE00();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E3740()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BF70();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E3778()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BF70();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E37B0()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BAC0();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E37E8()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BAC0();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E3830@<X0>(uint64_t *a1@<X8>)
{
  result = SupplementarySnippetModel.actions.getter();
  *a1 = result;
  return result;
}

double sub_1DA2E3888@<D0>(_OWORD *a1@<X8>)
{
  SupplementarySnippetModel.tipCollectionModel.getter();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1DA2E38D0@<X0>(uint64_t *a1@<X8>)
{
  result = SupplementarySnippetModel.context.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3900(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_9_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_9_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
      OUTLINED_FUNCTION_9_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1DA2E3A48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_9_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_9_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
      OUTLINED_FUNCTION_9_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1DA2E3BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  OUTLINED_FUNCTION_0_12(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = sub_1DA34C410();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E3D80@<X0>(uint64_t *a1@<X8>)
{
  result = TroubleshootingSnippetModel.actions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3DB0@<X0>(uint64_t *a1@<X8>)
{
  result = TroubleshootingSnippetModel.body.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3DE0@<X0>(uint64_t *a1@<X8>)
{
  result = TroubleshootingSnippetModel.context.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E3E10(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
    OUTLINED_FUNCTION_9_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      OUTLINED_FUNCTION_9_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v11 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1DA2E3F3C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
    OUTLINED_FUNCTION_9_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      OUTLINED_FUNCTION_9_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1DA2E40FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DA30BC7C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA2E41B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LinkUsedEvent.LinkType(0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DA2E423C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LinkUsedEvent.LinkType(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA2E42BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E4464@<X0>(uint64_t *a1@<X8>)
{
  result = BluetoothState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA2E4490@<X0>(uint64_t *a1@<X8>)
{
  result = FindMyState.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA2E4778()
{

  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E47B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E47F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E4840()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E4880()
{
  v1 = sub_1DA34BFB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E494C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E49F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2E49D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA2E4A40()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.title.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4A6C()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.intro.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4A98()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.steps.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4AC4()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.outro.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4AF0()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.disclaimer.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4B44()
{
  OUTLINED_FUNCTION_20_0();
  result = ListStyleAnswerSnippetModel.context.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E4B70(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_9_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
    OUTLINED_FUNCTION_9_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
      OUTLINED_FUNCTION_9_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        OUTLINED_FUNCTION_9_0();
        if (*(v16 + 84) != a2)
        {
          v18 = *(a1 + a3[11]);
          if (v18 >= 2)
          {
            return v18 - 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = a3[10];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1DA2E4D08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_9_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
    OUTLINED_FUNCTION_9_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
      OUTLINED_FUNCTION_9_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
        OUTLINED_FUNCTION_9_0();
        if (*(v18 + 84) != a3)
        {
          *(a1 + a4[11]) = a2 + 1;
          return;
        }

        v10 = v17;
        v14 = a4[10];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1DA2E4F88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1DA2E4FBC()
{

  sub_1DA33A904(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1DA2E5010()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E5068()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1DA2E516C()
{
  OUTLINED_FUNCTION_20_0();
  result = SummarizedAnswerSnippetModel.title.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E5198()
{
  OUTLINED_FUNCTION_20_0();
  result = SummarizedAnswerSnippetModel.body.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E51C4()
{
  OUTLINED_FUNCTION_20_0();
  result = SummarizedAnswerSnippetModel.disclaimer.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E5218()
{
  OUTLINED_FUNCTION_20_0();
  result = SummarizedAnswerSnippetModel.context.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1DA2E5244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_9_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_9_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 28);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
      v12 = *(a3 + 32);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_1DA2E5340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_9_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_9_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 28);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
      v14 = *(a4 + 32);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1DA2E546C@<X0>(uint64_t *a1@<X8>)
{
  result = LearnMoreSnippetModel.body.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E549C@<X0>(uint64_t *a1@<X8>)
{
  result = LearnMoreSnippetModel.context.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E54CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1DA2E5580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DA2E568C()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BA10();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E56C4()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BA10();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E56FC()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BD50();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E5734()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BD50();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E576C()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BBF0();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E57A4()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BBF0();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E57DC()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BCC0();
  v0 = OUTLINED_FUNCTION_4_7();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1DA2E5814()
{
  OUTLINED_FUNCTION_1_13();
  sub_1DA34BCC0();
  v0 = OUTLINED_FUNCTION_2_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA2E58A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34B6B0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DA2E58F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34B6B0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DA2E5974@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA34A398();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA2E59CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA34A4B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA2E5A4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA34A6B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA2E5B48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t FeedbackModel.question.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedbackModel.question.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeedbackModel.answer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedbackModel.answer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FeedbackModel.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  sub_1DA34BED0();
  OUTLINED_FUNCTION_0();
  v44 = v5;
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA34CB80();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  sub_1DA34C470();
  sub_1DA34C460();
  sub_1DA34C450();

  v14 = sub_1DA34C710();
  v16 = v15;

  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v46 = a1;
  sub_1DA2E616C(a1, v13);
  v19 = sub_1DA34BFB0();
  if (__swift_getEnumTagSinglePayload(v13, 1, v19) == 1)
  {
    sub_1DA2E6204(v13);
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    v20 = sub_1DA34BF40();
    v21 = v22;
    (*(*(v19 - 8) + 8))(v13, v19);
  }

  v23 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57D0, &qword_1DA350CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA34DA00;
  *(inited + 32) = 0x6E656B6F7073;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  *(inited + 64) = 0x6465686374616DLL;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = v20;
  *(inited + 88) = v21;
  sub_1DA34CAC0();
  v25 = sub_1DA34CAA0();

  v47 = 0;
  v26 = [v23 dataWithJSONObject:v25 options:0 error:&v47];

  v27 = v47;
  if (v26)
  {
    v28 = sub_1DA34B8E0();
    v30 = v29;

    sub_1DA34CB70();
    v31 = sub_1DA34CB60();
    v33 = v32;
    sub_1DA2E62C4(v28, v30);
    v34 = v46;
    if (!v33)
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }
  }

  else
  {
    v35 = v27;
    v36 = sub_1DA34B7E0();

    swift_willThrow();
    v31 = 0;
    v33 = 0xE000000000000000;
    v34 = v46;
  }

  sub_1DA2E616C(v34, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v19) == 1)
  {
    sub_1DA2E6204(v11);
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  else
  {
    v39 = v43;
    sub_1DA34BEE0();
    (*(*(v19 - 8) + 8))(v11, v19);
    sub_1DA2E626C();
    v40 = v45;
    v37 = sub_1DA34C7A0();
    v38 = v41;
    (*(v44 + 8))(v39, v40);
  }

  result = sub_1DA2E6204(v34);
  *a2 = v31;
  a2[1] = v33;
  a2[2] = v37;
  a2[3] = v38;
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

uint64_t sub_1DA2E616C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2E6204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA2E626C()
{
  result = qword_1EE109F10;
  if (!qword_1EE109F10)
  {
    sub_1DA34BED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F10);
  }

  return result;
}

uint64_t sub_1DA2E62C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1DA2E631C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726577736E61 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA34D160();

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

uint64_t sub_1DA2E6420(char a1)
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](a1 & 1);
  return sub_1DA34D230();
}

uint64_t sub_1DA2E6474(char a1)
{
  if (a1)
  {
    return 0x726577736E61;
  }

  else
  {
    return 0x6E6F697473657571;
  }
}

uint64_t sub_1DA2E64C4(uint64_t a1)
{
  v2 = *v1;
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](v2);
  return sub_1DA34D230();
}

uint64_t sub_1DA2E6510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2E631C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2E6558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2E63E0();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2E6580(uint64_t a1)
{
  v2 = sub_1DA2E67AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2E65BC(uint64_t a1)
{
  v2 = sub_1DA2E67AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedbackModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57D8, &qword_1DA34DA20);
  OUTLINED_FUNCTION_0();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2E67AC();
  sub_1DA34D250();
  v14 = 0;
  sub_1DA34D0F0();
  if (!v2)
  {
    v13 = 1;
    sub_1DA34D0F0();
  }

  return (*(v12 + 8))(v8, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DA2E67AC()
{
  result = qword_1ECBA57E0;
  if (!qword_1ECBA57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA57E0);
  }

  return result;
}

uint64_t FeedbackModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57E8, &qword_1DA34DA28);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2E67AC();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_1DA34D060();
  v13 = v12;
  v21 = 1;
  v14 = sub_1DA34D060();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v10, v5);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v20;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA2E6A7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DA2E6ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedbackModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FeedbackModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA2E6C98()
{
  result = qword_1ECBA57F8;
  if (!qword_1ECBA57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA57F8);
  }

  return result;
}

unint64_t sub_1DA2E6CF0()
{
  result = qword_1ECBA5800;
  if (!qword_1ECBA5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5800);
  }

  return result;
}

unint64_t sub_1DA2E6D48()
{
  result = qword_1ECBA5808;
  if (!qword_1ECBA5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5808);
  }

  return result;
}

uint64_t sub_1DA2E6D9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA2F8188();
  *a1 = result;
  return result;
}

void sub_1DA2E6DCC(uint64_t a2@<X8>)
{
  sub_1DA2E6E00();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_1DA2E6E48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1DA2E6EAC()
{
  v0 = [objc_opt_self() deviceClass];
  sub_1DA34CB40();

  v1 = sub_1DA34CBB0();
  v3 = v2;

  qword_1EE10E020 = v1;
  *algn_1EE10E028 = v3;
  return result;
}

uint64_t sub_1DA2E6F2C(uint64_t a1)
{
  *(v1 + 39) = -18;
  *(v1 + 16) = a1;
  strcpy((v1 + 24), "com.apple.tips");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5828, &qword_1DA34EF30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DA34DC80;
  v3 = qword_1EE1091A0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v4 = *algn_1EE10E028;
  *(v2 + 32) = qword_1EE10E020;
  *(v2 + 40) = v4;

  *(v1 + 40) = v2;
  return v1;
}

BOOL sub_1DA2E6FFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA2E70B4();
  if (v5)
  {
    v6 = *(v2 + 40);
    v10[0] = a1;
    v10[1] = a2;
    MEMORY[0x1EEE9AC00](v5);
    v9[2] = v10;

    v7 = sub_1DA2E7C00(sub_1DA2E7F1C, v9, v6);
  }

  else
  {
    return 0;
  }

  return v7;
}

id sub_1DA2E70B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v4 = sub_1DA2E7D70(v1, v2, 0);
  v5 = [v4 applicationState];
  v6 = [v5 isInstalled];

  return v6;
}

uint64_t sub_1DA2E72E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DA34CA00();
  sub_1DA34CB40();
  sub_1DA34C9F0();
}

uint64_t sub_1DA2E73A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA2E73C8, 0, 0);
}

uint64_t sub_1DA2E73C8()
{
  if (sub_1DA2E77F4())
  {
    v0[4] = *(v0[3] + 16);

    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1DA2E74AC;

    return MEMORY[0x1EEE49B08]();
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1DA2E74AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1DA2E7648;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1DA2E75DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA2E75DC()
{
  *(v0[3] + 40) = v0[7];

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA2E7648()
{

  if (qword_1EE109058 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109060);
  v3 = v1;
  v4 = sub_1DA34C8C0();
  v5 = sub_1DA34CDA0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DA2E0000, v4, v5, "Error fetching user guide identifiers: %@", v8, 0xCu);
    sub_1DA2E7E4C(v9, &qword_1ECBA5820, &unk_1DA34DD00);
    MEMORY[0x1DA74B3A0](v9, -1, -1);
    MEMORY[0x1DA74B3A0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DA2E77F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v35 - v1;
  v40 = sub_1DA34BC60();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA34BA40();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DA34BAF0();
  v14 = result;
  v15 = *(result + 16);
  if (v15)
  {
    v16 = 0;
    v42 = result + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v41 = v9 + 16;
    v38 = *MEMORY[0x1E69BCCC0];
    v36 = (v4 + 8);
    v37 = (v4 + 32);
    while (v16 < *(v14 + 16))
    {
      (*(v9 + 16))(v12, v42 + *(v9 + 72) * v16, v7);
      sub_1DA34BA30();
      v17 = sub_1DA34BA20();
      if (__swift_getEnumTagSinglePayload(v2, 1, v17) == 1)
      {
        v18 = OUTLINED_FUNCTION_1();
        v19(v18);
        result = sub_1DA2E7E4C(v2, &qword_1ECBA5818, &unk_1DA352560);
      }

      else
      {
        OUTLINED_FUNCTION_2();
        v21 = v20;
        v23 = (*(v22 + 88))(v2, v17);
        if (v23 == v38)
        {
          (*(v21 + 96))(v2, v17);
          (*v37)(v39, v2, v40);
          v24 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
          v26 = v25;
          if (qword_1EE1091A0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          if (v24 == qword_1EE10E020 && v26 == *algn_1EE10E028)
          {

            (*v36)(v39, v40);
            v33 = OUTLINED_FUNCTION_1();
            result = v34(v33);
          }

          else
          {
            v28 = sub_1DA34D160();

            (*v36)(v39, v40);
            v29 = OUTLINED_FUNCTION_1();
            result = v30(v29);
            if ((v28 & 1) == 0)
            {

              return 1;
            }
          }
        }

        else
        {
          v31 = OUTLINED_FUNCTION_1();
          v32(v31);
          result = (*(v21 + 8))(v2, v17);
        }
      }

      if (v15 == ++v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    return 0;
  }

  return result;
}

BOOL sub_1DA2E7C00(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void *sub_1DA2E7CB0()
{

  return v0;
}

uint64_t sub_1DA2E7CE0()
{
  sub_1DA2E7CB0();

  return swift_deallocClassInstance();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1DA2E7D70(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DA34CB30();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DA34B7E0();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1DA2E7E4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DA2E7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DA34D160() & 1;
  }
}

uint64_t SiriKitTaskLoggingProvider.send(_:)(uint64_t a1)
{
  sub_1DA34C180();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DA34C190();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t SiriKitTaskLoggingProvider.donateCurareResponse(from:)(uint64_t a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  sub_1DA34C7C0();
  return sub_1DA2E8024(v2);
}

uint64_t sub_1DA2E8024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5830, &qword_1DA34DD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA2E814C()
{
  v0 = sub_1DA34BF30();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v10 = sub_1DA34C8E0();
    __swift_project_value_buffer(v10, qword_1EE109060);
    v11 = sub_1DA34C8C0();
    v12 = sub_1DA34CD80();
    if (OUTLINED_FUNCTION_3(v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5(&dword_1DA2E0000, v13, v14, "No platform specified in result");
      OUTLINED_FUNCTION_6();
    }

    return 1;
  }

  v4 = sub_1DA34BF30();
  v6 = v5;
  v7 = v4 == 7565161 && v5 == 0xE300000000000000;
  if (v7 || (v8 = v4, (OUTLINED_FUNCTION_2_0(7565161, 0xE300000000000000) & 1) != 0))
  {

    OUTLINED_FUNCTION_0_1();
    if ((sub_1DA34C240() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      v9 = sub_1DA34C230();
      return v9 & 1;
    }

    return 1;
  }

  v16 = v8 == 0x736F63616DLL && v6 == 0xE500000000000000;
  if (v16 || (OUTLINED_FUNCTION_2_0(0x736F63616DLL, 0xE500000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_0_1();
    v9 = sub_1DA34C220();
    return v9 & 1;
  }

  v17 = v8 == 1936684660 && v6 == 0xE400000000000000;
  if (v17 || (OUTLINED_FUNCTION_2_0(1936684660, 0xE400000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_0_1();
    v9 = sub_1DA34C260();
    return v9 & 1;
  }

  v18 = v8 == 0x736F6863746177 && v6 == 0xE700000000000000;
  if (v18 || (OUTLINED_FUNCTION_2_0(0x736F6863746177, 0xE700000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_0_1();
    v9 = sub_1DA34C250();
    return v9 & 1;
  }

  if (v8 == 0x736F6E6F69736976 && v6 == 0xE800000000000000)
  {

LABEL_44:
    OUTLINED_FUNCTION_0_1();
    v9 = sub_1DA34C200();
    return v9 & 1;
  }

  v20 = OUTLINED_FUNCTION_2_0(0x736F6E6F69736976, 0xE800000000000000);

  result = 0;
  if (v20)
  {
    goto LABEL_44;
  }

  return result;
}

id sub_1DA2E838C()
{
  v0 = *(sub_1DA34BB80() + 16);

  if (!v0)
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v9 = sub_1DA34C8E0();
    __swift_project_value_buffer(v9, qword_1EE109060);
    v10 = sub_1DA34C8C0();
    v11 = sub_1DA34CD80();
    if (!OUTLINED_FUNCTION_3(v11))
    {
      goto LABEL_14;
    }

    *swift_slowAlloc() = 0;
    v14 = "No device family specified in result";
    goto LABEL_13;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_deviceName_obj();

    if (v3)
    {
      v4 = sub_1DA34CB40();
      v6 = v5;

      strcpy(v18, "deviceFamily/");
      v18[7] = -4864;
      MEMORY[0x1DA74A690](v4, v6);

      v7 = sub_1DA34BB80();
      MEMORY[0x1EEE9AC00](v7);
      v17[2] = v18;
      v8 = sub_1DA2E7C00(sub_1DA2E7F1C, v17, v7);

      return v8;
    }

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v15 = sub_1DA34C8E0();
    __swift_project_value_buffer(v15, qword_1EE109060);
    v10 = sub_1DA34C8C0();
    v16 = sub_1DA34CDA0();
    if (!OUTLINED_FUNCTION_3(v16))
    {
LABEL_14:

      return 1;
    }

    *swift_slowAlloc() = 0;
    v14 = "Failed to retrieve current device class name";
LABEL_13:
    OUTLINED_FUNCTION_5(&dword_1DA2E0000, v12, v13, v14);
    OUTLINED_FUNCTION_6();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA2E85CC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DA34BFB0();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1DA2E814C() & 1) != 0 && (sub_1DA2E838C())
  {
    v7 = *(v30 + 16);

    return v7(a1, v1, v4);
  }

  else
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v9 = sub_1DA34C8E0();
    __swift_project_value_buffer(v9, qword_1EE109060);
    v10 = *(v30 + 16);
    v10(v6, v1, v4);
    v11 = sub_1DA34C8C0();
    v12 = sub_1DA34CDA0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v29 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v28 = v10;
      v16 = v15;
      v31[0] = v15;
      *v14 = 136315138;
      v17 = sub_1DA34BD10();
      v19 = v18;
      v20 = OUTLINED_FUNCTION_4();
      v21(v20);
      v22 = sub_1DA300D78(v17, v19, v31);

      *(v14 + 4) = v22;
      _os_log_impl(&dword_1DA2E0000, v11, v12, "Removing actions for %s due to mismatched platform and/or device family", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v10 = v28;
      OUTLINED_FUNCTION_6();
      a1 = v29;
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v23 = OUTLINED_FUNCTION_4();
      v24(v23);
    }

    v10(a1, v2, v4);
    v25 = sub_1DA34BF00();
    *v26 = MEMORY[0x1E69E7CC0];

    return v25(v31, 0);
  }
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2)
{

  return sub_1DA34D160();
}

BOOL OUTLINED_FUNCTION_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x1DA74B3A0);
}

uint64_t sub_1DA2E8970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  v18 = v6 + 8;
  v19 = *(v6 + 8) + **(v6 + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v5 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1DA2E8A9C;
  OUTLINED_FUNCTION_36();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

uint64_t sub_1DA2E8A9C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

void *sub_1DA2E8B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1DA2E8B8C()
{
  OUTLINED_FUNCTION_59();
  v3 = v2;
  v5 = v4;
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v6;
  v1[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5838, &qword_1DA34DE60);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[8] = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[9] = v8;
  *v8 = v9;
  v8[1] = sub_1DA2E8C8C;

  return sub_1DA2E93A4(v7, v5, v3);
}

uint64_t sub_1DA2E8C8C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA2E8D70()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[8];
  v2 = type metadata accessor for SnippetResponseComponents(0);
  v0[10] = v2;
  OUTLINED_FUNCTION_67(v1, v3, v2);
  if (v4)
  {
    sub_1DA2EF188(v1, &qword_1ECBA5838, &qword_1DA34DE60);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[11] = v5;
    *v5 = v6;
    v5[1] = sub_1DA2E8E88;
    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[3];

    return sub_1DA2E9A20(v7, v9, v8);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    OUTLINED_FUNCTION_15();

    return v11();
  }
}

uint64_t sub_1DA2E8E88()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA2E8F6C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[7];
  OUTLINED_FUNCTION_67(v1, v2, v0[10]);
  if (v3)
  {
    sub_1DA2EF188(v1, &qword_1ECBA5838, &qword_1DA34DE60);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[12] = v4;
    *v4 = v5;
    v4[1] = sub_1DA2E9074;
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];

    return sub_1DA2EA1F8(v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    OUTLINED_FUNCTION_15();

    return v10();
  }
}

uint64_t sub_1DA2E9074()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA2E9158()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[6];
  OUTLINED_FUNCTION_67(v1, v2, v0[10]);
  if (v3)
  {
    sub_1DA2EF188(v1, &qword_1ECBA5838, &qword_1DA34DE60);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[13] = v4;
    *v4 = v5;
    v4[1] = sub_1DA2E9260;
    v6 = v0[4];
    v7 = v0[2];
    v8 = v0[3];

    return sub_1DA2EA848(v7, v8, v6);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    OUTLINED_FUNCTION_15();

    return v10();
  }
}

uint64_t sub_1DA2E9260()
{
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DA2E93A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1DA34BFB0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2E9474, 0, 0);
}

uint64_t sub_1DA2E9474()
{
  OUTLINED_FUNCTION_16();
  v1 = sub_1DA34BD70();
  OUTLINED_FUNCTION_56(v1, v2);
  OUTLINED_FUNCTION_13();
  if (v3)
  {
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_46(v4);

    return sub_1DA2EAF18(v5);
  }

  else
  {
    type metadata accessor for SnippetResponseComponents(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);

    OUTLINED_FUNCTION_15();

    return v11();
  }
}

uint64_t sub_1DA2E9564()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA2E9A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v4[6] = swift_task_alloc();
  v5 = sub_1DA34BFB0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2E9B34, 0, 0);
}

uint64_t sub_1DA2E9B34()
{
  OUTLINED_FUNCTION_59();
  v1 = sub_1DA34BC70();
  OUTLINED_FUNCTION_56(v1, v2);
  OUTLINED_FUNCTION_13();
  if (v3)
  {
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_46(v4);

    return sub_1DA2EAF18(v5);
  }

  else
  {
    type metadata accessor for SnippetResponseComponents(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);

    OUTLINED_FUNCTION_15();

    return v11();
  }
}

uint64_t sub_1DA2E9C48()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA2E9D30()
{
  v87 = v0;
  v3 = v0[13];
  if (v3)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_44();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      if (qword_1EE109058 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_1EE109058);
      }

      v6 = sub_1DA34C8E0();
      __swift_project_value_buffer(v6, qword_1EE109060);
      v7 = OUTLINED_FUNCTION_42();
      v85 = v8;
      v8(v7);
      v9 = v3;
      v10 = sub_1DA34C8C0();
      v11 = sub_1DA34CD90();

      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[11];
      v15 = v0[7];
      v14 = v0[8];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v86 = v79;
        *v16 = 136315394;
        v17 = [v5 identifier];
        v81 = v9;
        v83 = v5;
        v18 = sub_1DA34CB40();
        v20 = v19;

        v21 = sub_1DA300D78(v18, v20, &v86);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2080;
        v22 = sub_1DA34BD10();
        v24 = v23;
        (*(v14 + 8))(v13, v15);
        v25 = v22;
        v9 = v81;
        v26 = sub_1DA300D78(v25, v24, &v86);
        v5 = v83;

        *(v16 + 14) = v26;
        _os_log_impl(&dword_1DA2E0000, v10, v11, "Found eligible collection %s for result %s", v16, 0x16u);
        OUTLINED_FUNCTION_38(v27, v28, v29, v30, v31, v32, v33, v34, v78, v79);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_14();
      }

      else
      {

        (*(v14 + 8))(v13, v15);
      }

      v54 = v0[10];
      v55 = v0[4];
      v80 = v0[3];
      v82 = v0[7];
      v85(v54);
      v56 = type metadata accessor for AttributionModel(0);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v56);
      v84 = v9;

      v60 = OUTLINED_FUNCTION_58();
      sub_1DA303FBC(v60, v61, v5, v55, v62);
      v63 = type metadata accessor for TellMeGeneratedSnippetModels(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
      v52 = type metadata accessor for SnippetResponseComponents(0);
      (v85)(v54, v80, v82);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v56);

      v70 = OUTLINED_FUNCTION_58();
      sub_1DA32A2E0(v70, v71, v55, v72);

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_45();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v63);
      v53 = 0;
      goto LABEL_16;
    }
  }

  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v35 = sub_1DA34C8E0();
  __swift_project_value_buffer(v35, qword_1EE109060);
  v36 = OUTLINED_FUNCTION_2_1();
  v37(v36);
  v38 = sub_1DA34C8C0();
  v39 = sub_1DA34CDA0();
  v40 = OUTLINED_FUNCTION_28(v39);
  v41 = v0[9];
  if (v40)
  {
    v42 = OUTLINED_FUNCTION_37();
    v86 = OUTLINED_FUNCTION_39();
    *v42 = 136315138;
    sub_1DA34BC70();
    OUTLINED_FUNCTION_48();
    v43 = OUTLINED_FUNCTION_10_0();
    v44(v43);
    sub_1DA300D78(v1, v2, &v86);
    OUTLINED_FUNCTION_55();
    *(v42 + 4) = v41;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v50 = OUTLINED_FUNCTION_10_0();
    v51(v50);
  }

  v52 = type metadata accessor for SnippetResponseComponents(0);
  v53 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v0[2], v53, 1, v52);

  OUTLINED_FUNCTION_15();

  return v76();
}

uint64_t sub_1DA2EA1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v7 = sub_1DA34BFB0();
  v4[5] = v7;
  v4[6] = *(v7 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5870, &qword_1DA34DEC0);
  v8 = swift_task_alloc();
  v4[9] = v8;
  v4[10] = type metadata accessor for TroubleshootingSnippetModel(0);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[13] = v9;
  *v9 = v4;
  v9[1] = sub_1DA2EA394;

  return sub_1DA2EB86C(v8, a2, a3);
}

uint64_t sub_1DA2EA394()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA2EA848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v4[16] = swift_task_alloc();
  v5 = sub_1DA34BAE0();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_1DA34BFB0();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2EA9AC, 0, 0);
}

uint64_t sub_1DA2EA9AC()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v1 = v0[13];
  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109060);
  v3 = OUTLINED_FUNCTION_2_1();
  v4(v3);
  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CD90();
  v7 = OUTLINED_FUNCTION_28(v6);
  v8 = v0[21];
  if (v7)
  {
    v10 = v0[18];
    v9 = v0[19];
    v27 = v0[17];
    v11 = OUTLINED_FUNCTION_37();
    *v11 = 134217984;
    sub_1DA34BB00();
    v12 = sub_1DA34BAD0();
    (*(v10 + 8))(v9, v27);
    v13 = v8 + 8;
    v14 = OUTLINED_FUNCTION_58();
    v15(v14);
    *(v11 + 4) = v12;
    _os_log_impl(&dword_1DA2E0000, v5, v1, "Result with preferred template type %ld", v11, 0xCu);
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v13 = v8 + 8;
    v16 = OUTLINED_FUNCTION_58();
    v17(v16);
  }

  v0[24] = v13;
  v18 = v0[22];
  v19 = v0[15];

  sub_1DA2EEF28(*(v19 + 32) + 16, (v0 + 2));
  sub_1DA2E85CC(v18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v20 = type metadata accessor for TipsApp();
  swift_allocObject();

  v22 = sub_1DA2E6F2C(v21);
  v0[10] = v20;
  v0[11] = &off_1F55E0128;
  v0[7] = v22;
  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  v23[1] = sub_1DA2EABDC;
  OUTLINED_FUNCTION_27();

  return sub_1DA2E73A8(v24);
}

uint64_t sub_1DA2EABDC()
{
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 208) = v5;
  *v5 = v4;
  v5[1] = sub_1DA2EAD40;
  v6 = *(v1 + 176);
  v7 = *(v1 + 128);

  return sub_1DA2ECD74(v7, v6, v2 + 56);
}

uint64_t sub_1DA2EAD40()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA2EAE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  v14 = v12[21];
  v13 = v12[22];
  v15 = v12[20];
  v29 = v12[19];
  v16 = v12[16];
  v17 = v12[14];
  v18 = v12[12];
  v19 = type metadata accessor for SnippetResponseComponents(0);
  sub_1DA2EDCF4(v18, v18 + *(v19 + 20), v13, v16, (v12 + 7), v17);
  sub_1DA2EF188(v16, &qword_1ECBA5840, "lt");
  (*(v14 + 8))(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(v12 + 7);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_1DA2EAF18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA2EAF38, 0, 0);
}

uint64_t sub_1DA2EAF38(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v28 = v1;
  v1[4] = sub_1DA34BC70();
  v1[5] = v3;

  OUTLINED_FUNCTION_13();
  if (v4)
  {
    v5 = sub_1DA34BC70();
  }

  else
  {
    v5 = sub_1DA34BD70();
  }

  v7 = v5;
  v8 = v6;
  v1[6] = v6;
  v1[7] = v5;
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v9 = sub_1DA34C8E0();
  v1[8] = __swift_project_value_buffer(v9, qword_1EE109060);

  v10 = sub_1DA34C8C0();
  v11 = sub_1DA34CD90();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_37();
    v27 = OUTLINED_FUNCTION_25();
    *v2 = 136315138;
    *(v2 + 4) = sub_1DA300D78(v7, v8, &v27);
    _os_log_impl(&dword_1DA2E0000, v10, v11, "Evaluating %s eligibility...", v2, 0xCu);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_23();
  }

  v12 = sub_1DA34BD70();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    OUTLINED_FUNCTION_61();
    v16 = swift_task_alloc();
    v1[9] = v16;
    *v16 = v1;
    v16[1] = sub_1DA2EB204;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    if (!v17)
    {
      OUTLINED_FUNCTION_32();
      v21 = sub_1DA34C8C0();
      sub_1DA34CDA0();
      OUTLINED_FUNCTION_52();
      if (OUTLINED_FUNCTION_51())
      {
        OUTLINED_FUNCTION_33();
        v27 = OUTLINED_FUNCTION_25();
        *v2 = 136315138;
        sub_1DA300D78(v8, v14, &v27);
        OUTLINED_FUNCTION_57();
        *(v2 + 4) = v8;
        OUTLINED_FUNCTION_11(&dword_1DA2E0000, v22, v23, "Error fetching or evaluating tip document: %s");
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_23();
      }

      else
      {
      }

      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_65();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_61();
    v18 = swift_task_alloc();
    v1[11] = v18;
    *v18 = v1;
    OUTLINED_FUNCTION_1_1(v18);
  }

  OUTLINED_FUNCTION_65();

  return MEMORY[0x1EEE49AF0](v19);
}

uint64_t sub_1DA2EB204()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2EB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 80);
  if (v13)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_44();
    if (swift_dynamicCastObjCClass())
    {

      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_19();
  if (!v14)
  {
    OUTLINED_FUNCTION_32();
    v18 = sub_1DA34C8C0();
    sub_1DA34CDA0();
    OUTLINED_FUNCTION_52();
    if (OUTLINED_FUNCTION_51())
    {
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_26(4.8149e-34, v19, v20);
      OUTLINED_FUNCTION_57();
      *(v12 + 4) = v10;
      OUTLINED_FUNCTION_11(&dword_1DA2E0000, v21, v22, "Error fetching or evaluating tip document: %s");
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

LABEL_12:
    OUTLINED_FUNCTION_36();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }

  OUTLINED_FUNCTION_61();
  v15 = swift_task_alloc();
  *(v11 + 88) = v15;
  *v15 = v11;
  OUTLINED_FUNCTION_1_1(v15);
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE49AF0](v16);
}

uint64_t sub_1DA2EB470()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2EB578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  v13 = *(v11 + 96);
  if (v13)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_44();
    if (swift_dynamicCastObjCClass())
    {

      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_32();
  v14 = sub_1DA34C8C0();
  sub_1DA34CDA0();
  OUTLINED_FUNCTION_52();
  if (OUTLINED_FUNCTION_51())
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_26(4.8149e-34, v15, v16);
    OUTLINED_FUNCTION_57();
    *(v12 + 4) = v10;
    OUTLINED_FUNCTION_11(&dword_1DA2E0000, v17, v18, "Error fetching or evaluating tip document: %s");
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

LABEL_8:
  OUTLINED_FUNCTION_36();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1DA2EB680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19();
  if (v13)
  {
    OUTLINED_FUNCTION_61();
    v14 = swift_task_alloc();
    *(v11 + 88) = v14;
    *v14 = v11;
    OUTLINED_FUNCTION_1_1(v14);
    OUTLINED_FUNCTION_36();

    return MEMORY[0x1EEE49AF0](v15);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v17 = sub_1DA34C8C0();
    sub_1DA34CDA0();
    OUTLINED_FUNCTION_52();
    if (OUTLINED_FUNCTION_51())
    {
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_26(4.8149e-34, v18, v19);
      OUTLINED_FUNCTION_57();
      *(v12 + 4) = v10;
      OUTLINED_FUNCTION_11(&dword_1DA2E0000, v20, v21, "Error fetching or evaluating tip document: %s");
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_36();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1DA2EB7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v12 = sub_1DA34C8C0();
  sub_1DA34CDA0();
  OUTLINED_FUNCTION_52();
  if (OUTLINED_FUNCTION_51())
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_26(4.8149e-34, v13, v14);
    OUTLINED_FUNCTION_57();
    *(v11 + 4) = v10;
    OUTLINED_FUNCTION_11(&dword_1DA2E0000, v15, v16, "Error fetching or evaluating tip document: %s");
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1DA2EB86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1DA34BFB0();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_1DA34B940();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = *(type metadata accessor for Action(0) - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2EB9E4, 0, 0);
}

uint64_t sub_1DA2EB9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_60();
  a18 = v20;
  v25 = sub_1DA34BB10();
  v20[22] = v25;
  v20[23] = v26;
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    sub_1DA2EEF28(*(v20[13] + 32) + 16, (v20 + 2));
    v28 = sub_1DA2E814C();
    __swift_destroy_boxed_opaque_existential_1(v20 + 2);
    if (v28 & 1) != 0 && (sub_1DA2E838C())
    {
      v20[24] = *(v20[13] + 24);
      v29 = swift_task_alloc();
      v20[25] = v29;
      *v29 = v20;
      v29[1] = sub_1DA2EBC5C;
      OUTLINED_FUNCTION_27();

      return sub_1DA32446C(v30, v31);
    }

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v34 = sub_1DA34C8E0();
    __swift_project_value_buffer(v34, qword_1EE109060);
    v35 = OUTLINED_FUNCTION_2_1();
    v36(v35);
    v37 = sub_1DA34C8C0();
    v38 = sub_1DA34CD80();
    v39 = OUTLINED_FUNCTION_28(v38);
    v40 = v20[16];
    if (v39)
    {
      v41 = OUTLINED_FUNCTION_37();
      a9 = OUTLINED_FUNCTION_39();
      *v41 = 136315138;
      sub_1DA34BD10();
      OUTLINED_FUNCTION_48();
      v42 = OUTLINED_FUNCTION_10_0();
      v43(v42);
      sub_1DA300D78(v21, v22, &a9);
      OUTLINED_FUNCTION_55();
      *(v41 + 4) = v40;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v49 = OUTLINED_FUNCTION_10_0();
      v50(v49);
    }
  }

  else
  {
  }

  type metadata accessor for TroubleshootingSnippetModel(0);
  v51 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30(v51, v52, v53, v54);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
}

uint64_t sub_1DA2EBC5C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v4;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA2EBD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_50();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  v22 = *(v18 + 208);
  if (v22)
  {
    *(v18 + 224) = sub_1DA3248D0(*(v18 + 176), *(v18 + 184), *(v18 + 208));
    *(v18 + 232) = v23;
    if (v23)
    {
      v24 = swift_task_alloc();
      *(v18 + 240) = v24;
      *v24 = v18;
      v24[1] = sub_1DA2EBF2C;
      OUTLINED_FUNCTION_36();

      return sub_1DA324AA8();
    }
  }

  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v27 = sub_1DA34C8E0();
  __swift_project_value_buffer(v27, qword_1EE109060);

  v28 = sub_1DA34C8C0();
  sub_1DA34CDA0();
  OUTLINED_FUNCTION_52();
  v29 = OUTLINED_FUNCTION_51();
  v30 = *(v18 + 184);
  if (v29)
  {
    v31 = *(v18 + 176);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_49();
    *v19 = 136315138;
    v32 = sub_1DA300D78(v31, v30, &a10);

    *(v19 + 4) = v32;
    OUTLINED_FUNCTION_11(&dword_1DA2E0000, v33, v34, "No dialog result found for %s");
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

  OUTLINED_FUNCTION_69();
  v35 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30(v35, v36, v37, v38);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_1DA2EBF2C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  v2[31] = v4;
  v2[32] = v5;
  v2[33] = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA2EC030()
{
  v39 = v0;
  v2 = v0[32];
  if (v2)
  {
    v32 = v0[31];
    v34 = v0[28];
    v35 = v0[29];
    v3 = v0[22];
    v4 = v0[23];
    v33 = v0[21];
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[17];
    v36 = v0[12];
    v37 = v0[26];
    v8 = v0[10];
    sub_1DA34B930();
    v9 = sub_1DA34B920();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    sub_1DA34CEC0();

    v38[0] = 0xD000000000000014;
    v38[1] = 0x80000001DA354B30;
    MEMORY[0x1DA74A690](v3, v4);
    MEMORY[0x1DA74A690](0xD000000000000018, 0x80000001DA354B50);
    sub_1DA34BE00();
    v12 = swift_task_alloc();
    v12[2] = v9;
    v12[3] = v11;
    v12[4] = v32;
    v12[5] = v2;
    v12[6] = 0xD000000000000014;
    v12[7] = 0x80000001DA354B30;
    sub_1DA2EF2D8(&qword_1ECBA58A8, MEMORY[0x1E69BCD78]);
    sub_1DA34C7B0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58B0, &unk_1DA34DF00);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DA34DC80;
    sub_1DA2EF25C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58B8, &qword_1DA34FEF0);
    type metadata accessor for TextRun(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DA34DC80;
    sub_1DA34BA10();
    v15 = swift_task_alloc();
    *(v15 + 16) = v34;
    *(v15 + 24) = v35;
    *(v15 + 32) = 1;
    sub_1DA2EF2D8(&qword_1EE10ACC8, MEMORY[0x1E69BCCB0]);
    sub_1DA34C7B0();

    *v8 = v3;
    v8[1] = v4;
    v16 = type metadata accessor for TroubleshootingSnippetModel(0);
    v0[7] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
    sub_1DA34C0D0();
    v0[8] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA34C0D0();
    v0[9] = v36;
    type metadata accessor for FlowContext();

    sub_1DA34C0D0();

    sub_1DA2EF31C(v33, type metadata accessor for Action);
    OUTLINED_FUNCTION_45();
    v20 = v16;
  }

  else
  {
    v21 = v0[26];

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_1EE109058);
    }

    v22 = sub_1DA34C8E0();
    __swift_project_value_buffer(v22, qword_1EE109060);

    v23 = sub_1DA34C8C0();
    sub_1DA34CDA0();
    OUTLINED_FUNCTION_52();
    v24 = OUTLINED_FUNCTION_51();
    v25 = v0[23];
    if (v24)
    {
      v26 = v0[22];
      OUTLINED_FUNCTION_37();
      v38[0] = OUTLINED_FUNCTION_25();
      *v1 = 136315138;
      v27 = sub_1DA300D78(v26, v25, v38);

      *(v1 + 4) = v27;
      OUTLINED_FUNCTION_11(&dword_1DA2E0000, v28, v29, "No dialog result found for %s");
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

    OUTLINED_FUNCTION_69();
    v17 = OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_30(v17, v18, v19, v20);

  OUTLINED_FUNCTION_15();

  return v30();
}

void sub_1DA2EC588(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 216);
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v3 = sub_1DA34C8E0();
  __swift_project_value_buffer(v3, qword_1EE109060);

  v4 = sub_1DA34C8C0();
  v5 = sub_1DA34CDA0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_37();
    v7 = OUTLINED_FUNCTION_39();
    v15 = OUTLINED_FUNCTION_64(4.8149e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);

    *(v6 + 4) = v15;
    OUTLINED_FUNCTION_66(&dword_1DA2E0000, v16, v17, "Error creating TroubleshootingSnippetModel for %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  OUTLINED_FUNCTION_69();
  v18 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30(v18, v19, v20, v21);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_65();

  __asm { BRAA            X1, X16 }
}

void sub_1DA2EC6F8(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 208);

  v3 = *(v1 + 264);
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1EE109058);
  }

  v4 = sub_1DA34C8E0();
  __swift_project_value_buffer(v4, qword_1EE109060);

  v5 = sub_1DA34C8C0();
  v6 = sub_1DA34CDA0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_37();
    v8 = OUTLINED_FUNCTION_39();
    v16 = OUTLINED_FUNCTION_64(4.8149e-34, v8, v9, v10, v11, v12, v13, v14, v15, v8);

    *(v7 + 4) = v16;
    OUTLINED_FUNCTION_66(&dword_1DA2E0000, v17, v18, "Error creating TroubleshootingSnippetModel for %s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  OUTLINED_FUNCTION_69();
  v19 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30(v19, v20, v21, v22);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_65();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DA2EC878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v4 = MEMORY[0x1EEE9AC00](v33);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v27 - v14;
  type metadata accessor for TroubleshootingSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  sub_1DA34C0F0();
  v15 = *(v35 + 16);

  if (v15)
  {
    sub_1DA34C0F0();
    v28 = v35;
    v16 = type metadata accessor for AttributionModel(0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA34C0F0();
    v30 = v35;
    v17 = type metadata accessor for SupplementarySnippetModel(0);
    v32 = a2;
    v18 = *(v17 + 20);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
    v31 = a1;
    sub_1DA2EEED0();
    sub_1DA34C0D0();
    v27 = v9;
    sub_1DA2EF188(v7, &qword_1ECBA5840, "lt");
    v19 = *(v17 + 24);
    v29 = xmmword_1DA34DDC0;
    v35 = xmmword_1DA34DDC0;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5888, &unk_1DA34DEE0);
    sub_1DA34C0D0();
    *&v35 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
    sub_1DA34C0D0();
    sub_1DA2EEED0();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    (*(*(v20 - 8) + 8))(&v13[v18], v20);
    sub_1DA2EEED0();
    a2 = v32;
    sub_1DA34C0D0();
    sub_1DA2EF188(v7, &qword_1ECBA5840, "lt");
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
    (*(*(v21 - 8) + 8))(&v13[v19], v21);
    v35 = v29;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    sub_1DA34C0D0();
    *&v35 = v30;
    type metadata accessor for FlowContext();
    sub_1DA34C0D0();
    sub_1DA2EF188(v27, &qword_1ECBA5840, "lt");
    v22 = type metadata accessor for TellMeGeneratedSnippetModels(0);
    swift_storeEnumTagMultiPayload();
    v23 = v13;
    v24 = 0;
  }

  else
  {
    v22 = type metadata accessor for TellMeGeneratedSnippetModels(0);
    v23 = v13;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  sub_1DA2EF030();
  v25 = *(type metadata accessor for SnippetResponseComponents(0) + 20);
  sub_1DA2EF25C();
  type metadata accessor for TellMeGeneratedSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(a2 + v25, 0, 1, v22);
  return sub_1DA2EF030();
}

uint64_t sub_1DA2ECD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5858, &qword_1DA34DEA8);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5860, &unk_1DA34DEB0);
  v4[43] = swift_task_alloc();
  v4[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5868, &qword_1DA34F040);
  v4[45] = swift_task_alloc();
  sub_1DA34B740();
  v4[46] = swift_task_alloc();
  v5 = sub_1DA34B700();
  v4[47] = v5;
  v4[48] = *(v5 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2ECF34, 0, 0);
}

void *sub_1DA2ECF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_63();
  v15 = v14[41];
  v67 = v14[39];
  sub_1DA2EEF28(v14[40], (v14 + 11));
  v16 = *(v15 + 24);
  v14[53] = v16;
  v17 = *(v15 + 32);
  v18 = v14[14];
  __swift_mutable_project_boxed_opaque_existential_1((v14 + 11), v18);
  v19 = *(v18 - 8);
  v20 = swift_task_alloc();
  v14[54] = v20;
  (*(v19 + 16))();
  v21 = *v20;
  v22 = type metadata accessor for TipsApp();
  v14[16] = v21;
  v14[19] = v22;
  v14[20] = &off_1F55E0128;
  type metadata accessor for AttributionItemFactory();
  inited = swift_initStackObject();
  v14[55] = inited;
  v24 = v14[19];
  v25 = __swift_mutable_project_boxed_opaque_existential_1((v14 + 16), v24);
  v26 = *(v24 - 8);
  v27 = swift_task_alloc();
  (*(v26 + 16))(v27, v25, v24);
  v28 = *v27;
  inited[5] = v22;
  inited[6] = &off_1F55E0128;
  inited[7] = v16;
  inited[2] = v28;
  inited[8] = v17;

  __swift_destroy_boxed_opaque_existential_1(v14 + 16);

  __swift_destroy_boxed_opaque_existential_1(v14 + 11);
  v29 = sub_1DA34BAF0();
  v30 = sub_1DA32820C(v29);

  Array<A>.asAttributionGroups()(v30);
  v32 = v31;
  v14[56] = v31;

  v33 = *(v32 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v14[58] = 0;
  v14[59] = v34;
  v14[57] = v33;
  result = v14[56];
  if (v33)
  {
    if (result[2])
    {
      v14[60] = result[4];
      v14[61] = result[5];
      v14[62] = result[7];
      v14[63] = result[8];
      swift_bridgeObjectRetain_n();

      v36 = swift_task_alloc();
      v14[64] = v36;
      *v36 = v14;
      OUTLINED_FUNCTION_17(v36);
      OUTLINED_FUNCTION_35();

      return sub_1DA2FD6A0(v37, v38, v39);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v41 = *(v34 + 16);
    if (v41)
    {
      sub_1DA348A4C(0, v41, 0);
      v42 = v34;
      v43 = *(v34 + 16);
      v44 = (v34 + 56);
      v45 = 16 * v43;
      do
      {
        v47 = *(v44 - 1);
        v46 = *v44;
        v48 = v43 + 1;
        v49 = *(v42 + 24);

        if (v43 >= v49 >> 1)
        {
          sub_1DA348A4C((v49 > 1), v48, 1);
        }

        *(v42 + 16) = v48;
        v50 = v42 + v45;
        *(v50 + 32) = v47;
        *(v50 + 40) = v46;
        v45 += 16;
        v44 += 5;
        ++v43;
        --v41;
      }

      while (v41);
      v14[66] = v42;
      v51 = swift_task_alloc();
      v14[67] = v51;
      *v51 = v14;
      OUTLINED_FUNCTION_18(v51);
      OUTLINED_FUNCTION_35();

      return sub_1DA2FDCD4(v52);
    }

    else
    {

      OUTLINED_FUNCTION_54();
      swift_setDeallocating();
      v54 = sub_1DA328944();
      OUTLINED_FUNCTION_68(v54);

      type metadata accessor for AttributionModel(0);
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
      OUTLINED_FUNCTION_34();

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_35();

      return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, v67, a11, a12, a13, a14);
    }
  }

  return result;
}

uint64_t sub_1DA2ED38C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v1[30] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v8 + 520) = v7;

  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA2ED474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  v13 = *(v12 + 520);
  if (v13)
  {
    v14 = *(v12 + 248);
  }

  else
  {
    v14 = *(v12 + 480);
    v13 = *(v12 + 488);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v12 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DA2FC02C(0, *(v16 + 16) + 1, 1, *(v12 + 472));
    v16 = v58;
  }

  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_1DA2FC02C(v17 > 1, v18 + 1, 1, v16);
    v16 = v59;
  }

  v19 = *(v12 + 504);
  v21 = *(v12 + 480);
  v20 = *(v12 + 488);

  *(v16 + 16) = v18 + 1;
  v22 = (v16 + 40 * v18);
  v22[4] = v21;
  v22[5] = v20;
  v22[6] = v14;
  v22[7] = v13;
  v22[8] = v19;
  v23 = *(v12 + 456);
  v24 = *(v12 + 464) + 1;
  *(v12 + 464) = v24;
  *(v12 + 472) = v16;
  result = *(v12 + 448);
  if (v24 == v23)
  {

    v26 = *(v16 + 16);
    if (v26)
    {
      v60 = MEMORY[0x1E69E7CC0];
      sub_1DA348A4C(0, v26, 0);
      v27 = v60;
      v28 = *(v60 + 16);
      v29 = 16 * v28;
      v30 = (v16 + 56);
      do
      {
        v32 = *(v30 - 1);
        v31 = *v30;
        v33 = v28 + 1;
        v34 = *(v60 + 24);

        if (v28 >= v34 >> 1)
        {
          sub_1DA348A4C((v34 > 1), v33, 1);
        }

        *(v60 + 16) = v33;
        v35 = v60 + v29;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31;
        v29 += 16;
        v30 += 5;
        ++v28;
        --v26;
      }

      while (v26);
      goto LABEL_20;
    }

    v27 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_20:
      *(v12 + 528) = v27;
      v42 = swift_task_alloc();
      *(v12 + 536) = v42;
      *v42 = v12;
      OUTLINED_FUNCTION_18(v42);
      OUTLINED_FUNCTION_27();

      return sub_1DA2FDCD4(v43);
    }

    OUTLINED_FUNCTION_54();
    swift_setDeallocating();
    v45 = sub_1DA328944();
    OUTLINED_FUNCTION_68(v45);

    type metadata accessor for AttributionModel(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    OUTLINED_FUNCTION_34();

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_27();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
  }

  else if (v24 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v36 = (result + 40 * v24);
    *(v12 + 480) = v36[4];
    *(v12 + 488) = v36[5];
    *(v12 + 496) = v36[7];
    *(v12 + 504) = v36[8];
    swift_bridgeObjectRetain_n();

    v37 = swift_task_alloc();
    *(v12 + 512) = v37;
    *v37 = v12;
    OUTLINED_FUNCTION_17(v37);
    OUTLINED_FUNCTION_27();

    return sub_1DA2FD6A0(v38, v39, v40);
  }

  return result;
}

uint64_t sub_1DA2ED7D8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v1[33] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v8 + 544) = v7;

  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA2ED8DC(uint64_t a1)
{
  if (v1[68])
  {
    v2 = v1[59];
    v4 = v1[50];
    v3 = v1[51];
    v5 = v1[47];
    v6 = v1[48];
    sub_1DA34B730();
    OUTLINED_FUNCTION_40();
    sub_1DA34B710();
    v42 = *(v6 + 16);
    v42(v4, v3, v5);
    v7 = *(v2 + 16);
    if (v7)
    {
      v8 = v1[59];
      v43 = sub_1DA34B970();
      v9 = (v8 + 64);
      do
      {
        v10 = v1[43];
        v46 = v1[44];
        v11 = v1[42];
        v12 = *(v9 - 3);
        v13 = *(v9 - 1);
        v14 = *v9;
        v44 = *(v9 - 2);
        v45 = *(v9 - 4);
        v1[36] = v44;
        v1[37] = v13;
        OUTLINED_FUNCTION_21();
        __swift_storeEnumTagSinglePayload(v15, v16, v17, v43);
        sub_1DA2EF2D8(&qword_1EE109F38, MEMORY[0x1E6968848]);
        sub_1DA2EEFDC();

        swift_bridgeObjectRetain_n();
        v47 = v14;

        sub_1DA34B850();
        sub_1DA2EF188(v11, &qword_1ECBA5858, &qword_1DA34DEA8);

        if (__swift_getEnumTagSinglePayload(v10, 1, v46) == 1)
        {
          v18 = v1[43];

          v19 = v18;
          v20 = &qword_1ECBA5860;
          v21 = &unk_1DA34DEB0;
        }

        else
        {
          v22 = v1[45];
          sub_1DA2EF030();
          sub_1DA2EF088();
          v23 = sub_1DA34B720();
          v1[21] = v45;
          v1[22] = v12;
          v1[23] = v44;
          v1[24] = v13;
          v1[25] = v47;
          sub_1DA2EF134();
          sub_1DA34B780();
          v23(v1 + 26, 0);
          v19 = v22;
          v20 = &qword_1ECBA5868;
          v21 = &qword_1DA34F040;
        }

        sub_1DA2EF188(v19, v20, v21);
        v9 += 5;
        --v7;
      }

      while (v7);
    }

    v24 = v1[52];
    v26 = v1[49];
    v25 = v1[50];
    v27 = v1[47];
    v28 = v1[48];
    v29 = *(v28 + 8);
    v29(v1[51], v27);

    (*(v28 + 32))(v24, v25, v27);
    v42(v26, v24, v27);
    AttributionModel.init(label:)(v26);
    swift_setDeallocating();
    v30 = sub_1DA328944();
    OUTLINED_FUNCTION_68(v30);
    v29(v24, v27);
    type metadata accessor for AttributionModel(0);
    OUTLINED_FUNCTION_45();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_54();
    swift_setDeallocating();
    v35 = sub_1DA328944();
    OUTLINED_FUNCTION_68(v35);

    type metadata accessor for AttributionModel(0);
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }

  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_15();

  return v40();
}

uint64_t sub_1DA2EDCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a1;
  v69 = a6;
  v63 = a5;
  v73 = a4;
  v8 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = sub_1DA34BFB0();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - v16;
  v18 = sub_1DA34BAE0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v61 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v70 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v57 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v57 - v30;
  __swift_storeEnumTagSinglePayload(&v57 - v30, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  sub_1DA34BB00();
  v62 = v19;
  v32 = *(v19 + 88);
  v65 = v18;
  v33 = v32(v23, v18);
  v34 = *MEMORY[0x1E69BCCE8];
  v71 = a3;
  if (v33 == v34)
  {
    v35 = v69;
    sub_1DA2EE4CC(a3, v73, v69, v29);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v8);
    sub_1DA2EEE60(v29, a2);
    v36 = a2;
  }

  else
  {
    v60 = a2;
    v37 = v69;
    if (v33 == *MEMORY[0x1E69BCCE0])
    {
      (*(v67 + 16))(v17, v71, v68);
      sub_1DA2EEED0();
      v35 = v37;

      sub_1DA340330(v17, v12, v37, v29);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v8);
      v36 = v60;
      sub_1DA2EEE60(v29, v60);
    }

    else
    {
      v38 = v68;
      if (v33 == *MEMORY[0x1E69BCCF0])
      {
        v39 = v71;
        (*(v67 + 16))(v17, v71, v68);
        v35 = v37;

        LearnMoreSnippetModel.init(result:context:)(v17, v37);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v29, 0, 1, v8);
        v36 = v60;
        sub_1DA2EEE60(v29, v60);
        sub_1DA2EE72C(v39, v63, v37);
        sub_1DA2EF188(v31, &qword_1ECBA5848, qword_1DA34DF20);
        __swift_storeEnumTagSinglePayload(v29, 0, 1, v8);
        sub_1DA2EF030();
      }

      else
      {
        v40 = v71;
        if (qword_1EE109058 != -1)
        {
          swift_once();
        }

        v41 = sub_1DA34C8E0();
        __swift_project_value_buffer(v41, qword_1EE109060);
        v42 = v67;
        v43 = v64;
        (*(v67 + 16))(v64, v40, v38);
        v44 = sub_1DA34C8C0();
        LODWORD(v63) = sub_1DA34CDA0();
        v45 = os_log_type_enabled(v44, v63);
        v46 = v65;
        if (v45)
        {
          v58 = swift_slowAlloc();
          *v58 = 134217984;
          v47 = v61;
          v59 = v44;
          sub_1DA34BB00();
          v57 = sub_1DA34BAD0();
          v48 = *(v62 + 8);
          v49 = v47;
          v46 = v65;
          v48(v49, v65);
          (*(v42 + 8))(v64, v38);
          v50 = v58;
          *(v58 + 4) = v57;
          v51 = v59;
          _os_log_impl(&dword_1DA2E0000, v59, v63, "Unhandled template type: %ld", v50, 0xCu);
          MEMORY[0x1DA74B3A0](v50, -1, -1);
        }

        else
        {
          (*(v42 + 8))(v43, v38);

          v48 = *(v62 + 8);
        }

        v36 = v60;
        v48(v23, v46);
        v35 = v37;
      }
    }
  }

  v52 = v70;
  sub_1DA2EEED0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v8);
  sub_1DA2EF188(v52, &qword_1ECBA5848, qword_1DA34DF20);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DA2EE9D4(v71, v73, v35, v29);
    sub_1DA2EF188(v31, &qword_1ECBA5848, qword_1DA34DF20);
    sub_1DA2EF030();
  }

  if (__swift_getEnumTagSinglePayload(v36, 1, v8))
  {
    v54 = 0;
  }

  else
  {
    v55 = v66;
    sub_1DA2EF25C();
    v54 = sub_1DA30B5E8();
    sub_1DA2EF31C(v55, type metadata accessor for TellMeGeneratedSnippetModels);
  }

  swift_beginAccess();
  *(v35 + 97) = v54 & 1;
  return sub_1DA2EF030();
}

uint64_t sub_1DA2EE4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1DA34BFB0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DA34BED0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34BEE0();
  v17 = sub_1DA34BA50();
  (*(v14 + 8))(v16, v13);
  v18 = *(v17 + 16);

  (*(v10 + 16))(v12, a1, v9);
  sub_1DA2EEED0();

  if (v18)
  {
    sub_1DA32A2E0(v12, v8, a3, v21);
  }

  else
  {
    sub_1DA340330(v12, v8, a3, v21);
  }

  type metadata accessor for TellMeGeneratedSnippetModels(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DA2EE72C(void x0_0, uint64_t a1, uint64_t a2)
{
  sub_1DA2EEF28(a1, v27);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v27, v27[3]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for TipsApp();
  v25 = v12;
  v26 = &off_1F55E0128;
  v24[0] = v11;
  type metadata accessor for AttributionItemFactory();
  inited = swift_initStackObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  inited[5] = v12;
  inited[6] = &off_1F55E0128;
  inited[2] = v18;
  inited[7] = v6;
  inited[8] = v5;

  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  v19 = sub_1DA34BAF0();
  v20 = sub_1DA32820C(v19);

  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5850, &qword_1DA34DEA0);
  sub_1DA34C0D0();
  type metadata accessor for AttributionListSnippetModel(0);
  v23 = a2;
  type metadata accessor for FlowContext();

  sub_1DA34C0D0();
  swift_setDeallocating();
  sub_1DA328944();
  swift_deallocClassInstance();
  type metadata accessor for TellMeGeneratedSnippetModels(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DA2EE9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v36 = a4;
  v32[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = v32 - v6;
  v33 = sub_1DA34BFB0();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SupplementarySnippetModel(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DA34BAE0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - v18;
  sub_1DA34BB00();
  (*(v14 + 104))(v17, *MEMORY[0x1E69BCCF0], v13);
  sub_1DA2EF2D8(&qword_1EE109F20, MEMORY[0x1E69BCCF8]);
  sub_1DA34CC40();
  sub_1DA34CC40();
  v20 = *(v14 + 8);
  v20(v17, v13);
  v20(v19, v13);
  v22 = v37;
  v21 = v38;
  (*(v7 + 16))(v9, a1, v33);
  if (v21 == v22)
  {
    v23 = v34;
    sub_1DA2EEED0();
  }

  else
  {
    v24 = type metadata accessor for AttributionModel(0);
    v23 = v34;
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v24);
  }

  v25 = v35;

  sub_1DA303FBC(v9, v23, 0, v25, v12);
  if (sub_1DA3045EC())
  {
    v26 = v36;
    sub_1DA2EF1E0();
    v27 = type metadata accessor for TellMeGeneratedSnippetModels(0);
    swift_storeEnumTagMultiPayload();
    v28 = v26;
    v29 = 0;
    v30 = v27;
  }

  else
  {
    sub_1DA2EF31C(v12, type metadata accessor for SupplementarySnippetModel);
    v30 = type metadata accessor for TellMeGeneratedSnippetModels(0);
    v28 = v36;
    v29 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v28, v29, 1, v30);
}

void *sub_1DA2EEDB0()
{

  return v0;
}

uint64_t sub_1DA2EEDE0()
{
  sub_1DA2EEDB0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA2EEE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2EEED0()
{
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  return v0;
}

uint64_t sub_1DA2EEF28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1DA2EEFDC()
{
  result = qword_1EE109028;
  if (!qword_1EE109028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109028);
  }

  return result;
}

uint64_t sub_1DA2EF030()
{
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  return v0;
}

unint64_t sub_1DA2EF088()
{
  result = qword_1EE109000;
  if (!qword_1EE109000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5868, &qword_1DA34F040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109000);
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

unint64_t sub_1DA2EF134()
{
  result = qword_1EE10AD98;
  if (!qword_1EE10AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AD98);
  }

  return result;
}

uint64_t sub_1DA2EF188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DA2EF1E0()
{
  OUTLINED_FUNCTION_62();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_40();
  v3(v2);
  return v0;
}

uint64_t sub_1DA2EF25C()
{
  OUTLINED_FUNCTION_62();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_40();
  v3(v2);
  return v0;
}

uint64_t sub_1DA2EF2D8(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA2EF31C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_3_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA74B3A0);
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return sub_1DA2EF1E0();
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x1DA74B3A0);
}

void OUTLINED_FUNCTION_23()
{

  JUMPOUT(0x1DA74B3A0);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_26(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1DA300D78(v3, v4, va);
}

BOOL OUTLINED_FUNCTION_28(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_32()
{
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34()
{
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_51()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_52()
{
}

unint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DA300D78(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_54()
{
}

uint64_t OUTLINED_FUNCTION_55()
{
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_57()
{
}

unint64_t OUTLINED_FUNCTION_64(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1DA300D78(v11, v10, &a10);
}

void OUTLINED_FUNCTION_66(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1)
{

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return type metadata accessor for TroubleshootingSnippetModel(0);
}

uint64_t type metadata accessor for SnippetResponseComponents(uint64_t a1)
{
  result = qword_1EE109370;
  if (!qword_1EE109370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA2EFA28(uint64_t a1)
{
  sub_1DA2EFA94(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DA2EFA94(uint64_t a1)
{
  if (!qword_1EE109238)
  {
    type metadata accessor for TellMeGeneratedSnippetModels(255);
    v1 = sub_1DA34CE20();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE109238);
    }
  }
}

uint64_t sub_1DA2EFB1C(uint64_t (*a1)(void))
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_3_1();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SnippetResponseComponents(0);
  sub_1DA2F00BC(v3 + *(v11 + 20), v10);
  v12 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    sub_1DA2F012C(v10);
  }

  else
  {
    v13 = a1();
    OUTLINED_FUNCTION_0_2();
    sub_1DA2F0194(v10, v14);
    if (v13)
    {
      v15 = 1;
      return v15 & 1;
    }
  }

  sub_1DA2F00BC(v3, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    sub_1DA2F012C(v7);
    v15 = 0;
  }

  else
  {
    v15 = a1();
    OUTLINED_FUNCTION_0_2();
    sub_1DA2F0194(v7, v16);
  }

  return v15 & 1;
}

uint64_t sub_1DA2EFC7C()
{
  v1 = v0;
  v2 = type metadata accessor for ListStyleAnswerSnippetModel(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_3_1();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  sub_1DA2F00BC(v1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1DA2F012C(v15);
  }

  else
  {
    sub_1DA2F01EC(v15, v23, type metadata accessor for TellMeGeneratedSnippetModels);
    sub_1DA2F01EC(v23, v20, type metadata accessor for TellMeGeneratedSnippetModels);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_0_2();
    sub_1DA2F0194(v20, v25);
    if (EnumCaseMultiPayload == 5)
    {
      return 5;
    }
  }

  v27 = type metadata accessor for SnippetResponseComponents(0);
  sub_1DA2F00BC(v1 + *(v27 + 20), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
LABEL_6:
    v26 = 0;
  }

  else
  {
    sub_1DA2F00BC(v13, v9);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_0_2();
        sub_1DA2F0194(v9, v29);
        v26 = 4;
        break;
      case 2u:
        sub_1DA2F01EC(v9, v5, type metadata accessor for ListStyleAnswerSnippetModel);
        v31 = v5[*(v2 + 44)];
        sub_1DA2F0194(v5, type metadata accessor for ListStyleAnswerSnippetModel);
        if (v31)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        break;
      case 3u:
        OUTLINED_FUNCTION_0_2();
        sub_1DA2F0194(v9, v30);
        v26 = 3;
        break;
      case 6u:
        OUTLINED_FUNCTION_0_2();
        sub_1DA2F0194(v9, v32);
        v26 = 6;
        break;
      default:
        OUTLINED_FUNCTION_0_2();
        sub_1DA2F0194(v9, v33);
        goto LABEL_6;
    }
  }

  sub_1DA2F012C(v13);
  return v26;
}

uint64_t sub_1DA2EFF9C()
{
  result = sub_1DA2EFC7C();
  switch(result)
  {
    case 1:
      OUTLINED_FUNCTION_1_2();
      result = v1 | 8;
      break;
    case 2:
      OUTLINED_FUNCTION_1_2();
      result = v3 + 10;
      break;
    case 3:
      OUTLINED_FUNCTION_1_2();
      result = v4 | 4;
      break;
    case 4:
      OUTLINED_FUNCTION_1_2();
      result = v2 + 6;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      OUTLINED_FUNCTION_1_2();
      result = v5 + 16;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA2F00BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2F012C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA2F0194(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DA2F01EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t TipCollectionModel.collectionIdentifier.setter()
{
  OUTLINED_FUNCTION_4_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TipCollectionModel.collectionSymbol.setter()
{
  OUTLINED_FUNCTION_4_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TipCollectionModel.title.setter()
{
  OUTLINED_FUNCTION_4_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t TipCollectionModel.bodyText.setter()
{
  OUTLINED_FUNCTION_4_1();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t TipCollectionModel.init(result:collection:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  sub_1DA2E616C(a1, &v26 - v7);
  v9 = sub_1DA34BFB0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_1DA34BC70();
    v11 = v16;
    (*(*(v9 - 8) + 8))(v8, v9);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    v13 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  sub_1DA2E6204(v8);
  v10 = 0;
  v11 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [a2 tocAssets];
  v26 = v11;
  v27 = v10;
  if (v12)
  {
    v13 = sub_1DA2F0ED0(v12, &selRef_symbolId);
    v15 = v14;
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

  v20 = a2;
  a2 = sub_1DA2F0ED0(v20, &selRef_title);
  v17 = v21;
  v22 = [v20 tileContent];
  v23 = [v22 bodyText];

  if (v23)
  {
    v18 = sub_1DA34CB40();
    v19 = v24;
  }

  else
  {

    v18 = 0;
    v19 = 0;
  }

  v11 = v26;
  v10 = v27;
LABEL_12:
  result = sub_1DA2E6204(a1);
  *a3 = v10;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v15;
  a3[4] = a2;
  a3[5] = v17;
  a3[6] = v18;
  a3[7] = v19;
  return result;
}

void TipCollectionModel.punchOutUrl.getter()
{
  if (*(v0 + 8))
  {
    v1 = sub_1DA34CB30();
  }

  else
  {
    v1 = 0;
  }

  v2 = [objc_opt_self() URLWithTipIdentifier:0 collectionIdentifier:v1 referrer:0];

  sub_1DA34B8A0();
}

uint64_t sub_1DA2F0738(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001DA354C40 == a2;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DA354C60 == a2;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7478655479646F62 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA34D160();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DA2F08A4(unsigned __int8 a1)
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](a1);
  return sub_1DA34D230();
}

unint64_t sub_1DA2F08EC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7478655479646F62;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1DA2F0988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F0738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2F09B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2F089C();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2F09D8(uint64_t a1)
{
  v2 = sub_1DA2F0F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F0A14(uint64_t a1)
{
  v2 = sub_1DA2F0F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TipCollectionModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C8, &qword_1DA34DF98);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v19 = v1[7];
  v20 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F0F3C();
  sub_1DA34D250();
  v28[1] = 0;
  v12 = v25;
  sub_1DA34D0C0();
  if (!v12)
  {
    v14 = v21;
    v13 = v22;
    v16 = v19;
    v15 = v20;
    v28[0] = 1;
    OUTLINED_FUNCTION_2_2(v24, v23, v28);
    v27 = 2;
    OUTLINED_FUNCTION_2_2(v13, v14, &v27);
    v26 = 3;
    OUTLINED_FUNCTION_2_2(v15, v16, &v26);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t TipCollectionModel.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58D8, &qword_1DA34DFA0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DA2F0F3C();
  sub_1DA34D240();
  if (v2)
  {
    OUTLINED_FUNCTION_3_2();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32 = 0uLL;
    v33 = v7;
    v34 = a2;
    v35 = v10;
    v36 = v9;
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v26 = a2;
    *&v27 = OUTLINED_FUNCTION_1_3();
    *(&v27 + 1) = v12;
    v13 = OUTLINED_FUNCTION_1_3();
    v15 = v14;
    LOBYTE(v32) = 2;
    v16 = OUTLINED_FUNCTION_1_3();
    v18 = v17;
    v39 = 3;
    v19 = sub_1DA34D030();
    v20 = OUTLINED_FUNCTION_0_3();
    v22 = v21;
    v23(v20, v5);
    v28 = v27;
    *&v29 = v13;
    *(&v29 + 1) = v15;
    *&v30 = v16;
    *(&v30 + 1) = v18;
    *&v31 = v19;
    *(&v31 + 1) = v22;
    v24 = v29;
    *v26 = v27;
    v26[1] = v24;
    v25 = v31;
    v26[2] = v30;
    v26[3] = v25;
    sub_1DA2F0FC0(&v28, &v32);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32 = v27;
    v33 = v13;
    v34 = v15;
    v35 = v16;
    v36 = v18;
    v37 = v19;
    v38 = v22;
  }

  return sub_1DA2F0F90(&v32);
}

uint64_t sub_1DA2F0ED0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DA34CB40();

  return v4;
}

unint64_t sub_1DA2F0F3C()
{
  result = qword_1ECBA58D0;
  if (!qword_1ECBA58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA58D0);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA2F100C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1DA2F1060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipCollectionModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TipCollectionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA2F123C()
{
  result = qword_1ECBA58E0;
  if (!qword_1ECBA58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA58E0);
  }

  return result;
}

unint64_t sub_1DA2F1294()
{
  result = qword_1ECBA58E8;
  if (!qword_1ECBA58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA58E8);
  }

  return result;
}

unint64_t sub_1DA2F12EC()
{
  result = qword_1ECBA58F0;
  if (!qword_1ECBA58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA58F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_1DA34D030();
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA34D0C0();
}

id sub_1DA2F13AC(uint64_t a1)
{
  v2 = v1;
  v54[1] = *v2;
  sub_1DA34B830();
  OUTLINED_FUNCTION_0();
  v56 = v5;
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v55 = v7 - v6;
  sub_1DA34B970();
  OUTLINED_FUNCTION_0();
  v58 = v9;
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v13 = sub_1DA34B8C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v54 - v20;
  sub_1DA34B7F0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_4();
  v25 = v24 - v23;
  v60 = a1;
  sub_1DA34B820();
  v26 = OUTLINED_FUNCTION_2_3();
  v28 = v27(v26);
  if (v28 == *MEMORY[0x1E6968E00])
  {
    v29 = OUTLINED_FUNCTION_2_3();
    v30(v29);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
LABEL_3:
    v33 = v32;
    goto LABEL_11;
  }

  if (v28 == *MEMORY[0x1E6968DF8])
  {
    v34 = OUTLINED_FUNCTION_2_3();
    v35(v34);
    (*(v15 + 32))(v21, v25, v13);
    sub_1DA2F1BE4();
    (*(v15 + 16))(v19, v21, v13);
    v36 = sub_1DA2F193C(v19);
    if (!v36)
    {
      v37 = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
    }

    v33 = v36;
    (*(v15 + 8))(v21, v13);
  }

  else
  {
    if (v28 == *MEMORY[0x1E6968DF0])
    {
      v32 = [objc_opt_self() mainBundle];
      goto LABEL_3;
    }

    v38 = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v39 = OUTLINED_FUNCTION_2_3();
    v40(v39);
  }

LABEL_11:
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v42 = result;
    sub_1DA34B800();
    v43 = sub_1DA34CB30();

    sub_1DA34B810();
    if (v44)
    {
      v45 = sub_1DA34CB30();
    }

    else
    {
      v45 = 0;
    }

    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v46 = v33;
    sub_1DA34C210();
    v65 = sub_1DA34B950();
    v66 = v47;
    v63 = 45;
    v64 = 0xE100000000000000;
    v61 = 95;
    v62 = 0xE100000000000000;
    sub_1DA2EEFDC();
    v48 = sub_1DA34CE70();
    v50 = v49;
    (*(v58 + 8))(v12, v59);

    v51 = sub_1DA2F1B30(v43, v45, v33, v48, v50, v42);
    v53 = v52;

    if (!v53)
    {
      (*(v56 + 16))(v55, v60, v57);
      v51 = sub_1DA34CB90();
    }

    return v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DA2F193C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DA34B890();
  v4 = [v2 initWithURL_];

  v5 = sub_1DA34B8C0();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1DA2F19D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA2F1A34()
{
  v0 = sub_1DA34B7F0();
  __swift_allocate_value_buffer(v0, qword_1ECBAD2A0);
  v1 = __swift_project_value_buffer(v0, qword_1ECBAD2A0);
  *v1 = type metadata accessor for LocalizedResourceProvider();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1DA2F1B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1DA34CB30();

  v11 = [a6 localizedStringForKey:a1 table:a2 bundle:a3 languageCode:v10];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_1DA34CB40();

  return v12;
}

unint64_t sub_1DA2F1BE4()
{
  result = qword_1ECBA58F8;
  if (!qword_1ECBA58F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBA58F8);
  }

  return result;
}

uint64_t sub_1DA2F1C44()
{
  v37[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1DA34BF20();
  v1 = v0;
  v3 = v2;
  switch(v2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_1_5();
      v4 = v1;
      v5 = v1 >> 32;
      goto LABEL_7;
    case 2uLL:
      v4 = *(v0 + 16);
      v5 = *(v0 + 24);
      OUTLINED_FUNCTION_1_5();
LABEL_7:
      if (v4 != v5)
      {
        goto LABEL_8;
      }

      return 0;
    case 3uLL:
      OUTLINED_FUNCTION_1_5();
      return 0;
    default:
      OUTLINED_FUNCTION_1_5();
      if ((v3 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_8:
      v6 = objc_opt_self();
      v7 = sub_1DA34BF20();
      v9 = v8;
      v10 = sub_1DA34B8D0();
      sub_1DA2E62C4(v7, v9);
      v37[0] = 0;
      v11 = [v6 JSONObjectWithData:v10 options:0 error:v37];

      if (!v11)
      {
        v28 = v37[0];
        v29 = sub_1DA34B7E0();

        swift_willThrow();
        return 0;
      }

      v12 = v37[0];
      sub_1DA34CE80();
      swift_unknownObjectRelease();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
      if ((OUTLINED_FUNCTION_0_4(v13, v14, v15, v13, v16, v17, v18, v19, v30, v33, v35, v37[0]) & 1) == 0)
      {
        return 0;
      }

      sub_1DA31A55C(v37, 0x6C6562616CLL, 0xE500000000000000, v31);

      if (!v37[3])
      {
        sub_1DA2F1E40(v37);
        return 0;
      }

      if (OUTLINED_FUNCTION_0_4(v20, v21, v22, MEMORY[0x1E69E6158], v23, v24, v25, v26, v31, v34, v36, v37[0]))
      {
        return v32;
      }

      else
      {
        return 0;
      }
  }
}

uint64_t sub_1DA2F1E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5908, &qword_1DA34F200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_1DA2E62C4(v0, v1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA2F1EF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DA2F1F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA2F1F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v24 = a11;
  v25 = a12;
  v23 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5910, &unk_1DA34E238);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v23 - v18;
  sub_1DA34C350();
  if (!a4)
  {
    sub_1DA2EFF9C();
  }

  sub_1DA34C340();
  sub_1DA2F214C(a6, v19);
  sub_1DA34C360();
  if (a7 == 2)
  {
    sub_1DA34C370();
  }

  sub_1DA34C380();
  v20 = type metadata accessor for TellMeGeneratedSnippetModels(0);
  __swift_getEnumTagSinglePayload(a8, 1, v20);
  sub_1DA34C3A0();
  v21 = sub_1DA34C390();
  MEMORY[0x1EEE9AC00](v21);
  *(&v23 - 2) = a13;
  sub_1DA2F22AC(sub_1DA2F228C, (&v23 - 4), a9, v23, v24, v25);
  return sub_1DA34C330();
}

uint64_t sub_1DA2F214C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5910, &unk_1DA34E238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DA2F21BC(void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69C7B60]) init];
  v4 = sub_1DA34CB30();
  [v3 setInput_];

  v5 = sub_1DA34CB30();
  [v3 setOutput_];

  v6 = sub_1DA34CB40();
  sub_1DA2F235C(v6, v7, v3);
  *a2 = v3;
}

uint64_t sub_1DA2F22AC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;

  a1(&v10, v9);

  if (v6)
  {

    __break(1u);
  }

  else
  {

    return v10;
  }

  return result;
}

void sub_1DA2F235C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA34CB30();

  [a3 setDomain_];
}

uint64_t AttributionListSnippetModel.init(attributions:context:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5850, &qword_1DA34DEA0);
  sub_1DA34C0D0();
  type metadata accessor for AttributionListSnippetModel(0);
  type metadata accessor for FlowContext();
  return sub_1DA34C0D0();
}

uint64_t type metadata accessor for AttributionListSnippetModel(uint64_t a1)
{
  result = qword_1EE10A688;
  if (!qword_1EE10A688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionListSnippetModel.attributions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  sub_1DA34C0F0();
  return v1;
}

uint64_t (*AttributionListSnippetModel.attributions.modify(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t AttributionListSnippetModel.context.getter()
{
  type metadata accessor for AttributionListSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  return v1;
}

uint64_t AttributionListSnippetModel.context.setter(uint64_t a1)
{
  type metadata accessor for AttributionListSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return sub_1DA34C100();
}

uint64_t (*AttributionListSnippetModel.context.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for AttributionListSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

void sub_1DA2F2748(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DA2F2794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEC000000736E6F69;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA34D160();

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

uint64_t sub_1DA2F2860(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1DA2F28A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F2794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2F28D0(uint64_t a1)
{
  v2 = sub_1DA2F2AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F290C(uint64_t a1)
{
  v2 = sub_1DA2F2AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributionListSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5920, &qword_1DA34E258);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F2AE8();
  sub_1DA34D250();
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  OUTLINED_FUNCTION_1_6();
  sub_1DA2F3020(v11);
  OUTLINED_FUNCTION_6_1(v3, &v17);
  if (!v2)
  {
    v12 = *(type metadata accessor for AttributionListSnippetModel(0) + 20);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA2F2BD4(v13);
    OUTLINED_FUNCTION_6_1(v3 + v12, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1DA2F2AE8()
{
  result = qword_1ECBA5928;
  if (!qword_1ECBA5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5928);
  }

  return result;
}

unint64_t sub_1DA2F2B3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5850, &qword_1DA34DEA0);
    sub_1DA2F3254(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA2F2BD4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA2F3254(&unk_1EE10AC10);
    sub_1DA2F3254(&unk_1EE10AC18);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t AttributionListSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0();
  v28 = v4;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5918, &qword_1DA34E248);
  OUTLINED_FUNCTION_0();
  v30 = v8;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5938, &qword_1DA34E260);
  OUTLINED_FUNCTION_0();
  v33 = v12;
  v34 = v11;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for AttributionListSnippetModel(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F2AE8();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v27 = v16;
  v18 = v30;
  v17 = v31;
  v37 = 0;
  OUTLINED_FUNCTION_2_4();
  sub_1DA2F3020(v19);
  v20 = v32;
  sub_1DA34D090();
  (*(v18 + 32))(v27, v20, v35);
  v36 = 1;
  OUTLINED_FUNCTION_2_4();
  sub_1DA2F2BD4(v21);
  sub_1DA34D090();
  v22 = OUTLINED_FUNCTION_5_1();
  v23(v22);
  v24 = v27;
  (*(v28 + 32))(&v27[*(v26 + 20)], v7, v17);
  sub_1DA2F3104(v24, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA2F3168(v24);
}

unint64_t sub_1DA2F3020(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5918, &qword_1DA34E248);
    sub_1DA2F2B3C(&unk_1EE109018);
    sub_1DA2F2B3C(&unk_1EE109F78);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA2F3104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionListSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2F3168(uint64_t a1)
{
  v2 = type metadata accessor for AttributionListSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA2F3254(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA2F32F0(uint64_t a1)
{
  sub_1DA2F3374(319);
  if (v1 <= 0x3F)
  {
    sub_1DA2F33D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA2F3374(uint64_t a1)
{
  if (!qword_1EE10AC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5850, &qword_1DA34DEA0);
    v1 = sub_1DA34C110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE10AC68);
    }
  }
}

void sub_1DA2F33D8(uint64_t a1)
{
  if (!qword_1EE10AC98)
  {
    type metadata accessor for FlowContext();
    v1 = sub_1DA34C110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE10AC98);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AttributionListSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA2F3510()
{
  result = qword_1ECBA5958;
  if (!qword_1ECBA5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5958);
  }

  return result;
}

unint64_t sub_1DA2F3568()
{
  result = qword_1ECBA5960;
  if (!qword_1ECBA5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5960);
  }

  return result;
}

unint64_t sub_1DA2F35C0()
{
  result = qword_1ECBA5968;
  if (!qword_1ECBA5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5968);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2)
{

  return sub_1DA34D120();
}

uint64_t CodableMessage.init(serializedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v9 = sub_1DA34C770();
  MEMORY[0x1EEE9AC00](v9 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v22 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v29 = a1;
  v30 = a2;
  v23 = a4;
  v24 = a3;
  swift_getAssociatedConformanceWitness();
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  sub_1DA2F3A4C(a1, a2);
  sub_1DA34C760();
  v18 = v31;
  sub_1DA34C790();
  if (v18)
  {
    return sub_1DA2E62C4(a1, a2);
  }

  v20 = v22;
  (*(v12 + 16))(v22, v17, AssociatedTypeWitness);
  (*(v23 + 32))(v20, v24);
  sub_1DA2E62C4(a1, a2);
  return (*(v12 + 8))(v17, AssociatedTypeWitness);
}

uint64_t CodableMessage.serializedData()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  (*(a2 + 24))(a1, a2);
  swift_getAssociatedConformanceWitness();
  v10 = sub_1DA34C780();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_1DA2F3A4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1DA2F3AA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7A696C6169726573 && a2 == 0xEF6F746F72506465)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA34D160();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA2F3B2C()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F3B9C(uint64_t a1)
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F3BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F3AA4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA2F3C28@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_125();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA2F3C54(uint64_t a1)
{
  v2 = sub_1DA2F3F10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F3C90(uint64_t a1)
{
  v2 = sub_1DA2F3F10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Decodable<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v22 = a3;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  OUTLINED_FUNCTION_0();
  v19 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v4)
  {
    v14 = v19;
    v15 = v22;
    sub_1DA2F3F64();
    sub_1DA34D090();
    (*(v15 + 40))(v20, v21, a2, v15);
    (*(v14 + 8))(v13, v9);
    (*(v17 + 32))(v18, v8, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DA2F3F10()
{
  result = qword_1EE10A760[0];
  if (!qword_1EE10A760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE10A760);
  }

  return result;
}

unint64_t sub_1DA2F3F64()
{
  result = qword_1EE109F28;
  if (!qword_1EE109F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F28);
  }

  return result;
}

uint64_t Encodable<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5978, qword_1DA34E468);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D250();
  v12 = v18;
  v13 = (*(a3 + 48))(a2, a3);
  if (!v12)
  {
    v16 = v13;
    v17 = v14;
    sub_1DA2F4138();
    sub_1DA34D120();
    sub_1DA2E62C4(v16, v17);
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_1DA2F4138()
{
  result = qword_1EE10ACD0;
  if (!qword_1EE10ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10ACD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableMessageCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for CodableMessageCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA2F4310()
{
  result = qword_1ECBA5980;
  if (!qword_1ECBA5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5980);
  }

  return result;
}

unint64_t sub_1DA2F4368()
{
  result = qword_1EE10A750;
  if (!qword_1EE10A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A750);
  }

  return result;
}

unint64_t sub_1DA2F43C0()
{
  result = qword_1EE10A758;
  if (!qword_1EE10A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A758);
  }

  return result;
}

void TipSnippetModel.init(tip:context:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3_1();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TipSnippetModel(0);
  v12 = *(v11 + 20);
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  sub_1DA34C0D0();
  v32 = *(v11 + 32);
  v31 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1DA2F81F4(v10, v7, &qword_1ECBA5988, &unk_1DA34E5D0);
  sub_1DA34C0D0();
  sub_1DA2F4920(v10);
  v17 = a1;
  v18 = [v17 identifier];
  v19 = sub_1DA34CB40();
  v21 = v20;

  v35 = v19;
  v36 = v21;
  sub_1DA34C0D0();
  v22 = sub_1DA2F8190(v17);
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  OUTLINED_FUNCTION_0_5();
  (*(v25 + 8))(a3 + v12);
  v35 = v22;
  v36 = v24;
  sub_1DA34C0D0();
  v35 = TPSTip.bodyContentOrText.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A0, &qword_1DA34E5E8);
  sub_1DA34C0D0();
  v26 = [v17 language];

  v27 = sub_1DA34CB40();
  v29 = v28;

  v35 = v27;
  v36 = v29;
  sub_1DA34C0D0();
  sub_1DA33D7D0(v10);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  OUTLINED_FUNCTION_0_5();
  (*(v30 + 8))(a3 + v32);
  sub_1DA2F81F4(v10, v7, &qword_1ECBA5988, &unk_1DA34E5D0);
  sub_1DA34C0D0();
  sub_1DA2F4920(v10);
  v35 = v34;
  type metadata accessor for FlowContext();

  sub_1DA34C0D0();
}

uint64_t sub_1DA2F48E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA2F4920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA2F4988(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_23_0(a1);
  OUTLINED_FUNCTION_8_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F49D0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_23_0(a1);
  OUTLINED_FUNCTION_8_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F4A30(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_23_0(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_7_0(v4, v5, v6);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F4A80(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_23_0(a1);
  OUTLINED_FUNCTION_30_0(v1);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F4B3C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_23_0(a1);
  a2(v5, a1);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F4BCC(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4C44(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_19_0();
  }

  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4CC4(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4D38(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4DA8(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_25_0();
  }

  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4E24(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4E8C(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4F4C(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F4FC0()
{
  SettingContextType.rawValue.getter();
  OUTLINED_FUNCTION_22_0(v0, v1);
}

uint64_t sub_1DA2F500C(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F507C(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F50E4(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F5150(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F5248(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F52B4(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F5360(uint64_t a1, char a2)
{
  sub_1DA34CBE0();
}

uint64_t sub_1DA2F53DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA308D50(a2);
  OUTLINED_FUNCTION_22_0(v2, v3);
}

uint64_t sub_1DA2F544C(uint64_t a1)
{
  v1 = sub_1DA34D210();
  OUTLINED_FUNCTION_8_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F5498(uint64_t a1)
{
  v1 = sub_1DA34D210();
  OUTLINED_FUNCTION_8_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2F54FC(uint64_t a1)
{
  v1 = sub_1DA34D210();
  OUTLINED_FUNCTION_30_0(v1);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F5534(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x7574657320746F6ELL;
  }

  else
  {
    v5 = 0x7075746573;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F55BC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 6710895;
  }

  else
  {
    v5 = 28271;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5618(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x656C697320746F6ELL;
  }

  else
  {
    v5 = 0x746E656C6973;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5688(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1DA34D210();
  v5 = a3(a2);
  OUTLINED_FUNCTION_7_0(v5, v6, v7);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F56DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x7A696D6F74737563;
  }

  else
  {
    v5 = 0x746E656C6973;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F574C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x6576697463616E69;
  }

  else
  {
    v5 = 0x657669746361;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F57B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x7A696D6F74737563;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F582C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(a1, a2);
  SettingContextType.rawValue.getter();
  OUTLINED_FUNCTION_7_0(v2, v3, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5874(uint64_t a1, unsigned __int8 a2)
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](a2);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F58B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x657A696E6167726FLL;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5930(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x64656C6261736964;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F59B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_1DA34D210();
  a3(v6, a2);
  return sub_1DA34D230();
}

uint64_t sub_1DA2F5A04(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x7365756C6176;
  }

  else
  {
    v5 = 0x656D616E5F676174;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5A70(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x6564646120746F6ELL;
    }

    else
    {
      v5 = 0x64656C696166;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5AF0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x656D206120746F6ELL;
  }

  else
  {
    v5 = 0x7265626D656DLL;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5B64(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x6F2064656E676973;
  }

  else
  {
    v5 = 0x692064656E676973;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5BDC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x656572635366666FLL;
    }

    else
    {
      v5 = 0x676E697373696DLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t sub_1DA2F5C60(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14_0(a1, a2);
  if (v2)
  {
    v5 = 0x656E6E6F63736964;
  }

  else
  {
    v5 = 0x657463656E6E6F63;
  }

  OUTLINED_FUNCTION_15_0(v3, v5, v4);

  return sub_1DA34D230();
}

uint64_t TipSnippetModel.AssetConfiguration.darkThumbnailURL.setter()
{
  v2 = OUTLINED_FUNCTION_21_0();
  v3 = v1 + *(type metadata accessor for TipSnippetModel.AssetConfiguration(v2) + 20);

  return sub_1DA2F8254(v0, v3);
}

void (*TipSnippetModel.AssetConfiguration.darkThumbnailURL.modify())()
{
  v0 = OUTLINED_FUNCTION_21_0();
  type metadata accessor for TipSnippetModel.AssetConfiguration(v0);
  return nullsub_1;
}

uint64_t TipSnippetModel.AssetConfiguration.heightToWidthRatio.setter(double a1)
{
  result = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

void (*TipSnippetModel.AssetConfiguration.heightToWidthRatio.modify())()
{
  v0 = OUTLINED_FUNCTION_21_0();
  type metadata accessor for TipSnippetModel.AssetConfiguration(v0);
  return nullsub_1;
}

uint64_t sub_1DA2F5E98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DA354CD0 == a2;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DA354CF0 == a2;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001DA354D10 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA34D160();

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

uint64_t sub_1DA2F5FBC(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_23_0(a1);
  MEMORY[0x1DA74ACB0](v1);
  return sub_1DA34D230();
}

unint64_t sub_1DA2F5FFC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000012;
}

uint64_t sub_1DA2F6074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F5E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2F609C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2F5FB4();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2F60C4(uint64_t a1)
{
  v2 = sub_1DA2F82C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F6100(uint64_t a1)
{
  v2 = sub_1DA2F82C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TipSnippetModel.AssetConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B8, &qword_1DA34E600);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F82C4();
  sub_1DA34D250();
  v15 = 0;
  sub_1DA34B8C0();
  OUTLINED_FUNCTION_3_4();
  sub_1DA2F8318(v9, v10);
  OUTLINED_FUNCTION_10_1();
  sub_1DA34D0E0();
  if (!v1)
  {
    type metadata accessor for TipSnippetModel.AssetConfiguration(0);
    v14 = 1;
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0E0();
    v13 = 2;
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D110();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t TipSnippetModel.AssetConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_3_1();
  v40 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v36 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59D0, &qword_1DA34E608);
  OUTLINED_FUNCTION_0();
  v39 = v8;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA34B8C0();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = *(v13 + 28);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  v24 = *(v13 + 32);
  *&v15[v24] = 0x3FF0000000000000;
  v25 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1DA2F82C4();
  v26 = v43;
  sub_1DA34D240();
  if (!v26)
  {
    v43 = v20;
    v37 = v24;
    v28 = v39;
    v27 = v40;
    v47 = 0;
    OUTLINED_FUNCTION_3_4();
    sub_1DA2F8318(v29, v30);
    OUTLINED_FUNCTION_29_0(v16, &v47, v42);
    sub_1DA2F8254(v41, v15);
    v46 = 1;
    OUTLINED_FUNCTION_29_0(v16, &v46, v42);
    sub_1DA2F8254(v27, &v15[v43]);
    v45 = 2;
    v32 = v42;
    sub_1DA34D080();
    v34 = v33;
    (*(v28 + 8))(v11, v32);
    v35 = v38;
    *&v15[v37] = v34;
    sub_1DA2F83B0(v15, v35, type metadata accessor for TipSnippetModel.AssetConfiguration);
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_1DA2F8410(v15);
}

uint64_t TipSnippetModel.identifier.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA2F66C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TipSnippetModel.identifier.setter(v1, v2);
}

uint64_t (*TipSnippetModel.identifier.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

uint64_t TipSnippetModel.title.getter()
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA2F6810(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TipSnippetModel.title.setter(v1, v2);
}

uint64_t TipSnippetModel.title.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  return sub_1DA34C100();
}

uint64_t (*TipSnippetModel.title.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v3);
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.bodyContent.getter()
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  sub_1DA34C0F0();
  return v1;
}

uint64_t TipSnippetModel.bodyContent.setter(uint64_t a1)
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  return sub_1DA34C100();
}

uint64_t (*TipSnippetModel.bodyContent.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v3);
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.language.getter()
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA2F6AAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return TipSnippetModel.language.setter(v1, v2);
}

uint64_t TipSnippetModel.language.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  return sub_1DA34C100();
}

uint64_t (*TipSnippetModel.language.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v3);
  return sub_1DA2F3614;
}

void *TipSnippetModel.thumbnailAssetConfiguration.getter()
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA2F6C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1DA2F81F4(a1, &v6 - v3, &qword_1ECBA5988, &unk_1DA34E5D0);
  return TipSnippetModel.thumbnailAssetConfiguration.setter(v4);
}

uint64_t TipSnippetModel.thumbnailAssetConfiguration.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DA2F81F4(a1, &v5 - v3, &qword_1ECBA5988, &unk_1DA34E5D0);
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  sub_1DA34C100();
  return sub_1DA2F4920(a1);
}

uint64_t (*TipSnippetModel.thumbnailAssetConfiguration.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v3);
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.context.getter()
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  return v1;
}

uint64_t TipSnippetModel.context.setter(uint64_t a1)
{
  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return sub_1DA34C100();
}

uint64_t (*TipSnippetModel.context.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0(v3);
  return sub_1DA2F3614;
}

uint64_t TipSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v80 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59F0, &qword_1DA34E628);
  OUTLINED_FUNCTION_0();
  v70 = v4;
  v71 = v3;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_1();
  v69 = v10 - v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v64 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v64 - v16;
  v18 = type metadata accessor for TipSnippetModel(0);
  OUTLINED_FUNCTION_12();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 20);
  v78 = 0;
  v79 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  v74 = v23;
  sub_1DA34C0D0();
  v76 = v18;
  v24 = *(v18 + 32);
  v25 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  sub_1DA2F81F4(v17, v15, &qword_1ECBA5988, &unk_1DA34E5D0);
  v75 = v24;
  v73 = v22;
  v29 = v7;
  sub_1DA34C0D0();
  sub_1DA2F4920(v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F835C();
  v30 = v72;
  sub_1DA34D240();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = v75;
    v32 = v73;
    v33 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
    OUTLINED_FUNCTION_0_5();
    (*(v34 + 8))(&v32[v33]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
    OUTLINED_FUNCTION_0_5();
    return (*(v35 + 8))(&v32[v31]);
  }

  v72 = v25;
  v66 = v17;
  v67 = v8;
  LOBYTE(v78) = 0;
  v78 = sub_1DA34D060();
  v79 = v37;
  v38 = v73;
  sub_1DA34C0D0();
  LOBYTE(v78) = 1;
  v39 = sub_1DA34D060();
  v65 = 1;
  v40 = v39;
  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  OUTLINED_FUNCTION_0_5();
  (*(v43 + 8))(v38 + v74);
  v78 = v40;
  v79 = v42;
  sub_1DA34C0D0();
  LOBYTE(v77) = 2;
  sub_1DA2F3F64();
  v64[1] = v29;
  sub_1DA34D090();
  v44 = v38;
  v46 = v78;
  v45 = v79;
  v47 = objc_opt_self();
  v48 = sub_1DA34B8D0();
  v77 = 0;
  v49 = [v47 JSONObjectWithData:v48 options:0 error:&v77];

  v50 = v77;
  if (!v49)
  {
    v52 = v50;
    v53 = sub_1DA34B7E0();

    swift_willThrow();
    goto LABEL_8;
  }

  sub_1DA34CE80();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A0, &qword_1DA34E5E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A00, &qword_1DA34E630);
    v51 = swift_allocObject();
    v51[1] = xmmword_1DA34DC80;
    *(v51 + 4) = sub_1DA34CAC0();
    goto LABEL_9;
  }

  v51 = v77;
LABEL_9:
  v78 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A0, &qword_1DA34E5E8);
  sub_1DA34C0D0();
  sub_1DA2E62C4(v46, v45);
  LOBYTE(v78) = 3;
  v54 = sub_1DA34D060();
  v55 = v75;
  v78 = v54;
  v79 = v56;
  sub_1DA34C0D0();
  LOBYTE(v78) = 4;
  sub_1DA2F8318(&qword_1ECBA5A08, type metadata accessor for TipSnippetModel.AssetConfiguration);
  v57 = v72;
  sub_1DA34D090();
  v58 = v69;
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  OUTLINED_FUNCTION_0_5();
  (*(v59 + 8))(v44 + v55);
  sub_1DA2F81F4(v58, v66, &qword_1ECBA5988, &unk_1DA34E5D0);
  sub_1DA34C0D0();
  sub_1DA2F4920(v58);
  type metadata accessor for FlowContext();
  LOBYTE(v77) = 5;
  OUTLINED_FUNCTION_4_3();
  sub_1DA2F8318(v60, v61);
  sub_1DA34D090();
  v77 = v78;
  sub_1DA34C0D0();
  v62 = OUTLINED_FUNCTION_6_2();
  v63(v62);
  sub_1DA2F83B0(v44, v68, type metadata accessor for TipSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA2F8410(v44);
}

uint64_t TipSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v37[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5988, &unk_1DA34E5D0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A10, &qword_1DA34E638);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F835C();
  sub_1DA34D250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  v34 = v2;
  sub_1DA34C0F0();
  LOBYTE(v37[0]) = 0;
  v14 = v35;
  sub_1DA34D0F0();
  if (v14)
  {
    v10[1](v13, v8);
  }

  v35 = v10;
  v32 = v4;
  v33 = v7;

  type metadata accessor for TipSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5998, &qword_1DA34E5E0);
  sub_1DA34C0F0();
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5990, &qword_1DA351F70);
  sub_1DA2F8460();
  OUTLINED_FUNCTION_10_1();
  sub_1DA34D120();

  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  sub_1DA34C0F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
  OUTLINED_FUNCTION_44();
  v17 = sub_1DA34CC60();

  v37[0] = 0;
  v18 = [v16 dataWithJSONObject:v17 options:0 error:v37];

  v19 = v37[0];
  if (v18)
  {
    v20 = sub_1DA34B8E0();
    v22 = v21;

    v37[0] = v20;
    v37[1] = v22;
    v23 = v22;
    v36 = 2;
    sub_1DA2F4138();
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D120();
    v24 = v33;
    sub_1DA2E62C4(v20, v23);
  }

  else
  {
    v25 = v19;
    v26 = sub_1DA34B7E0();

    v14 = v26;
    swift_willThrow();

    v24 = v33;
  }

  sub_1DA34C0F0();
  LOBYTE(v37[0]) = 3;
  OUTLINED_FUNCTION_10_1();
  sub_1DA34D0F0();
  if (v14)
  {
    v27 = OUTLINED_FUNCTION_5_2();
    v28(v27);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59A8, &unk_1DA34E5F0);
  sub_1DA34C0F0();
  LOBYTE(v37[0]) = 4;
  sub_1DA2F84DC();
  OUTLINED_FUNCTION_10_1();
  sub_1DA34D120();
  sub_1DA2F4920(v24);
  v29 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  v36 = 5;
  type metadata accessor for FlowContext();
  OUTLINED_FUNCTION_4_3();
  sub_1DA2F8318(v30, v31);
  OUTLINED_FUNCTION_10_1();
  sub_1DA34D120();

  return v29[1](v13, v8);
}

unint64_t sub_1DA2F7E28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA34CFF0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DA2F7EF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA2F7E28(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DA2F7F24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DA2E2A90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA2F7F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2F7E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2F7F80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA2F7E78();
  *a1 = result;
  return result;
}

uint64_t sub_1DA2F7FA8(uint64_t a1)
{
  v2 = sub_1DA2F835C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2F7FE4(uint64_t a1)
{
  v2 = sub_1DA2F835C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TipSnippetModel.altBodyRepresentation.getter()
{
  objc_opt_self();
  v1 = OUTLINED_FUNCTION_21_0();
  type metadata accessor for TipSnippetModel(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
  sub_1DA34C0F0();
  v2 = sub_1DA33DB8C(v4);

  return sub_1DA2F8590(v2, v0);
}

void TipSnippetModel.punchOutUrl.getter()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E0, &qword_1DA34E610);
  sub_1DA34C0F0();
  v1 = sub_1DA34CB30();

  v2 = [v0 URLWithTipIdentifier:v1 collectionIdentifier:0 referrer:0];

  sub_1DA34B8A0();
}

uint64_t sub_1DA2F8190(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA34CB40();

  return v3;
}

uint64_t sub_1DA2F81F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DA2F8254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA2F82C4()
{
  result = qword_1ECBA59C0;
  if (!qword_1ECBA59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA59C0);
  }

  return result;
}

uint64_t sub_1DA2F8318(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA2F835C()
{
  result = qword_1ECBA59F8;
  if (!qword_1ECBA59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA59F8);
  }

  return result;
}

uint64_t sub_1DA2F83B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DA2F8410(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_21_0();
  v3(v2);
  OUTLINED_FUNCTION_0_5();
  (*(v4 + 8))(v1);
  return v1;
}

unint64_t sub_1DA2F8460()
{
  result = qword_1ECBA5A18;
  if (!qword_1ECBA5A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5990, &qword_1DA351F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A18);
  }

  return result;
}

unint64_t sub_1DA2F84DC()
{
  result = qword_1ECBA5A20;
  if (!qword_1ECBA5A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5988, &unk_1DA34E5D0);
    sub_1DA2F8318(&qword_1ECBA5A28, type metadata accessor for TipSnippetModel.AssetConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A20);
  }

  return result;
}

uint64_t sub_1DA2F8590(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
  OUTLINED_FUNCTION_44();
  v3 = sub_1DA34CC60();

  v4 = [a2 altTextRepresentationForContent_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1DA34CB40();

  return v5;
}

uint64_t sub_1DA2F86EC(uint64_t a1)
{
  sub_1DA2F884C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1DA2F889C(319, &qword_1EE10AC70, &qword_1ECBA5990, &qword_1DA351F70);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1DA2F889C(319, &qword_1EE10AC48, &qword_1ECBA59A0, &qword_1DA34E5E8);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1DA2F889C(319, &qword_1EE10ACA8, &qword_1ECBA5988, &unk_1DA34E5D0);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        sub_1DA2F89C0(319, &qword_1EE10AC98, type metadata accessor for FlowContext, MEMORY[0x1E69D3748]);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1DA2F884C()
{
  if (!qword_1EE10AC78)
  {
    v0 = sub_1DA34C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE10AC78);
    }
  }
}

void sub_1DA2F889C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_44();
    v5 = sub_1DA34C110();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DA2F8914(uint64_t a1)
{
  sub_1DA2F89C0(319, &qword_1EE10ACD8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DA2F89C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for TipSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TipSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TipSnippetModel.AssetConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TipSnippetModel.AssetConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA2F8CF0()
{
  result = qword_1ECBA5A40;
  if (!qword_1ECBA5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A40);
  }

  return result;
}

unint64_t sub_1DA2F8D48()
{
  result = qword_1ECBA5A48;
  if (!qword_1ECBA5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A48);
  }

  return result;
}

unint64_t sub_1DA2F8DA0()
{
  result = qword_1ECBA5A50;
  if (!qword_1ECBA5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A50);
  }

  return result;
}

unint64_t sub_1DA2F8DF8()
{
  result = qword_1ECBA5A58;
  if (!qword_1ECBA5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A58);
  }

  return result;
}

unint64_t sub_1DA2F8E50()
{
  result = qword_1ECBA5A60;
  if (!qword_1ECBA5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A60);
  }

  return result;
}

unint64_t sub_1DA2F8EA8()
{
  result = qword_1ECBA5A68;
  if (!qword_1ECBA5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1DA34CBE0();
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{

  return sub_1DA34C0E0();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for TipSnippetModel(0);
}

void *OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, ...)
{

  return sub_1DA34D210();
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1DA34CBE0();
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2)
{

  return sub_1DA34CBE0();
}

void *OUTLINED_FUNCTION_23_0(uint64_t a1, ...)
{

  return sub_1DA34D210();
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6AC80](a1, a2, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1, ...)
{

  return sub_1DA34CBE0();
}

uint64_t sub_1DA2F9128(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA34DC80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v3 = v18[0];
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(inited + 64) = &protocol witness table for [A];
  *(inited + 32) = v3;
  sub_1DA2EEF28(inited + 32, v18);

  v4 = v19;
  v5 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v17 = a1;
  v6 = (*(v5 + 8))(&v17, v4, v5);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v8)
  {
    sub_1DA2FC190(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1DA2FC190(v11 > 1, v12 + 1, 1, v9);
      v10 = v16;
    }

    *(v10 + 16) = v12 + 1;
    v13 = v10 + 16 * v12;
    *(v13 + 32) = v6;
    *(v13 + 40) = v8;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v18[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  sub_1DA2F982C();
  v14 = sub_1DA34CAF0();

  return v14;
}

uint64_t sub_1DA2F92E4(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA34DC80;
  type metadata accessor for TroubleshootingSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v3 = v18[0];
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(inited + 64) = &protocol witness table for [A];
  *(inited + 32) = v3;
  sub_1DA2EEF28(inited + 32, v18);

  v4 = v19;
  v5 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v17 = a1;
  v6 = (*(v5 + 8))(&v17, v4, v5);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v8)
  {
    sub_1DA2FC190(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1DA2FC190(v11 > 1, v12 + 1, 1, v9);
      v10 = v16;
    }

    *(v10 + 16) = v12 + 1;
    v13 = v10 + 16 * v12;
    *(v13 + 32) = v6;
    *(v13 + 40) = v8;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v18[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  sub_1DA2F982C();
  v14 = sub_1DA34CAF0();

  return v14;
}

uint64_t sub_1DA2F94B0(char a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DA2EEF28(v5, v21);
      v7 = v22;
      v8 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v20 = a1;
      v9 = (*(v8 + 8))(&v20, v7, v8);
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v21);
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_7();
          v6 = v15;
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1DA2FC190(v12 > 1, v13 + 1, 1, v6);
          v6 = v16;
        }

        *(v6 + 16) = v13 + 1;
        v14 = v6 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v21[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  v17 = sub_1DA2F982C();
  v18 = OUTLINED_FUNCTION_0_6(v17);

  return v18;
}

uint64_t ContentSelectable<>.selectableContent(itemStyle:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*(a3 + 16))(a2, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DA2EEF28(v6, v22);
      v8 = v23;
      v9 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v21 = v3;
      v10 = (*(v9 + 8))(&v21, v8, v9);
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v22);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_7();
          v7 = v16;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1DA2FC190(v13 > 1, v14 + 1, 1, v7);
          v7 = v17;
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v22[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  v18 = sub_1DA2F982C();
  v19 = OUTLINED_FUNCTION_0_6(v18);

  return v19;
}

unint64_t sub_1DA2F982C()
{
  result = qword_1EE109F60;
  if (!qword_1EE109F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A78, qword_1DA34EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return sub_1DA34CAF0();
}

void OUTLINED_FUNCTION_1_7()
{
  v2 = *(v0 + 16) + 1;

  sub_1DA2FC190(0, v2, 1, v0);
}

void Array<A>.asAttributionGroups()(uint64_t a1)
{
  v2 = type metadata accessor for AttributionItem(0) - 8;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v33 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v34 = *(v6 + 80);
    v37 = (v34 + 32) & ~v34;
    v11 = a1 + v37;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = *(v6 + 72);
    v33 = xmmword_1DA34DC80;
    v36 = v13;
    do
    {
      v14 = sub_1DA2FBD70(v11, v8);
      MEMORY[0x1EEE9AC00](v14);
      *(&v33 - 2) = v8;
      v15 = sub_1DA2FBC7C(sub_1DA2FBDD4, (&v33 - 2), v12);
      if (v16)
      {
        v35 = v10;
        v17 = v5;
        v19 = *(v8 + 2);
        v18 = *(v8 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A90, &qword_1DA34EA60);
        v20 = v37;
        v21 = swift_allocObject();
        *(v21 + 16) = v33;
        sub_1DA2FBD70(v8, v21 + v20);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA2FC02C(0, *(v12 + 16) + 1, 1, v12);
          v12 = v30;
        }

        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DA2FC02C(v22 > 1, v23 + 1, 1, v12);
          v12 = v31;
        }

        *(v12 + 16) = v23 + 1;
        v24 = (v12 + 40 * v23);
        v24[4] = v19;
        v24[5] = v18;
        v24[6] = v19;
        v24[7] = v18;
        v24[8] = v21;
        v5 = v17;
        v10 = v35;
        v25 = v36;
      }

      else
      {
        v26 = v15;
        sub_1DA2FBD70(v8, v5);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_1DA2FC9E8(v12);
          v12 = v32;
          if ((v26 & 0x8000000000000000) != 0)
          {
LABEL_16:
            __break(1u);
            return;
          }
        }

        if (v26 >= *(v12 + 16))
        {
          __break(1u);
          return;
        }

        v27 = v12 + 40 * v26;
        sub_1DA2FBE24(sub_1DA2FBF54);
        v28 = *(*(v27 + 64) + 16);
        v25 = v36;
        sub_1DA2FBEC8(v28, sub_1DA2FBF54);
        v29 = *(v27 + 64);
        *(v29 + 16) = v28 + 1;
        sub_1DA2FC9FC(v5, v29 + v37 + v28 * v25);
      }

      sub_1DA2FC134(v8);
      v11 += v25;
      --v9;
    }

    while (v9);
  }
}

uint64_t type metadata accessor for AttributionItem(uint64_t a1)
{
  result = qword_1EE10AAB8;
  if (!qword_1EE10AAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionGroup.set<A>(_:_:)@<X0>(void *a2@<X8>)
{
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_3();
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
  (*(v11 + 16))(v3);

  return swift_setAtWritableKeyPath();
}

uint64_t AttributionItem.id.setter()
{
  OUTLINED_FUNCTION_4_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}