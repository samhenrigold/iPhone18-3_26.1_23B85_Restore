unint64_t sub_1CFCEBE50()
{
  result = qword_1EC4F6AA0[0];
  if (!qword_1EC4F6AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6AA0);
  }

  return result;
}

unint64_t sub_1CFCEBEA8()
{
  result = qword_1EC4F6BB0;
  if (!qword_1EC4F6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F6BB0);
  }

  return result;
}

unint64_t sub_1CFCEBF00()
{
  result = qword_1EC4F6BB8[0];
  if (!qword_1EC4F6BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6BB8);
  }

  return result;
}

uint64_t sub_1CFCEC028()
{
  OUTLINED_FUNCTION_61();
  sub_1CFCECAB0();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49168();
}

uint64_t sub_1CFCEC070()
{
  OUTLINED_FUNCTION_61();
  sub_1CFCECAB0();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49138();
}

BOOL sub_1CFCEC104(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CFCEC138@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1CFCEC168@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

ProactiveSummarizationClient::SummaryStyles sub_1CFCEC268@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SummaryStyles.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CFCEC2A8@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryStyles.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CFCEC2EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

ProactiveSummarizationClient::SummarizationOptions __swiftcall SummarizationOptions.init(requestedSummaryStyles:isUserInitiated:useExternalIntelligence:)(ProactiveSummarizationClient::SummaryStyles requestedSummaryStyles, Swift::Bool isUserInitiated, Swift::Bool useExternalIntelligence)
{
  *v3 = *requestedSummaryStyles.rawValue;
  *(v3 + 8) = isUserInitiated;
  *(v3 + 9) = useExternalIntelligence;
  result.requestedSummaryStyles = requestedSummaryStyles;
  result.isUserInitiated = isUserInitiated;
  return result;
}

ProactiveSummarizationClient::SummarizationOptions __swiftcall SummarizationOptions.init(requestedSummaryStyles:isUserInitiated:)(ProactiveSummarizationClient::SummaryStyles requestedSummaryStyles, Swift::Bool isUserInitiated)
{
  *v2 = *requestedSummaryStyles.rawValue;
  *(v2 + 8) = isUserInitiated;
  *(v2 + 9) = 0;
  result.requestedSummaryStyles = requestedSummaryStyles;
  result.isUserInitiated = isUserInitiated;
  return result;
}

ProactiveSummarizationClient::SummarizationOptions __swiftcall SummarizationOptions.init(requestedSummaryStyles:)(ProactiveSummarizationClient::SummaryStyles requestedSummaryStyles)
{
  *v1 = *requestedSummaryStyles.rawValue;
  *(v1 + 8) = 1;
  result.requestedSummaryStyles = requestedSummaryStyles;
  return result;
}

uint64_t sub_1CFCEC414(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001CFD5D950 == a2;
  if (v3 || (OUTLINED_FUNCTION_20(0xD000000000000016, 0x80000001CFD5D950) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E49726573557369 && a2 == 0xEF64657461697469;
    if (v6 || (OUTLINED_FUNCTION_20(0x6E49726573557369, 0xEF64657461697469) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x80000001CFD5D970 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_20(0xD000000000000017, 0x80000001CFD5D970);

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

uint64_t sub_1CFCEC514(char a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  if (a1 == 1)
  {
    return 0x6E49726573557369;
  }

  return 0xD000000000000017;
}

uint64_t sub_1CFCEC58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCEC414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCEC5C0(uint64_t a1)
{
  v2 = sub_1CFCEC7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCEC5FC(uint64_t a1)
{
  v2 = sub_1CFCEC7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizationOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D68, &qword_1CFD4B948);
  OUTLINED_FUNCTION_37();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v13[1] = *(v1 + 9);
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCEC7C8();
  sub_1CFD497A8();
  v17 = v10;
  v16 = 0;
  sub_1CFCEC81C();
  OUTLINED_FUNCTION_1_3();
  sub_1CFD49618();
  if (!v2)
  {
    v15 = 1;
    OUTLINED_FUNCTION_1_3();
    sub_1CFD495F8();
    v14 = 2;
    OUTLINED_FUNCTION_1_3();
    sub_1CFD495F8();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1CFCEC7C8()
{
  result = qword_1EC4F6C40[0];
  if (!qword_1EC4F6C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6C40);
  }

  return result;
}

unint64_t sub_1CFCEC81C()
{
  result = qword_1EC4F2D70;
  if (!qword_1EC4F2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D70);
  }

  return result;
}

uint64_t SummarizationOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D78, &qword_1CFD4B950);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCEC7C8();
  sub_1CFD49788();
  if (!v2)
  {
    v15[15] = 0;
    sub_1CFCECA58();
    sub_1CFD49578();
    v11 = v16;
    v15[14] = 1;
    v12 = sub_1CFD49558();
    v15[13] = 2;
    v14 = sub_1CFD49558();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v12 & 1;
    *(a2 + 9) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1CFCECA58()
{
  result = qword_1EC4F2D80;
  if (!qword_1EC4F2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D80);
  }

  return result;
}

unint64_t sub_1CFCECAB0()
{
  result = qword_1EC4F2D88;
  if (!qword_1EC4F2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D88);
  }

  return result;
}

unint64_t sub_1CFCECB08()
{
  result = qword_1EC4F2D90;
  if (!qword_1EC4F2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D90);
  }

  return result;
}

unint64_t sub_1CFCECB60()
{
  result = qword_1EDDD2860;
  if (!qword_1EDDD2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD2860);
  }

  return result;
}

unint64_t sub_1CFCECBB8()
{
  result = qword_1EDDD2858;
  if (!qword_1EDDD2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD2858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryStyles(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_3_2(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SummaryStyles(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      return OUTLINED_FUNCTION_3_2(*a1 + 254);
    }

    v3 = *(a1 + 8);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_3_2(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v5);
}

uint64_t storeEnumTagSinglePayload for SummarizationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s28ProactiveSummarizationClient21SummarizationFeedbackV7FeatureOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *sub_1CFCECDC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFCECEA4()
{
  result = qword_1EC4F7050[0];
  if (!qword_1EC4F7050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F7050);
  }

  return result;
}

unint64_t sub_1CFCECEFC()
{
  result = qword_1EC4F7160;
  if (!qword_1EC4F7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7160);
  }

  return result;
}

unint64_t sub_1CFCECF54()
{
  result = qword_1EC4F7168[0];
  if (!qword_1EC4F7168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F7168);
  }

  return result;
}

uint64_t ModelInputContentBuilderClient.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for SummarizationPipelineClient();
  *(v0 + 16) = SummarizationPipelineClient.__allocating_init()();
  return v0;
}

uint64_t ModelInputContentBuilderClient.init()()
{
  type metadata accessor for SummarizationPipelineClient();
  *(v0 + 16) = SummarizationPipelineClient.__allocating_init()();
  return v0;
}

uint64_t sub_1CFCED054()
{
  OUTLINED_FUNCTION_18_1();
  v4 = OUTLINED_FUNCTION_15_2(v1, v2, v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v6 = OUTLINED_FUNCTION_26_0();
  v7 = OUTLINED_FUNCTION_37_1(v6);
  v8 = type metadata accessor for ModelInputContentResponse(v7);
  OUTLINED_FUNCTION_6_2(v8);
  v9 = OUTLINED_FUNCTION_26_0();
  v10 = OUTLINED_FUNCTION_36_1(v9);
  v11 = type metadata accessor for ModelInputContentRequest.Kind(v10);
  *(v0 + 72) = v11;
  OUTLINED_FUNCTION_6_2(v11);
  v12 = OUTLINED_FUNCTION_26_0();
  v13 = OUTLINED_FUNCTION_35_1(v12);
  v14 = type metadata accessor for ModelInputContentRequest(v13);
  OUTLINED_FUNCTION_6_2(v14);
  v15 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_13_2(v15);
  v16 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v16);
}

uint64_t sub_1CFCED124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_6_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_30_1(v15, v16, v17, v18);
  OUTLINED_FUNCTION_38_0();
  v31 = v19 + 160;
  v32 = *(v19 + 160) + **(v19 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v14 + 112) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_10_1(v20);
  OUTLINED_FUNCTION_42_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, a11, a12, a13, a14);
}

uint64_t sub_1CFCED248()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCED32C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v4, v3, v5);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_34_1();
  if (v6)
  {
    sub_1CFCEF5E4(v2, type metadata accessor for ModelInputContentResponse.Kind);
    v7 = OUTLINED_FUNCTION_40_0();
    type metadata accessor for MailEntity(v7);
    OUTLINED_FUNCTION_9_4();
    v10 = sub_1CFCEE1A4(v8, v9, &protocol conformance descriptor for MailEntity);
    OUTLINED_FUNCTION_17_3(v10, v11, v12, v13, v14, v15, v16, v17, v24);
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v18);
    OUTLINED_FUNCTION_1_4();
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v19);
    v20 = OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_45_0(v20, v21, &qword_1EC4F2D98, &unk_1CFD50A10);
  }

  OUTLINED_FUNCTION_23_1();

  return v22();
}

uint64_t sub_1CFCED460(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 16) = a1;
  v8 = type metadata accessor for ModelInputContentResponse.Kind(0);
  *(v5 + 40) = v8;
  OUTLINED_FUNCTION_6_2(v8);
  *(v5 + 48) = OUTLINED_FUNCTION_26_0();
  v9 = type metadata accessor for ModelInputContentResponse(0);
  OUTLINED_FUNCTION_6_2(v9);
  v10 = OUTLINED_FUNCTION_26_0();
  v11 = OUTLINED_FUNCTION_37_1(v10);
  v12 = type metadata accessor for ModelInputContentRequest.Kind(v11);
  *(v5 + 64) = v12;
  OUTLINED_FUNCTION_6_2(v12);
  *(v5 + 72) = OUTLINED_FUNCTION_26_0();
  v13 = type metadata accessor for ModelInputContentRequest(0);
  OUTLINED_FUNCTION_6_2(v13);
  v14 = OUTLINED_FUNCTION_26_0();
  v15 = *a2;
  v16 = a2[1];
  *(v5 + 80) = v14;
  *(v5 + 88) = v15;
  *(v5 + 96) = v16;
  *(v5 + 130) = *(a2 + 16);
  *(v5 + 131) = *(a2 + 17);
  *(v5 + 104) = *a4;
  *(v5 + 128) = *(a4 + 16);
  v17 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v17);
}

uint64_t sub_1CFCED57C()
{
  v21 = v0;
  v16 = *(v0 + 128);
  v1 = *(v0 + 112);
  v2 = *(v0 + 131);
  v3 = *(v0 + 130);
  v15 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v17 = *(v0 + 80);
  v7 = *(v0 + 24);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C68, &qword_1CFD4AB40) + 48);
  *v6 = v4;
  *(v6 + 8) = v5;
  *(v6 + 16) = v3;
  *(v6 + 17) = v2;
  sub_1CFCEECE0(v7, v6 + v8, type metadata accessor for SummarizationResponse);
  swift_storeEnumTagMultiPayload();
  v19[0] = v15;
  v19[1] = v1;
  v20 = v16;

  ModelInputContentRequest.init(kind:options:)(v19, v17);
  OUTLINED_FUNCTION_38_0();
  v18 = (*(v9 + 160) + **(v9 + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 120) = v10;
  *v10 = v11;
  v10[1] = sub_1CFCED764;
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);

  return v18(v13, v12);
}

uint64_t sub_1CFCED764()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCED848()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v2, v1, v3);
  v4 = OUTLINED_FUNCTION_46_0();
  v5 = *(v0 + 56);
  if (v4)
  {
    sub_1CFCEF5E4(*(v0 + 48), type metadata accessor for ModelInputContentResponse.Kind);
    v6 = OUTLINED_FUNCTION_40_0();
    type metadata accessor for MailEntity(v6);
    OUTLINED_FUNCTION_9_4();
    v9 = sub_1CFCEE1A4(v7, v8, &protocol conformance descriptor for MailEntity);
    OUTLINED_FUNCTION_17_3(v9, v10, v11, v12, v13, v14, v15, v16, v23);
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v5, v17);
    OUTLINED_FUNCTION_1_4();
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v5, v18);
    v19 = OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_45_0(v19, v20, &qword_1EC4F2D98, &unk_1CFD50A10);
  }

  OUTLINED_FUNCTION_23_1();

  return v21();
}

uint64_t sub_1CFCED984()
{
  OUTLINED_FUNCTION_18_1();
  v4 = OUTLINED_FUNCTION_15_2(v1, v2, v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v6 = OUTLINED_FUNCTION_26_0();
  v7 = OUTLINED_FUNCTION_37_1(v6);
  v8 = type metadata accessor for ModelInputContentResponse(v7);
  OUTLINED_FUNCTION_6_2(v8);
  v9 = OUTLINED_FUNCTION_26_0();
  v10 = OUTLINED_FUNCTION_36_1(v9);
  v11 = type metadata accessor for ModelInputContentRequest.Kind(v10);
  *(v0 + 72) = v11;
  OUTLINED_FUNCTION_6_2(v11);
  v12 = OUTLINED_FUNCTION_26_0();
  v13 = OUTLINED_FUNCTION_35_1(v12);
  v14 = type metadata accessor for ModelInputContentRequest(v13);
  OUTLINED_FUNCTION_6_2(v14);
  v15 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_13_2(v15);
  v16 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v16);
}

uint64_t sub_1CFCEDA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_6_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_30_1(v15, v16, v17, v18);
  OUTLINED_FUNCTION_38_0();
  v31 = v19 + 160;
  v32 = *(v19 + 160) + **(v19 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v14 + 112) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_10_1(v20);
  OUTLINED_FUNCTION_42_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, a11, a12, a13, a14);
}

uint64_t sub_1CFCEDB78()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCEDC5C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v4, v3, v5);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_34_1();
  if (v6 == 1)
  {
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v7);
    v8 = OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_45_0(v8, v9, &qword_1EC4F2DA0, &unk_1CFD4BD68);
  }

  else
  {
    sub_1CFCEF5E4(v2, type metadata accessor for ModelInputContentResponse.Kind);
    v10 = OUTLINED_FUNCTION_40_0();
    type metadata accessor for MessageEntity(v10);
    OUTLINED_FUNCTION_22_2();
    v13 = sub_1CFCEE1A4(v11, v12, &protocol conformance descriptor for MessageEntity);
    OUTLINED_FUNCTION_17_3(v13, v14, v15, v16, v17, v18, v19, v20, v24);
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v21);
    OUTLINED_FUNCTION_1_4();
  }

  OUTLINED_FUNCTION_23_1();

  return v22();
}

uint64_t sub_1CFCEDD94()
{
  OUTLINED_FUNCTION_18_1();
  v4 = OUTLINED_FUNCTION_15_2(v1, v2, v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v6 = OUTLINED_FUNCTION_26_0();
  v7 = OUTLINED_FUNCTION_37_1(v6);
  v8 = type metadata accessor for ModelInputContentResponse(v7);
  OUTLINED_FUNCTION_6_2(v8);
  v9 = OUTLINED_FUNCTION_26_0();
  v10 = OUTLINED_FUNCTION_36_1(v9);
  v11 = type metadata accessor for ModelInputContentRequest.Kind(v10);
  *(v0 + 72) = v11;
  OUTLINED_FUNCTION_6_2(v11);
  v12 = OUTLINED_FUNCTION_26_0();
  v13 = OUTLINED_FUNCTION_35_1(v12);
  v14 = type metadata accessor for ModelInputContentRequest(v13);
  OUTLINED_FUNCTION_6_2(v14);
  v15 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_13_2(v15);
  v16 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v16);
}

uint64_t sub_1CFCEDE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_6_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_30_1(v15, v16, v17, v18);
  OUTLINED_FUNCTION_38_0();
  v31 = v19 + 160;
  v32 = *(v19 + 160) + **(v19 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v14 + 112) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_10_1(v20);
  OUTLINED_FUNCTION_42_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, a11, a12, a13, a14);
}

uint64_t sub_1CFCEDF88()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCEE06C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v4, v3, v5);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_34_1();
  if (v6 == 2)
  {
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v7);
    v8 = OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_45_0(v8, v9, &qword_1EC4F2DA8, qword_1CFD4BD78);
  }

  else
  {
    sub_1CFCEF5E4(v2, type metadata accessor for ModelInputContentResponse.Kind);
    v10 = OUTLINED_FUNCTION_40_0();
    type metadata accessor for NotificationEntity(v10);
    OUTLINED_FUNCTION_21_2();
    v13 = sub_1CFCEE1A4(v11, v12, &protocol conformance descriptor for NotificationEntity);
    OUTLINED_FUNCTION_17_3(v13, v14, v15, v16, v17, v18, v19, v20, v24);
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v21);
    OUTLINED_FUNCTION_1_4();
  }

  OUTLINED_FUNCTION_23_1();

  return v22();
}

uint64_t sub_1CFCEE1A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFCEE1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_43_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_25();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v4;
}

uint64_t sub_1CFCEE238()
{
  OUTLINED_FUNCTION_18_1();
  v4 = OUTLINED_FUNCTION_15_2(v1, v2, v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v6 = OUTLINED_FUNCTION_26_0();
  v7 = OUTLINED_FUNCTION_37_1(v6);
  v8 = type metadata accessor for ModelInputContentResponse(v7);
  OUTLINED_FUNCTION_6_2(v8);
  v9 = OUTLINED_FUNCTION_26_0();
  v10 = OUTLINED_FUNCTION_36_1(v9);
  v11 = type metadata accessor for ModelInputContentRequest.Kind(v10);
  *(v0 + 72) = v11;
  OUTLINED_FUNCTION_6_2(v11);
  v12 = OUTLINED_FUNCTION_26_0();
  v13 = OUTLINED_FUNCTION_35_1(v12);
  v14 = type metadata accessor for ModelInputContentRequest(v13);
  OUTLINED_FUNCTION_6_2(v14);
  v15 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_13_2(v15);
  v16 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v16);
}

uint64_t sub_1CFCEE308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_6_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_30_1(v15, v16, v17, v18);
  OUTLINED_FUNCTION_38_0();
  v31 = v19 + 160;
  v32 = *(v19 + 160) + **(v19 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v14 + 112) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_10_1(v20);
  OUTLINED_FUNCTION_42_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, a11, a12, a13, a14);
}

uint64_t sub_1CFCEE42C()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCEE510()
{
  OUTLINED_FUNCTION_18_1();
  *(v0 + 34) = v1;
  *(v0 + 88) = v2;
  *(v0 + 96) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  v7 = OUTLINED_FUNCTION_36_1(v6);
  v8 = type metadata accessor for GenericModelInputAndOutputResult(v7);
  OUTLINED_FUNCTION_6_2(v8);
  *(v0 + 104) = OUTLINED_FUNCTION_26_0();
  v9 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v9);
}

uint64_t sub_1CFCEE590()
{
  OUTLINED_FUNCTION_29_0();
  v12 = v0;
  v1 = *(v0 + 34);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  type metadata accessor for ModelInputContentBuilderClient();
  v4 = swift_allocObject();
  *(v0 + 112) = v4;
  type metadata accessor for SummarizationPipelineClient();
  *(v4 + 16) = SummarizationPipelineClient.__allocating_init()();
  v11 = v1;

  v5._countAndFlagsBits = v3;
  v5._object = v2;
  ModelContentInputRequestOptions.init(bundleIdentifier:notificationType:isContentFromNotificationSpotlightIndex:)(v5, &v11, 1);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 120) = v8;
  *v8 = v9;
  v8[1] = sub_1CFCEE6A8;

  return sub_1CFCEE898();
}

uint64_t sub_1CFCEE6A8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CFCEE7DC);
}

uint64_t sub_1CFCEE7DC()
{
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 104);
  sub_1CFCEECE0(v1, *(v0 + 64), type metadata accessor for ModelInputAndOutputKind);
  sub_1CFCEF5E4(v1, type metadata accessor for GenericModelInputAndOutputResult);

  OUTLINED_FUNCTION_23_1();

  return v2();
}

uint64_t sub_1CFCEE898()
{
  OUTLINED_FUNCTION_18_1();
  v5 = OUTLINED_FUNCTION_15_2(v2, v3, v4);
  v6 = type metadata accessor for ModelInputContentResponse(v5);
  OUTLINED_FUNCTION_6_2(v6);
  *(v1 + 48) = OUTLINED_FUNCTION_26_0();
  v7 = type metadata accessor for ModelInputContentRequest.Kind(0);
  *(v1 + 56) = v7;
  OUTLINED_FUNCTION_6_2(v7);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v8 = type metadata accessor for ModelInputContentRequest(0);
  OUTLINED_FUNCTION_6_2(v8);
  v9 = OUTLINED_FUNCTION_26_0();
  v10 = *v0;
  v11 = v0[1];
  *(v1 + 80) = v9;
  *(v1 + 88) = v10;
  *(v1 + 96) = v11;
  *(v1 + 112) = *(v0 + 8);
  v12 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v12);
}

uint64_t sub_1CFCEE974()
{
  v17 = v2;
  ModelContentInputRequestOptions.notificationContentType()();
  OUTLINED_FUNCTION_8_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_2();
  v5 = OUTLINED_FUNCTION_32_1();
  sub_1CFCEECE0(v5, v6, v7);
  v15[0] = v3;
  v15[1] = v15;
  v16 = v4;

  ModelInputContentRequest.init(kind:options:)(v15, v0);
  OUTLINED_FUNCTION_5_2();
  sub_1CFCEF5E4(v1, v8);
  v14 = (*(**(v2 + 40) + 160) + **(**(v2 + 40) + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v2 + 104) = v9;
  *v9 = v10;
  v9[1] = sub_1CFCEEB58;
  v11 = *(v2 + 80);
  v12 = *(v2 + 48);

  return v14(v12, v11);
}

uint64_t sub_1CFCEEB58()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCEEC3C()
{
  v1 = *(v0 + 48);
  sub_1CFCEED3C(v1, *(v0 + 16));
  OUTLINED_FUNCTION_0_3();
  sub_1CFCEF5E4(v1, v2);
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_23_1();

  return v3();
}

uint64_t sub_1CFCEECE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_25();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t sub_1CFCEED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA0, &unk_1CFD4BD68);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  type metadata accessor for ModelInputAndOutputKind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D98, &unk_1CFD50A10);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  type metadata accessor for ModelInputContentResponse.Kind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v38, v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFCEE1EC(v19, v9, &qword_1EC4F2DA0, &unk_1CFD4BD68);
      sub_1CFCF0044(v9, v12, &qword_1EC4F2DA0, &unk_1CFD4BD68);
      OUTLINED_FUNCTION_32_1();
      swift_storeEnumTagMultiPayload();
      ModelContentInput.inputString()();
      OUTLINED_FUNCTION_33_1();
      v41 = v22;
      v23 = ModelContentInput.outputString(for:)(&v41);
      OUTLINED_FUNCTION_28_0(v23._countAndFlagsBits, v23._object, v24, v23._countAndFlagsBits, v23._object, v9[*(v6 + 76)]);
      v25 = v9;
      v26 = &qword_1EC4F2DA0;
      v27 = &unk_1CFD4BD68;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_27();
      sub_1CFCEE1EC(v31, v32, &qword_1EC4F2DA8, qword_1CFD4BD78);
      sub_1CFCF0044(v5, v12, &qword_1EC4F2DA8, qword_1CFD4BD78);
      OUTLINED_FUNCTION_32_1();
      swift_storeEnumTagMultiPayload();
      ModelContentInput.inputString()();
      OUTLINED_FUNCTION_33_1();
      v42 = v33;
      v34 = ModelContentInput.outputString(for:)(&v42);
      OUTLINED_FUNCTION_28_0(v34._countAndFlagsBits, v34._object, v35, v34._countAndFlagsBits, v34._object, v5[*(v2 + 76)]);
      v25 = v5;
      v26 = &qword_1EC4F2DA8;
      v27 = qword_1CFD4BD78;
    }
  }

  else
  {
    sub_1CFCEE1EC(v19, v16, &qword_1EC4F2D98, &unk_1CFD50A10);
    sub_1CFCF0044(v16, v12, &qword_1EC4F2D98, &unk_1CFD50A10);
    OUTLINED_FUNCTION_32_1();
    swift_storeEnumTagMultiPayload();
    ModelContentInput.inputString()();
    OUTLINED_FUNCTION_33_1();
    v40 = v28;
    v29 = ModelContentInput.outputString(for:)(&v40);
    OUTLINED_FUNCTION_28_0(v29._countAndFlagsBits, v29._object, v30, v29._countAndFlagsBits, v29._object, v16[*(v13 + 76)]);
    v25 = v16;
    v26 = &qword_1EC4F2D98;
    v27 = &unk_1CFD50A10;
  }

  return sub_1CFCE3050(v25, v26, v27);
}

uint64_t sub_1CFCEF0A8()
{
  OUTLINED_FUNCTION_18_1();
  v1[11] = v2;
  v1[12] = v0;
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  v1[13] = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v1[14] = OUTLINED_FUNCTION_26_0();
  v6 = type metadata accessor for ModelInputContentRequest.Kind(0);
  v1[15] = v6;
  OUTLINED_FUNCTION_6_2(v6);
  v1[16] = OUTLINED_FUNCTION_26_0();
  v7 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1CFCEF148()
{
  OUTLINED_FUNCTION_18_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 136) = v1;
  *v1 = v2;
  v1[1] = sub_1CFCEF1E0;

  return sub_1CFD100E0();
}

uint64_t sub_1CFCEF1E0()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12_1();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFCEF314);
  }

  else
  {

    OUTLINED_FUNCTION_23_1();

    return v6();
  }
}

uint64_t sub_1CFCEF5D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1CFCEF5E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_25();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CFCEF63C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t ModelInputContentBuilderClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(forMail:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v22 = v9 + 96;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_3(v11);
  OUTLINED_FUNCTION_47_0();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(summarizationRequest:summarizationResponse:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v22 = v9 + 104;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_3(v11);
  OUTLINED_FUNCTION_47_0();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(forMessage:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v22 = v9 + 112;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_3(v11);
  OUTLINED_FUNCTION_47_0();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(forNotification:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v22 = v9 + 120;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_3(v11);
  OUTLINED_FUNCTION_47_0();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(forNotificationStack:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v22 = v9 + 128;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_3(v11);
  OUTLINED_FUNCTION_47_0();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputAndOutputKind(forNotification:bundleId:isShowingStackSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = (*(*v6 + 136) + **(*v6 + 136));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_2(v13);
  *v14 = v15;
  v14[1] = sub_1CFCEFD40;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1CFCEFD40()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  OUTLINED_FUNCTION_23_1();

  return v3();
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputAndOutputContent(forNotification:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v22 = v9 + 144;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_2(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_3(v11);
  OUTLINED_FUNCTION_47_0();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(for:)()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v9 = (*(*v0 + 160) + **(*v0 + 160));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_14_2(v5);
  *v6 = v7;
  v6[1] = sub_1CFCF0090;

  return v9(v4, v2);
}

uint64_t sub_1CFCF0044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_43_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_25();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return sub_1CFCEF5E4(v0, type metadata accessor for ModelInputContentRequest);
}

void *OUTLINED_FUNCTION_6_3()
{
  v1 = v0[10];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  return v1;
}

void *OUTLINED_FUNCTION_8_3()
{
  v1 = v0[9];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  return v1;
}

__n128 OUTLINED_FUNCTION_13_2(unint64_t a1)
{
  v2[5].n128_u64[1] = a1;
  result = *v1;
  v2[6] = *v1;
  v2[7].n128_u16[4] = v1[1].n128_u16[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return 0;
}

void OUTLINED_FUNCTION_17_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  static ModelContentInput.empty(status:request:)();
}

void OUTLINED_FUNCTION_24_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  static ModelContentInput.empty(status:request:)();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_task_alloc();
}

int *OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *(v8 - 96);

  return sub_1CFD1E5E4(v6, v7, a4, a5, a6, v10);
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return ModelInputContentRequest.init(kind:options:)(va, v4);
}

uint64_t OUTLINED_FUNCTION_31_1()
{
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1CFCEE1EC(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1CFCF047C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6461526F54706174;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = 0x80000001CFD5DA00;
  }

  else
  {
    v4 = 0xEA00000000007261;
  }

  if (a2)
  {
    v5 = 0x6461526F54706174;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a2)
  {
    v6 = 0xEA00000000007261;
  }

  else
  {
    v6 = 0x80000001CFD5DA00;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CFD49668();
  }

  return v8 & 1;
}

uint64_t sub_1CFCF0524(unsigned __int8 a1, char a2)
{
  v2 = 0x65727574616566;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x65727574616566;
  switch(v4)
  {
    case 1:
      v5 = 0x6E656D69746E6573;
      v3 = 0xE900000000000074;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x646E694B6975;
      break;
    case 3:
      v5 = 0x61746E6573657270;
      v3 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6E656D69746E6573;
      v6 = 0xE900000000000074;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x646E694B6975;
      break;
    case 3:
      v2 = 0x61746E6573657270;
      v6 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CFD49668();
  }

  return v8 & 1;
}

uint64_t sub_1CFCF068C(uint64_t a1)
{
  v1 = a1;
  sub_1CFD49728();
  sub_1CFCF0748(v3, v1);
  return sub_1CFD49758();
}

uint64_t sub_1CFCF06D4(uint64_t a1, char a2)
{
  sub_1CFD49038();
}

uint64_t sub_1CFCF0748(uint64_t a1, char a2)
{
  sub_1CFD49038();
}

uint64_t sub_1CFCF0808(uint64_t a1, char a2)
{
  sub_1CFD49728();
  sub_1CFCF0748(v4, a2);
  return sub_1CFD49758();
}

uint64_t sub_1CFCF084C(uint64_t a1, char a2)
{
  sub_1CFD49728();
  sub_1CFD49038();

  return sub_1CFD49758();
}

uint64_t sub_1CFCF08D4()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01B38();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFCF091C()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01B38();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

ProactiveSummarizationClient::SummarizationFeedback::Feature_optional __swiftcall SummarizationFeedback.Feature.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1CFCF0994@<X0>(uint64_t *a1@<X8>)
{
  result = _s28ProactiveSummarizationClient0B8FeedbackV9SentimentO8rawValueSivg_0();
  *a1 = result;
  return result;
}

uint64_t sub_1CFCF09BC()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01AE4();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFCF0A04()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01AE4();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

uint64_t sub_1CFCF0A3C()
{
  type metadata accessor for SummarizationFeedback.UIKind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_1_5();
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_68();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = EnumCaseMultiPayload;
  sub_1CFCF0B10(v0, *(&off_1F4C784E0 + EnumCaseMultiPayload));
  return v3;
}

uint64_t sub_1CFCF0B10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_25();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CFCF0B68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818845549 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_20(1818845549, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_20(0x6567617373656DLL, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_30_0();
      v9 = a1 == v7 && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_20(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000011 && 0x80000001CFD5D8D0 == a2;
        if (v10 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D8D0) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x657268546C69616DLL && a2 == 0xEA00000000006461)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_20(0x657268546C69616DLL, 0xEA00000000006461);
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

uint64_t sub_1CFCF0CC0(char a1)
{
  result = 1818845549;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_30_0();
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x657268546C69616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCF0D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCF0B68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCF0D8C()
{
  sub_1CFCF1748();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF0DC4()
{
  sub_1CFCF1748();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF0E24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
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

uint64_t sub_1CFCF0E98()
{
  sub_1CFCF18EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF0ED0()
{
  sub_1CFCF18EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF0F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCF0E24(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFCF0F4C()
{
  sub_1CFCF179C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF0F84()
{
  sub_1CFCF179C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF0FBC()
{
  sub_1CFCF1898();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF0FF4()
{
  sub_1CFCF1898();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF102C()
{
  sub_1CFCF1844();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF1064()
{
  sub_1CFCF1844();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF109C()
{
  sub_1CFCF17F0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF10D4()
{
  sub_1CFCF17F0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationFeedback.UIKind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_143();
  a25 = v30;
  a26 = v31;
  v102 = v27;
  v99 = v26;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DB8, &qword_1CFD4BEA0);
  OUTLINED_FUNCTION_37();
  v97 = v35;
  v98 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_22_1();
  v96 = v37;
  v94 = type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_0();
  v95 = v40 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DC0, &qword_1CFD4BEA8);
  OUTLINED_FUNCTION_37();
  v92 = v42;
  v93 = v41;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_22_1();
  v91 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DC8, &qword_1CFD4BEB0);
  OUTLINED_FUNCTION_37();
  v89 = v46;
  v90 = v45;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_22_1();
  v88 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DD0, &qword_1CFD4BEB8);
  OUTLINED_FUNCTION_37();
  v86 = v50;
  v87 = v49;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v85 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DD8, &qword_1CFD4BEC0);
  OUTLINED_FUNCTION_37();
  v85 = v55;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_179();
  type metadata accessor for SummarizationFeedback.UIKind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DE0, &qword_1CFD4BEC8);
  OUTLINED_FUNCTION_37();
  v100 = v59;
  v101 = v58;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_178(v33, v33[3]);
  sub_1CFCF1748();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_1_5();
  sub_1CFCFFF3C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_175();
      v78 = sub_1CFCF1898();
      OUTLINED_FUNCTION_129(&type metadata for SummarizationFeedback.UIKind.MessageCodingKeys, &a13, v79, v80, v78);
      v81 = v87;
      sub_1CFD495E8();
      OUTLINED_FUNCTION_193();
      (*(v86 + 8))(v53, v81);
      goto LABEL_8;
    case 2u:
      a14 = 2;
      v69 = sub_1CFCF1844();
      v70 = v88;
      OUTLINED_FUNCTION_129(&type metadata for SummarizationFeedback.UIKind.NotificationCodingKeys, &a14, v71, v72, v69);
      v73 = v90;
      sub_1CFD495E8();
      OUTLINED_FUNCTION_193();
      v74 = v89;
      goto LABEL_6;
    case 3u:
      a15 = 3;
      v75 = sub_1CFCF17F0();
      v70 = v91;
      OUTLINED_FUNCTION_129(&type metadata for SummarizationFeedback.UIKind.NotificationStackCodingKeys, &a15, v76, v77, v75);
      v73 = v93;
      sub_1CFD495E8();
      OUTLINED_FUNCTION_193();
      v74 = v92;
LABEL_6:
      (*(v74 + 8))(v70, v73);
LABEL_8:
      v82 = OUTLINED_FUNCTION_107();
      v84(v82, v83);
      break;
    case 4u:
      v62 = v95;
      sub_1CFCFFDE8();
      a16 = 4;
      sub_1CFCF179C();
      v63 = v96;
      v64 = v101;
      sub_1CFD495A8();
      OUTLINED_FUNCTION_90();
      sub_1CFCFFDA0(v65, v66, &protocol conformance descriptor for SummarizationFeedback.MailThreadFeedback);
      v67 = v98;
      sub_1CFD49618();
      (*(v97 + 8))(v63, v67);
      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v62, v68);
      (*(v100 + 8))(v28, v64);
      break;
    default:
      sub_1CFCF18EC();
      v61 = v101;
      sub_1CFD495A8();
      sub_1CFD495E8();
      OUTLINED_FUNCTION_193();
      (*(v85 + 8))(v29, v54);
      (*(v100 + 8))(v28, v61);
      break;
  }

  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFCF1748()
{
  result = qword_1EC4F71F0;
  if (!qword_1EC4F71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F71F0);
  }

  return result;
}

unint64_t sub_1CFCF179C()
{
  result = qword_1EC4F71F8;
  if (!qword_1EC4F71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F71F8);
  }

  return result;
}

unint64_t sub_1CFCF17F0()
{
  result = qword_1EC4F7200;
  if (!qword_1EC4F7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7200);
  }

  return result;
}

unint64_t sub_1CFCF1844()
{
  result = qword_1EC4F7208;
  if (!qword_1EC4F7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7208);
  }

  return result;
}

unint64_t sub_1CFCF1898()
{
  result = qword_1EC4F7210;
  if (!qword_1EC4F7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7210);
  }

  return result;
}

unint64_t sub_1CFCF18EC()
{
  result = qword_1EC4F7218;
  if (!qword_1EC4F7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7218);
  }

  return result;
}

void SummarizationFeedback.UIKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_143();
  a25 = v28;
  a26 = v29;
  v178 = v26;
  v31 = v30;
  v167 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DF0, &qword_1CFD4BED0);
  OUTLINED_FUNCTION_37();
  v165 = v33;
  v166 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_22_1();
  v171 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DF8, &qword_1CFD4BED8);
  OUTLINED_FUNCTION_37();
  v163 = v37;
  v164 = v38;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_22_1();
  v170 = v40;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E00, &qword_1CFD4BEE0);
  OUTLINED_FUNCTION_37();
  v172 = v41;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_22_1();
  v175 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E08, &qword_1CFD4BEE8);
  OUTLINED_FUNCTION_37();
  v160 = v45;
  v161 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_22_1();
  v169 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E10, &qword_1CFD4BEF0);
  OUTLINED_FUNCTION_37();
  v158 = v49;
  v159 = v48;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_22_1();
  v168 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E18, &qword_1CFD4BEF8);
  OUTLINED_FUNCTION_37();
  v173 = v53;
  v174 = v52;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_147();
  v176 = type metadata accessor for SummarizationFeedback.UIKind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_185();
  v157 = v56;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v150 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v150 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v150 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64);
  v69 = &v150 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v71 = &v150 - v70;
  v177 = v31;
  v72 = OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_178(v72, v73);
  sub_1CFCF1748();
  v74 = v178;
  sub_1CFD49788();
  if (v74)
  {
    goto LABEL_9;
  }

  v152 = v66;
  v153 = v63;
  v154 = v60;
  v155 = v69;
  v156 = v71;
  v75 = v174;
  v178 = v27;
  v76 = sub_1CFD49588();
  v80 = sub_1CFCE83C4(v76, 0);
  if (v78 == v79 >> 1)
  {
LABEL_8:
    v89 = v173;
    v90 = sub_1CFD49448();
    swift_allocError();
    v92 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00);
    *v92 = v176;
    v93 = v178;
    sub_1CFD49508();
    sub_1CFD49438();
    (*(*(v90 - 8) + 104))(v92, *MEMORY[0x1E69E6AF8], v90);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v89 + 8))(v93, v75);
LABEL_9:
    v87 = v177;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_142();
    return;
  }

  v151 = 0;
  if (v78 < (v79 >> 1))
  {
    v81 = *(v77 + v78);
    sub_1CFCE840C(v78 + 1, v79 >> 1, v80, v77, v78, v79);
    v83 = v82;
    v85 = v84;
    swift_unknownObjectRelease();
    if (v83 == v85 >> 1)
    {
      v86 = v176;
      v87 = v151;
      switch(v81)
      {
        case 1:
          OUTLINED_FUNCTION_175();
          sub_1CFCF1898();
          OUTLINED_FUNCTION_150();
          sub_1CFD494F8();
          OUTLINED_FUNCTION_172();
          v117 = sub_1CFD49548();
          if (v85)
          {
            swift_unknownObjectRelease();
            v119 = OUTLINED_FUNCTION_188();
            v120(v119);
            OUTLINED_FUNCTION_79();
            v112 = v178;
            goto LABEL_23;
          }

          v144 = v117;
          v145 = v118;
          swift_unknownObjectRelease();
          v146 = OUTLINED_FUNCTION_188();
          v147(v146);
          OUTLINED_FUNCTION_79();
          v148(v178, v75);
          v149 = v152;
          *v152 = v144;
          v149[1] = v145;
          goto LABEL_28;
        case 2:
          a14 = 2;
          v101 = sub_1CFCF1844();
          OUTLINED_FUNCTION_102(&type metadata for SummarizationFeedback.UIKind.NotificationCodingKeys, &a14, v102, v103, v101);
          v108 = sub_1CFD49548();
          v126 = v125;
          v171 = v108;
          swift_unknownObjectRelease();
          v127 = OUTLINED_FUNCTION_136();
          v128(v127);
          v129 = OUTLINED_FUNCTION_36_2();
          v130(v129);
          v131 = v153;
          *v153 = v171;
          v131[1] = v126;
          swift_storeEnumTagMultiPayload();
          v87 = v177;
          goto LABEL_29;
        case 3:
          a15 = 3;
          v104 = sub_1CFCF17F0();
          OUTLINED_FUNCTION_102(&type metadata for SummarizationFeedback.UIKind.NotificationStackCodingKeys, &a15, v105, v106, v104);
          OUTLINED_FUNCTION_172();
          v109 = sub_1CFD49548();
          if (v85)
          {
            swift_unknownObjectRelease();
            v99 = OUTLINED_FUNCTION_189();
            goto LABEL_18;
          }

          v132 = v109;
          v133 = v110;
          swift_unknownObjectRelease();
          v134 = OUTLINED_FUNCTION_189();
          v135(v134);
          v136 = OUTLINED_FUNCTION_36_2();
          v137(v136);
          v138 = v154;
          *v154 = v132;
          v138[1] = v133;
          goto LABEL_28;
        case 4:
          a16 = 4;
          v94 = sub_1CFCF179C();
          OUTLINED_FUNCTION_102(&type metadata for SummarizationFeedback.UIKind.MailThreadCodingKeys, &a16, v95, v96, v94);
          OUTLINED_FUNCTION_172();
          type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
          OUTLINED_FUNCTION_90();
          sub_1CFCFFDA0(v97, v98, &protocol conformance descriptor for SummarizationFeedback.MailThreadFeedback);
          sub_1CFD49578();
          if (v85)
          {
            swift_unknownObjectRelease();
            v99 = OUTLINED_FUNCTION_108();
LABEL_18:
            v100(v99);
            OUTLINED_FUNCTION_79();
            v112 = v86;
            goto LABEL_23;
          }

          swift_unknownObjectRelease();
          v121 = OUTLINED_FUNCTION_108();
          v122(v121);
          v123 = OUTLINED_FUNCTION_36_2();
          v124(v123);
LABEL_28:
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        default:
          sub_1CFCF18EC();
          v88 = v178;
          sub_1CFD494F8();
          OUTLINED_FUNCTION_172();
          if (v87)
          {
            OUTLINED_FUNCTION_79();
            v107(v88, v75);
            swift_unknownObjectRelease();
          }

          else
          {
            v113 = sub_1CFD49548();
            if (v85)
            {
              swift_unknownObjectRelease();
              v115 = OUTLINED_FUNCTION_108();
              v116(v115);
              OUTLINED_FUNCTION_79();
              v112 = v88;
LABEL_23:
              v111(v112, v75);
            }

            else
            {
              v139 = v114;
              v175 = v113;
              swift_unknownObjectRelease();
              v140 = OUTLINED_FUNCTION_108();
              v141(v140);
              OUTLINED_FUNCTION_79();
              v142(v88, v75);
              v143 = v155;
              *v155 = v175;
              v143[1] = v139;
              swift_storeEnumTagMultiPayload();
LABEL_29:
              sub_1CFCFFDE8();
              sub_1CFCFFDE8();
            }
          }

          break;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

ProactiveSummarizationClient::SummarizationFeedback::Presentation::UI_optional __swiftcall SummarizationFeedback.Presentation.UI.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFD494E8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SummarizationFeedback.Presentation.UI.rawValue.getter()
{
  if (*v0)
  {
    return 0x6461526F54706174;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1CFCF24C0@<X0>(uint64_t *a1@<X8>)
{
  result = SummarizationFeedback.Presentation.UI.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFCF24E8()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01A90();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49148();
}

uint64_t sub_1CFCF2530()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01A90();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49118();
}

ProactiveSummarizationClient::SummarizationFeedback::Presentation __swiftcall SummarizationFeedback.Presentation.init(showDisclaimerAlert:ui:)(Swift::Bool showDisclaimerAlert, ProactiveSummarizationClient::SummarizationFeedback::Presentation::UI ui)
{
  v3 = *ui;
  *v2 = showDisclaimerAlert;
  v2[1] = v3;
  result.showDisclaimerAlert = showDisclaimerAlert;
  return result;
}

uint64_t sub_1CFCF2578(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001CFD5DEA0 == a2;
  if (v3 || (OUTLINED_FUNCTION_20(0xD000000000000013, 0x80000001CFD5DEA0) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 26997 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_20(26997, 0xE200000000000000);
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

uint64_t sub_1CFCF2620(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  if (v1)
  {
    return 26997;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1CFCF2664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCF2578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCF268C()
{
  sub_1CFCFFE40();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF26C4()
{
  sub_1CFCFFE40();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationFeedback.Presentation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, __int16 a11, char a12, char a13, unsigned __int8 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_143();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E28, &qword_1CFD4BF08);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_178(v27, v27[3]);
  sub_1CFCFFE40();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_160();
  sub_1CFD495F8();
  if (!v25)
  {
    sub_1CFCFFE94();
    OUTLINED_FUNCTION_160();
    sub_1CFD49618();
  }

  v29 = OUTLINED_FUNCTION_117();
  v30(v29);
  OUTLINED_FUNCTION_142();
}

void SummarizationFeedback.Presentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_143();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E38, &qword_1CFD4BF10);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_178(v26, v26[3]);
  sub_1CFCFFE40();
  sub_1CFD49788();
  if (!v24)
  {
    v30 = sub_1CFD49558();
    sub_1CFCFFEE8();
    sub_1CFD49578();
    v31 = OUTLINED_FUNCTION_136();
    v32(v31);
    *v28 = v30 & 1;
    v28[1] = a13;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_142();
}

uint64_t SummarizationFeedback.MailThreadFeedback.summarizationRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t SummarizationFeedback.MailThreadFeedback.init(summarizationRequest:summarizationResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
  OUTLINED_FUNCTION_92();
  return sub_1CFCFFDE8();
}

uint64_t sub_1CFCF2AC8()
{
  sub_1CFCFFF94();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF2B00()
{
  sub_1CFCFFF94();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t SummarizationFeedback.MailThreadFeedback.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E48, &qword_1CFD4BF18);
  OUTLINED_FUNCTION_37();
  v6 = v5;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_178(a1, a1[3]);
  sub_1CFCFFF94();
  sub_1CFD497A8();
  sub_1CFCE6E60();

  sub_1CFD49618();

  if (!v1)
  {
    type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
    type metadata accessor for SummarizationResponse(0);
    OUTLINED_FUNCTION_91();
    sub_1CFCFFDA0(v8, v9, &protocol conformance descriptor for SummarizationResponse);
    sub_1CFD49618();
  }

  return (*(v6 + 8))(v2, v4);
}

void SummarizationFeedback.MailThreadFeedback.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_143();
  v26 = v25;
  v43[1] = v27;
  v45 = type metadata accessor for SummarizationResponse(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_0();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E50, &qword_1CFD4BF20);
  OUTLINED_FUNCTION_37();
  v44 = v29;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v43 - v31;
  type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_178(v26, v26[3]);
  sub_1CFCFFF94();
  sub_1CFD49788();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v43[0] = v26;
    v34 = v44;
    v35 = v24;
    sub_1CFCE84E4();
    v36 = v46;
    sub_1CFD49578();
    v37 = v48;
    v38 = v49;
    v39 = v50;
    *v35 = v47;
    *(v35 + 8) = v37;
    *(v35 + 16) = v38;
    *(v35 + 17) = v39;
    LOBYTE(v47) = 1;
    OUTLINED_FUNCTION_91();
    sub_1CFCFFDA0(v40, v41, &protocol conformance descriptor for SummarizationResponse);
    sub_1CFD49578();
    (*(v34 + 8))(v32, v36);
    OUTLINED_FUNCTION_92();
    sub_1CFCFFDE8();
    sub_1CFCFFF3C();
    __swift_destroy_boxed_opaque_existential_1(v43[0]);
    OUTLINED_FUNCTION_2_5();
    sub_1CFCF0B10(v35, v42);
  }

  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFCF2FEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFD494E8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CFCF3038(char a1)
{
  result = 0x65727574616566;
  switch(a1)
  {
    case 1:
      result = 0x6E656D69746E6573;
      break;
    case 2:
      result = 0x646E694B6975;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CFCF30E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CFCF2FEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1CFCF3118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFCF3038(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1CFCF314C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCF2FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCF317C()
{
  sub_1CFD00008();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF31B4()
{
  sub_1CFD00008();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t SummarizationFeedback.uiKind.getter()
{
  type metadata accessor for SummarizationFeedback(0);
  OUTLINED_FUNCTION_1_5();
  return sub_1CFCFFF3C();
}

uint64_t SummarizationFeedback.presentation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SummarizationFeedback(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t SummarizationFeedback.init(feature:sentiment:uiKind:resolveTruncatedContentForSpotlightId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_177();
  v10 = type metadata accessor for SummarizationFeedback(0);
  v11 = &v5[*(v10 + 32)];
  *v5 = v6;
  v5[1] = v7;
  OUTLINED_FUNCTION_29_1();
  result = sub_1CFCFFDE8();
  *&v5[*(v10 + 28)] = 0;
  *v11 = a4;
  v11[1] = a5;
  return result;
}

void SummarizationFeedback.init(feature:sentiment:uiKind:presentation:resolveTruncatedContentForSpotlightId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_156();
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_177();
  v14 = *v13;
  v15 = v13[1];
  v16 = type metadata accessor for SummarizationFeedback(0);
  v17 = &v6[*(v16 + 32)];
  *v6 = v7;
  v6[1] = v8;
  OUTLINED_FUNCTION_29_1();
  sub_1CFCFFDE8();
  v18 = &v6[*(v16 + 28)];
  *v18 = v14;
  v18[1] = v15;
  *v17 = v12;
  v17[1] = v10;
  OUTLINED_FUNCTION_155();
}

uint64_t SummarizationFeedback.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E58, &qword_1CFD4BF28);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_178(a1, a1[3]);
  sub_1CFD00008();
  sub_1CFD497A8();
  sub_1CFD0005C();
  OUTLINED_FUNCTION_160();
  sub_1CFD49618();
  if (!v1)
  {
    OUTLINED_FUNCTION_175();
    sub_1CFD000B0();
    OUTLINED_FUNCTION_160();
    sub_1CFD49618();
    type metadata accessor for SummarizationFeedback(0);
    type metadata accessor for SummarizationFeedback.UIKind(0);
    OUTLINED_FUNCTION_89();
    sub_1CFCFFDA0(v4, v5, &protocol conformance descriptor for SummarizationFeedback.UIKind);
    sub_1CFD49618();
    sub_1CFD00104();
    OUTLINED_FUNCTION_160();
    sub_1CFD49618();
  }

  v6 = OUTLINED_FUNCTION_117();
  return v7(v6);
}

void SummarizationFeedback.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_143();
  v30 = v29;
  type metadata accessor for SummarizationFeedback.UIKind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E88, &unk_1CFD4BF30);
  OUTLINED_FUNCTION_37();
  v43 = v33;
  v44 = v32;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_146();
  v35 = type metadata accessor for SummarizationFeedback(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  v38 = &v28[*(v37 + 32)];
  *v38 = 0;
  v38[1] = 0;
  OUTLINED_FUNCTION_178(v30, v30[3]);
  sub_1CFD00008();
  sub_1CFD49788();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_1CFD00158();
    sub_1CFD49578();
    *v28 = a17;
    OUTLINED_FUNCTION_175();
    sub_1CFD001AC();
    OUTLINED_FUNCTION_150();
    sub_1CFD49578();
    v28[1] = a15;
    OUTLINED_FUNCTION_89();
    sub_1CFCFFDA0(v39, v40, &protocol conformance descriptor for SummarizationFeedback.UIKind);
    sub_1CFD49578();
    OUTLINED_FUNCTION_29_1();
    sub_1CFCFFDE8();
    sub_1CFD00200();
    OUTLINED_FUNCTION_150();
    sub_1CFD49578();
    (*(v43 + 8))(0, v44);
    v41 = &v28[*(v35 + 28)];
    *v41 = a11;
    v41[1] = a12;
    OUTLINED_FUNCTION_12_2();
    sub_1CFCFFF3C();
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_26_1();
    sub_1CFCF0B10(v28, v42);
  }

  OUTLINED_FUNCTION_142();
}

id sub_1CFCF38E8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1CFD48F78();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_1CFCF395C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1CFCF3A18(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1CFCF3AA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1CFCF3B64(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

double sub_1CFCF3BF8()
{
  type metadata accessor for SummarizationFeedbackClient();
  v0 = swift_allocObject();
  *&result = 12;
  v0[1] = xmmword_1CFD4BE20;
  v0[2] = 0u;
  v0[3] = 0u;
  qword_1EDDD3778 = v0;
  return result;
}

uint64_t static SummarizationFeedbackClient.shared.getter()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_37_2(&_MergedGlobals);
  }
}

void *SummarizationFeedbackClient.deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = v1;
    v4 = v2;

    CFRunLoopSourceInvalidate(v3);
    CFUserNotificationCancel(v4);

    v5 = *(v0 + 32);
  }

  else
  {
    v5 = 0;
  }

  sub_1CFD00254(v5, *(v0 + 40), *(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t SummarizationFeedbackClient.__deallocating_deinit()
{
  SummarizationFeedbackClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1CFCF3D40()
{
  OUTLINED_FUNCTION_18_1();
  v1[120] = v0;
  v1[119] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB0, &unk_1CFD4BF40);
  OUTLINED_FUNCTION_6_2(v3);
  v1[121] = OUTLINED_FUNCTION_130();
  v1[122] = swift_task_alloc();
  v4 = type metadata accessor for MessageEntity(0);
  v1[123] = v4;
  OUTLINED_FUNCTION_18_2(v4);
  v1[124] = v5;
  v1[125] = OUTLINED_FUNCTION_26_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA0, &unk_1CFD4BD68);
  v1[126] = v6;
  OUTLINED_FUNCTION_6_2(v6);
  v1[127] = OUTLINED_FUNCTION_130();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  OUTLINED_FUNCTION_6_2(v7);
  v1[132] = OUTLINED_FUNCTION_26_0();
  v8 = type metadata accessor for SummarizableItem(0);
  v1[133] = v8;
  OUTLINED_FUNCTION_18_2(v8);
  v1[134] = v9;
  v1[135] = OUTLINED_FUNCTION_130();
  v1[136] = swift_task_alloc();
  v10 = type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
  v1[137] = v10;
  OUTLINED_FUNCTION_6_2(v10);
  v1[138] = OUTLINED_FUNCTION_26_0();
  v11 = type metadata accessor for MailEntity(0);
  OUTLINED_FUNCTION_18_2(v11);
  v1[139] = v12;
  v1[140] = OUTLINED_FUNCTION_130();
  v1[141] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D98, &unk_1CFD50A10);
  v1[142] = v13;
  OUTLINED_FUNCTION_6_2(v13);
  v1[143] = OUTLINED_FUNCTION_130();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v14 = sub_1CFD48BB8();
  v1[149] = v14;
  OUTLINED_FUNCTION_18_2(v14);
  v1[150] = v15;
  v1[151] = OUTLINED_FUNCTION_26_0();
  v16 = type metadata accessor for EntityAttachment(0);
  v1[152] = v16;
  OUTLINED_FUNCTION_18_2(v16);
  v1[153] = v17;
  v1[154] = OUTLINED_FUNCTION_130();
  v1[155] = swift_task_alloc();
  v18 = type metadata accessor for NotificationEntity(0);
  v1[156] = v18;
  OUTLINED_FUNCTION_18_2(v18);
  v1[157] = v19;
  v1[158] = OUTLINED_FUNCTION_130();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EC0, &unk_1CFD4BF60);
  OUTLINED_FUNCTION_6_2(v20);
  v1[162] = OUTLINED_FUNCTION_26_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
  v1[163] = v21;
  OUTLINED_FUNCTION_6_2(v21);
  v1[164] = OUTLINED_FUNCTION_130();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v22 = type metadata accessor for ModelInputContentKind(0);
  v1[172] = v22;
  OUTLINED_FUNCTION_6_2(v22);
  v1[173] = OUTLINED_FUNCTION_26_0();
  v23 = type metadata accessor for SummarizationFeedback.UIKind(0);
  v1[174] = v23;
  OUTLINED_FUNCTION_6_2(v23);
  v1[175] = OUTLINED_FUNCTION_130();
  v1[176] = swift_task_alloc();
  v1[177] = swift_task_alloc();
  v1[178] = swift_task_alloc();
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v1[181] = swift_task_alloc();
  v24 = type metadata accessor for SummarizationFeedback(0);
  v1[182] = v24;
  OUTLINED_FUNCTION_6_2(v24);
  v1[183] = OUTLINED_FUNCTION_130();
  v1[184] = swift_task_alloc();
  v25 = sub_1CFD48E38();
  v1[185] = v25;
  OUTLINED_FUNCTION_18_2(v25);
  v1[186] = v26;
  v1[187] = OUTLINED_FUNCTION_130();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v1[190] = swift_task_alloc();
  v1[191] = swift_task_alloc();
  v1[192] = swift_task_alloc();
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v27);
}

uint64_t sub_1CFCF433C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_187();
  v13 = *(v12 + 1488);
  v14 = sub_1CFD08CC4();
  *(v12 + 1592) = v14;
  v15 = *(v13 + 16);
  *(v12 + 1600) = v15;
  *(v12 + 1608) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16 = OUTLINED_FUNCTION_71();
  v15(v16);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_140();
  sub_1CFCFFF3C();
  v17 = sub_1CFD48E18();
  v18 = sub_1CFD492F8();
  v19 = OUTLINED_FUNCTION_194(v18);
  v20 = *(v12 + 1584);
  v21 = *(v12 + 1488);
  v22 = *(v12 + 1480);
  v23 = *(v12 + 1472);
  v236 = v15;
  v239 = v14;
  if (v19)
  {
    v24 = swift_slowAlloc();
    v231 = v22;
    v25 = swift_slowAlloc();
    *&v242 = v25;
    *v24 = 136315138;
    OUTLINED_FUNCTION_12_2();
    sub_1CFCFFF3C();
    v26 = sub_1CFD48FF8();
    v28 = v27;
    OUTLINED_FUNCTION_26_1();
    sub_1CFCF0B10(v23, v29);
    v30 = sub_1CFCFE9A4(v26, v28, &v242);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1CFCD7000, v17, v18, "SummarizationFeedbackClient: Starting request to send feedback: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_121();

    v31 = *(v21 + 8);
    v31(v20, v231);
  }

  else
  {

    OUTLINED_FUNCTION_26_1();
    sub_1CFCF0B10(v23, v32);
    v31 = *(v21 + 8);
    v31(v20, v22);
  }

  *(v12 + 860) = *(*(v12 + 1456) + 24);
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_71();
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_51_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *(v12 + 1688) = *(*(v12 + 1440) + 8);
      type metadata accessor for ModelInputContentBuilderClient();
      *(v12 + 1696) = ModelInputContentBuilderClient.__allocating_init()();
      *(v12 + 840) = 0u;
      *(v12 + 856) = 0;
      OUTLINED_FUNCTION_181();
      swift_task_alloc();
      OUTLINED_FUNCTION_19_1();
      *(v12 + 1704) = v64;
      *v64 = v65;
      v64[1] = sub_1CFCF8AB0;
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_52_0();

      __asm { BRAA            X4, X16 }

      return result;
    case 2u:
    case 3u:
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v33, v34);
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_71();
      sub_1CFCFFF3C();
      OUTLINED_FUNCTION_51_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        *(v12 + 1640) = *(*(v12 + 1432) + 8);
        type metadata accessor for ModelInputContentBuilderClient();
        *(v12 + 1648) = ModelInputContentBuilderClient.__allocating_init()();
        *(v12 + 888) = 0u;
        *(v12 + 904) = 0;
        OUTLINED_FUNCTION_181();
        swift_task_alloc();
        OUTLINED_FUNCTION_19_1();
        *(v12 + 1656) = v68;
        *v68 = v69;
        v68[1] = sub_1CFCF737C;
        OUTLINED_FUNCTION_138();
        OUTLINED_FUNCTION_52_0();

        __asm { BRAA            X4, X16 }
      }

      if (EnumCaseMultiPayload == 2)
      {
        *(v12 + 1616) = *(*(v12 + 1432) + 8);
        type metadata accessor for ModelInputContentBuilderClient();
        *(v12 + 1624) = ModelInputContentBuilderClient.__allocating_init()();
        *(v12 + 912) = 0u;
        *(v12 + 928) = 0;
        OUTLINED_FUNCTION_181();
        swift_task_alloc();
        OUTLINED_FUNCTION_19_1();
        *(v12 + 1632) = v36;
        *v36 = v37;
        v36[1] = sub_1CFCF5BA8;
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_52_0();

        __asm { BRAA            X4, X16 }
      }

      (v236)(*(v12 + 1576), v239, *(v12 + 1480));
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_51_0();
      sub_1CFCFFF3C();
      v72 = sub_1CFD48E18();
      v73 = sub_1CFD492E8();
      v74 = OUTLINED_FUNCTION_194(v73);
      v75 = *(v12 + 1576);
      v76 = *(v12 + 1480);
      v77 = *(v12 + 1448);
      v78 = *(v12 + 1424);
      if (v74)
      {
        v238 = *(v12 + 1576);
        v79 = swift_slowAlloc();
        v235 = v76;
        v80 = swift_slowAlloc();
        *&v242 = v80;
        *v79 = 136315138;
        OUTLINED_FUNCTION_1_5();
        sub_1CFCFFF3C();
        OUTLINED_FUNCTION_157();
        sub_1CFD48FF8();
        sub_1CFCF0B10(v78, type metadata accessor for SummarizationFeedback.UIKind);
        v81 = OUTLINED_FUNCTION_71();
        v84 = sub_1CFCFE9A4(v81, v82, v83);

        *(v79 + 4) = v84;
        _os_log_impl(&dword_1CFCD7000, v72, v73, "Programming error. Hit unexpected case in switch: %s. Unable to send feedback.", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_121();

        v31(v238, v235);
        v85 = v77;
        v86 = type metadata accessor for SummarizationFeedback.UIKind;
      }

      else
      {

        sub_1CFCF0B10(v78, type metadata accessor for SummarizationFeedback.UIKind);
        v31(v75, v76);
        v85 = OUTLINED_FUNCTION_27();
      }

      sub_1CFCF0B10(v85, v86);
      v102 = *(v12 + 1432);
      goto LABEL_99;
    case 4u:
      v40 = *(v12 + 1104);
      v41 = v12;
      v42 = *(v12 + 952);
      sub_1CFCFFDE8();
      OUTLINED_FUNCTION_71();
      swift_storeEnumTagMultiPayload();
      v43 = *v40;
      v44 = *(*v40 + 16);
      v233 = *v42;
      v234 = v42[1];
      result = sub_1CFCF0A3C();
      v232 = result;
      v46 = MEMORY[0x1E69E7CC0];
      v237 = v44;
      v240 = v41;
      if (v44)
      {
        v47 = v41[134];
        v48 = v41[133];
        *&v242 = MEMORY[0x1E69E7CC0];
        sub_1CFCFF25C(0, v44, 0);
        v49 = v242;
        OUTLINED_FUNCTION_43_1();
        v230 = v43;
        v51 = v43 + v50;
        v52 = *(v47 + 72);
        v53 = v41;
        do
        {
          v54 = v53[136];
          OUTLINED_FUNCTION_84();
          sub_1CFCFFF3C();
          if (*(v54 + *(v48 + 48) + 8))
          {
            v55 = sub_1CFD49048();
          }

          else
          {
            v55 = 0;
          }

          result = OUTLINED_FUNCTION_110(v53[136]);
          *&v242 = v49;
          v57 = *(v49 + 16);
          v56 = *(v49 + 24);
          v58 = v57 + 1;
          if (v57 >= v56 >> 1)
          {
            v59 = OUTLINED_FUNCTION_72(v56);
            result = sub_1CFCFF25C(v59, v57 + 1, 1);
            v49 = v242;
          }

          *(v49 + 16) = v58;
          *(v49 + 8 * v57 + 32) = v55;
          v51 += v52;
          --v44;
        }

        while (v44);
        v43 = v230;
      }

      else
      {
        v58 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v58)
        {

          v87 = 0;
          v53 = v41;
          goto LABEL_47;
        }

        v49 = MEMORY[0x1E69E7CC0];
        v53 = v41;
      }

      v87 = 0;
      v88 = 32;
      break;
    default:
      *(v12 + 1664) = *(*(v12 + 1440) + 8);
      type metadata accessor for ModelInputContentBuilderClient();
      *(v12 + 1672) = ModelInputContentBuilderClient.__allocating_init()();
      *(v12 + 864) = 0u;
      *(v12 + 880) = 0;
      OUTLINED_FUNCTION_181();
      swift_task_alloc();
      OUTLINED_FUNCTION_19_1();
      *(v12 + 1680) = v60;
      *v60 = v61;
      v60[1] = sub_1CFCF7498;
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_52_0();

      __asm { BRAA            X4, X16 }

      return result;
  }

  do
  {
    v89 = *(v49 + v88);
    v90 = __OFADD__(v87, v89);
    v87 += v89;
    if (v90)
    {
      __break(1u);
      goto LABEL_117;
    }

    v88 += 8;
    --v58;
  }

  while (v58);

  v91 = v237;
  if (v237)
  {
    v92 = v53[135];
    v93 = v53[134];
    *&v242 = v46;
    sub_1CFCFF25C(0, v237, 0);
    v46 = v242;
    OUTLINED_FUNCTION_43_1();
    v95 = v43 + v94;
    v96 = *(v93 + 72);
    do
    {
      OUTLINED_FUNCTION_84();
      sub_1CFCFFF3C();
      if (*(v92 + 40))
      {
        v97 = sub_1CFD49048();
      }

      else
      {
        v97 = 0;
      }

      result = OUTLINED_FUNCTION_110(v240[135]);
      *&v242 = v46;
      v99 = *(v46 + 16);
      v98 = *(v46 + 24);
      v100 = v99 + 1;
      if (v99 >= v98 >> 1)
      {
        v101 = OUTLINED_FUNCTION_72(v98);
        result = sub_1CFCFF25C(v101, v99 + 1, 1);
        v46 = v242;
      }

      *(v46 + 16) = v100;
      *(v46 + 8 * v99 + 32) = v97;
      v95 += v96;
      --v91;
    }

    while (v91);
    v53 = v240;
    goto LABEL_48;
  }

LABEL_47:
  v100 = *(v46 + 16);
  if (v100)
  {
LABEL_48:
    v103 = 0;
    v104 = 32;
    while (1)
    {
      v105 = *(v46 + v104);
      v90 = __OFADD__(v103, v105);
      v103 += v105;
      if (v90)
      {
        break;
      }

      v104 += 8;
      if (!--v100)
      {
        goto LABEL_51;
      }
    }

LABEL_117:
    __break(1u);
    return result;
  }

  v103 = 0;
LABEL_51:
  v106 = v53;

  type metadata accessor for SummarizationResponse(0);
  sub_1CFD02140();
  sub_1CFD48BD8();
  v107 = OUTLINED_FUNCTION_98();
  if (__swift_getEnumTagSinglePayload(v107, 1, v46) == 1)
  {
    sub_1CFCE3050(v53[132], &qword_1EC4F2EB8, &unk_1CFD4BF50);
    v108 = 0;
  }

  else
  {
    v109 = v53[151];
    v110 = v53[150];
    v111 = v106[149];
    sub_1CFD48B98();
    v112 = OUTLINED_FUNCTION_183();
    v113(v112);
    v108 = sub_1CFD48BA8();
    (*(v110 + 8))(v109, v111);
  }

  v114 = v106;
  v115 = v106[138];
  v242 = xmmword_1CFD4BE30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2ED0, &unk_1CFD4BF90);
  v116 = sub_1CFD26F60();
  OUTLINED_FUNCTION_2_5();
  sub_1CFCF0B10(v115, v117);
  OUTLINED_FUNCTION_144();
  *(v106 + 42) = 0u;
  v106[86] = v237;
  *(v106 + 696) = 0;
  v106[88] = v233;
  *(v106 + 712) = 0;
  v106[90] = v234;
  *(v106 + 364) = 512;
  v106[92] = v232;
  *(v106 + 744) = 0;
  v106[94] = v87;
  *(v106 + 760) = v241;
  v106[96] = 0;
  *(v106 + 776) = 1;
  v106[98] = v103;
  *(v106 + 792) = 0;
  v106[100] = 0;
  *(v106 + 808) = 0;
  v106[102] = v108;
  *(v106 + 824) = 0;
  v106[104] = v116;
  *(v106 + 107) = 0u;
  memcpy(v106 + 63, v106 + 84, 0xA8uLL);
  v118 = sub_1CFD48F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FE0, &qword_1CFD4D040);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_2(inited, xmmword_1CFD4BE40);
  v120 = v114[64];
  if (v120)
  {
    v121 = v114[63];
    sub_1CFD02070(0, &qword_1EC4F2FF0, 0x1E696AEC0);
    sub_1CFD020B0((v114 + 63), (v114 + 42));
    sub_1CFCF38E8(v121, v120);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  OUTLINED_FUNCTION_104();
  inited[3].n128_u64[0] = v122;
  inited[3].n128_u64[1] = v123;
  inited[4].n128_u64[0] = 0xE500000000000000;
  if (v114[66])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_60_0();
  inited[4].n128_u64[1] = v124;
  inited[5].n128_u64[0] = v125;
  inited[5].n128_u64[1] = 0xE700000000000000;
  if (v114[68])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_59_0();
  inited[6].n128_u64[0] = v126;
  inited[6].n128_u64[1] = v127;
  inited[7].n128_u64[0] = 0xE800000000000000;
  if (v114[70])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_58_0();
  inited[7].n128_u64[1] = v128;
  inited[8].n128_u64[0] = v129;
  inited[8].n128_u64[1] = 0xE800000000000000;
  v130 = *(v114 + 561);
  if (v130 == 2)
  {
    v131 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v131 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  inited[9].n128_u64[0] = v131;
  inited[9].n128_u64[1] = 1684957547;
  inited[10].n128_u64[0] = 0xE400000000000000;
  if (v114[72])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_56_0();
  inited[10].n128_u64[1] = v132;
  inited[11].n128_u64[0] = v133;
  OUTLINED_FUNCTION_54_0();
  inited[11].n128_u64[1] = v134;
  if (v114[74])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[12].n128_u64[0] = v135;
  inited[12].n128_u64[1] = 0xD000000000000012;
  inited[13].n128_u64[0] = v136;
  if (v114[76])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_55_0();
  inited[13].n128_u64[1] = v137;
  inited[14].n128_u64[0] = v138;
  OUTLINED_FUNCTION_53_0();
  inited[14].n128_u64[1] = v139;
  if (v114[78])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[15].n128_u64[0] = v140;
  inited[15].n128_u64[1] = 0xD000000000000011;
  inited[16].n128_u64[0] = v141;
  if (v114[80])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[16].n128_u64[1] = v142;
  inited[17].n128_u64[0] = 0xD000000000000014;
  inited[17].n128_u64[1] = v143;
  if (v114[82])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  v144 = v114[182];
  v145 = v114[120];
  v146 = v114[119];
  OUTLINED_FUNCTION_57_0();
  inited[18].n128_u64[0] = v147;
  inited[18].n128_u64[1] = v148;
  OUTLINED_FUNCTION_62_0();
  inited[19].n128_u64[0] = v149;
  inited[19].n128_u64[1] = OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1CFD02070(0, &qword_1EC4F2FE8, 0x1E69E58C0);
  sub_1CFD48EC8();
  v150 = sub_1CFD48EB8();

  OUTLINED_FUNCTION_27();
  AnalyticsSendEvent();

  sub_1CFD002C8((v114 + 84));
  *&v242 = sub_1CFCFEF14(884);
  *(&v242 + 1) = v151;
  v152 = MEMORY[0x1D3873940](0xD00000000000010ALL, 0x80000001CFD5DA50);
  v114[117] = (*(*v145 + 104))(v152);
  OUTLINED_FUNCTION_51_0();
  v153 = sub_1CFD49648();
  MEMORY[0x1D3873940](v153);

  v154 = MEMORY[0x1D3873940](0xD000000000000054, 0x80000001CFD5DB60);
  v114[118] = (*(*v145 + 128))(v154);
  OUTLINED_FUNCTION_51_0();
  v155 = sub_1CFD49648();
  MEMORY[0x1D3873940](v155);

  OUTLINED_FUNCTION_101();
  v156 = *(&v242 + 1);
  v114[216] = v242;
  v114[217] = v156;
  v157 = *(v144 + 28);
  *(v114 + 221) = v157;
  if (*(v146 + v157) == 1)
  {
    v158 = v114[176];
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      OUTLINED_FUNCTION_123();
      v160 = *(v159 + 1568);
      v161 = v240[176];

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v161, v162);
      v163 = OUTLINED_FUNCTION_33_2();
      MEMORY[0xD000000000000010](v163);
      v102 = v160;
      v164 = sub_1CFD48E18();
      v165 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v165);
      OUTLINED_FUNCTION_38_1();
      if (!v166)
      {
        goto LABEL_98;
      }

      v167 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v167);
      v170 = "Disclaimer not supported for mailThread. Not continuing with feedback.";
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v180, v181);
    v182 = v240[200];
    v158 = v240[199];
    v183 = v240[191];

    v184 = OUTLINED_FUNCTION_33_2();
    v182(v184);
    v102 = v183;
    v164 = sub_1CFD48E18();
    v185 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v185);
    OUTLINED_FUNCTION_38_1();
    if (!v186)
    {
      goto LABEL_98;
    }
  }

  else
  {
    OUTLINED_FUNCTION_149();
    if ((v171 & 1) == 0)
    {
      v199 = v114[200];
      v200 = v114[199];
      v201 = v114[190];
      v202 = v114[185];

      v199(v201, v200, v202);
      sub_1CFD48E18();
      v203 = sub_1CFD492F8();
      if (OUTLINED_FUNCTION_95(v203))
      {
        v204 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_119(v204);
        OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v205, v206, "Submitting feedback to FeedbackFramework");
        OUTLINED_FUNCTION_86();
      }

      OUTLINED_FUNCTION_164();
      v207 = OUTLINED_FUNCTION_51_0();
      v208(v207);
      v209 = swift_task_alloc();
      v240[220] = v209;
      *v209 = v240;
      OUTLINED_FUNCTION_4_3(v209);
      OUTLINED_FUNCTION_99(v240[119]);
      OUTLINED_FUNCTION_52_0();

      return sub_1CFCFC0B8();
    }

    v158 = v114[174];
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      OUTLINED_FUNCTION_123();
      v173 = *(v172 + 1512);
      v174 = v240[175];

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v174, v175);
      v176 = OUTLINED_FUNCTION_33_2();
      MEMORY[0xD000000000000010](v176);
      v102 = v173;
      v164 = sub_1CFD48E18();
      v177 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v177);
      OUTLINED_FUNCTION_38_1();
      if (!v178)
      {
        goto LABEL_98;
      }

      v179 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v179);
      v170 = "TTR flow not supported for mailThread. Not continuing with feedback.";
      goto LABEL_97;
    }

    v211 = v114;
    v212 = v114[215];
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v213, v214);
    v215 = v211[200];
    if (v212)
    {
      OUTLINED_FUNCTION_70();
      v215();
      sub_1CFD48E18();
      v216 = sub_1CFD492F8();
      if (OUTLINED_FUNCTION_109_0(v216))
      {
        v217 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_134(v217);
        OUTLINED_FUNCTION_50_0();
        _os_log_impl(v218, v219, v220, v221, v222, 2u);
        OUTLINED_FUNCTION_94();
      }

      OUTLINED_FUNCTION_163();
      v223 = OUTLINED_FUNCTION_106();
      v224(v223);
      v225 = swift_task_alloc();
      v211[221] = v225;
      *v225 = v211;
      OUTLINED_FUNCTION_5_3(v225);
      OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_52_0();

      return sub_1CFCFC664();
    }

    v227 = OUTLINED_FUNCTION_39_0();
    (v215)(v227);
    v164 = sub_1CFD48E18();
    v228 = sub_1CFD492E8();
    v229 = OUTLINED_FUNCTION_49_0(v228);
    v102 = v211[181];
    v158 = v211[173];
    if (!v229)
    {
      goto LABEL_98;
    }
  }

  v187 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_66(v187);
  v170 = "Missing personal content. Not continuing with feedback.";
LABEL_97:
  OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v168, v169, v170);
  OUTLINED_FUNCTION_77();
LABEL_98:

  v188 = OUTLINED_FUNCTION_107();
  v189(v188);
  OUTLINED_FUNCTION_9_5();
  sub_1CFCF0B10(v158, v190);
LABEL_99:
  sub_1CFCF0B10(v102, type metadata accessor for SummarizationFeedback.UIKind);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_45_1();

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_52_0();

  return v192(v191, v192, v193, v194, v195, v196, v197, v198, a9, a10, a11, a12);
}

uint64_t sub_1CFCF5BA8()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCF5CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_187();
  object = v12[85]._object;
  countAndFlagsBits = v12[81]._countAndFlagsBits;
  v303 = v12[78]._countAndFlagsBits;
  v14 = v12[59]._object;
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_76();
  sub_1CFD020E8();
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  sub_1CFCFAEC8(sub_1CFD00324, v15);
  v17 = v16;

  v18 = v12;

  object[8] = v17;
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  v19 = ModelContentInput.feedbackString()();
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v20, v21, v22);
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  sub_1CFD21098();
  v24 = v23;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v25, v26, v27);
  sub_1CFCFB400(v24, countAndFlagsBits);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(countAndFlagsBits, 1, v303);
  v29 = v12[81]._countAndFlagsBits;
  if (EnumTagSinglePayload == 1)
  {
    sub_1CFCE3050(v12[81]._countAndFlagsBits, &qword_1EC4F2EC0, &unk_1CFD4BF60);
    v300 = 0;
    v301 = 0;
  }

  else
  {
    v30 = (v29 + *(v12[78]._countAndFlagsBits + 32));
    v300 = v30[1];
    v301 = *v30;

    OUTLINED_FUNCTION_3_4();
    sub_1CFCF0B10(v29, v31);
  }

  v32 = v12[85]._object;
  v33 = v12[81]._object;
  v34 = v12[59]._object;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  sub_1CFD21098();
  v36 = v35;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v37, v38, v39);
  v297 = *(v36 + 16);

  v296 = *v34;
  v298 = v34[1];
  v299 = v32[v33[19]];
  v295 = sub_1CFCF0A3C();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v41 = v40;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v42, v43, v44);
  v45 = *(v41 + 16);
  if (v45)
  {
    v46 = v12[78]._object;
    v47 = v12[78]._countAndFlagsBits;
    *&v312 = MEMORY[0x1E69E7CC0];
    sub_1CFCFF25C(0, v45, 0);
    v48 = v312;
    OUTLINED_FUNCTION_73();
    v50 = v41 + v49;
    v51 = v46[9];
    do
    {
      v52 = v18[80]._object;
      OUTLINED_FUNCTION_8_4();
      sub_1CFCFFF3C();
      if (*&v52[*(v47 + 36) + 8])
      {
        v53 = sub_1CFD49048();
      }

      else
      {
        v53 = 0;
      }

      OUTLINED_FUNCTION_3_4();
      sub_1CFCF0B10(v54, v55);
      *&v312 = v48;
      v57 = v48[2];
      v56 = v48[3];
      if (v57 >= v56 >> 1)
      {
        v58 = OUTLINED_FUNCTION_17_4(v56);
        sub_1CFCFF25C(v58, v59, v60);
        v48 = v312;
      }

      v48[2] = v57 + 1;
      v48[v57 + 4] = v53;
      v50 += v51;
      --v45;
    }

    while (v45);
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  v62 = v48[2];
  if (v62)
  {
    v63 = 0;
    v64 = v48 + 4;
    while (1)
    {
      v65 = *v64++;
      v66 = __OFADD__(v63, v65);
      v63 += v65;
      if (v66)
      {
        break;
      }

      if (!--v62)
      {
        goto LABEL_20;
      }
    }

LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v63 = 0;
LABEL_20:
  v294 = v63;

  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v68 = v67;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v69, v70, v71);
  if (*(v68 + 16))
  {
    v72 = v18[78]._countAndFlagsBits;
    OUTLINED_FUNCTION_88(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_43_1();
    do
    {
      v73 = v18[80]._countAndFlagsBits;
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_157();
      sub_1CFCFFF3C();
      if (*(v73 + *(v72 + 40) + 8))
      {
        v74 = sub_1CFD49048();
      }

      else
      {
        v74 = 0;
      }

      OUTLINED_FUNCTION_3_4();
      sub_1CFCF0B10(v75, v76);
      v77 = v312;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = OUTLINED_FUNCTION_61_0();
        sub_1CFCFF25C(v78, v79, v80);
        v77 = v312;
      }

      v82 = v77[2];
      v81 = v77[3];
      if (v82 >= v81 >> 1)
      {
        v84 = OUTLINED_FUNCTION_17_4(v81);
        sub_1CFCFF25C(v84, v85, v86);
        v77 = v312;
      }

      v77[2] = v82 + 1;
      v77[v82 + 4] = v74;
      OUTLINED_FUNCTION_174();
    }

    while (!v83);
  }

  else
  {

    v77 = MEMORY[0x1E69E7CC0];
  }

  v87 = v77[2];
  if (v87)
  {
    v88 = 0;
    v89 = v77 + 4;
    while (1)
    {
      v90 = *v89++;
      v66 = __OFADD__(v88, v90);
      v88 += v90;
      if (v66)
      {
        break;
      }

      if (!--v87)
      {
        goto LABEL_39;
      }
    }

LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    return result;
  }

  v88 = 0;
LABEL_39:

  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v92 = v91;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v93, v94, v95);
  v304 = v18;
  if (*(v92 + 16))
  {
    v96 = v18[78]._countAndFlagsBits;
    OUTLINED_FUNCTION_88(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_43_1();
    do
    {
      v97 = v18[79]._object;
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_157();
      sub_1CFCFFF3C();
      if (*&v97[*(v96 + 44) + 8])
      {
        v98 = sub_1CFD49048();
      }

      else
      {
        v98 = 0;
      }

      OUTLINED_FUNCTION_3_4();
      sub_1CFCF0B10(v99, v100);
      v101 = v312;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = OUTLINED_FUNCTION_61_0();
        sub_1CFCFF25C(v102, v103, v104);
        v101 = v312;
      }

      v106 = v101[2];
      v105 = v101[3];
      if (v106 >= v105 >> 1)
      {
        v107 = OUTLINED_FUNCTION_17_4(v105);
        sub_1CFCFF25C(v107, v108, v109);
        v101 = v312;
      }

      v101[2] = v106 + 1;
      v101[v106 + 4] = v98;
      OUTLINED_FUNCTION_174();
      v18 = v304;
    }

    while (!v83);
  }

  else
  {

    v101 = MEMORY[0x1E69E7CC0];
  }

  v110 = v101[2];
  if (v110)
  {
    v111 = 0;
    v112 = v101 + 4;
    while (1)
    {
      v113 = *v112++;
      v66 = __OFADD__(v111, v113);
      v111 += v113;
      if (v66)
      {
        goto LABEL_160;
      }

      if (!--v110)
      {
        goto LABEL_58;
      }
    }
  }

  v111 = 0;
LABEL_58:

  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v115 = v114;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v116, v117, v118);
  v119 = *(v115 + 16);
  if (v119)
  {
    v120 = v18[78]._object;
    countAndFlagsBits = v18[78]._countAndFlagsBits;
    *&v312 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_25_2();
    sub_1CFCFE374(v119, v121);
    OUTLINED_FUNCTION_43_1();
    v123 = v115 + v122;
    v124 = v120[9];
    v125 = v312;
    do
    {
      v126 = v304[79]._countAndFlagsBits;
      OUTLINED_FUNCTION_8_4();
      sub_1CFCFFF3C();
      v127 = *(v126 + *(countAndFlagsBits + 76));

      OUTLINED_FUNCTION_3_4();
      sub_1CFCF0B10(v126, v128);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = OUTLINED_FUNCTION_61_0();
        sub_1CFCFF23C(v129, v130, v131);
        v125 = v312;
      }

      v133 = *(v125 + 16);
      v132 = *(v125 + 24);
      if (v133 >= v132 >> 1)
      {
        v134 = OUTLINED_FUNCTION_17_4(v132);
        sub_1CFCFF23C(v134, v135, v136);
        v125 = v312;
      }

      *(v125 + 16) = v133 + 1;
      *(v125 + 8 * v133 + 32) = v127;
      v123 += v124;
      --v119;
    }

    while (v119);

    v18 = v304;
  }

  else
  {

    v125 = MEMORY[0x1E69E7CC0];
  }

  v137 = 0;
  v138 = *(v125 + 16);
  v139 = MEMORY[0x1E69E7CC0];
  while (v138 != v137)
  {
    if (v137 >= *(v125 + 16))
    {
      __break(1u);
      goto LABEL_158;
    }

    v140 = v137 + 1;
    *&v312 = v139;

    result = sub_1CFCFF8DC(v141);
    v137 = v140;
  }

  v142 = *(v139 + 16);
  if (v142)
  {
    v143 = v18[77]._object + *(v18[76]._countAndFlagsBits + 32);
    OUTLINED_FUNCTION_135();
    v144 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_24_2();
      sub_1CFCFFF3C();
      v145 = v304[77]._object;
      if (*(v143 + 8))
      {
        v146 = sub_1CFD49048();
        OUTLINED_FUNCTION_7_4();
        sub_1CFCF0B10(v145, v147);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = OUTLINED_FUNCTION_118();
          v144 = sub_1CFCFE50C(v151, v152, v153, v144);
        }

        v149 = *(v144 + 2);
        v148 = *(v144 + 3);
        if (v149 >= v148 >> 1)
        {
          OUTLINED_FUNCTION_72(v148);
          OUTLINED_FUNCTION_93();
          v144 = sub_1CFCFE50C(v154, v155, v156, v144);
        }

        *(v144 + 2) = v149 + 1;
        *&v144[8 * v149 + 32] = v146;
      }

      else
      {
        OUTLINED_FUNCTION_7_4();
        sub_1CFCF0B10(v145, v150);
      }

      v125 += countAndFlagsBits;
      --v142;
    }

    while (v142);

    v18 = v304;
  }

  else
  {

    v144 = MEMORY[0x1E69E7CC0];
  }

  v157 = *(v144 + 2);
  if (v157)
  {
    v158 = 0;
    v159 = (v144 + 32);
    while (1)
    {
      v160 = *v159++;
      v66 = __OFADD__(v158, v160);
      v158 += v160;
      if (v66)
      {
        goto LABEL_161;
      }

      if (!--v157)
      {
        goto LABEL_89;
      }
    }
  }

  v158 = 0;
LABEL_89:
  v161 = v18[85]._object;
  v162 = v18[81]._object;

  v163 = v162[17];
  v164 = sub_1CFD48BD8();
  v165 = __swift_getEnumTagSinglePayload(v161 + v163, 1, v164);
  v166 = 0;
  if (!v165)
  {
    v167 = v18[75]._object;
    v168 = v304[75]._countAndFlagsBits;
    v169 = v304[74]._object;
    sub_1CFD48B98();
    v166 = sub_1CFD48BA8();
    (*(v168 + 8))(v167, v169);
    v18 = v304;
  }

  v170 = v18[85]._object;
  v312 = *(v170 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2ED8, &unk_1CFD53AD0);
  sub_1CFD26F60();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_144();
  sub_1CFCE3050(v170, &qword_1EC4F2DA8, qword_1CFD4BD78);
  v18[42]._countAndFlagsBits = v301;
  v18[42]._object = v300;
  v18[43]._countAndFlagsBits = v297;
  LOBYTE(v18[43]._object) = v305;
  v18[44]._countAndFlagsBits = v296;
  LOBYTE(v18[44]._object) = v306;
  v18[45]._countAndFlagsBits = v298;
  LOBYTE(v18[45]._object) = v307;
  BYTE1(v18[45]._object) = v299;
  v18[46]._countAndFlagsBits = v295;
  LOBYTE(v18[46]._object) = v308;
  v18[47]._countAndFlagsBits = v294;
  LOBYTE(v18[47]._object) = v309;
  v18[48]._countAndFlagsBits = v88;
  LOBYTE(v18[48]._object) = v310;
  v18[49]._countAndFlagsBits = v111;
  LOBYTE(v18[49]._object) = v311;
  v18[50]._countAndFlagsBits = v158;
  LOBYTE(v18[50]._object) = 0;
  v18[51]._countAndFlagsBits = v166;
  LOBYTE(v18[51]._object) = v165 != 0;
  v18[52]._countAndFlagsBits = &v312;
  v18[107] = v19;
  memcpy(&v18[31]._object, &v18[42], 0xA8uLL);
  v171 = sub_1CFD48F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FE0, &qword_1CFD4D040);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_2(inited, xmmword_1CFD4BE40);
  if (v18[32]._countAndFlagsBits)
  {
    sub_1CFD02070(0, &qword_1EC4F2FF0, 0x1E696AEC0);
    sub_1CFD020B0(&v18[31]._object, &v18[21]);
    v173 = OUTLINED_FUNCTION_27();
    sub_1CFCF38E8(v173, v174);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  OUTLINED_FUNCTION_104();
  inited[3].n128_u64[0] = v175;
  inited[3].n128_u64[1] = v176;
  inited[4].n128_u64[0] = 0xE500000000000000;
  if (v18[33]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_60_0();
  inited[4].n128_u64[1] = v177;
  inited[5].n128_u64[0] = v178;
  inited[5].n128_u64[1] = 0xE700000000000000;
  if (v18[34]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_59_0();
  inited[6].n128_u64[0] = v179;
  inited[6].n128_u64[1] = v180;
  inited[7].n128_u64[0] = 0xE800000000000000;
  if (v18[35]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_58_0();
  inited[7].n128_u64[1] = v181;
  inited[8].n128_u64[0] = v182;
  inited[8].n128_u64[1] = 0xE800000000000000;
  v183 = BYTE1(v18[35]._countAndFlagsBits);
  if (v183 == 2)
  {
    v184 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v184 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  inited[9].n128_u64[0] = v184;
  inited[9].n128_u64[1] = 1684957547;
  inited[10].n128_u64[0] = 0xE400000000000000;
  if (v18[36]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_56_0();
  inited[10].n128_u64[1] = v185;
  inited[11].n128_u64[0] = v186;
  OUTLINED_FUNCTION_54_0();
  inited[11].n128_u64[1] = v187;
  if (v18[37]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[12].n128_u64[0] = v188;
  inited[12].n128_u64[1] = 0xD000000000000012;
  inited[13].n128_u64[0] = v189;
  if (v18[38]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_55_0();
  inited[13].n128_u64[1] = v190;
  inited[14].n128_u64[0] = v191;
  OUTLINED_FUNCTION_53_0();
  inited[14].n128_u64[1] = v192;
  if (v18[39]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[15].n128_u64[0] = v193;
  inited[15].n128_u64[1] = 0xD000000000000011;
  inited[16].n128_u64[0] = v194;
  if (v18[40]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[16].n128_u64[1] = v195;
  inited[17].n128_u64[0] = 0xD000000000000014;
  inited[17].n128_u64[1] = v196;
  if (v18[41]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  v197 = v18[91]._countAndFlagsBits;
  v198 = v18[60]._countAndFlagsBits;
  v199 = v18[59]._object;
  OUTLINED_FUNCTION_57_0();
  inited[18].n128_u64[0] = v200;
  inited[18].n128_u64[1] = v201;
  OUTLINED_FUNCTION_62_0();
  inited[19].n128_u64[0] = v202;
  inited[19].n128_u64[1] = OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1CFD02070(0, &qword_1EC4F2FE8, 0x1E69E58C0);
  OUTLINED_FUNCTION_44_1();
  sub_1CFD48EC8();
  OUTLINED_FUNCTION_44_1();
  v203 = sub_1CFD48EB8();

  AnalyticsSendEvent();

  sub_1CFD002C8(&v18[42]);
  *&v312 = sub_1CFCFEF14(884);
  *(&v312 + 1) = v204;
  v205 = MEMORY[0x1D3873940](0xD00000000000010ALL, 0x80000001CFD5DA50);
  v18[58]._object = (*(*v198 + 104))(v205);
  OUTLINED_FUNCTION_51_0();
  v206 = sub_1CFD49648();
  MEMORY[0x1D3873940](v206);

  v207 = MEMORY[0x1D3873940](0xD000000000000054, 0x80000001CFD5DB60);
  v18[59]._countAndFlagsBits = (*(*v198 + 128))(v207);
  OUTLINED_FUNCTION_51_0();
  v208 = sub_1CFD49648();
  MEMORY[0x1D3873940](v208);

  OUTLINED_FUNCTION_101();
  v209 = *(&v312 + 1);
  v18[108]._countAndFlagsBits = v312;
  v18[108]._object = v209;
  v210 = *(v197 + 28);
  HIDWORD(v18[55]._countAndFlagsBits) = v210;
  if (v199[v210] == 1)
  {
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v211 = v18[100]._countAndFlagsBits;
      v212 = v18[98]._countAndFlagsBits;
      v213 = v18[88]._countAndFlagsBits;

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v213, v214);
      v215 = OUTLINED_FUNCTION_39_0();
      v211(v215);
      v216 = v212;
      v217 = sub_1CFD48E18();
      v218 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v218);
      OUTLINED_FUNCTION_112();
      if (v219)
      {
        v220 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v220);
        v223 = "Disclaimer not supported for mailThread. Not continuing with feedback.";
LABEL_153:
        OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v221, v222, v223);
        OUTLINED_FUNCTION_77();
        goto LABEL_154;
      }

      goto LABEL_154;
    }

    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v231, v232);
    v233 = v18[100]._countAndFlagsBits;
    v212 = v18[92]._object;
    if (v19._object)
    {
      v234 = OUTLINED_FUNCTION_40_1();
      v233(v234);

      v235 = sub_1CFD48E18();
      v236 = sub_1CFD492F8();
      if (OUTLINED_FUNCTION_95(v236))
      {
        v237 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_119(v237);
        OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v238, v239, "Showing disclaimer.");
        OUTLINED_FUNCTION_86();
      }

      v240 = v18[93]._countAndFlagsBits;

      v18[109]._countAndFlagsBits = *(v240 + 8);
      v241 = OUTLINED_FUNCTION_51_0();
      v242(v241);
      v243 = swift_task_alloc();
      v18[109]._object = v243;
      *v243 = v18;
      OUTLINED_FUNCTION_21_3(v243);
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_52_0();

      return sub_1CFCFB4B8(v244, v245, v246, v247);
    }

    v275 = v18[95]._object;

    v276 = OUTLINED_FUNCTION_40_1();
    v233(v276);
    v216 = v275;
    v217 = sub_1CFD48E18();
    v277 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v277);
LABEL_151:
    OUTLINED_FUNCTION_112();
    if (v280)
    {
      v281 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v281);
      v223 = "Missing personal content. Not continuing with feedback.";
      goto LABEL_153;
    }

    goto LABEL_154;
  }

  if (*(v18[59]._object + v210 + 1))
  {
    v212 = v18[87]._countAndFlagsBits;
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      OUTLINED_FUNCTION_182();
      v224 = v18[94]._object;
      v225 = v18[87]._object;

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v225, v226);
      v227 = OUTLINED_FUNCTION_33_2();
      v198(v227);
      v216 = v224;
      v217 = sub_1CFD48E18();
      v228 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v228);
      OUTLINED_FUNCTION_112();
      if (v229)
      {
        v230 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v230);
        v223 = "TTR flow not supported for mailThread. Not continuing with feedback.";
        goto LABEL_153;
      }

LABEL_154:

      v282 = OUTLINED_FUNCTION_107();
      v283(v282);
      OUTLINED_FUNCTION_9_5();
      sub_1CFCF0B10(v212, v284);
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v216, v285);
      OUTLINED_FUNCTION_45_1();

      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_52_0();

      return v287(v286, v287, v288, v289, v290, v291, v292, v293, a9, a10, a11, a12);
    }

    v259 = v18[107]._object;
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v260, v261);
    v262 = v18[100]._countAndFlagsBits;
    if (!v259)
    {
      v212 = v18[93]._object;

      v278 = OUTLINED_FUNCTION_39_0();
      (v262)(v278);
      v216 = v212;
      v217 = sub_1CFD48E18();
      v279 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v279);
      goto LABEL_151;
    }

    OUTLINED_FUNCTION_70();
    v262();
    v263 = sub_1CFD48E18();
    v264 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_109_0(v264))
    {
      v265 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_134(v265);
      OUTLINED_FUNCTION_50_0();
      _os_log_impl(v266, v267, v268, v269, v270, 2u);
      OUTLINED_FUNCTION_94();
    }

    v271 = OUTLINED_FUNCTION_106();
    v272(v271);
    v273 = swift_task_alloc();
    v18[110]._object = v273;
    *v273 = v18;
    OUTLINED_FUNCTION_5_3(v273);
    OUTLINED_FUNCTION_99(v18[59]._object);
    OUTLINED_FUNCTION_52_0();

    return sub_1CFCFC664();
  }

  else
  {
    OUTLINED_FUNCTION_182();

    v249 = OUTLINED_FUNCTION_68();
    v198(v249);
    v250 = sub_1CFD48E18();
    v251 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_95(v251))
    {
      v252 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_119(v252);
      OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v253, v254, "Submitting feedback to FeedbackFramework");
      OUTLINED_FUNCTION_86();
    }

    v255 = OUTLINED_FUNCTION_51_0();
    v256(v255);
    v257 = swift_task_alloc();
    v18[110]._countAndFlagsBits = v257;
    *v257 = v18;
    OUTLINED_FUNCTION_4_3(v257);
    OUTLINED_FUNCTION_99(v18[59]._object);
    OUTLINED_FUNCTION_52_0();

    return sub_1CFCFC0B8();
  }
}

uint64_t sub_1CFCF737C()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCF7498()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCF75B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_187();
  v13 = v12;
  OUTLINED_FUNCTION_180();
  countAndFlagsBits = v12[74]._countAndFlagsBits;
  object = v12[73]._object;
  v16 = v12[73]._countAndFlagsBits;
  v278 = v12[72]._object;
  v17 = v12[71]._countAndFlagsBits;
  v18 = v12[59]._object;
  v19 = swift_task_alloc();
  *(v19 + 16) = v18;
  sub_1CFCFAEC8(sub_1CFD002F8, v19);
  v21 = v20;

  *(countAndFlagsBits + 64) = v21;
  OUTLINED_FUNCTION_153();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_153();
  v22 = ModelContentInput.feedbackString()();
  OUTLINED_FUNCTION_165(object);
  OUTLINED_FUNCTION_153();
  sub_1CFD21098();
  v24 = v23;
  OUTLINED_FUNCTION_165(v16);
  v274 = *(v24 + 16);

  v273 = *v18;
  v275 = v18[1];
  v276 = *(countAndFlagsBits + *(v17 + 76));
  v272 = sub_1CFCF0A3C();
  OUTLINED_FUNCTION_153();
  sub_1CFD21098();
  v26 = v25;
  OUTLINED_FUNCTION_165(v278);
  v27 = *(v26 + 16);
  v280 = v13;
  if (v27)
  {
    v28 = v13[69]._object;
    v282 = MEMORY[0x1E69E7CC0];
    sub_1CFCFF25C(0, v27, 0);
    v29 = v282;
    OUTLINED_FUNCTION_73();
    v31 = v26 + v30;
    v32 = v28[9];
    do
    {
      v33 = v13[70]._object;
      OUTLINED_FUNCTION_14_3();
      sub_1CFCFFF3C();
      v34 = sub_1CFD49048();
      OUTLINED_FUNCTION_13_3();
      sub_1CFCF0B10(v33, v35);
      v37 = *(v282 + 16);
      v36 = *(v282 + 24);
      if (v37 >= v36 >> 1)
      {
        v38 = OUTLINED_FUNCTION_72(v36);
        sub_1CFCFF25C(v38, v37 + 1, 1);
      }

      *(v282 + 16) = v37 + 1;
      *(v282 + 8 * v37 + 32) = v34;
      v31 += v32;
      --v27;
    }

    while (v27);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v40 = *(v29 + 16);
  if (v40)
  {
    v41 = 0;
    v42 = (v29 + 32);
    while (1)
    {
      v43 = *v42++;
      v44 = __OFADD__(v41, v43);
      v41 += v43;
      if (v44)
      {
        break;
      }

      if (!--v40)
      {
        goto LABEL_14;
      }
    }

LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v41 = 0;
LABEL_14:

  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  sub_1CFD21098();
  v46 = v45;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v47, v48, v49);
  v50 = *(v46 + 16);
  if (v50)
  {
    v281 = MEMORY[0x1E69E7CC0];
    sub_1CFCFF25C(0, v50, 0);
    v51 = v281;
    OUTLINED_FUNCTION_43_1();
    v278 = v46;
    do
    {
      OUTLINED_FUNCTION_14_3();
      sub_1CFCFFF3C();
      MailEntity.Body.text.getter();
      if (v52)
      {
        v53 = sub_1CFD49048();
      }

      else
      {
        v53 = 0;
      }

      v54 = v13;
      OUTLINED_FUNCTION_13_3();
      sub_1CFCF0B10(v55, v56);
      v58 = *(v281 + 16);
      v57 = *(v281 + 24);
      if (v58 >= v57 >> 1)
      {
        OUTLINED_FUNCTION_72(v57);
        OUTLINED_FUNCTION_93();
        sub_1CFCFF25C(v60, v61, v62);
        v54 = v13;
      }

      *(v281 + 16) = v58 + 1;
      *(v281 + 8 * v58 + 32) = v53;
      OUTLINED_FUNCTION_174();
    }

    while (!v59);
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
    v54 = v13;
  }

  v63 = *(v51 + 16);
  if (v63)
  {
    v64 = 0;
    v65 = (v51 + 32);
    while (1)
    {
      v66 = *v65++;
      v44 = __OFADD__(v64, v66);
      v64 += v66;
      if (v44)
      {
        break;
      }

      if (!--v63)
      {
        goto LABEL_31;
      }
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    return result;
  }

  v64 = 0;
LABEL_31:

  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v68 = v67;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v69, v70, v71);
  v72 = *(v68 + 16);
  if (v72)
  {
    v278 = v54[70]._object;
    v283 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_25_2();
    sub_1CFCFE374(v72, v73);
    OUTLINED_FUNCTION_43_1();
    v74 = v283;
    do
    {
      v75 = v54[70]._object;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_157();
      sub_1CFCFFF3C();
      v76 = *(v278 + 232);

      OUTLINED_FUNCTION_13_3();
      sub_1CFCF0B10(v75, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = OUTLINED_FUNCTION_118();
        sub_1CFCFF23C(v78, v79, v80);
        v74 = v283;
      }

      v82 = *(v74 + 16);
      v81 = *(v74 + 24);
      v54 = v280;
      if (v82 >= v81 >> 1)
      {
        OUTLINED_FUNCTION_72(v81);
        OUTLINED_FUNCTION_93();
        sub_1CFCFF23C(v83, v84, v85);
        v54 = v280;
        v74 = v283;
      }

      *(v74 + 16) = v82 + 1;
      *(v74 + 8 * v82 + 32) = v76;
      OUTLINED_FUNCTION_174();
    }

    while (!v59);
  }

  else
  {

    v74 = MEMORY[0x1E69E7CC0];
  }

  v86 = 0;
  v277 = v54 + 42;
  v87 = *(v74 + 16);
  v88 = MEMORY[0x1E69E7CC0];
  while (v87 != v86)
  {
    if (v86 >= *(v74 + 16))
    {
      __break(1u);
      goto LABEL_130;
    }

    v89 = v86 + 1;

    result = sub_1CFCFF8DC(v90);
    v86 = v89;
  }

  v91 = *(v88 + 16);
  if (v91)
  {
    v92 = v280[77]._countAndFlagsBits + *(v280[76]._countAndFlagsBits + 32);
    OUTLINED_FUNCTION_135();
    v93 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_24_2();
      sub_1CFCFFF3C();
      v94 = v280[77]._countAndFlagsBits;
      if (*(v92 + 8))
      {
        v95 = sub_1CFD49048();
        OUTLINED_FUNCTION_7_4();
        sub_1CFCF0B10(v94, v96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = OUTLINED_FUNCTION_118();
          v93 = sub_1CFCFE50C(v100, v101, v102, v93);
        }

        v98 = *(v93 + 2);
        v97 = *(v93 + 3);
        if (v98 >= v97 >> 1)
        {
          OUTLINED_FUNCTION_72(v97);
          OUTLINED_FUNCTION_93();
          v93 = sub_1CFCFE50C(v103, v104, v105, v93);
        }

        *(v93 + 2) = v98 + 1;
        *&v93[8 * v98 + 32] = v95;
      }

      else
      {
        OUTLINED_FUNCTION_7_4();
        sub_1CFCF0B10(v94, v99);
      }

      v72 += v278;
      --v91;
    }

    while (v91);
  }

  else
  {

    v93 = MEMORY[0x1E69E7CC0];
  }

  v106 = *(v93 + 2);
  v107 = v280;
  v108 = 0;
  if (v106)
  {
    v109 = (v93 + 32);
    do
    {
      v110 = *v109++;
      v44 = __OFADD__(v108, v110);
      v108 += v110;
      if (v44)
      {
        goto LABEL_132;
      }
    }

    while (--v106);
  }

  v111 = v280[74]._countAndFlagsBits;
  v112 = v280[71]._countAndFlagsBits;

  v113 = *(v112 + 68);
  v114 = sub_1CFD48BD8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v111 + v113, 1, v114);
  v116 = 0;
  if (!EnumTagSinglePayload)
  {
    v117 = v280[75]._object;
    v118 = v280[75]._countAndFlagsBits;
    v279 = v280[74]._object;
    sub_1CFD48B98();
    v116 = sub_1CFD48BA8();
    (*(v118 + 8))(v117, v279);
  }

  v119 = v280[74]._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2ED0, &unk_1CFD4BF90);
  v120 = sub_1CFD26F60();
  OUTLINED_FUNCTION_144();
  sub_1CFCE3050(v119, &qword_1EC4F2D98, &unk_1CFD50A10);
  v277->_countAndFlagsBits = 0;
  v277->_object = 0;
  v280[43]._countAndFlagsBits = v274;
  LOBYTE(v280[43]._object) = v286;
  v280[44]._countAndFlagsBits = v273;
  LOBYTE(v280[44]._object) = v287;
  v280[45]._countAndFlagsBits = v275;
  LOBYTE(v280[45]._object) = v288;
  BYTE1(v280[45]._object) = v276;
  v280[46]._countAndFlagsBits = v272;
  LOBYTE(v280[46]._object) = 0;
  v280[47]._countAndFlagsBits = v41;
  LOBYTE(v280[47]._object) = 0;
  v280[48]._countAndFlagsBits = 0;
  LOBYTE(v280[48]._object) = 1;
  v280[49]._countAndFlagsBits = v64;
  LOBYTE(v280[49]._object) = 0;
  v280[50]._countAndFlagsBits = v108;
  LOBYTE(v280[50]._object) = 0;
  v280[51]._countAndFlagsBits = v116;
  LOBYTE(v280[51]._object) = EnumTagSinglePayload != 0;
  v280[52]._countAndFlagsBits = v120;
  v280[107] = v22;
  memcpy(&v280[31]._object, v277, 0xA8uLL);
  v121 = sub_1CFD48F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FE0, &qword_1CFD4D040);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_2(inited, xmmword_1CFD4BE40);
  if (v280[32]._countAndFlagsBits)
  {
    sub_1CFD02070(0, &qword_1EC4F2FF0, 0x1E696AEC0);
    sub_1CFD020B0(&v280[31]._object, &v280[21]);
    v123 = OUTLINED_FUNCTION_87();
    sub_1CFCF38E8(v123, v124);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  OUTLINED_FUNCTION_104();
  inited[3].n128_u64[0] = v125;
  inited[3].n128_u64[1] = v126;
  inited[4].n128_u64[0] = 0xE500000000000000;
  if (v280[33]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v127 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v107 = v280;
    [v128 v129];
  }

  OUTLINED_FUNCTION_60_0();
  inited[4].n128_u64[1] = v130;
  inited[5].n128_u64[0] = v131;
  inited[5].n128_u64[1] = 0xE700000000000000;
  if (v107[34]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v132 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v107 = v280;
    [v133 v134];
  }

  OUTLINED_FUNCTION_59_0();
  inited[6].n128_u64[0] = v135;
  inited[6].n128_u64[1] = v136;
  inited[7].n128_u64[0] = 0xE800000000000000;
  if (v107[35]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v137 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v107 = v280;
    [v138 v139];
  }

  OUTLINED_FUNCTION_58_0();
  inited[7].n128_u64[1] = v140;
  inited[8].n128_u64[0] = v141;
  inited[8].n128_u64[1] = 0xE800000000000000;
  v142 = BYTE1(v107[35]._countAndFlagsBits);
  if (v142 == 2)
  {
    v143 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v143 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  OUTLINED_FUNCTION_154(v143);
  v144 = v280;
  if (v280[36]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v145 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v144 = v280;
    [v146 v147];
  }

  OUTLINED_FUNCTION_56_0();
  inited[10].n128_u64[1] = v148;
  inited[11].n128_u64[0] = v149;
  OUTLINED_FUNCTION_54_0();
  inited[11].n128_u64[1] = v150;
  if (v144[37]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v151 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v144 = v280;
    [v152 v153];
  }

  OUTLINED_FUNCTION_85();
  inited[12].n128_u64[0] = v154;
  inited[12].n128_u64[1] = 0xD000000000000012;
  inited[13].n128_u64[0] = v155;
  if (v144[38]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v156 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v144 = v280;
    [v157 v158];
  }

  OUTLINED_FUNCTION_55_0();
  inited[13].n128_u64[1] = v159;
  inited[14].n128_u64[0] = v160;
  OUTLINED_FUNCTION_53_0();
  inited[14].n128_u64[1] = v161;
  if (v144[39]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v162 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v144 = v280;
    [v163 v164];
  }

  OUTLINED_FUNCTION_85();
  inited[15].n128_u64[0] = v165;
  inited[15].n128_u64[1] = 0xD000000000000011;
  inited[16].n128_u64[0] = v166;
  if (v144[40]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v167 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v144 = v280;
    [v168 v169];
  }

  OUTLINED_FUNCTION_85();
  inited[16].n128_u64[1] = v170;
  inited[17].n128_u64[0] = 0xD000000000000014;
  inited[17].n128_u64[1] = v171;
  if (v144[41]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v172 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v144 = v280;
    [v173 v174];
  }

  v175 = v144[91]._countAndFlagsBits;
  v176 = v144[59]._object;
  OUTLINED_FUNCTION_57_0();
  inited[18].n128_u64[0] = v177;
  inited[18].n128_u64[1] = v178;
  OUTLINED_FUNCTION_62_0();
  inited[19].n128_u64[0] = v179;
  v180 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  OUTLINED_FUNCTION_100();
  inited[19].n128_u64[1] = [v181 v182];
  sub_1CFD02070(0, &qword_1EC4F2FE8, 0x1E69E58C0);
  OUTLINED_FUNCTION_176();
  sub_1CFD48EC8();
  v183 = sub_1CFD48EB8();

  AnalyticsSendEvent();

  sub_1CFD002C8(v277);
  v284 = sub_1CFCFEF14(884);
  v285 = v184;
  MEMORY[0x1D3873940](0xD00000000000010ALL, 0x80000001CFD5DA50);
  OUTLINED_FUNCTION_38_0();
  v280[58]._object = (*(v185 + 104))();
  OUTLINED_FUNCTION_32_1();
  v186 = sub_1CFD49648();
  MEMORY[0x1D3873940](v186);

  MEMORY[0x1D3873940](0xD000000000000054, 0x80000001CFD5DB60);
  OUTLINED_FUNCTION_38_0();
  v280[59]._countAndFlagsBits = (*(v187 + 128))();
  OUTLINED_FUNCTION_32_1();
  v188 = sub_1CFD49648();
  v190 = v189;
  MEMORY[0x1D3873940](v188);

  OUTLINED_FUNCTION_101();
  v280[108]._countAndFlagsBits = v284;
  v280[108]._object = v285;
  v191 = *(v175 + 28);
  HIDWORD(v280[55]._countAndFlagsBits) = v191;
  if (v176[v191] == 1)
  {
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v192 = v280[100]._countAndFlagsBits;
      v193 = v280[98]._countAndFlagsBits;
      v194 = v280[88]._countAndFlagsBits;

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v194, v195);
      v196 = OUTLINED_FUNCTION_87();
      v192(v196);
      v197 = v193;
      v198 = sub_1CFD48E18();
      v199 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v199);
      OUTLINED_FUNCTION_170();
      if (v200)
      {
        v201 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v201);
        v204 = "Disclaimer not supported for mailThread. Not continuing with feedback.";
LABEL_125:
        OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v202, v203, v204);
        OUTLINED_FUNCTION_77();
        goto LABEL_126;
      }

      goto LABEL_126;
    }

    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v211, v212);
    v213 = v280[100]._countAndFlagsBits;
    v214 = v280[92]._object;
    if (v22._object)
    {
      OUTLINED_FUNCTION_70();
      v213();

      v215 = sub_1CFD48E18();
      v216 = sub_1CFD492F8();
      if (OUTLINED_FUNCTION_126(v216))
      {
        v217 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_119(v217);
        _os_log_impl(&dword_1CFCD7000, v215, v216, "Showing disclaimer.", v214, 2u);
        OUTLINED_FUNCTION_86();
      }

      v218 = v280[97]._object;
      v219 = v280[93]._countAndFlagsBits;
      v220 = v280[92]._object;

      v221 = *(v219 + 8);
      v280[109]._countAndFlagsBits = v221;
      v221(v218, v220);
      v222 = swift_task_alloc();
      v280[109]._object = v222;
      *v222 = v280;
      OUTLINED_FUNCTION_21_3(v222);
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_52_0();

      return sub_1CFCFB4B8(v223, v224, v225, v226);
    }

    v192 = v280[95]._object;

    v253 = OUTLINED_FUNCTION_39_0();
    (v213)(v253);
    v197 = v192;
    v198 = sub_1CFD48E18();
    v254 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v254);
    OUTLINED_FUNCTION_170();
    if (!v255)
    {
      goto LABEL_126;
    }

LABEL_124:
    v259 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_66(v259);
    v204 = "Missing personal content. Not continuing with feedback.";
    goto LABEL_125;
  }

  if (*(v280[59]._object + v191 + 1))
  {
    v192 = v280[87]._countAndFlagsBits;
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v205 = v280[100]._countAndFlagsBits;
      OUTLINED_FUNCTION_191();

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v284, v206);
      v207 = OUTLINED_FUNCTION_33_2();
      v205(v207);
      v197 = v190;
      v198 = sub_1CFD48E18();
      v208 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v208);
      OUTLINED_FUNCTION_35_2();
      if (v209)
      {
        v210 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v210);
        v204 = "TTR flow not supported for mailThread. Not continuing with feedback.";
        goto LABEL_125;
      }

LABEL_126:

      v260 = OUTLINED_FUNCTION_107();
      v261(v260);
      OUTLINED_FUNCTION_9_5();
      sub_1CFCF0B10(v192, v262);
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v197, v263);
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_65();

      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_52_0();

      return v265(v264, v265, v266, v267, v268, v269, v270, v271, a9, a10, a11, a12);
    }

    v238 = v280[107]._object;
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v239, v240);
    v241 = v280[100]._countAndFlagsBits;
    if (!v238)
    {
      v192 = v280[93]._object;

      v256 = OUTLINED_FUNCTION_39_0();
      (v241)(v256);
      v197 = v192;
      v198 = sub_1CFD48E18();
      v257 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v257);
      OUTLINED_FUNCTION_35_2();
      if (!v258)
      {
        goto LABEL_126;
      }

      goto LABEL_124;
    }

    OUTLINED_FUNCTION_70();
    v241();
    sub_1CFD48E18();
    v242 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_109_0(v242))
    {
      v243 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_134(v243);
      OUTLINED_FUNCTION_50_0();
      _os_log_impl(v244, v245, v246, v247, v248, 2u);
      OUTLINED_FUNCTION_94();
    }

    OUTLINED_FUNCTION_163();
    v249 = OUTLINED_FUNCTION_106();
    v250(v249);
    v251 = swift_task_alloc();
    v280[110]._object = v251;
    *v251 = v280;
    OUTLINED_FUNCTION_5_3(v251);
    OUTLINED_FUNCTION_42_1();
    OUTLINED_FUNCTION_52_0();

    return sub_1CFCFC664();
  }

  else
  {
    v228 = v280[100]._countAndFlagsBits;

    v229 = OUTLINED_FUNCTION_68();
    v228(v229);
    sub_1CFD48E18();
    v230 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_95(v230))
    {
      v231 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_119(v231);
      OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v232, v233, "Submitting feedback to FeedbackFramework");
      OUTLINED_FUNCTION_86();
    }

    OUTLINED_FUNCTION_164();
    v234 = OUTLINED_FUNCTION_51_0();
    v235(v234);
    v236 = swift_task_alloc();
    v280[110]._countAndFlagsBits = v236;
    *v236 = v280;
    OUTLINED_FUNCTION_4_3(v236);
    OUTLINED_FUNCTION_99(v280[59]._object);
    OUTLINED_FUNCTION_52_0();

    return sub_1CFCFC0B8();
  }
}

uint64_t sub_1CFCF8AB0()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCF8BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_180();
  object = v12[65]._object;
  countAndFlagsBits = v12[65]._countAndFlagsBits;
  v15 = v12[64]._object;
  v243 = v12[64]._countAndFlagsBits;
  v16 = v12[63]._countAndFlagsBits;
  v17 = v12[59]._object;
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  sub_1CFCFAEC8(sub_1CFD0029C, v18);
  v20 = v19;

  object[8] = v20;
  OUTLINED_FUNCTION_153();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_153();
  v21 = ModelContentInput.feedbackString()();
  OUTLINED_FUNCTION_165(countAndFlagsBits);
  OUTLINED_FUNCTION_153();
  sub_1CFD21098();
  v23 = v22;
  OUTLINED_FUNCTION_165(v15);
  v237 = *(v23 + 16);

  v236 = *v17;
  v238 = v17[1];
  v239 = *(object + *(v16 + 76));
  v235 = sub_1CFCF0A3C();
  OUTLINED_FUNCTION_153();
  sub_1CFD21098();
  v25 = v24;
  OUTLINED_FUNCTION_165(v243);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v245 = v12;
  if (v26)
  {
    v28 = v12[62]._countAndFlagsBits;
    v250._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    sub_1CFCFF25C(0, v26, 0);
    v29 = v27;
    OUTLINED_FUNCTION_73();
    v31 = v25 + v30;
    v32 = *(v28 + 72);
    do
    {
      v33 = v12[62]._object;
      OUTLINED_FUNCTION_28_1();
      sub_1CFCFFF3C();
      v34 = sub_1CFD49048();
      OUTLINED_FUNCTION_27_2();
      sub_1CFCF0B10(v33, v35);
      v250._countAndFlagsBits = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        v38 = OUTLINED_FUNCTION_17_4(v36);
        sub_1CFCFF25C(v38, v39, v40);
        v29 = v250._countAndFlagsBits;
      }

      *(v29 + 16) = v37 + 1;
      *(v29 + 8 * v37 + 32) = v34;
      v31 += v32;
      --v26;
    }

    while (v26);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v42 = *(v29 + 16);
  v43 = 0;
  if (v42)
  {
    v44 = (v29 + 32);
    do
    {
      v45 = *v44++;
      v46 = __OFADD__(v43, v45);
      v43 += v45;
      if (v46)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      --v42;
    }

    while (v42);
  }

  v47 = v12[63]._object;

  OUTLINED_FUNCTION_51_0();
  sub_1CFD02140();
  sub_1CFD21098();
  v49 = v48;
  sub_1CFCE3050(v47, &qword_1EC4F2DA0, &unk_1CFD4BD68);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v12[62]._countAndFlagsBits;
    v52 = v12[61]._object;
    v250._countAndFlagsBits = v27;
    OUTLINED_FUNCTION_25_2();
    sub_1CFCFE374(v50, v53);
    OUTLINED_FUNCTION_73();
    v55 = v49 + v54;
    v56 = *(v51 + 72);
    v57 = v27;
    do
    {
      v58 = v245[62]._object;
      OUTLINED_FUNCTION_28_1();
      OUTLINED_FUNCTION_157();
      sub_1CFCFFF3C();
      v59 = *(v58 + v52[16]);

      OUTLINED_FUNCTION_27_2();
      sub_1CFCF0B10(v58, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = OUTLINED_FUNCTION_61_0();
        sub_1CFCFF23C(v61, v62, v63);
        v57 = v250._countAndFlagsBits;
      }

      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      if (v65 >= v64 >> 1)
      {
        v66 = OUTLINED_FUNCTION_17_4(v64);
        sub_1CFCFF23C(v66, v67, v68);
        v57 = v250._countAndFlagsBits;
      }

      *(v57 + 16) = v65 + 1;
      *(v57 + 8 * v65 + 32) = v59;
      v55 += v56;
      --v50;
    }

    while (v50);

    v12 = v245;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
  }

  v69 = 0;
  v240 = v12 + 42;
  v70 = *(v57 + 16);
  v71 = MEMORY[0x1E69E7CC0];
  while (v70 != v69)
  {
    if (v69 >= *(v57 + 16))
    {
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v72 = v69 + 1;
    v250._countAndFlagsBits = v71;

    result = sub_1CFCFF8DC(v73);
    v69 = v72;
  }

  v242 = v245[76]._countAndFlagsBits;

  v74 = 0;
  v244 = *(v71 + 16);
  v241 = MEMORY[0x1E69E7CC0];
  while (v244 != v74)
  {
    if (v74 >= *(v71 + 16))
    {
      goto LABEL_112;
    }

    v75 = v245[76]._countAndFlagsBits;
    v76 = v245[61]._countAndFlagsBits;
    v77 = v245[60]._object;
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_24_2();
    sub_1CFCFFF3C();
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v75);
    OUTLINED_FUNCTION_76();
    sub_1CFD02140();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v75);
    v79 = v245[60]._object;
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_81();
      sub_1CFCE3050(v80, v81, v82);
      goto LABEL_31;
    }

    v83 = *(v79 + *(v242 + 32) + 8);

    OUTLINED_FUNCTION_7_4();
    sub_1CFCF0B10(v79, v84);
    if (v83)
    {
      v88 = sub_1CFD49048();

      OUTLINED_FUNCTION_81();
      sub_1CFCE3050(v89, v90, v91);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v94 = OUTLINED_FUNCTION_118();
        result = sub_1CFCFE50C(v94, v95, v96, v97);
        v241 = result;
      }

      v93 = *(v241 + 16);
      v92 = *(v241 + 24);
      if (v93 >= v92 >> 1)
      {
        OUTLINED_FUNCTION_72(v92);
        OUTLINED_FUNCTION_93();
        result = sub_1CFCFE50C(v98, v99, v100, v241);
        v241 = result;
      }

      ++v74;
      *(v241 + 16) = v93 + 1;
      *(v241 + 8 * v93 + 32) = v88;
    }

    else
    {
LABEL_31:
      OUTLINED_FUNCTION_81();
      result = sub_1CFCE3050(v85, v86, v87);
      ++v74;
    }
  }

  result = v241;
  v101 = *(v241 + 16);
  if (!v101)
  {
    v102 = 0;
LABEL_43:
    v105 = v245[65]._object;
    v106 = v245[63]._countAndFlagsBits;

    v107 = *(v106 + 68);
    v108 = sub_1CFD48BD8();
    v109 = __swift_getEnumTagSinglePayload(v105 + v107, 1, v108);
    v110 = 0;
    if (!v109)
    {
      sub_1CFD48B98();
      v110 = sub_1CFD48BA8();
      v111 = OUTLINED_FUNCTION_51_0();
      v112(v111);
    }

    v113 = v245[65]._object;
    v250 = v113[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EC8, &qword_1CFD4BF70);
    sub_1CFD26F60();
    OUTLINED_FUNCTION_161();
    sub_1CFCE3050(v113, &qword_1EC4F2DA0, &unk_1CFD4BD68);
    v240->_countAndFlagsBits = 0;
    v240->_object = 0;
    v245[43]._countAndFlagsBits = v237;
    LOBYTE(v245[43]._object) = v246;
    v245[44]._countAndFlagsBits = v236;
    LOBYTE(v245[44]._object) = v247;
    v245[45]._countAndFlagsBits = v238;
    LOBYTE(v245[45]._object) = v248;
    BYTE1(v245[45]._object) = v239;
    v245[46]._countAndFlagsBits = v235;
    LOBYTE(v245[46]._object) = v249;
    v245[47]._countAndFlagsBits = 0;
    LOBYTE(v245[47]._object) = 1;
    v245[48]._countAndFlagsBits = 0;
    LOBYTE(v245[48]._object) = 1;
    v245[49]._countAndFlagsBits = v43;
    LOBYTE(v245[49]._object) = 0;
    v245[50]._countAndFlagsBits = v102;
    LOBYTE(v245[50]._object) = 0;
    v245[51]._countAndFlagsBits = v110;
    LOBYTE(v245[51]._object) = v109 != 0;
    v245[52]._countAndFlagsBits = &v250;
    v245[107] = v21;
    memcpy(&v245[31]._object, v240, 0xA8uLL);
    v114 = sub_1CFD48F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FE0, &qword_1CFD4D040);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_19_2(inited, xmmword_1CFD4BE40);
    if (v245[32]._countAndFlagsBits)
    {
      sub_1CFD02070(0, &qword_1EC4F2FF0, 0x1E696AEC0);
      sub_1CFD020B0(&v245[31]._object, &v245[21]);
      v116 = OUTLINED_FUNCTION_27();
      sub_1CFCF38E8(v116, v117);
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    OUTLINED_FUNCTION_104();
    inited[3].n128_u64[0] = v118;
    inited[3].n128_u64[1] = v119;
    inited[4].n128_u64[0] = 0xE500000000000000;
    if (v245[33]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_60_0();
    inited[4].n128_u64[1] = v120;
    inited[5].n128_u64[0] = v121;
    inited[5].n128_u64[1] = 0xE700000000000000;
    if (v245[34]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_59_0();
    inited[6].n128_u64[0] = v122;
    inited[6].n128_u64[1] = v123;
    inited[7].n128_u64[0] = 0xE800000000000000;
    if (v245[35]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_58_0();
    inited[7].n128_u64[1] = v124;
    inited[8].n128_u64[0] = v125;
    inited[8].n128_u64[1] = 0xE800000000000000;
    v126 = BYTE1(v245[35]._countAndFlagsBits);
    if (v126 == 2)
    {
      v127 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v127 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    }

    OUTLINED_FUNCTION_154(v127);
    if (v245[36]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_56_0();
    inited[10].n128_u64[1] = v128;
    inited[11].n128_u64[0] = v129;
    OUTLINED_FUNCTION_54_0();
    inited[11].n128_u64[1] = v130;
    if (v245[37]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_85();
    inited[12].n128_u64[0] = v131;
    inited[12].n128_u64[1] = 0xD000000000000012;
    inited[13].n128_u64[0] = v132;
    if (v245[38]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_55_0();
    inited[13].n128_u64[1] = v133;
    inited[14].n128_u64[0] = v134;
    OUTLINED_FUNCTION_53_0();
    inited[14].n128_u64[1] = v135;
    if (v245[39]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_85();
    inited[15].n128_u64[0] = v136;
    inited[15].n128_u64[1] = 0xD000000000000011;
    inited[16].n128_u64[0] = v137;
    if (v245[40]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_85();
    inited[16].n128_u64[1] = v138;
    inited[17].n128_u64[0] = 0xD000000000000014;
    inited[17].n128_u64[1] = v139;
    if (v245[41]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    v140 = v245[91]._countAndFlagsBits;
    v141 = v245[60]._countAndFlagsBits;
    v142 = v245[59]._object;
    OUTLINED_FUNCTION_57_0();
    inited[18].n128_u64[0] = v143;
    inited[18].n128_u64[1] = v144;
    OUTLINED_FUNCTION_62_0();
    inited[19].n128_u64[0] = v145;
    inited[19].n128_u64[1] = OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    sub_1CFD02070(0, &qword_1EC4F2FE8, 0x1E69E58C0);
    OUTLINED_FUNCTION_44_1();
    v146 = sub_1CFD48EC8();
    OUTLINED_FUNCTION_44_1();
    v147 = sub_1CFD48EB8();

    AnalyticsSendEvent();

    sub_1CFD002C8(v240);
    v250._countAndFlagsBits = sub_1CFCFEF14(884);
    v250._object = v148;
    MEMORY[0x1D3873940](0xD00000000000010ALL, 0x80000001CFD5DA50);
    OUTLINED_FUNCTION_38_0();
    v245[58]._object = (*(v149 + 104))();
    v150 = MEMORY[0x1E69E6590];
    OUTLINED_FUNCTION_51_0();
    v151 = sub_1CFD49648();
    MEMORY[0x1D3873940](v151);

    MEMORY[0x1D3873940](0xD000000000000054, 0x80000001CFD5DB60);
    OUTLINED_FUNCTION_38_0();
    v245[59]._countAndFlagsBits = (*(v152 + 128))();
    OUTLINED_FUNCTION_51_0();
    v153 = sub_1CFD49648();
    MEMORY[0x1D3873940](v153);

    OUTLINED_FUNCTION_101();
    v155 = v250._countAndFlagsBits;
    v154 = v250._object;
    v245[108]._countAndFlagsBits = v250._countAndFlagsBits;
    v245[108]._object = v154;
    v156 = *(v140 + 28);
    HIDWORD(v245[55]._countAndFlagsBits) = v156;
    if (v142[v156] == 1)
    {
      OUTLINED_FUNCTION_1_5();
      sub_1CFCFFF3C();
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_145();
        v157 = v141[196];
        v158 = v141[176];

        OUTLINED_FUNCTION_2_5();
        sub_1CFCF0B10(v158, v159);
        v160 = OUTLINED_FUNCTION_39_0();
        v146(v160);
        v161 = v157;
        v162 = sub_1CFD48E18();
        v163 = sub_1CFD492E8();
        OUTLINED_FUNCTION_49_0(v163);
        OUTLINED_FUNCTION_35_2();
        if (v164)
        {
          v165 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_66(v165);
          v168 = "Disclaimer not supported for mailThread. Not continuing with feedback.";
LABEL_107:
          OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v166, v167, v168);
          OUTLINED_FUNCTION_77();
          goto LABEL_108;
        }

        goto LABEL_108;
      }

      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v175, v176);
      OUTLINED_FUNCTION_145();
      v157 = v141[185];
      if (v21._object)
      {
        v177 = v141[195];
        v178 = OUTLINED_FUNCTION_40_1();
        v146(v178);

        v179 = sub_1CFD48E18();
        v180 = sub_1CFD492F8();
        if (OUTLINED_FUNCTION_109_0(v180))
        {
          v181 = OUTLINED_FUNCTION_120();
          *v181 = 0;
          _os_log_impl(&dword_1CFCD7000, v179, v177, "Showing disclaimer.", v181, 2u);
          OUTLINED_FUNCTION_121();
        }

        v182 = v245[93]._countAndFlagsBits;

        v245[109]._countAndFlagsBits = *(v182 + 8);
        v183 = OUTLINED_FUNCTION_51_0();
        v184(v183);
        v185 = swift_task_alloc();
        v245[109]._object = v185;
        *v185 = v245;
        OUTLINED_FUNCTION_21_3(v185);
        OUTLINED_FUNCTION_140();
        OUTLINED_FUNCTION_52_0();

        return sub_1CFCFB4B8(v186, v187, v188, v189);
      }

      v216 = v141[191];

      v217 = OUTLINED_FUNCTION_40_1();
      v146(v217);
      v161 = v216;
      v162 = sub_1CFD48E18();
      v218 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v218);
    }

    else
    {
      OUTLINED_FUNCTION_149();
      if ((v169 & 1) == 0)
      {
        v191 = v245[100]._countAndFlagsBits;

        v192 = OUTLINED_FUNCTION_68();
        v191(v192);
        sub_1CFD48E18();
        v193 = sub_1CFD492F8();
        if (OUTLINED_FUNCTION_95(v193))
        {
          v194 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_119(v194);
          OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v195, v196, "Submitting feedback to FeedbackFramework");
          OUTLINED_FUNCTION_86();
        }

        OUTLINED_FUNCTION_164();
        v197 = OUTLINED_FUNCTION_51_0();
        v198(v197);
        v199 = swift_task_alloc();
        v245[110]._countAndFlagsBits = v199;
        *v199 = v245;
        OUTLINED_FUNCTION_4_3(v199);
        OUTLINED_FUNCTION_99(v245[59]._object);
        OUTLINED_FUNCTION_52_0();

        return sub_1CFCFC0B8();
      }

      v157 = v245[87]._countAndFlagsBits;
      OUTLINED_FUNCTION_1_5();
      sub_1CFCFFF3C();
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_191();

        OUTLINED_FUNCTION_2_5();
        sub_1CFCF0B10(v155, v170);
        v171 = OUTLINED_FUNCTION_33_2();
        v146(v171);
        v161 = v150;
        v162 = sub_1CFD48E18();
        v172 = sub_1CFD492E8();
        OUTLINED_FUNCTION_49_0(v172);
        OUTLINED_FUNCTION_35_2();
        if (v173)
        {
          v174 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_66(v174);
          v168 = "TTR flow not supported for mailThread. Not continuing with feedback.";
          goto LABEL_107;
        }

LABEL_108:

        v223 = OUTLINED_FUNCTION_107();
        v224(v223);
        OUTLINED_FUNCTION_9_5();
        sub_1CFCF0B10(v157, v225);
        OUTLINED_FUNCTION_0_4();
        sub_1CFCF0B10(v161, v226);
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_11_3();
        OUTLINED_FUNCTION_65();

        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_52_0();

        return v228(v227, v228, v229, v230, v231, v232, v233, v234, a9, a10, a11, a12);
      }

      v201 = v245[107]._object;
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v202, v203);
      v204 = v245[100]._countAndFlagsBits;
      if (v201)
      {
        OUTLINED_FUNCTION_70();
        v204();
        sub_1CFD48E18();
        v205 = sub_1CFD492F8();
        if (OUTLINED_FUNCTION_109_0(v205))
        {
          v206 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_134(v206);
          OUTLINED_FUNCTION_50_0();
          _os_log_impl(v207, v208, v209, v210, v211, 2u);
          OUTLINED_FUNCTION_94();
        }

        OUTLINED_FUNCTION_163();
        v212 = OUTLINED_FUNCTION_106();
        v213(v212);
        v214 = swift_task_alloc();
        v245[110]._object = v214;
        *v214 = v245;
        OUTLINED_FUNCTION_5_3(v214);
        OUTLINED_FUNCTION_42_1();
        OUTLINED_FUNCTION_52_0();

        return sub_1CFCFC664();
      }

      v157 = v245[93]._object;

      v219 = OUTLINED_FUNCTION_39_0();
      (v204)(v219);
      v161 = v157;
      v162 = sub_1CFD48E18();
      v220 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v220);
    }

    OUTLINED_FUNCTION_35_2();
    if (v221)
    {
      v222 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v222);
      v168 = "Missing personal content. Not continuing with feedback.";
      goto LABEL_107;
    }

    goto LABEL_108;
  }

  v102 = 0;
  v103 = (v241 + 32);
  while (1)
  {
    v104 = *v103++;
    v46 = __OFADD__(v102, v104);
    v102 += v104;
    if (v46)
    {
      break;
    }

    if (!--v101)
    {
      goto LABEL_43;
    }
  }

LABEL_114:
  __break(1u);
  return result;
}

uint64_t sub_1CFCF9F14()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;
  *(v4 + 858) = v3;

  v5 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1CFCFA01C()
{
  if (!*(v1 + 858))
  {
    OUTLINED_FUNCTION_75();
    v24 = *(v1 + 1552);

    v25 = OUTLINED_FUNCTION_33_2();
    v2(v25);
    v16 = v24;
    v26 = sub_1CFD48E18();
    v27 = sub_1CFD492D8();
    OUTLINED_FUNCTION_49_0(v27);
    v28 = *(v1 + 1744);
    OUTLINED_FUNCTION_186();
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v30);
      v33 = "Failed to show disclaimer. Unable to continue with feedback.";
LABEL_13:
      OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v31, v32, v33);
      OUTLINED_FUNCTION_77();
    }

LABEL_14:

    v39 = OUTLINED_FUNCTION_107();
    v28(v39);
    goto LABEL_15;
  }

  if (*(v1 + 858) != 1)
  {
    OUTLINED_FUNCTION_75();
    v34 = *(v1 + 1544);

    v35 = OUTLINED_FUNCTION_33_2();
    v2(v35);
    v16 = v34;
    v26 = sub_1CFD48E18();
    v36 = sub_1CFD492F8();
    OUTLINED_FUNCTION_49_0(v36);
    v28 = *(v1 + 1744);
    OUTLINED_FUNCTION_186();
    if (v37)
    {
      v38 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v38);
      v33 = "User did not accept disclaimer. Not continuing with feedback.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  (*(v1 + 1600))(*(v1 + 1536), *(v1 + 1592), *(v1 + 1480));
  v3 = sub_1CFD48E18();
  v4 = sub_1CFD492F8();
  if (OUTLINED_FUNCTION_95(v4))
  {
    v5 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_119(v5);
    OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v6, v7, "User accepted disclaimer. Continuing with feedback.");
    OUTLINED_FUNCTION_86();
  }

  v8 = *(v1 + 1744);

  v9 = OUTLINED_FUNCTION_51_0();
  v8(v9);
  OUTLINED_FUNCTION_149();
  if (v10)
  {
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v11 = *(v1 + 1600);
      v0 = *(v1 + 1592);
      v12 = *(v1 + 1512);
      v13 = *(v1 + 1400);

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v13, v14);
      v15 = OUTLINED_FUNCTION_33_2();
      v11(v15);
      v16 = v12;
      v17 = sub_1CFD48E18();
      v18 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v18);
      OUTLINED_FUNCTION_38_1();
      if (v19)
      {
        v20 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v20);
        v23 = "TTR flow not supported for mailThread. Not continuing with feedback.";
LABEL_31:
        OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v21, v22, v23);
        OUTLINED_FUNCTION_77();
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v54 = *(v1 + 1720);
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v55, v56);
    if (!v54)
    {
      v69 = *(v1 + 1600);
      v0 = *(v1 + 1496);

      v70 = OUTLINED_FUNCTION_39_0();
      v69(v70);
      v16 = v0;
      v17 = sub_1CFD48E18();
      v71 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v71);
      OUTLINED_FUNCTION_38_1();
      if (v72)
      {
        v73 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v73);
        v23 = "Missing personal content. Not continuing with feedback.";
        goto LABEL_31;
      }

LABEL_32:

      v74 = OUTLINED_FUNCTION_107();
      v75(v74);
LABEL_15:
      sub_1CFCF0B10(v0, type metadata accessor for ModelInputContentKind);
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v16, v40);
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_11_3();

      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_190();

      __asm { BRAA            X1, X16 }
    }

    (*(v1 + 1600))(*(v1 + 1504), *(v1 + 1592), *(v1 + 1480));
    v57 = sub_1CFD48E18();
    v58 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_109_0(v58))
    {
      v59 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_134(v59);
      OUTLINED_FUNCTION_50_0();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      OUTLINED_FUNCTION_94();
    }

    v65 = OUTLINED_FUNCTION_32_1();
    v66(v65);
    v67 = swift_task_alloc();
    *(v1 + 1768) = v67;
    *v67 = v1;
    OUTLINED_FUNCTION_5_3(v67);
    OUTLINED_FUNCTION_99(*(v1 + 952));
    OUTLINED_FUNCTION_190();

    return sub_1CFCFC664();
  }

  else
  {
    OUTLINED_FUNCTION_75();

    v43 = OUTLINED_FUNCTION_33_2();
    v2(v43);
    v44 = sub_1CFD48E18();
    v45 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_95(v45))
    {
      v46 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_119(v46);
      OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v47, v48, "Submitting feedback to FeedbackFramework");
      OUTLINED_FUNCTION_86();
    }

    v49 = OUTLINED_FUNCTION_51_0();
    v50(v49);
    v51 = swift_task_alloc();
    *(v1 + 1760) = v51;
    *v51 = v1;
    OUTLINED_FUNCTION_4_3(v51);
    OUTLINED_FUNCTION_99(*(v1 + 952));
    OUTLINED_FUNCTION_190();

    return sub_1CFCFC0B8();
  }
}

uint64_t sub_1CFCFA744()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1CFCFA828()
{
  v1 = *(v0 + 1448);
  OUTLINED_FUNCTION_9_5();
  sub_1CFCF0B10(v2, v3);
  OUTLINED_FUNCTION_0_4();
  sub_1CFCF0B10(v1, v4);
  OUTLINED_FUNCTION_6_4();

  OUTLINED_FUNCTION_23_1();

  return v5();
}

uint64_t sub_1CFCFABA4()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

void sub_1CFCFACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_156();
  v9 = OUTLINED_FUNCTION_116();
  v10 = type metadata accessor for MailEntity(v9);
  v11 = OUTLINED_FUNCTION_6_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F50, &qword_1CFD4CFB8);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1CFD02140();
  OUTLINED_FUNCTION_140();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1CFCFFDE8();
    OUTLINED_FUNCTION_125();
    v17 = *(v7 + v16);
    if (!v17)
    {
      goto LABEL_8;
    }

    v18 = v17(*v8, *(v8 + 8));
    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = v18;
    v21 = v19;
    v22 = sub_1CFD49048();
    MailEntity.Body.text.getter();
    if (v23)
    {
      v24 = sub_1CFD49048();

      if (v24 >= v22)
      {
LABEL_7:

LABEL_8:
        OUTLINED_FUNCTION_117();
        sub_1CFD02140();
LABEL_11:
        OUTLINED_FUNCTION_13_3();
        sub_1CFCF0B10(v8, v25);
        goto LABEL_12;
      }
    }

    else if (v22 < 1)
    {
      goto LABEL_7;
    }

    sub_1CFCEF63C(*(v8 + 200), *(v8 + 208), *(v8 + 216));
    *(v8 + 200) = v20;
    *(v8 + 208) = v21;
    *(v8 + 216) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F60, &unk_1CFD53AE0);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_68();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_128(2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_70();
  sub_1CFCE3050(v13, v14, v15);
  OUTLINED_FUNCTION_44_1();
  sub_1CFD02140();
LABEL_12:
  OUTLINED_FUNCTION_155();
}

void sub_1CFCFAEC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_143();
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v22 = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_18_2(v11);
  v13 = v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_179();
  v15 = *(v7 + 16);
  if (v15)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v21 = v4;
    v4(0, v15, 0);
    OUTLINED_FUNCTION_73();
    v17 = v7 + v16;
    v18 = *(v13 + 72);
    while (1)
    {
      v22(v17);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        v21(v19 > 1, v20 + 1, 1);
      }

      *(v23 + 16) = v20 + 1;
      sub_1CFD020E8();
      v17 += v18;
      if (!--v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_142();
  }
}

void sub_1CFCFB054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_156();
  v9 = OUTLINED_FUNCTION_116();
  v10 = type metadata accessor for MessageEntity(v9);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3010, &qword_1CFD4D068);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_136();
  if (!swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_176();
    sub_1CFCFFDE8();
    OUTLINED_FUNCTION_125();
    v17 = *(v7 + v16);
    if (v17)
    {
      v18 = v17(*v8, v8[1]);
      if (v19)
      {
        v20 = v18;
        v21 = v19;
        v22 = sub_1CFD49048();
        v23 = (v8 + *(v10 + 60));
        if (sub_1CFD49048() < v22)
        {

          *v23 = v20;
          v23[1] = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3020, &unk_1CFD53AF0);
          OUTLINED_FUNCTION_28_1();
          OUTLINED_FUNCTION_68();
          sub_1CFCFFF3C();
          OUTLINED_FUNCTION_128(1);
LABEL_9:
          OUTLINED_FUNCTION_27_2();
          sub_1CFCF0B10(v8, v24);
          goto LABEL_10;
        }
      }
    }

    OUTLINED_FUNCTION_117();
    sub_1CFD02140();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_70();
  sub_1CFCE3050(v13, v14, v15);
  OUTLINED_FUNCTION_44_1();
  sub_1CFD02140();
LABEL_10:
  OUTLINED_FUNCTION_155();
}

void sub_1CFCFB220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_156();
  v9 = OUTLINED_FUNCTION_116();
  v10 = type metadata accessor for NotificationEntity(v9);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F30, &qword_1CFD4CF98);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_136();
  if (!swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_176();
    sub_1CFCFFDE8();
    OUTLINED_FUNCTION_125();
    v17 = *(v7 + v16);
    if (v17)
    {
      v18 = v17(*v8, v8[1]);
      if (v19)
      {
        v20 = v18;
        v21 = v19;
        v22 = sub_1CFD49048();
        v23 = (v8 + *(v10 + 44));
        if (v23[1])
        {
          if (sub_1CFD49048() < v22)
          {

LABEL_9:
            *v23 = v20;
            v23[1] = v21;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F40, &qword_1CFD53B00);
            OUTLINED_FUNCTION_8_4();
            OUTLINED_FUNCTION_68();
            sub_1CFCFFF3C();
            OUTLINED_FUNCTION_128(3);
LABEL_12:
            OUTLINED_FUNCTION_3_4();
            sub_1CFCF0B10(v8, v24);
            goto LABEL_13;
          }
        }

        else if (v22 > 0)
        {
          goto LABEL_9;
        }
      }
    }

    OUTLINED_FUNCTION_117();
    sub_1CFD02140();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_70();
  sub_1CFCE3050(v13, v14, v15);
  OUTLINED_FUNCTION_44_1();
  sub_1CFD02140();
LABEL_13:
  OUTLINED_FUNCTION_155();
}

uint64_t sub_1CFCFB400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for NotificationEntity(0);
  if (v3)
  {
    sub_1CFCFFF3C();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v4);
}

uint64_t sub_1CFCFB4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = OUTLINED_FUNCTION_7_3();
  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1CFCFB4E8()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 64) = v4;
  *v4 = v5;
  v4[1] = sub_1CFCFB5F0;

  return MEMORY[0x1EEE6DDE0](v0 + 72, 0, 0, 0xD000000000000030, 0x80000001CFD5DEC0, sub_1CFD01BEC, v2, &type metadata for SummarizationFeedbackClient.DisclaimerResult);
}

uint64_t sub_1CFCFB5F0()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v1 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v3);
}

void sub_1CFCFB708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_156();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v128 = *MEMORY[0x1E69E9840];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F68, &qword_1CFD4CFD0);
  OUTLINED_FUNCTION_37();
  v118 = v18;
  OUTLINED_FUNCTION_12_0();
  v116 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22_1();
  v117 = v21;
  v119 = sub_1CFD48E38();
  OUTLINED_FUNCTION_37();
  v121 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_185();
  v115 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v114 = &v113 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F70, &qword_1CFD4CFD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFD4BE50;
  v28 = *MEMORY[0x1E695EE58];
  if (!*MEMORY[0x1E695EE58])
  {
    __break(1u);
    goto LABEL_28;
  }

  v29 = inited;
  OUTLINED_FUNCTION_85();
  v30 = MEMORY[0x1E69E6158];
  v31[8] = MEMORY[0x1E69E6158];
  v31[4] = v28;
  v31[5] = 0xD000000000000038;
  v31[6] = v32;
  v33 = *MEMORY[0x1E695EE60];
  if (!*MEMORY[0x1E695EE60])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v120 = v17;
  *(v29 + 72) = v33;
  v125 = 10;
  v126 = 0xE100000000000000;
  v34 = v33;
  v35 = v28;
  MEMORY[0x1D3873940](v15, v13);
  MEMORY[0x1D3873940](2570, 0xE200000000000000);
  MEMORY[0x1D3873940](v11, v9);
  v36 = v125;
  v37 = v126;
  *(v29 + 104) = v30;
  *(v29 + 80) = v36;
  *(v29 + 88) = v37;
  v38 = *MEMORY[0x1E695EE78];
  if (!*MEMORY[0x1E695EE78])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v29 + 144) = v30;
  *(v29 + 112) = v38;
  *(v29 + 120) = 0x6572616853;
  *(v29 + 128) = 0xE500000000000000;
  v39 = *MEMORY[0x1E695EE70];
  if (!*MEMORY[0x1E695EE70])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v29 + 184) = v30;
  *(v29 + 152) = v39;
  *(v29 + 160) = 0x6C65636E6143;
  *(v29 + 168) = 0xE600000000000000;
  v40 = *MEMORY[0x1E695EE68];
  if (!*MEMORY[0x1E695EE68])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v29 + 192) = v40;
  v41 = MEMORY[0x1E69E6370];
  *(v29 + 224) = MEMORY[0x1E69E6370];
  *(v29 + 200) = 1;
  type metadata accessor for CFString(0);
  OUTLINED_FUNCTION_23_2();
  sub_1CFCFFDA0(v42, v43, &unk_1CFD4D1E8);
  v44 = v40;
  v45 = v39;
  v46 = v38;
  sub_1CFD48EC8();
  v47 = *MEMORY[0x1E69D4540];
  if (!*MEMORY[0x1E69D4540])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v127 = v41;
  LOBYTE(v125) = 1;
  OUTLINED_FUNCTION_151();
  v48 = v47;
  OUTLINED_FUNCTION_98();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(isUniquelyReferenced_nonNull_native);

  v50 = *MEMORY[0x1E69D4510];
  if (!*MEMORY[0x1E69D4510])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v51 = v7;
  v127 = v41;
  LOBYTE(v125) = 1;
  OUTLINED_FUNCTION_151();
  v52 = v50;
  OUTLINED_FUNCTION_98();
  v53 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(v53);

  v54 = *MEMORY[0x1E69D4480];
  if (!*MEMORY[0x1E69D4480])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  v55 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(v55);

  v56 = *MEMORY[0x1E69D44E8];
  if (!*MEMORY[0x1E69D44E8])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  v57 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(v57);

  v58 = *MEMORY[0x1E69D4530];
  if (!*MEMORY[0x1E69D4530])
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  v59 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(v59);

  v60 = *MEMORY[0x1E69D4490];
  if (!*MEMORY[0x1E69D4490])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v127 = v41;
  LOBYTE(v125) = 0;
  OUTLINED_FUNCTION_151();
  v61 = v60;
  OUTLINED_FUNCTION_98();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(v62);

  v63 = *MEMORY[0x1E69D44E0];
  if (!*MEMORY[0x1E69D44E0])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  v64 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(v64);

  v65 = *MEMORY[0x1E69D4500];
  if (!*MEMORY[0x1E69D4500])
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  v66 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(v66);

  v67 = *MEMORY[0x1E69D44A8];
  if (!*MEMORY[0x1E69D44A8])
  {
    goto LABEL_40;
  }

  v127 = v41;
  LOBYTE(v125) = 1;
  OUTLINED_FUNCTION_151();
  v68 = v67;
  OUTLINED_FUNCTION_98();
  v69 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3(v69);

  v70 = v7[4];
  if (v70)
  {
    v67 = v7[7];
    v71 = v7[5];
    v72 = v70;
    v73 = v71;

    CFRunLoopSourceInvalidate(v72);
    CFUserNotificationCancel(v73);

    v74 = v7[4];
    v75 = v7[5];
    v76 = v7[6];
    v77 = v7[7];
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    sub_1CFD00254(v74, v75, v76, v77);
  }

  v124[0] = 0;
  v78 = sub_1CFD48EB8();

  v79 = CFUserNotificationCreate(0, 0.0, 3uLL, v124, v78);

  if (v79)
  {
    v80 = *MEMORY[0x1E695E480];
    v81 = v79;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(v80, v81, sub_1CFCFBFA4, 0);
    v83 = v120;
    v84 = v121;
    if (RunLoopSource)
    {
      v85 = RunLoopSource;
      v119 = swift_allocObject();
      swift_weakInit();
      v87 = v117;
      v86 = v118;
      v88 = v122;
      (*(v118 + 16))(v117, v83, v122);
      v89 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v121 = v81;
      v90 = (v116 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      (*(v86 + 32))(v91 + v89, v87, v88);
      *(v91 + v90) = v119;
      v92 = v51[7];
      v51[4] = v85;
      v51[5] = v79;
      v51[6] = sub_1CFD01C20;
      v51[7] = v91;
      v93 = v85;
      v94 = v121;
      v95 = v93;
      OUTLINED_FUNCTION_81();
      sub_1CFD00254(v96, v97, v98, v92);
      v99 = CFRunLoopGetMain();
      CFRunLoopAddSource(v99, v95, *MEMORY[0x1E695E8D0]);
    }

    else
    {

      v107 = sub_1CFD08CC4();
      v108 = v114;
      v109 = v119;
      v84[2](v114, v107, v119);
      v110 = sub_1CFD48E18();
      v111 = sub_1CFD492D8();
      if (OUTLINED_FUNCTION_126(v111))
      {
        v112 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_134(v112);
        _os_log_impl(&dword_1CFCD7000, v110, v111, "Could not create RunLoopSource for CFUserNotification. Unable to send feedback.", v67, 2u);
        OUTLINED_FUNCTION_94();
      }

      (v84[1])(v108, v109);
      LOBYTE(v125) = 0;
      sub_1CFD49238();
    }
  }

  else
  {
    v100 = sub_1CFD08CC4();
    v101 = v121;
    v102 = v115;
    v103 = v119;
    (*(v121 + 2))(v115, v100, v119);
    v104 = sub_1CFD48E18();
    v105 = sub_1CFD492D8();
    if (OUTLINED_FUNCTION_194(v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 67109120;
      swift_beginAccess();
      *(v106 + 4) = v124[0];
      _os_log_impl(&dword_1CFCD7000, v104, v105, "Could not create CFUserNotification: %d. Unable to send feedback.", v106, 8u);
      OUTLINED_FUNCTION_121();
    }

    (*(v101 + 1))(v102, v103);
    LOBYTE(v123) = 0;
    sub_1CFD49238();
  }

  OUTLINED_FUNCTION_155();
}

void sub_1CFCFBFA4(void *a1, uint64_t a2)
{
  v3 = a1;
  sub_1CFCFBFF0(a2);
}

uint64_t sub_1CFCFBFF0(uint64_t result)
{
  v1 = result;
  if (_MergedGlobals != -1)
  {
    result = OUTLINED_FUNCTION_37_2(&_MergedGlobals);
  }

  if (*(qword_1EDDD3778 + 32))
  {
    v3 = *(qword_1EDDD3778 + 48);
    v2 = *(qword_1EDDD3778 + 56);
    v4 = OUTLINED_FUNCTION_183();
    sub_1CFD01D7C(v4, v5, v3, v2);

    v6 = OUTLINED_FUNCTION_183();
    sub_1CFD00254(v6, v7, v3, v2);
    v3(v1);
  }

  return result;
}

uint64_t sub_1CFCFC0B8()
{
  OUTLINED_FUNCTION_18_1();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_1CFD48E38();
  v0[6] = v3;
  OUTLINED_FUNCTION_18_2(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_26_0();
  v5 = type metadata accessor for ModelInputContentKind(0);
  OUTLINED_FUNCTION_6_2(v5);
  v0[9] = OUTLINED_FUNCTION_26_0();
  v6 = type metadata accessor for SummarizationFeedback(0);
  OUTLINED_FUNCTION_6_2(v6);
  v0[10] = OUTLINED_FUNCTION_26_0();
  v7 = type metadata accessor for FeedbackRequest(0);
  OUTLINED_FUNCTION_6_2(v7);
  v0[11] = OUTLINED_FUNCTION_26_0();
  v8 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1CFCFC1BC()
{
  OUTLINED_FUNCTION_29_0();
  type metadata accessor for SummarizationPipelineClient();
  *(v0 + 96) = SummarizationPipelineClient.__allocating_init()();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_176();
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_140();
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_32_1();
  FeedbackRequest.init(summarizationFeedback:modelInputContentKind:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_1CFCFC2B8;

  return sub_1CFD107F8();
}

uint64_t sub_1CFCFC2B8()
{
  OUTLINED_FUNCTION_29_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    sub_1CFCF0B10(v5, type metadata accessor for FeedbackRequest);

    v6 = sub_1CFCFC4C8;
  }

  else
  {

    sub_1CFCF0B10(v5, type metadata accessor for FeedbackRequest);

    v6 = sub_1CFCFC448;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1CFCFC448()
{

  OUTLINED_FUNCTION_23_1();

  return v0();
}

uint64_t sub_1CFCFC4C8()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0[14];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = sub_1CFD08CC4();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1CFD48E18();
  LOBYTE(v4) = sub_1CFD492D8();

  v8 = os_log_type_enabled(v7, v4);
  v9 = v0[14];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_50_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_1CFCE3050(v11, &qword_1EC4F2F90, &qword_1CFD4CFE8);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_94();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_23_1();

  return v19();
}

uint64_t sub_1CFCFC664()
{
  OUTLINED_FUNCTION_18_1();
  v0[111] = v1;
  v0[110] = v2;
  v0[109] = v3;
  v0[108] = v4;
  v0[107] = v5;
  v6 = sub_1CFD48B48();
  v0[112] = v6;
  OUTLINED_FUNCTION_18_2(v6);
  v0[113] = v7;
  v0[114] = OUTLINED_FUNCTION_26_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F98, &unk_1CFD4CFF0);
  OUTLINED_FUNCTION_6_2(v8);
  v0[115] = OUTLINED_FUNCTION_26_0();
  v9 = sub_1CFD48B88();
  v0[116] = v9;
  OUTLINED_FUNCTION_18_2(v9);
  v0[117] = v10;
  v0[118] = OUTLINED_FUNCTION_26_0();
  v11 = sub_1CFD48FD8();
  v0[119] = v11;
  OUTLINED_FUNCTION_18_2(v11);
  v0[120] = v12;
  v0[121] = OUTLINED_FUNCTION_26_0();
  v13 = sub_1CFD48BF8();
  v0[122] = v13;
  OUTLINED_FUNCTION_18_2(v13);
  v0[123] = v14;
  v0[124] = OUTLINED_FUNCTION_26_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D40, &qword_1CFD4B748);
  OUTLINED_FUNCTION_6_2(v15);
  v0[125] = OUTLINED_FUNCTION_130();
  v0[126] = swift_task_alloc();
  v16 = sub_1CFD48C58();
  v0[127] = v16;
  OUTLINED_FUNCTION_18_2(v16);
  v0[128] = v17;
  v0[129] = OUTLINED_FUNCTION_26_0();
  v18 = sub_1CFD48E38();
  v0[130] = v18;
  OUTLINED_FUNCTION_18_2(v18);
  v0[131] = v19;
  v0[132] = OUTLINED_FUNCTION_130();
  v0[133] = swift_task_alloc();
  v0[134] = swift_task_alloc();
  v0[135] = swift_task_alloc();
  v0[136] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFCFC95C);
}

uint64_t sub_1CFCFC95C()
{
  v1 = v0;
  v2 = *(v0 + 856);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FA0, &qword_1CFD4D000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFD4BE60;
  *(inited + 32) = 0x34303739333831;
  *(inited + 40) = 0xE700000000000000;
  if (*(v2 + 1))
  {
    if (*(v2 + 1) != 1)
    {

      sub_1CFD08CC4();
      v30 = OUTLINED_FUNCTION_113();
      v31(v30);
      v32 = sub_1CFD48E18();
      v33 = sub_1CFD492D8();
      if (OUTLINED_FUNCTION_126(v33))
      {
        v34 = OUTLINED_FUNCTION_120();
        *v34 = 0;
        _os_log_impl(&dword_1CFCD7000, v32, v33, "Unsupported feedback sentiment", v34, 2u);
        OUTLINED_FUNCTION_121();
      }

      goto LABEL_14;
    }

    v4 = "SONAL DATA\nPLEASE REVIEW";
    v118 = 0xD00000000000001ALL;
    v5 = 0x30333831353831;
  }

  else
  {
    v118 = 0xD00000000000001BLL;
    v4 = "sHandle8@NSError16";
    v5 = 0x38323831353831;
  }

  v6 = *(v0 + 1008);
  v7 = *(v0 + 992);
  v8 = *(v0 + 984);
  v112 = v8;
  v114 = *(v0 + 976);
  v116 = *(v0 + 1016);
  v120 = *(v0 + 968);
  v122 = *(v0 + 960);
  v124 = *(v0 + 952);
  v9 = sub_1CFCFE404(1, 2, 1, inited);
  *(v9 + 2) = 2;
  *(v9 + 6) = v5;
  *(v9 + 7) = 0xE700000000000000;
  v127 = v9;

  MEMORY[0x1D3873940](2570, 0xE200000000000000);
  MEMORY[0x1D3873940](v118, v4 | 0x8000000000000000);

  v10 = NSTemporaryDirectory();
  sub_1CFD48FA8();

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v116);
  v11 = *MEMORY[0x1E6968F70];
  v12 = *(v8 + 104);
  v12(v7, v11, v114);
  sub_1CFD48C48();
  OUTLINED_FUNCTION_85();
  *(v0 + 824) = 0xD000000000000011;
  *(v0 + 832) = v13;
  v12(v7, v11, v114);
  sub_1CFD01DC4();
  sub_1CFD48C28();
  (*(v112 + 8))(v7, v114);
  sub_1CFD48FC8();
  v14 = sub_1CFD48FB8();
  v16 = v15;

  (*(v122 + 8))(v120, v124);
  if (v16 >> 60 == 15)
  {

    sub_1CFD08CC4();
    v17 = OUTLINED_FUNCTION_113();
    v18(v17);
    v19 = sub_1CFD48E18();
    v20 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v20);
    OUTLINED_FUNCTION_158();
    if (!v21)
    {
LABEL_9:

      v26 = OUTLINED_FUNCTION_107();
      v27(v26);
      v28 = OUTLINED_FUNCTION_71();
LABEL_15:
      v29(v28);

      OUTLINED_FUNCTION_23_1();

      return v35();
    }

    v22 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_66(v22);
    v25 = "Failed to encode string. Unable to send user feedback.";
LABEL_8:
    OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v23, v24, v25);
    OUTLINED_FUNCTION_77();
    goto LABEL_9;
  }

  sub_1CFD48C88();
  v125 = *(v0 + 928);
  v37 = *(v0 + 920);
  v38 = *(v0 + 888);
  v39 = *(v0 + 880);
  sub_1CFD01E18(v14, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FB0, &qword_1CFD4D008);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CFD4BE70;
  OUTLINED_FUNCTION_85();
  v41[4] = 0xD00000000000001ALL;
  v41[5] = v42;
  v41[6] = 49;
  v41[7] = 0xE100000000000000;
  v41[8] = 0x656C746954;
  v41[9] = 0xE500000000000000;
  OUTLINED_FUNCTION_85();
  *(v43 + 80) = 0xD00000000000001CLL;
  *(v43 + 88) = v44;
  *(v43 + 96) = 0x7470697263736544;
  *(v43 + 104) = 0xEB000000006E6F69;
  *(v43 + 112) = v39;
  *(v43 + 120) = v38;
  strcpy((v43 + 128), "Classification");
  *(v43 + 143) = -18;
  *(v43 + 144) = 1802723668;
  *(v43 + 152) = 0xE400000000000000;
  *(v43 + 160) = 0x6375646F72706552;
  *(v43 + 168) = 0xEF7974696C696269;
  strcpy((v43 + 176), "Not Applicable");
  *(v43 + 191) = -18;
  strcpy((v43 + 192), "ComponentName");
  *(v43 + 206) = -4864;
  *(v43 + 208) = 0x70556863746143;
  *(v43 + 216) = 0xE700000000000000;
  *(v43 + 224) = 0xD000000000000010;
  *(v43 + 232) = 0x80000001CFD5DFC0;
  *(v43 + 240) = 0x6B63616264656546;
  *(v43 + 248) = 0xE800000000000000;
  *(v43 + 256) = 0x6E656E6F706D6F43;
  *(v43 + 264) = 0xEB00000000444974;
  *(v43 + 272) = 0x32383731363631;
  *(v43 + 280) = 0xE700000000000000;
  *(v43 + 288) = 0x7364726F7779654BLL;
  *(v43 + 296) = 0xE800000000000000;
  *(v0 + 848) = v127;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
  sub_1CFD01E84();
  v45 = sub_1CFD48ED8();
  v47 = v46;

  *(v40 + 304) = v45;
  *(v40 + 312) = v47;
  *(v40 + 320) = 0x676169446F747541;
  *(v40 + 328) = 0xEF73636974736F6ELL;
  *(v40 + 336) = 49;
  *(v40 + 344) = 0xE100000000000000;
  strcpy((v40 + 352), "DeleteOnAttach");
  *(v40 + 367) = -18;
  *(v40 + 368) = 49;
  *(v40 + 376) = 0xE100000000000000;
  OUTLINED_FUNCTION_85();
  *(v40 + 384) = 0xD000000000000014;
  *(v40 + 392) = v48;
  OUTLINED_FUNCTION_85();
  *(v40 + 400) = 0xD000000000000056;
  *(v40 + 408) = v49;
  *(v40 + 416) = 0x656D686361747441;
  *(v40 + 424) = 0xEB0000000073746ELL;
  *(v40 + 432) = sub_1CFD48C18();
  *(v40 + 440) = v50;
  v51 = sub_1CFD48EC8();
  sub_1CFD48B78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v125);
  if (EnumTagSinglePayload == 1)
  {
    v53 = *(v0 + 920);

    sub_1CFCE3050(v53, &qword_1EC4F2F98, &unk_1CFD4CFF0);
    sub_1CFD08CC4();
    v54 = OUTLINED_FUNCTION_113();
    v55(v54);
    v19 = sub_1CFD48E18();
    v56 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v56);
    OUTLINED_FUNCTION_158();
    if (!v57)
    {
      goto LABEL_9;
    }

    v58 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_66(v58);
    v25 = "Failed to create URL. Unable to open Tap to Radar.";
    goto LABEL_8;
  }

  (*(*(v0 + 936) + 32))(*(v0 + 944), *(v0 + 920), *(v0 + 928));
  v59 = *(v51 + 16);
  v60 = v51;
  if (v59)
  {
    v128 = MEMORY[0x1E69E7CC0];
    sub_1CFCFF21C(0, v59, 0);
    v63 = sub_1CFD01EE8(v51);
    v64 = 0;
    v65 = v51 + 64;
    v119 = v51 + 64;
    v117 = v51;
    v113 = v61;
    v115 = v59;
    v111 = v51 + 72;
    while ((v63 & 0x8000000000000000) == 0 && v63 < 1 << *(v60 + 32))
    {
      v66 = v63 >> 6;
      if ((*(v65 + 8 * (v63 >> 6)) & (1 << v63)) == 0)
      {
        goto LABEL_52;
      }

      if (*(v60 + 36) != v61)
      {
        goto LABEL_53;
      }

      v123 = v64;
      v126 = v61;
      v121 = v62;

      sub_1CFD48B38();

      v68 = *(v128 + 16);
      v67 = *(v128 + 24);
      if (v68 >= v67 >> 1)
      {
        v79 = OUTLINED_FUNCTION_72(v67);
        sub_1CFCFF21C(v79, v68 + 1, 1);
      }

      *(v128 + 16) = v68 + 1;
      OUTLINED_FUNCTION_73();
      (*(v70 + 32))(v128 + v69 + *(v70 + 72) * v68);
      v60 = v117;
      v71 = 1 << *(v117 + 32);
      v65 = v119;
      if (v63 >= v71)
      {
        goto LABEL_54;
      }

      v72 = *(v119 + 8 * v66);
      if ((v72 & (1 << v63)) == 0)
      {
        goto LABEL_55;
      }

      if (*(v117 + 36) != v126)
      {
        goto LABEL_56;
      }

      v73 = v72 & (-2 << (v63 & 0x3F));
      if (v73)
      {
        v71 = __clz(__rbit64(v73)) | v63 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v74 = v66 << 6;
        v75 = (v111 + 8 * v66);
        v76 = v66 + 1;
        while (v76 < (v71 + 63) >> 6)
        {
          v78 = *v75++;
          v77 = v78;
          v74 += 64;
          ++v76;
          if (v78)
          {
            sub_1CFD02008(v63, v126, v121 & 1);
            v71 = __clz(__rbit64(v77)) + v74;
            goto LABEL_39;
          }
        }

        sub_1CFD02008(v63, v126, v121 & 1);
      }

LABEL_39:
      v62 = 0;
      v64 = v123 + 1;
      v63 = v71;
      v61 = v113;
      if (v123 + 1 == v115)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

LABEL_40:

  v80 = *(v0 + 1016);
  v81 = *(v0 + 1000);
  sub_1CFD48B58();
  v82 = sub_1CFD48EC8();
  *(v0 + 792) = sub_1CFD48FA8();
  *(v0 + 800) = v83;
  v84 = MEMORY[0x1E69E6158];
  sub_1CFD493C8();
  sub_1CFD48B68();
  if (__swift_getEnumTagSinglePayload(v81, 1, v80) == 1)
  {
    sub_1CFCE3050(*(v0 + 1000), &qword_1EC4F2D40, &qword_1CFD4B748);
    v85 = sub_1CFCFEF5C(v0 + 232);
    if (v86)
    {
      v87 = v85;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FD0, &unk_1CFD4D028);
      sub_1CFD494A8();
      sub_1CFD01F28(*(v82 + 48) + 40 * v87);
      sub_1CFD01C10((*(v82 + 56) + 32 * v87), (v0 + 488));
      sub_1CFD494B8();
    }

    else
    {
      *(v0 + 488) = 0u;
      *(v0 + 504) = 0u;
    }

    sub_1CFD01F28(v0 + 232);
    sub_1CFCE3050(v0 + 488, &qword_1EC4F2FB8, &qword_1CFD50AC0);
  }

  else
  {
    v88 = *(v0 + 1024);
    v89 = *(v1 + 1016);
    v90 = *(v1 + 1000);
    *(v1 + 576) = v89;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 552));
    (*(v88 + 32))(boxed_opaque_existential_0, v90, v89);
    sub_1CFD01C10((v1 + 552), (v1 + 712));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1CFCFFA44((v1 + 712), v1 + 232, isUniquelyReferenced_nonNull_native);
    sub_1CFD01F28(v1 + 232);
  }

  *(v1 + 744) = sub_1CFD48FA8();
  *(v1 + 752) = v93;
  OUTLINED_FUNCTION_74();
  sub_1CFD493C8();
  *(v1 + 448) = MEMORY[0x1E69E6530];
  *(v1 + 424) = 3;
  sub_1CFD01C10((v1 + 424), (v1 + 456));
  v94 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CFCFFA44((v1 + 456), v1 + 352, v94);
  sub_1CFD01F28(v1 + 352);
  *(v1 + 760) = sub_1CFD48FA8();
  *(v1 + 768) = v95;
  OUTLINED_FUNCTION_74();
  sub_1CFD493C8();
  v96 = MEMORY[0x1E69E6370];
  *(v1 + 416) = MEMORY[0x1E69E6370];
  *(v1 + 392) = 1;
  sub_1CFD01C10((v1 + 392), (v1 + 520));
  v97 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CFCFFA44((v1 + 520), v1 + 192, v97);
  sub_1CFD01F28(v1 + 192);
  *(v1 + 776) = sub_1CFD48FA8();
  *(v1 + 784) = v98;
  OUTLINED_FUNCTION_74();
  sub_1CFD493C8();
  *(v1 + 608) = v96;
  *(v1 + 584) = 1;
  sub_1CFD01C10((v1 + 584), (v1 + 616));
  v99 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CFCFFA44((v1 + 616), v1 + 312, v99);
  sub_1CFD01F28(v1 + 312);
  *(v1 + 808) = sub_1CFD48FA8();
  *(v1 + 816) = v100;
  OUTLINED_FUNCTION_74();
  sub_1CFD493C8();
  OUTLINED_FUNCTION_85();
  *(v1 + 672) = v84;
  *(v1 + 648) = 0xD000000000000017;
  *(v1 + 656) = v101;
  sub_1CFD01C10((v1 + 648), (v1 + 680));
  v102 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CFCFFA44((v1 + 680), v1 + 272, v102);
  v103 = v82;
  sub_1CFD01F28(v1 + 272);
  v104 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v1 + 1096) = v104;
  if (!v104)
  {

    v109 = OUTLINED_FUNCTION_107();
    v110(v109);
LABEL_14:
    v28 = OUTLINED_FUNCTION_51_0();
    goto LABEL_15;
  }

  v105 = v104;
  v106 = sub_1CFD48F78();
  *(v1 + 1104) = v106;
  sub_1CFD02070(0, &qword_1EC4F2FC0, 0x1E699FB70);
  v107 = sub_1CFCFE054(v103);
  *(v1 + 1112) = v107;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 840;
  *(v1 + 24) = sub_1CFCFDB74;
  v108 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FC8, &qword_1CFD4D020);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1CFCFE0E0;
  *(v1 + 104) = &block_descriptor;
  *(v1 + 112) = v108;
  [v105 openApplication:v106 withOptions:v107 completion:v1 + 80];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_1CFCFDB74()
{
  OUTLINED_FUNCTION_18_1();
  v1 = *(*v0 + 48);
  *(*v0 + 1120) = v1;
  if (v1)
  {
    v2 = sub_1CFCFDE1C;
  }

  else
  {
    v2 = sub_1CFCFDCAC;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1CFCFDCAC()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  (*(*(v0 + 936) + 8))(*(v0 + 944), *(v0 + 928));
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);

  OUTLINED_FUNCTION_83();

  OUTLINED_FUNCTION_23_1();

  return v6();
}

uint64_t sub_1CFCFDE1C(uint64_t a1)
{
  v2 = v1[139];
  v3 = v1[138];
  v4 = v1[137];
  v5 = v1[132];
  v6 = v1[131];
  v7 = v1[130];
  swift_willThrow();

  v8 = sub_1CFD08CC4();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_1CFD48E18();
  v10 = sub_1CFD492E8();
  v11 = OUTLINED_FUNCTION_126(v10);
  v12 = v1[140];
  v13 = v1[131];
  v22 = v1[130];
  v23 = v1[132];
  v14 = v1[129];
  v15 = v1[128];
  v24 = v1[127];
  v16 = v1[118];
  v17 = v1[117];
  v18 = v1[116];
  if (v11)
  {
    v19 = OUTLINED_FUNCTION_120();
    *v19 = 0;
    _os_log_impl(&dword_1CFCD7000, v9, v10, "Failed to launch Tap to Radar", v19, 2u);
    OUTLINED_FUNCTION_121();
  }

  (*(v13 + 8))(v23, v22);
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v14, v24);
  OUTLINED_FUNCTION_83();

  OUTLINED_FUNCTION_23_1();

  return v20();
}

id sub_1CFCFE054(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1CFD48EB8();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t *sub_1CFCFE0E0(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1CFCFE170(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1CFCFE1DC(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFCFE170(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DB0, &qword_1CFD4BDA0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1CFCFE2A0(uint64_t a1, uint64_t a2)
{
  sub_1CFD49728();
  swift_getWitnessTable();
  sub_1CFD48D38();
  return sub_1CFD49758();
}

uint64_t sub_1CFCFE308(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1CFD48D28();
}

uint64_t sub_1CFCFE374(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

char *sub_1CFCFE404(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FA0, &qword_1CFD4D000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFCFE50C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FF8, &qword_1CFD4D048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_1CFCFE60C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1CFCFE70C(v8, v7);
  v10 = *(type metadata accessor for EntityAttachment(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1CFCFE8E0(a4 + v11, v8, v9 + v11, type metadata accessor for EntityAttachment);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1CFCFE70C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3000, &qword_1CFD4D050);
  v4 = *(type metadata accessor for EntityAttachment(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CFCFE808(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_137();
  if (v11 < v10 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_25(), v6 + *(v12 + 72) * v5 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = OUTLINED_FUNCTION_40_1();

    MEMORY[0x1EEE6BD00](v14);
  }

  else if (a3 != v6)
  {
    v13 = OUTLINED_FUNCTION_40_1();

    MEMORY[0x1EEE6BCF8](v13);
  }
}

void sub_1CFCFE8E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_137();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_25(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_40_1();

    MEMORY[0x1EEE6BD00](v12);
  }

  else if (a3 != v5)
  {
    v11 = OUTLINED_FUNCTION_40_1();

    MEMORY[0x1EEE6BCF8](v11);
  }
}

unint64_t sub_1CFCFE9A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFCFEA68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1CFD01B90(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1CFCFEA68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CFCFEB68(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1CFD49458();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1CFCFEB68(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CFCFEBB4(a1, a2);
  sub_1CFCFECCC(&unk_1F4C77AB0);
  return v3;
}

uint64_t sub_1CFCFEBB4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1CFD49078())
  {
    result = sub_1CFCFEDB0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1CFD493F8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1CFD49458();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CFCFECCC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1CFCFEE20(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CFCFEDB0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F48, &qword_1CFD4CFB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1CFCFEE20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F48, &qword_1CFD4CFB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1CFCFEF14(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1CFD49408();
  return 0;
}

unint64_t sub_1CFCFEF5C(uint64_t a1)
{
  v2 = sub_1CFD493A8();

  return sub_1CFCFF054(a1, v2);
}

unint64_t sub_1CFCFEFA0(uint64_t a1)
{
  sub_1CFD49728();
  type metadata accessor for CFString(0);
  sub_1CFCFFDA0(&qword_1EC4F2F88, type metadata accessor for CFString, &unk_1CFD4D1BC);
  sub_1CFD48D38();
  v2 = sub_1CFD49758();

  return sub_1CFCFF118(a1, v2);
}

unint64_t sub_1CFCFF054(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1CFD02014(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1D3873C90](v8, a1);
    sub_1CFD01F28(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CFCFF118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_1CFCFFDA0(&qword_1EC4F2F88, type metadata accessor for CFString, &unk_1CFD4D1BC);
    v8 = v7;
    v9 = sub_1CFD48D28();

    if (v9)
    {
      break;
    }
  }

  return i;
}

void *sub_1CFCFF21C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFCFF33C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFCFF23C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFCFF504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFCFF25C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFCFF634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFCFF33C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FD8, &qword_1CFD4D038);
  v10 = *(sub_1CFD48B48() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1CFD48B48() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1CFCFE8E0(a4 + v16, v8, v13 + v16, MEMORY[0x1E6968178]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1CFCFF504(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3008, &qword_1CFD4D058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFCFF634(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FF8, &qword_1CFD4D048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1CFCFF734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_156();
  v12 = v11;
  v14 = v13;
  v15 = v8;
  v17 = v16;
  if (v18)
  {
    v19 = *(v8 + 24);
    v20 = v19 >> 1;
    if ((v19 >> 1) < v7)
    {
      if (v20 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if ((v19 & 0xFFFFFFFFFFFFFFFELL) <= v7)
      {
        v20 = v7;
      }
    }
  }

  else
  {
    v20 = v7;
  }

  v21 = *(v8 + 16);
  if (v20 <= v21)
  {
    v22 = *(v8 + 16);
  }

  else
  {
    v22 = v20;
  }

  if (!v22)
  {
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v23 = OUTLINED_FUNCTION_87();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_18_2(v25);
  v27 = *(v26 + 72);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v31 = _swift_stdlib_malloc_size(v30);
  if (!v27)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v31 - v29 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_24;
  }

  v30[2] = v21;
  v30[3] = 2 * ((v31 - v29) / v27);
LABEL_19:
  v33 = OUTLINED_FUNCTION_87();
  __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_73();
  if (v17)
  {
    sub_1CFCFE808(v15 + v35, v21, v30 + v35, v14, v12);
    *(v15 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_155();
}

uint64_t sub_1CFCFF8DC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CFCFF9DC(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for EntityAttachment(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1CFCFF9DC(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1CFCFE60C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

_OWORD *sub_1CFCFFA44(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CFCFEF5C(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FD0, &unk_1CFD4D028);
  if ((sub_1CFD494A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1CFCFEF5C(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_1CFD496C8();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = (v14[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_1CFD01C10(a1, v15);
  }

  else
  {
    sub_1CFD02014(a2, v17);
    return sub_1CFCFFCBC(v10, v17, a1, v14);
  }
}

_OWORD *sub_1CFCFFB84(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1CFCFEFA0(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F80, &qword_1CFD4CFE0);
  if ((sub_1CFD494A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1CFCFEFA0(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for CFString(0);
    result = sub_1CFD496C8();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v14);

    return sub_1CFD01C10(a1, v14);
  }

  else
  {
    sub_1CFCFFD38(v9, a2, a1, v13);

    return a2;
  }
}

_OWORD *sub_1CFCFFCBC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1CFD01C10(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1CFCFFD38(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1CFD01C10(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1CFCFFDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFCFFDE8()
{
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  return v0;
}

unint64_t sub_1CFCFFE40()
{
  result = qword_1EC4F7220;
  if (!qword_1EC4F7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7220);
  }

  return result;
}

unint64_t sub_1CFCFFE94()
{
  result = qword_1EC4F2E30;
  if (!qword_1EC4F2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E30);
  }

  return result;
}

unint64_t sub_1CFCFFEE8()
{
  result = qword_1EC4F2E40;
  if (!qword_1EC4F2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E40);
  }

  return result;
}