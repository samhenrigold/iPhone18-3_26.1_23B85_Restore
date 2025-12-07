uint64_t sub_252F188A8()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.triggerValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F188D4()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.targetedEntitiesIcons.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F18928()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.automationSubtext.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F18954()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.scheduledText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F18980()
{
  OUTLINED_FUNCTION_14_0();
  result = AutomationSnippetModel.isSceneAutomation.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F189D4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    OUTLINED_FUNCTION_12_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
      OUTLINED_FUNCTION_12_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
        v12 = a3[9];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_252F18B1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    OUTLINED_FUNCTION_12_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
      OUTLINED_FUNCTION_12_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
        v14 = a4[9];
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_252F18CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AutomationSnippetModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_252F18D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AutomationSnippetModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_252F18E64()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575F50, &unk_252F54518);
  sub_252F25128();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252F18ED4()
{
  OUTLINED_FUNCTION_2_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FF8, &qword_252F546E8);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_3_1();
  v2(v1);
  return v0;
}

unint64_t sub_252F18F4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252F18F98(char a1)
{
  result = 0x74617265706D6574;
  switch(a1)
  {
    case 1:
      result = 0x547972616D697270;
      break;
    case 2:
      result = 0x7261646E6F636573;
      break;
    case 3:
      result = 0x6E69746165487369;
      break;
    case 4:
      result = 0x74754F68636E7570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F19068()
{
  OUTLINED_FUNCTION_14_0();
  result = TemperatureSnippetModel.primaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F19094()
{
  OUTLINED_FUNCTION_14_0();
  result = TemperatureSnippetModel.secondaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F190E8()
{
  OUTLINED_FUNCTION_14_0();
  result = TemperatureSnippetModel.temperature.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1913C()
{
  OUTLINED_FUNCTION_14_0();
  result = TemperatureSnippetModel.isHeating.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F191B4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_12_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
      OUTLINED_FUNCTION_12_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[7];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
        v12 = a3[8];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_252F192FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_12_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
      OUTLINED_FUNCTION_12_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
        v14 = a4[8];
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_252F19498()
{
  OUTLINED_FUNCTION_14_0();
  result = ConfirmationSnippetModel.confirmLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F194C4()
{
  OUTLINED_FUNCTION_14_0();
  result = ConfirmationSnippetModel.denyLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F194F0()
{
  OUTLINED_FUNCTION_14_0();
  result = ConfirmationSnippetModel.confirmDirectInvocation.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F1951C()
{
  OUTLINED_FUNCTION_14_0();
  result = ConfirmationSnippetModel.denyDirectInvocation.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F19548(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    OUTLINED_FUNCTION_12_0();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      OUTLINED_FUNCTION_12_0();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
        v11 = a3[11];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_252F19674(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    OUTLINED_FUNCTION_12_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      OUTLINED_FUNCTION_12_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
        v11 = a4[11];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_252F197C4()
{
  OUTLINED_FUNCTION_15_0();
  result = sub_252F439D0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F19818()
{
  OUTLINED_FUNCTION_15_0();
  result = sub_252F439E4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1986C()
{
  type metadata accessor for CompletionSnippetView(0);
  OUTLINED_FUNCTION_12_1();
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);

  sub_252F2BE00(*(v1 + v4), *(v1 + v4 + 8));

  v7 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_252F531EC();
    OUTLINED_FUNCTION_1();
    (*(v8 + 8))(v1 + v4 + v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_252F199D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252F19A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252F19B8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576418, &qword_252F54F00);
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_252F19C30()
{
  v1 = (type metadata accessor for IconConfiguration(0) - 8);
  v33 = *(*v1 + 80);
  v2 = (v33 + 16) & ~v33;
  v3 = (((v2 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for CompletionSnippetViewTVOS(0);
  OUTLINED_FUNCTION_3_4();
  v32 = *(v4 + 80);
  v29 = (v3 + v32 + 16) & ~v32;
  v30 = v5;
  v31 = *(v6 + 64);
  v7 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 8))(v7);
  v9 = v1[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1();
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_0_1();
  (*(v14 + 8))(v7 + v13);
  v15 = v1[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  OUTLINED_FUNCTION_1();
  v18 = *(v17 + 8);
  v18(v7 + v15, v16);
  v18(v7 + v1[10], v16);
  v19 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  OUTLINED_FUNCTION_0_1();
  (*(v20 + 8))(v7 + v19);
  v12(v7 + v1[12], v10);
  v21 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  OUTLINED_FUNCTION_0_1();
  (*(v22 + 8))(v7 + v21);
  v12(v7 + v1[14], v10);
  v12(v7 + v1[15], v10);
  v23 = v1[16];
  v24 = type metadata accessor for DirectInvocationConfig(0);
  if (!__swift_getEnumTagSinglePayload(v7 + v23, 1, v24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_0_1();
    (*(v25 + 8))(v7 + v23);
  }

  sub_252F2BE00(*(v0 + v29), *(v0 + v29 + 8));

  v26 = *(v30 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_252F531EC();
    OUTLINED_FUNCTION_0_1();
    (*(v27 + 8))(v0 + v29 + v26);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v31 + v29 + 1, v33 | v32 | 7);
}

uint64_t sub_252F1A054()
{
  v1 = type metadata accessor for CompletionSnippetViewTVOS(0);
  OUTLINED_FUNCTION_3_4();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v3 + 16) & ~v3;
  sub_252F2BE00(*(v0 + v6), *(v0 + v6 + 8));

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_252F531EC();
    OUTLINED_FUNCTION_0_1();
    (*(v8 + 8))(v0 + v6 + v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_252F1A180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_252F1A220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252F1A2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F5330C();
  *a1 = result;
  return result;
}

uint64_t sub_252F1A2E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764C0, &qword_252F550D8);
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_252F1A344()
{
  sub_252F30A68(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252F1A388()
{
  v1 = type metadata accessor for CompletionSnippetViewTVOS(0);
  OUTLINED_FUNCTION_3_4();
  v35 = *(v2 + 80);
  v3 = (v35 + 16) & ~v35;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_3_4();
  v33 = *(v7 + 80);
  v34 = *(v8 + 64);
  v9 = (v5 + v33 + v3 + 1) & ~v33;
  v10 = v0 + v3;
  sub_252F2BE00(*v10, *(v10 + 8));

  v11 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_252F531EC();
    OUTLINED_FUNCTION_0_1();
    (*(v12 + 8))(v10 + v11);
  }

  else
  {
  }

  v13 = v0 + v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1();
  (*(v14 + 8))(v0 + v9);
  v15 = v6[5];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1();
  v18 = *(v17 + 8);
  v18(v0 + v9 + v15, v16);
  v19 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_0_1();
  (*(v20 + 8))(v0 + v9 + v19);
  v21 = v6[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  v32 = v0;
  v23 = *(*(v22 - 8) + 8);
  v23(v13 + v21, v22);
  v23(v13 + v6[8], v22);
  v24 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  OUTLINED_FUNCTION_0_1();
  (*(v25 + 8))(v13 + v24);
  v18(v13 + v6[10], v16);
  v26 = v6[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  OUTLINED_FUNCTION_0_1();
  (*(v27 + 8))(v13 + v26);
  v18(v13 + v6[12], v16);
  v18(v13 + v6[13], v16);
  v28 = v6[14];
  v29 = type metadata accessor for DirectInvocationConfig(0);
  if (!__swift_getEnumTagSinglePayload(v13 + v28, 1, v29))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_0_1();
    (*(v30 + 8))(v13 + v28);
  }

  return MEMORY[0x2821FE8E8](v32, v9 + v34, v35 | v33 | 7);
}

uint64_t sub_252F1A770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F5328C();
  *a1 = result;
  return result;
}

uint64_t sub_252F1A7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConfirmationSnippetModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_252F1A8A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConfirmationSnippetModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_252F1A97C()
{
  type metadata accessor for TemperatureView(0);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v2 + 80);

  v4 = v1 + ((v3 + 40) & ~v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v4);
  v6 = type metadata accessor for TemperatureSnippetModel(0);
  v7 = v6[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1();
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);
  v10(v4 + v6[6], v8);
  v11 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_0_1();
  (*(v12 + 8))(v4 + v11);
  v13 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_0_1();
  (*(v14 + 8))(v4 + v13);

  v15 = *(v0 + 32);
  sub_252F5314C();
  OUTLINED_FUNCTION_0_1();
  (*(v16 + 8))(v4 + v15);
  v17 = OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8E8](v17, v18, v19);
}

uint64_t sub_252F1AB88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576570, &qword_252F55220);
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_252F1ABE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TemperatureSnippetModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_252F1ACC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TemperatureSnippetModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_252F1AD98()
{
  sub_252F30A68(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252F1AE0C()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.iconName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1AE38()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.iconColor.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1AE8C()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.shouldRenderCircle.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F1AEF8()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.circleColor.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1AF4C()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.rgbIconColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F1AF78()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.onStateIconName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1AFCC()
{
  OUTLINED_FUNCTION_14_0();
  result = IconConfiguration.offStateIconName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1B020(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_12_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      OUTLINED_FUNCTION_12_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
        OUTLINED_FUNCTION_12_0();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
          OUTLINED_FUNCTION_12_0();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[9];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
            OUTLINED_FUNCTION_12_0();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[11];
            }

            else
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
              v12 = a3[14];
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_252F1B24C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_12_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      OUTLINED_FUNCTION_12_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
        OUTLINED_FUNCTION_12_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
          OUTLINED_FUNCTION_12_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
            OUTLINED_FUNCTION_12_0();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[11];
            }

            else
            {
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
              v14 = a4[14];
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

unint64_t sub_252F1B4A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252F1B4F4(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x614C686365657073;
      break;
    case 2:
      result = 0x6E6F69746361;
      break;
    case 3:
      result = 0x666E6F436E6F6369;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252F1B58C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252F1B5D8(char a1)
{
  if (!a1)
  {
    return 0x5479616C70736964;
  }

  if (a1 == 1)
  {
    return 0x736E6F6974706FLL;
  }

  return 0x4F746C7561666564;
}

uint64_t sub_252F1B644@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationOption.action.getter();
  *a1 = result;
  return result;
}

uint64_t sub_252F1B674@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationSnippetModel.displayText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252F1B6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_27_0(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_12_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 24);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v10 = *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_252F1B778(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
    OUTLINED_FUNCTION_12_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      v11 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_252F1B854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_27_0(*(a1 + *(a3 + 20)));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_252F1B92C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

BOOL sub_252F1BA5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  return v2 != 0;
}

uint64_t sub_252F1BAA4@<X0>(uint64_t *a1@<X8>)
{
  result = DirectInvocationConfig.action.getter();
  *a1 = result;
  return result;
}

uint64_t sub_252F1BAD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_252F1BB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_252F1BBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CallToActionSnippetModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_252F1BCB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CallToActionSnippetModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_252F1BD80(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5767E8, &qword_252F55D58);
  OUTLINED_FUNCTION_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_252F1BE64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_9_5();
  type metadata accessor for CompletionSnippetModel(v6);
  OUTLINED_FUNCTION_12_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
    OUTLINED_FUNCTION_12_0();
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[8];
    }

    else
    {
      v9 = sub_252F5314C();
      v16 = a3[9];
    }

    v10 = v3 + v16;
    goto LABEL_13;
  }

  v11 = *(v3 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

void sub_252F1BF84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_9_5();
  type metadata accessor for CompletionSnippetModel(v8);
  OUTLINED_FUNCTION_12_0();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[5]) = a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576390, &unk_252F54DD0);
    OUTLINED_FUNCTION_12_0();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[8];
    }

    else
    {
      v11 = sub_252F5314C();
      v15 = a4[9];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_252F1C0A4()
{
  OUTLINED_FUNCTION_15_0();
  v0 = sub_252F43B24();
  return OUTLINED_FUNCTION_4_7(v0);
}

uint64_t sub_252F1C118()
{
  OUTLINED_FUNCTION_15_0();
  v0 = sub_252F43A8C();
  return OUTLINED_FUNCTION_4_7(v0);
}

uint64_t sub_252F1C164()
{
  OUTLINED_FUNCTION_15_0();
  v0 = sub_252F43A78();
  return OUTLINED_FUNCTION_4_7(v0);
}

uint64_t sub_252F1C1B0()
{
  OUTLINED_FUNCTION_15_0();
  v0 = sub_252F43A64();
  return OUTLINED_FUNCTION_4_7(v0);
}

uint64_t sub_252F1C234()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.primaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1C260()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.secondaryText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F1C28C()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.isBooleanTrueResponse.getter();
  *v0 = result;
  return result;
}

uint64_t sub_252F1C2D8()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.isSuccess.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F1C328()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.inProgress.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F1C438()
{
  OUTLINED_FUNCTION_14_0();
  result = CompletionSnippetModel.toggleEnabled.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_252F1C488(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_12_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
      OUTLINED_FUNCTION_12_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
        OUTLINED_FUNCTION_12_0();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
          OUTLINED_FUNCTION_12_0();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[9];
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
            v12 = a3[10];
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_252F1C668(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_12_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
      OUTLINED_FUNCTION_12_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
        OUTLINED_FUNCTION_12_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
          OUTLINED_FUNCTION_12_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[9];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
            v14 = a4[10];
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_252F1CAE0()
{
  sub_252F30A68(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252F1CB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F532CC();
  *a1 = result;
  return result;
}

unint64_t sub_252F1CCC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252F1CD0C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001CLL;
  }

  return 0x6944646C756F6873;
}

uint64_t sub_252F1CD7C@<X0>(uint64_t *a1@<X8>)
{
  result = CallToActionSnippetModel.callToActionButtonLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252F1CDAC@<X0>(uint64_t *a1@<X8>)
{
  result = CallToActionSnippetModel.callToActionDirectInvocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_252F1CDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_12_0();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24));
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_252F1CEF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_12_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_12_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_252F1D090@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252F5038C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t HomeAutomationUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  v143 = a1;
  v135 = type metadata accessor for TemperatureView(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  v134 = v2;
  v3 = OUTLINED_FUNCTION_7();
  v4 = type metadata accessor for TemperatureSnippetModel(v3);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v130 = v6 - v7;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  v133 = v9;
  v10 = OUTLINED_FUNCTION_7();
  v141 = type metadata accessor for CallToActionView(v10);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v140 = v12;
  v13 = OUTLINED_FUNCTION_7();
  v14 = type metadata accessor for CallToActionSnippetModel(v13);
  v15 = OUTLINED_FUNCTION_10(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v138 = v16 - v17;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12();
  v139 = v19;
  v20 = OUTLINED_FUNCTION_7();
  v129 = type metadata accessor for AutomationView(v20);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v128 = v22;
  v23 = OUTLINED_FUNCTION_7();
  v24 = type metadata accessor for AutomationSnippetModel(v23);
  v25 = OUTLINED_FUNCTION_10(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12();
  v126 = v30;
  v31 = OUTLINED_FUNCTION_7();
  v125[1] = type metadata accessor for CompletionView(v31);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v32);
  v34 = v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for CompletionSnippetModel(0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v125 - v41;
  v137 = type metadata accessor for ConfirmationView(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  v136 = v44;
  v45 = OUTLINED_FUNCTION_7();
  v46 = type metadata accessor for ConfirmationSnippetModel(v45);
  v47 = OUTLINED_FUNCTION_10(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5();
  v132 = v48 - v49;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12();
  v127 = v51;
  v52 = OUTLINED_FUNCTION_7();
  v131 = type metadata accessor for DisambiguationView(v52);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4();
  v55 = v54;
  v56 = OUTLINED_FUNCTION_7();
  v57 = type metadata accessor for DisambiguationSnippetModel(v56);
  v58 = OUTLINED_FUNCTION_10(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5();
  v61 = v59 - v60;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12();
  v64 = v63;
  v65 = OUTLINED_FUNCTION_7();
  type metadata accessor for HomeAutomationSnippetModels(v65);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v66);
  sub_252F1DF64(v143, v125 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HomeAutomationSnippetModels);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v106 = OUTLINED_FUNCTION_9();
      v84 = v127;
      sub_252F1DF04(v106, v127, v107);
      OUTLINED_FUNCTION_6();
      v108 = v132;
      sub_252F1DF64(v84, v132, v109);
      v87 = v136;
      v110 = (v136 + *(v137 + 20));
      sub_252F5394C();
      OUTLINED_FUNCTION_0();
      sub_252F1E064(v111, v112, MEMORY[0x277D63F50]);
      *v110 = sub_252F5326C();
      v110[1] = v113;
      if (qword_27F575E10 != -1)
      {
        OUTLINED_FUNCTION_3(&qword_27F575E10);
      }

      v114 = sub_252F5316C();
      __swift_project_value_buffer(v114, qword_27F57B800);
      OUTLINED_FUNCTION_8();
      sub_252F53B8C();
      MEMORY[0x2530AF890](0xD000000000000031, 0x8000000252F57B10);
      v115 = ConfirmationSnippetModel.description.getter();
      MEMORY[0x2530AF890](v115);

      OUTLINED_FUNCTION_11(v142._countAndFlagsBits, "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationUIFramework/ConfirmationView.swift");

      OUTLINED_FUNCTION_6();
      sub_252F1DF64(v108, v87, v116);
      if (qword_27F575E18 != -1)
      {
        OUTLINED_FUNCTION_2(&qword_27F575E18);
      }

      v117 = qword_27F57B818;
      sub_252F5313C();
      v118 = sub_252F53ADC();
      OUTLINED_FUNCTION_14(v118, &dword_252F17000, v119, "RenderConfirmationView");
      v97 = type metadata accessor for ConfirmationSnippetModel;
      sub_252F1DFC4(v108, type metadata accessor for ConfirmationSnippetModel);
      sub_252F1E064(&qword_27F575E68, type metadata accessor for ConfirmationView, &protocol conformance descriptor for ConfirmationView);
      v80 = sub_252F534EC();
      v98 = type metadata accessor for ConfirmationView;
      goto LABEL_19;
    case 2u:
      v99 = OUTLINED_FUNCTION_9();
      sub_252F1DF04(v99, v42, v100);
      sub_252F1DF64(v42, v39, type metadata accessor for CompletionSnippetModel);
      CompletionView.init(model:)(v39, v34);
      sub_252F1E064(&qword_27F575E60, type metadata accessor for CompletionView, &protocol conformance descriptor for CompletionView);
      v80 = sub_252F534EC();
      sub_252F1DFC4(v34, type metadata accessor for CompletionView);
      v82 = type metadata accessor for CompletionSnippetModel;
      v81 = v42;
      break;
    case 3u:
      v101 = OUTLINED_FUNCTION_9();
      v102 = v126;
      sub_252F1DF04(v101, v126, v103);
      sub_252F1DF64(v102, v28, type metadata accessor for AutomationSnippetModel);
      v104 = v128;
      AutomationView.init(model:)(v28, v128);
      sub_252F1E064(&qword_27F575E58, type metadata accessor for AutomationView, &protocol conformance descriptor for AutomationView);
      v80 = sub_252F534EC();
      sub_252F1DFC4(v104, type metadata accessor for AutomationView);
      v105 = type metadata accessor for AutomationSnippetModel;
      goto LABEL_21;
    case 4u:
      v83 = OUTLINED_FUNCTION_9();
      v84 = v139;
      sub_252F1DF04(v83, v139, v85);
      v86 = v138;
      sub_252F1DF64(v84, v138, type metadata accessor for CallToActionSnippetModel);
      v87 = v140;
      v88 = (v140 + *(v141 + 20));
      sub_252F5394C();
      OUTLINED_FUNCTION_0();
      sub_252F1E064(v89, v90, MEMORY[0x277D63F50]);
      *v88 = sub_252F5326C();
      v88[1] = v91;
      sub_252F1DF64(v86, v87, type metadata accessor for CallToActionSnippetModel);
      if (qword_27F575E10 != -1)
      {
        OUTLINED_FUNCTION_3(&qword_27F575E10);
      }

      v92 = sub_252F5316C();
      __swift_project_value_buffer(v92, qword_27F57B800);
      OUTLINED_FUNCTION_8();
      sub_252F53B8C();
      MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F57A40);
      v93 = CallToActionSnippetModel.description.getter();
      MEMORY[0x2530AF890](v93);

      OUTLINED_FUNCTION_11(v142._countAndFlagsBits, "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationUIFramework/CallToActionView.swift");

      if (qword_27F575E18 != -1)
      {
        OUTLINED_FUNCTION_2(&qword_27F575E18);
      }

      v94 = qword_27F57B818;
      sub_252F5313C();
      v95 = sub_252F53ADC();
      OUTLINED_FUNCTION_14(v95, &dword_252F17000, v96, "RenderCallToActionView");
      v97 = type metadata accessor for CallToActionSnippetModel;
      sub_252F1DFC4(v86, type metadata accessor for CallToActionSnippetModel);
      sub_252F1E064(&qword_27F575E50, type metadata accessor for CallToActionView, &protocol conformance descriptor for CallToActionView);
      v80 = sub_252F534EC();
      v98 = type metadata accessor for CallToActionView;
LABEL_19:
      sub_252F1DFC4(v87, v98);
      v81 = v84;
      v82 = v97;
      break;
    case 5u:
      v120 = OUTLINED_FUNCTION_9();
      v102 = v133;
      sub_252F1DF04(v120, v133, v121);
      v122 = v130;
      sub_252F1DF64(v102, v130, type metadata accessor for TemperatureSnippetModel);
      v123 = v134;
      TemperatureView.init(model:)(v122, v134);
      sub_252F1E064(&qword_27F575E40, type metadata accessor for TemperatureView, &protocol conformance descriptor for TemperatureView);
      v80 = sub_252F534EC();
      sub_252F1DFC4(v123, type metadata accessor for TemperatureView);
      v105 = type metadata accessor for TemperatureSnippetModel;
LABEL_21:
      v82 = v105;
      v81 = v102;
      break;
    default:
      v68 = OUTLINED_FUNCTION_9();
      v69 = v64;
      sub_252F1DF04(v68, v64, v70);
      v71 = v64;
      v72 = v61;
      sub_252F1DF64(v71, v61, type metadata accessor for DisambiguationSnippetModel);
      v73 = (v55 + *(v131 + 20));
      sub_252F5394C();
      OUTLINED_FUNCTION_0();
      sub_252F1E064(v74, v75, MEMORY[0x277D63F50]);
      *v73 = sub_252F5326C();
      v73[1] = v76;
      sub_252F1DF64(v72, v55, type metadata accessor for DisambiguationSnippetModel);
      if (qword_27F575E18 != -1)
      {
        OUTLINED_FUNCTION_2(&qword_27F575E18);
      }

      qword_27F57B818;
      sub_252F5313C();
      sub_252F53ADC();
      sub_252F5312C();
      if (qword_27F575E10 != -1)
      {
        OUTLINED_FUNCTION_3(&qword_27F575E10);
      }

      v77 = sub_252F5316C();
      __swift_project_value_buffer(v77, qword_27F57B800);
      OUTLINED_FUNCTION_8();
      sub_252F53B8C();
      MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F57C00);
      v78 = sub_252F3A05C();
      MEMORY[0x2530AF890](v78);

      v79._countAndFlagsBits = 0xD00000000000006BLL;
      v79._object = 0x8000000252F57C40;
      Logger.debug(output:test:caller:)(v142, 0, v79);

      sub_252F1DFC4(v72, type metadata accessor for DisambiguationSnippetModel);
      sub_252F1E064(&qword_27F575E70, type metadata accessor for DisambiguationView, &protocol conformance descriptor for DisambiguationView);
      v80 = sub_252F534EC();
      sub_252F1DFC4(v55, type metadata accessor for DisambiguationView);
      v81 = v69;
      v82 = type metadata accessor for DisambiguationSnippetModel;
      break;
  }

  sub_252F1DFC4(v81, v82);
  return v80;
}

uint64_t sub_252F1DE8C@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_252F1DF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_252F1DF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F1DFC4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_252F1E064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for VRXVisualResponseLocation()
{
  if (!qword_27F575E80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F575E80);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_11(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2;

  v5._countAndFlagsBits = v3 + 54;
  v5._object = ((a2 - 32) | 0x8000000000000000);
  Logger.debug(output:test:caller:)(*&a1, 0, v5);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_252F5312C();
}

uint64_t AutomationSnippetModel.triggerValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
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

uint64_t sub_252F1E30C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AutomationSnippetModel.triggerValue.setter(v1, v2);
}

uint64_t (*AutomationSnippetModel.triggerValue.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F20BA0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t AutomationSnippetModel.targetedEntitiesIcons.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  sub_252F530BC();
  return v1;
}

uint64_t type metadata accessor for AutomationSnippetModel(uint64_t a1)
{
  result = qword_27F575F08;
  if (!qword_27F575F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AutomationSnippetModel.targetedEntitiesIcons.setter(uint64_t a1)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  return sub_252F530CC();
}

uint64_t (*AutomationSnippetModel.targetedEntitiesIcons.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

void *AutomationSnippetModel.triggerIcon.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  return sub_252F530BC();
}

uint64_t sub_252F1E618(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F1F7F4(a1, v4, type metadata accessor for IconConfiguration);
  return AutomationSnippetModel.triggerIcon.setter(v4);
}

uint64_t AutomationSnippetModel.triggerIcon.setter(uint64_t a1)
{
  v3 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_5_0();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_3_0();
  sub_252F1F7F4(a1, v6, v7);
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  sub_252F530CC();
  return sub_252F1F854(a1, v1);
}

uint64_t (*AutomationSnippetModel.triggerIcon.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t AutomationSnippetModel.automationSubtext.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t sub_252F1E834(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AutomationSnippetModel.automationSubtext.setter(v1, v2);
}

uint64_t AutomationSnippetModel.automationSubtext.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  return sub_252F530CC();
}

uint64_t (*AutomationSnippetModel.automationSubtext.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t AutomationSnippetModel.scheduledText.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t sub_252F1E98C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AutomationSnippetModel.scheduledText.setter(v1, v2);
}

uint64_t AutomationSnippetModel.scheduledText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  return sub_252F530CC();
}

uint64_t (*AutomationSnippetModel.scheduledText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t AutomationSnippetModel.isSceneAutomation.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  return v1;
}

uint64_t AutomationSnippetModel.isSceneAutomation.setter(char a1)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return sub_252F530CC();
}

uint64_t (*AutomationSnippetModel.isSceneAutomation.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_8_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F1EBA8;
}

void sub_252F1EBAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_252F1EBF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252F1EC60(char a1)
{
  result = 0x5672656767697274;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x4972656767697274;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x656C756465686373;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252F1ED5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F1EBF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_252F1ED8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252F1EC60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F1EDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F1EC44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F1EE1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F1EC48();
  *a1 = result;
  return result;
}

uint64_t sub_252F1EE44(uint64_t a1)
{
  v2 = sub_252F1F70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F1EE80(uint64_t a1)
{
  v2 = sub_252F1F70C();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall AutomationSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F57CF0;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t AutomationSnippetModel.init(triggerValue:targetedEntitiesIcons:triggerIcon:automationSubtext:scheduledText:isSceneAutomation:)(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v25 = a8;
  v22 = a6;
  v23 = a7;
  v24 = a9;
  type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  v26 = a1;
  v27 = a2;
  sub_252F5309C();
  type metadata accessor for AutomationSnippetModel(0);
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
  sub_252F5309C();
  OUTLINED_FUNCTION_3_0();
  sub_252F1F7F4(a4, v19, v20);
  sub_252F1F7F4(v19, v17, a3);
  sub_252F5309C();
  sub_252F1F854(v19, a3);
  v26 = a5;
  v27 = v22;
  sub_252F5309C();
  v26 = v23;
  v27 = v25;
  sub_252F5309C();
  LOBYTE(v26) = v24;
  sub_252F5309C();
  return sub_252F1F854(a4, a3);
}

uint64_t AutomationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  v4 = MEMORY[0x28223BE20](v3);
  v29 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EB0, &qword_252F542D8);
  OUTLINED_FUNCTION_16();
  v30 = v9;
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for AutomationSnippetModel(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v14 = v13 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F1F70C();
  v15 = v33;
  sub_252F53CFC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v27 = v10;
  v33 = a1;
  LOBYTE(v34) = 0;
  v34 = sub_252F53C0C();
  v35 = v16;
  sub_252F5309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
  LOBYTE(v36) = 1;
  sub_252F1FCA4(&qword_27F575EC0, &qword_27F575EC8, &protocol conformance descriptor for IconConfiguration, MEMORY[0x277D83978]);
  sub_252F53C2C();
  v36 = v34;
  sub_252F5309C();
  LOBYTE(v34) = 2;
  OUTLINED_FUNCTION_0_0();
  sub_252F20630(v17, v18, &protocol conformance descriptor for IconConfiguration);
  v19 = v26;
  sub_252F53C2C();
  v25[1] = *(v27 + 24);
  sub_252F1F7F4(v19, v29, type metadata accessor for IconConfiguration);
  sub_252F5309C();
  sub_252F1F854(v19, type metadata accessor for IconConfiguration);
  OUTLINED_FUNCTION_7_0(3);
  v34 = sub_252F53C0C();
  v35 = v20;
  sub_252F5309C();
  OUTLINED_FUNCTION_7_0(4);
  v34 = sub_252F53C0C();
  v35 = v21;
  sub_252F5309C();
  OUTLINED_FUNCTION_7_0(5);
  LOBYTE(v34) = sub_252F53C1C() & 1;
  sub_252F5309C();
  v22 = OUTLINED_FUNCTION_2_0();
  v23(v22);
  sub_252F1F7F4(v14, v28, type metadata accessor for AutomationSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_252F1F854(v14, type metadata accessor for AutomationSnippetModel);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_252F1F70C()
{
  result = qword_27F575EB8;
  if (!qword_27F575EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575EB8);
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

uint64_t sub_252F1F7F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F1F854(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t AutomationSnippetModel.encode(to:)(void *a1)
{
  type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575ED0, &qword_252F542E0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F1F70C();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F53C5C();
  if (v15)
  {
    v7 = OUTLINED_FUNCTION_17();
    v8(v7);
  }

  else
  {

    type metadata accessor for AutomationSnippetModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
    sub_252F1FCA4(&qword_27F575ED8, &qword_27F575EE0, &protocol conformance descriptor for IconConfiguration, MEMORY[0x277D83948]);
    sub_252F53C7C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
    sub_252F530BC();
    OUTLINED_FUNCTION_0_0();
    sub_252F20630(v10, v11, &protocol conformance descriptor for IconConfiguration);
    sub_252F53C7C();
    OUTLINED_FUNCTION_4_0();
    sub_252F1F854(v5, v12);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_13_0(3);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_13_0(4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    sub_252F530BC();
    sub_252F53C6C();
    v13 = OUTLINED_FUNCTION_17();
    return v14(v13);
  }
}

uint64_t sub_252F1FCA4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575EA8, &qword_252F542D0);
    OUTLINED_FUNCTION_0_0();
    sub_252F20630(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t AutomationSnippetModel.description.getter()
{
  v0 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_5_0();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_6_0();
  v20 = 0xD000000000000017;
  v21 = v4;
  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  strcpy(v19, "triggerValue: ");
  HIBYTE(v19[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890]();

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v19[0], v19[1]);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v19[1] = v5;
  type metadata accessor for AutomationSnippetModel(0);
  OUTLINED_FUNCTION_20();
  MEMORY[0x2530AF890]();

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](0xD000000000000015, v19[1]);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v19[0] = 0xD000000000000019;
  v19[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  sub_252F530BC();
  v7 = *(v18 + 16);

  v8 = sub_252F53C9C();
  MEMORY[0x2530AF890](v8);

  MEMORY[0x2530AF890](0xD000000000000019, v19[1]);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  sub_252F530BC();
  v9 = IconConfiguration.description.getter();
  v11 = v10;
  OUTLINED_FUNCTION_4_0();
  sub_252F1F854(v3, v12);
  MEMORY[0x2530AF890](v9, v11);

  MEMORY[0x2530AF890](0x656767697274202CLL, 0xEF203A6E6F634972);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v19[1] = v13;
  OUTLINED_FUNCTION_20();
  MEMORY[0x2530AF890](v7);

  MEMORY[0x2530AF890](0xD000000000000011, v19[1]);

  OUTLINED_FUNCTION_10_0();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v19[0] = 0xD000000000000015;
  v19[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  if (v7)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v7)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v15, v16);

  MEMORY[0x2530AF890](v19[0], v19[1]);

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return v20;
}

uint64_t AutomationSnippetModel.stringId.getter()
{
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890]();

  OUTLINED_FUNCTION_15();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v10 = v0;
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  sub_252F530BC();
  v1 = *(v9 + 16);

  v2 = sub_252F53C9C();
  MEMORY[0x2530AF890](v2);

  MEMORY[0x2530AF890](0xD000000000000018, v10);

  OUTLINED_FUNCTION_15();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v11 = v3;
  OUTLINED_FUNCTION_20();
  MEMORY[0x2530AF890](v1);

  MEMORY[0x2530AF890](0xD000000000000014, v11);

  OUTLINED_FUNCTION_15();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v12 = v4;
  OUTLINED_FUNCTION_20();
  MEMORY[0x2530AF890](v1);

  MEMORY[0x2530AF890](0xD000000000000010, v12);

  OUTLINED_FUNCTION_15();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v6, v7);

  MEMORY[0x2530AF890](0xD000000000000014, v13);

  return 0x7265676769727423;
}

uint64_t static AutomationSnippetModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_252F530DC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
  v2 = sub_252F1FCA4(&qword_27F575EE8, &qword_27F575EF0, &protocol conformance descriptor for IconConfiguration, MEMORY[0x277D83968]);
  if ((OUTLINED_FUNCTION_19(v2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_0_0();
  v5 = sub_252F20630(v3, v4, &protocol conformance descriptor for IconConfiguration);
  if ((OUTLINED_FUNCTION_19(v5) & 1) == 0 || (sub_252F530DC() & 1) == 0 || (sub_252F530DC() & 1) == 0)
  {
    return 0;
  }

  return sub_252F530DC();
}

uint64_t sub_252F20630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252F20724(uint64_t a1)
{
  sub_252F208D4(319, &qword_27F575F18, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_252F20818(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_252F2087C(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_252F208D4(319, &qword_27F575F30, MEMORY[0x277D839B0]);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_252F20818(uint64_t a1)
{
  if (!qword_27F575F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575EA8, &qword_252F542D0);
    v1 = sub_252F530EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F575F20);
    }
  }
}

void sub_252F2087C(uint64_t a1)
{
  if (!qword_27F575F28)
  {
    type metadata accessor for IconConfiguration(255);
    v1 = sub_252F530EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F575F28);
    }
  }
}

void sub_252F208D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_252F530EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutomationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AutomationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_252F20A9C()
{
  result = qword_27F575F38;
  if (!qword_27F575F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F38);
  }

  return result;
}

unint64_t sub_252F20AF4()
{
  result = qword_27F575F40;
  if (!qword_27F575F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F40);
  }

  return result;
}

unint64_t sub_252F20B4C()
{
  result = qword_27F575F48;
  if (!qword_27F575F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for AutomationSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return sub_252F530AC();
}

uint64_t OUTLINED_FUNCTION_13_0@<X0>(char a2@<W8>)
{
  *(v2 - 96) = a2;

  return sub_252F53C5C();
}

void *OUTLINED_FUNCTION_18()
{

  return sub_252F530BC();
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1)
{

  return sub_252F530DC();
}

void *OUTLINED_FUNCTION_20()
{

  return sub_252F530BC();
}

uint64_t AutomationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AutomationView(0);
  v5 = (a2 + *(v4 + 20));
  sub_252F5394C();
  sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v5 = sub_252F5326C();
  v5[1] = v6;
  sub_252F24B90();
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  *(a2 + *(v4 + 24)) = v13;
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v7 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v8 = sub_252F5316C();
  __swift_project_value_buffer(v8, qword_27F57B800);
  sub_252F53B8C();

  v9 = AutomationSnippetModel.description.getter();
  MEMORY[0x2530AF890](v9);

  v10._countAndFlagsBits = 0xD00000000000002FLL;
  v11._countAndFlagsBits = 0xD000000000000067;
  v11._object = 0x8000000252F57E80;
  v10._object = 0x8000000252F57E50;
  Logger.debug(output:test:caller:)(v10, 0, v11);

  return sub_252F2578C(a1, type metadata accessor for AutomationSnippetModel);
}

uint64_t type metadata accessor for AutomationView(uint64_t a1)
{
  result = qword_27F575FC0;
  if (!qword_27F575FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AutomationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = type metadata accessor for AutomationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F50, &unk_252F54518);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v7 = v14 - v6;
  sub_252F24B90();
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_252F24BE8(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F58, &qword_252F54528);
  sub_252F24CBC();
  sub_252F5381C();
  sub_252F24B90();
  v10 = swift_allocObject();
  sub_252F24BE8(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v8);
  v11 = &v7[*(v4 + 36)];
  *v11 = sub_252F24E54;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  sub_252F24B90();
  v12 = swift_allocObject();
  sub_252F24BE8(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  sub_252F25128();
  sub_252F5351C();

  return sub_252F25CDC(v7, &qword_27F575F50, &unk_252F54518);
}

uint64_t sub_252F21258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FA0, &qword_252F54548);
  MEMORY[0x28223BE20](v122);
  v106 = &v90 - v3;
  v107 = sub_252F5390C();
  v105 = *(v107 - 8);
  v4 = MEMORY[0x28223BE20](v107);
  v104 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v111 = &v90 - v6;
  v103 = sub_252F52FFC();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252F5308C();
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_252F537EC();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576058, &qword_252F54720);
  MEMORY[0x28223BE20](v97);
  v96 = &v90 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F90, &qword_252F54540);
  MEMORY[0x28223BE20](v119);
  v102 = &v90 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576060, &qword_252F54728);
  v15 = MEMORY[0x28223BE20](v108);
  v110 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v109 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576068, &qword_252F54730);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v92 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v91 = (&v90 - v21);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576070, &qword_252F54738);
  MEMORY[0x28223BE20](v124);
  v126 = &v90 - v22;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576078, &qword_252F54740);
  MEMORY[0x28223BE20](v116);
  v115 = &v90 - v23;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F70, &qword_252F54530);
  MEMORY[0x28223BE20](v125);
  v118 = &v90 - v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575F80, &qword_252F54538);
  MEMORY[0x28223BE20](v117);
  v114 = &v90 - v25;
  v121 = sub_252F538AC();
  v26 = *(v121 - 1);
  MEMORY[0x28223BE20](v121);
  v120 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_252F538CC();
  v28 = *(v113 - 8);
  v29 = MEMORY[0x28223BE20](v113);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v90 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576080, &qword_252F54748);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v90 - v38;
  v40 = *(a1 + *(type metadata accessor for AutomationView(0) + 20));
  if (v40)
  {
    v41 = a1;
    v42 = v40;
    sub_252F5391C();

    if (sub_252F53AFC() & 1) != 0 || (v43 = v42, sub_252F5391C(), v43, (sub_252F53B1C()))
    {
      *v39 = sub_252F5338C();
      *(v39 + 1) = 0x4018000000000000;
      v39[16] = 0;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760A8, &qword_252F54768);
      sub_252F22684(v41, &v39[*(v44 + 44)]);
      type metadata accessor for AutomationSnippetModel(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      v138 = MEMORY[0x277D837D0];
      v139 = MEMORY[0x277D63F80];
      (*(v26 + 104))(v120, *MEMORY[0x277D63D60], v121);
      v112 = v33;
      sub_252F538BC();
      sub_252F25C84();
      v45 = *(v28 + 16);
      v46 = v113;
      v45(v31, v33, v113);
      v47 = v114;
      sub_252F25C84();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760B0, &qword_252F54770);
      v45((v47 + *(v48 + 48)), v31, v46);
      v121 = *(v28 + 8);
      v121(v31, v46);
      sub_252F25CDC(v37, &qword_27F576080, &qword_252F54748);
      sub_252F25C84();
      swift_storeEnumTagMultiPayload();
      v49 = MEMORY[0x277CE14C0];
      sub_252F25B24(&qword_27F575F78, &qword_27F575F80, &qword_252F54538, MEMORY[0x277CE14C0]);
      sub_252F25B24(&qword_27F575F88, &qword_27F575F90, &qword_252F54540, v49);
      v50 = v118;
      sub_252F533EC();
      sub_252F25C84();
      swift_storeEnumTagMultiPayload();
      sub_252F24D74();
      sub_252F25B24(&qword_27F575F98, &qword_27F575FA0, &qword_252F54548, v49);
      sub_252F533EC();
      sub_252F25CDC(v50, &qword_27F575F70, &qword_252F54530);
      sub_252F25CDC(v47, &qword_27F575F80, &qword_252F54538);
      v121(v112, v46);
      v51 = v39;
      v52 = &qword_27F576080;
      v53 = &qword_252F54748;
    }

    else
    {
      v55 = v43;
      sub_252F5391C();

      if ((sub_252F53B0C() & 1) == 0)
      {
        v118 = type metadata accessor for AutomationSnippetModel(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
        v68 = v93;
        sub_252F530BC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
        sub_252F530BC();
        sub_252F2578C(v68, type metadata accessor for IconConfiguration);
        sub_252F5307C();

        v69 = v95;
        sub_252F537FC();
        v70 = v101;
        v71 = v100;
        v72 = v103;
        (*(v101 + 104))(v100, *MEMORY[0x277D62B28], v103);
        sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
        v73 = v96;
        v74 = v99;
        sub_252F534FC();
        (*(v70 + 8))(v71, v72);
        (*(v98 + 8))(v69, v74);
        *(v73 + *(v97 + 36)) = sub_252F536BC();
        sub_252F257E0();
        v75 = sub_252F534EC();
        sub_252F25CDC(v73, &qword_27F576058, &qword_252F54720);
        sub_252F530BC();
        v76 = MEMORY[0x277D837D0];
        v77 = MEMORY[0x277D63F80];
        v138 = MEMORY[0x277D837D0];
        v139 = MEMORY[0x277D63F80];
        sub_252F530BC();
        v136 = v76;
        v137 = v77;
        v135 = 0;
        v133 = 0u;
        v134 = 0u;
        v132 = 0;
        v130 = 0u;
        v131 = 0u;
        v129 = MEMORY[0x277D63A60];
        v128 = MEMORY[0x277CE11C8];
        v119 = v75;
        v127 = v75;

        v78 = v111;
        sub_252F538FC();
        sub_252F530BC();
        v138 = v76;
        v139 = v77;
        (*(v26 + 104))(v120, *MEMORY[0x277D63D60], v121);
        v79 = v109;
        sub_252F538BC();
        v80 = sub_252F5367C();
        v81 = sub_252F5340C();
        v82 = v79 + *(v108 + 36);
        *v82 = v80;
        *(v82 + 8) = v81;
        v83 = v105;
        v84 = *(v105 + 16);
        v85 = v104;
        v86 = v107;
        v84(v104, v78, v107);
        v87 = v110;
        sub_252F25C84();
        v88 = v106;
        v84(v106, v85, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576090, &qword_252F54750);
        sub_252F25C84();
        sub_252F25CDC(v87, &qword_27F576060, &qword_252F54728);
        v89 = *(v83 + 8);
        v89(v85, v86);
        sub_252F25C84();
        swift_storeEnumTagMultiPayload();
        sub_252F24D74();
        sub_252F25B24(&qword_27F575F98, &qword_27F575FA0, &qword_252F54548, MEMORY[0x277CE14C0]);
        sub_252F533EC();

        sub_252F25CDC(v88, &qword_27F575FA0, &qword_252F54548);
        sub_252F25CDC(v79, &qword_27F576060, &qword_252F54728);
        return (v89)(v111, v86);
      }

      v56 = sub_252F5338C();
      v57 = v91;
      *v91 = v56;
      v57[1] = 0;
      *(v57 + 16) = 0;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576098, &qword_252F54758);
      sub_252F230E0(v41, v57 + *(v58 + 44));
      type metadata accessor for AutomationSnippetModel(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      v138 = MEMORY[0x277D837D0];
      v139 = MEMORY[0x277D63F80];
      (*(v26 + 104))(v120, *MEMORY[0x277D63D60], v121);
      v59 = v109;
      sub_252F538BC();
      v60 = sub_252F5367C();
      v61 = sub_252F5340C();
      v62 = v59 + *(v108 + 36);
      *v62 = v60;
      *(v62 + 8) = v61;
      v63 = v92;
      sub_252F25C84();
      v64 = v110;
      sub_252F25C84();
      v65 = v102;
      sub_252F25C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760A0, &qword_252F54760);
      sub_252F25C84();
      sub_252F25CDC(v64, &qword_27F576060, &qword_252F54728);
      sub_252F25CDC(v63, &qword_27F576068, &qword_252F54730);
      sub_252F25C84();
      swift_storeEnumTagMultiPayload();
      v66 = MEMORY[0x277CE14C0];
      sub_252F25B24(&qword_27F575F78, &qword_27F575F80, &qword_252F54538, MEMORY[0x277CE14C0]);
      sub_252F25B24(&qword_27F575F88, &qword_27F575F90, &qword_252F54540, v66);
      v67 = v118;
      sub_252F533EC();
      sub_252F25C84();
      swift_storeEnumTagMultiPayload();
      sub_252F24D74();
      sub_252F25B24(&qword_27F575F98, &qword_27F575FA0, &qword_252F54548, v66);
      sub_252F533EC();
      sub_252F25CDC(v67, &qword_27F575F70, &qword_252F54530);
      sub_252F25CDC(v65, &qword_27F575F90, &qword_252F54540);
      sub_252F25CDC(v59, &qword_27F576060, &qword_252F54728);
      v51 = v57;
      v52 = &qword_27F576068;
      v53 = &qword_252F54730;
    }

    return sub_252F25CDC(v51, v52, v53);
  }

  else
  {
    sub_252F5394C();
    sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F22684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760B8, &qword_252F54778);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760C0, &qword_252F54780);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  *v16 = sub_252F5332C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760C8, &qword_252F54788);
  sub_252F229B4(a1, &v16[*(v17 + 44)]);
  v18 = sub_252F5342C();
  sub_252F531DC();
  v19 = &v16[*(v11 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  v24 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D63F80];
  v44 = MEMORY[0x277D837D0];
  v45 = MEMORY[0x277D63F80];
  type metadata accessor for AutomationSnippetModel(0);
  sub_252F530BC();
  v42 = v24;
  v43 = v25;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v34 = 0u;
  v33 = 0u;
  sub_252F538FC();
  LOBYTE(a1) = sub_252F5342C();
  sub_252F531DC();
  v26 = &v9[*(v4 + 44)];
  *v26 = a1;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_252F25C84();
  sub_252F25C84();
  sub_252F25C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760D0, &qword_252F54790);
  sub_252F25C84();
  sub_252F25CDC(v9, &qword_27F5760B8, &qword_252F54778);
  sub_252F25CDC(v16, &qword_27F5760C0, &qword_252F54780);
  sub_252F25CDC(v7, &qword_27F5760B8, &qword_252F54778);
  return sub_252F25CDC(v14, &qword_27F5760C0, &qword_252F54780);
}

uint64_t sub_252F229B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v60 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760D8, &qword_252F54798);
  v57 = *(v61 - 8);
  v2 = MEMORY[0x28223BE20](v61);
  v59 = &v53[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v56 = &v53[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760E0, &qword_252F547A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53[-v6];
  v8 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_252F5308C();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760E8, &qword_252F547A8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v53[-v16];
  v58 = type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F2578C(v10, type metadata accessor for IconConfiguration);
  sub_252F5307C();

  sub_252F537FC();
  v18 = sub_252F5346C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v18);
  v19 = sub_252F5347C();
  sub_252F25CDC(v7, &qword_27F5760E0, &qword_252F547A0);
  KeyPath = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760F0, &qword_252F547E0);
  v22 = &v17[*(v21 + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  LOBYTE(KeyPath) = sub_252F5340C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760F8, &qword_252F547E8);
  v24 = &v17[*(v23 + 36)];
  *v24 = KeyPath;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  v25 = sub_252F536BC();
  v26 = *(v12 + 36);
  v62 = v17;
  *&v17[v26] = v25;
  sub_252F5307C();
  v27 = v55;
  sub_252F537FC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v18);
  v28 = sub_252F5347C();
  sub_252F25CDC(v7, &qword_27F5760E0, &qword_252F547A0);
  v29 = swift_getKeyPath();
  v30 = &v15[*(v21 + 36)];
  *v30 = v29;
  v30[1] = v28;
  LOBYTE(v21) = sub_252F5345C();
  sub_252F531DC();
  v31 = &v15[*(v23 + 36)];
  *v31 = v21;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  *&v15[*(v12 + 36)] = sub_252F5361C();
  sub_252F258F8();
  v36 = v56;
  sub_252F535AC();
  sub_252F25CDC(v15, &qword_27F5760E8, &qword_252F547A8);
  v37 = type metadata accessor for AutomationView(0);
  if (*(v27 + *(v37 + 24)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    v38 = *(v27 + *(v37 + 20));
    if (v38)
    {
      v63 = v66;
      v64 = v38;
      v65 = 0;
LABEL_6:
      sub_252F25B6C();
      sub_252F25BC0();
      v39 = v38;
      sub_252F533EC();
      v58 = v66;
      v55 = v67;
      v54 = v68;
      v40 = v15;
      sub_252F25C84();
      v41 = v57;
      v42 = *(v57 + 16);
      v43 = v59;
      v44 = v36;
      v45 = v61;
      v42(v59, v36, v61);
      v46 = v60;
      sub_252F25C84();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576138, &qword_252F547F8);
      v42((v46 + *(v47 + 48)), v43, v45);
      v48 = v46 + *(v47 + 64);
      v49 = v58;
      v50 = v55;
      *v48 = v58;
      *(v48 + 8) = v50;
      *(v48 + 16) = v54;
      sub_252F25C14(v49, v50);
      v51 = *(v41 + 8);
      v51(v44, v45);
      sub_252F25CDC(v62, &qword_27F5760E8, &qword_252F547A8);
      sub_252F25C4C(v49, v50);
      v51(v43, v45);
      return sub_252F25CDC(v40, &qword_27F5760E8, &qword_252F547A8);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    v38 = *(v27 + *(v37 + 20));
    if (v38)
    {
      v63 = v66;
      v64 = v38;
      v65 = 1;
      goto LABEL_6;
    }
  }

  sub_252F5394C();
  sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  result = sub_252F5325C();
  __break(1u);
  return result;
}

uint64_t sub_252F230E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576140, &qword_252F54800);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576148, &qword_252F54808);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  *v16 = sub_252F5332C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576150, &qword_252F54810);
  sub_252F23470(a1, &v16[*(v17 + 44)]);
  v18 = sub_252F5341C();
  sub_252F531DC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576158, &qword_252F54818) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_252F5342C();
  sub_252F531DC();
  v29 = &v16[*(v11 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  v34 = MEMORY[0x277D837D0];
  v35 = MEMORY[0x277D63F80];
  v52 = MEMORY[0x277D837D0];
  v53 = MEMORY[0x277D63F80];
  type metadata accessor for AutomationSnippetModel(0);
  sub_252F530BC();
  v50 = v34;
  v51 = v35;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  sub_252F538FC();
  v36 = sub_252F5367C();
  v37 = sub_252F5340C();
  v38 = &v9[*(v4 + 44)];
  *v38 = v36;
  v38[8] = v37;
  sub_252F25C84();
  sub_252F25C84();
  sub_252F25C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576160, &qword_252F54820);
  sub_252F25C84();
  sub_252F25CDC(v9, &qword_27F576140, &qword_252F54800);
  sub_252F25CDC(v16, &qword_27F576148, &qword_252F54808);
  sub_252F25CDC(v7, &qword_27F576140, &qword_252F54800);
  return sub_252F25CDC(v14, &qword_27F576148, &qword_252F54808);
}

uint64_t sub_252F23470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v83 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760E0, &qword_252F547A0);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = v76 - v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576168, &qword_252F54828) - 8;
  v4 = MEMORY[0x28223BE20](v79);
  v81 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = v76 - v6;
  v76[0] = sub_252F52FFC();
  v7 = *(v76[0] - 8);
  MEMORY[0x28223BE20](v76[0]);
  v9 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252F5308C();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_252F537EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576170, &qword_252F54830);
  v19 = v18 - 8;
  v20 = MEMORY[0x28223BE20](v18);
  v80 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v76 - v22;
  v76[1] = type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F2578C(v12, type metadata accessor for IconConfiguration);
  sub_252F5307C();

  sub_252F537FC();
  v24 = v76[0];
  (*(v7 + 104))(v9, *MEMORY[0x277D62B18], v76[0]);
  sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  sub_252F534FC();
  (*(v7 + 8))(v9, v24);
  (*(v15 + 8))(v17, v14);
  v25 = sub_252F5343C();
  sub_252F531DC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576178, &qword_252F54838) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_252F5340C();
  v36 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576180, &qword_252F54840) + 36)];
  *v36 = v35;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  v37 = v23;
  *&v23[*(v19 + 44)] = sub_252F536BC();
  sub_252F5307C();
  v38 = v77;
  sub_252F537FC();
  v39 = sub_252F5346C();
  v40 = v78;
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v39);
  v41 = sub_252F5347C();
  sub_252F25CDC(v40, &qword_27F5760E0, &qword_252F547A0);
  KeyPath = swift_getKeyPath();
  v43 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760F0, &qword_252F547E0) + 36)];
  *v43 = KeyPath;
  v43[1] = v41;
  LOBYTE(v41) = sub_252F5345C();
  sub_252F531DC();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760F8, &qword_252F547E8) + 36)];
  *v52 = v41;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  LOBYTE(v41) = sub_252F5343C();
  sub_252F531DC();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576188, &qword_252F54848) + 36)];
  *v61 = v41;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  v62 = v38;
  *&v38[*(v79 + 44)] = sub_252F5361C();
  v63 = v83;
  v64 = type metadata accessor for AutomationView(0);
  if (*(v63 + *(v64 + 24)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    v65 = *(v63 + *(v64 + 20));
    if (v65)
    {
      v84 = v87;
      v85 = v65;
      v86 = 0;
LABEL_6:
      sub_252F25B6C();
      sub_252F25BC0();
      v66 = v65;
      sub_252F533EC();
      v67 = v87;
      v68 = v88;
      v69 = v89;
      v70 = v80;
      sub_252F25C84();
      v71 = v81;
      sub_252F25C84();
      v72 = v82;
      sub_252F25C84();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576190, &qword_252F54850);
      sub_252F25C84();
      v74 = v72 + *(v73 + 64);
      *v74 = v67;
      *(v74 + 8) = v68;
      *(v74 + 16) = v69;
      sub_252F25C14(v67, v68);
      sub_252F25CDC(v62, &qword_27F576168, &qword_252F54828);
      sub_252F25CDC(v37, &qword_27F576170, &qword_252F54830);
      sub_252F25C4C(v67, v68);
      sub_252F25CDC(v71, &qword_27F576168, &qword_252F54828);
      return sub_252F25CDC(v70, &qword_27F576170, &qword_252F54830);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
    sub_252F530BC();
    v65 = *(v63 + *(v64 + 20));
    if (v65)
    {
      v84 = v87;
      v85 = v65;
      v86 = 1;
      goto LABEL_6;
    }
  }

  sub_252F5394C();
  sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  result = sub_252F5325C();
  __break(1u);
  return result;
}

void sub_252F23D20(uint64_t a1)
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for AutomationView(0);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F57F30;
  v3._countAndFlagsBits = 0xD000000000000067;
  v3._object = 0x8000000252F57E80;
  v2._countAndFlagsBits = 0xD000000000000027;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

uint64_t sub_252F23E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_252F52FAC();
  v8 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_252F25C84();
  v9 = sub_252F52FBC();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) != 1)
  {
    v10 = sub_252F52F8C();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  [v8 setPunchOutUri_];

  v11 = *(a1 + *(type metadata accessor for AutomationView(0) + 20));
  if (v11)
  {
    v12 = v11;
    v13 = v8;
    sub_252F5392C();

    return sub_252F25CDC(v7, &qword_27F576050, &unk_252F54880);
  }

  else
  {
    sub_252F5394C();
    sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F24088@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v32 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576040, &qword_252F54708);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - v3;
  v4 = sub_252F52FFC();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252F5308C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576010, &qword_252F546F8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576008, &qword_252F546F0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FF8, &qword_252F546E8);
  MEMORY[0x28223BE20](v38);
  v33 = &v29 - v14;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  v15 = v40;
  if (v40)
  {
    v30 = v39;
    v31 = a2;
    sub_252F5391C();
    if (sub_252F53AEC())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();
      v16 = MEMORY[0x277D62B18];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();
      v16 = MEMORY[0x277D62B28];
    }

    sub_252F537FC();
    v18 = sub_252F5345C();
    sub_252F531DC();
    v19 = &v10[*(v8 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    v24 = *v16;
    v26 = v34;
    v25 = v35;
    (*(v34 + 104))(v6, v24, v35);
    sub_252F25640();
    sub_252F534FC();
    (*(v26 + 8))(v6, v25);
    sub_252F25CDC(v10, &qword_27F576010, &qword_252F546F8);
    v27 = static ColorUtils.fromString(_:)(v30, v15);

    *&v13[*(v11 + 36)] = v27;
    sub_252F25C84();
    swift_storeEnumTagMultiPayload();
    sub_252F2554C();
    sub_252F533EC();
    sub_252F25CDC(v13, &qword_27F576008, &qword_252F546F0);
    a2 = v31;
    sub_252F18ED4();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v38);
}

uint64_t sub_252F24570(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_bridgeObjectRetain_n();
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA8, &qword_252F542D0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FD8, &qword_252F546E0);
  v11 = sub_252F25B24(&qword_27F575FE0, &qword_27F575EA8, &qword_252F542D0, MEMORY[0x277D83980]);
  v12 = sub_252F25444();
  v13 = sub_252F256FC(&qword_27F576038, type metadata accessor for IconConfiguration, &protocol conformance descriptor for IconConfiguration);
  return sub_252F537CC(&v15, a4, v7, v9, MEMORY[0x277D837D0], v10, v11, v12, v13);
}

uint64_t sub_252F246B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v32 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576040, &qword_252F54708);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - v3;
  v4 = sub_252F52FFC();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252F5308C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576010, &qword_252F546F8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576008, &qword_252F546F0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575FF8, &qword_252F546E8);
  MEMORY[0x28223BE20](v38);
  v33 = &v29 - v14;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  v15 = v40;
  if (v40)
  {
    v30 = v39;
    v31 = a2;
    sub_252F5391C();
    if (sub_252F53AEC())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();
      v16 = MEMORY[0x277D62B18];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();
      v16 = MEMORY[0x277D62B28];
    }

    sub_252F537FC();
    v18 = sub_252F5345C();
    sub_252F531DC();
    v19 = &v10[*(v8 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    v24 = *v16;
    v26 = v34;
    v25 = v35;
    (*(v34 + 104))(v6, v24, v35);
    sub_252F25640();
    sub_252F534FC();
    (*(v26 + 8))(v6, v25);
    sub_252F25CDC(v10, &qword_27F576010, &qword_252F546F8);
    v27 = static ColorUtils.fromString(_:)(v30, v15);

    *&v13[*(v11 + 36)] = v27;
    sub_252F25C84();
    swift_storeEnumTagMultiPayload();
    sub_252F2554C();
    sub_252F533EC();
    sub_252F25CDC(v13, &qword_27F576008, &qword_252F546F0);
    a2 = v31;
    sub_252F18ED4();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v38);
}

uint64_t sub_252F24B90()
{
  OUTLINED_FUNCTION_2_1();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_3_1();
  v3(v2);
  return v0;
}

uint64_t sub_252F24BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F24C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutomationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F21258(v4, a1);
}

unint64_t sub_252F24CBC()
{
  result = qword_27F575F60;
  if (!qword_27F575F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575F58, &qword_252F54528);
    sub_252F24D74();
    sub_252F25B24(&qword_27F575F98, &qword_27F575FA0, &qword_252F54548, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F60);
  }

  return result;
}

unint64_t sub_252F24D74()
{
  result = qword_27F575F68;
  if (!qword_27F575F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575F70, &qword_252F54530);
    v1 = MEMORY[0x277CE14C0];
    sub_252F25B24(&qword_27F575F78, &qword_27F575F80, &qword_252F54538, MEMORY[0x277CE14C0]);
    sub_252F25B24(&qword_27F575F88, &qword_27F575F90, &qword_252F54540, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575F68);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AutomationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v7 = type metadata accessor for AutomationSnippetModel(0);
  v8 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E90, &qword_252F542B8);
  OUTLINED_FUNCTION_0_1();
  (*(v9 + 8))(v0 + v3 + v8);
  v10 = v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E98, &unk_252F542C0);
  OUTLINED_FUNCTION_0_1();
  (*(v11 + 8))(v0 + v3 + v10);
  v6(v0 + v3 + v7[7], v4);
  v6(v0 + v3 + v7[8], v4);
  v12 = v7[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_0_1();
  (*(v13 + 8))(v0 + v3 + v12);

  v14 = v1[9];
  sub_252F5314C();
  OUTLINED_FUNCTION_0_1();
  (*(v15 + 8))(v0 + v3 + v14);

  return MEMORY[0x2821FE8E8](v0, v3 + v17, v2 | 7);
}

uint64_t sub_252F250B4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AutomationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_252F25128()
{
  result = qword_27F575FA8;
  if (!qword_27F575FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575F50, &unk_252F54518);
    sub_252F25B24(&qword_27F575FB0, &qword_27F575FB8, &qword_252F54550, MEMORY[0x277D63B90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575FA8);
  }

  return result;
}

void sub_252F25224(uint64_t a1)
{
  type metadata accessor for AutomationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F5314C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252F252C8(uint64_t a1)
{
  if (!qword_27F575FD0)
  {
    sub_252F5394C();
    sub_252F256FC(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_252F5327C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F575FD0);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_252F25378(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_252F253B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_252F25444()
{
  result = qword_27F575FE8;
  if (!qword_27F575FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575FD8, &qword_252F546E0);
    sub_252F254C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575FE8);
  }

  return result;
}

unint64_t sub_252F254C8()
{
  result = qword_27F575FF0;
  if (!qword_27F575FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F575FF8, &qword_252F546E8);
    sub_252F2554C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F575FF0);
  }

  return result;
}

unint64_t sub_252F2554C()
{
  result = qword_27F576000;
  if (!qword_27F576000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576008, &qword_252F546F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576010, &qword_252F546F8);
    sub_252F25640();
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F576028, &qword_27F576030, &qword_252F54700, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576000);
  }

  return result;
}

unint64_t sub_252F25640()
{
  result = qword_27F576018;
  if (!qword_27F576018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576010, &qword_252F546F8);
    sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576018);
  }

  return result;
}

uint64_t sub_252F256FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252F2578C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_252F257E0()
{
  result = qword_27F576088;
  if (!qword_27F576088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576058, &qword_252F54720);
    sub_252F537EC();
    sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F576028, &qword_27F576030, &qword_252F54700, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576088);
  }

  return result;
}

unint64_t sub_252F258F8()
{
  result = qword_27F576100;
  if (!qword_27F576100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5760E8, &qword_252F547A8);
    sub_252F259B0();
    sub_252F25B24(&qword_27F576028, &qword_27F576030, &qword_252F54700, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576100);
  }

  return result;
}

unint64_t sub_252F259B0()
{
  result = qword_27F576108;
  if (!qword_27F576108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5760F8, &qword_252F547E8);
    sub_252F25A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576108);
  }

  return result;
}

unint64_t sub_252F25A3C()
{
  result = qword_27F576110;
  if (!qword_27F576110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5760F0, &qword_252F547E0);
    sub_252F256FC(&qword_27F576020, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    sub_252F25B24(&qword_27F576118, &qword_27F576120, &qword_252F547F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576110);
  }

  return result;
}

uint64_t sub_252F25B24(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252F25B6C()
{
  result = qword_27F576128;
  if (!qword_27F576128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576128);
  }

  return result;
}

unint64_t sub_252F25BC0()
{
  result = qword_27F576130;
  if (!qword_27F576130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576130);
  }

  return result;
}

id sub_252F25C14(uint64_t a1, void *a2)
{

  return a2;
}

void sub_252F25C4C(uint64_t a1, void *a2)
{
}

uint64_t sub_252F25C84()
{
  OUTLINED_FUNCTION_2_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1();
  v3 = OUTLINED_FUNCTION_3_1();
  v4(v3);
  return v0;
}

uint64_t sub_252F25CDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_252F25D30()
{
  result = qword_27F576198;
  if (!qword_27F576198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5761A0, &qword_252F54858);
    sub_252F25444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576198);
  }

  return result;
}

uint64_t TemperatureSnippetModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t sub_252F25E30(uint64_t *a1)
{
  v1 = *a1;

  return TemperatureSnippetModel.primaryText.setter(v1);
}

uint64_t TemperatureSnippetModel.primaryText.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_10_1(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_252F530CC();
}

uint64_t (*TemperatureSnippetModel.primaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F1EBA8;
}

uint64_t TemperatureSnippetModel.secondaryText.getter()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  return v1;
}

uint64_t type metadata accessor for TemperatureSnippetModel(uint64_t a1)
{
  result = qword_27F576218;
  if (!qword_27F576218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureSnippetModel.secondaryText.setter(uint64_t a1)
{
  type metadata accessor for TemperatureSnippetModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_10_1(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_252F530CC();
}

uint64_t (*TemperatureSnippetModel.secondaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t TemperatureSnippetModel.temperature.getter()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  return v1;
}

uint64_t sub_252F260D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t TemperatureSnippetModel.temperature.setter(uint64_t a1)
{
  type metadata accessor for TemperatureSnippetModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_10_1(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return sub_252F530CC();
}

uint64_t (*TemperatureSnippetModel.temperature.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t TemperatureSnippetModel.isHeating.getter()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  return v1;
}

uint64_t TemperatureSnippetModel.isHeating.setter(char a1)
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  return sub_252F530CC();
}

uint64_t (*TemperatureSnippetModel.isHeating.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

void *TemperatureSnippetModel.punchOut.getter()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  return sub_252F530BC();
}

uint64_t sub_252F26354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_252F26494(a1, &v6 - v3);
  return TemperatureSnippetModel.punchOut.setter(v4);
}

uint64_t TemperatureSnippetModel.punchOut.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v2);
  sub_252F26494(a1, &v5 - v3);
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_1_0();
  sub_252F530CC();
  return sub_252F26504(a1);
}

uint64_t sub_252F26494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F26504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*TemperatureSnippetModel.punchOut.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

unint64_t sub_252F26608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F18F4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252F26638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F18F98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_252F2666C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F18F4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F26694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F265DC();
  *a1 = result;
  return result;
}

uint64_t sub_252F266BC(uint64_t a1)
{
  v2 = sub_252F26FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F266F8(uint64_t a1)
{
  v2 = sub_252F26FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall TemperatureSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F57F60;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t TemperatureSnippetModel.init(primaryText:temperature:secondaryText:isHeating:punchOut:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a8;
  v30 = a7;
  v28 = a5;
  v29 = a6;
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v17 = type metadata accessor for TemperatureSnippetModel(0);
  v32 = 0;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F5309C();
  v18 = *(v17 + 24);
  v32 = 0;
  v33 = 0;
  sub_252F5309C();
  LOBYTE(v32) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F5309C();
  v19 = sub_252F52FBC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v19);
  sub_252F26494(v16, v13);
  sub_252F5309C();
  sub_252F26504(v16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1();
  (*(v21 + 8))(a9 + v18, v20);
  v32 = v24;
  v33 = v25;
  sub_252F5309C();
  v32 = v26;
  v33 = v27;
  sub_252F5309C();
  v32 = v28;
  v33 = v29;
  sub_252F530CC();
  LOBYTE(v32) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530CC();
  v22 = v31;
  sub_252F26494(v31, v16);
  sub_252F26494(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530CC();
  sub_252F26504(v22);
  return sub_252F26504(v16);
}

uint64_t TemperatureSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C8, &qword_252F54898);
  OUTLINED_FUNCTION_16();
  v49 = v4;
  v50 = v3;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v48 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = type metadata accessor for TemperatureSnippetModel(0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v18[7];
  v54 = 0;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  v52 = v21;
  sub_252F5309C();
  v22 = v18[8];
  v54 = 0;
  v55 = 0;
  v53 = v22;
  sub_252F5309C();
  v23 = v18[9];
  LOBYTE(v54) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  v56 = v23;
  sub_252F5309C();
  v24 = v18[10];
  v25 = sub_252F52FBC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v25);
  sub_252F26494(v16, v14);
  sub_252F5309C();
  sub_252F26504(v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F26FEC();
  v26 = v51;
  sub_252F53CFC();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1();
    v32 = *(v31 + 8);
    v32(&v20[v52], v30);
    v32(&v20[v53], v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    OUTLINED_FUNCTION_1();
    (*(v33 + 8))(&v20[v56]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    OUTLINED_FUNCTION_1();
    return (*(v34 + 8))(&v20[v24]);
  }

  else
  {
    v45 = v16;
    v46 = v25;
    v51 = v24;
    v28 = v48;
    v27 = v49;
    LOBYTE(v54) = 1;
    v29 = v50;
    v54 = sub_252F53C0C();
    v55 = v35;
    sub_252F5309C();
    LOBYTE(v54) = 2;
    v36 = sub_252F53C0C();
    v44 = a1;
    v54 = v36;
    v55 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530CC();
    LOBYTE(v54) = 0;
    OUTLINED_FUNCTION_9_1();
    v38 = v27;
    v39 = v28;
    v54 = sub_252F53C0C();
    v55 = v40;
    sub_252F530CC();
    LOBYTE(v54) = 3;
    OUTLINED_FUNCTION_9_1();
    v41 = sub_252F53C1C() & 1;
    v42 = v45;
    LOBYTE(v54) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530CC();
    LOBYTE(v54) = 4;
    sub_252F27E20(&qword_27F5761D8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_252F53C2C();
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v46);
    sub_252F26494(v39, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    sub_252F530CC();
    sub_252F26504(v39);
    (*(v38 + 8))(v7, v29);
    sub_252F27040(0, v47);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_252F270A4(0);
  }
}

unint64_t sub_252F26FEC()
{
  result = qword_27F5761D0;
  if (!qword_27F5761D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5761D0);
  }

  return result;
}

uint64_t sub_252F27040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F270A4(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TemperatureSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761E0, &qword_252F548A0);
  OUTLINED_FUNCTION_16();
  v10 = v9;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F26FEC();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v22) = 1;
  v14 = v21;
  sub_252F53C5C();
  if (v14)
  {
    (*(v10 + 8))(v13, v8);
  }

  else
  {
    v18[2] = v4;
    v19 = v10;
    v20 = v7;

    v21 = type metadata accessor for TemperatureSnippetModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    v18[1] = v2;
    sub_252F530BC();
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
    sub_252F2750C(&qword_27F5761E8, &qword_27F5761B8, &qword_252F55E20);
    OUTLINED_FUNCTION_11_1(&v22, &v23, v8);

    sub_252F530BC();
    v23 = 0;
    OUTLINED_FUNCTION_11_1(&v22, &v23, v8);
    v16 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
    sub_252F2750C(&qword_27F5761F0, &qword_27F5761C0, &qword_252F54890);
    sub_252F53C7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    sub_252F530BC();
    LOBYTE(v22) = 4;
    sub_252F27574();
    sub_252F53C7C();
    v17 = v19;
    sub_252F26504(v16);
    return (*(v17 + 8))(v13, v8);
  }
}

uint64_t sub_252F2750C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252F27574()
{
  result = qword_27F5761F8;
  if (!qword_27F5761F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576050, &unk_252F54880);
    sub_252F27E20(&qword_27F576200, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5761F8);
  }

  return result;
}

unint64_t TemperatureSnippetModel.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - v1;
  v3 = sub_252F52FBC();
  OUTLINED_FUNCTION_16();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v26 = &v25 - v11;
  v30 = 0xD000000000000018;
  v31 = 0x8000000252F57F80;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_252F53B8C();

  strcpy(v29, "primaryText: ");
  HIWORD(v29[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v27, v28);

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v29[0], v29[1]);

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  MEMORY[0x2530AF890](0x6E69746165487369, 0xEB00000000203A67);
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F53BCC();
  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v29[0], v29[1]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  v12 = v29[1];
  if (v29[1])
  {
    v13 = v5;
    v14 = v29[0];
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_252F53B8C();

    v29[0] = 0xD000000000000011;
    v29[1] = 0x8000000252F57FA0;
    v15 = v14;
    v5 = v13;
    MEMORY[0x2530AF890](v15, v12);

    MEMORY[0x2530AF890](v29[0], v29[1]);
  }

  sub_252F530BC();
  v16 = v29[1];
  if (v29[1])
  {
    v17 = v29[0];
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_252F53B8C();

    v29[0] = 0x7265706D6574202CLL;
    v29[1] = 0xEF203A6572757461;
    MEMORY[0x2530AF890](v17, v16);

    MEMORY[0x2530AF890](v29[0], v29[1]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_252F26504(v2);
  }

  else
  {
    v18 = v26;
    (*(v5 + 32))(v26, v2, v3);
    sub_252F52F9C();
    v19 = sub_252F52F7C();
    v21 = v20;
    v22 = *(v5 + 8);
    v22(v9, v3);
    v29[0] = v19;
    v29[1] = v21;

    LOBYTE(v19) = sub_252F53A2C();

    if (v19)
    {
      sub_252F27B3C(v23);
    }

    v27 = 0x74756F68636E7570;
    v28 = 0xEA0000000000203ALL;
    MEMORY[0x2530AF890](v29[0], v29[1]);

    MEMORY[0x2530AF890](8236, 0xE200000000000000);
    MEMORY[0x2530AF890](v27, v28);

    v22(v18, v3);
  }

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return v30;
}

uint64_t sub_252F27B3C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_252F539CC();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t TemperatureSnippetModel.stringId.getter()
{
  sub_252F53B8C();

  strcpy(v15, "#primaryText: ");
  HIBYTE(v15[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v14[0], v14[1]);

  sub_252F53B8C();

  v14[0] = 0xD000000000000010;
  v14[1] = 0x8000000252F57FC0;
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  if (v13)
  {
    v0 = v12;
  }

  else
  {
    v0 = 7104878;
  }

  if (v13)
  {
    v1 = v13;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x2530AF890](v0, v1);

  MEMORY[0x2530AF890](v14[0], v14[1]);

  strcpy(v14, "#isHeating: ");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  OUTLINED_FUNCTION_10_1(v2, v3, v4, v5, v6, v7, v8, v9, v12);
  v10 = sub_252F5398C();
  MEMORY[0x2530AF890](v10);

  MEMORY[0x2530AF890](v14[0], v14[1]);

  return v15[0];
}

uint64_t sub_252F27E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_252F27EC0(uint64_t a1)
{
  sub_252F27FBC();
  if (v1 <= 0x3F)
  {
    sub_252F2800C(319, &qword_27F576228, &qword_27F5761B8, &qword_252F55E20);
    if (v2 <= 0x3F)
    {
      sub_252F2800C(319, &qword_27F576230, &qword_27F5761C0, &qword_252F54890);
      if (v3 <= 0x3F)
      {
        sub_252F2800C(319, &qword_27F576238, &qword_27F576050, &unk_252F54880);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252F27FBC()
{
  if (!qword_27F575F18)
  {
    v0 = sub_252F530EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F575F18);
    }
  }
}

void sub_252F2800C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_252F530EC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TemperatureSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TemperatureSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_252F281C8()
{
  result = qword_27F576240;
  if (!qword_27F576240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576240);
  }

  return result;
}

unint64_t sub_252F28220()
{
  result = qword_27F576248;
  if (!qword_27F576248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576248);
  }

  return result;
}

unint64_t sub_252F28278()
{
  result = qword_27F576250;
  if (!qword_27F576250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576250);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for TemperatureSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252F53C7C();
}

uint64_t ConfirmationSnippetModel.primaryText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmationSnippetModel.primaryText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.secondaryText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmationSnippetModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.confirmationText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ConfirmationSnippetModel.confirmationText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.confirmLabel.getter()
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t type metadata accessor for ConfirmationSnippetModel(uint64_t a1)
{
  result = qword_27F5762B0;
  if (!qword_27F5762B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F28580(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ConfirmationSnippetModel.confirmLabel.setter(v1, v2);
}

uint64_t ConfirmationSnippetModel.confirmLabel.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  return sub_252F530CC();
}

uint64_t (*ConfirmationSnippetModel.confirmLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F1EBA8;
}

uint64_t ConfirmationSnippetModel.denyLabel.getter()
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t sub_252F286DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ConfirmationSnippetModel.denyLabel.setter(v1, v2);
}

uint64_t ConfirmationSnippetModel.denyLabel.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  return sub_252F530CC();
}

uint64_t (*ConfirmationSnippetModel.denyLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t ConfirmationSnippetModel.confirmDirectInvocation.getter()
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5302C();
}

uint64_t ConfirmationSnippetModel.confirmDirectInvocation.setter()
{
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5303C();
}

uint64_t (*ConfirmationSnippetModel.confirmDirectInvocation.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F5301C();
  return sub_252F20BA0;
}

uint64_t ConfirmationSnippetModel.denyDirectInvocation.getter()
{
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5302C();
}

uint64_t ConfirmationSnippetModel.denyDirectInvocation.setter()
{
  OUTLINED_FUNCTION_11_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5303C();
}

uint64_t (*ConfirmationSnippetModel.denyDirectInvocation.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = sub_252F5301C();
  return sub_252F20BA0;
}

uint64_t ConfirmationSnippetModel.iconConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConfirmationSnippetModel(0) + 44);

  return sub_252F28A88(v3, a1);
}

uint64_t sub_252F28A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationSnippetModel.iconConfiguration.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_11_2() + 44);

  return sub_252F28B34(v0, v2);
}

uint64_t sub_252F28B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationSnippetModel.isDestructive.setter(char a1)
{
  result = type metadata accessor for ConfirmationSnippetModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

unint64_t sub_252F28C78(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252F28CD4(char a1)
{
  result = 0x547972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0x4C6D7269666E6F63;
      break;
    case 3:
      result = 0x6562614C796E6564;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x7572747365447369;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252F28E3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F28C78(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_252F28E6C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252F28CD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F28EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F28CC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F28EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F28CC8();
  *a1 = result;
  return result;
}

uint64_t sub_252F28F04(uint64_t a1)
{
  v2 = sub_252F298C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F28F40(uint64_t a1)
{
  v2 = sub_252F298C8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall ConfirmationSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F57FE0;
  v1 = 0xD00000000000001BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t ConfirmationSnippetModel.init(primaryText:secondaryText:confirmationText:confirmLabel:denyLabel:confirmDirectInvocation:denyDirectInvocation:iconConfiguration:isDestructive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = type metadata accessor for ConfirmationSnippetModel(0);
  v21 = *(v20 + 44);
  v22 = type metadata accessor for IconConfiguration(0);
  __swift_storeEnumTagSinglePayload(a9 + v21, 1, 1, v22);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  sub_252F5309C();
  sub_252F5309C();
  sub_252F290F0();
  v23 = a12;
  sub_252F5300C();
  sub_252F5300C();

  *(a9 + *(v20 + 48)) = a15;
  result = sub_252F28B34(a14, a9 + v21);
  a9[4] = a5;
  a9[5] = a6;
  return result;
}

unint64_t sub_252F290F0()
{
  result = qword_27F576268;
  if (!qword_27F576268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F576268);
  }

  return result;
}

uint64_t ConfirmationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v3);
  v59 = &v48 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16();
  v62 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576270, &qword_252F54AA8);
  OUTLINED_FUNCTION_16();
  v63 = v11;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for ConfirmationSnippetModel(0);
  OUTLINED_FUNCTION_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v17 + 44);
  v21 = type metadata accessor for IconConfiguration(0);
  v66 = v20;
  v69 = v19;
  __swift_storeEnumTagSinglePayload(v19 + v20, 1, 1, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F298C8();
  v22 = v65;
  sub_252F53CFC();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_252F2991C(v69 + v66);
  }

  else
  {
    v57 = v21;
    v58 = v10;
    v23 = v64;
    v65 = a1;
    LOBYTE(v67) = 0;
    v24 = v14;
    v25 = sub_252F53C0C();
    v26 = v69;
    *v69 = v25;
    v26[1] = v27;
    v56 = v27;
    OUTLINED_FUNCTION_1_1(1);
    v28 = sub_252F53C0C();
    v30 = v29;
    v26[2] = v28;
    v26[3] = v29;
    OUTLINED_FUNCTION_1_1(8);
    v26[4] = sub_252F53C0C();
    v26[5] = v31;
    v55 = v31;
    OUTLINED_FUNCTION_1_1(2);
    v67 = sub_252F53C0C();
    v68 = v32;
    sub_252F5309C();
    OUTLINED_FUNCTION_1_1(3);
    v54 = 0;
    v33 = sub_252F53C0C();
    v52 = v30;
    v67 = v33;
    v68 = v34;
    sub_252F5309C();
    LOBYTE(v67) = 4;
    v35 = sub_252F2A098(&qword_27F576280, MEMORY[0x277D63230]);
    v36 = v64;
    v51 = v35;
    v53 = v24;
    sub_252F53C2C();
    v37 = v58;
    v50 = sub_252F5302C();
    v49 = *(v62 + 8);
    v49(v37, v36);
    v58 = v15;
    v50 = sub_252F290F0();
    sub_252F5300C();
    LOBYTE(v67) = 5;
    v38 = v61;
    sub_252F53C2C();
    sub_252F5302C();
    v49(v38, v23);
    v39 = v58;
    sub_252F5300C();
    LOBYTE(v67) = 7;
    sub_252F2A76C(&qword_27F575EC8, type metadata accessor for IconConfiguration, &protocol conformance descriptor for IconConfiguration);
    v40 = v59;
    sub_252F53C2C();
    v41 = v60;
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v57);
    v42 = v40;
    v43 = v69;
    sub_252F28B34(v42, v69 + v66);
    OUTLINED_FUNCTION_1_1(6);
    v44 = sub_252F53C1C();
    v45 = OUTLINED_FUNCTION_8_1();
    v46(v45);
    *(v43 + *(v39 + 12)) = v44 & 1;
    sub_252F29984(v43, v41);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return sub_252F299E8(v43);
  }
}

unint64_t sub_252F298C8()
{
  result = qword_27F576278;
  if (!qword_27F576278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576278);
  }

  return result;
}

uint64_t sub_252F2991C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F29984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F299E8(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConfirmationSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16();
  v32 = v4;
  v33 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576288, &unk_252F54AB0);
  OUTLINED_FUNCTION_16();
  v13 = v12;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F298C8();
  sub_252F53D0C();
  LOBYTE(v35) = 0;
  v17 = v34;
  sub_252F53C5C();
  if (v17)
  {
    return (*(v13 + 8))(v16, v11);
  }

  v30 = v8;
  v31 = v10;
  v34 = v13;
  v19 = v2[3];
  v35 = v2[2];
  v36 = v19;
  v37 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F29F68();
  sub_252F53C7C();

  v20 = v2[5];
  v35 = v2[4];
  v36 = v20;
  v37 = 8;

  sub_252F53C7C();

  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v35) = 2;
  sub_252F53C5C();

  LOBYTE(v35) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  sub_252F29FE4();
  sub_252F53C7C();
  v21 = v31;
  sub_252F530BC();
  LOBYTE(v35) = 3;
  sub_252F53C5C();

  v22 = v32;
  sub_252F5302C();
  v31 = sub_252F290F0();
  sub_252F5300C();
  LOBYTE(v35) = 4;
  sub_252F2A098(&qword_27F576298, MEMORY[0x277D63228]);
  OUTLINED_FUNCTION_13_1();
  v29 = v23;
  sub_252F53C7C();
  v24 = v33 + 8;
  v25 = *(v33 + 8);
  v25(v21, v22);
  v33 = v24;
  sub_252F5302C();
  v26 = v30;
  sub_252F5300C();
  LOBYTE(v35) = 5;
  OUTLINED_FUNCTION_13_1();
  sub_252F53C7C();
  v25(v26, v22);
  LOBYTE(v35) = 6;
  sub_252F53C6C();
  v27 = OUTLINED_FUNCTION_2_2();
  return v28(v27);
}

unint64_t sub_252F29F68()
{
  result = qword_27F5761E8;
  if (!qword_27F5761E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5761B8, &qword_252F55E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5761E8);
  }

  return result;
}

unint64_t sub_252F29FE4()
{
  result = qword_27F576290;
  if (!qword_27F576290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576260, &qword_252F54AA0);
    sub_252F2A76C(&qword_27F575EE0, type metadata accessor for IconConfiguration, &protocol conformance descriptor for IconConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576290);
  }

  return result;
}

uint64_t sub_252F2A098(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576258, &unk_252F55030);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ConfirmationSnippetModel.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v1);
  v3 = &v18[-2] - v2;
  OUTLINED_FUNCTION_6_0();
  v19 = 0xD000000000000019;
  v20 = v4;
  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();

  strcpy(v18, "primaryText: ");
  HIWORD(v18[1]) = -4864;
  MEMORY[0x2530AF890](*v0, *(v0 + 8));
  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v18[0], v18[1]);

  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();

  strcpy(v18, "confirmLabel: ");
  HIBYTE(v18[1]) = -18;
  v5 = type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v17, *(&v17 + 1));

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  MEMORY[0x2530AF890](v18[0], v18[1]);

  strcpy(v18, "denyLabel: ");
  HIDWORD(v18[1]) = -352321536;
  sub_252F530BC();
  MEMORY[0x2530AF890](v17, *(&v17 + 1));

  MEMORY[0x2530AF890](8236, 0xE200000000000000);
  OUTLINED_FUNCTION_6_1();

  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();

  v6 = *(v0 + *(v5 + 48));
  v18[0] = 0x7572747365447369;
  v18[1] = 0xEF203A6576697463;
  if (v6)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v7, v8);

  OUTLINED_FUNCTION_6_1();

  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000012, 0x8000000252F58020);
  v17 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F53BCC();
  OUTLINED_FUNCTION_6_1();

  v9 = *(v0 + 24);
  if (v9)
  {
    v10 = *(v0 + 16);
    OUTLINED_FUNCTION_4_1();
    sub_252F53B8C();

    OUTLINED_FUNCTION_6_0();
    v18[0] = 0xD000000000000011;
    v18[1] = v11;
    MEMORY[0x2530AF890](v10, v9);
    OUTLINED_FUNCTION_6_1();
  }

  OUTLINED_FUNCTION_4_1();
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v18[0] = 0xD000000000000015;
  v18[1] = v12;
  sub_252F28A88(v0 + *(v5 + 44), v3);
  v13 = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_16_0(v13);
  if (v0 == 1)
  {
    v14 = 0x65736C6166;
  }

  else
  {
    v14 = 1702195828;
  }

  if (v0 == 1)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v14, v15);

  MEMORY[0x2530AF890](v18[0], v18[1]);

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return v19;
}

uint64_t ConfirmationSnippetModel.stringId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - v2;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_252F53B8C();

  strcpy(v15, "#primaryText: ");
  HIBYTE(v15[1]) = -18;
  MEMORY[0x2530AF890](*v0, v0[1]);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v13 = 0xD000000000000010;
  v14 = v4;
  if (v0[3])
  {
    v5 = v0[2];
    v6 = v0[3];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x2530AF890](v5, v6);

  MEMORY[0x2530AF890](v13, v14);

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_252F53B8C();

  OUTLINED_FUNCTION_6_0();
  v13 = 0xD000000000000017;
  v14 = v7;
  v8 = type metadata accessor for ConfirmationSnippetModel(0);
  sub_252F28A88(v0 + *(v8 + 44), v3);
  v9 = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_16_0(v9);
  if (v0 == 1)
  {
    v10 = 0x65736C6166;
  }

  else
  {
    v10 = 1702195828;
  }

  if (v0 == 1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v10, v11);

  MEMORY[0x2530AF890](v13, v14);

  return v15[0];
}

uint64_t sub_252F2A76C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_252F2A80C(uint64_t a1)
{
  sub_252F2A970(319, &qword_27F5762C0, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252F2A970(319, &qword_27F575F18, MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      sub_252F2A9C4(319, &qword_27F5762C8, sub_252F290F0, MEMORY[0x277D63220]);
      if (v3 <= 0x3F)
      {
        sub_252F2A9C4(319, &qword_27F5762D0, type metadata accessor for IconConfiguration, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252F2A970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_252F2A9C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ConfirmationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F2AB90()
{
  result = qword_27F5762D8;
  if (!qword_27F5762D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5762D8);
  }

  return result;
}

unint64_t sub_252F2ABE8()
{
  result = qword_27F5762E0;
  if (!qword_27F5762E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5762E0);
  }

  return result;
}

unint64_t sub_252F2AC40()
{
  result = qword_27F5762E8;
  if (!qword_27F5762E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5762E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for ConfirmationSnippetModel(0);
}

void OUTLINED_FUNCTION_6_1()
{

  JUMPOUT(0x2530AF890);
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return type metadata accessor for ConfirmationSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);

  return sub_252F2991C(v1);
}

uint64_t sub_252F2AD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IconConfiguration(0);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F5394C();
  OUTLINED_FUNCTION_3_3();
  sub_252F2DED4(v8, v9, MEMORY[0x277D63F50]);
  *(a2 + 24) = sub_252F5326C();
  *(a2 + 32) = v10;
  v11 = type metadata accessor for CompletionSnippetView(0);
  v12 = v11[6];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v11[7];
  LOBYTE(v23) = 0;
  sub_252F5374C();
  v14 = v25;
  *v13 = v24;
  *(v13 + 8) = v14;
  *a2 = sub_252F2DDFC;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_252F531AC();

  v15 = (sub_252F43A78() & 1) == 0 || (sub_252F43A64() & 1) == 0;
  LOBYTE(v24) = v15;
  v16 = sub_252F43A8C();
  v17 = sub_252F43B24();
  type metadata accessor for CompletionStyleSettings(0);
  swift_allocObject();
  v18 = sub_252F3DAF8(v7, &v24, v16 & 1, (v17 & 1) == 0);
  v19 = (a2 + v11[8]);
  v23 = v18;

  sub_252F5374C();

  v21 = v25;
  *v19 = v24;
  v19[1] = v21;
  return result;
}

uint64_t sub_252F2AFE8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = type metadata accessor for SnippetDetailsModel(0);
  OUTLINED_FUNCTION_4_2();
  v8 = sub_252F2DED4(v6, v7, &protocol conformance descriptor for SnippetDetailsModel);

  return a1(v2, v3, v4, v5, v8);
}

uint64_t CompletionSnippetView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v93 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5762F8, &unk_252F54CD0);
  OUTLINED_FUNCTION_16();
  v80 = v2;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11_3();
  v79 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576300, &unk_252F55210);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_3();
  v87 = v7;
  v8 = type metadata accessor for CompletionSnippetView(0);
  v9 = *(v8 - 8);
  v86 = v8 - 8;
  v85 = v9;
  v99 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  OUTLINED_FUNCTION_16();
  v89 = v11;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_3();
  v96 = v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576310, &qword_252F54CE8);
  OUTLINED_FUNCTION_16();
  v90 = v14;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11_3();
  v95 = v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576318, &qword_252F54CF0);
  OUTLINED_FUNCTION_16();
  v91 = v17;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_3();
  v98 = v19;
  v100 = v1;
  type metadata accessor for SnippetDetailsModel(0);
  OUTLINED_FUNCTION_4_2();
  sub_252F2DED4(v20, v21, &protocol conformance descriptor for SnippetDetailsModel);
  OUTLINED_FUNCTION_13_2();
  swift_getKeyPath();
  sub_252F5324C();

  v109 = v101;
  v110 = v102;
  v111 = v103;
  v112 = v104;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576320, &qword_252F54D20);
  MEMORY[0x2530AF650](&v107);
  v84 = v107;
  v83 = v108;

  OUTLINED_FUNCTION_13_2();
  swift_getKeyPath();
  sub_252F5324C();

  v109 = v101;
  v110 = v102;
  v111 = v103;
  v112 = v104;
  MEMORY[0x2530AF650](&v107, v22);
  v23 = v107;
  v24 = v108;

  v25 = v100;
  sub_252F2DE5C();
  v26 = *(v85 + 80);
  v27 = swift_allocObject();
  v28 = v83;
  v27[2] = v84;
  v27[3] = v28;
  v27[4] = v23;
  v27[5] = v24;
  sub_252F2DE04();
  sub_252F5390C();
  sub_252F2DED4(&qword_27F576330, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
  sub_252F5381C();
  v29 = (v25 + *(v86 + 40));
  v31 = *v29;
  v30 = v29[1];
  v101 = v31;
  v102 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
  sub_252F5375C();
  v32 = v87;
  sub_252F3DCD8(v87);

  v33 = sub_252F5383C();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  v82 = type metadata accessor for CompletionSnippetView;
  sub_252F2DE5C();
  swift_allocObject();
  sub_252F2DE04();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576340, &qword_252F54D60);
  v35 = sub_252F25B24(&qword_27F576348, &qword_27F576308, &qword_252F54CE0, MEMORY[0x277D63B90]);
  v77 = sub_252F2D8D4();
  v36 = v96;
  v37 = v88;
  sub_252F5353C();

  sub_252F2E3C4(v32, &qword_27F576300, &unk_252F55210);
  OUTLINED_FUNCTION_5_2();
  v38(v36, v37);
  type metadata accessor for CompletionSnippetModel(0);
  sub_252F2DE5C();
  v96 = v26;
  swift_allocObject();
  v89 = (v26 + 16) & ~v26;
  v39 = sub_252F2DE04();
  v101 = v37;
  v102 = v34;
  v103 = v37;
  v104 = v35;
  v105 = v77;
  v106 = v35;
  OUTLINED_FUNCTION_14_1(v39, MEMORY[0x277D639E0]);
  sub_252F2DED4(&qword_27F576368, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  sub_252F2DED4(&qword_27F576370, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  sub_252F2DED4(&qword_27F576378, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  v40 = v97;
  v41 = v95;
  sub_252F5354C();

  OUTLINED_FUNCTION_5_2();
  v42(v41, v40);
  v43 = *(v100 + 24);
  if (v43)
  {
    v44 = v43;
    sub_252F5391C();

    if (sub_252F53B2C())
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_14_1(v45, v46);
      v47 = v92;
      v48 = v98;
      v109 = sub_252F534EC();
      LOBYTE(v110) = 0;

      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_9_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576380, &qword_252F54D70);
      v49 = sub_252F2DA24();
      OUTLINED_FUNCTION_7_2(v49);

      OUTLINED_FUNCTION_5_2();
      v51 = v48;
      v52 = v47;
    }

    else
    {
      v53 = v44;
      sub_252F5391C();

      if (sub_252F53B3C() & 1) != 0 || (v54 = v53, sub_252F5391C(), v54, (sub_252F53AFC()) || (v55 = v54, sub_252F5391C(), v55, (sub_252F53B1C()))
      {
        sub_252F2DE5C();
        swift_allocObject();
        sub_252F2DE04();
        OUTLINED_FUNCTION_0_2();
        v58 = OUTLINED_FUNCTION_14_1(v56, v57);
        v59 = v79;
        v60 = v92;
        v61 = v98;
        sub_252F5351C();

        v101 = v60;
        v102 = v58;
        OUTLINED_FUNCTION_14_1(v62, MEMORY[0x277D63968]);
        v63 = v81;
        v64 = sub_252F534EC();
        OUTLINED_FUNCTION_5_2();
        v65(v59, v63);
        v109 = v64;
        LOBYTE(v110) = 1;

        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_9_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576380, &qword_252F54D70);
        v66 = sub_252F2DA24();
        OUTLINED_FUNCTION_7_2(v66);

        OUTLINED_FUNCTION_5_2();
        v51 = v61;
        v52 = v60;
      }

      else
      {
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_14_1(v71, v72);
        v73 = v92;
        v74 = v98;
        v109 = sub_252F534EC();
        LOWORD(v110) = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576380, &qword_252F54D70);
        sub_252F2DA24();
        sub_252F533EC();
        OUTLINED_FUNCTION_5_2();
        v51 = v74;
        v52 = v73;
      }
    }

    result = v50(v51, v52);
    v68 = v102;
    v69 = BYTE1(v102);
    v70 = v93;
    *v93 = v101;
    *(v70 + 8) = v68;
    *(v70 + 9) = v69;
  }

  else
  {
    sub_252F5394C();
    OUTLINED_FUNCTION_3_3();
    sub_252F2DED4(v75, v76, MEMORY[0x277D63F50]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CompletionSnippetView(uint64_t a1)
{
  result = qword_27F576398;
  if (!qword_27F576398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F2BC84()
{
  OUTLINED_FUNCTION_15_0();
  result = sub_252F439D0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F2BCC4()
{
  OUTLINED_FUNCTION_15_0();
  result = sub_252F439E4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_252F2BD04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_252F2BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_252F2BE7C();
  return sub_252F538FC();
}

uint64_t sub_252F2BE08()
{
  v1 = type metadata accessor for CompletionSnippetView(0);
  OUTLINED_FUNCTION_10(v1);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  return sub_252F2BD4C(v2, v3, v4, v5);
}

uint64_t sub_252F2BE7C()
{
  v1 = v0;
  v2 = type metadata accessor for CompletionSnippetView(0);
  v3 = v2 - 8;
  v84 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v85 = v4;
  v86 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763F0, &qword_252F54ED8);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v60 - v6;
  v7 = sub_252F5308C();
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_252F537EC();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763F8, &qword_252F54EE0);
  MEMORY[0x28223BE20](v70);
  v68 = &v60 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576400, &qword_252F54EE8);
  MEMORY[0x28223BE20](v74);
  v77 = &v60 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576408, &qword_252F54EF0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576410, &qword_252F54EF8);
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x28223BE20](v13);
  v66 = &v60 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576418, &qword_252F54F00);
  MEMORY[0x28223BE20](v80);
  v78 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576420, &qword_252F54F08);
  v81 = *(v16 - 8);
  v82 = v16;
  MEMORY[0x28223BE20](v16);
  v79 = &v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576428, &qword_252F54F10);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v21 = (v1 + *(v3 + 40));
  v23 = v21[1];
  v88 = *v21;
  v22 = v88;
  v89 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
  sub_252F5375C();
  v24 = sub_252F3E1C0();
  v26 = v25;

  v88 = v22;
  v89 = v23;
  sub_252F5375C();
  v87 = v1;
  v27 = *(v1 + 24);
  if (v27)
  {
    v28 = *(v18 + 48);
    v62 = v28;
    v29 = v27;
    v30 = sub_252F5391C();

    sub_252F3DEA4(v20, &v20[v28], v30);

    v88 = v22;
    v89 = v23;
    sub_252F5375C();
    sub_252F3E55C(&v88);

    v61 = v88;
    sub_252F2DEB4(v26);
    v31 = sub_252F40088(v26);
    v72 = v26;
    sub_252F2DEC4(v26);
    v88 = v31;
    LOWORD(v89) = 256;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576430, &qword_252F54F18);
    v33 = sub_252F25B24(&qword_27F576438, &qword_27F576430, &qword_252F54F18, MEMORY[0x277CDF3A0]);
    v34 = v63;
    sub_252F5350C();

    v88 = v32;
    v89 = v33;
    swift_getOpaqueTypeConformance2();
    v35 = v66;
    v36 = v65;
    sub_252F534FC();
    (*(v64 + 8))(v34, v36);
    v88 = v22;
    v89 = v23;
    sub_252F5375C();
    sub_252F3E764();

    sub_252F5307C();

    v37 = v69;
    sub_252F537FC();
    sub_252F2DED4(&qword_27F576020, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    v38 = v68;
    v39 = v73;
    sub_252F534FC();
    (*(v71 + 8))(v37, v39);
    sub_252F2DEB4(v24);
    v40 = sub_252F40088(v24);
    sub_252F2DEC4(v24);
    *&v38[*(v70 + 36)] = v40;
    v41 = v20;
    v42 = v83;
    switch(v61)
    {
      case 1:
        v43 = v35;
        sub_252F533AC();
        break;
      case 2:
        v43 = v35;
        sub_252F5339C();
        break;
      case 3:
        v43 = v35;
        sub_252F533CC();
        break;
      default:
        v43 = v35;
        sub_252F533BC();
        break;
    }

    v44 = sub_252F533DC();
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v44);
    KeyPath = swift_getKeyPath();
    v46 = &v77[*(v74 + 36)];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576440, &qword_252F54F50);
    sub_252F2DFC4(v42, v46 + *(v47 + 28));
    *v46 = KeyPath;
    sub_252F2E034();
    v48 = sub_252F537DC();
    v50 = v49;
    v51 = v80;
    v52 = v78;
    v53 = &v78[*(v80 + 36)];
    sub_252F2E034();
    v54 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576448, &qword_252F54F58) + 36)];
    *v54 = v48;
    v54[1] = v50;
    (*(v75 + 32))(v52, v43, v76);
    sub_252F2DE5C();
    swift_allocObject();
    sub_252F2DE04();
    v55 = sub_252F2E258();
    v56 = v79;
    sub_252F5358C();

    sub_252F19B8C(v52);
    v88 = v51;
    v89 = v55;
    swift_getOpaqueTypeConformance2();
    v57 = v82;
    v58 = sub_252F534EC();
    sub_252F2DEC4(v24);
    sub_252F2DEC4(v72);
    (*(v81 + 8))(v56, v57);
    sub_252F2E3C4(v41, &qword_27F576428, &qword_252F54F10);
    return v58;
  }

  else
  {
    sub_252F5394C();
    sub_252F2DED4(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F2C92C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for CompletionSnippetView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
  sub_252F5375C();
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576340, &qword_252F54D60) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576360, &qword_252F54D68);
  sub_252F3DB60(v6 + *(v7 + 28));

  *v6 = KeyPath;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  return (*(*(v8 - 8) + 16))(a3, a1, v8);
}

uint64_t sub_252F2CA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_252F2CAC0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for IconConfiguration(0);
  v7 = MEMORY[0x28223BE20](v6);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v31 - v9;
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v10 = sub_252F5316C();
  v11 = __swift_project_value_buffer(v10, qword_27F57B800);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000041, 0x8000000252F58140);
  v12 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v12);

  v13._object = 0x8000000252F580A0;
  v13._countAndFlagsBits = 0xD000000000000075;
  v33 = v11;
  Logger.debug(output:test:caller:)(v35, 0, v13);

  type metadata accessor for SnippetDetailsModel(0);
  sub_252F2DED4(&qword_27F5762F0, type metadata accessor for SnippetDetailsModel, &protocol conformance descriptor for SnippetDetailsModel);
  sub_252F5320C();
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  if (v35._object)
  {
    countAndFlagsBits = v35._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v35._object)
  {
    object = v35._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_252F437B4(countAndFlagsBits, object);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_252F2E3C4(v5, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    v16 = v32;
    sub_252F2DE04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    v17 = v35._countAndFlagsBits;
    if (LOBYTE(v35._countAndFlagsBits) == 2)
    {
      sub_252F2E41C(v16, type metadata accessor for IconConfiguration);
    }

    else
    {
      v18 = v31;
      sub_252F2DE5C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      sub_252F530BC();
      if (LOBYTE(v35._countAndFlagsBits))
      {
        v19 = (v17 & 1) == 0;
      }

      else
      {
        v19 = 2;
      }

      LOBYTE(v35._countAndFlagsBits) = v19;
      sub_252F530BC();
      v20 = v34;
      sub_252F530BC();
      v21 = v34;
      type metadata accessor for CompletionStyleSettings(0);
      swift_allocObject();
      v22 = sub_252F3DAF8(v18, &v35, v20, (v21 & 1) == 0);
      v23 = type metadata accessor for CompletionSnippetView(0);
      v24 = (a2 + *(v23 + 32));
      v26 = *v24;
      v25 = v24[1];
      v35._countAndFlagsBits = v26;
      v35._object = v25;
      v34 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
      sub_252F5376C();
      v27 = a2 + *(v23 + 28);
      v28 = *(v27 + 1);
      LOBYTE(v35._countAndFlagsBits) = *v27;
      v35._object = v28;
      LOBYTE(v34) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
      sub_252F5376C();
      sub_252F2E41C(v16, type metadata accessor for IconConfiguration);
    }
  }

  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x8000000252F58190;
  v30._object = 0x8000000252F580A0;
  v30._countAndFlagsBits = 0xD000000000000075;
  Logger.debug(output:test:caller:)(v29, 0, v30);
}

uint64_t sub_252F2CFD0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_252F52FBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v9 = sub_252F5316C();
  v10 = __swift_project_value_buffer(v9, qword_27F57B800);
  v11._countAndFlagsBits = 0xD00000000000001CLL;
  v11._object = 0x8000000252F58080;
  v12._object = 0x8000000252F580A0;
  v12._countAndFlagsBits = 0xD000000000000075;
  v24[1] = v10;
  Logger.debug(output:test:caller:)(v11, 0, v12);
  type metadata accessor for SnippetDetailsModel(0);
  sub_252F2DED4(&qword_27F5762F0, type metadata accessor for SnippetDetailsModel, &protocol conformance descriptor for SnippetDetailsModel);
  sub_252F5320C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_252F2E3C4(v4, &qword_27F576050, &unk_252F54880);
  }

  (*(v6 + 32))(v8, v4, v5);
  v14 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v15 = a1[3];
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    sub_252F5391C();

    sub_252F53B3C();
    v18 = sub_252F5396C();

    [v16 setBundleId_];

    v19 = sub_252F52F8C();
    [v16 setPunchOutUri_];

    v20 = v17;
    v21 = v16;
    sub_252F5392C();

    strcpy(&v25, "Punchout to ");
    BYTE5(v25._object) = 0;
    HIWORD(v25._object) = -5120;
    sub_252F2DED4(&qword_27F5763D8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v22 = sub_252F53C9C();
    MEMORY[0x2530AF890](v22);

    MEMORY[0x2530AF890](46, 0xE100000000000000);
    v23._object = 0x8000000252F580A0;
    v23._countAndFlagsBits = 0xD000000000000075;
    Logger.debug(output:test:caller:)(v25, 0, v23);

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_252F5394C();
    sub_252F2DED4(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

void sub_252F2D484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v5 = sub_252F5316C();
  v6 = __swift_project_value_buffer(v5, qword_27F57B800);
  v7._countAndFlagsBits = 0xD000000000000035;
  v7._object = 0x8000000252F581B0;
  v27 = "Received tap on the snippet.";
  v28 = v6;
  v8._object = 0x8000000252F580A0;
  v8._countAndFlagsBits = 0xD000000000000075;
  Logger.debug(output:test:caller:)(v7, 0, v8);
  v9 = type metadata accessor for CompletionSnippetView(0);
  v10 = (a1 + *(v9 + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v30._countAndFlagsBits) = *v10;
  v30._object = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
  sub_252F5375C();
  if ((v29 & 1) == 0)
  {
    v13 = (a1 + *(v9 + 32));
    v15 = *v13;
    v14 = v13[1];
    v30._countAndFlagsBits = *v13;
    v30._object = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576338, &qword_252F54D58);
    sub_252F5375C();
    v16 = sub_252F3E804();

    if ((v16 & 1) == 0)
    {
      v26 = a1;
      v30._countAndFlagsBits = v15;
      v30._object = v14;
      sub_252F5375C();
      type metadata accessor for IconConfiguration(0);
      sub_252F25C84();

      v17 = type metadata accessor for DirectInvocationConfig(0);
      if (__swift_getEnumTagSinglePayload(v4, 1, v17) == 1)
      {
        sub_252F2E3C4(v4, &qword_27F576460, &qword_252F54F60);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
        v18 = sub_252F5302C();
        sub_252F2E41C(v4, type metadata accessor for DirectInvocationConfig);
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        sub_252F53B8C();
        MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F581F0);
        v19 = [v18 debugDescription];
        v20 = sub_252F5397C();
        v22 = v21;

        MEMORY[0x2530AF890](v20, v22);

        v23._object = (v27 | 0x8000000000000000);
        v23._countAndFlagsBits = 0xD000000000000075;
        Logger.debug(output:test:caller:)(v30, 0, v23);

        LOBYTE(v30._countAndFlagsBits) = v11;
        v30._object = v12;
        LOBYTE(v29) = 1;
        sub_252F5376C();
        v24 = *(v26 + 24);
        if (v24)
        {
          v25 = v24;
          sub_252F5393C();
        }

        else
        {
          sub_252F5394C();
          sub_252F2DED4(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
          sub_252F5325C();
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_252F2D858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CompletionSnippetView(0);
  OUTLINED_FUNCTION_10(v4);

  return sub_252F2C92C(a1, a2);
}

unint64_t sub_252F2D8D4()
{
  result = qword_27F576350;
  if (!qword_27F576350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576340, &qword_252F54D60);
    sub_252F25B24(&qword_27F576348, &qword_27F576308, &qword_252F54CE0, MEMORY[0x277D63B90]);
    sub_252F25B24(&qword_27F576358, &qword_27F576360, &qword_252F54D68, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576350);
  }

  return result;
}

void sub_252F2D9B8(uint64_t a1)
{
  v3 = type metadata accessor for CompletionSnippetView(0);
  OUTLINED_FUNCTION_10(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  sub_252F2CAC0(a1, v5);
}

unint64_t sub_252F2DA24()
{
  result = qword_27F576388;
  if (!qword_27F576388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576380, &qword_252F54D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576388);
  }

  return result;
}

void sub_252F2DAFC(uint64_t a1)
{
  sub_252F2DC28(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F2DD0C(319, &qword_27F5763B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_252F2DCBC();
        if (v4 <= 0x3F)
        {
          sub_252F2DD0C(319, &qword_27F5763C0, type metadata accessor for CompletionStyleSettings, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_252F2DC28(uint64_t a1)
{
  if (!qword_27F5763A8)
  {
    type metadata accessor for SnippetDetailsModel(255);
    sub_252F2DED4(&qword_27F5762F0, type metadata accessor for SnippetDetailsModel, &protocol conformance descriptor for SnippetDetailsModel);
    v1 = sub_252F5322C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5763A8);
    }
  }
}

void sub_252F2DCBC()
{
  if (!qword_27F5763B8)
  {
    v0 = sub_252F5378C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5763B8);
    }
  }
}

void sub_252F2DD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_252F2DD70()
{
  result = qword_27F5763C8;
  if (!qword_27F5763C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5763D0, &qword_252F54DF8);
    sub_252F2DA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5763C8);
  }

  return result;
}

uint64_t sub_252F2DE04()
{
  OUTLINED_FUNCTION_2_1();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_3_1();
  v3(v2);
  return v0;
}

uint64_t sub_252F2DE5C()
{
  OUTLINED_FUNCTION_2_1();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_3_1();
  v3(v2);
  return v0;
}

unint64_t sub_252F2DEB4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_252F2DEC4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_252F2DED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252F2DF1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763F0, &qword_252F54ED8);
  MEMORY[0x28223BE20](v0 - 8);
  sub_252F25C84();
  return sub_252F532FC();
}

uint64_t sub_252F2DFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763F0, &qword_252F54ED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F2E034()
{
  OUTLINED_FUNCTION_2_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1();
  v3 = OUTLINED_FUNCTION_3_1();
  v4(v3);
  return v0;
}

uint64_t objectdestroy_6Tm()
{
  type metadata accessor for CompletionSnippetView(0);
  OUTLINED_FUNCTION_12_1();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v3 + 16) & ~v3;
  sub_252F2BE00(*(v1 + v6), *(v1 + v6 + 8));

  v7 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_252F531EC();
    OUTLINED_FUNCTION_1();
    (*(v8 + 8))(v1 + v6 + v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v6 + v5, v3 | 7);
}

uint64_t sub_252F2E1E8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for CompletionSnippetView(0);
  OUTLINED_FUNCTION_10(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_252F2E258()
{
  result = qword_27F576450;
  if (!qword_27F576450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576418, &qword_252F54F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576408, &qword_252F54EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576430, &qword_252F54F18);
    sub_252F25B24(&qword_27F576438, &qword_27F576430, &qword_252F54F18, MEMORY[0x277CDF3A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F576458, &qword_27F576448, &qword_252F54F58, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576450);
  }

  return result;
}

uint64_t sub_252F2E3C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_252F2E41C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_0_2()
{
  *(v5 - 184) = *(v5 - 216);
  *(v5 - 176) = v3;
  *(v5 - 168) = v1;
  *(v5 - 160) = v0;
  *(v5 - 152) = v2;
  *(v5 - 144) = v4;
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{

  return sub_252F533EC();
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_252F533EC();
}

void OUTLINED_FUNCTION_9_2()
{
  v1 = *(v0 - 176);
  *(v0 - 120) = *(v0 - 184);
  *(v0 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return sub_252F5321C();
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252F2E5DC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = type metadata accessor for SnippetDetailsModel(0);
  OUTLINED_FUNCTION_6_2();
  v8 = sub_252F307B0(v6, v7, &protocol conformance descriptor for SnippetDetailsModel);

  return a1(v2, v3, v4, v5, v8);
}

uint64_t CompletionSnippetViewTVOS.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v2 = type metadata accessor for CompletionSnippetViewTVOS(0);
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v58 = v4;
  v68 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576468, &qword_252F54F70);
  OUTLINED_FUNCTION_16();
  v61 = v7;
  v62 = v8;
  MEMORY[0x28223BE20](v7);
  v59 = &v47 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576470, &qword_252F54F78);
  OUTLINED_FUNCTION_16();
  v63 = v10;
  v64 = v11;
  MEMORY[0x28223BE20](v10);
  v60 = &v47 - v12;
  v13 = type metadata accessor for IconConfiguration(0);
  v14 = OUTLINED_FUNCTION_4_3(v13);
  v56 = v15;
  v55 = *(v16 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v47 - v19;
  v67 = v1;
  type metadata accessor for SnippetDetailsModel(0);
  OUTLINED_FUNCTION_6_2();
  sub_252F307B0(v20, v21, &protocol conformance descriptor for SnippetDetailsModel);
  OUTLINED_FUNCTION_2_3();
  sub_252F5321C();
  swift_getKeyPath();
  sub_252F5324C();

  v77 = v69;
  v78 = v70;
  v79 = v71;
  v80 = v72;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576320, &qword_252F54D20);
  MEMORY[0x2530AF650](&v75);
  v53 = v75;
  v52 = v76;

  OUTLINED_FUNCTION_2_3();
  sub_252F5321C();
  swift_getKeyPath();
  sub_252F5324C();

  v77 = v69;
  v78 = v70;
  v79 = v71;
  v80 = v72;
  MEMORY[0x2530AF650](&v75, v22);
  v51 = v75;
  v50 = v76;

  OUTLINED_FUNCTION_2_3();
  sub_252F5320C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();

  OUTLINED_FUNCTION_2_3();
  sub_252F5320C();
  v23 = sub_252F43A78();

  OUTLINED_FUNCTION_2_3();
  sub_252F5320C();
  v24 = sub_252F43A64();

  OUTLINED_FUNCTION_2_3();
  sub_252F5320C();
  v48 = sub_252F43A8C();

  v47 = v23 & v24;
  OUTLINED_FUNCTION_5_3();
  sub_252F304E0();
  v49 = type metadata accessor for CompletionSnippetViewTVOS;
  sub_252F304E0();
  v25 = ((*(v56 + 80) + 16) & ~*(v56 + 80)) + v55;
  v26 = ((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v58 + 80);
  v58 = v27 + 16;
  v28 = ((v27 + 16 + v26) & ~v27) + v68;
  v56 = v27 | 7;
  v29 = swift_allocObject();
  sub_252F30BC4();
  *(v29 + v25) = (v47 & 1) == 0;
  v30 = v29 + (v25 & 0xFFFFFFFFFFFFFFF8);
  v31 = v52;
  *(v30 + 8) = v53;
  *(v30 + 16) = v31;
  v32 = (v29 + v26);
  v33 = v50;
  *v32 = v51;
  v32[1] = v33;
  sub_252F30BC4();
  *(v29 + v28) = v48 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576490, &qword_252F55040);
  v34 = sub_252F5390C();
  v35 = sub_252F307B0(&qword_27F576330, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
  v69 = v34;
  v70 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v59;
  sub_252F5381C();
  v37 = type metadata accessor for CompletionSnippetModel(0);
  sub_252F304E0();
  swift_allocObject();
  sub_252F30BC4();
  v38 = sub_252F25B24(&qword_27F576498, &qword_27F576468, &qword_252F54F70, MEMORY[0x277D63B90]);
  v39 = sub_252F307B0(&qword_27F576368, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  v40 = sub_252F307B0(&qword_27F576370, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  v46 = sub_252F307B0(&qword_27F576378, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  v42 = v60;
  v41 = v61;
  sub_252F5354C();

  (*(v62 + 8))(v36, v41);
  v69 = v41;
  v70 = v37;
  v71 = v38;
  v72 = v39;
  v73 = v40;
  v74 = v46;
  swift_getOpaqueTypeConformance2();
  v43 = v63;
  v44 = sub_252F534EC();
  (*(v64 + 8))(v42, v43);
  result = sub_252F30C1C(v66, type metadata accessor for IconConfiguration);
  *v65 = v44;
  return result;
}

uint64_t type metadata accessor for CompletionSnippetViewTVOS(uint64_t a1)
{
  result = qword_27F5764A0;
  if (!qword_27F5764A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F2EF38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v87 = a8;
  v82 = a7;
  v78 = a6;
  v77 = a5;
  v76 = a4;
  v75 = a3;
  LODWORD(v92) = a2;
  v90 = a9;
  v10 = type metadata accessor for IconConfiguration(0);
  v83 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v84 = v11;
  v85 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CompletionSnippetViewTVOS(0);
  v80 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = v13;
  v81 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_252F5390C();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5760E0, &qword_252F547A0);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = v68 - v16;
  v69 = sub_252F52FFC();
  v17 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v19 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764B0, &qword_252F550C8);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v68 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764B8, &qword_252F550D0);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v25 = v68 - v24;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764C0, &qword_252F550D8);
  MEMORY[0x28223BE20](v72);
  v71 = v68 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  v68[4] = v105;
  v68[3] = v106;
  v68[2] = v10;
  v27 = *(v10 + 20);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  v91 = a1;
  v68[1] = v27;
  v68[0] = v28;
  sub_252F530BC();

  v105 = sub_252F5367C();
  LOWORD(v106) = 256;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764C8, &qword_252F550E0);
  v30 = sub_252F25B24(&qword_27F5764D0, &qword_27F5764C8, &qword_252F550E0, MEMORY[0x277CDF3A0]);
  sub_252F5350C();
  v31 = v25;

  v32 = v69;
  (*(v17 + 104))(v19, *MEMORY[0x277D62B28], v69);
  v105 = v29;
  v106 = v30;
  swift_getOpaqueTypeConformance2();
  sub_252F534FC();
  (*(v17 + 8))(v19, v32);
  (*(v21 + 8))(v23, v20);
  v33 = sub_252F5372C();
  v34 = sub_252F5346C();
  v35 = v70;
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v34);
  v36 = sub_252F5347C();
  sub_252F25CDC(v35, &qword_27F5760E0, &qword_252F547A0);
  KeyPath = swift_getKeyPath();
  if (v92)
  {
    v105 = sub_252F5365C();
    v106 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764F8, &unk_252F55120);
    sub_252F25B24(&qword_27F576500, &qword_27F5764F8, &unk_252F55120, MEMORY[0x277CE0848]);
  }

  else
  {
    sub_252F530BC();
    v38 = v105;
    v39 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    sub_252F530BC();
    v40 = static ColorUtils.getColor(colorString:colorDict:)(v38, v39, v105);

    v105 = v40;
  }

  v41 = sub_252F5323C();
  v42 = sub_252F537DC();
  v44 = v43;
  v45 = v71;
  (*(v73 + 32))(v71, v31, v74);
  v46 = (v45 + *(v72 + 36));
  *v46 = v33;
  v46[1] = KeyPath;
  v46[2] = v36;
  v46[3] = v41;
  v46[4] = v42;
  v46[5] = v44;
  sub_252F308A8();
  v92 = sub_252F534EC();
  sub_252F1A2E8(v45);
  v105 = v75;
  v106 = v76;
  sub_252F30A14();

  v47 = sub_252F534DC();
  v49 = v48;
  LODWORD(v73) = v50;
  v52 = v51;
  v105 = v77;
  v106 = v78;

  v53 = sub_252F534DC();
  v55 = v54;
  LOBYTE(v41) = v56;
  v58 = v57;
  v59 = MEMORY[0x277D638E8];
  v107 = MEMORY[0x277CE0BD8];
  v108 = MEMORY[0x277D638E8];
  v60 = swift_allocObject();
  v105 = v60;
  *(v60 + 16) = v47;
  *(v60 + 24) = v49;
  v75 = v47;
  v61 = v49;
  v76 = v49;
  LODWORD(v49) = v73 & 1;
  *(v60 + 32) = v49;
  LODWORD(v78) = v49;
  *(v60 + 40) = v52;
  v103 = MEMORY[0x277CE0BD8];
  v104 = v59;
  v62 = swift_allocObject();
  v101 = 0;
  v102 = v62;
  *(v62 + 16) = v53;
  *(v62 + 24) = v55;
  v74 = v55;
  *(v62 + 32) = v41 & 1;
  v77 = v58;
  *(v62 + 40) = v58;
  v99 = 0u;
  v100 = 0u;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v95 = MEMORY[0x277D63A60];
  v94 = MEMORY[0x277CE11C8];
  v93 = v92;
  sub_252F30A78(v47, v61, v49);

  sub_252F30A78(v53, v55, v41 & 1);

  v63 = v86;
  sub_252F538FC();
  sub_252F304E0();
  sub_252F304E0();
  v64 = ((*(v80 + 80) + 16) & ~*(v80 + 80)) + v79;
  v65 = swift_allocObject();
  sub_252F30BC4();
  *(v65 + v64) = v87 & 1;
  sub_252F30BC4();
  sub_252F307B0(&qword_27F576330, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
  v66 = v89;
  sub_252F5351C();

  sub_252F30A68(v53, v74, v41 & 1);

  sub_252F30A68(v75, v76, v78);

  return (*(v88 + 8))(v63, v66);
}

void *sub_252F2FAE8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for DirectInvocationConfig(0);
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v11 = sub_252F5316C();
  __swift_project_value_buffer(v11, qword_27F57B800);
  v12._countAndFlagsBits = 0xD000000000000035;
  v12._object = 0x8000000252F581B0;
  v13._object = 0x8000000252F58230;
  v13._countAndFlagsBits = 0xD000000000000079;
  Logger.debug(output:test:caller:)(v12, 0, v13);
  v14 = *(type metadata accessor for CompletionSnippetViewTVOS(0) + 28);
  v32 = a1;
  v15 = (a1 + v14);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v34._countAndFlagsBits) = *v15;
  v34._object = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
  result = sub_252F5375C();
  if ((v33 & 1) == 0 && (a2 & 1) == 0)
  {
    v19 = type metadata accessor for IconConfiguration(0);
    sub_252F30B54(a3 + *(v19 + 56), v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      return sub_252F25CDC(v8, &qword_27F576460, &qword_252F54F60);
    }

    else
    {
      v20 = v31;
      sub_252F30BC4();
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      sub_252F53B8C();

      v34._countAndFlagsBits = 0xD000000000000029;
      v34._object = 0x8000000252F582B0;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      v21 = sub_252F5302C();
      v22 = [v21 debugDescription];

      v23 = sub_252F5397C();
      v25 = v24;

      MEMORY[0x2530AF890](v23, v25);

      v26._object = 0x8000000252F58230;
      v26._countAndFlagsBits = 0xD000000000000079;
      Logger.debug(output:test:caller:)(v34, 0, v26);

      LOBYTE(v34._countAndFlagsBits) = v16;
      v34._object = v17;
      v33 = 1;
      sub_252F5376C();
      v27 = *(v32 + 24);
      if (v27)
      {
        v28 = v27;
        v29 = sub_252F5302C();
        sub_252F5393C();

        return sub_252F30C1C(v20, type metadata accessor for DirectInvocationConfig);
      }

      else
      {
        sub_252F5394C();
        sub_252F307B0(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
        result = sub_252F5325C();
        __break(1u);
      }
    }
  }

  return result;
}

void sub_252F2FEB8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = v25 - v4;
  v30 = type metadata accessor for IconConfiguration(0);
  v5 = MEMORY[0x28223BE20](v30);
  v27 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v28 = v25 - v7;
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v8 = sub_252F5316C();
  v9 = __swift_project_value_buffer(v8, qword_27F57B800);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000041, 0x8000000252F58140);
  v10 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v10);

  v31 = "on for the toggle. ";
  v11._object = 0x8000000252F58230;
  v11._countAndFlagsBits = 0xD000000000000079;
  v33 = v9;
  Logger.debug(output:test:caller:)(v36, 0, v11);

  v12 = *a2;
  v34 = a2;
  v13 = *(a2 + 16);
  type metadata accessor for SnippetDetailsModel(0);
  sub_252F307B0(&qword_27F5762F0, type metadata accessor for SnippetDetailsModel, &protocol conformance descriptor for SnippetDetailsModel);
  sub_252F5320C();
  v14 = type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  sub_252F43854(LOBYTE(v36._countAndFlagsBits));

  sub_252F5320C();
  sub_252F530BC();
  sub_252F43868(LOBYTE(v36._countAndFlagsBits));

  sub_252F5320C();
  v29 = *(v14 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  sub_252F43840((LOBYTE(v36._countAndFlagsBits) == 2) | (v36._countAndFlagsBits & 1));

  sub_252F5320C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  if (v36._object)
  {
    countAndFlagsBits = v36._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v36._object)
  {
    object = v36._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_252F437B4(countAndFlagsBits, object);

  v25[1] = v12;
  v26 = v13;
  sub_252F5320C();
  sub_252F530BC();
  sub_252F43840(v36._countAndFlagsBits & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  v17 = v32;
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v17, 1, v30) == 1)
  {
    sub_252F25CDC(v17, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    v18 = v28;
    sub_252F30BC4();
    sub_252F5320C();
    v19 = v27;
    sub_252F304E0();
    sub_252F436E8(v19);

    sub_252F30C1C(v18, type metadata accessor for IconConfiguration);
  }

  v20 = v34 + *(type metadata accessor for CompletionSnippetViewTVOS(0) + 28);
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v36._countAndFlagsBits) = v21;
  v36._object = v22;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
  sub_252F5376C();
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x8000000252F58190;
  v24._object = (v31 | 0x8000000000000000);
  v24._countAndFlagsBits = 0xD000000000000079;
  Logger.debug(output:test:caller:)(v23, 0, v24);
}

uint64_t sub_252F30458()
{
  v0 = OUTLINED_FUNCTION_7_3();
  v1 = type metadata accessor for IconConfiguration(v0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_3();
  sub_252F304E0();
  return sub_252F436E8(v3);
}

uint64_t sub_252F304E0()
{
  v2 = OUTLINED_FUNCTION_7_3();
  v3(v2);
  OUTLINED_FUNCTION_1();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_252F30538@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for CompletionSnippetViewTVOS(0);
  OUTLINED_FUNCTION_4_3(v9);
  v12 = *(v1 + v7);
  v13 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 16);
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = v1 + ((v8 + *(v10 + 80) + 16) & ~*(v10 + 80));
  v18 = *(v17 + *(v11 + 64));

  return sub_252F2EF38(v1 + v5, v12, v13, v14, v15, v16, v17, v18, a1);
}

void sub_252F30648(uint64_t a1)
{
  v3 = *(type metadata accessor for CompletionSnippetViewTVOS(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_252F2FEB8(a1, v4);
}

void sub_252F306FC(uint64_t a1)
{
  sub_252F2DC28(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F307F8(319);
      if (v3 <= 0x3F)
      {
        sub_252F2DCBC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_252F307B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_252F307F8(uint64_t a1)
{
  if (!qword_27F5763B0)
  {
    sub_252F531EC();
    v1 = sub_252F531FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5763B0);
    }
  }
}

uint64_t sub_252F30850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F5330C();
  *a1 = result;
  return result;
}

unint64_t sub_252F308A8()
{
  result = qword_27F5764D8;
  if (!qword_27F5764D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5764C0, &qword_252F550D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5764B0, &qword_252F550C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5764C8, &qword_252F550E0);
    sub_252F25B24(&qword_27F5764D0, &qword_27F5764C8, &qword_252F550E0, MEMORY[0x277CDF3A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F5764E0, &qword_27F5764E8, &qword_252F55118, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5764D8);
  }

  return result;
}

unint64_t sub_252F30A14()
{
  result = qword_27F5764F0;
  if (!qword_27F5764F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5764F0);
  }

  return result;
}

uint64_t sub_252F30A68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_252F30A78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_252F30A88()
{
  v1 = type metadata accessor for CompletionSnippetViewTVOS(0);
  OUTLINED_FUNCTION_4_3(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = *(type metadata accessor for IconConfiguration(0) - 8);
  v7 = *(v0 + v5);
  v8 = v0 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_252F2FAE8(v0 + v3, v7, v8);
}

uint64_t sub_252F30B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F30BC4()
{
  v2 = OUTLINED_FUNCTION_7_3();
  v3(v2);
  OUTLINED_FUNCTION_1();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_252F30C1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ConfirmationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for ConfirmationView(0) + 20));
  sub_252F5394C();
  sub_252F31C04(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v4 = sub_252F5326C();
  v4[1] = v5;
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v6 = sub_252F5316C();
  __swift_project_value_buffer(v6, qword_27F57B800);
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000031, 0x8000000252F57B10);
  v7 = ConfirmationSnippetModel.description.getter();
  MEMORY[0x2530AF890](v7);

  v8._countAndFlagsBits = 0;
  v9._countAndFlagsBits = 0xD000000000000069;
  v9._object = 0x8000000252F57B50;
  v8._object = 0xE000000000000000;
  Logger.debug(output:test:caller:)(v8, 0, v9);

  sub_252F31A14(a1, a2, type metadata accessor for ConfirmationSnippetModel);
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v10 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();

  return sub_252F299E8(a1);
}

uint64_t type metadata accessor for ConfirmationView(uint64_t a1)
{
  result = qword_27F576528;
  if (!qword_27F576528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ConfirmationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_252F31A14(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_252F31A74(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576508, &qword_252F55148);
  sub_252F31B48();
  sub_252F5381C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576520, &qword_252F55180);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = 1;
  return result;
}

uint64_t sub_252F310CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfirmationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_252F3123C();
  v12[8] = MEMORY[0x277CE11C8];
  v12[9] = MEMORY[0x277D63A60];
  v12[5] = v7;
  v12[3] = MEMORY[0x277CE11C8];
  v12[4] = MEMORY[0x277D63A60];
  v12[0] = sub_252F3148C();
  sub_252F5384C();
  sub_252F31A14(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_252F31A74(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576508, &qword_252F55148);
  v11 = (a2 + *(result + 36));
  *v11 = sub_252F31E10;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t sub_252F3123C()
{
  v1 = type metadata accessor for ConfirmationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F31A14(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_252F31A74(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_252F30A14();
  sub_252F5379C();
  sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60, MEMORY[0x277CDF028]);
  v10 = sub_252F534EC();
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_252F3148C()
{
  v1 = type metadata accessor for ConfirmationView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  type metadata accessor for ConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F31A14(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_252F31A74(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_252F30A14();
  sub_252F5379C();
  sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60, MEMORY[0x277CDF028]);
  v10 = sub_252F534EC();
  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_252F316DC(uint64_t a1)
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for ConfirmationView(0);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F582E0;
  v3._countAndFlagsBits = 0xD000000000000069;
  v3._object = 0x8000000252F57B50;
  v2._countAndFlagsBits = 0xD000000000000029;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

void sub_252F31820(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ConfirmationView(0) + 20));
  if (v1)
  {
    type metadata accessor for ConfirmationSnippetModel(0);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v3 = sub_252F5302C();
    sub_252F5393C();
  }

  else
  {
    sub_252F5394C();
    sub_252F31C04(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_252F5325C();
    __break(1u);
  }
}

void sub_252F31918(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ConfirmationView(0) + 20));
  if (v1)
  {
    type metadata accessor for ConfirmationSnippetModel(0);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v3 = sub_252F5302C();
    sub_252F5393C();
  }

  else
  {
    sub_252F5394C();
    sub_252F31C04(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_252F5325C();
    __break(1u);
  }
}

uint64_t sub_252F31A14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F31A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F31AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F310CC(v4, a1);
}

unint64_t sub_252F31B48()
{
  result = qword_27F576510;
  if (!qword_27F576510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576508, &qword_252F55148);
    sub_252F31C04(&qword_27F576518, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576510);
  }

  return result;
}

uint64_t sub_252F31C04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_252F31C90(uint64_t a1)
{
  type metadata accessor for ConfirmationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F5314C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252F31D2C()
{
  result = qword_27F576538;
  if (!qword_27F576538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576520, &qword_252F55180);
    sub_252F25B24(&qword_27F576540, &qword_27F576548, &qword_252F551F8, MEMORY[0x277D63B90]);
    sub_252F25B24(&qword_27F576550, &qword_27F576558, &unk_252F55200, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576538);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v34 = type metadata accessor for ConfirmationView(0);
  v1 = *(*(v34 - 8) + 80);
  v35 = *(*(v34 - 8) + 64);
  v36 = (v1 + 16) & ~v1;
  v33 = v0;
  v2 = v0 + v36;

  v3 = type metadata accessor for ConfirmationSnippetModel(0);
  v4 = v3[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v7(v2 + v3[8], v5);
  v8 = v3[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_1();
  v11 = *(v10 + 8);
  v11(v2 + v8, v9);
  v11(v2 + v3[10], v9);
  v12 = v2 + v3[11];
  v13 = type metadata accessor for IconConfiguration(0);
  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    v7(v12, v5);
    v14 = v13[5];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1();
    v32 = *(v15 + 8);
    v32(v12 + v14);
    v16 = v13[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    OUTLINED_FUNCTION_1();
    (*(v17 + 8))(v12 + v16);
    v18 = v13[7];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
    OUTLINED_FUNCTION_1();
    v21 = *(v20 + 8);
    v21(v12 + v18, v19);
    v21(v12 + v13[8], v19);
    v22 = v13[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
    OUTLINED_FUNCTION_1();
    (*(v23 + 8))(v12 + v22);
    (v32)(v12 + v13[10], v31);
    v24 = v13[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    OUTLINED_FUNCTION_1();
    (*(v25 + 8))(v12 + v24);
    (v32)(v12 + v13[12], v31);
    (v32)(v12 + v13[13], v31);
    v26 = v13[14];
    v27 = type metadata accessor for DirectInvocationConfig(0);
    if (!__swift_getEnumTagSinglePayload(v12 + v26, 1, v27))
    {
      v11(v12 + v26, v9);
    }
  }

  v28 = *(v34 + 24);
  sub_252F5314C();
  OUTLINED_FUNCTION_1();
  (*(v29 + 8))(v2 + v28);

  return MEMORY[0x2821FE8E8](v33, v36 + v35, v1 | 7);
}

uint64_t sub_252F32280(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConfirmationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t TemperatureView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for TemperatureView(0) + 20));
  sub_252F5394C();
  sub_252F33D18(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v4 = sub_252F5326C();
  v4[1] = v5;
  sub_252F336B0(a1, a2, type metadata accessor for TemperatureSnippetModel);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v6 = sub_252F5316C();
  __swift_project_value_buffer(v6, qword_27F57B800);
  sub_252F53B8C();

  v7 = TemperatureSnippetModel.description.getter();
  MEMORY[0x2530AF890](v7);

  v8._countAndFlagsBits = 0xD000000000000030;
  v9._countAndFlagsBits = 0xD000000000000068;
  v9._object = 0x8000000252F58350;
  v8._object = 0x8000000252F58310;
  Logger.debug(output:test:caller:)(v8, 0, v9);

  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v10 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();

  return sub_252F270A4(a1);
}

uint64_t type metadata accessor for TemperatureView(uint64_t a1)
{
  result = qword_27F576588;
  if (!qword_27F576588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *TemperatureView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576300, &unk_252F55210);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v3);
  v5 = (&v41 - v4);
  v6 = type metadata accessor for TemperatureView(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  OUTLINED_FUNCTION_16();
  v45 = v9;
  v46 = v8;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576570, &qword_252F55220);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v13);
  v47 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576578, &qword_252F55228);
  OUTLINED_FUNCTION_16();
  v49 = v16;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v17);
  v48 = &v41 - v18;
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  result = sub_252F530BC();
  v20 = v52;
  if (v52)
  {
    v42 = v15;
    v43 = a1;
    v21 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    v22 = v51;
    if (v51 == 2)
    {

      v23 = 0;
    }

    else
    {
      v41 = type metadata accessor for TemperatureView;
      sub_252F336B0(v1, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TemperatureView);
      v24 = *(v44 + 80);
      v44 = v1;
      v25 = swift_allocObject();
      *(v25 + 16) = v22 & 1;
      *(v25 + 24) = v21;
      *(v25 + 32) = v20;
      sub_252F33710(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + ((v24 + 40) & ~v24));
      sub_252F5390C();
      sub_252F33D18(&qword_27F576330, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
      sub_252F5381C();
      *v5 = sub_252F5369C();
      v26 = *MEMORY[0x277D63BB0];
      v27 = sub_252F5383C();
      OUTLINED_FUNCTION_1();
      (*(v28 + 104))(v5, v26, v27);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576340, &qword_252F54D60);
      sub_252F25B24(&qword_27F576348, &qword_27F576308, &qword_252F54CE0, MEMORY[0x277D63B90]);
      sub_252F2D8D4();
      v29 = v46;
      v30 = v47;
      sub_252F5353C();
      sub_252F25CDC(v5, &qword_27F576300, &unk_252F55210);
      (*(v45 + 8))(v12, v29);
      v31 = v44;
      v32 = v41;
      sub_252F336B0(v44, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
      v33 = (v24 + 16) & ~v24;
      v34 = swift_allocObject();
      sub_252F33710(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
      v35 = v50;
      v36 = (v30 + *(v50 + 36));
      *v36 = sub_252F337EC;
      v36[1] = v34;
      v36[2] = 0;
      v36[3] = 0;
      sub_252F336B0(v31, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
      v37 = swift_allocObject();
      sub_252F33710(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v33);
      v38 = sub_252F33A90();
      v39 = v48;
      sub_252F5351C();

      sub_252F1AB88(v30);
      v51 = v35;
      v52 = v38;
      swift_getOpaqueTypeConformance2();
      v40 = v42;
      v23 = sub_252F534EC();
      result = (*(v49 + 8))(v39, v40);
    }

    a1 = v43;
  }

  else
  {
    v23 = 0;
  }

  *a1 = v23;
  return result;
}

void *sub_252F32B70(char a1)
{
  v6 = sub_252F5336C();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  if (a1)
  {
    sub_252F536BC();
  }

  else
  {
    sub_252F5360C();
  }

  sub_252F30A14();

  v8 = sub_252F534DC();
  v10 = v9;
  v12 = v11;
  sub_252F5348C();
  v13 = sub_252F534BC();
  v15 = v14;
  v17 = v16;

  sub_252F30A68(v8, v10, v12 & 1);

  v18 = sub_252F5349C();
  v20 = v19;
  v22 = v21;
  sub_252F30A68(v13, v15, v17 & 1);

  v23 = sub_252F534AC();
  v25 = v24;
  v27 = v26;
  sub_252F30A68(v18, v20, v22 & 1);

  sub_252F534EC();
  sub_252F30A68(v23, v25, v27 & 1);

  sub_252F5335C();
  sub_252F5334C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F5333C();

  sub_252F5334C();
  sub_252F5337C();
  v28 = sub_252F534CC();
  v30 = v29;
  v32 = v31;
  v42 = v33;
  sub_252F5335C();
  sub_252F5334C();
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  result = sub_252F530BC();
  if (v25)
  {
    sub_252F5333C();

    sub_252F5334C();
    sub_252F5337C();
    v35 = sub_252F534CC();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v44 = swift_allocObject();
    *(v44 + 16) = v28;
    *(v44 + 24) = v30;
    *(v44 + 32) = v32 & 1;
    *(v44 + 40) = v42;
    v43 = swift_allocObject();
    *(v43 + 16) = v35;
    *(v43 + 24) = v37;
    *(v43 + 32) = v39 & 1;
    *(v43 + 40) = v41;
    sub_252F538FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_252F33018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576340, &qword_252F54D60) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576360, &qword_252F54D68) + 28);
  v7 = *MEMORY[0x277CDF3D0];
  v8 = sub_252F531EC();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_252F33130(uint64_t a1)
{
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F583E0;
  v3._countAndFlagsBits = 0xD000000000000068;
  v3._object = 0x8000000252F58350;
  v2._countAndFlagsBits = 0xD000000000000028;
  Logger.debug(output:test:caller:)(v2, 0, v3);
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for TemperatureView(0);
  sub_252F53ACC();
  return sub_252F5311C();
}

uint64_t sub_252F33274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_252F52FBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v9 = sub_252F5316C();
  __swift_project_value_buffer(v9, qword_27F57B800);
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v10._object = 0x8000000252F58080;
  v11._object = 0x8000000252F58350;
  v11._countAndFlagsBits = 0xD000000000000068;
  Logger.debug(output:test:caller:)(v10, 0, v11);
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_252F25CDC(v4, &qword_27F576050, &unk_252F54880);
  }

  (*(v6 + 32))(v8, v4, v5);
  v13 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v14 = *(a1 + *(type metadata accessor for TemperatureView(0) + 20));
  if (v14)
  {
    v15 = v14;
    sub_252F5391C();

    sub_252F53B3C();
    v16 = sub_252F5396C();

    [v13 setBundleId_];

    v17 = sub_252F52F8C();
    [v13 setPunchOutUri_];

    v18 = v15;
    v19 = v13;
    sub_252F5392C();

    strcpy(&v22, "Punchout to ");
    BYTE5(v22._object) = 0;
    HIWORD(v22._object) = -5120;
    sub_252F33D18(&qword_27F5763D8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = sub_252F53C9C();
    MEMORY[0x2530AF890](v20);

    MEMORY[0x2530AF890](46, 0xE100000000000000);
    v21._object = 0x8000000252F58350;
    v21._countAndFlagsBits = 0xD000000000000068;
    Logger.debug(output:test:caller:)(v22, 0, v21);

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_252F5394C();
    sub_252F33D18(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F336B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F33710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_252F33774()
{
  type metadata accessor for TemperatureView(0);
  v2 = *(v1 + 16);

  return sub_252F32B70(v2);
}

uint64_t objectdestroy_2Tm()
{
  type metadata accessor for TemperatureView(0);
  OUTLINED_FUNCTION_3_5();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(v3);
  v5 = type metadata accessor for TemperatureSnippetModel(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1();
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v9(v3 + v5[6], v7);
  v10 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_0_1();
  (*(v11 + 8))(v3 + v10);
  v12 = v5[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_0_1();
  (*(v13 + 8))(v3 + v12);

  v14 = *(v0 + 32);
  sub_252F5314C();
  OUTLINED_FUNCTION_0_1();
  (*(v15 + 8))(v3 + v14);
  v16 = OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_252F33A1C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TemperatureView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_252F33A90()
{
  result = qword_27F576580;
  if (!qword_27F576580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576570, &qword_252F55220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576308, &qword_252F54CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576340, &qword_252F54D60);
    sub_252F25B24(&qword_27F576348, &qword_27F576308, &qword_252F54CE0, MEMORY[0x277D63B90]);
    sub_252F2D8D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576580);
  }

  return result;
}

void sub_252F33C00(uint64_t a1)
{
  type metadata accessor for TemperatureSnippetModel(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F5314C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252F33C9C()
{
  result = qword_27F576598;
  if (!qword_27F576598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5765A0, "$U");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576598);
  }

  return result;
}

uint64_t sub_252F33D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall Logger.debug(output:test:caller:)(Swift::String output, Swift::Bool test, Swift::String caller)
{
  countAndFlagsBits = caller._countAndFlagsBits;
  object = output._object;
  v20 = output._countAndFlagsBits;
  v23 = 46;
  v24 = 0xE100000000000000;
  v22 = &v23;
  v5 = sub_252F34D68(sub_252F34E98, v21, caller._countAndFlagsBits, caller._object);
  if (v6)
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_2();
    v5 = sub_252F539DC();
  }

  v7 = v5;
  v23 = 47;
  v24 = 0xE100000000000000;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  sub_252F34D68(v8, v9, v10, v11);
  v13 = v12;

  v14 = sub_252F5315C();
  v15 = sub_252F53AAC();

  v16 = os_log_type_enabled(v14, v15);
  if (v13)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v17 = 136446466;
LABEL_8:
      OUTLINED_FUNCTION_1_2();
      v18 = sub_252F53A4C();
      MEMORY[0x2530AF850](v18);
      OUTLINED_FUNCTION_5_4();
      v19 = sub_252F347B4(countAndFlagsBits, v7, &v23);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_252F347B4(v20, object, &v23);
      _os_log_impl(&dword_252F17000, v14, v15, "%{public}s: %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

LABEL_9:

    return;
  }

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v17 = 136446466;
  OUTLINED_FUNCTION_1_2();
  if (v7 >> 14 >= sub_252F539DC() >> 14)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_252F34010()
{
  v0 = sub_252F5316C();
  __swift_allocate_value_buffer(v0, qword_27F57B800);
  __swift_project_value_buffer(v0, qword_27F57B800);
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v1 = qword_27F57B818;
  return sub_252F5317C();
}