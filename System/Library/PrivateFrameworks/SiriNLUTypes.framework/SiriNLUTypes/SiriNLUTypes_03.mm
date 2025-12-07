void *sub_1C87CABA4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      OUTLINED_FUNCTION_18_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C87CACE8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1C87CADC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C87CAE94(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CAF1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CB044@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CB074(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_1C8BD49FC();
    v5 = OUTLINED_FUNCTION_32_1();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void *sub_1C87CB0F8(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C8BD49FC();
    v4 = OUTLINED_FUNCTION_32_1();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1C87CB174()
{
  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == v0)
  {
    v4 = v2;
    v5 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
    v5 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v4);
}

uint64_t sub_1C87CB208(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_18_0();
  if (*(v7 + 84) == a3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
    v9 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_storeEnumTagSinglePayload(v9, v3, v3, v8);
}

uint64_t sub_1C87CB2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_18_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_18_0();
  if (*(v10 + 84) == v3)
  {
    v9 = OUTLINED_FUNCTION_32_1();
    goto LABEL_5;
  }

  v12 = *(v4 + *(a3 + 24) + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  v13 = v12 - 1;
  if (v13 < 0)
  {
    v13 = -1;
  }

  return (v13 + 1);
}

void sub_1C87CB39C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_18_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
    OUTLINED_FUNCTION_18_0();
    if (*(v12 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = v4;
      return;
    }

    v11 = OUTLINED_FUNCTION_32_1();
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1C87CB49C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceAlignment.asrHypothesisIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB4E8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceAlignment.nodeIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB534()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.startIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB580()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.endIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB5CC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.startUnicodeScalarIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB618()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.endUnicodeScalarIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB664()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.startMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB6B0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_UtteranceSpan.endMilliSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CB6FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1C87CB740(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1C87CB998@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.modelType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CBA30@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.modelType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CBA60(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CBAE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CBC58(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CBCE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CBDEC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CBE1C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CBF3C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_18_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = v3 + v12;
    goto LABEL_6;
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_18_0();
    if (*(v17 + 84) == a2)
    {
      v8 = v16;
      v12 = a3[8];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      v12 = a3[9];
    }

    goto LABEL_5;
  }

  v14 = *(v3 + a3[6] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_1C87CC0B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_18_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(v4 + a4[6] + 8) = a2;
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      OUTLINED_FUNCTION_18_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
        v14 = a4[9];
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1C87CC23C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC2D0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_OverridesRequest.matchingSpans.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CC2FC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_OverridesRequest.systemDialogActs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CC3A0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_OverridesRequest.inputs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CC3CC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_68_0(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

void sub_1C87CC570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1C87CC614@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87CC644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8BD49FC();
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

uint64_t sub_1C87CC700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87CC7AC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.planText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC7D8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CdmPlannerResponse.generatedTranscriptEventsJson.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC804()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.protoEncoding.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC830()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.runtimeEncoding.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC85C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_CdmPlanner_CDMTranscriptEvent.eventDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CC888(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CC910(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 28) + 8);
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

uint64_t sub_1C87CCA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  result = sub_1C8BD49FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C87CCAF0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87CCB78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C87CCC68()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_OverrideCollection.creationTimestampMsSinceUnixEpoch.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CCCB8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_OverrideCollection.assetID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCCE4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_OverrideCollection.version.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCD10()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ParseOverride.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCD3C()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_ParseOverride.enabled.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CCD88()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ParseOverride.creationTimestampMsSinceUnixEpoch.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CCE48()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ParseOverride.nluRequestRules.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CCE74()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ParseOverride.serializedParse.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCEA0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ComponentOverride.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CCED4()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_ComponentOverride.enabled.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CCF20()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ComponentOverride.creationTimestampMsSinceUnixEpoch.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CCFE8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ComponentOverride.serializedValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD2D4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue.plan.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD300()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NluRequestRule.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD32C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NluRequestRule.localeID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD358()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NluRequestRule.deviceType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD384()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_NluRequestRule.userInterfaceIdiom.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD4A0()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_TurnInputRule.ContextRule.applyToPromptScenarios.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CD4F4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.pattern.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD5A0()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.caseInsensitive.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CD5EC()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.diacriticInsensitive.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CD638()
{
  OUTLINED_FUNCTION_23_0();
  v0 = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.widthInsensitive.getter();
  return OUTLINED_FUNCTION_390(v0);
}

uint64_t sub_1C87CD684()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.captureGroupName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD6B0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CD6DC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetNodeIdx.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CD72C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetUdaIdx.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CD77C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1C87CD7C0()
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  v0 = OUTLINED_FUNCTION_147_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C87CD84C()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_138();
  v3 = OUTLINED_FUNCTION_21_0(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C87CD8AC()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    v2 = v0;
    sub_1C8BD49FC();
    v3 = OUTLINED_FUNCTION_102_0(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1C87CD91C()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB60, &qword_1C8C10AA8);
    v5 = *(v1 + 40);
  }

  v6 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C87CD9C4()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v3 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEB60, &qword_1C8C10AA8);
      v4 = *(v0 + 40);
    }

    v5 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87CDAC4()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6020, &qword_1C8BE6CD8);
    v5 = *(v1 + 28);
  }

  v6 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C87CDB70()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6020, &qword_1C8BE6CD8);
      v4 = *(v0 + 28);
    }

    v5 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87CDC24()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
    v5 = *(v1 + 24);
  }

  v6 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C87CDCCC()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v3 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
      v4 = *(v0 + 24);
    }

    v5 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87CDD8C@<X0>(_DWORD *a1@<X8>)
{
  result = Siri_Nlu_External_SemVer.majorVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87CDDE0@<X0>(_DWORD *a1@<X8>)
{
  result = Siri_Nlu_External_SemVer.minorVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87CDE34@<X0>(_DWORD *a1@<X8>)
{
  result = Siri_Nlu_External_SemVer.patchVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87CDEB0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_1C87CDF88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C87CE080()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE0AC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE2B8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CE35C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.maxNumParses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CE424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    v9 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v10 = *(a1 + *(a3 + 20) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_1C87CE50C()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + *(v2 + 20) + 8) = v0;
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    v7 = v1 + *(v2 + 28);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_1C87CE5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1C87CE674()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1C87CE70C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_TurnSummary.ExecutionSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C87CE7D0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE874()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CE8A0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_NLRouterServiceRequest.requestID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE8CC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_NLRouterServiceRequest.trpCandidateID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CE9E8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_PommesResponse.metadataDomainName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEB04()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.BOOLValue.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87CEC48()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEC74()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.person.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CED18()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEDBC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEDE8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.typeName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CEF0C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.BOOLValue.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C87CEFD8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF07C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.sourceItemIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF0A8()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.entityName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF0D4()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.startIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CF120()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.endIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CF23C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF268()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF294()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF2C0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.maxTokenCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CF30C()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedTokenCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1C87CF4C0()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_RequestSummary.userQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF4EC()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TurnSummary.executedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF518()
{
  OUTLINED_FUNCTION_23_0();
  result = Siri_Nlu_External_NluRouter_TurnSummary.responseText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C87CF5C4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_61_1();
    return (v7 + 1);
  }
}

void sub_1C87CF65C()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1C87CF73C()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
LABEL_14:

    return __swift_getEnumTagSinglePayload(v4, v0, v5);
  }

  if (v0 != 253)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A0, &qword_1C8C13038);
    OUTLINED_FUNCTION_18_0();
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A8, &qword_1C8C13040);
      v9 = *(v2 + 28);
    }

    v4 = v1 + v9;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_195_3();
  if (v6)
  {
    OUTLINED_FUNCTION_220_2();
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

void sub_1C87CF850()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 20)) = v0 + 2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A0, &qword_1C8C13038);
    OUTLINED_FUNCTION_18_0();
    if (*(v5 + 84) == v3)
    {
      OUTLINED_FUNCTION_264_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A8, &qword_1C8C13040);
    }
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C87CF960(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_386();
    v8 = *(v7 + 8) >> 60;
    v9 = ((4 * v8) & 0xC) == 0;
    v10 = ((4 * v8) & 0xC | (v8 >> 2)) ^ 0xF;
    if (v9)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

void sub_1C87CFA08()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    v9 = (v1 + *(v2 + 20));
    *v9 = 0;
    v9[1] = ((~v0 >> 2) & 3 | (4 * ~v0)) << 60;
  }
}

uint64_t sub_1C87CFAA0()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1B0, &qword_1C8C13048);
    OUTLINED_FUNCTION_18_0();
    if (*(v6 + 84) != v0)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 24));
    }

    v4 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1C87CFB74()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1B0, &qword_1C8C13048);
    OUTLINED_FUNCTION_18_0();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = v0;
      return;
    }

    OUTLINED_FUNCTION_32_1();
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C87CFC74()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
LABEL_11:

    return __swift_getEnumTagSinglePayload(v4, v0, v5);
  }

  if (v0 != 250)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F88, &qword_1C8BE6C38);
    OUTLINED_FUNCTION_266();
    v4 = v1 + v10;
    goto LABEL_11;
  }

  v6 = *(v1 + *(v2 + 20));
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(v1 + *(v2 + 20));
  }

  v8 = v7 - 5;
  if (v6 >= 5)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_1C87CFD38()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v3 == 250)
    {
      *(v1 + *(v2 + 20)) = v0 + 5;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F88, &qword_1C8BE6C38);
    OUTLINED_FUNCTION_264_0();
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C87CFE10()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_221_0();
LABEL_7:

    return __swift_getEnumTagSinglePayload(v3, v0, v4);
  }

  if (v0 != 253)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F68, &qword_1C8BE6C18);
    OUTLINED_FUNCTION_266();
    v3 = v1 + v7;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_195_3();
  if (v5)
  {
    OUTLINED_FUNCTION_220_2();
  }

  else
  {
    v6 = -2;
  }

  if (v6 < 0)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

void sub_1C87CFED8()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 20)) = v0 + 2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F68, &qword_1C8BE6C18);
    OUTLINED_FUNCTION_264_0();
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C87CFF88()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    OUTLINED_FUNCTION_61_1();
    return (v3 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v5 + 84) == v0)
    {
      v6 = *(v1 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F58, &qword_1C8C13070);
      OUTLINED_FUNCTION_266();
    }

    v7 = OUTLINED_FUNCTION_21_0(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1C87D0040()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_219_1();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    v2 = v0;
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v3 + 84) != v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F58, &qword_1C8C13070);
      OUTLINED_FUNCTION_264_0();
    }

    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C87D00FC()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 20));
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C0, &qword_1C8C13078);
    v4 = v1 + *(v2 + 40);
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1C87D01B4()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_27_6();
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C0, &qword_1C8C13078);
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C87D028C()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C8, &qword_1C8C13080);
    v4 = v1 + *(v2 + 28);
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_1C87D031C()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C8, &qword_1C8C13080);
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C87D03D4()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    OUTLINED_FUNCTION_61_1();
    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    sub_1C8BD49FC();
    v4 = OUTLINED_FUNCTION_21_0(*(v0 + 48));

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_1C87D0444()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_219_1();
  if (v0)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }
}

uint64_t sub_1C87D04FC()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    OUTLINED_FUNCTION_61_1();
    return (v2 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    sub_1C8BD49FC();
    v4 = OUTLINED_FUNCTION_21_0(*(v0 + 32));

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_1C87D056C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_219_1();
  if (v0)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }
}

uint64_t sub_1C87D05DC()
{
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      return OUTLINED_FUNCTION_23_2(v1 + *(v2 + 20));
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
    v4 = v1 + *(v2 + 32);
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1C87D0694()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_27_6();
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
  }

  OUTLINED_FUNCTION_135();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C87D07A8@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Ssu_SSUEncodingResult.requestID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87D07D8@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Ssu_SSUEncodingResult.ssuEncoderVersion.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87D0808@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Ssu_SSUEncodingResult.utterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C87D0838(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C87D08C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(v8);
  sub_1C8786744(v1 + *(v9 + 28), v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v10 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65(v2);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v10[5]);
    OUTLINED_FUNCTION_313(a1 + v10[6]);
    *(a1 + v10[7]) = 6;
    result = OUTLINED_FUNCTION_65(v2);
    if (!v11)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_121();
    return sub_1C87E4518();
  }

  return result;
}

uint64_t sub_1C87D0ADC(uint64_t a1)
{
  v1 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C87E45D0();
  return Siri_Nlu_Internal_Queryrewrite_QRResponse.requestID.setter();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.requestID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(v1) + 28);
  sub_1C8778ED8(v0 + v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_1_2();
  sub_1C87E4518();
  v3 = type metadata accessor for Siri_Nlu_External_UUID(0);

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
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

uint64_t type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(uint64_t a1)
{
  result = qword_1EC2B3EF8;
  if (!qword_1EC2B3EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*Siri_Nlu_Internal_Queryrewrite_QRResponse.requestID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0) + 28);
  *(v3 + 10) = v11;
  sub_1C8786744(v1 + v11, v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_184();
    sub_1C87E4518();
  }

  return sub_1C87D0E0C;
}

void sub_1C87D0E0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1C87E45D0();
    sub_1C8778ED8(v7 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_1_2();
    sub_1C87E4518();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_6_1();
    sub_1C87E4624();
  }

  else
  {
    sub_1C8778ED8(v7 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_1_2();
    sub_1C87E4518();
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(v4);
  sub_1C8786744(v0 + *(v5 + 28), v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v6 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v11, v12, &unk_1C8BE68C0);
  return v10;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRResponse.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0) + 28);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.qrHypotheses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.repetitionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0);
  v4 = *(v1 + *(result + 32));
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C87D10E8@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRResponse.repetitionType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.repetitionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRResponse.repetitionType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.rewriteHypotheses.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_Queryrewrite_QRResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(v0);
  return nullsub_1;
}

SiriNLUTypes::Siri_Nlu_Internal_Queryrewrite_QRResponse::QRRepetitionType_optional __swiftcall Siri_Nlu_Internal_Queryrewrite_QRResponse.QRRepetitionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BOOL sub_1C87D1410()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD47CC();
  sub_1C87E44D0(&qword_1EC2B6108, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8F0]);
  OUTLINED_FUNCTION_271();
  sub_1C8BD51EC();
  OUTLINED_FUNCTION_271();
  sub_1C8BD51EC();
  return v2 == v1;
}

BOOL sub_1C87D14A8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1C8BE6EF0[a1];
  }

  if (a4)
  {
    a3 = qword_1C8BE6EF0[a3];
  }

  return a1 == a3;
}

uint64_t sub_1C87D151C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87D1ED4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C87D1584@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRResponse.QRRepetitionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  result = __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  *(a1 + *(v3 + 32)) = 4;
  return result;
}

uint64_t sub_1C87D165C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4C80);
  __swift_project_value_buffer(v0, qword_1EC2B4C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qr_hypotheses";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "repetition_type";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rewrite_hypotheses";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.decodeMessage<A>(decoder:)()
{
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
        OUTLINED_FUNCTION_64_1();
        sub_1C87D1980(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_64_1();
        sub_1C87D1A34(v15, v16, v17, v18);
        break;
      case 3:
        OUTLINED_FUNCTION_64_1();
        sub_1C87D1AD4(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_64_1();
        sub_1C87D1B48(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87D1980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C87E44D0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87D1A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  sub_1C87E44D0(&qword_1EC2B5ED0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C87D1AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0);
  sub_1C87D1ED4();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C87D1B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C87E44D0(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteHypothesis);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v14 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0);
  sub_1C8786744(v3 + *(v14 + 28), v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_219();
  if (__swift_getEnumTagSinglePayload(v10, v11, v12) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    sub_1C87E4518();
    sub_1C87E44D0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_203();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_6_1();
    result = sub_1C87E4624();
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0), sub_1C87E44D0(&qword_1EC2B5ED0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis), OUTLINED_FUNCTION_203(), result = sub_1C8BD4E0C(), !v4))
  {
    if (*(v3 + *(v14 + 32)) == 4 || (sub_1C87D1ED4(), OUTLINED_FUNCTION_203(), result = sub_1C8BD4D4C(), !v4))
    {
      if (!*(v3[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0), sub_1C87E44D0(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteHypothesis), OUTLINED_FUNCTION_203(), result = sub_1C8BD4E0C(), !v4))
      {
        OUTLINED_FUNCTION_234();
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

unint64_t sub_1C87D1ED4()
{
  result = qword_1EC2B5EE0;
  if (!qword_1EC2B5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5EE0);
  }

  return result;
}

void static Siri_Nlu_Internal_Queryrewrite_QRResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Siri_Nlu_External_UUID(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v6 = OUTLINED_FUNCTION_233();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_45();
  v30 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(v12);
  v13 = *(v30 + 28);
  v14 = *(v10 + 56);
  OUTLINED_FUNCTION_273(v1 + v13, v2);
  OUTLINED_FUNCTION_273(v0 + v13, v2 + v14);
  v15 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v15, v16, v4);
  if (!v21)
  {
    v17 = OUTLINED_FUNCTION_299_0();
    sub_1C8786744(v17, v18, v19, v20);
    OUTLINED_FUNCTION_76(v2 + v14, 1, v4);
    if (!v21)
    {
      OUTLINED_FUNCTION_1_2();
      sub_1C87E4518();
      v22 = OUTLINED_FUNCTION_260_0();
      v24 = static Siri_Nlu_External_UUID.== infix(_:_:)(v22, v23);
      sub_1C87E4624();
      OUTLINED_FUNCTION_229();
      sub_1C87E4624();
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_6_1();
    sub_1C87E4624();
LABEL_9:
    sub_1C8778ED8(v2, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_76(v2 + v14, 1, v4);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_11:
  sub_1C87D2B40();
  if (v25)
  {
    v26 = *(v30 + 32);
    v27 = *(v1 + v26);
    v28 = *(v0 + v26);
    if (v27 == 4)
    {
      if (v28 != 4)
      {
        goto LABEL_18;
      }
    }

    else if (v27 != v28)
    {
      goto LABEL_18;
    }

    sub_1C87D2B40();
    if (v29)
    {
      sub_1C8BD49FC();
      sub_1C87E44D0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      sub_1C8BD517C();
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse(0);
  sub_1C87E44D0(&qword_1EC2B5EF0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87D2394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87E44D0(&qword_1EC2B5F50, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87D2414(uint64_t a1)
{
  v2 = sub_1C87E44D0(&qword_1EC2B5F28, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87D2484(uint64_t a1, uint64_t a2)
{
  sub_1C87E44D0(&qword_1EC2B5F28, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C87D2500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C8BD530C();
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87D2558()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4CA0);
  __swift_project_value_buffer(v0, qword_1EC2B4CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_AVAILABLE";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NO_REPETITION";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PARTIAL_REPETITION";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FULL_REPETITION";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C87D2814(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1C8BD529C() & 1) == 0)
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

void sub_1C87D28A0()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  if (v11 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14();
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_23_1();
      if (v8)
      {
        if (!v6 || ((OUTLINED_FUNCTION_35(v7), v11) ? (v11 = v9 == v10) : (v11 = 0), !v11 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_29:
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      else if (v6)
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_23_1();
      if (v14)
      {
        if (!v12)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_35(v13);
        v17 = v11 && v15 == v16;
        if (!v17 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v12)
      {
        goto LABEL_29;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      v19 = sub_1C87E44D0(&qword_1EC2B2F70, v18, MEMORY[0x1E69AAC10]);
      v20 = OUTLINED_FUNCTION_93_0(v19);
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v20)
      {
        OUTLINED_FUNCTION_22();
        if (!v11)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87D2B40()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v5 + 16);
  if (v9 == *(v3 + 16) && v9 && v5 != v3)
  {
    OUTLINED_FUNCTION_27_2();
    v11 = v5 + v10;
    v12 = v3 + v10;
    v14 = *(v13 + 72);
    do
    {
      OUTLINED_FUNCTION_258();
      sub_1C87E45D0();
      sub_1C87E45D0();
      v15 = OUTLINED_FUNCTION_97();
      v16 = v1(v15);
      OUTLINED_FUNCTION_121();
      sub_1C87E4624();
      OUTLINED_FUNCTION_118();
      sub_1C87E4624();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v12 += v14;
      v11 += v14;
      OUTLINED_FUNCTION_112_1();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C87D2D00()
{
  OUTLINED_FUNCTION_124();
  v18 = v2;
  v3 = OUTLINED_FUNCTION_201();
  v4(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_254();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  v7 = *(v1 + 16);
  OUTLINED_FUNCTION_227_0();
  if (v8 && v7 && v1 != v0)
  {
    OUTLINED_FUNCTION_27_2();
    v10 = v1 + v9;
    v11 = v0 + v9;
    v13 = *(v12 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_234();
      sub_1C87E45D0();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_269();
      if (!v8)
      {

        v14 = OUTLINED_FUNCTION_306();
        v15 = v18(v14);

        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      v17 = sub_1C87E44D0(&qword_1EC2B2F70, v16, MEMORY[0x1E69AAC10]);
      if ((OUTLINED_FUNCTION_225(v17) & 1) == 0)
      {
        break;
      }

      sub_1C87E4624();
      OUTLINED_FUNCTION_119_0();
      sub_1C87E4624();
      v11 += v13;
      v10 += v13;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_316();
    sub_1C87E4624();
    OUTLINED_FUNCTION_91();
    sub_1C87E4624();
  }

LABEL_12:
  OUTLINED_FUNCTION_125();
}

void sub_1C87D2EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  v24 = v23;
  v26 = v25;
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  OUTLINED_FUNCTION_13_1();
  v532 = v27;
  v533 = v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10_0();
  v531 = v29;
  OUTLINED_FUNCTION_83_0();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v456 - v32;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_123();
  v534 = v34;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v456 - v36);
  v38 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  v41 = OUTLINED_FUNCTION_80(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_206_0();
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC0, &unk_1C8BE6C70);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_96();
  v46 = OUTLINED_FUNCTION_63_0(v45);
  v495 = type metadata accessor for Siri_Nlu_External_EntityCandidate(v46);
  OUTLINED_FUNCTION_13_1();
  v477 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v50);
  v492 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_13_1();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  OUTLINED_FUNCTION_80(v55);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v57);
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD0, &unk_1C8BE6C80);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_81();
  v60 = OUTLINED_FUNCTION_63_0(v59);
  v489 = type metadata accessor for Siri_Nlu_External_UsoGraph(v60);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v63);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v65);
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_81();
  v68 = OUTLINED_FUNCTION_63_0(v67);
  v491 = type metadata accessor for Siri_Nlu_External_UUID(v68);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v71);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v73);
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_81();
  v76 = OUTLINED_FUNCTION_63_0(v75);
  v511 = type metadata accessor for Siri_Nlu_External_Task(v76);
  OUTLINED_FUNCTION_13_1();
  v484 = v77;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_10_0();
  v520 = v79;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_123();
  v521 = v81;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_123();
  v516 = v83;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_96();
  v86 = OUTLINED_FUNCTION_63_0(v85);
  v507 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v86);
  OUTLINED_FUNCTION_13_1();
  v478 = v87;
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE0, &unk_1C8C102D0);
  v96 = OUTLINED_FUNCTION_80(v95);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v98);
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE8, &qword_1C8BE6CA0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_96();
  v102 = OUTLINED_FUNCTION_63_0(v101);
  v497 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v102);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  v107 = OUTLINED_FUNCTION_80(v106);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v109);
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF8, &qword_1C8BE6CB0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_96();
  v113 = OUTLINED_FUNCTION_63_0(v112);
  v506 = type metadata accessor for Siri_Nlu_External_NLContext(v113);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  v118 = OUTLINED_FUNCTION_80(v117);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v120);
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6008, &unk_1C8BE6CC0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_96();
  v124 = OUTLINED_FUNCTION_63_0(v123);
  v518 = type metadata accessor for Siri_Nlu_External_TurnContext(v124);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v129 = OUTLINED_FUNCTION_80(v128);
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v131);
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6018, &qword_1C8BE6CD0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_96();
  v135 = OUTLINED_FUNCTION_63_0(v134);
  v529 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v135);
  OUTLINED_FUNCTION_13_1();
  v524 = v136;
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_10_0();
  v522 = v138;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_123();
  v523 = v140;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_123();
  v527 = v142;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_96();
  v528 = v144;
  v145 = OUTLINED_FUNCTION_86();
  v514 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v145);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6020, &qword_1C8BE6CD8);
  OUTLINED_FUNCTION_80(v148);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v150);
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6028, &unk_1C8BE6CE0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_81();
  v517 = v152;
  v153 = OUTLINED_FUNCTION_86();
  v519 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v153);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_20_1();
  v526 = v155;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v156);
  v525 = (&v456 - v157);
  OUTLINED_FUNCTION_256();
  if (!v176 || !v158 || v26 == v24)
  {
    goto LABEL_286;
  }

  v496 = v33;
  OUTLINED_FUNCTION_27_2();
  v464 = (v52 + 32);
  v465 = (v52 + 8);
  v161 = *(v160 + 72);
  v530 = v37;
  v473 = v38;
  v466 = v20;
  v463 = v21;
  v467 = v22;
  v163 = v525;
  v162 = v526;
  v164 = v517;
  v475 = v165;
  v470 = v26 + v166;
  v471 = v24 + v166;
  v469 = v161;
  while (1)
  {
    v167 = v159;
    v168 = v161 * v159;
    sub_1C87E45D0();
    v474 = v167;
    if (v167 == v475)
    {
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      return;
    }

    sub_1C87E45D0();
    v169 = *(v519 + 28);
    OUTLINED_FUNCTION_172();
    sub_1C8786744(v163 + v169, v164, &qword_1EC2B6020, &qword_1C8BE6CD8);
    OUTLINED_FUNCTION_331(v162 + v169, v164 + v168);
    v170 = OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_41_2(v170, v171);
    if (v176)
    {
      OUTLINED_FUNCTION_19(v164 + v168);
      if (!v176)
      {
        goto LABEL_236;
      }

      v172 = OUTLINED_FUNCTION_200_0();
      sub_1C8778ED8(v172, v173, &qword_1C8BE6CD8);
    }

    else
    {
      OUTLINED_FUNCTION_110();
      OUTLINED_FUNCTION_331(v174, v175);
      OUTLINED_FUNCTION_19(v164 + v168);
      if (v176)
      {
        sub_1C87E4624();
LABEL_236:
        sub_1C8778ED8(v164, &qword_1EC2B6028, &unk_1C8BE6CE0);
        goto LABEL_285;
      }

      OUTLINED_FUNCTION_192();
      sub_1C87E4518();
      OUTLINED_FUNCTION_196_0();
      static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.== infix(_:_:)();
      v178 = v177;
      sub_1C87E4624();
      OUTLINED_FUNCTION_270();
      v37 = v530;
      sub_1C87E4624();
      v179 = OUTLINED_FUNCTION_200_0();
      sub_1C8778ED8(v179, v180, &qword_1C8BE6CD8);
      if ((v178 & 1) == 0)
      {
        goto LABEL_285;
      }
    }

    v181 = *v163;
    v182 = *v162;
    v183 = (*v163)[2];
    if (v183 != *(*v162 + 16))
    {
      goto LABEL_285;
    }

    if (v183 && v181 != v182)
    {
      break;
    }

LABEL_137:
    v342 = v163[1];
    v343 = v162[1];
    v344 = v342[2];
    if (v344 != *(v343 + 16))
    {
      goto LABEL_285;
    }

    if (v344 && v342 != v343)
    {
      v345 = 0;
      OUTLINED_FUNCTION_71();
      v472 = v343 + v347;
      v462 = v346;
      v461 = v343;
      v460 = v348;
      v459 = v346 + v347;
      do
      {
        v191 = v502;
        v349 = v518;
        if (v345 >= v346[2])
        {
          goto LABEL_292;
        }

        v350 = v523;
        v351 = *(v524 + 72) * v345;
        OUTLINED_FUNCTION_31_1();
        sub_1C87E45D0();
        OUTLINED_FUNCTION_303();
        v239 = v501;
        if (v192)
        {
          goto LABEL_293;
        }

        OUTLINED_FUNCTION_31_1();
        v352 = v522;
        sub_1C87E45D0();
        OUTLINED_FUNCTION_297();
        sub_1C8786744(v350 + v345, v191, &qword_1EC2B6010, &unk_1C8BF5040);
        OUTLINED_FUNCTION_280(v352 + v345, v191 + v351);
        OUTLINED_FUNCTION_76(v191, 1, v349);
        if (v176)
        {
          OUTLINED_FUNCTION_76(v191 + v351, 1, v349);
          if (!v176)
          {
            goto LABEL_241;
          }

          sub_1C8778ED8(v191, &qword_1EC2B6010, &unk_1C8BF5040);
        }

        else
        {
          OUTLINED_FUNCTION_280(v191, v239);
          OUTLINED_FUNCTION_76(v191 + v351, 1, v349);
          if (v353)
          {
            OUTLINED_FUNCTION_155_1();
            sub_1C87E4624();
LABEL_241:
            v439 = &qword_1EC2B6018;
            v440 = &qword_1C8BE6CD0;
            goto LABEL_283;
          }

          OUTLINED_FUNCTION_166_0();
          OUTLINED_FUNCTION_110();
          sub_1C87E4518();
          v354 = *(v349 + 5);
          OUTLINED_FUNCTION_172();
          OUTLINED_FUNCTION_231();
          v355 = &qword_1C8BF5050;
          sub_1C8786744(v356, v357, &qword_1EC2B6000, &qword_1C8BF5050);
          sub_1C8786744(v352 + v354, &qword_1EC2B6010 + v351, &qword_1EC2B6000, &qword_1C8BF5050);
          v358 = OUTLINED_FUNCTION_109();
          v359 = v506;
          OUTLINED_FUNCTION_76(v358, v360, v506);
          if (v176)
          {
            OUTLINED_FUNCTION_76(&qword_1EC2B6010 + v351, 1, v359);
            v162 = v482;
            if (!v176)
            {
              goto LABEL_260;
            }

            sub_1C8778ED8(&qword_1EC2B6010, &qword_1EC2B6000, &qword_1C8BF5050);
            v361 = v518;
          }

          else
          {
            OUTLINED_FUNCTION_238();
            sub_1C8786744(v362, v363, &qword_1EC2B6000, &qword_1C8BF5050);
            OUTLINED_FUNCTION_76(&qword_1EC2B6010 + v351, 1, v359);
            if (v364)
            {
              OUTLINED_FUNCTION_131();
              sub_1C87E4624();
LABEL_260:
              v447 = &qword_1EC2B6008;
              v448 = &unk_1C8BE6CC0;
              v449 = &qword_1EC2B6010;
              goto LABEL_268;
            }

            OUTLINED_FUNCTION_162();
            OUTLINED_FUNCTION_110();
            sub_1C87E4518();
            v365 = *(v359 + 36);
            v351 = *(v486 + 48);
            OUTLINED_FUNCTION_257();
            v191 = &qword_1C8BE6CA8;
            sub_1C8786744(v366, v367, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
            v368 = v239;
            OUTLINED_FUNCTION_278(&qword_1EC2B6010 + v365, v239 + v351);
            v369 = OUTLINED_FUNCTION_213();
            v370 = v497;
            OUTLINED_FUNCTION_41_2(v369, v371);
            if (v176)
            {
              OUTLINED_FUNCTION_19(v239 + v351);
              if (!v176)
              {
                goto LABEL_270;
              }

              OUTLINED_FUNCTION_222();
              sub_1C8778ED8(v372, v373, v374);
            }

            else
            {
              OUTLINED_FUNCTION_257();
              OUTLINED_FUNCTION_278(v375, v376);
              OUTLINED_FUNCTION_19(v239 + v351);
              if (v377)
              {
                OUTLINED_FUNCTION_145();
                sub_1C87E4624();
LABEL_270:
                v453 = &qword_1EC2B5FF8;
                v454 = &qword_1C8BE6CB0;
                v455 = v239;
                goto LABEL_280;
              }

              OUTLINED_FUNCTION_146();
              OUTLINED_FUNCTION_110();
              sub_1C87E4518();
              v378 = *(v370 + 24);
              OUTLINED_FUNCTION_172();
              OUTLINED_FUNCTION_257();
              v355 = &qword_1EC2B5FE0;
              sub_1C8786744(v379, v380, &qword_1EC2B5FE0, &unk_1C8C102D0);
              sub_1C8786744(v239 + v378, v239 + v351, &qword_1EC2B5FE0, &unk_1C8C102D0);
              v381 = OUTLINED_FUNCTION_213();
              v370 = v507;
              OUTLINED_FUNCTION_41_2(v381, v382);
              if (v176)
              {
                OUTLINED_FUNCTION_19(v239 + v351);
                v383 = v239;
                if (!v176)
                {
                  goto LABEL_278;
                }

                sub_1C8778ED8(v239, &qword_1EC2B5FE0, &unk_1C8C102D0);
                OUTLINED_FUNCTION_212_0();
              }

              else
              {
                v191 = v476;
                sub_1C8786744(v239, v476, &qword_1EC2B5FE0, &unk_1C8C102D0);
                OUTLINED_FUNCTION_19(v239 + v351);
                if (v384)
                {
                  goto LABEL_277;
                }

                OUTLINED_FUNCTION_55_2();
                OUTLINED_FUNCTION_192();
                sub_1C87E4518();
                v385 = OUTLINED_FUNCTION_237();
                static Siri_Nlu_External_SystemDialogAct.== infix(_:_:)(v385, v386);
                OUTLINED_FUNCTION_11_1();
                sub_1C87E4624();
                sub_1C87E4624();
                v387 = OUTLINED_FUNCTION_260_0();
                sub_1C8778ED8(v387, v388, &unk_1C8C102D0);
                OUTLINED_FUNCTION_212_0();
                v191 = &qword_1C8BE6CA8;
                if ((v370 & 1) == 0)
                {
                  goto LABEL_279;
                }
              }

              sub_1C87DF17C();
              if ((v389 & 1) == 0)
              {
                goto LABEL_279;
              }

              OUTLINED_FUNCTION_255();
              OUTLINED_FUNCTION_0_2();
              sub_1C87E44D0(&qword_1EC2B2F70, v390, MEMORY[0x1E69AAC10]);
              sub_1C8BD517C();
              OUTLINED_FUNCTION_50_0();
              v368 = v391;
              sub_1C87E4624();
              OUTLINED_FUNCTION_100();
              sub_1C87E4624();
              OUTLINED_FUNCTION_222();
              sub_1C8778ED8(v392, v393, v394);
              if ((v370 & 1) == 0)
              {
                goto LABEL_281;
              }
            }

            OUTLINED_FUNCTION_320();
            OUTLINED_FUNCTION_319();
            OUTLINED_FUNCTION_99();
            if (!v176)
            {
              goto LABEL_281;
            }

            if (v351 && v396 != v395)
            {
              OUTLINED_FUNCTION_37_3();
              v370 = v397 + v398;
              v191 = (v399 + v398);
              v355 = *(v400 + 72);
              do
              {
                OUTLINED_FUNCTION_2_3();
                sub_1C87E45D0();
                OUTLINED_FUNCTION_2_3();
                sub_1C87E45D0();
                OUTLINED_FUNCTION_290();
                static Siri_Nlu_External_Task.== infix(_:_:)();
                OUTLINED_FUNCTION_122();
                sub_1C87E4624();
                OUTLINED_FUNCTION_229();
                sub_1C87E4624();
                v37 = v530;
                if ((v368 & 1) == 0)
                {
                  goto LABEL_281;
                }

                v191 = (v355 + v191);
                v370 += v355;
              }

              while (--v351);
            }

            OUTLINED_FUNCTION_320();
            OUTLINED_FUNCTION_319();
            OUTLINED_FUNCTION_99();
            if (!v176)
            {
              goto LABEL_281;
            }

            if (v351 && v402 != v401)
            {
              OUTLINED_FUNCTION_37_3();
              v370 = v403 + v404;
              v191 = (v405 + v404);
              v355 = *(v406 + 72);
              do
              {
                OUTLINED_FUNCTION_2_3();
                sub_1C87E45D0();
                OUTLINED_FUNCTION_2_3();
                sub_1C87E45D0();
                OUTLINED_FUNCTION_290();
                static Siri_Nlu_External_Task.== infix(_:_:)();
                OUTLINED_FUNCTION_122();
                sub_1C87E4624();
                OUTLINED_FUNCTION_229();
                sub_1C87E4624();
                v37 = v530;
                if ((v368 & 1) == 0)
                {
                  goto LABEL_281;
                }

                v191 = (v355 + v191);
                v370 += v355;
              }

              while (--v351);
            }

            OUTLINED_FUNCTION_320();
            OUTLINED_FUNCTION_319();
            sub_1C87D2D00();
            if ((v407 & 1) == 0)
            {
              goto LABEL_281;
            }

            OUTLINED_FUNCTION_320();
            OUTLINED_FUNCTION_319();
            OUTLINED_FUNCTION_247();
            if (!v176)
            {
              goto LABEL_281;
            }

            if (v355 && v409 != v408)
            {
              OUTLINED_FUNCTION_37_3();
              OUTLINED_FUNCTION_245();
              while (1)
              {
                OUTLINED_FUNCTION_29();
                OUTLINED_FUNCTION_238();
                sub_1C87E45D0();
                OUTLINED_FUNCTION_29();
                OUTLINED_FUNCTION_110();
                sub_1C87E45D0();
                v370 = *(v370 + *(v507 + 20));
                OUTLINED_FUNCTION_263();
                if (!v176)
                {

                  OUTLINED_FUNCTION_216();
                  sub_1C88BF490();
                  OUTLINED_FUNCTION_283();

                  if ((v368 & 1) == 0)
                  {
                    break;
                  }
                }

                sub_1C8BD49FC();
                OUTLINED_FUNCTION_0_2();
                sub_1C87E44D0(&qword_1EC2B2F70, v410, MEMORY[0x1E69AAC10]);
                OUTLINED_FUNCTION_257();
                sub_1C8BD517C();
                OUTLINED_FUNCTION_11_1();
                v368 = v411;
                sub_1C87E4624();
                OUTLINED_FUNCTION_261_0();
                sub_1C87E4624();
                v37 = v530;
                if ((v370 & 1) == 0)
                {
                  goto LABEL_281;
                }

                OUTLINED_FUNCTION_244_0();
                if (v176)
                {
                  goto LABEL_195;
                }
              }

              OUTLINED_FUNCTION_54_0();
              sub_1C87E4624();
              OUTLINED_FUNCTION_328_0();
              goto LABEL_281;
            }

LABEL_195:
            OUTLINED_FUNCTION_322();
            OUTLINED_FUNCTION_0_2();
            sub_1C87E44D0(&qword_1EC2B2F70, v412, MEMORY[0x1E69AAC10]);
            v239 = v498;
            sub_1C8BD517C();
            OUTLINED_FUNCTION_115_0();
            sub_1C87E4624();
            OUTLINED_FUNCTION_100();
            sub_1C87E4624();
            sub_1C8778ED8(v493, &qword_1EC2B6000, &qword_1C8BF5050);
            v162 = v482;
            OUTLINED_FUNCTION_314();
            v361 = v518;
            if ((v370 & 1) == 0)
            {
              goto LABEL_282;
            }
          }

          v345 = *(v361 + 24);
          OUTLINED_FUNCTION_172();
          v349 = &unk_1C8BF3D70;
          sub_1C8786744(v239 + v345, v162, &qword_1EC2B5FB8, &unk_1C8BF3D70);
          OUTLINED_FUNCTION_281(v504 + v345, v162 + v351);
          OUTLINED_FUNCTION_73(v162);
          if (v176)
          {
            OUTLINED_FUNCTION_73(v162 + v351);
            if (!v176)
            {
              goto LABEL_267;
            }

            sub_1C8778ED8(v162, &qword_1EC2B5FB8, &unk_1C8BF3D70);
          }

          else
          {
            OUTLINED_FUNCTION_238();
            OUTLINED_FUNCTION_281(v413, v414);
            OUTLINED_FUNCTION_73(v162 + v351);
            if (v415)
            {
              OUTLINED_FUNCTION_157_0();
              sub_1C87E4624();
LABEL_267:
              v447 = &qword_1EC2B5FC0;
              v448 = &unk_1C8BE6C70;
              v449 = v162;
LABEL_268:
              sub_1C8778ED8(v449, v447, v448);
              goto LABEL_282;
            }

            OUTLINED_FUNCTION_160();
            OUTLINED_FUNCTION_192();
            sub_1C87E4518();
            static Siri_Nlu_External_LegacyNLContext.== infix(_:_:)();
            OUTLINED_FUNCTION_113();
            sub_1C87E4624();
            OUTLINED_FUNCTION_168_0();
            sub_1C87E4624();
            v416 = OUTLINED_FUNCTION_315();
            sub_1C8778ED8(v416, v417, &unk_1C8BF3D70);
            if ((v345 & 1) == 0)
            {
              goto LABEL_282;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v418, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_192();
          sub_1C8BD517C();
          OUTLINED_FUNCTION_116();
          sub_1C87E4624();
          OUTLINED_FUNCTION_100();
          sub_1C87E4624();
          sub_1C8778ED8(v191, &qword_1EC2B6010, &unk_1C8BF5040);
          if ((v345 & 1) == 0)
          {
            goto LABEL_284;
          }
        }

        OUTLINED_FUNCTION_264();
        if (!v176)
        {
          goto LABEL_284;
        }

        if (v162 && v191 != v349)
        {
          v419 = 0;
          OUTLINED_FUNCTION_71();
          v239 = v349 + v420;
          while (v419 < v191[2])
          {
            OUTLINED_FUNCTION_5_1();
            v421 = v496;
            sub_1C87E45D0();
            if (v419 >= v349[2])
            {
              goto LABEL_276;
            }

            OUTLINED_FUNCTION_5_1();
            v422 = v531;
            sub_1C87E45D0();
            v345 = *&v421[*(v532 + 20)];
            OUTLINED_FUNCTION_263();
            if (!v176)
            {

              OUTLINED_FUNCTION_216();
              sub_1C89FBAF0();
              OUTLINED_FUNCTION_283();

              if ((v422 & 1) == 0)
              {
                OUTLINED_FUNCTION_56();
                sub_1C87E4624();
                OUTLINED_FUNCTION_328_0();
                goto LABEL_284;
              }
            }

            sub_1C8BD49FC();
            OUTLINED_FUNCTION_0_2();
            sub_1C87E44D0(&qword_1EC2B2F70, v423, MEMORY[0x1E69AAC10]);
            OUTLINED_FUNCTION_217();
            sub_1C8BD517C();
            OUTLINED_FUNCTION_51_2();
            sub_1C87E4624();
            OUTLINED_FUNCTION_107_0();
            sub_1C87E4624();
            v37 = v530;
            if ((v345 & 1) == 0)
            {
              goto LABEL_284;
            }

            if (v162 == ++v419)
            {
              goto LABEL_215;
            }
          }

          goto LABEL_275;
        }

LABEL_215:
        OUTLINED_FUNCTION_214();
        if (v176)
        {
          if (v424 != 2)
          {
            goto LABEL_284;
          }
        }

        else if (v424 == 2 || ((v425 ^ v424) & 1) != 0)
        {
          goto LABEL_284;
        }

        OUTLINED_FUNCTION_214();
        if (v176)
        {
          if (v426 != 2)
          {
            goto LABEL_284;
          }
        }

        else if (v426 == 2 || ((v426 ^ v427) & 1) != 0)
        {
          goto LABEL_284;
        }

        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_0_2();
        v429 = sub_1C87E44D0(&qword_1EC2B2F70, v428, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_275(v429, v430, v431, v429);
        OUTLINED_FUNCTION_117_0();
        sub_1C87E4624();
        OUTLINED_FUNCTION_168_0();
        sub_1C87E4624();
        v163 = v525;
        v162 = v526;
        v164 = v517;
        v346 = v462;
        if ((v345 & 1) == 0)
        {
          goto LABEL_285;
        }

        v345 = v468 + 1;
      }

      while (v468 + 1 != v460);
    }

    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_0_2();
    v433 = sub_1C87E44D0(&qword_1EC2B2F70, v432, MEMORY[0x1E69AAC10]);
    v436 = OUTLINED_FUNCTION_275(v433, v434, v435, v433);
    sub_1C87E4624();
    OUTLINED_FUNCTION_168_0();
    sub_1C87E4624();
    if (v436)
    {
      v159 = v474 + 1;
      v161 = v469;
      if (v474 + 1 != v475)
      {
        continue;
      }
    }

    goto LABEL_286;
  }

  v184 = 0;
  OUTLINED_FUNCTION_71();
  v472 = v182 + v185;
  v462 = v181;
  v461 = v182;
  v460 = v186;
  v459 = v181 + v185;
  while (1)
  {
    v187 = v510;
    if (v184 >= v181[2])
    {
      goto LABEL_290;
    }

    v188 = *(v524 + 72) * v184;
    OUTLINED_FUNCTION_31_1();
    v189 = v528;
    sub_1C87E45D0();
    OUTLINED_FUNCTION_303();
    v190 = v509;
    v191 = v518;
    if (v192)
    {
      goto LABEL_291;
    }

    OUTLINED_FUNCTION_31_1();
    v193 = v527;
    sub_1C87E45D0();
    OUTLINED_FUNCTION_297();
    v194 = v189 + v184;
    v195 = &qword_1EC2B6010;
    sub_1C8786744(v194, v187, &qword_1EC2B6010, &unk_1C8BF5040);
    sub_1C8786744(v193 + v184, v187 + v188, &qword_1EC2B6010, &unk_1C8BF5040);
    OUTLINED_FUNCTION_66_0(v187);
    if (v176)
    {
      OUTLINED_FUNCTION_66_0(v187 + v188);
      if (!v176)
      {
        goto LABEL_238;
      }

      v196 = OUTLINED_FUNCTION_260_0();
      sub_1C8778ED8(v196, v197, &unk_1C8BF5040);
      goto LABEL_45;
    }

    v198 = OUTLINED_FUNCTION_258();
    sub_1C8786744(v198, v199, &qword_1EC2B6010, &unk_1C8BF5040);
    OUTLINED_FUNCTION_66_0(v187 + v188);
    if (v200)
    {
      OUTLINED_FUNCTION_155_1();
      sub_1C87E4624();
LABEL_238:
      v437 = &qword_1EC2B6018;
      v438 = &qword_1C8BE6CD0;
      goto LABEL_257;
    }

    OUTLINED_FUNCTION_166_0();
    OUTLINED_FUNCTION_110();
    sub_1C87E4518();
    v201 = *(v191 + 5);
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_265();
    sub_1C8786744(v202, v203, &qword_1EC2B6000, &qword_1C8BF5050);
    v204 = v193 + v201;
    v184 = &qword_1EC2B6010;
    OUTLINED_FUNCTION_281(v204, &qword_1EC2B6010 + v188);
    v205 = OUTLINED_FUNCTION_120();
    v206 = v506;
    OUTLINED_FUNCTION_76(v205, v207, v506);
    if (v176)
    {
      OUTLINED_FUNCTION_65(&qword_1EC2B6010 + v188);
      v181 = v467;
      if (!v176)
      {
        goto LABEL_243;
      }

      sub_1C8778ED8(&qword_1EC2B6010, &qword_1EC2B6000, &qword_1C8BF5050);
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_265();
    OUTLINED_FUNCTION_281(v217, v218);
    OUTLINED_FUNCTION_65(&qword_1EC2B6010 + v188);
    if (v219)
    {
      OUTLINED_FUNCTION_131();
      sub_1C87E4624();
LABEL_243:
      v441 = &qword_1EC2B6008;
      v442 = &unk_1C8BE6CC0;
LABEL_263:
      sub_1C8778ED8(v184, v441, v442);
      goto LABEL_256;
    }

    OUTLINED_FUNCTION_162();
    v188 = v206;
    OUTLINED_FUNCTION_110();
    sub_1C87E4518();
    v220 = *(v206 + 36);
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_265();
    v187 = &qword_1EC2B5FF0;
    sub_1C8786744(v221, v222, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    OUTLINED_FUNCTION_329(v206 + v220, &qword_1EC2B6010 + v206);
    v223 = OUTLINED_FUNCTION_120();
    v224 = v497;
    OUTLINED_FUNCTION_41_2(v223, v225);
    if (!v176)
    {
      OUTLINED_FUNCTION_231();
      OUTLINED_FUNCTION_329(v250, v251);
      OUTLINED_FUNCTION_19(&qword_1EC2B6010 + v206);
      if (v252)
      {
        OUTLINED_FUNCTION_145();
        sub_1C87E4624();
LABEL_265:
        v450 = &qword_1EC2B5FF8;
        v451 = &qword_1C8BE6CB0;
        v452 = &qword_1EC2B6010;
      }

      else
      {
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_110();
        sub_1C87E4518();
        v253 = *(v224 + 24);
        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_265();
        sub_1C8786744(v254, v255, &qword_1EC2B5FE0, &unk_1C8C102D0);
        OUTLINED_FUNCTION_273(v206 + v253, &qword_1EC2B6010 + v206);
        v256 = OUTLINED_FUNCTION_120();
        v257 = v507;
        OUTLINED_FUNCTION_41_2(v256, v258);
        if (v176)
        {
          OUTLINED_FUNCTION_19(&qword_1EC2B6010 + v206);
          if (!v176)
          {
            goto LABEL_272;
          }

          v259 = OUTLINED_FUNCTION_106();
          sub_1C8778ED8(v259, v260, &unk_1C8C102D0);
LABEL_79:
          sub_1C87DF17C();
          if ((v265 & 1) == 0)
          {
            goto LABEL_287;
          }

          OUTLINED_FUNCTION_255();
          OUTLINED_FUNCTION_0_2();
          v267 = sub_1C87E44D0(&qword_1EC2B2F70, v266, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_274(v267, v268, v269, v267);
          OUTLINED_FUNCTION_50_0();
          v37 = v270;
          sub_1C87E4624();
          OUTLINED_FUNCTION_239();
          sub_1C87E4624();
          sub_1C8778ED8(v485, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
          if ((v257 & 1) == 0)
          {
            goto LABEL_255;
          }

          goto LABEL_81;
        }

        OUTLINED_FUNCTION_110();
        OUTLINED_FUNCTION_273(v261, v262);
        OUTLINED_FUNCTION_19(&qword_1EC2B6010 + v206);
        if (!v263)
        {
          OUTLINED_FUNCTION_55_2();
          OUTLINED_FUNCTION_192();
          sub_1C87E4518();
          v257 = *(v206 + *(v257 + 20));
          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v264, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_311();
          OUTLINED_FUNCTION_192();
          sub_1C8BD517C();
          OUTLINED_FUNCTION_11_1();
          sub_1C87E4624();
          OUTLINED_FUNCTION_270();
          sub_1C87E4624();
          sub_1C8778ED8(&qword_1EC2B6010, &qword_1EC2B5FE0, &unk_1C8C102D0);
          OUTLINED_FUNCTION_291();
          if ((v257 & 1) == 0)
          {
            goto LABEL_287;
          }

          goto LABEL_79;
        }

        OUTLINED_FUNCTION_53_0();
        sub_1C87E4624();
LABEL_272:
        sub_1C8778ED8(&qword_1EC2B6010, &qword_1EC2B5FE8, &qword_1C8BE6CA0);
LABEL_287:
        OUTLINED_FUNCTION_52();
        sub_1C87E4624();
        OUTLINED_FUNCTION_118();
        sub_1C87E4624();
        v450 = &qword_1EC2B5FF0;
        v451 = &qword_1C8BE6CA8;
        v452 = v485;
      }

      sub_1C8778ED8(v452, v450, v451);
      goto LABEL_255;
    }

    OUTLINED_FUNCTION_19(&qword_1EC2B6010 + v206);
    if (!v176)
    {
      goto LABEL_265;
    }

    v226 = OUTLINED_FUNCTION_268();
    sub_1C8778ED8(v226, v227, &qword_1C8BE6CA8);
LABEL_81:
    OUTLINED_FUNCTION_296();
    OUTLINED_FUNCTION_295();
    v273 = *v272;
    v206 = *(v271 + 16);
    if (v206 != *(v273 + 16))
    {
      goto LABEL_255;
    }

    if (v206 && v271 != v273)
    {
      OUTLINED_FUNCTION_37_3();
      v276 = v274 + v275;
      v188 = v277 + v275;
      v457 = *(v278 + 72);
      do
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_289();
        sub_1C87E45D0();
        OUTLINED_FUNCTION_2_3();
        v458 = v188;
        v279 = v516;
        sub_1C87E45D0();
        v280 = v511[5];
        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_231();
        sub_1C8786744(v281, v282, &qword_1EC2B5EC8, &unk_1C8BE68C0);
        OUTLINED_FUNCTION_278(v279 + v280, v190 + v188);
        v283 = OUTLINED_FUNCTION_109();
        v284 = v491;
        OUTLINED_FUNCTION_41_2(v283, v285);
        v286 = v492;
        v187 = v505;
        if (v176)
        {
          OUTLINED_FUNCTION_19(v190 + v188);
          v287 = v190;
          if (!v176)
          {
            goto LABEL_247;
          }

          OUTLINED_FUNCTION_222();
          sub_1C8778ED8(v288, v289, v290);
          v190 = &qword_1EC2B61D0;
        }

        else
        {
          OUTLINED_FUNCTION_257();
          OUTLINED_FUNCTION_278(v291, v292);
          OUTLINED_FUNCTION_19(v190 + v188);
          if (v293)
          {
            OUTLINED_FUNCTION_6_1();
            sub_1C87E4624();
            v287 = v190;
LABEL_247:
            v443 = &qword_1EC2B5EE8;
            v444 = &unk_1C8BE6F90;
            goto LABEL_252;
          }

          OUTLINED_FUNCTION_1_2();
          OUTLINED_FUNCTION_192();
          sub_1C87E4518();
          v294 = OUTLINED_FUNCTION_221();
          static Siri_Nlu_External_UUID.== infix(_:_:)(v294, v295);
          OUTLINED_FUNCTION_126();
          v37 = v296;
          sub_1C87E4624();
          OUTLINED_FUNCTION_229();
          OUTLINED_FUNCTION_289();
          v187 = v505;
          sub_1C87E4624();
          OUTLINED_FUNCTION_222();
          sub_1C8778ED8(v297, v298, v299);
          v190 = &qword_1EC2B61D0;
          if ((v284 & 1) == 0)
          {
            goto LABEL_253;
          }
        }

        v300 = v511[6];
        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_280(v37 + v300, v187);
        OUTLINED_FUNCTION_280(v516 + v300, v187 + v188);
        v301 = OUTLINED_FUNCTION_213();
        v302 = v489;
        OUTLINED_FUNCTION_41_2(v301, v303);
        if (v176)
        {
          OUTLINED_FUNCTION_19(v187 + v188);
          if (!v176)
          {
            goto LABEL_249;
          }

          v304 = OUTLINED_FUNCTION_258();
          sub_1C8778ED8(v304, v305, &qword_1C8C0C1E0);
        }

        else
        {
          v456 = v206;
          OUTLINED_FUNCTION_280(v187, v481);
          OUTLINED_FUNCTION_19(v187 + v188);
          if (v306)
          {
            sub_1C87E4624();
LABEL_249:
            v443 = &qword_1EC2B5FD8;
            v444 = &unk_1C8BE6C90;
            v287 = v187;
            goto LABEL_252;
          }

          OUTLINED_FUNCTION_192();
          sub_1C87E4518();
          OUTLINED_FUNCTION_191();
          static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
          OUTLINED_FUNCTION_127();
          v37 = v307;
          sub_1C87E4624();
          OUTLINED_FUNCTION_223_1();
          OUTLINED_FUNCTION_289();
          sub_1C87E4624();
          sub_1C8778ED8(v505, &qword_1EC2B61D0, &qword_1C8C0C1E0);
          v206 = v456;
          if ((v302 & 1) == 0)
          {
            goto LABEL_253;
          }
        }

        v308 = v511[7];
        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_231();
        v187 = &qword_1EC2B5FC8;
        sub_1C8786744(v309, v310, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
        sub_1C8786744(v308 + v516, &qword_1EC2B61D0 + v188, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
        OUTLINED_FUNCTION_72(&qword_1EC2B61D0);
        if (v176)
        {
          OUTLINED_FUNCTION_72(&qword_1EC2B61D0 + v188);
          if (!v176)
          {
            goto LABEL_251;
          }

          v311 = OUTLINED_FUNCTION_299_0();
          sub_1C8778ED8(v311, v312, &unk_1C8BE8DA0);
        }

        else
        {
          OUTLINED_FUNCTION_238();
          sub_1C8786744(v313, v314, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
          OUTLINED_FUNCTION_72(&qword_1EC2B61D0 + v188);
          if (v315)
          {
            v445 = OUTLINED_FUNCTION_307();
            v446(v445);
LABEL_251:
            v443 = &qword_1EC2B5FD0;
            v444 = &unk_1C8BE6C80;
            v287 = &qword_1EC2B61D0;
LABEL_252:
            sub_1C8778ED8(v287, v443, v444);
LABEL_253:
            sub_1C87E4624();
LABEL_254:
            sub_1C87E4624();
            goto LABEL_255;
          }

          v187 = v480;
          (*v464)(v480, &qword_1EC2B61D0 + v188, v286);
          sub_1C87E44D0(&qword_1EC2B6030, MEMORY[0x1E69AA960], MEMORY[0x1E69AA968]);
          v37 = v308;
          v316 = sub_1C8BD517C();
          v317 = *v465;
          v318 = OUTLINED_FUNCTION_260_0();
          (v317)(v318);
          OUTLINED_FUNCTION_289();
          v317();
          sub_1C8778ED8(&qword_1EC2B61D0, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
          if ((v316 & 1) == 0)
          {
            goto LABEL_253;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v319, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_240();
        v320 = sub_1C8BD517C();
        v195 = v37;
        v37 = type metadata accessor for Siri_Nlu_External_Task;
        sub_1C87E4624();
        OUTLINED_FUNCTION_106();
        sub_1C87E4624();
        if ((v320 & 1) == 0)
        {
          goto LABEL_255;
        }

        v188 = v458 + v457;
        v276 += v457;
        --v206;
      }

      while (v206);
    }

    OUTLINED_FUNCTION_296();
    OUTLINED_FUNCTION_295();
    OUTLINED_FUNCTION_99();
    if (!v176)
    {
      goto LABEL_255;
    }

    if (v188 && v322 != v321)
    {
      OUTLINED_FUNCTION_37_3();
      v325 = v323 + v324;
      v327 = v326 + v324;
      v206 = *(v328 + 72);
      do
      {
        OUTLINED_FUNCTION_2_3();
        v190 = v521;
        sub_1C87E45D0();
        OUTLINED_FUNCTION_2_3();
        v195 = v520;
        sub_1C87E45D0();
        OUTLINED_FUNCTION_97();
        static Siri_Nlu_External_Task.== infix(_:_:)();
        v330 = v329;
        sub_1C87E4624();
        OUTLINED_FUNCTION_298();
        sub_1C87E4624();
        if ((v330 & 1) == 0)
        {
          goto LABEL_255;
        }

        v327 += v206;
        v325 += v206;
      }

      while (--v188);
    }

    OUTLINED_FUNCTION_296();
    OUTLINED_FUNCTION_295();
    OUTLINED_FUNCTION_247();
    if (!v176)
    {
      goto LABEL_255;
    }

    if (v195 && v332 != v331)
    {
      OUTLINED_FUNCTION_37_3();
      OUTLINED_FUNCTION_245();
      do
      {
        OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_238();
        sub_1C87E45D0();
        OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_110();
        sub_1C87E45D0();
        OUTLINED_FUNCTION_263();
        if (!v176)
        {

          OUTLINED_FUNCTION_216();
          sub_1C88CA314();
          OUTLINED_FUNCTION_283();

          if ((v206 & 1) == 0)
          {
            goto LABEL_253;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v333, MEMORY[0x1E69AAC10]);
        v187 = v508;
        OUTLINED_FUNCTION_217();
        v334 = sub_1C8BD517C();
        v206 = type metadata accessor for Siri_Nlu_External_EntityCandidate;
        sub_1C87E4624();
        OUTLINED_FUNCTION_100();
        sub_1C87E4624();
        if ((v334 & 1) == 0)
        {
          goto LABEL_255;
        }

        OUTLINED_FUNCTION_244_0();
      }

      while (!v176);
    }

    OUTLINED_FUNCTION_296();
    OUTLINED_FUNCTION_295();
    OUTLINED_FUNCTION_247();
    if (!v176)
    {
LABEL_255:
      OUTLINED_FUNCTION_132_0();
      sub_1C87E4624();
      OUTLINED_FUNCTION_328_0();
      sub_1C8778ED8(v499, &qword_1EC2B6000, &qword_1C8BF5050);
      OUTLINED_FUNCTION_285();
LABEL_256:
      OUTLINED_FUNCTION_156();
      sub_1C87E4624();
      OUTLINED_FUNCTION_118();
      sub_1C87E4624();
      v437 = &qword_1EC2B6010;
      v438 = &unk_1C8BF5040;
LABEL_257:
      sub_1C8778ED8(v187, v437, v438);
      goto LABEL_284;
    }

    v337 = v507;
    if (v195 && v336 != v335)
    {
      OUTLINED_FUNCTION_37_3();
      OUTLINED_FUNCTION_245();
      while (1)
      {
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_231();
        sub_1C87E45D0();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_110();
        sub_1C87E45D0();
        v338 = *(v190 + *(v337 + 20));
        OUTLINED_FUNCTION_263();
        if (!v176)
        {

          OUTLINED_FUNCTION_216();
          sub_1C88BF490();
          OUTLINED_FUNCTION_283();

          if ((v206 & 1) == 0)
          {
            break;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v339, MEMORY[0x1E69AAC10]);
        v187 = v500;
        OUTLINED_FUNCTION_231();
        sub_1C8BD517C();
        OUTLINED_FUNCTION_11_1();
        v206 = v340;
        sub_1C87E4624();
        OUTLINED_FUNCTION_100();
        sub_1C87E4624();
        if ((v338 & 1) == 0)
        {
          goto LABEL_255;
        }

        OUTLINED_FUNCTION_244_0();
        v337 = v507;
        if (v176)
        {
          goto LABEL_135;
        }
      }

      OUTLINED_FUNCTION_54_0();
      sub_1C87E4624();
      goto LABEL_254;
    }

LABEL_135:
    OUTLINED_FUNCTION_322();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v341, MEMORY[0x1E69AAC10]);
    sub_1C8BD517C();
    OUTLINED_FUNCTION_115_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_168_0();
    sub_1C87E4624();
    sub_1C8778ED8(v499, &qword_1EC2B6000, &qword_1C8BF5050);
    v37 = v530;
    OUTLINED_FUNCTION_285();
    v191 = v518;
    v181 = v467;
    if ((v337 & 1) == 0)
    {
      goto LABEL_256;
    }

LABEL_31:
    v208 = *(v191 + 6);
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_110();
    v191 = &unk_1C8BF3D70;
    sub_1C8786744(v209, v210, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    v211 = v512 + v208;
    v184 = v206;
    OUTLINED_FUNCTION_278(v211, v206 + v188);
    v212 = OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_76(v212, v213, v473);
    if (v176)
    {
      OUTLINED_FUNCTION_65(v206 + v188);
      if (!v176)
      {
        goto LABEL_262;
      }

      OUTLINED_FUNCTION_222();
      sub_1C8778ED8(v214, v215, v216);
      goto LABEL_44;
    }

    v228 = OUTLINED_FUNCTION_306();
    OUTLINED_FUNCTION_278(v228, v229);
    OUTLINED_FUNCTION_65(v206 + v188);
    if (v230)
    {
      OUTLINED_FUNCTION_157_0();
      sub_1C87E4624();
LABEL_262:
      v441 = &qword_1EC2B5FC0;
      v442 = &unk_1C8BE6C70;
      goto LABEL_263;
    }

    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_192();
    sub_1C87E4518();
    OUTLINED_FUNCTION_191();
    static Siri_Nlu_External_LegacyNLContext.== infix(_:_:)();
    OUTLINED_FUNCTION_113();
    sub_1C87E4624();
    sub_1C87E4624();
    OUTLINED_FUNCTION_222();
    sub_1C8778ED8(v231, v232, v233);
    if ((v206 & 1) == 0)
    {
      goto LABEL_256;
    }

LABEL_44:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v234, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_192();
    sub_1C8BD517C();
    OUTLINED_FUNCTION_116();
    sub_1C87E4624();
    OUTLINED_FUNCTION_168_0();
    sub_1C87E4624();
    v235 = OUTLINED_FUNCTION_260_0();
    sub_1C8778ED8(v235, v236, &unk_1C8BF5040);
    if ((v206 & 1) == 0)
    {
      goto LABEL_284;
    }

LABEL_45:
    OUTLINED_FUNCTION_264();
    if (!v176)
    {
      goto LABEL_284;
    }

    if (&qword_1EC2B6010 && v191 != v181)
    {
      break;
    }

LABEL_56:
    OUTLINED_FUNCTION_214();
    if (v176)
    {
      if (v242 != 2)
      {
        goto LABEL_284;
      }
    }

    else if (v242 == 2 || ((v243 ^ v242) & 1) != 0)
    {
      goto LABEL_284;
    }

    OUTLINED_FUNCTION_214();
    if (v176)
    {
      if (v244 != 2)
      {
        goto LABEL_284;
      }
    }

    else if (v244 == 2 || ((v244 ^ v245) & 1) != 0)
    {
      goto LABEL_284;
    }

    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_0_2();
    v247 = sub_1C87E44D0(&qword_1EC2B2F70, v246, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_275(v247, v248, v249, v247);
    OUTLINED_FUNCTION_117_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_168_0();
    sub_1C87E4624();
    v163 = v525;
    v162 = v526;
    v164 = v517;
    v181 = v462;
    if ((v184 & 1) == 0)
    {
      goto LABEL_285;
    }

    v184 = v468 + 1;
    if (v468 + 1 == v460)
    {
      goto LABEL_137;
    }
  }

  v237 = 0;
  OUTLINED_FUNCTION_71();
  v239 = v181 + v238;
  while (v237 < v191[2])
  {
    OUTLINED_FUNCTION_5_1();
    sub_1C87E45D0();
    if (v237 >= v181[2])
    {
      goto LABEL_274;
    }

    OUTLINED_FUNCTION_5_1();
    v240 = v534;
    sub_1C87E45D0();
    v184 = *(v37 + *(v532 + 20));
    OUTLINED_FUNCTION_263();
    if (!v176)
    {

      OUTLINED_FUNCTION_216();
      sub_1C89FBAF0();
      OUTLINED_FUNCTION_283();

      if ((v240 & 1) == 0)
      {
        OUTLINED_FUNCTION_56();
        sub_1C87E4624();
        sub_1C87E4624();
        goto LABEL_284;
      }
    }

    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v241, MEMORY[0x1E69AAC10]);
    v37 = v530;
    OUTLINED_FUNCTION_232_0();
    sub_1C8BD517C();
    OUTLINED_FUNCTION_51_2();
    sub_1C87E4624();
    OUTLINED_FUNCTION_261_0();
    sub_1C87E4624();
    if ((v184 & 1) == 0)
    {
      goto LABEL_284;
    }

    if (&qword_1EC2B6010 == ++v237)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  OUTLINED_FUNCTION_53_0();
  sub_1C87E4624();
  v383 = v239;
LABEL_278:
  sub_1C8778ED8(v383, &qword_1EC2B5FE8, &qword_1C8BE6CA0);
  OUTLINED_FUNCTION_212_0();
LABEL_279:
  OUTLINED_FUNCTION_52();
  sub_1C87E4624();
  OUTLINED_FUNCTION_221();
  sub_1C87E4624();
  v453 = &qword_1EC2B5FF0;
  v454 = &qword_1C8BE6CA8;
  v455 = v483;
LABEL_280:
  sub_1C8778ED8(v455, v453, v454);
LABEL_281:
  OUTLINED_FUNCTION_132_0();
  sub_1C87E4624();
  OUTLINED_FUNCTION_328_0();
  sub_1C8778ED8(v493, &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_314();
LABEL_282:
  OUTLINED_FUNCTION_156();
  sub_1C87E4624();
  OUTLINED_FUNCTION_221();
  sub_1C87E4624();
  v439 = &qword_1EC2B6010;
  v440 = &unk_1C8BF5040;
LABEL_283:
  sub_1C8778ED8(v191, v439, v440);
LABEL_284:
  OUTLINED_FUNCTION_148();
  sub_1C87E4624();
  sub_1C87E4624();
LABEL_285:
  sub_1C87E4624();
  OUTLINED_FUNCTION_118();
  sub_1C87E4624();
LABEL_286:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87D5EEC()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_102();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38_2(v9, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6150, &unk_1C8BE6DF0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_45();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_253_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_69_0();
  v14 = *(v1 + 16);
  if (v14 != *(v0 + 16) || !v14 || v1 == v0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_135_0();
  while (1)
  {
    OUTLINED_FUNCTION_223_1();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_230();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_190_1();
    sub_1C8786744(v3, v2, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_16_1(v2);
    if (!v19)
    {
      break;
    }

    OUTLINED_FUNCTION_16_1(v2 + v0);
    if (!v19)
    {
      goto LABEL_18;
    }

    v15 = OUTLINED_FUNCTION_97();
    sub_1C8778ED8(v15, v16, &qword_1C8BF0240);
LABEL_12:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    v23 = sub_1C87E44D0(&qword_1EC2B2F70, v22, MEMORY[0x1E69AAC10]);
    v0 = OUTLINED_FUNCTION_325(v23);
    sub_1C87E4624();
    OUTLINED_FUNCTION_292();
    sub_1C87E4624();
    if (v0)
    {
      OUTLINED_FUNCTION_68_1();
      OUTLINED_FUNCTION_112_1();
      if (!v19)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v17 = OUTLINED_FUNCTION_118();
  sub_1C8786744(v17, v18, &qword_1EC2B6148, &qword_1C8BF0240);
  OUTLINED_FUNCTION_16_1(v2 + v0);
  if (!v19)
  {
    OUTLINED_FUNCTION_242_0();
    sub_1C87E4518();
    OUTLINED_FUNCTION_182();
    static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value.== infix(_:_:)();
    v21 = v20;
    sub_1C87E4624();
    OUTLINED_FUNCTION_312();
    sub_1C87E4624();
    sub_1C8778ED8(v2, &qword_1EC2B6148, &qword_1C8BF0240);
    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_208();
  sub_1C87E4624();
LABEL_18:
  sub_1C8778ED8(v2, &qword_1EC2B6150, &unk_1C8BE6DF0);
LABEL_19:
  sub_1C87E4624();
  OUTLINED_FUNCTION_147();
  sub_1C87E4624();
LABEL_20:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87D62D8()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  v4 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v102 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F68, &qword_1C8BE6C18);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v103 = v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F70, &unk_1C8BE6C20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v105 = v11;
  v12 = OUTLINED_FUNCTION_86();
  v107 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F78, &unk_1C8C13060);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v110 = v17;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F80, &qword_1C8BE6C30);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81();
  v108 = v19;
  v20 = OUTLINED_FUNCTION_86();
  v21 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F88, &qword_1C8BE6C38);
  OUTLINED_FUNCTION_80(v26);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_75(v28, v97);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F90, &qword_1C8BE6C40);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_46_0();
  v115 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v30);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_28_1();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v97 - v36;
  v38 = *(v2 + 16);
  if (v38 == *(v0 + 16) && v38 && v2 != v0)
  {
    v98 = v4;
    v99 = v34;
    OUTLINED_FUNCTION_27_2();
    v40 = v2 + v39;
    v41 = v0 + v39;
    v100 = *(v42 + 72);
    v101 = v21;
    v113 = v37;
    while (1)
    {
      OUTLINED_FUNCTION_298();
      sub_1C87E45D0();
      if (!v38)
      {
        break;
      }

      OUTLINED_FUNCTION_237();
      sub_1C87E45D0();
      v43 = *(v115 + 20);
      v44 = v37[v43];
      v45 = *(v34 + v43);
      if (v44 == 5)
      {
        if (v45 != 5)
        {
          goto LABEL_62;
        }
      }

      else if (v45 == 5 || qword_1C8BE6EC8[v44] != qword_1C8BE6EC8[v45])
      {
        goto LABEL_62;
      }

      v112 = v40;
      v46 = v37;
      v47 = *(v115 + 24);
      v48 = *(v111 + 48);
      sub_1C8786744(&v46[v47], v1, &qword_1EC2B5F88, &qword_1C8BE6C38);
      sub_1C8786744(v34 + v47, v1 + v48, &qword_1EC2B5F88, &qword_1C8BE6C38);
      v49 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_76(v49, v50, v21);
      if (v60)
      {
        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_76(v51, v52, v53);
        if (!v60)
        {
          goto LABEL_52;
        }

        v54 = OUTLINED_FUNCTION_220();
        sub_1C8778ED8(v54, v55, &qword_1C8BE6C38);
        v56 = v112;
      }

      else
      {
        sub_1C8786744(v1, v114, &qword_1EC2B5F88, &qword_1C8BE6C38);
        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_76(v57, v58, v59);
        if (v60)
        {
          sub_1C87E4624();
LABEL_52:
          v93 = &qword_1EC2B5F90;
          v94 = &qword_1C8BE6C40;
LABEL_61:
          sub_1C8778ED8(v1, v93, v94);
LABEL_62:
          sub_1C87E4624();
          sub_1C87E4624();
          goto LABEL_63;
        }

        sub_1C87E4518();
        v61 = *(v21 + 20);
        v62 = *(v106 + 48);
        v63 = v108;
        sub_1C8786744(v114 + v61, v108, &qword_1EC2B5F78, &unk_1C8C13060);
        sub_1C8786744(v25 + v61, v63 + v62, &qword_1EC2B5F78, &unk_1C8C13060);
        v64 = OUTLINED_FUNCTION_213();
        v65 = v107;
        OUTLINED_FUNCTION_76(v64, v66, v107);
        if (v60)
        {
          OUTLINED_FUNCTION_24(v63 + v62);
          v56 = v112;
          if (!v60)
          {
            goto LABEL_54;
          }

          sub_1C8778ED8(v63, &qword_1EC2B5F78, &unk_1C8C13060);
          v34 = v99;
        }

        else
        {
          v67 = v110;
          sub_1C8786744(v63, v110, &qword_1EC2B5F78, &unk_1C8C13060);
          OUTLINED_FUNCTION_24(v63 + v62);
          if (v68)
          {
            sub_1C87E4624();
LABEL_54:
            v95 = &qword_1EC2B5F80;
            v96 = &qword_1C8BE6C30;
LABEL_59:
            sub_1C8778ED8(v63, v95, v96);
LABEL_60:
            sub_1C87E4624();
            sub_1C87E4624();
            v93 = &qword_1EC2B5F88;
            v94 = &qword_1C8BE6C38;
            goto LABEL_61;
          }

          v69 = v109;
          sub_1C87E4518();
          v70 = *(v65 + 20);
          v71 = *(v67 + v70);
          v72 = *(v69 + v70);
          if (v71 == 2)
          {
            if (v72 != 2)
            {
              goto LABEL_58;
            }
          }

          else if (v72 == 2 || ((v71 ^ v72) & 1) != 0)
          {
            goto LABEL_58;
          }

          v73 = *(v65 + 24);
          v74 = v105;
          v75 = *(v104 + 48);
          sub_1C8786744(v110 + v73, v105, &qword_1EC2B5F68, &qword_1C8BE6C18);
          sub_1C8786744(v109 + v73, v74 + v75, &qword_1EC2B5F68, &qword_1C8BE6C18);
          v76 = v98;
          OUTLINED_FUNCTION_76(v74, 1, v98);
          if (v60)
          {
            OUTLINED_FUNCTION_76(v74 + v75, 1, v76);
            if (!v60)
            {
              goto LABEL_57;
            }

            sub_1C8778ED8(v74, &qword_1EC2B5F68, &qword_1C8BE6C18);
          }

          else
          {
            v97 = v25;
            v77 = v103;
            sub_1C8786744(v74, v103, &qword_1EC2B5F68, &qword_1C8BE6C18);
            OUTLINED_FUNCTION_76(v74 + v75, 1, v76);
            if (v78)
            {
              sub_1C87E4624();
              v63 = v108;
LABEL_57:
              sub_1C8778ED8(v74, &qword_1EC2B5F70, &unk_1C8BE6C20);
LABEL_58:
              sub_1C87E4624();
              sub_1C87E4624();
              v95 = &qword_1EC2B5F78;
              v96 = &unk_1C8C13060;
              goto LABEL_59;
            }

            v79 = v102;
            sub_1C87E4518();
            v80 = *(v76 + 20);
            v81 = *(v79 + v80 + 8);
            if (*(v77 + v80 + 8))
            {
              v63 = v108;
              if (!v81 || ((OUTLINED_FUNCTION_35(v77 + v80), v60) ? (v84 = v82 == v83) : (v84 = 0), !v84 && (sub_1C8BD529C() & 1) == 0))
              {
LABEL_55:
                OUTLINED_FUNCTION_174();
                sub_1C87E4624();
                sub_1C87E4624();
                sub_1C8778ED8(v105, &qword_1EC2B5F68, &qword_1C8BE6C18);
                goto LABEL_58;
              }
            }

            else
            {
              v63 = v108;
              if (v81)
              {
                goto LABEL_55;
              }
            }

            sub_1C8BD49FC();
            OUTLINED_FUNCTION_0_2();
            sub_1C87E44D0(&qword_1EC2B2F70, v85, MEMORY[0x1E69AAC10]);
            v86 = sub_1C8BD517C();
            OUTLINED_FUNCTION_174();
            sub_1C87E4624();
            OUTLINED_FUNCTION_262_0();
            sub_1C87E4624();
            sub_1C8778ED8(v105, &qword_1EC2B5F68, &qword_1C8BE6C18);
            v25 = v97;
            if ((v86 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v87, MEMORY[0x1E69AAC10]);
          v88 = sub_1C8BD517C();
          sub_1C87E4624();
          sub_1C87E4624();
          sub_1C8778ED8(v63, &qword_1EC2B5F78, &unk_1C8C13060);
          v34 = v99;
          v56 = v112;
          if ((v88 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v89, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_217();
        v90 = sub_1C8BD517C();
        sub_1C87E4624();
        OUTLINED_FUNCTION_290();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B5F88, &qword_1C8BE6C38);
        if ((v90 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v91, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_191();
      v92 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_290();
      sub_1C87E4624();
      if (v92)
      {
        v21 = v101;
        v41 += v100;
        v40 = v56 + v100;
        v60 = v38-- == 1;
        v37 = v113;
        if (!v60)
        {
          continue;
        }
      }

      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
LABEL_63:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D6DA0()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v4);
  v6 = OUTLINED_FUNCTION_105(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_251_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_89();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F58, &qword_1C8C13070);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F60, &qword_1C8BE6C10);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_252();
  v46 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(0);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_1();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_256();
  if (v27 && v19 && v2 != v0)
  {
    v40 = v3;
    OUTLINED_FUNCTION_27_2();
    v42 = v12;
    v41 = v1;
    v44 = v21;
    v45 = v17;
    while (1)
    {
      v22 = v20;
      sub_1C87E45D0();
      v43 = v22;
      if (v22 == v44)
      {
        break;
      }

      sub_1C87E45D0();
      v23 = *(v46 + 24);
      v24 = *(v12 + 48);
      sub_1C8786744(v47 + v23, v3, &qword_1EC2B5F58, &qword_1C8C13070);
      OUTLINED_FUNCTION_331(v17 + v23, v3 + v24);
      OUTLINED_FUNCTION_73(v3);
      if (v27)
      {
        OUTLINED_FUNCTION_73(v3 + v24);
        if (!v27)
        {
          goto LABEL_27;
        }

        v25 = OUTLINED_FUNCTION_233();
        sub_1C8778ED8(v25, v26, &qword_1C8C13070);
      }

      else
      {
        OUTLINED_FUNCTION_272(v3, v1);
        OUTLINED_FUNCTION_73(v3 + v24);
        if (v27)
        {
          sub_1C87E4624();
LABEL_27:
          sub_1C8778ED8(v3, &qword_1EC2B5F60, &qword_1C8BE6C10);
LABEL_28:
          sub_1C87E4624();
          OUTLINED_FUNCTION_182();
          sub_1C87E4624();
          goto LABEL_29;
        }

        sub_1C87E4518();
        OUTLINED_FUNCTION_221();
        static Siri_Nlu_External_NluRouter_TypedValue.== infix(_:_:)();
        v29 = v28;
        sub_1C87E4624();
        OUTLINED_FUNCTION_230();
        sub_1C87E4624();
        v30 = OUTLINED_FUNCTION_233();
        sub_1C8778ED8(v30, v31, &qword_1C8C13070);
        if ((v29 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v32 = *v47;
      v33 = *v45;
      v34 = *(*v47 + 16);
      if (v34 != *(*v45 + 16))
      {
        goto LABEL_28;
      }

      if (v34 && v32 != v33)
      {
        v35 = 0;
        OUTLINED_FUNCTION_71();
        while (v35 < *(v32 + 16))
        {
          OUTLINED_FUNCTION_169_0();
          sub_1C87E45D0();
          if (v35 >= *(v33 + 16))
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_169_0();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_184();
          static Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.== infix(_:_:)();
          v37 = v36;
          sub_1C87E4624();
          OUTLINED_FUNCTION_315();
          sub_1C87E4624();
          if ((v37 & 1) == 0)
          {
            goto LABEL_28;
          }

          if (v34 == ++v35)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
        break;
      }

LABEL_22:
      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v38, MEMORY[0x1E69AAC10]);
      v17 = v45;
      v39 = sub_1C8BD517C();
      sub_1C87E4624();
      sub_1C87E4624();
      v12 = v42;
      if (v39)
      {
        v20 = v43 + 1;
        v1 = v41;
        v3 = v40;
        if (v43 + 1 != v44)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D7480()
{
  OUTLINED_FUNCTION_124();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_13_1();
  v74 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_252();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v20 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_256();
  if (v38 && v23 && v7 != v5)
  {
    OUTLINED_FUNCTION_27_2();
    v25 = v7 + v24;
    v26 = 0;
    v69 = v19;
    v70 = v5 + v24;
    v28 = *(v27 + 72);
    v65 = v14;
    v66 = v3;
    v76 = v2;
    v72 = v20;
    v73 = v29;
    v67 = v28;
    v68 = v25;
    while (1)
    {
      OUTLINED_FUNCTION_161();
      sub_1C87E45D0();
      if (v26 == v73)
      {
        break;
      }

      v71 = v26;
      OUTLINED_FUNCTION_161();
      v30 = v77;
      sub_1C87E45D0();
      v31 = *(v20 + 24);
      v32 = *(v2 + v31);
      v33 = *(v30 + v31);
      if (v32 == 4)
      {
        if (v33 != 4)
        {
          goto LABEL_37;
        }
      }

      else if (v32 != v33)
      {
        goto LABEL_37;
      }

      v34 = *(v72 + 28);
      v35 = *(v75 + 48);
      v36 = v69;
      sub_1C8786744(v76 + v34, v69, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C8786744(v77 + v34, v36 + v35, &qword_1EC2B6038, &unk_1C8BE8850);
      OUTLINED_FUNCTION_24(v36);
      if (v38)
      {
        OUTLINED_FUNCTION_24(v36 + v35);
        if (!v38)
        {
          goto LABEL_34;
        }

        sub_1C8778ED8(v36, &qword_1EC2B6038, &unk_1C8BE8850);
      }

      else
      {
        v37 = v66;
        sub_1C8786744(v36, v66, &qword_1EC2B6038, &unk_1C8BE8850);
        OUTLINED_FUNCTION_24(v36 + v35);
        if (v38)
        {
          OUTLINED_FUNCTION_152();
          sub_1C87E4624();
LABEL_34:
          v62 = &qword_1EC2B6040;
          v63 = &unk_1C8BE6CF0;
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_154_0();
        v39 = v65;
        sub_1C87E4518();
        v40 = *(v8 + 20);
        v41 = *(v37 + v40);
        if (v41 != *&v39[v40])
        {

          sub_1C88AD618();
          v43 = v42;

          if ((v43 & 1) == 0)
          {
            OUTLINED_FUNCTION_57();
            sub_1C87E4624();
            OUTLINED_FUNCTION_147();
            sub_1C87E4624();
            v62 = &qword_1EC2B6038;
            v63 = &unk_1C8BE8850;
LABEL_36:
            sub_1C8778ED8(v36, v62, v63);
LABEL_37:
            sub_1C87E4624();
            OUTLINED_FUNCTION_182();
            sub_1C87E4624();
            goto LABEL_38;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v44, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_240();
        OUTLINED_FUNCTION_232_0();
        sub_1C8BD517C();
        OUTLINED_FUNCTION_114();
        sub_1C87E4624();
        OUTLINED_FUNCTION_261_0();
        sub_1C87E4624();
        sub_1C8778ED8(v36, &qword_1EC2B6038, &unk_1C8BE8850);
        if ((v41 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_236();
      v47 = *(v46 + 16);
      if (v47 != *(v45 + 16))
      {
        goto LABEL_37;
      }

      if (v47 && v46 != v45)
      {
        OUTLINED_FUNCTION_39_0();
        v50 = v48 + v49;
        v52 = v51 + v49;
        v54 = *(v53 + 72);
        while (1)
        {
          OUTLINED_FUNCTION_151();
          OUTLINED_FUNCTION_258();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_151();
          sub_1C87E45D0();
          v55 = *(v8 + 20);
          v56 = *(v1 + v55);
          if (v56 != *(v0 + v55))
          {

            sub_1C88AD618();
            v58 = v57;

            if ((v58 & 1) == 0)
            {
              break;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v59, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_97();
          sub_1C8BD517C();
          OUTLINED_FUNCTION_114();
          sub_1C87E4624();
          OUTLINED_FUNCTION_168_0();
          sub_1C87E4624();
          if ((v56 & 1) == 0)
          {
            goto LABEL_37;
          }

          v52 += v54;
          v50 += v54;
          if (!--v47)
          {
            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_57();
        sub_1C87E4624();
        OUTLINED_FUNCTION_118();
        sub_1C87E4624();
        goto LABEL_37;
      }

LABEL_28:
      v20 = v72;
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v60, MEMORY[0x1E69AAC10]);
      v2 = v76;
      v61 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_107_0();
      sub_1C87E4624();
      if (v61)
      {
        v26 = v71 + 1;
        if (v71 + 1 != v73)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
  }

  else
  {
LABEL_38:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D7AE0()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_102();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v89 = v8;
  v9 = OUTLINED_FUNCTION_86();
  v85 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6158, &unk_1C8BFA970);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  v83 = v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6160, &qword_1C8BE6E00);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_74();
  v82 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v90 = v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6168, &qword_1C8BE6E08);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_75(v22, v78[0]);
  v94 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_250();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_123();
  v87 = v25;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_207_0(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6170, &unk_1C8BE6E10);
  OUTLINED_FUNCTION_80(v28);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v78 - v30;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6178, &qword_1C8BFAAB0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_81();
  v96 = v33;
  v34 = OUTLINED_FUNCTION_86();
  v91 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v34);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_20_1();
  v98 = v36;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_49_2();
  v38 = *(v1 + 16);
  OUTLINED_FUNCTION_227_0();
  if (!v49 || !v38 || v1 == v0)
  {
    goto LABEL_50;
  }

  v79 = v2;
  v78[0] = v13;
  v78[1] = v6;
  OUTLINED_FUNCTION_27_2();
  v40 = v1 + v39;
  v41 = v0 + v39;
  v86 = *(v42 + 72);
  v92 = v4;
  v80 = v3;
  v81 = v31;
  while (1)
  {
    OUTLINED_FUNCTION_315();
    sub_1C87E45D0();
    v95 = v40;
    v43 = v31;
    v44 = v98;
    sub_1C87E45D0();
    v45 = *(v93 + 48);
    v46 = v96;
    sub_1C8786744(v4, v96, &qword_1EC2B6170, &unk_1C8BE6E10);
    v47 = v44;
    v48 = v46;
    sub_1C8786744(v47, v46 + v45, &qword_1EC2B6170, &unk_1C8BE6E10);
    OUTLINED_FUNCTION_76(v46, 1, v94);
    if (!v49)
    {
      break;
    }

    OUTLINED_FUNCTION_24(v46 + v45);
    v31 = v43;
    if (!v49)
    {
      goto LABEL_41;
    }

LABEL_36:
    v70 = OUTLINED_FUNCTION_88();
    sub_1C8778ED8(v70, v71, &unk_1C8BE6E10);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v72, MEMORY[0x1E69AAC10]);
    v73 = sub_1C8BD517C();
    v4 = v92;
    sub_1C87E4624();
    sub_1C87E4624();
    if (v73)
    {
      v41 += v86;
      v40 = v95 + v86;
      if (--v38)
      {
        continue;
      }
    }

    goto LABEL_50;
  }

  sub_1C8786744(v46, v43, &qword_1EC2B6170, &unk_1C8BE6E10);
  OUTLINED_FUNCTION_24(v46 + v45);
  if (v49)
  {
    OUTLINED_FUNCTION_141();
    sub_1C87E4624();
LABEL_41:
    v74 = &qword_1EC2B6178;
    v75 = &qword_1C8BFAAB0;
    v76 = v48;
    goto LABEL_49;
  }

  sub_1C87E4518();
  sub_1C87E45D0();
  sub_1C87E45D0();
  OUTLINED_FUNCTION_221();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_108();
    v50 = v80;
    sub_1C87E45D0();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_43;
    }

    v51 = v89;
    sub_1C87E4518();
    v52 = *v50 == *v51 && v50[1] == v51[1];
    v31 = v81;
    if (!v52 && (sub_1C8BD529C() & 1) == 0 || (v50[2] == v51[2] ? (v53 = v50[3] == v51[3]) : (v53 = 0), !v53 && (sub_1C8BD529C() & 1) == 0 || (sub_1C8BD49FC(), OUTLINED_FUNCTION_0_2(), sub_1C87E44D0(&qword_1EC2B2F70, v54, MEMORY[0x1E69AAC10]), (sub_1C8BD517C() & 1) == 0)))
    {
      OUTLINED_FUNCTION_144_0();
      sub_1C87E4624();
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_144_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_259();
    sub_1C87E4624();
LABEL_35:
    OUTLINED_FUNCTION_142();
    sub_1C87E4624();
    sub_1C87E4624();
    OUTLINED_FUNCTION_218();
    sub_1C87E4624();
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_108();
  v55 = v87;
  sub_1C87E45D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_43:
    sub_1C87E4624();
    sub_1C8778ED8(v97, &qword_1EC2B6168, &qword_1C8BE6E08);
    goto LABEL_48;
  }

  v56 = v90;
  sub_1C87E4518();
  v57 = *(v84 + 48);
  v58 = v55;
  v59 = v79;
  sub_1C8786744(v58, v79, &qword_1EC2B6158, &unk_1C8BFA970);
  sub_1C8786744(v56, v59 + v57, &qword_1EC2B6158, &unk_1C8BFA970);
  v60 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v60, v61, v85);
  v31 = v81;
  if (v49)
  {
    OUTLINED_FUNCTION_66_0(v59 + v57);
    if (!v49)
    {
      goto LABEL_45;
    }

    v62 = OUTLINED_FUNCTION_268();
    sub_1C8778ED8(v62, v63, &unk_1C8BFA970);
    goto LABEL_33;
  }

  sub_1C8786744(v59, v83, &qword_1EC2B6158, &unk_1C8BFA970);
  OUTLINED_FUNCTION_66_0(v59 + v57);
  if (!v64)
  {
    OUTLINED_FUNCTION_238();
    sub_1C87E4518();
    OUTLINED_FUNCTION_119_0();
    static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind.== infix(_:_:)();
    v66 = v65;
    sub_1C87E4624();
    sub_1C87E4624();
    v67 = OUTLINED_FUNCTION_268();
    sub_1C8778ED8(v67, v68, &unk_1C8BFA970);
    if ((v66 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_33:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v69, MEMORY[0x1E69AAC10]);
    if ((sub_1C8BD517C() & 1) == 0)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_143();
    sub_1C87E4624();
    OUTLINED_FUNCTION_262_0();
    sub_1C87E4624();
    goto LABEL_35;
  }

  sub_1C87E4624();
LABEL_45:
  sub_1C8778ED8(v59, &qword_1EC2B6160, &qword_1C8BE6E00);
LABEL_46:
  OUTLINED_FUNCTION_143();
  sub_1C87E4624();
LABEL_47:
  sub_1C87E4624();
  OUTLINED_FUNCTION_141();
  sub_1C87E4624();
LABEL_48:
  v77 = v96;
  OUTLINED_FUNCTION_142();
  sub_1C87E4624();
  sub_1C87E4624();
  v74 = &qword_1EC2B6170;
  v75 = &unk_1C8BE6E10;
  v76 = v77;
LABEL_49:
  sub_1C8778ED8(v76, v74, v75);
  sub_1C87E4624();
  OUTLINED_FUNCTION_91();
  sub_1C87E4624();
LABEL_50:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87D8544(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_188();
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

void sub_1C87D89BC()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_249();
  v4 = sub_1C8BD49BC();
  OUTLINED_FUNCTION_13_1();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_0();
  v36 = v7;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_90_0();
  type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup(v9);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_1();
  v33 = v11;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_69_0();
  v13 = *(v2 + 16);
  if (v13 == *(v0 + 16) && v13 && v2 != v0)
  {
    v14 = 0;
    OUTLINED_FUNCTION_27_2();
    v32 = v1;
    v30 = v13;
    while (1)
    {
      OUTLINED_FUNCTION_130();
      sub_1C87E45D0();
      if (v14 == v13)
      {
        break;
      }

      v31 = v14;
      OUTLINED_FUNCTION_130();
      sub_1C87E45D0();
      v15 = *v1 == *v33 && v1[1] == v33[1];
      if (!v15 && (sub_1C8BD529C() & 1) == 0 || (v16 = v32[2], v17 = v33[2], v18 = *(v16 + 16), v18 != *(v17 + 16)))
      {
LABEL_24:
        sub_1C87E4624();
        sub_1C87E4624();
        goto LABEL_25;
      }

      if (v18 && v16 != v17)
      {
        v19 = 0;
        OUTLINED_FUNCTION_71();
        v34 = v17 + v20;
        v35 = v16 + v20;
        while (v19 < *(v16 + 16))
        {
          v21 = v37[9] * v19;
          v22 = v37[2];
          v22(v3, v35 + v21, v4);
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_27;
          }

          v22(v36, v34 + v21, v4);
          sub_1C87E44D0(&qword_1EC2B6180, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB20]);
          v23 = sub_1C8BD517C();
          v24 = v37[1];
          v25 = OUTLINED_FUNCTION_118();
          v24(v25);
          v26 = OUTLINED_FUNCTION_191();
          v24(v26);
          if ((v23 & 1) == 0)
          {
            goto LABEL_24;
          }

          if (v18 == ++v19)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        break;
      }

LABEL_19:
      sub_1C87D7AE0();
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v28, MEMORY[0x1E69AAC10]);
      v1 = v32;
      v29 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_233();
      sub_1C87E4624();
      if (v29)
      {
        v14 = v31 + 1;
        v13 = v30;
        if (v31 + 1 != v30)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D8E4C()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_102();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_2(v11, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D0, &qword_1C8BE6D80);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_45();
  v30 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_69_0();
  v16 = *(v1 + 16);
  if (v16 == *(v0 + 16) && v16 && v1 != v0)
  {
    v31 = v6;
    OUTLINED_FUNCTION_27_2();
    v18 = v1 + v17;
    OUTLINED_FUNCTION_135_0();
    v29 = v19;
    v20 = v30;
    while (1)
    {
      OUTLINED_FUNCTION_223_1();
      sub_1C87E45D0();
      sub_1C87E45D0();
      v21 = *v4 == *v33 && v4[1] == v33[1];
      if (!v21 && (sub_1C8BD529C() & 1) == 0)
      {
        break;
      }

      v22 = *(v20 + 24);
      OUTLINED_FUNCTION_190_1();
      sub_1C8786744(v4 + v22, v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
      sub_1C8786744(v33 + v22, v33 + v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
      OUTLINED_FUNCTION_76(v2, 1, v31);
      if (v21)
      {
        OUTLINED_FUNCTION_72(v33 + v2);
        if (!v21)
        {
          goto LABEL_22;
        }

        sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
      }

      else
      {
        sub_1C8786744(v2, v32, &qword_1EC2B60C8, &qword_1C8BFA9F0);
        OUTLINED_FUNCTION_72(v33 + v2);
        if (v23)
        {
          sub_1C87E4624();
LABEL_22:
          sub_1C8778ED8(v2, &qword_1EC2B60D0, &qword_1C8BE6D80);
          break;
        }

        sub_1C87E4518();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)();
        v25 = v24;
        v20 = v30;
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v26, MEMORY[0x1E69AAC10]);
      v27 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_292();
      sub_1C87E4624();
      if (v27)
      {
        v3 += v29;
        v18 += v29;
        if (--v16)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_147();
    sub_1C87E4624();
  }

LABEL_24:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87D9370()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v32 - v6);
  v8 = *(v2 + 16);
  if (v8 == *(v0 + 16) && v8 && v2 != v0)
  {
    v9 = 0;
    OUTLINED_FUNCTION_27_2();
    v32[1] = v0 + v10;
    while (1)
    {
      sub_1C87E45D0();
      if (v9 == v8)
      {
        break;
      }

      OUTLINED_FUNCTION_330();
      v11 = *v7;
      v12 = *v1;
      v13 = *(*v7 + 16);
      if (v13 != *(*v1 + 16))
      {
        goto LABEL_42;
      }

      if (v13)
      {
        v14 = v11 == v12;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = (v11 + 40);
        v16 = (v12 + 40);
        while (v13)
        {
          v17 = *(v15 - 1) == *(v16 - 1) && *v15 == *v16;
          if (!v17 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_42;
          }

          v15 += 2;
          v16 += 2;
          if (!--v13)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
        break;
      }

LABEL_19:
      OUTLINED_FUNCTION_23_1();
      if (v20)
      {
        if (!v18)
        {
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_35(v19);
        v23 = v14 && v21 == v22;
        if (!v23 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (v18)
      {
        goto LABEL_42;
      }

      v24 = v7[1];
      v25 = v1[1];
      v26 = *(v24 + 16);
      if (v26 != *(v25 + 16))
      {
        goto LABEL_42;
      }

      if (v26 && v24 != v25)
      {
        v27 = (v24 + 40);
        v28 = (v25 + 40);
        while (1)
        {
          v29 = *(v27 - 1) == *(v28 - 1) && *v27 == *v28;
          if (!v29 && (sub_1C8BD529C() & 1) == 0)
          {
            break;
          }

          v27 += 2;
          v28 += 2;
          if (!--v26)
          {
            goto LABEL_38;
          }
        }

LABEL_42:
        sub_1C87E4624();
        OUTLINED_FUNCTION_121();
        sub_1C87E4624();
        goto LABEL_43;
      }

LABEL_38:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v30, MEMORY[0x1E69AAC10]);
      v31 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_268();
      sub_1C87E4624();
      if ((v31 & 1) != 0 && ++v9 != v8)
      {
        continue;
      }

      goto LABEL_43;
    }

    __break(1u);
  }

  else
  {
LABEL_43:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87D964C()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_67_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60F8, &qword_1C8BFAB60);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38_2(v9, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6100, &unk_1C8BE6DB0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_46_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_0();
  if (v24 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_17_5(v14);
    while (1)
    {
      OUTLINED_FUNCTION_215();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_200_0();
      sub_1C87E45D0();
      v15 = OUTLINED_FUNCTION_40_1();
      sub_1C8786744(v15, v16, v17, &qword_1C8BFAB60);
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_16_1(v1);
      if (v24)
      {
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (!v24)
        {
          OUTLINED_FUNCTION_183();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
LABEL_19:
          sub_1C87E4624();
          sub_1C8778ED8(v1, &qword_1EC2B6100, &unk_1C8BE6DB0);
          break;
        }

        v18 = OUTLINED_FUNCTION_220();
        sub_1C8778ED8(v18, v19, &qword_1C8BFAB60);
      }

      else
      {
        OUTLINED_FUNCTION_64_1();
        sub_1C8786744(v20, v21, v22, v23);
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (v24)
        {
          sub_1C87E4624();
          OUTLINED_FUNCTION_119_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_208();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_182();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.OneOf_RuntimeRequirementKind.== infix(_:_:)();
        v26 = v25;
        sub_1C87E4624();
        OUTLINED_FUNCTION_224();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B60F8, &qword_1C8BFAB60);
        if ((v26 & 1) == 0)
        {
          OUTLINED_FUNCTION_183();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          break;
        }
      }

      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_0_2();
      v28 = sub_1C87E44D0(&qword_1EC2B2F70, v27, MEMORY[0x1E69AAC10]);
      v0 = OUTLINED_FUNCTION_94(v28);
      sub_1C87E4624();
      OUTLINED_FUNCTION_279();
      if (v0)
      {
        OUTLINED_FUNCTION_25_3();
        if (!v24)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87D9D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      if (*v3)
      {
        v6 = *(v3 - 1) != 0;
      }

      else
      {
        v6 = *(v3 - 1);
      }

      if (*v4 == 1)
      {
        if (v5)
        {
          if (v6 != 1)
          {
            return OUTLINED_FUNCTION_189_0();
          }
        }

        else if (v6)
        {
          return OUTLINED_FUNCTION_189_0();
        }
      }

      else if (v6 != v5)
      {
        return OUTLINED_FUNCTION_189_0();
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_188();
}

void sub_1C87D9DD0()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_241();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v72 = v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A8, &qword_1C8BE6D58);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v76 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v11 = OUTLINED_FUNCTION_80(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_0();
  v73 = v12;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_96();
  v79 = v14;
  v15 = OUTLINED_FUNCTION_86();
  v82 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v80 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_45();
  v24 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(v23);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_28_1();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v64 - v30);
  v32 = *(v0 + 16);
  if (v32 != *(v3 + 16) || !v32 || v0 == v3)
  {
    goto LABEL_41;
  }

  v67 = v5;
  OUTLINED_FUNCTION_27_2();
  v34 = v0 + v33;
  v35 = v3 + v33;
  v77 = *(v36 + 72);
  v78 = v24;
  v74 = v21;
  v70 = v1;
  v66 = v31;
  v65 = v28;
  while (1)
  {
    sub_1C87E45D0();
    OUTLINED_FUNCTION_271();
    sub_1C87E45D0();
    v37 = *v31;
    v38 = *v28;
    if (*(v31 + 8))
    {
      v37 = *v31 != 0;
    }

    if (*(v28 + 8) == 1)
    {
      if (v38)
      {
        if (v37 != 1)
        {
          goto LABEL_40;
        }
      }

      else if (v37)
      {
        goto LABEL_40;
      }
    }

    else if (v37 != v38)
    {
      goto LABEL_40;
    }

    v39 = *(v24 + 24);
    v40 = *(v81 + 48);
    sub_1C8786744(v31 + v39, v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    sub_1C8786744(v28 + v39, v1 + v40, &qword_1EC2B60D8, &qword_1C8BE6D88);
    v41 = OUTLINED_FUNCTION_109();
    v42 = v82;
    OUTLINED_FUNCTION_76(v41, v43, v82);
    if (!v45)
    {
      break;
    }

    OUTLINED_FUNCTION_66_0(v1 + v40);
    if (!v45)
    {
      OUTLINED_FUNCTION_173_0();
      sub_1C87E4624();
      OUTLINED_FUNCTION_191();
LABEL_35:
      sub_1C87E4624();
      sub_1C8778ED8(v1, &qword_1EC2B60E0, &qword_1C8BE6D90);
      goto LABEL_41;
    }

LABEL_30:
    sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    v24 = v78;
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v62, MEMORY[0x1E69AAC10]);
    v63 = sub_1C8BD517C();
    sub_1C87E4624();
    OUTLINED_FUNCTION_215();
    sub_1C87E4624();
    if (v63)
    {
      v35 += v77;
      v34 += v77;
      if (--v32)
      {
        continue;
      }
    }

    goto LABEL_41;
  }

  v44 = v74;
  sub_1C8786744(v1, v74, &qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_66_0(v1 + v40);
  if (v45)
  {
    OUTLINED_FUNCTION_173_0();
    sub_1C87E4624();
    OUTLINED_FUNCTION_191();
    sub_1C87E4624();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_242_0();
  v46 = v80;
  sub_1C87E4518();
  v47 = *(v42 + 20);
  v48 = *(v44 + v47);
  v49 = *(v46 + v47);
  if (v48 == v49)
  {
LABEL_28:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v61, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_217();
    if ((sub_1C8BD517C() & 1) == 0)
    {
      goto LABEL_39;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_119_0();
    sub_1C87E4624();
    v1 = v70;
    goto LABEL_30;
  }

  v50 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind;
  OUTLINED_FUNCTION_277(v48 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind, &v84);
  v51 = v79;
  v31 = &qword_1EC2B60B0;
  sub_1C8786744(v48 + v50, v79, &qword_1EC2B60B0, &qword_1C8BE6D60);
  v69 = v48;
  v52 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind;
  OUTLINED_FUNCTION_277(v49 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind, &v83);
  v53 = v76;
  v54 = *(v75 + 48);
  v55 = OUTLINED_FUNCTION_262_0();
  sub_1C8786744(v55, v56, &qword_1EC2B60B0, &qword_1C8BE6D60);
  v68 = v54;
  sub_1C8786744(v49 + v52, v53 + v54, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_76(v53, 1, v67);
  v71 = v49;
  if (v45)
  {

    sub_1C8778ED8(v51, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_66_0(v53 + v68);
    v28 = v65;
    if (!v45)
    {
      goto LABEL_37;
    }

    sub_1C8778ED8(v53, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_308();
LABEL_27:

    goto LABEL_28;
  }

  sub_1C8786744(v53, v73, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_66_0(v53 + v68);
  if (!v57)
  {
    OUTLINED_FUNCTION_176();
    sub_1C87E4518();

    OUTLINED_FUNCTION_106();
    static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind.== infix(_:_:)();
    LODWORD(v68) = v58;
    sub_1C87E4624();
    sub_1C8778ED8(v79, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_315();
    sub_1C87E4624();
    v59 = OUTLINED_FUNCTION_306();
    sub_1C8778ED8(v59, v60, &qword_1C8BE6D60);
    v31 = v66;
    v28 = v65;
    if ((v68 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  sub_1C8778ED8(v79, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_175();
  sub_1C87E4624();
LABEL_37:
  sub_1C8778ED8(v53, &qword_1EC2B60A8, &qword_1C8BE6D58);
  OUTLINED_FUNCTION_308();
LABEL_38:

LABEL_39:
  sub_1C87E4624();
  OUTLINED_FUNCTION_91();
  sub_1C87E4624();
  sub_1C8778ED8(v70, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_40:
  sub_1C87E4624();
  OUTLINED_FUNCTION_191();
  sub_1C87E4624();
LABEL_41:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DA628()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_84();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A8, &qword_1C8BE6D58);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v49 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v11 = OUTLINED_FUNCTION_80(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_90_0();
  v53 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_1();
  v54 = v15;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_69_0();
  v17 = *(v1 + 16);
  if (v17 != *(v0 + 16) || !v17 || v1 == v0)
  {
    goto LABEL_21;
  }

  v45 = v2;
  v47 = v3;
  v48 = v6;
  OUTLINED_FUNCTION_27_2();
  v19 = v1 + v18;
  v20 = v0 + v18;
  v50 = v4;
  v51 = *(v21 + 72);
  v22 = v49;
  while (1)
  {
    OUTLINED_FUNCTION_270();
    sub_1C87E45D0();
    sub_1C87E45D0();
    v23 = *(v53 + 20);
    v24 = *(v3 + v23);
    v25 = *(v54 + v23);
    if (v24 == v25)
    {
      goto LABEL_14;
    }

    v26 = v22;
    v27 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind;
    OUTLINED_FUNCTION_277(v24 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind, &v56);
    sub_1C8786744(v24 + v27, v4, &qword_1EC2B60B0, &qword_1C8BE6D60);
    v28 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind;
    OUTLINED_FUNCTION_277(v25 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstanceP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typeInstanceKind, &v55);
    v29 = *(v52 + 48);
    v30 = OUTLINED_FUNCTION_262_0();
    sub_1C8786744(v30, v31, &qword_1EC2B60B0, &qword_1C8BE6D60);
    sub_1C8786744(v25 + v28, v26 + v29, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_76(v26, 1, v48);
    if (v40)
    {

      v32 = OUTLINED_FUNCTION_261_0();
      sub_1C8778ED8(v32, v33, &qword_1C8BE6D60);
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_76(v34, v35, v36);
      v3 = v47;
      v22 = v26;
      if (!v40)
      {
        goto LABEL_18;
      }

      sub_1C8778ED8(v26, &qword_1EC2B60B0, &qword_1C8BE6D60);
      goto LABEL_13;
    }

    sub_1C8786744(v26, v45, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_76(v37, v38, v39);
    if (v40)
    {
      break;
    }

    OUTLINED_FUNCTION_176();
    sub_1C87E4518();

    OUTLINED_FUNCTION_107_0();
    static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind.== infix(_:_:)();
    v46 = v41;
    sub_1C87E4624();
    sub_1C8778ED8(v50, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_91();
    v22 = v49;
    sub_1C87E4624();
    v42 = OUTLINED_FUNCTION_216();
    sub_1C8778ED8(v42, v43, &qword_1C8BE6D60);
    v3 = v47;
    if ((v46 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:

    v4 = v50;
LABEL_14:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v44, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_240();
    if ((sub_1C8BD517C() & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_147();
    sub_1C87E4624();
    v20 += v51;
    v19 += v51;
    if (!--v17)
    {
      goto LABEL_21;
    }
  }

  sub_1C8778ED8(v50, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_175();
  sub_1C87E4624();
  v22 = v26;
LABEL_18:
  sub_1C8778ED8(v22, &qword_1EC2B60A8, &qword_1C8BE6D58);
LABEL_19:

LABEL_20:
  sub_1C87E4624();
  OUTLINED_FUNCTION_147();
  sub_1C87E4624();
LABEL_21:
  OUTLINED_FUNCTION_125();
}

void sub_1C87DAB18()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_67_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38_2(v9, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A0, &qword_1C8BE6D50);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_46_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_0();
  if (v24 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_17_5(v14);
    while (1)
    {
      OUTLINED_FUNCTION_215();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_200_0();
      sub_1C87E45D0();
      v15 = OUTLINED_FUNCTION_40_1();
      sub_1C8786744(v15, v16, v17, &qword_1C8BFAAC0);
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_16_1(v1);
      if (v24)
      {
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (!v24)
        {
          OUTLINED_FUNCTION_170_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
LABEL_19:
          sub_1C87E4624();
          sub_1C8778ED8(v1, &qword_1EC2B60A0, &qword_1C8BE6D50);
          break;
        }

        v18 = OUTLINED_FUNCTION_220();
        sub_1C8778ED8(v18, v19, &qword_1C8BFAAC0);
      }

      else
      {
        OUTLINED_FUNCTION_64_1();
        sub_1C8786744(v20, v21, v22, v23);
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (v24)
        {
          sub_1C87E4624();
          OUTLINED_FUNCTION_119_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_208();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_182();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind.== infix(_:_:)();
        v26 = v25;
        sub_1C87E4624();
        OUTLINED_FUNCTION_224();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
        if ((v26 & 1) == 0)
        {
          OUTLINED_FUNCTION_170_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          break;
        }
      }

      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_0_2();
      v28 = sub_1C87E44D0(&qword_1EC2B2F70, v27, MEMORY[0x1E69AAC10]);
      v0 = OUTLINED_FUNCTION_94(v28);
      sub_1C87E4624();
      OUTLINED_FUNCTION_279();
      if (v0)
      {
        OUTLINED_FUNCTION_25_3();
        if (!v24)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DAE94()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_84();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&byte_1EC2B60B8, &qword_1C8BE6D68);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v11 = OUTLINED_FUNCTION_80(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_206_0();
  v53 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v55 = v14;
  OUTLINED_FUNCTION_111();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_69_0();
  v16 = *(v1 + 16);
  if (v16 != *(v0 + 16) || !v16 || v1 == v0)
  {
    goto LABEL_21;
  }

  v46 = v2;
  v49 = v4;
  v50 = v6;
  OUTLINED_FUNCTION_27_2();
  v18 = v1 + v17;
  v19 = v0 + v17;
  v52 = *(v20 + 72);
  v48 = v3;
  while (1)
  {
    OUTLINED_FUNCTION_239();
    sub_1C87E45D0();
    sub_1C87E45D0();
    v21 = *(v53 + 20);
    v22 = *(v4 + v21);
    v23 = *(v55 + v21);
    if (v22 == v23)
    {
      goto LABEL_14;
    }

    v24 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typedValueKind;
    OUTLINED_FUNCTION_277(v22 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typedValueKind, &v57);
    sub_1C8786744(v22 + v24, v3, &qword_1EC2B60C0, &unk_1C8BE6D70);
    v25 = v3;
    v26 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typedValueKind;
    OUTLINED_FUNCTION_277(v23 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__typedValueKind, &v56);
    v27 = *(v51 + 48);
    sub_1C8786744(v25, v54, &qword_1EC2B60C0, &unk_1C8BE6D70);
    sub_1C8786744(v23 + v26, v54 + v27, &qword_1EC2B60C0, &unk_1C8BE6D70);
    v28 = OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_76(v28, v29, v50);
    if (v36)
    {

      sub_1C8778ED8(v25, &qword_1EC2B60C0, &unk_1C8BE6D70);
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_76(v30, v31, v32);
      v4 = v49;
      if (!v36)
      {
        goto LABEL_19;
      }

      sub_1C8778ED8(v54, &qword_1EC2B60C0, &unk_1C8BE6D70);
      v3 = v48;
      goto LABEL_13;
    }

    sub_1C8786744(v54, v46, &qword_1EC2B60C0, &unk_1C8BE6D70);
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_76(v33, v34, v35);
    if (v36)
    {
      break;
    }

    sub_1C87E4518();

    OUTLINED_FUNCTION_261_0();
    static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind.== infix(_:_:)();
    v47 = v37;
    sub_1C87E4624();
    v3 = v48;
    OUTLINED_FUNCTION_232_0();
    sub_1C8778ED8(v38, v39, v40);
    OUTLINED_FUNCTION_147();
    sub_1C87E4624();
    OUTLINED_FUNCTION_232_0();
    sub_1C8778ED8(v41, v42, v43);
    v4 = v49;
    if ((v47 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_13:

LABEL_14:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v44, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_240();
    v45 = sub_1C8BD517C();
    sub_1C87E4624();
    sub_1C87E4624();
    if (v45)
    {
      v19 += v52;
      v18 += v52;
      if (--v16)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_1C8778ED8(v48, &qword_1EC2B60C0, &unk_1C8BE6D70);
  sub_1C87E4624();
LABEL_19:
  sub_1C8778ED8(v54, &byte_1EC2B60B8, &qword_1C8BE6D68);
LABEL_20:

  sub_1C87E4624();
  OUTLINED_FUNCTION_147();
  sub_1C87E4624();
LABEL_21:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DB73C()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_67_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38_2(v9, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6060, &unk_1C8BE6D10);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_46_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_0();
  if (v24 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_17_5(v14);
    while (1)
    {
      OUTLINED_FUNCTION_215();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_200_0();
      sub_1C87E45D0();
      v15 = OUTLINED_FUNCTION_40_1();
      sub_1C8786744(v15, v16, v17, &qword_1C8BE6D08);
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_16_1(v1);
      if (v24)
      {
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (!v24)
        {
          OUTLINED_FUNCTION_159_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
LABEL_19:
          sub_1C87E4624();
          sub_1C8778ED8(v1, &qword_1EC2B6060, &unk_1C8BE6D10);
          break;
        }

        v18 = OUTLINED_FUNCTION_220();
        sub_1C8778ED8(v18, v19, &qword_1C8BE6D08);
      }

      else
      {
        OUTLINED_FUNCTION_64_1();
        sub_1C8786744(v20, v21, v22, v23);
        OUTLINED_FUNCTION_16_1(v1 + v0);
        if (v24)
        {
          sub_1C87E4624();
          OUTLINED_FUNCTION_119_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_208();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_182();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind.== infix(_:_:)();
        v26 = v25;
        sub_1C87E4624();
        OUTLINED_FUNCTION_224();
        sub_1C87E4624();
        sub_1C8778ED8(v1, &qword_1EC2B6058, &qword_1C8BE6D08);
        if ((v26 & 1) == 0)
        {
          OUTLINED_FUNCTION_159_0();
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          break;
        }
      }

      OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_0_2();
      v28 = sub_1C87E44D0(&qword_1EC2B2F70, v27, MEMORY[0x1E69AAC10]);
      v0 = OUTLINED_FUNCTION_94(v28);
      sub_1C87E4624();
      OUTLINED_FUNCTION_279();
      if (v0)
      {
        OUTLINED_FUNCTION_25_3();
        if (!v24)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DBAB8()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_67_0();
  v74 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolSummaryString.Component(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - v6;
  v8 = *(v1 + 16);
  if (v8 != *(v0 + 16) || !v8 || v1 == v0)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_27_2();
  v10 = v1 + v9;
  OUTLINED_FUNCTION_135_0();
  v73 = v11;
  while (1)
  {
    OUTLINED_FUNCTION_168_0();
    sub_1C87E45D0();
    v12 = v75;
    sub_1C87E45D0();
    v14 = *v7;
    v13 = *(v7 + 1);
    v15 = v7[16];
    v16 = *v12;
    v17 = v12[1];
    v18 = *(v12 + 16);
    if (v15 == 255)
    {
      if (v18 != 255)
      {
LABEL_30:
        v59 = OUTLINED_FUNCTION_47_0();
        sub_1C87E44B0(v59, v60, v61);
        v62 = OUTLINED_FUNCTION_193();
        v64 = v18;
        goto LABEL_33;
      }

      v27 = OUTLINED_FUNCTION_88();
      sub_1C87E4490(v27, v28, 255);
      v29 = OUTLINED_FUNCTION_193();
      sub_1C87E4490(v29, v30, 255);
      goto LABEL_25;
    }

    if (v18 == 255)
    {
      goto LABEL_30;
    }

    if (v15)
    {
      if ((v18 & 1) == 0)
      {
        break;
      }

      if (v14 == v16 && v13 == v17)
      {
LABEL_24:
        v42 = OUTLINED_FUNCTION_48_1();
        sub_1C87E4490(v42, v43, v44);
        v45 = OUTLINED_FUNCTION_88();
        sub_1C87E4490(v45, v46, v18);
        v47 = OUTLINED_FUNCTION_48_1();
        sub_1C87E4490(v47, v48, v49);
        v50 = OUTLINED_FUNCTION_88();
        sub_1C87E44C8(v50, v51);
        v52 = OUTLINED_FUNCTION_88();
        sub_1C87E44C8(v52, v53);
      }

      else
      {
        OUTLINED_FUNCTION_88();
        HIDWORD(v72) = sub_1C8BD529C();
        v20 = OUTLINED_FUNCTION_47_0();
        sub_1C87E4490(v20, v21, v22);
        v23 = OUTLINED_FUNCTION_88();
        sub_1C87E44C8(v23, v24);
        v25 = OUTLINED_FUNCTION_193();
        sub_1C87E44C8(v25, v26);
        if ((v72 & 0x100000000) == 0)
        {
          goto LABEL_32;
        }
      }

LABEL_25:
      v54 = OUTLINED_FUNCTION_48_1();
      sub_1C87E44B0(v54, v55, v56);
      goto LABEL_26;
    }

    if (v18)
    {
      break;
    }

    if (v14 == v16 && v13 == v17)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_88();
    HIDWORD(v72) = sub_1C8BD529C();
    v32 = OUTLINED_FUNCTION_47_0();
    sub_1C87E4490(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_88();
    sub_1C87E44C8(v35, v36);
    v37 = OUTLINED_FUNCTION_193();
    sub_1C87E44C8(v37, v38);
    v39 = OUTLINED_FUNCTION_48_1();
    sub_1C87E44B0(v39, v40, v41);
    if ((v72 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_26:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v57, MEMORY[0x1E69AAC10]);
    v58 = sub_1C8BD517C();
    sub_1C87E4624();
    OUTLINED_FUNCTION_271();
    sub_1C87E4624();
    if (v58)
    {
      v2 += v73;
      v10 += v73;
      if (--v8)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  v65 = OUTLINED_FUNCTION_47_0();
  sub_1C87E4490(v65, v66, v67);
  v68 = OUTLINED_FUNCTION_88();
  sub_1C87E44C8(v68, v69);
  v70 = OUTLINED_FUNCTION_193();
  sub_1C87E44C8(v70, v71);
LABEL_32:
  v62 = OUTLINED_FUNCTION_48_1();
LABEL_33:
  sub_1C87E44B0(v62, v63, v64);
LABEL_34:
  sub_1C87E4624();
  sub_1C87E4624();
LABEL_35:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DBE28()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_67_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v61 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_79(v10);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6070, &qword_1C8BE6D20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_75(v12, v57);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_209(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6078, &qword_1C8BE6D28);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_81();
  v70 = v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6080, &unk_1C8BE6D30);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_210();
  v69 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(v20);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_254();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v57 - v23);
  v25 = *(v1 + 16);
  if (v25 == *(v0 + 16) && v25 && v1 != v0)
  {
    v59 = v3;
    v60 = v5;
    OUTLINED_FUNCTION_27_2();
    v27 = v1 + v26;
    v28 = v0 + v26;
    v62 = *(v29 + 72);
    v66 = v13;
    while (1)
    {
      OUTLINED_FUNCTION_184();
      sub_1C87E45D0();
      sub_1C87E45D0();
      v30 = *v24 == *v2 && v24[1] == v2[1];
      if (!v30 && (sub_1C8BD529C() & 1) == 0)
      {
        break;
      }

      v31 = *(v69 + 24);
      OUTLINED_FUNCTION_294();
      sub_1C8786744(v24 + v31, v3, &qword_1EC2B6078, &qword_1C8BE6D28);
      sub_1C8786744(v2 + v31, v3 + v0, &qword_1EC2B6078, &qword_1C8BE6D28);
      v32 = v66;
      OUTLINED_FUNCTION_76(v3, 1, v66);
      if (v30)
      {
        OUTLINED_FUNCTION_76(v3 + v0, 1, v32);
        if (!v30)
        {
          goto LABEL_29;
        }

        sub_1C8778ED8(v3, &qword_1EC2B6078, &qword_1C8BE6D28);
      }

      else
      {
        sub_1C8786744(v3, v70, &qword_1EC2B6078, &qword_1C8BE6D28);
        OUTLINED_FUNCTION_76(v3 + v0, 1, v32);
        if (v33)
        {
          sub_1C87E4624();
LABEL_29:
          v55 = &qword_1EC2B6080;
          v56 = &unk_1C8BE6D30;
          goto LABEL_33;
        }

        v34 = v65;
        sub_1C87E4518();
        v35 = *(v64 + 48);
        v36 = v68;
        sub_1C8786744(v70, v68, &qword_1EC2B6068, &qword_1C8BFAC00);
        OUTLINED_FUNCTION_272(v34, v36 + v35);
        v37 = OUTLINED_FUNCTION_109();
        v38 = v60;
        OUTLINED_FUNCTION_76(v37, v39, v60);
        if (v30)
        {
          v40 = OUTLINED_FUNCTION_235_0();
          OUTLINED_FUNCTION_76(v40, 1, v38);
          v3 = v59;
          if (!v30)
          {
            goto LABEL_31;
          }

          sub_1C8778ED8(v68, &qword_1EC2B6068, &qword_1C8BFAC00);
        }

        else
        {
          v41 = v68;
          OUTLINED_FUNCTION_272(v68, v63);
          OUTLINED_FUNCTION_76(v41 + v35, 1, v38);
          if (v42)
          {
            OUTLINED_FUNCTION_164_0();
            sub_1C87E4624();
            v3 = v59;
LABEL_31:
            sub_1C8778ED8(v68, &qword_1EC2B6070, &qword_1C8BE6D20);
LABEL_32:
            OUTLINED_FUNCTION_163();
            sub_1C87E4624();
            sub_1C87E4624();
            v55 = &qword_1EC2B6078;
            v56 = &qword_1C8BE6D28;
LABEL_33:
            sub_1C8778ED8(v3, v55, v56);
            break;
          }

          OUTLINED_FUNCTION_165();
          OUTLINED_FUNCTION_235_0();
          v35 = v43;
          v44 = v63;
          v45 = v61;
          sub_1C87E4518();
          static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind.== infix(_:_:)(v44, v45, v46, v47, v48, v49, v50, v51, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
          HIDWORD(v58) = v52;
          sub_1C87E4624();
          OUTLINED_FUNCTION_239();
          sub_1C87E4624();
          sub_1C8778ED8(v35, &qword_1EC2B6068, &qword_1C8BFAC00);
          v3 = v59;
          if ((v58 & 0x100000000) == 0)
          {
            goto LABEL_32;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v53, MEMORY[0x1E69AAC10]);
        sub_1C8BD517C();
        OUTLINED_FUNCTION_129_0();
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v3, &qword_1EC2B6078, &qword_1C8BE6D28);
        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v54, MEMORY[0x1E69AAC10]);
      v0 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_270();
      sub_1C87E4624();
      if (v0)
      {
        v28 += v62;
        v27 += v62;
        if (--v25)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    sub_1C87E4624();
    OUTLINED_FUNCTION_196_0();
    sub_1C87E4624();
  }

LABEL_35:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87DC4C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_189_0();
            }
          }

          else if (v5 != 2)
          {
            return OUTLINED_FUNCTION_189_0();
          }
        }

        else if (v5)
        {
          return OUTLINED_FUNCTION_189_0();
        }
      }

      else if (v5 != v7)
      {
        return OUTLINED_FUNCTION_189_0();
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_188();
}

unint64_t sub_1C87DC5A8()
{
  result = qword_1EC2B5EF8;
  if (!qword_1EC2B5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5EF8);
  }

  return result;
}

unint64_t sub_1C87DC600()
{
  result = qword_1EC2B5F00;
  if (!qword_1EC2B5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5F00);
  }

  return result;
}

unint64_t sub_1C87DC658()
{
  result = qword_1EC2B5F08;
  if (!qword_1EC2B5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5F08);
  }

  return result;
}

unint64_t sub_1C87DC6B0()
{
  result = qword_1EC2B5F10;
  if (!qword_1EC2B5F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B5F18, &qword_1C8BE69B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B5F10);
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

void sub_1C87DC8A4(uint64_t a1)
{
  sub_1C87DCA00(319, &qword_1EC2B5F38, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C87DCA00(319, &qword_1EC2B5F40, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v3 <= 0x3F)
      {
        sub_1C87DCA00(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C87DCA64();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C87DCA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C87DCA64()
{
  if (!qword_1EC2B5F48)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B5F48);
    }
  }
}

uint64_t getEnumTagSinglePayload for Siri_Nlu_Internal_Queryrewrite_QRResponse.QRRepetitionType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_Queryrewrite_QRResponse.QRRepetitionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C87DCC18()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  if (v18 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14();
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_44_0();
      if (v7)
      {
        if (!v6)
        {
          goto LABEL_30;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v8)
        {
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_44_0();
      if (v12)
      {
        if (!v9)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (*v10 != *v11)
        {
          LOBYTE(v9) = 1;
        }

        if (v9)
        {
LABEL_30:
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      OUTLINED_FUNCTION_23_1();
      if (v15)
      {
        if (!v13)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_35(v14);
        v18 = v18 && v16 == v17;
        if (!v18 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v13)
      {
        goto LABEL_30;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      v20 = sub_1C87E44D0(&qword_1EC2B2F70, v19, MEMORY[0x1E69AAC10]);
      v21 = OUTLINED_FUNCTION_93_0(v20);
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v21)
      {
        OUTLINED_FUNCTION_22();
        if (!v18)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C87DCE78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_189_0();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_188();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C87DCECC()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  type metadata accessor for Siri_Nlu_External_MultilingualVariant(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  if (v11 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14();
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_23_1();
      if (v8)
      {
        if (!v6 || ((OUTLINED_FUNCTION_35(v7), v11) ? (v11 = v9 == v10) : (v11 = 0), !v11 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_24:
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      else if (v6)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_248();
      if (v13)
      {
        if (!v12)
        {
          goto LABEL_24;
        }
      }

      else
      {
        OUTLINED_FUNCTION_36();
        if (v14)
        {
          goto LABEL_24;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      v16 = sub_1C87E44D0(&qword_1EC2B2F70, v15, MEMORY[0x1E69AAC10]);
      v17 = OUTLINED_FUNCTION_93_0(v16);
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v17)
      {
        OUTLINED_FUNCTION_22();
        if (!v11)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DD204()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  type metadata accessor for Siri_Nlu_Internal_SubwordToken(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  if (v11 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14();
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_23_1();
      if (v8)
      {
        if (!v6 || ((OUTLINED_FUNCTION_35(v7), v11) ? (v11 = v9 == v10) : (v11 = 0), !v11 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_28:
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      else if (v6)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_44_0();
      if (v13)
      {
        if (!v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v14)
        {
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_44_0();
      if (v16)
      {
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v17)
        {
          goto LABEL_28;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      v19 = sub_1C87E44D0(&qword_1EC2B2F70, v18, MEMORY[0x1E69AAC10]);
      v20 = OUTLINED_FUNCTION_93_0(v19);
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v20)
      {
        OUTLINED_FUNCTION_22();
        if (!v11)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DD718()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  v5 = OUTLINED_FUNCTION_105(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_251_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_89();
  v8 = type metadata accessor for Siri_Nlu_External_UsoNode(v7);
  v9 = OUTLINED_FUNCTION_105(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_250();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_301_0();
  v12 = type metadata accessor for Siri_Nlu_External_SemVer(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6138, &unk_1C8BE8D80);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81();
  v77 = v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6140, &unk_1C8BE6DE0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_75(v21, v71);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_256();
  if (v34 && v25 && v3 != v1)
  {
    v75 = v25;
    v76 = v24;
    v72 = v16;
    OUTLINED_FUNCTION_27_2();
    v27 = v80;
    v73 = v12;
    while (1)
    {
      v28 = v26;
      sub_1C87E45D0();
      v74 = v28;
      if (v28 == v75)
      {
        break;
      }

      sub_1C87E45D0();
      v29 = *(v76 + 40);
      v30 = *(v78 + 48);
      sub_1C8786744(v27 + v29, v79, &qword_1EC2B6138, &unk_1C8BE8D80);
      v31 = v81 + v29;
      v32 = &unk_1C8BE8D80;
      v33 = &qword_1EC2B6138;
      sub_1C8786744(v31, v79 + v30, &qword_1EC2B6138, &unk_1C8BE8D80);
      OUTLINED_FUNCTION_76(v79, 1, v12);
      if (v34)
      {
        OUTLINED_FUNCTION_76(v79 + v30, 1, v12);
        if (!v34)
        {
          goto LABEL_49;
        }

        sub_1C8778ED8(v79, &qword_1EC2B6138, &unk_1C8BE8D80);
      }

      else
      {
        sub_1C8786744(v79, v77, &qword_1EC2B6138, &unk_1C8BE8D80);
        OUTLINED_FUNCTION_76(v79 + v30, 1, v12);
        if (v34)
        {
          sub_1C87E4624();
LABEL_49:
          v69 = &qword_1EC2B6140;
          v70 = &unk_1C8BE6DE0;
          goto LABEL_50;
        }

        v32 = v72;
        sub_1C87E4518();
        OUTLINED_FUNCTION_197();
        if (v36)
        {
          if (!v35)
          {
            goto LABEL_47;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_1();
          if (v37)
          {
            goto LABEL_47;
          }
        }

        OUTLINED_FUNCTION_197();
        if (v39)
        {
          if (!v38)
          {
            goto LABEL_47;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_1();
          if (v40)
          {
            goto LABEL_47;
          }
        }

        OUTLINED_FUNCTION_197();
        if (v42)
        {
          if (!v41)
          {
            goto LABEL_47;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_1();
          if (v43)
          {
LABEL_47:
            sub_1C87E4624();
            OUTLINED_FUNCTION_237();
            sub_1C87E4624();
            v69 = &qword_1EC2B6138;
            v70 = &unk_1C8BE8D80;
LABEL_50:
            sub_1C8778ED8(v79, v69, v70);
LABEL_51:
            sub_1C87E4624();
            OUTLINED_FUNCTION_182();
            sub_1C87E4624();
            goto LABEL_52;
          }
        }

        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_2();
        sub_1C87E44D0(&qword_1EC2B2F70, v44, MEMORY[0x1E69AAC10]);
        LOBYTE(v33) = sub_1C8BD517C();
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v79, &qword_1EC2B6138, &unk_1C8BE8D80);
        if ((v33 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_246_0();
      if (!v34)
      {
        goto LABEL_51;
      }

      if (v32 && v46 != v45)
      {
        OUTLINED_FUNCTION_39_0();
        LOBYTE(v33) = v47 + v48;
        v50 = v49 + v48;
        v52 = *(v51 + 72);
        do
        {
          OUTLINED_FUNCTION_136_0();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_136_0();
          sub_1C87E45D0();
          static Siri_Nlu_External_UsoNode.== infix(_:_:)();
          v54 = v53;
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          if ((v54 & 1) == 0)
          {
            goto LABEL_51;
          }

          v50 += v52;
          LOBYTE(v33) = v33 + v52;
        }

        while (--v32);
      }

      sub_1C87DF64C();
      if ((v55 & 1) == 0)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_246_0();
      if (!v34)
      {
        goto LABEL_51;
      }

      if (v32 && v57 != v56)
      {
        OUTLINED_FUNCTION_39_0();
        LOBYTE(v33) = v58 + v59;
        v61 = v60 + v59;
        v63 = *(v62 + 72);
        do
        {
          OUTLINED_FUNCTION_134();
          OUTLINED_FUNCTION_307();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_134();
          sub_1C87E45D0();
          OUTLINED_FUNCTION_184();
          static Siri_Nlu_External_UsoEntityIdentifier.== infix(_:_:)();
          v65 = v64;
          sub_1C87E4624();
          OUTLINED_FUNCTION_106();
          sub_1C87E4624();
          if ((v65 & 1) == 0)
          {
            goto LABEL_51;
          }

          v61 += v63;
          LOBYTE(v33) = v33 + v63;
        }

        while (--v32);
      }

      sub_1C87DFAD8();
      if ((v66 & 1) == 0)
      {
        goto LABEL_51;
      }

      sub_1C87DFFBC();
      if ((v67 & 1) == 0)
      {
        goto LABEL_51;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v68, MEMORY[0x1E69AAC10]);
      v27 = v80;
      sub_1C8BD517C();
      OUTLINED_FUNCTION_127();
      sub_1C87E4624();
      OUTLINED_FUNCTION_237();
      sub_1C87E4624();
      if (v33)
      {
        v12 = v73;
        v26 = v74 + 1;
        if (v74 + 1 != v75)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    __break(1u);
  }

  else
  {
LABEL_52:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87DDF24()
{
  OUTLINED_FUNCTION_124();
  v6 = OUTLINED_FUNCTION_249();
  v7 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v6);
  OUTLINED_FUNCTION_13_1();
  v45 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_302();
  v12 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_49_2();
  v15 = *(v5 + 16);
  if (v15 == *(v0 + 16) && v15 && v5 != v0)
  {
    OUTLINED_FUNCTION_27_2();
    v16 = 0;
    v42 = v12;
    v44 = v1;
    v41 = v15;
    while (1)
    {
      sub_1C87E45D0();
      if (v16 == v15)
      {
        break;
      }

      OUTLINED_FUNCTION_330();
      v17 = *(v12 + 24);
      v18 = *(v1 + v17 + 8);
      v43 = v16;
      if (*(v4 + v17 + 8))
      {
        if (!v18 || ((OUTLINED_FUNCTION_35(v4 + v17), v21) ? (v21 = v19 == v20) : (v21 = 0), !v21 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_45:
          sub_1C87E4624();
          OUTLINED_FUNCTION_91();
          sub_1C87E4624();
          goto LABEL_46;
        }
      }

      else if (v18)
      {
        goto LABEL_45;
      }

      v22 = *v4;
      v23 = *v44;
      v24 = *(*v4 + 16);
      if (v24 != *(*v44 + 16))
      {
        goto LABEL_45;
      }

      if (v24 && v22 != v23)
      {
        v25 = 0;
        OUTLINED_FUNCTION_71();
        while (v25 < *(v22 + 16))
        {
          v26 = *(v45 + 72) * v25;
          OUTLINED_FUNCTION_187();
          sub_1C87E45D0();
          if (v25 >= *(v23 + 16))
          {
            goto LABEL_48;
          }

          OUTLINED_FUNCTION_187();
          OUTLINED_FUNCTION_235_0();
          sub_1C87E45D0();
          v27 = *(v7 + 20);
          v28 = *(v2 + v27 + 8);
          if (*(v3 + v27 + 8))
          {
            if (!v28 || ((OUTLINED_FUNCTION_35(v3 + v27), v21) ? (v31 = v29 == v30) : (v31 = 0), !v31 && (sub_1C8BD529C() & 1) == 0))
            {
LABEL_44:
              OUTLINED_FUNCTION_186();
              sub_1C87E4624();
              OUTLINED_FUNCTION_118();
              sub_1C87E4624();
              goto LABEL_45;
            }
          }

          else if (v28)
          {
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_42();
          if (v33)
          {
            if (!v32)
            {
              goto LABEL_44;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v34)
            {
              goto LABEL_44;
            }
          }

          OUTLINED_FUNCTION_42();
          if (v36)
          {
            if (!v35)
            {
              goto LABEL_44;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_1();
            if (v37)
            {
              goto LABEL_44;
            }
          }

          sub_1C8BD49FC();
          OUTLINED_FUNCTION_0_2();
          sub_1C87E44D0(&qword_1EC2B2F70, v38, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_97();
          sub_1C8BD517C();
          OUTLINED_FUNCTION_128();
          sub_1C87E4624();
          OUTLINED_FUNCTION_298();
          sub_1C87E4624();
          if ((v26 & 1) == 0)
          {
            goto LABEL_45;
          }

          if (v24 == ++v25)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

LABEL_40:
      v12 = v42;
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v39, MEMORY[0x1E69AAC10]);
      v1 = v44;
      v40 = sub_1C8BD517C();
      sub_1C87E4624();
      sub_1C87E4624();
      if (v40)
      {
        v16 = v43 + 1;
        v15 = v41;
        if (v43 + 1 != v41)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

    __break(1u);
  }

  else
  {
LABEL_46:
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87DE35C()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_62();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  if (v11 && v2 && v1 != v0)
  {
    OUTLINED_FUNCTION_14();
    while (1)
    {
      OUTLINED_FUNCTION_97();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_100();
      sub_1C87E45D0();
      OUTLINED_FUNCTION_23_1();
      if (v8)
      {
        if (!v6 || ((OUTLINED_FUNCTION_35(v7), v11) ? (v11 = v9 == v10) : (v11 = 0), !v11 && (sub_1C8BD529C() & 1) == 0))
        {
LABEL_28:
          OUTLINED_FUNCTION_186();
          sub_1C87E4624();
          OUTLINED_FUNCTION_121();
          sub_1C87E4624();
          break;
        }
      }

      else if (v6)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_44_0();
      if (v13)
      {
        if (!v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v14)
        {
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_44_0();
      if (v16)
      {
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        if (v17)
        {
          goto LABEL_28;
        }
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      v19 = sub_1C87E44D0(&qword_1EC2B2F70, v18, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_93_0(v19);
      OUTLINED_FUNCTION_128();
      sub_1C87E4624();
      OUTLINED_FUNCTION_106();
      sub_1C87E4624();
      if (v0)
      {
        OUTLINED_FUNCTION_22();
        if (!v11)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DE590()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_101();
  v46 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v43 = v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v45 = type metadata accessor for Siri_Nlu_External_RewrittenUtterance(v9);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_1();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = *(v3 + 16);
  OUTLINED_FUNCTION_227_0();
  if (v23 && v17 && v3 != v0)
  {
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_318();
    v37 = v18;
    v38 = v1;
    v39 = (v19 + 8);
    v41 = *(v20 + 72);
    v42 = v16;
    while (1)
    {
      sub_1C87E45D0();
      sub_1C87E45D0();
      v21 = *(v45 + 20);
      v22 = *(v44 + 48);
      sub_1C8786744(&v16[v21], v2, &qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_332(v13 + v21, v2 + v22);
      OUTLINED_FUNCTION_16_1(v2);
      if (v23)
      {
        OUTLINED_FUNCTION_16_1(v2 + v22);
        if (!v23)
        {
          OUTLINED_FUNCTION_58();
          sub_1C87E4624();
          OUTLINED_FUNCTION_221();
          sub_1C87E4624();
LABEL_25:
          sub_1C8778ED8(v2, &qword_1EC2B6118, &qword_1C8BE6DC0);
          break;
        }

        sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
      }

      else
      {
        OUTLINED_FUNCTION_332(v2, v43);
        OUTLINED_FUNCTION_16_1(v2 + v22);
        if (v23)
        {
          sub_1C87E4624();
          OUTLINED_FUNCTION_259();
          sub_1C87E4624();
          (*v39)(v43, v46);
          goto LABEL_25;
        }

        v24 = v38;
        v25 = v2 + v22;
        v26 = v46;
        (*v37)(v38, v25, v46);
        OUTLINED_FUNCTION_59();
        v28 = sub_1C87E44D0(&qword_1EC2B6120, v27, MEMORY[0x1E69AA9A8]);
        v40 = OUTLINED_FUNCTION_226_0(v28);
        v29 = *v39;
        (*v39)(v24, v26);
        v30 = OUTLINED_FUNCTION_218();
        (v29)(v30);
        sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
        if ((v40 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v31 = *(v45 + 24);
      v16 = v42;
      v32 = &v42[v31];
      v33 = v42[v31 + 8];
      v34 = v13 + v31;
      if (v33)
      {
        if ((*(v34 + 8) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if ((*(v34 + 8) & 1) != 0 || *v32 != *v34)
      {
LABEL_26:
        OUTLINED_FUNCTION_58();
        sub_1C87E4624();
        sub_1C87E4624();
        break;
      }

      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_2();
      sub_1C87E44D0(&qword_1EC2B2F70, v35, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_217();
      v36 = sub_1C8BD517C();
      sub_1C87E4624();
      OUTLINED_FUNCTION_100();
      sub_1C87E4624();
      if (v36)
      {
        OUTLINED_FUNCTION_228();
        if (!v23)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void sub_1C87DEA94()
{
  OUTLINED_FUNCTION_124();
  v29 = v0;
  v30 = v1;
  v28 = v2;
  v4 = v3;
  v6 = v5;
  v7(0);
  OUTLINED_FUNCTION_13_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_206_0();
  v12 = *(v6 + 16);
  if (v12 == *(v4 + 16) && v12 && v6 != v4)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = v6 + v13;
    v15 = v4 + v13;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v18 = (v16 - 8);
    v26 = *(v16 + 56);
    v27 = v17;
    while (1)
    {
      v19 = OUTLINED_FUNCTION_230();
      (v27)(v19);
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_217();
      v20 = v16;
      v27();
      sub_1C87E44D0(v28, v29, v30);
      OUTLINED_FUNCTION_258();
      v21 = sub_1C8BD517C();
      v22 = *v18;
      v23 = OUTLINED_FUNCTION_300();
      v22(v23);
      v24 = OUTLINED_FUNCTION_259();
      v22(v24);
      if (v21)
      {
        v15 += v26;
        v14 += v26;
        v25 = v12-- == 1;
        v16 = v20;
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_125();
  }
}

void sub_1C87DEC44()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_201();
  type metadata accessor for Siri_Nlu_External_RRBoundingBox(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v52 = v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6130, &unk_1C8BE6DD0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  v11 = type metadata accessor for Siri_Nlu_External_RRSurroundingText(v10);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_1();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v17 = *(v3 + 16);
  OUTLINED_FUNCTION_227_0();
  if (!v27 || !v17 || v3 == v0)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_27_2();
  v19 = v3 + v18;
  v20 = v0 + v18;
  v49 = *(v21 + 72);
  v50 = v11;
  v47 = v2;
  v48 = v1;
  while (1)
  {
    OUTLINED_FUNCTION_230();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_147();
    sub_1C87E45D0();
    OUTLINED_FUNCTION_198();
    if (v24)
    {
      if (!v22)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_35(v23);
      v27 = v27 && v25 == v26;
      if (!v27 && (sub_1C8BD529C() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v22)
    {
      goto LABEL_43;
    }

    v28 = *(v11 + 24);
    v29 = *(v51 + 48);
    sub_1C8786744(v2 + v28, v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
    sub_1C8786744(v15 + v28, v1 + v29, &qword_1EC2B6128, &qword_1C8BE6DC8);
    OUTLINED_FUNCTION_65(v1);
    if (!v27)
    {
      break;
    }

    OUTLINED_FUNCTION_65(v1 + v29);
    if (!v27)
    {
      OUTLINED_FUNCTION_32_2();
      goto LABEL_45;
    }

    sub_1C8778ED8(v1, &qword_1EC2B6128, &qword_1C8BE6DC8);
LABEL_38:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v45, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_91();
    v46 = sub_1C8BD517C();
    sub_1C87E4624();
    sub_1C87E4624();
    if (v46)
    {
      v11 = v50;
      v20 += v49;
      v19 += v49;
      if (--v17)
      {
        continue;
      }
    }

    goto LABEL_47;
  }

  sub_1C8786744(v1, v52, &qword_1EC2B6128, &qword_1C8BE6DC8);
  OUTLINED_FUNCTION_65(v1 + v29);
  if (!v30)
  {
    sub_1C87E4518();
    OUTLINED_FUNCTION_70();
    if (v32)
    {
      if (!v31)
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v33)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_70();
    if (v35)
    {
      if (!v34)
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v36)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_70();
    if (v38)
    {
      if (!v37)
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v39)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_70();
    if (v41)
    {
      if (!v40)
      {
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v42)
      {
LABEL_42:
        sub_1C87E4624();
        sub_1C87E4624();
        sub_1C8778ED8(v48, &qword_1EC2B6128, &qword_1C8BE6DC8);
LABEL_43:
        OUTLINED_FUNCTION_32_2();
        sub_1C87E4624();
        goto LABEL_46;
      }
    }

    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_2();
    sub_1C87E44D0(&qword_1EC2B2F70, v43, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_311();
    v44 = sub_1C8BD517C();
    v2 = v47;
    sub_1C87E4624();
    sub_1C87E4624();
    v1 = v48;
    sub_1C8778ED8(v48, &qword_1EC2B6128, &qword_1C8BE6DC8);
    if ((v44 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_32_2();
  sub_1C87E4624();
LABEL_45:
  sub_1C87E4624();
  sub_1C8778ED8(v1, &qword_1EC2B6130, &unk_1C8BE6DD0);
LABEL_46:
  OUTLINED_FUNCTION_32_2();
  sub_1C87E4624();
LABEL_47:
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}