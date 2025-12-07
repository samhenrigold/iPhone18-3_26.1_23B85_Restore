void *initializeWithTake for ParameterClause(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v8 = sub_1DD0DC76C();
      (*(*(v8 - 8) + 32))(v5, v6, v8);
      goto LABEL_22;
    case 1u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 32))(v5, v6, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&v5[*(v17 + 48)] = *&v6[*(v17 + 48)];
      goto LABEL_22;
    case 4u:
      v19 = sub_1DD0DB1EC();
      (*(*(v19 - 8) + 32))(v5, v6, v19);
      goto LABEL_22;
    case 6u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 32))(v5, v6, v20);
      v21 = type metadata accessor for USOParse(0);
      v22 = v21[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v6[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v5[v22], &v6[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 32))(&v5[v22], &v6[v22], v23);
        __swift_storeEnumTagSinglePayload(&v5[v22], 0, 1, v23);
      }

      *&v5[v21[6]] = *&v6[v21[6]];
      v34 = v21[7];
      v35 = &v5[v34];
      v36 = &v6[v34];
      v35[4] = v36[4];
      *v35 = *v36;
      goto LABEL_22;
    case 7u:
      v25 = sub_1DD0DB4BC();
      (*(*(v25 - 8) + 32))(v5, v6, v25);
      v26 = type metadata accessor for USOParse(0);
      v27 = v26[5];
      v28 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&v6[v27], 1, v28))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&v5[v27], &v6[v27], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(*(v28 - 8) + 32))(&v5[v27], &v6[v27], v28);
        __swift_storeEnumTagSinglePayload(&v5[v27], 0, 1, v28);
      }

      *&v5[v26[6]] = *&v6[v26[6]];
      v37 = v26[7];
      v38 = &v5[v37];
      v39 = &v6[v37];
      v38[4] = v39[4];
      *v38 = *v39;
      v40 = type metadata accessor for LinkParse(0);
      *&v5[v40[5]] = *&v6[v40[5]];
      *&v5[v40[6]] = *&v6[v40[6]];
      *&v5[v40[7]] = *&v6[v40[7]];
      goto LABEL_22;
    case 8u:
      v9 = sub_1DD0DD12C();
      (*(*(v9 - 8) + 32))(v5, v6, v9);
      v10 = type metadata accessor for NLRouterParse(0);
      *&v5[v10[5]] = *&v6[v10[5]];
      v11 = v10[6];
      v12 = &v5[v11];
      v13 = &v6[v11];
      v14 = type metadata accessor for USOParse(0);
      if (__swift_getEnumTagSinglePayload(v13, 1, v14))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v12, v13, *(*(v15 - 8) + 64));
      }

      else
      {
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v12, v13, v30);
        v31 = v14[5];
        v32 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v31], 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v31], &v13[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(*(v32 - 8) + 32))(&v12[v31], &v13[v31], v32);
          __swift_storeEnumTagSinglePayload(&v12[v31], 0, 1, v32);
        }

        *&v12[v14[6]] = *&v13[v14[6]];
        v41 = v14[7];
        v42 = &v12[v41];
        v43 = &v13[v41];
        v42[4] = v43[4];
        *v42 = *v43;
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
      }

      *&v5[v10[7]] = *&v6[v10[7]];
      goto LABEL_22;
    case 9u:
      v18 = sub_1DD0DD08C();
      (*(*(v18 - 8) + 32))(v5, v6, v18);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(v5, v6, *(*(v7 - 8) + 64));
      break;
  }

  return a1;
}

void *assignWithTake for ParameterClause(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    v4 = *(a3 + 20);
    v5 = a1 + v4;
    v6 = a2 + v4;
    sub_1DCB29EBC(a1 + v4);
    v7 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v8 = sub_1DD0DC76C();
        (*(*(v8 - 8) + 32))(v5, v6, v8);
        goto LABEL_23;
      case 1u:
        v16 = sub_1DD0DC76C();
        (*(*(v16 - 8) + 32))(v5, v6, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v5[*(v17 + 48)] = *&v6[*(v17 + 48)];
        goto LABEL_23;
      case 4u:
        v19 = sub_1DD0DB1EC();
        (*(*(v19 - 8) + 32))(v5, v6, v19);
        goto LABEL_23;
      case 6u:
        v20 = sub_1DD0DB4BC();
        (*(*(v20 - 8) + 32))(v5, v6, v20);
        v21 = type metadata accessor for USOParse(0);
        v22 = v21[5];
        v23 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v6[v22], 1, v23))
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v5[v22], &v6[v22], *(*(v24 - 8) + 64));
        }

        else
        {
          (*(*(v23 - 8) + 32))(&v5[v22], &v6[v22], v23);
          __swift_storeEnumTagSinglePayload(&v5[v22], 0, 1, v23);
        }

        *&v5[v21[6]] = *&v6[v21[6]];
        v34 = v21[7];
        v35 = &v5[v34];
        v36 = &v6[v34];
        v35[4] = v36[4];
        *v35 = *v36;
        goto LABEL_23;
      case 7u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 32))(v5, v6, v25);
        v26 = type metadata accessor for USOParse(0);
        v27 = v26[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v6[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v5[v27], &v6[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&v5[v27], &v6[v27], v28);
          __swift_storeEnumTagSinglePayload(&v5[v27], 0, 1, v28);
        }

        *&v5[v26[6]] = *&v6[v26[6]];
        v37 = v26[7];
        v38 = &v5[v37];
        v39 = &v6[v37];
        v38[4] = v39[4];
        *v38 = *v39;
        v40 = type metadata accessor for LinkParse(0);
        *&v5[v40[5]] = *&v6[v40[5]];
        *&v5[v40[6]] = *&v6[v40[6]];
        *&v5[v40[7]] = *&v6[v40[7]];
        goto LABEL_23;
      case 8u:
        v9 = sub_1DD0DD12C();
        (*(*(v9 - 8) + 32))(v5, v6, v9);
        v10 = type metadata accessor for NLRouterParse(0);
        *&v5[v10[5]] = *&v6[v10[5]];
        v11 = v10[6];
        v12 = &v5[v11];
        v13 = &v6[v11];
        v14 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v13, 1, v14))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v12, v13, *(*(v15 - 8) + 64));
        }

        else
        {
          v30 = sub_1DD0DB4BC();
          (*(*(v30 - 8) + 32))(v12, v13, v30);
          v31 = v14[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v31], &v13[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 32))(&v12[v31], &v13[v31], v32);
            __swift_storeEnumTagSinglePayload(&v12[v31], 0, 1, v32);
          }

          *&v12[v14[6]] = *&v13[v14[6]];
          v41 = v14[7];
          v42 = &v12[v41];
          v43 = &v13[v41];
          v42[4] = v43[4];
          *v42 = *v43;
          __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
        }

        *&v5[v10[7]] = *&v6[v10[7]];
        goto LABEL_23;
      case 9u:
        v18 = sub_1DD0DD08C();
        (*(*(v18 - 8) + 32))(v5, v6, v18);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v5, v6, *(*(v7 - 8) + 64));
        break;
    }
  }

  return a1;
}

uint64_t sub_1DCE27674(uint64_t a1)
{
  result = type metadata accessor for Parse(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1DCE27710(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    sub_1DD0DEC1C();

    v5 = 0xD000000000000020;
  }

  else
  {
    sub_1DD0DEC1C();

    v5 = 0xD00000000000001ALL;
  }

  v7 = v5;
  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return v7;
}

double sub_1DCE27844(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DCE2786C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DCE27884(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCE27844(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ParameterError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCE27844(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCE2786C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ParameterError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCE2786C(v4, v5, v6);
  return a1;
}

uint64_t ParameterHints.__allocating_init()()
{
  OUTLINED_FUNCTION_0_76();
  v0 = swift_allocObject();
  type metadata accessor for ParameterClause(0);
  *(v0 + 16) = sub_1DD0DDE9C();
  return v0;
}

uint64_t ParameterHints.init()()
{
  type metadata accessor for ParameterClause(0);
  *(v0 + 16) = sub_1DD0DDE9C();
  return v0;
}

uint64_t ParameterHints.__allocating_init(hints:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_76();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ParameterNeedsConfirmationConcept.parameterName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ParameterNeedsConfirmationConcept.conceptType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void *ParameterNeedsConfirmationConcept.__allocating_init(app:parameterName:intentResolutionResult:intent:typeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = 0xD000000000000021;
  result[8] = 0x80000001DD0FA720;
  result[9] = a6;
  return result;
}

void *ParameterNeedsConfirmationConcept.init(app:parameterName:intentResolutionResult:intent:typeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = 0xD000000000000021;
  v6[8] = 0x80000001DD0FA720;
  v6[9] = a6;
  return v6;
}

uint64_t ParameterNeedsConfirmationConcept.deinit()
{

  return v0;
}

uint64_t ParameterNeedsConfirmationConcept.__deallocating_deinit()
{
  ParameterNeedsConfirmationConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t ParameterNeedsDisambiguationConcept.parameterName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ParameterNeedsDisambiguationConcept.conceptType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ParameterNeedsDisambiguationConcept.deinit()
{

  return v0;
}

uint64_t ParameterNeedsDisambiguationConcept.__deallocating_deinit()
{
  ParameterNeedsDisambiguationConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t ParameterNeedsValueConcept.parameterName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ParameterNeedsValueConcept.conceptType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *ParameterNeedsValueConcept.__allocating_init(app:parameterName:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[6] = 0xD00000000000001ALL;
  result[7] = 0x80000001DD0FA850;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ParameterNeedsValueConcept.init(app:parameterName:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0xD00000000000001ALL;
  v4[7] = 0x80000001DD0FA850;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t ParameterNeedsValueConcept.deinit()
{

  return v0;
}

uint64_t ParameterNeedsValueConcept.__deallocating_deinit()
{
  ParameterNeedsValueConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE280DC()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for NeedsDisambiguationFlowStrategyAsyncAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)();
}

uint64_t ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCE281F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_47();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for NeedsDisambiguationFlowStrategyAsyncAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)();
}

uint64_t ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

void ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DD0FA8F8;
  v11[5] = 0;
  v11[6] = a5;
  v11[7] = a6;
  sub_1DD0DCF8C();
}

void ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD0FA908;
  v12[5] = 0;
  v12[6] = a6;
  v12[7] = a7;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE284D8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCE1B7E8;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)();
}

uint64_t ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCE285F4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCE1B7E8;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)();
}

uint64_t ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t sub_1DCE28710(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCE1B7E8;

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCE287A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return sub_1DCCDC444();
}

uint64_t sub_1DCE28840()
{
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);

  return sub_1DCC100AC();
}

uint64_t dispatch thunk of ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_7_6(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_24_0();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_13_22(v8);

  return v11(v10);
}

uint64_t dispatch thunk of ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_24_0();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_11_0(v17);
  *v18 = v19;
  v18[1] = sub_1DCE1B7E8;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_24_0();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_11_0(v13);
  *v14 = v15;
  v14[1] = sub_1DCE1B7E8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCE28CB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)();
}

uint64_t dispatch thunk of ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_7_6(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_24_0();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_13_22(v8);

  return v11(v10);
}

uint64_t sub_1DCE28E60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCE1B7E8;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)();
}

uint64_t sub_1DCE28EF8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_47();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)();
}

uint64_t sub_1DCE28F88()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)();
}

uint64_t sub_1DCE2901C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_47();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsDisambiguationFlowStrategyAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)();
}

uint64_t sub_1DCE290AC()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsDisambiguationFlowStrategyAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)();
}

uint64_t sub_1DCE29140()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_47();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsValueFlowStrategyAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)();
}

uint64_t sub_1DCE291D0()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToNeedsValueFlowStrategyAdapter(v2, v3, v4, v5);
  OUTLINED_FUNCTION_6_55();
  *v0 = v6;
  OUTLINED_FUNCTION_2_75();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)();
}

double ParameterResolutionRecord.parameter.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return result;
}

__n128 ParameterResolutionRecord.init(app:intent:parameter:result:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  result = *a3;
  v6 = a3[1].n128_u64[0];
  v7 = a3[1].n128_u8[8];
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = a2;
  a5[1] = result;
  a5[2].n128_u64[0] = v6;
  a5[2].n128_u8[8] = v7;
  a5[3].n128_u64[0] = a4;
  return result;
}

uint64_t ParameterResolutionRecord.init(app:intent:parameterName:result:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1;
  *(a6 + 48) = a5;
  return result;
}

SiriKitFlow::ParameterIdentifier __swiftcall ParameterIdentifier.init(_:)(Swift::String a1)
{
  *v1 = a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  result.name = a1;
  return result;
}

SiriKitFlow::ParameterIdentifier __swiftcall ParameterIdentifier.init(name:multicardinalIndex:)(Swift::String name, Swift::Int_optional multicardinalIndex)
{
  *v2 = name;
  *(v2 + 16) = multicardinalIndex.value;
  *(v2 + 24) = multicardinalIndex.is_nil;
  result.name = name;
  result.multicardinalIndex = multicardinalIndex;
  return result;
}

uint64_t ParameterIdentifier.name.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1DCE2933C(uint64_t a1)
{

  v2 = *(a1 + 48);
}

void sub_1DCE29388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE29490(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t sub_1DCE29500(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DCE29540(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t initializeWithCopy for ParameterIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ParameterIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithTake for ParameterIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParameterIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for ParameterIdentifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ParameterUnsupportedConcept.conceptType.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ParameterUnsupportedConcept.__allocating_init(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:typeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  result = swift_allocObject();
  *(result + 72) = 0xD00000000000001BLL;
  *(result + 80) = 0x80000001DD0FAA80;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7 & 1;
  *(result + 88) = a8;
  return result;
}

uint64_t ParameterUnsupportedConcept.init(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:typeNamesByValueType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 72) = 0xD00000000000001BLL;
  *(v8 + 80) = 0x80000001DD0FAA80;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7 & 1;
  *(v8 + 88) = a8;
  return v8;
}

uint64_t ParameterUnsupportedConcept.deinit()
{

  return v0;
}

uint64_t ParameterUnsupportedConcept.__deallocating_deinit()
{
  ParameterUnsupportedConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t ActionParaphrase.VerbEntityParaphrase.userStatedTask.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v2, v4);
}

uint64_t ActionParaphrase.VerbEntityParaphrase.init(dialog:label:userStatedTask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 32);

  return v10(&a6[v6], a5);
}

uint64_t ActionParaphrase.VerbEntityParaphrase.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7BB8, &qword_1DD0FAB20);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE29C84();
  sub_1DD0DF24C();
  OUTLINED_FUNCTION_12_48(*v4, v4[1]);
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  OUTLINED_FUNCTION_12_48(v4[2], v4[3]);
  type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  sub_1DD0DB66C();
  OUTLINED_FUNCTION_0_78();
  sub_1DCE2A49C(v11, v12, MEMORY[0x1E69D0AD0]);
  v13 = sub_1DD0DD6CC();
  v15 = v14;
  sub_1DCB51540();
  sub_1DD0DEFFC();
  (*(v8 + 8))(v3, v6);
  return sub_1DCB21A14(v13, v15);
}

unint64_t sub_1DCE29C84()
{
  result = qword_1ECCA7BC0;
  if (!qword_1ECCA7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7BC0);
  }

  return result;
}

uint64_t ActionParaphrase.VerbEntityParaphrase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DD6AC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  OUTLINED_FUNCTION_16();
  v30 = sub_1DD0DB66C();
  OUTLINED_FUNCTION_9();
  v27 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7BD0, &unk_1DD0FAB28);
  OUTLINED_FUNCTION_9();
  v29 = v13;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_1();
  v16 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_16();
  v21 = (v20 - v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE29C84();
  sub_1DD0DF23C();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  *v21 = sub_1DD0DEF0C();
  v21[1] = v22;
  v21[2] = sub_1DD0DEF0C();
  v21[3] = v23;
  sub_1DCB5414C();
  sub_1DD0DEF4C();
  sub_1DD0DD69C();
  OUTLINED_FUNCTION_0_78();
  sub_1DCE2A49C(v24, v25, MEMORY[0x1E69D0AD0]);
  sub_1DD0DD6BC();
  (*(v29 + 8))(v2, v12);
  (*(v27 + 32))(v21 + *(v16 + 24), v11, v30);
  sub_1DCE2B140(v21, a2, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DCE2B19C(v21, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
}

unint64_t sub_1DCE2A0F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DCE2A140(char a1)
{
  if (!a1)
  {
    return 0x676F6C616964;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0xD000000000000019;
}

unint64_t sub_1DCE2A1B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCE2A0F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DCE2A1E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCE2A140(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DCE2A21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE2A0F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE2A250(uint64_t a1)
{
  v2 = sub_1DCE29C84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2A28C(uint64_t a1)
{
  v2 = sub_1DCE29C84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t ActionParaphrase.VerbEntityParaphrase.description.getter()
{
  v1 = v0;
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](*v1, v1[1]);
  MEMORY[0x1E12A6780](0x3A6C6562616C202CLL, 0xE900000000000020);
  MEMORY[0x1E12A6780](v1[2], v1[3]);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t static ActionParaphrase.VerbEntityParaphrase.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0) + 24);

  return MEMORY[0x1EEE3B9C8](a1 + v6, a2 + v6);
}

uint64_t ActionParaphrase.VerbEntityParaphrase.hash(into:)(uint64_t a1)
{
  sub_1DD0DDF2C();
  sub_1DD0DDF2C();
  type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  sub_1DD0DB66C();
  OUTLINED_FUNCTION_0_78();
  sub_1DCE2A49C(v1, v2, MEMORY[0x1E69D0AE8]);
  return sub_1DD0DDF1C();
}

uint64_t sub_1DCE2A49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ActionParaphrase.VerbEntityParaphrase.hashValue.getter()
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DDF2C();
  OUTLINED_FUNCTION_8_58();
  OUTLINED_FUNCTION_0_78();
  sub_1DCE2A49C(v0, v1, MEMORY[0x1E69D0AE8]);
  sub_1DD0DDF1C();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCE2A5B8(uint64_t a1)
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DDF2C();
  sub_1DD0DB66C();
  sub_1DCE2A49C(&qword_1ECCA7BD8, MEMORY[0x1E69D0AE0], MEMORY[0x1E69D0AE8]);
  sub_1DD0DDF1C();
  return sub_1DD0DF20C();
}

uint64_t ActionParaphrase.verbEntityParaphrase.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_13_50();

  return sub_1DCE2A6F4(v1 + v3, a1);
}

uint64_t sub_1DCE2A6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ActionParaphrase.isEmpty.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v9 - v3;
  OUTLINED_FUNCTION_13_50();
  sub_1DCE2A6F4(v0 + v5, v4);
  v6 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v6);
  sub_1DCE2A824(v4);
  return EnumTagSinglePayload == 1 && *(v0 + 8) == 0;
}

uint64_t sub_1DCE2A824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActionParaphrase.init(appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = OUTLINED_FUNCTION_7_49();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t ActionParaphrase.init(appBundleId:verbEntityParaphrase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  OUTLINED_FUNCTION_13_50();

  return sub_1DCE2A908(a3, a4 + v6);
}

uint64_t sub_1DCE2A908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ActionParaphrase.noParaphrase()@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_7_49();
  result = __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t ActionParaphrase.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_4_1();
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001ELL, 0x80000001DD11F480);
  if (v0[1])
  {
    v4 = *v0;
    v5 = v0[1];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1E12A6780](v4, v5);

  MEMORY[0x1E12A6780](0xD000000000000018, 0x80000001DD11F4A0);
  OUTLINED_FUNCTION_13_50();
  sub_1DCE2A6F4(v0 + v6, v1);
  v7 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v7);

  return 0;
}

uint64_t sub_1DCE2AADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DD11F4C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCE2ABB0(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1DCE2ABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE2AADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE2AC24(uint64_t a1)
{
  v2 = sub_1DCE2AE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2AC60(uint64_t a1)
{
  v2 = sub_1DCE2AE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionParaphrase.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7BE0, &qword_1DD0FAB38);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE2AE34();
  sub_1DD0DF24C();
  v13[15] = 0;
  sub_1DD0DEF8C();
  if (!v1)
  {
    type metadata accessor for ActionParaphrase(0);
    v13[14] = 1;
    type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
    OUTLINED_FUNCTION_3_85();
    sub_1DCE2A49C(v10, v11, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
    sub_1DD0DEFAC();
  }

  return (*(v5 + 8))(v9, v3);
}

unint64_t sub_1DCE2AE34()
{
  result = qword_1ECCA7BE8;
  if (!qword_1ECCA7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7BE8);
  }

  return result;
}

uint64_t ActionParaphrase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7BF8, &qword_1DD0FAB40);
  OUTLINED_FUNCTION_9();
  v28 = v9;
  v29 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for ActionParaphrase(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_16();
  v19 = (v18 - v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE2AE34();
  sub_1DD0DF23C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v14;
  v20 = v28;
  v21 = v29;
  v31 = 0;
  *v19 = sub_1DD0DEEDC();
  v19[1] = v22;
  type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  v30 = 1;
  OUTLINED_FUNCTION_3_85();
  sub_1DCE2A49C(v23, v24, &protocol conformance descriptor for ActionParaphrase.VerbEntityParaphrase);
  sub_1DD0DEEFC();
  (*(v20 + 8))(v13, v21);
  sub_1DCE2A908(v7, v19 + *(v26 + 20));
  sub_1DCE2B140(v19, v27, type metadata accessor for ActionParaphrase);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DCE2B19C(v19, type metadata accessor for ActionParaphrase);
}

uint64_t sub_1DCE2B140(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DCE2B19C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of ParaphrasableFlow.paraphrase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return v9(a1, a2, a3);
}

uint64_t *initializeBufferWithCopyOfBuffer for ActionParaphrase(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v6, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = v7[1];
    *v6 = *v7;
    v6[1] = v10;
    v11 = v7[3];
    v6[2] = v7[2];
    v6[3] = v11;
    v12 = *(v8 + 24);
    v13 = sub_1DD0DB66C();
    v14 = *(*(v13 - 8) + 16);

    v14(v6 + v12, v7 + v12, v13);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  }

  return a1;
}

uint64_t destroy for ActionParaphrase(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (!result)
  {

    v7 = *(v5 + 24);
    v8 = sub_1DD0DB66C();
    v9 = *(*(v8 - 8) + 8);

    return v9(v4 + v7, v8);
  }

  return result;
}

void *initializeWithCopy for ActionParaphrase(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v6, v7, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = v7[1];
    *v6 = *v7;
    v6[1] = v10;
    v11 = v7[3];
    v6[2] = v7[2];
    v6[3] = v11;
    v12 = *(v8 + 24);
    v13 = sub_1DD0DB66C();
    v14 = *(*(v13 - 8) + 16);

    v14(v6 + v12, v7 + v12, v13);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  }

  return a1;
}

void *assignWithCopy for ActionParaphrase(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    if (!v11)
    {
      *v7 = *v8;
      *(v7 + 1) = *(v8 + 1);

      *(v7 + 2) = *(v8 + 2);
      *(v7 + 3) = *(v8 + 3);

      v17 = *(v9 + 24);
      v18 = sub_1DD0DB66C();
      (*(*(v18 - 8) + 24))(&v7[v17], &v8[v17], v18);
      return a1;
    }

    sub_1DCE2B19C(v7, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v7, v8, *(*(v15 - 8) + 64));
    return a1;
  }

  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  *(v7 + 2) = *(v8 + 2);
  *(v7 + 3) = *(v8 + 3);
  v12 = *(v9 + 24);
  v13 = sub_1DD0DB66C();
  v14 = *(*(v13 - 8) + 16);

  v14(&v7[v12], &v8[v12], v13);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  return a1;
}

_OWORD *initializeWithTake for ActionParaphrase(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  v7 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v5, v6, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = v6[1];
    *v5 = *v6;
    v5[1] = v9;
    v10 = *(v7 + 24);
    v11 = sub_1DD0DB66C();
    (*(*(v11 - 8) + 32))(v5 + v10, v6 + v10, v11);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  }

  return a1;
}

void *assignWithTake for ActionParaphrase(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
  v12 = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (!EnumTagSinglePayload)
  {
    if (!v12)
    {
      v18 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v18;

      v19 = *(v9 + 3);
      *(v8 + 2) = *(v9 + 2);
      *(v8 + 3) = v19;

      v20 = *(v10 + 24);
      v21 = sub_1DD0DB66C();
      (*(*(v21 - 8) + 40))(&v8[v20], &v9[v20], v21);
      return a1;
    }

    sub_1DCE2B19C(v8, type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4B20, &qword_1DD0F0B00);
    memcpy(v8, v9, *(*(v16 - 8) + 64));
    return a1;
  }

  v13 = *(v9 + 1);
  *v8 = *v9;
  *(v8 + 1) = v13;
  v14 = *(v10 + 24);
  v15 = sub_1DD0DB66C();
  (*(*(v15 - 8) + 32))(&v8[v14], &v9[v14], v15);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  return a1;
}

void sub_1DCE2BBE0(uint64_t a1)
{
  sub_1DCE2BC78(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCE2BC78(uint64_t a1)
{
  if (!qword_1EDE4E790)
  {
    type metadata accessor for ActionParaphrase.VerbEntityParaphrase(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE4E790);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1DD0DB66C();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t destroy for ActionParaphrase.VerbEntityParaphrase(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_1DD0DB66C();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *initializeWithCopy for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1DD0DB66C();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  return a1;
}

char *assignWithCopy for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);

  v6 = *(a3 + 24);
  v7 = sub_1DD0DB66C();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *initializeWithTake for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = sub_1DD0DB66C();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *assignWithTake for ActionParaphrase.VerbEntityParaphrase(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = *(a3 + 24);
  v9 = sub_1DD0DB66C();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t sub_1DCE2C0C8(uint64_t a1)
{
  result = sub_1DD0DB66C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionParaphrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ActionParaphrase.VerbEntityParaphrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCE2C31C()
{
  result = qword_1ECCA7C10;
  if (!qword_1ECCA7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C10);
  }

  return result;
}

unint64_t sub_1DCE2C374()
{
  result = qword_1ECCA7C18;
  if (!qword_1ECCA7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C18);
  }

  return result;
}

unint64_t sub_1DCE2C3CC()
{
  result = qword_1ECCA7C20;
  if (!qword_1ECCA7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C20);
  }

  return result;
}

unint64_t sub_1DCE2C424()
{
  result = qword_1ECCA7C28;
  if (!qword_1ECCA7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C28);
  }

  return result;
}

unint64_t sub_1DCE2C47C()
{
  result = qword_1ECCA7C30;
  if (!qword_1ECCA7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C30);
  }

  return result;
}

unint64_t sub_1DCE2C4D4()
{
  result = qword_1ECCA7C38;
  if (!qword_1ECCA7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7C38);
  }

  return result;
}

uint64_t sub_1DCE2C528@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C40, &qword_1DD0FAF98);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C48, &unk_1DD0FAFA0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v26 - v12;
  v29 = 0;
  sub_1DCB17CA0(a1, v26);
  type metadata accessor for Parse.ServerConversion();
  v14 = swift_allocObject();
  v15 = v27;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x1EEE9AC00](v16, v16);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_1DCE34810(a2, &v29, MEMORY[0x1E69E7CC0], v18, v14, v15);
  v21 = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48);
  v27 = sub_1DD0DBC5C();
  v28 = MEMORY[0x1E69D1AD8];
  __swift_allocate_boxed_opaque_existential_1Tm(v26);
  sub_1DD0DBC4C();
  v23 = sub_1DD0DC6DC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v23);
  v24 = sub_1DD0DBD2C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v24);
  sub_1DD0DC75C();
  *(a3 + v22) = v20;
  type metadata accessor for Parse(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCE2C810()
{
  OUTLINED_FUNCTION_21();
  v3 = v1 == 0x746E65746E496C6ELL && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_7_8(0x746E65746E496C6ELL, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_76_10();
    if (v1 == v5 && 0x80000001DD11F6D0 == v0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_7_8(0xD000000000000010, 0x80000001DD11F6D0);
      OUTLINED_FUNCTION_7_22();
      if (v1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

uint64_t sub_1DCE2C8B8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746E65746E496C6ELL;
  }
}

uint64_t sub_1DCE2C8FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2C810();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2C924(uint64_t a1)
{
  v2 = sub_1DCE2FD54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2C960(uint64_t a1)
{
  v2 = sub_1DCE2FD54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DCE2C99C()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v23 = v3;
  v24 = sub_1DD0DC76C();
  OUTLINED_FUNCTION_9();
  v25 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E08, &qword_1DD0FB820);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = type metadata accessor for NLv3ServerParse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  sub_1DCE2FD54();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    sub_1DCB5414C();
    OUTLINED_FUNCTION_56_17();
    OUTLINED_FUNCTION_55_14();
    sub_1DD0DEF4C();
    sub_1DCC91E80(v26, v27);
    sub_1DD0DC74C();
    (*(v25 + 32))(v17, v9, v24);
    type metadata accessor for Parse.ServerConversion();
    OUTLINED_FUNCTION_27_26();
    sub_1DCE2FDA8(v18, v19, &protocol conformance descriptor for Parse.ServerConversion);
    OUTLINED_FUNCTION_56_17();
    sub_1DD0DEF4C();
    v20 = OUTLINED_FUNCTION_51_20();
    v21(v20);
    sub_1DCB21A14(v26, v27);
    *(v17 + *(v12 + 20)) = v26;
    sub_1DCB247FC(v17, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_23_21();
    sub_1DCE2D030(v17, v22);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCE2CD14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7DF0, &qword_1DD0FB818);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_57_1(v3, v4);
  v5 = sub_1DCE2FD54();
  OUTLINED_FUNCTION_58_10(&type metadata for NLv3ServerParse.CodingKeys, v6, v5);
  v13 = sub_1DD0DC73C();
  v14 = v7;
  sub_1DCB51540();
  sub_1DD0DEFFC();
  sub_1DCB21A14(v13, v14);
  if (!v0)
  {
    type metadata accessor for NLv3ServerParse(0);
    type metadata accessor for Parse.ServerConversion();
    OUTLINED_FUNCTION_27_26();
    sub_1DCE2FDA8(v8, v9, &protocol conformance descriptor for Parse.ServerConversion);
    sub_1DD0DEFFC();
  }

  v10 = OUTLINED_FUNCTION_10_54();
  return v11(v10);
}

uint64_t sub_1DCE2CEB4()
{
  OUTLINED_FUNCTION_21();
  v3 = v1 == 0x65756C6156776172 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_7_8(0x65756C6156776172, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x746169636F737361 && v0 == 0xEF65756C61566465)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7_8(0x746169636F737361, 0xEF65756C61566465);
    OUTLINED_FUNCTION_7_22();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCE2CF90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2CEB4();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2CFB8(uint64_t a1)
{
  v2 = sub_1DCB34864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2CFF4(uint64_t a1)
{
  v2 = sub_1DCB34864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCE2D030(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCE2D088()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_57_10();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_7_8(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0xD000000000000011 && 0x80000001DD11F650 == v0;
    if (v6 || (OUTLINED_FUNCTION_7_8(0xD000000000000011, 0x80000001DD11F650) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 0xD000000000000011 && 0x80000001DD11F670 == v0;
      if (v7 || (OUTLINED_FUNCTION_7_8(0xD000000000000011, 0x80000001DD11F670) & 1) != 0)
      {

        return 2;
      }

      else if (v1 == 0xD000000000000018 && 0x80000001DD11F690 == v0)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7_8(0xD000000000000018, 0x80000001DD11F690);
        OUTLINED_FUNCTION_7_22();
        if (v1)
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

uint64_t sub_1DCE2D19C()
{
  result = OUTLINED_FUNCTION_57_10();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCE2D230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2D088();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2D258(uint64_t a1)
{
  v2 = sub_1DCE2D98C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2D294(uint64_t a1)
{
  v2 = sub_1DCE2D98C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Parse.ServerConversion.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_26_6();
  v3 = sub_1DD0DD28C();
  OUTLINED_FUNCTION_9();
  v42 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_75_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CE0, &qword_1DD0FAFE0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v43 = v1;
  OUTLINED_FUNCTION_57_1(v1, v1[3]);
  v9 = sub_1DCE2D98C();
  sub_1DD0DF23C();
  if (!v2)
  {
    v41 = v9;
    sub_1DCB5414C();
    OUTLINED_FUNCTION_56_17();
    OUTLINED_FUNCTION_55_14();
    sub_1DD0DEF4C();
    sub_1DCB10E5C(0, &qword_1EDE461C0, 0x1E696ACD0);
    sub_1DCB10E5C(0, &qword_1EDE460C0, 0x1E696E880);
    v40 = sub_1DD0DE71C();
    v38 = v44;
    if (v40)
    {
      LOBYTE(v44) = 1;
      OUTLINED_FUNCTION_55_14();
      sub_1DD0DEF0C();
      v14 = sub_1DD0DEE9C();

      if (v14 >= 4)
      {
        v15 = OUTLINED_FUNCTION_80_7();
        OUTLINED_FUNCTION_34(&type metadata for ParseCodingErrors, v15);
        OUTLINED_FUNCTION_34_28(v16, 0xD00000000000001DLL);
        OUTLINED_FUNCTION_60_9();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CF8, &qword_1DD0FAFE8);
        sub_1DCE2EF48(&qword_1ECCA7D00, &qword_1ECCA7D08, &protocol conformance descriptor for SiriKitParameterMetadata, MEMORY[0x1E69E6330]);
        OUTLINED_FUNCTION_56_17();
        OUTLINED_FUNCTION_55_14();
        sub_1DD0DEF4C();
        OUTLINED_FUNCTION_56_17();
        OUTLINED_FUNCTION_55_14();
        sub_1DD0DEEFC();
        v39 = v14;
        if (v45 >> 60 == 15)
        {
          v17 = 0;
          v18 = v3;
          v19 = v0;
          v20 = v44;
LABEL_14:
          sub_1DD0DD27C();
          OUTLINED_FUNCTION_60_9();

          v21 = OUTLINED_FUNCTION_55_0();
          v22(v21);
          v23 = swift_allocObject();
          v24 = MEMORY[0x1E69CE220];
          *(v23 + 64) = v18;
          *(v23 + 72) = v24;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v23 + 40));
          (*(v42 + 16))(boxed_opaque_existential_1Tm, v19, v18);
          *(v23 + 16) = v40;
          *(v23 + 24) = v39;
          *(v23 + 32) = v20;
          (*(v42 + 8))(v19, v18);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          goto LABEL_7;
        }

        objc_allocWithZone(MEMORY[0x1E696ACD0]);
        v26 = OUTLINED_FUNCTION_68_2();
        sub_1DCC91E80(v26, v27);
        v28 = OUTLINED_FUNCTION_68_2();
        sub_1DCE2EE68(v28, v29);
        v18 = v3;
        v19 = v0;
        v30 = OUTLINED_FUNCTION_26_6();
        sub_1DCB10E5C(v30, v31, v32);
        sub_1DD0DDFBC();
        v17 = sub_1DD0DE88C();

        v20 = v44;
        if (v17)
        {
          sub_1DCB2C520(v44, v45);

          v33 = v17;
          goto LABEL_14;
        }

        v34 = sub_1DD0DECAC();
        OUTLINED_FUNCTION_34(v34, MEMORY[0x1E69E6B28]);
        v36 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D18, &qword_1DD0FAFF0);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1DD0E07C0;
        *(v37 + 56) = &_s10CodingKeysON_2;
        *(v37 + 64) = v41;
        *(v37 + 32) = 3;
        sub_1DD0DEC8C();
        (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6B00], v34);
        swift_willThrow();
        sub_1DCB21A14(v38, v45);

        sub_1DCB2C520(v44, v45);
      }
    }

    else
    {
      v12 = OUTLINED_FUNCTION_80_7();
      OUTLINED_FUNCTION_34(&type metadata for ParseCodingErrors, v12);
      OUTLINED_FUNCTION_34_28(v13, 0xD00000000000001DLL);
      OUTLINED_FUNCTION_60_9();
    }

    v10 = OUTLINED_FUNCTION_55_0();
    v11(v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
LABEL_7:
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCE2D98C()
{
  result = qword_1ECCA7CE8;
  if (!qword_1ECCA7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7CE8);
  }

  return result;
}

void Parse.ServerConversion.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v0;
  v4 = v3;
  v29 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D20, &qword_1DD0FAFF8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_57_1(v4, v4[3]);
  sub_1DCE2D98C();
  sub_1DD0DF24C();
  v7 = objc_opt_self();
  v8 = v2[2];
  v27 = 0;
  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v27];
  v10 = v27;
  if (!v9)
  {
    v16 = v10;
    sub_1DD0DAE0C();

    swift_willThrow();
LABEL_5:
    v17 = OUTLINED_FUNCTION_10_54();
    v18(v17);
    goto LABEL_7;
  }

  v11 = sub_1DD0DAF2C();
  v13 = v12;

  v27 = v11;
  v28 = v13;
  sub_1DCB51540();
  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_56_2();
  sub_1DD0DEFFC();
  if (!v1)
  {
    LOBYTE(v27) = 1;
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFBC();

    v27 = v2[4];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CF8, &qword_1DD0FAFE8);
    sub_1DCE2EF48(&qword_1ECCA7D28, &qword_1ECCA7D30, &protocol conformance descriptor for SiriKitParameterMetadata, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_48_17();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();

    OUTLINED_FUNCTION_57_1(v2 + 5, v2[8]);
    v19 = sub_1DD0DD2BC();
    if (v19)
    {
      v20 = v19;
      v26 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
      [v26 encodeObject:v20 forKey:*MEMORY[0x1E696A508]];
      v25 = v20;
      v21 = [v26 encodedData];
      v22 = sub_1DD0DAF2C();
      v24 = v23;

      v27 = v22;
      v28 = v24;
      OUTLINED_FUNCTION_48_17();
      OUTLINED_FUNCTION_56_2();
      sub_1DD0DEFFC();
      sub_1DCB21A14(v11, v13);

      sub_1DCB21A14(v27, v28);
      goto LABEL_5;
    }
  }

  v14 = OUTLINED_FUNCTION_10_54();
  v15(v14);
  sub_1DCB21A14(v11, v13);
LABEL_7:
  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCE2DE0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD11F6B0 == a2;
  if (v3 || (OUTLINED_FUNCTION_7_8(0xD000000000000012, 0x80000001DD11F6B0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552646C756F6873 && a2 == 0xED000065766C6F73;
    if (v6 || (OUTLINED_FUNCTION_7_8(0x6552646C756F6873, 0xED000065766C6F73) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_7_8(0x6574656D61726170, 0xED0000656D614E72);
      OUTLINED_FUNCTION_7_22();
      if (a1)
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

uint64_t sub_1DCE2DF08(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x6552646C756F6873;
  }

  return 0x6574656D61726170;
}

void sub_1DCE2DF7C(void *a1@<X8>)
{
  Parse.ServerConversion.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1DCE2DFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE2DE0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE2DFFC(uint64_t a1)
{
  v2 = sub_1DCE2EFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2E038(uint64_t a1)
{
  v2 = sub_1DCE2EFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitParameterMetadata.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D38, &unk_1DD0FB000);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_57_1(v2, v2[3]);
  v5 = sub_1DCE2EFE4();
  OUTLINED_FUNCTION_61_2(&_s10CodingKeysON_1, v6, v5);
  if (v0)
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_52_19();
    v7 = sub_1DD0DEF0C();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCD4F0A8(&qword_1ECCA7D50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_52_19();
    sub_1DD0DEF4C();
    v26 = v7;
    v27 = v9;
    v10 = 0;
    v11 = *(v29 + 16);
    v12 = v29 + 40;
    v28 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v13 = v12 + 16 * v10;
    while (v11 != v10)
    {
      if (v10 >= *(v29 + 16))
      {
        __break(1u);
        return;
      }

      ++v10;
      v14 = v13 + 16;
      v0 = *(v13 - 8);

      v15 = sub_1DD0DEE9C();

      v13 = v14;
      if (v15 < 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DCE19B64(0, *(v28 + 16) + 1, 1, v28);
          v28 = v18;
        }

        v17 = *(v28 + 16);
        v16 = *(v28 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1DCE19B64(v16 > 1, v17 + 1, 1, v28);
          v28 = v19;
        }

        *(v28 + 16) = v17 + 1;
        *(v28 + v17 + 32) = v15;
        v12 = v29 + 40;
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_52_19();
    v20 = sub_1DD0DEF1C();
    if (v0)
    {
      v21 = OUTLINED_FUNCTION_71_9();
      v22(v21);

      goto LABEL_14;
    }

    v23 = v20;
    v24 = OUTLINED_FUNCTION_71_9();
    v25(v24);
    swift_allocObject();
    SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(v26, v27, v23 & 1, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  OUTLINED_FUNCTION_19_19();
}

void SiriKitParameterMetadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_3();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7D58, &qword_1DD0FB010);
  OUTLINED_FUNCTION_9();
  v25 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v45 - v28;
  v30 = OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_57_1(v30, v31);
  v32 = sub_1DCE2EFE4();
  OUTLINED_FUNCTION_58_10(&_s10CodingKeysON_1, v33, v32);
  v34 = *(v20 + 16);
  v35 = *(v34 + 16);
  if (v35)
  {
    v45[0] = v21;
    v45[1] = v20;
    v46 = v29;
    v47 = v25;
    v48 = v23;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v36 = (v34 + 32);
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_66_8();
    do
    {
      v40 = *v36++;
      v41 = 0xE500000000000000;
      v42 = 0x5445534E55;
      switch(v40)
      {
        case 1:
          v42 = v37;
          goto LABEL_6;
        case 2:
          v42 = v38;
LABEL_6:
          v41 = 0xE900000000000044;
          break;
        case 3:
          v41 = 0xE800000000000000;
          v42 = v39;
          break;
        default:
          break;
      }

      v43 = *(v50 + 16);
      if (v43 >= *(v50 + 24) >> 1)
      {
        sub_1DCB38954();
        OUTLINED_FUNCTION_66_8();
        OUTLINED_FUNCTION_69_3();
      }

      *(v50 + 16) = v43 + 1;
      v44 = v50 + 16 * v43;
      *(v44 + 32) = v42;
      *(v44 + 40) = v41;
      --v35;
    }

    while (v35);
    v25 = v47;
    v23 = v48;
    v29 = v46;
    v22 = v45[0];
  }

  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  sub_1DCD4F0A8(&qword_1EDE46290, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DD0DEFFC();
  if (v22)
  {
    (*(v25 + 8))(v29, v23);
  }

  else
  {

    OUTLINED_FUNCTION_54_15();
    sub_1DD0DEFCC();
    sub_1DD0DEFBC();
    (*(v25 + 8))(v29, v23);
  }

  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_1DCE2E6B4()
{
  OUTLINED_FUNCTION_21();
  v3 = v1 == 0x696669746E656469 && v2 == 0xEA00000000007265;
  if (v3 || (OUTLINED_FUNCTION_7_8(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6174614472657375 && v0 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7_8(0x6174614472657375, 0xE800000000000000);
    OUTLINED_FUNCTION_7_22();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1DCE2E760(void *a1@<X8>)
{
  SiriKitParameterMetadata.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1DCE2E7B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCE2E6B4();
  *a1 = result;
  return result;
}

uint64_t sub_1DCE2E7D8(uint64_t a1)
{
  v2 = sub_1DCB34FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2E814(uint64_t a1)
{
  v2 = sub_1DCB34FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1DCE2E850(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  return v2 != 0;
}

BOOL sub_1DCE2E8A4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCE2E850(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_1DCE2E90C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE2E850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE2E944(uint64_t a1)
{
  v2 = sub_1DCE2F038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE2E980(uint64_t a1)
{
  v2 = sub_1DCE2F038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Parse.PegasusResult.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D78, &qword_1DD0FB030);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_57_1(v3, v4);
  v5 = sub_1DCE2F038();
  OUTLINED_FUNCTION_58_10(&_s10CodingKeysON, v6, v5);
  sub_1DD0DB1EC();
  OUTLINED_FUNCTION_22_29();
  sub_1DCE2FDA8(v7, v8, MEMORY[0x1E69BCBF8]);
  v9 = sub_1DD0DD6CC();
  if (v0)
  {
    v11 = OUTLINED_FUNCTION_10_54();
    return v12(v11);
  }

  else
  {
    v14 = v9;
    v15 = v10;
    sub_1DCB51540();
    OUTLINED_FUNCTION_56_2();
    sub_1DD0DEFFC();
    v16 = OUTLINED_FUNCTION_10_54();
    v17(v16);
    return sub_1DCB21A14(v14, v15);
  }
}

void Parse.PegasusResult.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v32 = v4;
  v5 = sub_1DD0DD6AC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  OUTLINED_FUNCTION_16();
  v7 = sub_1DD0DB1EC();
  OUTLINED_FUNCTION_9();
  v31 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7D90, &qword_1DD0FB038);
  OUTLINED_FUNCTION_9();
  v33 = v15;
  v34 = v14;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  v20 = type metadata accessor for Parse.PegasusResult(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_57_1(v3, v3[3]);
  sub_1DCE2F038();
  sub_1DD0DF23C();
  if (!v1)
  {
    v30 = v0;
    v22 = v33;
    sub_1DCB5414C();
    v23 = v34;
    sub_1DD0DEF4C();
    v29 = *(&v35 + 1);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_1DD0DD69C();
    OUTLINED_FUNCTION_22_29();
    sub_1DCE2FDA8(v24, v25, MEMORY[0x1E69BCBF8]);
    v26 = v23;
    v27 = v13;
    sub_1DD0DD6BC();
    (*(v22 + 8))(v19, v26);
    v28 = v30;
    (*(v31 + 32))(v30, v27, v7);
    OUTLINED_FUNCTION_5_74();
    sub_1DCB541A0(v28, v32);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_19_19();
}

id sub_1DCE2EE68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DD0DAEFC();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1DD0DAE0C();

    swift_willThrow();
  }

  sub_1DCB21A14(a1, a2);
  return v7;
}

uint64_t sub_1DCE2EF48(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA7CF8, &qword_1DD0FAFE8);
    sub_1DCE2FDA8(a2, type metadata accessor for SiriKitParameterMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DCE2EFE4()
{
  result = qword_1ECCA7D40;
  if (!qword_1ECCA7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7D40);
  }

  return result;
}

unint64_t sub_1DCE2F038()
{
  result = qword_1ECCA7D80;
  if (!qword_1ECCA7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7D80);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s10CodingKeysOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s10CodingKeysOwst_2(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DCE2F310(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
  }

  else
  {
    v6 = sub_1DD0DC76C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCE2F3D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD0DC76C();
  (*(*(v3 - 8) + 8))(a1, v3);
}

void sub_1DCE2F44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_1DD0DCF8C();
}

void sub_1DCE2F4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE2F558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1DCE2F5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DC76C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_1DCE2F680(uint64_t a1)
{
  result = sub_1DD0DC76C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCE2F730(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_3_86(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ParseCodingErrors(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_3_86(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_1DCE2F728();
  return a1;
}

uint64_t assignWithTake for ParseCodingErrors(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_1DCE2F728();
  return a1;
}

unint64_t sub_1DCE2F830()
{
  result = qword_1ECCA7D98;
  if (!qword_1ECCA7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7D98);
  }

  return result;
}

unint64_t sub_1DCE2F888()
{
  result = qword_1ECCA7DA0;
  if (!qword_1ECCA7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DA0);
  }

  return result;
}

unint64_t sub_1DCE2F8E0()
{
  result = qword_1ECCA7DA8;
  if (!qword_1ECCA7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DA8);
  }

  return result;
}

unint64_t sub_1DCE2F938()
{
  result = qword_1ECCA7DB0;
  if (!qword_1ECCA7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DB0);
  }

  return result;
}

unint64_t sub_1DCE2F990()
{
  result = qword_1ECCA7DB8;
  if (!qword_1ECCA7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DB8);
  }

  return result;
}

unint64_t sub_1DCE2F9E8()
{
  result = qword_1ECCA7DC0;
  if (!qword_1ECCA7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DC0);
  }

  return result;
}

unint64_t sub_1DCE2FA40()
{
  result = qword_1ECCA7DC8;
  if (!qword_1ECCA7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DC8);
  }

  return result;
}

unint64_t sub_1DCE2FA98()
{
  result = qword_1EDE4D8D0;
  if (!qword_1EDE4D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D8D0);
  }

  return result;
}

unint64_t sub_1DCE2FAF0()
{
  result = qword_1EDE4D8D8;
  if (!qword_1EDE4D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D8D8);
  }

  return result;
}

unint64_t sub_1DCE2FB48()
{
  result = qword_1ECCA7DD0;
  if (!qword_1ECCA7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DD0);
  }

  return result;
}

unint64_t sub_1DCE2FBA0()
{
  result = qword_1ECCA7DD8;
  if (!qword_1ECCA7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DD8);
  }

  return result;
}

unint64_t sub_1DCE2FBF8()
{
  result = qword_1ECCA7DE0;
  if (!qword_1ECCA7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DE0);
  }

  return result;
}

unint64_t sub_1DCE2FC50()
{
  result = qword_1ECCA7DE8;
  if (!qword_1ECCA7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DE8);
  }

  return result;
}

unint64_t sub_1DCE2FCA8()
{
  result = qword_1EDE4D960;
  if (!qword_1EDE4D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D960);
  }

  return result;
}

unint64_t sub_1DCE2FD00()
{
  result = qword_1EDE4D968;
  if (!qword_1EDE4D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D968);
  }

  return result;
}

unint64_t sub_1DCE2FD54()
{
  result = qword_1ECCA7DF8;
  if (!qword_1ECCA7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7DF8);
  }

  return result;
}

uint64_t sub_1DCE2FDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DCE2FE04()
{
  result = qword_1ECCA7E18;
  if (!qword_1ECCA7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E18);
  }

  return result;
}

unint64_t sub_1DCE2FE5C()
{
  result = qword_1ECCA7E20;
  if (!qword_1ECCA7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E20);
  }

  return result;
}

unint64_t sub_1DCE2FEB4()
{
  result = qword_1ECCA7E28;
  if (!qword_1ECCA7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E28);
  }

  return result;
}

void sub_1DCE2FF24()
{
  OUTLINED_FUNCTION_50();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v101 - v3;
  v5 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v105 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v104 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OUTLINED_FUNCTION_12();
  v107 = type metadata accessor for USOParse(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_10_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_33_2();
  v106 = v18;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v101 - v23;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_10_2();
  v29 = v27 - v28;
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v101 - v33;
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = (&v101 - v36);
  v38 = OUTLINED_FUNCTION_1_87();
  sub_1DCB24628(v38, v37, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v55 = *v37;
    v54 = v37[1];
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v56 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v56, qword_1EDE57E00);

    v57 = sub_1DD0DD8EC();
    v58 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_151();
      v60 = OUTLINED_FUNCTION_83();
      v108 = v60;
      *v59 = 136315138;

      v61 = sub_1DCB10E9C(v55, v54, &v108);

      *(v59 + 4) = v61;
      _os_log_impl(&dword_1DCAFC000, v57, v58, "[Parse.isUserCancelled] Received DirectInvocation: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_37();
    }

    if (qword_1ECCA12E0 != -1)
    {
      swift_once();
    }

    v62 = [qword_1ECCA5FD8 identifier];
    v63 = sub_1DD0DDFBC();
    v65 = v64;

    if (v55 != v63 || v54 != v65)
    {
      sub_1DD0DF0AC();
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v67 = sub_1DD0DD8FC();
      v68 = __swift_project_value_buffer(v67, qword_1EDE57E00);
      v69 = OUTLINED_FUNCTION_1_87();
      sub_1DCB24628(v69, v34, v70);
      v71 = v68;
      v72 = sub_1DD0DD8EC();
      v73 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v73))
      {
        v74 = OUTLINED_FUNCTION_151();
        v75 = OUTLINED_FUNCTION_83();
        v108 = v75;
        *v74 = 136315138;
        sub_1DCB24628(v34, v29, type metadata accessor for Parse);
        v76 = sub_1DD0DE02C();
        v78 = v77;
        sub_1DCB283D8(v34, type metadata accessor for Parse);
        v79 = sub_1DCB10E9C(v76, v78, &v108);

        *(v74 + 4) = v79;
        _os_log_impl(&dword_1DCAFC000, v72, v71, "[Parse.isUserCancelled] Unsupported parse: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_37();
      }

      else
      {

        OUTLINED_FUNCTION_4_42();
        sub_1DCB283D8(v34, v100);
      }

      OUTLINED_FUNCTION_4_42();
      v95 = v37;
      goto LABEL_32;
    }

    sub_1DCC6D300(v37, v24);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v41 = sub_1DD0DD8FC();
    v42 = __swift_project_value_buffer(v41, qword_1EDE57E00);
    OUTLINED_FUNCTION_3_88();
    sub_1DCB24628(v24, v0, v43);
    v44 = sub_1DD0DD8EC();
    v45 = sub_1DD0DE6CC();
    if (OUTLINED_FUNCTION_51_1(v45))
    {
      OUTLINED_FUNCTION_151();
      v101 = v42;
      v108 = OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_5_75(4.8149e-34);
      v47 = v46;
      v102 = v5;
      sub_1DCB24628(v0, v106, v46);
      v48 = sub_1DD0DE02C();
      v103 = v15;
      v50 = v49;
      sub_1DCB283D8(v0, v47);
      v51 = sub_1DCB10E9C(v48, v50, &v108);
      v15 = v103;

      *(v42 + 4) = v51;
      v5 = v102;
      OUTLINED_FUNCTION_14_49(&dword_1DCAFC000, v52, v53, "[Parse.isUserCancelled] Checking if parse contains cancellation: %s");
      OUTLINED_FUNCTION_10_1();
      v42 = v101;
      OUTLINED_FUNCTION_80();
    }

    else
    {

      OUTLINED_FUNCTION_0_22();
      sub_1DCB283D8(v0, v80);
    }

    Siri_Nlu_External_UserParse.preferredUserDialogAct.getter();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_1DCB0E9D8(v4, &qword_1ECCA29B8, &qword_1DD0E96C0);
      OUTLINED_FUNCTION_3_88();
      sub_1DCB24628(v24, v15, v81);
      v82 = sub_1DD0DD8EC();
      v83 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_51_1(v83))
      {
        OUTLINED_FUNCTION_151();
        v84 = OUTLINED_FUNCTION_10_0();
        v108 = v84;
        OUTLINED_FUNCTION_5_75(4.8149e-34);
        v86 = v85;
        sub_1DCB24628(v15, v106, v85);
        v87 = sub_1DD0DE02C();
        v88 = v15;
        v89 = v87;
        v91 = v90;
        sub_1DCB283D8(v88, v86);
        v92 = sub_1DCB10E9C(v89, v91, &v108);

        *(v42 + 4) = v92;
        OUTLINED_FUNCTION_14_49(&dword_1DCAFC000, v93, v94, "[Parse.isUserCancelled] Cannot extract task: parse has no UDAs: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_80();

        v95 = v24;
        v96 = v86;
      }

      else
      {

        sub_1DCB283D8(v15, type metadata accessor for USOParse);
        v95 = v24;
        v96 = type metadata accessor for USOParse;
      }

LABEL_32:
      sub_1DCB283D8(v95, v96);
      goto LABEL_33;
    }

    v98 = v104;
    v97 = v105;
    (*(v105 + 32))(v104, v4, v5);
    sub_1DD0DB54C();
    (*(v97 + 8))(v98, v5);
    OUTLINED_FUNCTION_0_22();
    sub_1DCB283D8(v24, v99);
  }

LABEL_33:
  OUTLINED_FUNCTION_49();
}

void Siri_Nlu_External_UserParse.preferredUserDialogAct.getter()
{
  OUTLINED_FUNCTION_50();
  v47 = v1;
  v2 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_10_2();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_33_2();
  v43 = v12;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_33_2();
  v42 = v15;
  OUTLINED_FUNCTION_29_0();
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  OUTLINED_FUNCTION_33_2();
  v45 = v22;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_71_0();
  v44 = v25;
  v46 = v0;
  v26 = sub_1DD0DB46C();
  v27 = 0;
  v28 = *(v26 + 16);
  v29 = (v4 + 8);
  while (v28 != v27)
  {
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_20_24();
    (*(v4 + 16))(v20, v30 + v31 * v27, v2);
    if (sub_1DD0DB52C())
    {

      v37 = *(v4 + 32);
      v38 = v45;
      v37(v45, v20, v2);
      v39 = v44;
      goto LABEL_14;
    }

    ++v27;
    (*v29)(v20, v2);
  }

  v32 = sub_1DD0DB46C();
  v33 = 0;
  v34 = *(v32 + 16);
  while (1)
  {
    if (v34 == v33)
    {

      v40 = sub_1DD0DB46C();
      sub_1DCC621EC(v40);

      goto LABEL_15;
    }

    if (v33 >= *(v32 + 16))
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_20_24();
    (*(v4 + 16))(v9, v35 + v36 * v33, v2);
    if (sub_1DD0DB51C())
    {
      break;
    }

    ++v33;
    (*v29)(v9, v2);
  }

  v37 = *(v4 + 32);
  v38 = v43;
  v37(v43, v9, v2);
  v39 = v42;
LABEL_14:
  v37(v39, v38, v2);
  v41 = v47;
  v37(v47, v39, v2);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v2);
LABEL_15:
  OUTLINED_FUNCTION_49();
}

void sub_1DCE30A18()
{
  OUTLINED_FUNCTION_50();
  sub_1DD0DB44C();
  OUTLINED_FUNCTION_9();
  v179 = v2;
  v180 = v1;
  MEMORY[0x1EEE9AC00](v1, v3);
  OUTLINED_FUNCTION_10_2();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_71_0();
  v176[1] = v9;
  OUTLINED_FUNCTION_12();
  sub_1DD0DB66C();
  OUTLINED_FUNCTION_9();
  v177 = v11;
  v178 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  OUTLINED_FUNCTION_10_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_71_0();
  v176[0] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  OUTLINED_FUNCTION_10_2();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_71_0();
  v184 = v26;
  OUTLINED_FUNCTION_12();
  v188 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v186 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_10_2();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_71_0();
  v185 = v35;
  v36 = OUTLINED_FUNCTION_12();
  v183 = type metadata accessor for USOParse(v36);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_10_2();
  v181 = v39 - v40;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_33_2();
  v182 = v43;
  OUTLINED_FUNCTION_29_0();
  v46 = MEMORY[0x1EEE9AC00](v44, v45);
  v48 = v176 - v47;
  MEMORY[0x1EEE9AC00](v46, v49);
  OUTLINED_FUNCTION_71_0();
  v187 = v50;
  v51 = OUTLINED_FUNCTION_12();
  type metadata accessor for Parse(v51);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_10_2();
  v56 = v54 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = (v176 - v61);
  v63 = OUTLINED_FUNCTION_1_87();
  sub_1DCB24628(v63, v62, v64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v187 = v23;
    v95 = v15;
    v184 = v6;
    v185 = v32;
    v97 = *v62;
    v96 = v62[1];
    v98 = v62[2];
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v99 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v99, qword_1EDE57E00);

    v100 = sub_1DD0DD8EC();
    v101 = sub_1DD0DE6CC();

    v102 = v95;
    if (os_log_type_enabled(v100, v101))
    {
      v103 = OUTLINED_FUNCTION_151();
      v183 = v95;
      v104 = v103;
      v105 = OUTLINED_FUNCTION_83();
      v189 = v105;
      *v104 = 136315138;
      *&v190 = v97;
      *(&v190 + 1) = v96;
      *&v191 = v98;

      v106 = sub_1DD0DE02C();
      v108 = sub_1DCB10E9C(v106, v107, &v189);

      *(v104 + 4) = v108;
      _os_log_impl(&dword_1DCAFC000, v100, v101, "[Parse.ontologyGraph] Processing .directInvocation: %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      OUTLINED_FUNCTION_80();
      v102 = v183;
      OUTLINED_FUNCTION_80();
    }

    v109 = v187;
    if (v97 != 0xD000000000000028 || 0x80000001DD11D600 != v96)
    {
      OUTLINED_FUNCTION_54_3();
      if ((sub_1DD0DF0AC() & 1) == 0)
      {

        v154 = sub_1DD0DD8EC();
        v161 = sub_1DD0DE6EC();

        if (!os_log_type_enabled(v154, v161))
        {

          goto LABEL_56;
        }

        OUTLINED_FUNCTION_151();
        v162 = OUTLINED_FUNCTION_10_0();
        *&v190 = v162;
        *v102 = 136315138;

        v163 = OUTLINED_FUNCTION_54_3();
        v166 = sub_1DCB10E9C(v163, v164, v165);

        *(v102 + 4) = v166;
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v167, v168, v169, v170, v171, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v162);
        OUTLINED_FUNCTION_80();
        goto LABEL_53;
      }
    }

    if (v98)
    {
      sub_1DCB90D40();

      v111 = v188;
      if (*(&v191 + 1))
      {
        v112 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v109, v112 ^ 1u, 1, v111);
        if (__swift_getEnumTagSinglePayload(v109, 1, v111) != 1)
        {
          v114 = v185;
          v113 = v186;
          (*(v186 + 32))(v185, v109, v111);
          if (sub_1DD0DB51C())
          {
            sub_1DD0DB56C();
            sub_1DD0DB63C();
            (*(v177 + 8))(v102, v178);
            sub_1DD0DB7EC();
            v174 = OUTLINED_FUNCTION_10_55();
            v175(v174);
            sub_1DD0DCF8C();
          }

          (*(v113 + 8))(v114, v111);
          goto LABEL_49;
        }

LABEL_48:
        sub_1DCB0E9D8(v109, &qword_1ECCA29B8, &qword_1DD0E96C0);
LABEL_49:
        v154 = sub_1DD0DD8EC();
        v155 = sub_1DD0DE6EC();
        if (!OUTLINED_FUNCTION_22(v155))
        {
LABEL_56:

          goto LABEL_57;
        }

        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v156, v157, v158, v159, v160, 2u);
LABEL_53:
        OUTLINED_FUNCTION_80();
        goto LABEL_56;
      }
    }

    else
    {

      v190 = 0u;
      v191 = 0u;
      v111 = v188;
    }

    sub_1DCB0E9D8(&v190, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v111);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v84 = *v62;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v85 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v85, qword_1EDE57E00);
    swift_unknownObjectRetain();
    v86 = sub_1DD0DD8EC();
    v87 = sub_1DD0DE6CC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = OUTLINED_FUNCTION_151();
      v89 = OUTLINED_FUNCTION_83();
      *&v190 = v89;
      *v88 = 136315138;
      v189 = v84;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CD0, &qword_1DD0FAFD8);
      v90 = sub_1DD0DE02C();
      v92 = sub_1DCB10E9C(v90, v91, &v190);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_1DCAFC000, v86, v87, "[Parse.ontologyGraph] Processing .NLv4IntentOnly(act): %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_80();
    }

    objc_opt_self();
    v93 = swift_dynamicCastObjCClass();
    swift_unknownObjectRetain();
    if (v93)
    {
      v94 = [v93 task];
      sub_1DD0DE7CC();
      swift_unknownObjectRelease_n();
    }

    else
    {
      v147 = sub_1DD0DD8EC();
      v148 = sub_1DD0DE6EC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = OUTLINED_FUNCTION_151();
        v150 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_21_28(v150);
        *v149 = 136315138;
        v189 = v84;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CD0, &qword_1DD0FAFD8);
        v151 = sub_1DD0DE02C();
        v153 = sub_1DCB10E9C(v151, v152, &v190);

        *(v149 + 4) = v153;
        _os_log_impl(&dword_1DCAFC000, v147, v148, "[Parse.ontologyGraph] Cannot parse NLv4IntentOnly: %s", v149, 0xCu);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_80();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v66 = v187;
      sub_1DCC6D300(v62, v187);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v67 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v67, qword_1EDE57E00);
      OUTLINED_FUNCTION_3_88();
      sub_1DCB24628(v66, v48, v68);
      v69 = sub_1DD0DD8EC();
      v70 = sub_1DD0DE6CC();
      if (OUTLINED_FUNCTION_51_1(v70))
      {
        OUTLINED_FUNCTION_151();
        v71 = OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_21_28(v71);
        OUTLINED_FUNCTION_5_75(4.8149e-34);
        v73 = v72;
        sub_1DCB24628(v48, v182, v72);
        v74 = sub_1DD0DE02C();
        v76 = v75;
        sub_1DCB283D8(v48, v73);
        v77 = v74;
        v66 = v187;
        v78 = sub_1DCB10E9C(v77, v76, &v190);
        v79 = v188;

        *(v32 + 4) = v78;
        OUTLINED_FUNCTION_14_49(&dword_1DCAFC000, v80, v81, "[Parse.ontologyGraph] Processing .uso(usoParse): %s");
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_80();

        v83 = v185;
        v82 = v186;
      }

      else
      {

        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(v48, v130);
        v83 = v185;
        v82 = v186;
        v79 = v188;
      }

      v131 = v184;
      Siri_Nlu_External_UserParse.preferredUserDialogAct.getter();
      if (__swift_getEnumTagSinglePayload(v131, 1, v79) != 1)
      {
        (*(v82 + 32))(v83, v131, v79);
        v135 = v176[0];
        sub_1DD0DB56C();
        sub_1DD0DB63C();
        (*(v177 + 8))(v135, v178);
        sub_1DD0DB7EC();
        v172 = OUTLINED_FUNCTION_10_55();
        v173(v172);
        sub_1DD0DCF8C();
      }

      sub_1DCB0E9D8(v131, &qword_1ECCA29B8, &qword_1DD0E96C0);
      OUTLINED_FUNCTION_3_88();
      v136 = v181;
      sub_1DCB24628(v66, v181, v137);
      v138 = sub_1DD0DD8EC();
      v139 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v138, v139))
      {
        v141 = OUTLINED_FUNCTION_151();
        v142 = OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_21_28(v142);
        *v141 = 136315138;
        sub_1DCB24628(v136, v182, type metadata accessor for USOParse);
        v143 = sub_1DD0DE02C();
        v145 = v144;
        sub_1DCB283D8(v136, type metadata accessor for USOParse);
        v146 = sub_1DCB10E9C(v143, v145, &v190);

        *(v141 + 4) = v146;
        _os_log_impl(&dword_1DCAFC000, v138, v139, "[Parse.ontologyGraph] Cannot extract task: parse has no UDAs: %s", v141, 0xCu);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        sub_1DCB283D8(v136, type metadata accessor for USOParse);
      }

      v134 = v66;
      v133 = type metadata accessor for USOParse;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v115 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v115, qword_1EDE57E00);
      v116 = OUTLINED_FUNCTION_1_87();
      sub_1DCB24628(v116, v0, v117);
      v118 = sub_1DD0DD8EC();
      v119 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v119))
      {
        OUTLINED_FUNCTION_151();
        v120 = OUTLINED_FUNCTION_10_0();
        *&v190 = v120;
        *v32 = 136315138;
        sub_1DCB24628(v0, v56, type metadata accessor for Parse);
        v121 = sub_1DD0DE02C();
        v123 = v122;
        sub_1DCB283D8(v0, type metadata accessor for Parse);
        v124 = sub_1DCB10E9C(v121, v123, &v190);

        *(v32 + 4) = v124;
        OUTLINED_FUNCTION_9_3();
        _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        OUTLINED_FUNCTION_4_42();
        sub_1DCB283D8(v0, v132);
      }

      OUTLINED_FUNCTION_4_42();
      v134 = v62;
    }

    sub_1DCB283D8(v134, v133);
  }

LABEL_57:
  OUTLINED_FUNCTION_49();
}

void SIRINLUUserParse.preferredUserDialogAct.getter()
{
  OUTLINED_FUNCTION_50();
  v5 = [v0 userDialogActs];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7CD0, &qword_1DD0FAFD8);
  v7 = sub_1DD0DE2EC();

  sub_1DCB08B14(v7);
  OUTLINED_FUNCTION_26_26();
  while (v1 != v2)
  {
    if (v3)
    {
      v8 = OUTLINED_FUNCTION_54_3();
      MEMORY[0x1E12A72C0](v8);
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_25;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      MEMORY[0x1E12A72C0](0, v6);
      goto LABEL_19;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    ++v2;
  }

  v9 = [v0 userDialogActs];
  v10 = sub_1DD0DE2EC();

  sub_1DCB08B14(v10);
  OUTLINED_FUNCTION_26_26();
  while (v1 != v2)
  {
    if (v3)
    {
      v11 = OUTLINED_FUNCTION_54_3();
      MEMORY[0x1E12A72C0](v11);
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_27;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_26;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    ++v2;
  }

  v12 = [v0 userDialogActs];
  v6 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v6))
  {
    sub_1DCB35460(0, (v6 & 0xC000000000000001) == 0, v6);
    if ((v6 & 0xC000000000000001) == 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_19:

  OUTLINED_FUNCTION_49();
}

unint64_t sub_1DCE31CBC()
{
  result = qword_1ECCA7E38;
  if (!qword_1ECCA7E38)
  {
    sub_1DD0DC5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E38);
  }

  return result;
}

uint64_t sub_1DCE31D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E48, &qword_1DD0FB940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCE31D90()
{
  result = qword_1ECCA7E50;
  if (!qword_1ECCA7E50)
  {
    sub_1DD0DC08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7E50);
  }

  return result;
}

void sub_1DCE31DF4()
{
  OUTLINED_FUNCTION_50();
  sub_1DD0DC08C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E40, &qword_1DD0FB938);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E48, &qword_1DD0FB940);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_10_2();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1DD0DBDEC();
  if (v11[3])
  {
    sub_1DD0DC38C();
    if (swift_dynamicCast())
    {
      sub_1DD0DCF8C();
    }
  }

  else
  {
    sub_1DCB0E9D8(v11, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE32220(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_1DCB08B14(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      return v5 != v7;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1E12A72C0](v6, a1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = a2();

    v6 = v7 + 1;
    if (v8)
    {
      return v5 != v7;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    sub_1DD0DCF8C();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DCE32318(uint64_t (*a1)(void))
{
  sub_1DD0DB7DC();
  LOBYTE(a1) = a1();

  return a1 & 1;
}

void Array<A>.hasWantedToPause.getter(uint64_t a1)
{
  sub_1DCE32578();
}

{
  sub_1DCE3281C();
}

void Array<A>.hasCancelled.getter(uint64_t a1)
{
  sub_1DCE32578();
}

{
  sub_1DCE3281C();
}

void Array<A>.hasDirectDismissal.getter(uint64_t a1)
{
  sub_1DCE323FC();
}

{
  sub_1DCE32C18();
}

void Array<A>.hasThankYou.getter(uint64_t a1)
{
  sub_1DCE323FC();
}

{
  sub_1DCE32C18();
}

void sub_1DCE323FC()
{
  OUTLINED_FUNCTION_50();
  v16 = v1;
  v3 = v2;
  v4 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v9 = *(v3 + 16);
  if (v9)
  {
    v11 = *(v6 + 16);
    v10 = v6 + 16;
    v17 = v11;
    OUTLINED_FUNCTION_19_32();
    v13 = v3 + v12;
    v14 = *(v10 + 56);
    do
    {
      v17(v0, v13, v4);
      sub_1DD0DB7DC();
      v15 = v16();

      (*(v10 - 8))(v0, v4);
      if (v15)
      {
        break;
      }

      v13 += v14;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCE32578()
{
  OUTLINED_FUNCTION_50();
  v16 = v0;
  v2 = v1;
  v3 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = 0;
  v12 = *(v2 + 16);
  do
  {
    if (v12 == v11)
    {
      break;
    }

    OUTLINED_FUNCTION_19_32();
    v14 = (*(v5 + 16))(v10, v2 + v13 + *(v5 + 72) * v11++, v3);
    v15 = v16(v14);
    (*(v5 + 8))(v10, v3);
  }

  while ((v15 & 1) == 0);
  OUTLINED_FUNCTION_49();
}

uint64_t Parse.interpretableAsUniversalAction.getter()
{
  v1 = v0;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  v7 = type metadata accessor for USOParse(0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  sub_1DCB29E58(v1, v6);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1DCC6D300(v6, v12);
    v13 = sub_1DD0DB49C();
    OUTLINED_FUNCTION_0_22();
    sub_1DCB283D8(v12, v14);
    if (v13)
    {
      return 1;
    }
  }

  else
  {
    sub_1DCB283D8(v6, type metadata accessor for Parse);
  }

  return 0;
}

void sub_1DCE3281C()
{
  OUTLINED_FUNCTION_50();
  v60 = v0;
  v2 = v1;
  v3 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = type metadata accessor for USOParse(0);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_2();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_4_16();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_8_60();
  v54 = v24 - v25;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v51 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v51 - v32;
  v55 = *(v2 + 16);
  if (v55)
  {
    v34 = 0;
    OUTLINED_FUNCTION_10_56();
    v56 = *(v35 + 72);
    v57 = v2 + v36;
    v58 = v5 + 8;
    v59 = v5 + 16;
    v37 = v54;
    v52 = v16;
    v53 = v20;
    v51 = v21;
    while (1)
    {
      sub_1DCB29E58(v57 + v56 * v34, v33);
      sub_1DCB29E58(v33, v30);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        break;
      }

      sub_1DCB283D8(v33, type metadata accessor for Parse);
LABEL_14:
      ++v34;
      OUTLINED_FUNCTION_4_42();
      sub_1DCB283D8(v46, v47);
      if (v34 == v55)
      {
        goto LABEL_17;
      }
    }

    sub_1DCC6D300(v30, v20);
    sub_1DCB29E58(v33, v37);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1DCC6D300(v37, v16);
      v38 = sub_1DD0DB49C();
      OUTLINED_FUNCTION_0_22();
      sub_1DCB283D8(v16, v39);
      if (v38)
      {
        v40 = sub_1DD0DB46C();
        v41 = 0;
        v42 = *(v40 + 16);
        while (v42 != v41)
        {
          OUTLINED_FUNCTION_19_32();
          v44 = (*(v5 + 16))(v10, v40 + v43 + *(v5 + 72) * v41++, v3);
          v45 = v60(v44);
          (*(v5 + 8))(v10, v3);
          if (v45)
          {

            OUTLINED_FUNCTION_0_22();
            sub_1DCB283D8(v53, v49);
            OUTLINED_FUNCTION_4_42();
            sub_1DCB283D8(v33, v50);
            goto LABEL_17;
          }
        }

        OUTLINED_FUNCTION_0_22();
        v20 = v53;
        sub_1DCB283D8(v53, v48);
        v16 = v52;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1DCB283D8(v37, type metadata accessor for Parse);
    }

    sub_1DCB283D8(v20, type metadata accessor for USOParse);
LABEL_13:
    v37 = v54;
    goto LABEL_14;
  }

LABEL_17:
  OUTLINED_FUNCTION_49();
}

void sub_1DCE32C18()
{
  OUTLINED_FUNCTION_50();
  v57 = v0;
  v2 = v1;
  v3 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v11 = type metadata accessor for USOParse(0);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_2();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v52 - v19;
  v21 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_4_16();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_8_60();
  v55 = v24 - v25;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = v52 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v56 = v52 - v32;
  v60 = *(v2 + 16);
  if (!v60)
  {
LABEL_18:
    OUTLINED_FUNCTION_49();
    return;
  }

  v33 = 0;
  OUTLINED_FUNCTION_10_56();
  v58 = *(v34 + 72);
  v59 = v2 + v35;
  v62 = v5 + 8;
  v63 = v5 + 16;
  v61 = v10;
  v36 = v56;
  v53 = v16;
  v54 = v20;
  v52[1] = v21;
  while (1)
  {
    sub_1DCB29E58(v59 + v58 * v33, v36);
    sub_1DCB29E58(v36, v30);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_1DCB283D8(v36, type metadata accessor for Parse);
      goto LABEL_15;
    }

    sub_1DCC6D300(v30, v20);
    v37 = v36;
    v38 = v55;
    sub_1DCB29E58(v37, v55);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_1DCB283D8(v38, type metadata accessor for Parse);
LABEL_14:
      sub_1DCB283D8(v20, type metadata accessor for USOParse);
      v36 = v56;
      goto LABEL_15;
    }

    sub_1DCC6D300(v38, v16);
    v39 = sub_1DD0DB49C();
    OUTLINED_FUNCTION_0_22();
    sub_1DCB283D8(v16, v40);
    if ((v39 & 1) == 0)
    {
      goto LABEL_14;
    }

    v41 = sub_1DD0DB46C();
    v65 = *(v41 + 16);
    if (v65)
    {
      break;
    }

LABEL_11:

    OUTLINED_FUNCTION_0_22();
    v20 = v54;
    sub_1DCB283D8(v54, v47);
    v36 = v56;
    v16 = v53;
LABEL_15:
    ++v33;
    OUTLINED_FUNCTION_4_42();
    sub_1DCB283D8(v48, v49);
    if (v33 == v60)
    {
      goto LABEL_18;
    }
  }

  v42 = 0;
  OUTLINED_FUNCTION_19_32();
  v64 = v41 + v43;
  while (v42 < *(v41 + 16))
  {
    (*(v5 + 16))(v10, v64 + *(v5 + 72) * v42, v3);
    sub_1DD0DB7DC();
    v44 = v57();

    v45 = OUTLINED_FUNCTION_14_50();
    v46(v45);
    if (v44)
    {

      OUTLINED_FUNCTION_0_22();
      sub_1DCB283D8(v54, v50);
      OUTLINED_FUNCTION_4_42();
      sub_1DCB283D8(v56, v51);
      goto LABEL_18;
    }

    ++v42;
    v10 = v61;
    if (v65 == v42)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DCE33108(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v7 = OUTLINED_FUNCTION_7_50();
  v8 = type metadata accessor for USOParse(v7);
  v9 = OUTLINED_FUNCTION_20_0(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v14 = type metadata accessor for Input(0);
  sub_1DCB29E58(v2 + *(v14 + 20), v2);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v18 = type metadata accessor for Parse;
    v19 = v2;
LABEL_7:
    sub_1DCB283D8(v19, v18);
    goto LABEL_8;
  }

  sub_1DCC6D300(v2, v13);
  if ((Parse.interpretableAsUniversalAction.getter() & 1) == 0)
  {
    v18 = type metadata accessor for USOParse;
    v19 = v13;
    goto LABEL_7;
  }

  sub_1DD0DB46C();
  v15 = a1();

  OUTLINED_FUNCTION_0_22();
  sub_1DCB283D8(v13, v16);
  if ((v15 & 1) == 0)
  {
LABEL_8:
    v17 = a2(*(v2 + *(v14 + 24)));
    return v17 & 1;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1DCE33284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E58, &unk_1DD0FB958);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v22 - v4;
  v25 = sub_1DD0DB3AC();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v7);
  v22[3] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DCB08B14(a1);
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 & 0xC000000000000001;
  v22[1] = v6;
  v22[2] = v6 + 32;
  v22[4] = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    if (v24)
    {
      MEMORY[0x1E12A72C0](0, a1);
      v10 = sub_1DD0DC6FC();
      v12 = v11;
      v13 = sub_1DD0DC6EC();
      v15 = v14;
      sub_1DD0DBB6C();
      swift_allocObject();
      MEMORY[0x1E12A41B0](v10, v12, v13, v15);
      sub_1DCE33648(v5);
    }

    if (*(v23 + 16))
    {
      sub_1DD0DCF8C();
    }

    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  sub_1DCDA5740();
  a1 = sub_1DCC5173C(v16);
  if (*(a1 + 16))
  {
    return a1;
  }

  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DCAFC000, v18, v19, "No tasks found in NLv4 intent", v20, 2u);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  return a1;
}

void sub_1DCE33648(uint64_t a1@<X8>)
{
  v20[2] = a1;
  v2 = sub_1DD0DD66C();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v20[1] = v6 - v5;
  sub_1DD0DB44C();
  OUTLINED_FUNCTION_10_57();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  v14 = OUTLINED_FUNCTION_20_0(v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v20 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD0E15D0;
  *(v18 + 32) = v1;
  v19 = sub_1DD0DBC3C();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE33A70(uint64_t a1)
{
  v1 = sub_1DD0DBC6C();
  v2 = sub_1DCE33284(v1);

  return v2;
}

uint64_t sub_1DCE33C20(uint64_t a1)
{
  v1 = sub_1DD0DB7DC();
  v2 = sub_1DCE33284(v1);

  return v2;
}

void sub_1DCE33DD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = OUTLINED_FUNCTION_20_0(v1);
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E58, &unk_1DD0FB958);
  v7 = OUTLINED_FUNCTION_20_0(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1DCE33648(&v10 - v9);
}

uint64_t Parse.DirectInvocation.init(identifier:userData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Parse.PegasusResult.clientComponent.getter()
{
  OUTLINED_FUNCTION_4();
  v0 = sub_1DD0DB24C();
  OUTLINED_FUNCTION_0_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v8 = sub_1DD0DB1CC();
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  sub_1DD0DB1DC();
  sub_1DD0DB1AC();
  (*(v10 + 8))(v15, v8);
  v16 = sub_1DD0DB23C();
  (*(v2 + 8))(v7, v0);
  sub_1DCC62204(v16);
}

uint64_t Parse.ServerConversion.__allocating_init(siriKitIntent:confirmationState:appResolutionStateProviding:)(uint64_t a1, char *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  Parse.ServerConversion.init(siriKitIntent:confirmationState:appResolutionStateProviding:)(a1, a2, a3);
  return v6;
}

uint64_t Parse.ServerConversion.init(siriKitIntent:confirmationState:appResolutionStateProviding:)(uint64_t a1, char *a2, __int128 *a3)
{
  v4 = *a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  sub_1DCAFF9E8(a3, v3 + 40);
  return v3;
}

uint64_t sub_1DCE343EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_4_82();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16);
  v20 = a5(v9, v8, v7, v18, v5, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v20;
}

uint64_t Parse.ServerConversion.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  return v0;
}

uint64_t Parse.ServerConversion.__deallocating_deinit()
{
  Parse.ServerConversion.deinit();

  return swift_deallocClassInstance();
}

uint64_t Parse.PegasusResult.serverDrivenExperience.getter()
{
  OUTLINED_FUNCTION_4();
  v0 = sub_1DD0DB1CC();
  OUTLINED_FUNCTION_0_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  sub_1DD0DB1DC();
  sub_1DD0DB1BC();
  return (*(v2 + 8))(v7, v0);
}

uint64_t Parse.PegasusResult.response.getter()
{
  OUTLINED_FUNCTION_4();
  sub_1DD0DB1EC();
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t Parse.PegasusResult.init(pegasusResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD0DB1EC();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t sub_1DCE346D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  (*(v12 + 16))(v14, a4, a6);
  v16 = sub_1DCE34810(a1, a2, a3, v14, v15, a6);
  (*(v12 + 8))(a4, a6);
  return v16;
}

uint64_t sub_1DCE34810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_4_82();
  v12[8] = v13;
  v12[9] = v14;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12 + 5);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, v6, a6);
  v16 = *v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v16;
  *(a5 + 32) = v7;
  return a5;
}

char *assignWithCopy for Parse(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCB29EBC(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = sub_1DD0DC76C();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        goto LABEL_28;
      case 1u:
        v14 = sub_1DD0DC76C();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v15 + 48)] = *&a2[*(v15 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);

        goto LABEL_28;
      case 3u:
        *a1 = *a2;
        swift_unknownObjectRetain();
        goto LABEL_28;
      case 4u:
        v7 = sub_1DD0DB1EC();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        goto LABEL_28;
      case 5u:
        v16 = *a2;
        *a1 = *a2;
        v17 = v16;
        goto LABEL_28;
      case 6u:
        v18 = sub_1DD0DB4BC();
        (*(*(v18 - 8) + 16))(a1, a2, v18);
        v19 = type metadata accessor for USOParse(0);
        v20 = v19[5];
        v21 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v20], 1, v21))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v20], &a2[v20], *(*(v22 - 8) + 64));
        }

        else
        {
          (*(*(v21 - 8) + 16))(&a1[v20], &a2[v20], v21);
          __swift_storeEnumTagSinglePayload(&a1[v20], 0, 1, v21);
        }

        v52 = v19[6];
        v53 = &a1[v52];
        v54 = &a2[v52];
        *v53 = *v54;
        *(v53 + 1) = *(v54 + 1);
        v55 = v19[7];
        v56 = &a1[v55];
        v57 = &a2[v55];
        v58 = *v57;
        v56[4] = v57[4];
        *v56 = v58;

        goto LABEL_28;
      case 7u:
        v9 = sub_1DD0DB4BC();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        v10 = type metadata accessor for USOParse(0);
        v11 = v10[5];
        v12 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v11], 1, v12))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v11], &a2[v11], *(*(v13 - 8) + 64));
        }

        else
        {
          (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
          __swift_storeEnumTagSinglePayload(&a1[v11], 0, 1, v12);
        }

        v35 = v10[6];
        v36 = &a1[v35];
        v37 = &a2[v35];
        *v36 = *v37;
        *(v36 + 1) = *(v37 + 1);
        v38 = v10[7];
        v39 = &a1[v38];
        v40 = &a2[v38];
        v41 = *v40;
        v39[4] = v40[4];
        *v39 = v41;
        v42 = type metadata accessor for LinkParse(0);
        v43 = v42[5];
        v44 = &a1[v43];
        v45 = &a2[v43];
        *v44 = *v45;
        *(v44 + 1) = *(v45 + 1);
        v46 = v42[6];
        v47 = &a1[v46];
        v48 = &a2[v46];
        *v47 = *v48;
        *(v47 + 1) = *(v48 + 1);
        v49 = v42[7];
        v50 = &a1[v49];
        v51 = &a2[v49];
        *v50 = *v51;
        *(v50 + 1) = *(v51 + 1);

        goto LABEL_28;
      case 8u:
        v25 = sub_1DD0DD12C();
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = type metadata accessor for NLRouterParse(0);
        v27 = v26[5];
        v28 = &a1[v27];
        v29 = &a2[v27];
        *v28 = *v29;
        *(v28 + 1) = *(v29 + 1);
        v30 = v26[6];
        v31 = &a1[v30];
        v32 = &a2[v30];
        v33 = type metadata accessor for USOParse(0);

        if (__swift_getEnumTagSinglePayload(v32, 1, v33))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v31, v32, *(*(v34 - 8) + 64));
        }

        else
        {
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 16))(v31, v32, v59);
          v60 = v33[5];
          v61 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v60], 1, v61))
          {
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v60], &v32[v60], *(*(v62 - 8) + 64));
          }

          else
          {
            (*(*(v61 - 8) + 16))(&v31[v60], &v32[v60], v61);
            __swift_storeEnumTagSinglePayload(&v31[v60], 0, 1, v61);
          }

          v63 = v33[6];
          v64 = &v31[v63];
          v65 = &v32[v63];
          *v64 = *v65;
          *(v64 + 1) = *(v65 + 1);
          v66 = v33[7];
          v67 = &v31[v66];
          v68 = &v32[v66];
          v69 = *v68;
          v67[4] = v68[4];
          *v67 = v69;

          __swift_storeEnumTagSinglePayload(v31, 0, 1, v33);
        }

        v70 = v26[7];
        v71 = *&a2[v70];
        *&a1[v70] = v71;
        v72 = v71;
        goto LABEL_28;
      case 9u:
        v8 = sub_1DD0DD08C();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_28:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v23 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v23);
    }
  }

  return a1;
}

void *initializeWithTake for Parse(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DC76C();
      (*(*(v6 - 8) + 32))(a1, a2, v6);
      goto LABEL_24;
    case 1u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 32))(a1, a2, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v17 + 48)] = *&a2[*(v17 + 48)];
      goto LABEL_24;
    case 4u:
      v19 = sub_1DD0DB1EC();
      (*(*(v19 - 8) + 32))(a1, a2, v19);
      goto LABEL_24;
    case 6u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 32))(a1, a2, v20);
      v21 = type metadata accessor for USOParse(0);
      v22 = v21[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v22], &a2[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 32))(&a1[v22], &a2[v22], v23);
        __swift_storeEnumTagSinglePayload(&a1[v22], 0, 1, v23);
      }

      *&a1[v21[6]] = *&a2[v21[6]];
      v34 = v21[7];
      v35 = &a1[v34];
      v36 = &a2[v34];
      v35[4] = v36[4];
      *v35 = *v36;
      goto LABEL_24;
    case 7u:
      v25 = sub_1DD0DB4BC();
      (*(*(v25 - 8) + 32))(a1, a2, v25);
      v26 = type metadata accessor for USOParse(0);
      v27 = v26[5];
      v28 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v27], 1, v28))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v27], &a2[v27], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(*(v28 - 8) + 32))(&a1[v27], &a2[v27], v28);
        __swift_storeEnumTagSinglePayload(&a1[v27], 0, 1, v28);
      }

      *&a1[v26[6]] = *&a2[v26[6]];
      v37 = v26[7];
      v38 = &a1[v37];
      v39 = &a2[v37];
      v38[4] = v39[4];
      *v38 = *v39;
      v40 = type metadata accessor for LinkParse(0);
      *&a1[v40[5]] = *&a2[v40[5]];
      *&a1[v40[6]] = *&a2[v40[6]];
      *&a1[v40[7]] = *&a2[v40[7]];
      goto LABEL_24;
    case 8u:
      v9 = sub_1DD0DD12C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = type metadata accessor for NLRouterParse(0);
      *&a1[v10[5]] = *&a2[v10[5]];
      v11 = v10[6];
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = type metadata accessor for USOParse(0);
      if (__swift_getEnumTagSinglePayload(v13, 1, v14))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v12, v13, *(*(v15 - 8) + 64));
      }

      else
      {
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v12, v13, v30);
        v31 = v14[5];
        v32 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v13[v31], 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v12[v31], &v13[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(*(v32 - 8) + 32))(&v12[v31], &v13[v31], v32);
          __swift_storeEnumTagSinglePayload(&v12[v31], 0, 1, v32);
        }

        *&v12[v14[6]] = *&v13[v14[6]];
        v41 = v14[7];
        v42 = &v12[v41];
        v43 = &v13[v41];
        v42[4] = v43[4];
        *v42 = *v43;
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
      }

      *&a1[v10[7]] = *&a2[v10[7]];
      goto LABEL_24;
    case 9u:
      v18 = sub_1DD0DD08C();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
LABEL_24:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v7 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v7);
      break;
  }

  return result;
}

char *assignWithTake for Parse(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCB29EBC(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = sub_1DD0DC76C();
        (*(*(v6 - 8) + 32))(a1, a2, v6);
        goto LABEL_25;
      case 1u:
        v16 = sub_1DD0DC76C();
        (*(*(v16 - 8) + 32))(a1, a2, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v17 + 48)] = *&a2[*(v17 + 48)];
        goto LABEL_25;
      case 4u:
        v19 = sub_1DD0DB1EC();
        (*(*(v19 - 8) + 32))(a1, a2, v19);
        goto LABEL_25;
      case 6u:
        v20 = sub_1DD0DB4BC();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        v21 = type metadata accessor for USOParse(0);
        v22 = v21[5];
        v23 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v22], 1, v23))
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v22], &a2[v22], *(*(v24 - 8) + 64));
        }

        else
        {
          (*(*(v23 - 8) + 32))(&a1[v22], &a2[v22], v23);
          __swift_storeEnumTagSinglePayload(&a1[v22], 0, 1, v23);
        }

        *&a1[v21[6]] = *&a2[v21[6]];
        v34 = v21[7];
        v35 = &a1[v34];
        v36 = &a2[v34];
        v35[4] = v36[4];
        *v35 = *v36;
        goto LABEL_25;
      case 7u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 32))(a1, a2, v25);
        v26 = type metadata accessor for USOParse(0);
        v27 = v26[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v27], &a2[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&a1[v27], &a2[v27], v28);
          __swift_storeEnumTagSinglePayload(&a1[v27], 0, 1, v28);
        }

        *&a1[v26[6]] = *&a2[v26[6]];
        v37 = v26[7];
        v38 = &a1[v37];
        v39 = &a2[v37];
        v38[4] = v39[4];
        *v38 = *v39;
        v40 = type metadata accessor for LinkParse(0);
        *&a1[v40[5]] = *&a2[v40[5]];
        *&a1[v40[6]] = *&a2[v40[6]];
        *&a1[v40[7]] = *&a2[v40[7]];
        goto LABEL_25;
      case 8u:
        v9 = sub_1DD0DD12C();
        (*(*(v9 - 8) + 32))(a1, a2, v9);
        v10 = type metadata accessor for NLRouterParse(0);
        *&a1[v10[5]] = *&a2[v10[5]];
        v11 = v10[6];
        v12 = &a1[v11];
        v13 = &a2[v11];
        v14 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v13, 1, v14))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v12, v13, *(*(v15 - 8) + 64));
        }

        else
        {
          v30 = sub_1DD0DB4BC();
          (*(*(v30 - 8) + 32))(v12, v13, v30);
          v31 = v14[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v31], &v13[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 32))(&v12[v31], &v13[v31], v32);
            __swift_storeEnumTagSinglePayload(&v12[v31], 0, 1, v32);
          }

          *&v12[v14[6]] = *&v13[v14[6]];
          v41 = v14[7];
          v42 = &v12[v41];
          v43 = &v13[v41];
          v42[4] = v43[4];
          *v42 = *v43;
          __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
        }

        *&a1[v10[7]] = *&a2[v10[7]];
        goto LABEL_25;
      case 9u:
        v18 = sub_1DD0DD08C();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
LABEL_25:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v7 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v7);
    }
  }

  return a1;
}

uint64_t sub_1DCE35D4C(uint64_t a1)
{
  result = sub_1DD0DC76C();
  if (v2 <= 0x3F)
  {
    v8[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v8[5] = v8;
    v8[6] = &unk_1DD0FB9A8;
    v8[7] = &unk_1DD0FB9C0;
    result = sub_1DD0DB1EC();
    if (v3 <= 0x3F)
    {
      v8[8] = *(result - 8) + 64;
      v8[9] = MEMORY[0x1E69E5CE0] + 64;
      result = type metadata accessor for USOParse(319);
      if (v4 <= 0x3F)
      {
        v8[10] = *(result - 8) + 64;
        result = type metadata accessor for LinkParse(319);
        if (v5 <= 0x3F)
        {
          v8[11] = *(result - 8) + 64;
          result = type metadata accessor for NLRouterParse(319);
          if (v6 <= 0x3F)
          {
            v8[12] = *(result - 8) + 64;
            result = sub_1DD0DD08C();
            if (v7 <= 0x3F)
            {
              v8[13] = *(result - 8) + 64;
              swift_initEnumMetadataMultiPayload();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void *assignWithCopy for Parse.DirectInvocation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for Parse.PegasusResult(uint64_t a1)
{
  v2 = sub_1DD0DB1EC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for Parse.PegasusResult(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB1EC();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_1DCE36290(uint64_t a1)
{
  result = sub_1DD0DB1EC();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCE3631C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a1;
  v9 = OUTLINED_FUNCTION_1_88();
  v10 = sub_1DD0DDFBC();
  v12 = v11;

  sub_1DCC17D84(v10, v12, *a2);

  if (*(&v60 + 1))
  {
    v62 = v59;
    v63 = v60;
    v64 = v61;
    v13 = [v8 parameters];
    v14 = sub_1DD0DDE6C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v59 = *(&v61 + 1);
    sub_1DCC60634(v14, a4, a5, isUniquelyReferenced_nonNull_native);
    v16 = OUTLINED_FUNCTION_1_88();
    sub_1DD0DDFBC();

    v17 = sub_1DCC17FA8(&v62, &v59);
    OUTLINED_FUNCTION_0_80(v17, v18, v19, v20, v21, v22, v23, v24, v48, v49, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4]);
    sub_1DCE36784(&v62);
  }

  else
  {
    sub_1DCB16D50(&v59, &qword_1ECCA7E68, &unk_1DD0FBA80);
    v25 = OUTLINED_FUNCTION_1_88();
    sub_1DD0DDFBC();

    sub_1DCC18004();

    if (*(&v63 + 1))
    {
      sub_1DCB18FF0(&v62, v58);
      sub_1DCB17CA0(v58, &v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA2CA8, &qword_1DD0FBA90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD0E07C0;
      *(inited + 32) = a4;
      *(inited + 40) = a5;

      v27 = [v8 parameters];
      v28 = sub_1DD0DDE6C();

      *(inited + 48) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
      *(&v64 + 1) = sub_1DD0DDE9C();
      v29 = OUTLINED_FUNCTION_1_88();
      sub_1DD0DDFBC();

      v30 = sub_1DCC17FA8(&v62, &v59);
      OUTLINED_FUNCTION_0_80(v30, v31, v32, v33, v34, v35, v36, v37, v48, v49, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4]);
      sub_1DCE36784(&v62);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
    }

    else
    {
      sub_1DCB16D50(&v62, &qword_1ECCA27B8, qword_1DD10DE10);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v38 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v38, qword_1EDE57E00);

      v39 = v8;
      v40 = sub_1DD0DD8EC();
      v41 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v62 = v50;
        *v42 = 136315394;
        v43 = [v39 name];
        v44 = sub_1DD0DDFBC();
        v46 = v45;

        v47 = sub_1DCB10E9C(v44, v46, &v62);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_1DCB10E9C(a4, a5, &v62);
        _os_log_impl(&dword_1DCAFC000, v40, v41, "Cannot find parser matching name '%s' for eventId '%s'. Skipping.", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v50, -1, -1);
        MEMORY[0x1E12A8390](v42, -1, -1);
      }
    }
  }
}

uint64_t PatternFlowProvider.__allocating_init(outputPublisher:responseGenerator:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v7 = OUTLINED_FUNCTION_76_11(v6);
  v8(v7);
  OUTLINED_FUNCTION_84_8();
  v9 = OUTLINED_FUNCTION_33_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v3;
}

void PatternFlowProviding.makeResponseFlowWithListPrompt<A>(items:paginationParameters:strategy:)()
{
  OUTLINED_FUNCTION_50();
  v30 = v0;
  v28 = v1;
  v29 = v2;
  v4 = v3;
  v27 = v5;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 9);
  v17 = *(v13 + 16);
  v18 = *(v13 + 24);
  v19 = *(v13 + 25);
  v26 = *(v13 + 26);
  v23 = type metadata accessor for ListPromptFlow(0, v21, v22, v20);
  (*(v7 + 16))(v12, v27, v4);
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v26;
  v24 = *(v29 + 8);

  v24(v31, v30, v29);
  *&v31[0] = sub_1DCDB830C(v12, v28, &v32, v31);
  WitnessTable = swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()(v23, WitnessTable);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_49();
}

uint64_t PromptType.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DCE36A6C()
{
  result = sub_1DD0DE04C();
  qword_1ECCA7E70 = result;
  *algn_1ECCA7E78 = v1;
  return result;
}

uint64_t sub_1DCE36AC0()
{
  result = sub_1DD0DE04C();
  qword_1ECCA7E80 = result;
  *algn_1ECCA7E88 = v1;
  return result;
}

uint64_t sub_1DCE36B20()
{
  result = sub_1DD0DE04C();
  qword_1ECCA7E90 = result;
  *algn_1ECCA7E98 = v1;
  return result;
}

uint64_t sub_1DCE36B70()
{
  result = sub_1DD0DE04C();
  qword_1ECCA7EA0 = result;
  *algn_1ECCA7EA8 = v1;
  return result;
}

uint64_t sub_1DCE36BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA7ED8, &unk_1DD0FBCD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E4000;
  if (qword_1ECCA1328 != -1)
  {
    swift_once();
  }

  v1 = *algn_1ECCA7E78;
  *(inited + 32) = qword_1ECCA7E70;
  *(inited + 40) = v1;
  v2 = qword_1ECCA1330;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_1ECCA7E88;
  *(inited + 48) = qword_1ECCA7E80;
  *(inited + 56) = v3;
  v4 = qword_1ECCA1338;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_1ECCA7E98;
  *(inited + 64) = qword_1ECCA7E90;
  *(inited + 72) = v5;
  v6 = qword_1ECCA1340;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_1ECCA7EA8;
  *(inited + 80) = qword_1ECCA7EA0;
  *(inited + 88) = v7;
  v33 = MEMORY[0x1E69E7CC0];

  sub_1DCB38954();
  v8 = v33;
  v10 = *(inited + 32);
  v9 = *(inited + 40);
  v11 = *(v33 + 16);
  v12 = *(v33 + 24);
  v13 = v11 + 1;

  if (v11 >= v12 >> 1)
  {
    sub_1DCB38954();
    v8 = v33;
  }

  *(v8 + 16) = v13;
  v14 = v8 + 16 * v11;
  *(v14 + 32) = v10;
  *(v14 + 40) = v9;
  v16 = *(inited + 48);
  v15 = *(inited + 56);
  v17 = *(v8 + 24);
  v18 = v11 + 2;

  if (v13 >= v17 >> 1)
  {
    sub_1DCB38954();
    v8 = v33;
  }

  *(v8 + 16) = v18;
  v19 = v8 + 16 * v13;
  *(v19 + 32) = v16;
  *(v19 + 40) = v15;
  v21 = *(inited + 64);
  v20 = *(inited + 72);
  v23 = *(v8 + 16);
  v22 = *(v8 + 24);
  v24 = v23 + 1;

  if (v23 >= v22 >> 1)
  {
    sub_1DCB38954();
  }

  v25 = v33;
  *(v33 + 16) = v24;
  v26 = v33 + 16 * v23;
  *(v26 + 32) = v21;
  *(v26 + 40) = v20;
  v28 = *(inited + 80);
  v27 = *(inited + 88);
  v29 = *(v33 + 24);
  v30 = v23 + 2;

  if (v24 >= v29 >> 1)
  {
    sub_1DCB38954();
    v25 = v33;
  }

  *(v25 + 16) = v30;
  v31 = v25 + 16 * v24;
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;
  swift_setDeallocating();
  sub_1DCC65860();
  result = sub_1DCDA58AC(v25);
  qword_1ECCA7EB0 = result;
  return result;
}

SiriKitFlow::PromptType_optional __swiftcall PromptType.init(settingValue:)(Swift::String_optional settingValue)
{
  object = settingValue.value._object;
  countAndFlagsBits = settingValue.value._countAndFlagsBits;
  v4 = v1;
  if (settingValue.value._object)
  {
    v5 = sub_1DD0DE04C();
    v7 = v6;
    if (qword_1ECCA1348 != -1)
    {
      swift_once();
    }

    if (sub_1DCCE6C7C(v5, v7, qword_1ECCA7EB0))
    {

      *v4 = v5;
      v4[1] = v7;
      goto LABEL_18;
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v10 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v10, qword_1EDE57E00);

  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_151();
    v14 = OUTLINED_FUNCTION_83();
    v18 = v14;
    *v13 = 136315138;
    if (object)
    {
      v15 = countAndFlagsBits;
    }

    else
    {
      v15 = 0x3E4C494E3CLL;
    }

    if (!object)
    {
      object = 0xE500000000000000;
    }

    v16 = sub_1DCB10E9C(v15, object, &v18);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_1DCAFC000, v11, v12, "Provided value '%s' is not recognized. Unable to create PromptType", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  *v4 = 0;
  v4[1] = 0;
LABEL_18:
  result.value.rawValue._object = v9;
  result.value.rawValue._countAndFlagsBits = v8;
  return result;
}

uint64_t static PromptType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC();
  }
}

uint64_t PromptType.hashValue.getter()
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

void sub_1DCE37108(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OutputGenerationManifest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  swift_beginAccess();
  sub_1DCB17D04(v3 + 16, v13);
  sub_1DCB68600(a2, &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = a1;
  sub_1DCE40EF4(&v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)(v13, &unk_1DD0FBCC0, v11);
  type metadata accessor for AnyFlow();
  swift_allocObject();
  sub_1DD0DCF8C();
}

void PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v27 = v6;
  type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_24_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_0_1();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 8))(v28, v3, v1);
  OUTLINED_FUNCTION_92_7();
  v20();
  sub_1DCB68600(v5, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v8 + 80) + v22 + 8) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v1;
  (*(v14 + 32))(v24 + v21, v19, v3);
  v25 = v27;
  *(v24 + v22) = v27;
  sub_1DCE40EF4(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)(v28, &unk_1DD0FBAD8, v24);
  type metadata accessor for AnyFlow();
  swift_allocObject();
  v26 = v25;
  sub_1DCBD22F0();
  OUTLINED_FUNCTION_49();
}

__int128 *PatternFlowProviding.makeResponseFlowWithOpenEndedPrompt<A>(strategy:)()
{
  OUTLINED_FUNCTION_75_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PromptForValueFlowAsync(0, AssociatedTypeWitness, v6, v7);
  OUTLINED_FUNCTION_104_4(v8, v9);
  v10 = OUTLINED_FUNCTION_21_3();
  v4(v10);
  *&v13[0] = PromptForValueFlowAsync.__allocating_init<A>(strategy:outputPublisher:)(v2, v13, v1, v0);
  WitnessTable = swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()(v3, WitnessTable);
  OUTLINED_FUNCTION_33_4();

  return v13;
}

void PatternFlowProviding.makeResponseFlowWithYesNoPrompt<A>(strategy:)()
{
  OUTLINED_FUNCTION_75_9();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E50, &qword_1DD0FBAE0);
  OUTLINED_FUNCTION_104_4(v4, v5);
  v6 = OUTLINED_FUNCTION_21_3();
  v7 = v3(v6);
  PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)(v7, v2, v9, v1, *(v0 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EB8, &unk_1DD0FBAE8);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_33_4();
  sub_1DCC4A99C(v8);
}

void PatternFlowProviding.makeResponseFlowWithConfirmationPrompt<A>(strategy:itemToConfirm:)()
{
  OUTLINED_FUNCTION_50();
  v26 = v1;
  v27 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  v19 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = OUTLINED_FUNCTION_99_4();
  v22 = type metadata accessor for PromptForConfirmationFlowAsync(v20, AssociatedTypeWitness, v19, v21);
  (*(v14 + 16))(v18, v9, AssociatedTypeWitness);
  v23 = *(v5 + 8);
  swift_unknownObjectRetain();
  v23(v28, v26, v5);
  v28[0] = PromptForConfirmationFlowAsync.__allocating_init<A>(itemToConfirm:strategy:outputPublisher:)(v18, v11, v28, v7, v3);
  WitnessTable = swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()(v22, WitnessTable);
  OUTLINED_FUNCTION_33_4();

  OUTLINED_FUNCTION_49();
}

uint64_t *PatternFlowProviding.makeResponseFlowWithContinuationPrompt<A>(strategy:shouldContinueForResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for ContinuationPromptFlow(0, a4, a6, a4);
  OUTLINED_FUNCTION_106_3(v7, v8, v9, v10, v11, v12, v13, v14, v25[0], v25[1], v25[2], v25[3], v25[4], v26, v27, v28, v29);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_92_7();
  v16 = v15();
  v25[0] = OUTLINED_FUNCTION_108_4(v16, v17, v18, v19, v20, v21, v22, v23, *v25, v25[2], v25[3], v25[4], v26, v27, v28, v29);
  swift_unknownObjectRetain();
  Flow.eraseToAnyValueFlow()(v6, &off_1EECFC4B0);
  OUTLINED_FUNCTION_33_4();

  return v25;
}

void sub_1DCE379F4(int a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v24 = a2;
  v25 = a1;
  v23 = sub_1DD0DB04C();
  MEMORY[0x1EEE9AC00](v23, v3);
  v4 = type metadata accessor for OutputGenerationManifest(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE4EC10 != -1)
  {
    swift_once();
  }

  *(v7 + v4[6]) = 0;
  *(v7 + v4[7]) = 0;
  *(v7 + v4[9]) = 256;
  v8 = *(&xmmword_1EDE4EC18 + 1);
  v22[0] = xmmword_1EDE4EC18;
  v9 = v4[11];
  v22[2] = v4[10];
  *(v7 + v9) = 0;
  v10 = v4[12];
  v11 = type metadata accessor for NLContextUpdate(0);
  __swift_storeEnumTagSinglePayload(v7 + v10, 1, 1, v11);
  v12 = v4[14];
  v22[1] = v4[13];
  v13 = (v7 + v12);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v7 + v4[15]);
  *v14 = 0;
  v14[1] = 0;
  *(v7 + v4[16]) = 0;
  *(v7 + v4[18]) = 0;
  v15 = v7 + v4[19];
  *v15 = 0;
  *(v15 + 4) = 512;
  *(v7 + v4[20]) = 0;
  *(v7 + v4[21]) = 0;
  *(v7 + v4[22]) = 0;
  *(v7 + v4[23]) = 0;
  *(v7 + v4[24]) = 0;
  *(v7 + v4[25]) = 0;
  v16 = (v7 + v4[26]);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + v4[27]) = 0;
  *(v7 + v4[28]) = MEMORY[0x1E69E7CC0];
  v17 = v4[29];
  v18 = *MEMORY[0x1E69D0678];
  v19 = sub_1DD0DD15C();
  (*(*(v19 - 8) + 104))(v7 + v17, v18, v19);
  v20 = v4[30];
  v21 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v7 + v20, 1, 1, v21);
  *(v7 + v4[31]) = 2;
  *v7 = v22[0];
  v7[1] = v8;

  sub_1DCB67914();
}

void PatternFlowProviding.makeResponseFlowWithContinuationPrompt(shouldContinueForResponse:_:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for OutputGenerationManifest(0);
  OUTLINED_FUNCTION_112();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = (v8 - v7);
  if (qword_1EDE4EC10 != -1)
  {
    swift_once();
  }

  *(v9 + v4[6]) = 0;
  *(v9 + v4[7]) = 0;
  *(v9 + v4[9]) = 256;
  v10 = *(&xmmword_1EDE4EC18 + 1);
  v20 = xmmword_1EDE4EC18;
  *(v9 + v4[11]) = 0;
  type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_103_5();
  v11 = (v9 + v4[14]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v9 + v4[15]);
  *v12 = 0;
  v12[1] = 0;
  *(v9 + v4[16]) = 0;
  *(v9 + v4[18]) = 0;
  v13 = v9 + v4[19];
  *v13 = 0;
  *(v13 + 4) = 512;
  *(v9 + v4[20]) = 0;
  *(v9 + v4[21]) = 0;
  *(v9 + v4[22]) = 0;
  *(v9 + v4[23]) = 0;
  *(v9 + v4[24]) = 0;
  *(v9 + v4[25]) = 0;
  v14 = (v9 + v4[26]);
  *v14 = 0;
  v14[1] = 0;
  *(v9 + v4[27]) = 0;
  *(v9 + v4[28]) = MEMORY[0x1E69E7CC0];
  v15 = v4[29];
  v16 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_112();
  (*(v17 + 104))(v9 + v15, v16);
  v18 = v4[30];
  v19 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v9 + v18, 1, 1, v19);
  *(v9 + v4[31]) = 2;
  *v9 = v20;
  v9[1] = v10;

  sub_1DCB67914();
}

__int128 *PatternFlowProviding.makeResponseFlowWithSimpleDisambiguationPrompt<A>(items:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for SimpleDisambiguationPromptFlow(0, a4, a6, a4);
  v10 = *(a5 + 8);

  swift_unknownObjectRetain();
  v11 = OUTLINED_FUNCTION_86();
  v10(v11);
  *&v14[0] = sub_1DCF81618(a1, a2, v14);
  WitnessTable = swift_getWitnessTable();
  Flow.eraseToAnyValueFlow()(v9, WitnessTable);
  OUTLINED_FUNCTION_33_4();

  return v14;
}

void sub_1DCE38480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1DCBCFA04;

  PatternFlowProviding.makeDetailedDisambiguationClarificationFlow<A>(provider:)();
}

void PatternFlowProviding.makeDetailedDisambiguationClarificationFlow<A>(provider:)()
{
  OUTLINED_FUNCTION_42();
  v0[38] = v1;
  v0[39] = v2;
  v0[36] = v3;
  v0[37] = v4;
  v0[35] = v5;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCE385F8()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_21();
  v2 = OUTLINED_FUNCTION_138();
  v0[43] = v3(v2);
  v4 = OUTLINED_FUNCTION_138();
  v5(v4);
  v6 = OUTLINED_FUNCTION_66_9();
  v0[44] = v7(v6);
  objc_opt_self();
  OUTLINED_FUNCTION_191();
  v0[45] = sub_1DD0DDF8C();

  OUTLINED_FUNCTION_97_5();
  v0[2] = v8;
  v0[7] = v0 + 30;
  OUTLINED_FUNCTION_67_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EC0, &unk_1DD0FBB00);
  OUTLINED_FUNCTION_3_90(v9);
  OUTLINED_FUNCTION_96_7(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_105_6(v10, sel_load_patternId_completion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DCE3875C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 368) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCE38864()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[45];
  v0[47] = v0[30];

  sub_1DCE40424();
}

uint64_t sub_1DCE38B10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 392) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE38C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_102();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 168);
  if ((~v31 & 0xF000000000000007) != 0)
  {
    v52 = *(v28 + 152);
    v53 = *(v28 + 160);
    v54 = [*(v28 + 376) settings];
    sub_1DD0DDE6C();

    OUTLINED_FUNCTION_43_19();
    OUTLINED_FUNCTION_77_9();

    if (*(v28 + 200))
    {
      v55 = swift_dynamicCast();
      v56 = *(v28 + 272);
      if (!v55)
      {
        v56 = 0;
      }
    }

    else
    {
      sub_1DCB16DB0(v28 + 176, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v56 = 0;
      LOBYTE(v55) = 0;
    }

    if (v53)
    {
      if ((v55 & 1) == 0)
      {
        swift_getAssociatedTypeWitness();
        v56 = sub_1DD0DE3BC();
      }
    }

    else
    {
      v56 = v52;
    }

    v72 = v56;
    v73 = v53;
    v57 = [*(v28 + 376) settings];
    sub_1DD0DDE6C();

    OUTLINED_FUNCTION_23_22();
    sub_1DCB90D40();

    if (*(v28 + 232))
    {
      v58 = swift_dynamicCast();
      if (v58)
      {
        v59 = *(v28 + 264);
      }

      else
      {
        v59 = 0;
      }

      v60 = v58 ^ 1;
    }

    else
    {
      sub_1DCB16DB0(v28 + 208, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v59 = 0;
      v60 = 1;
    }

    v61 = *(v28 + 344);
    v62 = OUTLINED_FUNCTION_113_1();
    v65 = type metadata accessor for ListWindowedContentSource(0, v62, v63, v64);
    v66 = sub_1DD0C35E8(v61, v72, v59, v60, 1);
    v67 = OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_18_39();
    v68 = OUTLINED_FUNCTION_99_4();
    type metadata accessor for WindowingOrchestrationFlow(v68, v67, v65, v69);
    a17 = v31;
    *(v28 + 248) = v66;
    *(v28 + 256) = sub_1DD0C7E80(&a17, v28 + 248);
    v70 = OUTLINED_FUNCTION_191();
    sub_1DCBA0D4C(v70, v71, v73, v31);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v32 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
  v33 = sub_1DD0DD8EC();
  v34 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v34))
  {
    v35 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v35);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_62();
  }

  v75 = *(v28 + 312);

  v76 = v75 + 48;
  OUTLINED_FUNCTION_24_0();
  v74 = v41 + *v41;
  v42 = swift_task_alloc();
  *(v28 + 400) = v42;
  *v42 = v28;
  v42[1] = sub_1DCE390C8;
  OUTLINED_FUNCTION_55_2(*(v28 + 296));
  OUTLINED_FUNCTION_141();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, v74, v76, a17, a18, a19, a20);
}

uint64_t sub_1DCE390C8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 408) = v0;

  if (!v0)
  {
    *(v4 + 416) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE391CC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE39248()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 432) = v0;

  if (!v0)
  {
    *(v4 + 440) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3934C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE393C8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE39440()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE394BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE39538()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_22();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCE395B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1DCBCFA04;

  PatternFlowProviding.makeResultSetFlow<A>(provider:)();
}

uint64_t sub_1DCE3971C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_21();
  v2 = OUTLINED_FUNCTION_138();
  v0[56] = v3(v2);
  v4 = OUTLINED_FUNCTION_138();
  v5(v4);
  v6 = OUTLINED_FUNCTION_66_9();
  v0[57] = v7(v6);
  objc_opt_self();
  OUTLINED_FUNCTION_191();
  v0[58] = sub_1DD0DDF8C();

  OUTLINED_FUNCTION_97_5();
  v0[2] = v8;
  v0[7] = v0 + 42;
  OUTLINED_FUNCTION_67_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EC0, &unk_1DD0FBB00);
  OUTLINED_FUNCTION_3_90(v9);
  OUTLINED_FUNCTION_96_7(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_105_6(v10, sel_load_patternId_completion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DCE39880()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 472) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE3A760()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 512) = v5;
  *(v3 + 520) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCE3B0C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 544) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE3B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_102();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  if ((~*(v28 + 232) & 0xF000000000000007) != 0)
  {
    v71 = *(v28 + 232);
    v74 = *(v28 + 208);
    v51 = *(v28 + 216);
    v52 = *(v28 + 224);
    v53 = [*(v28 + 480) settings];
    sub_1DD0DDE6C();

    OUTLINED_FUNCTION_43_19();
    OUTLINED_FUNCTION_77_9();

    if (*(v28 + 264))
    {
      v54 = *(v28 + 496);
      if (swift_dynamicCast())
      {
        v55 = *(v28 + 376);
      }

      else
      {
        v55 = v54;
      }
    }

    else
    {
      sub_1DCB16DB0(v28 + 240, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v55 = *(v28 + 496);
    }

    v56 = [*(v28 + 480) settings];
    sub_1DD0DDE6C();

    OUTLINED_FUNCTION_23_22();
    sub_1DCB90D40();

    if (*(v28 + 296))
    {
      v57 = swift_dynamicCast();
      if (v57)
      {
        v60 = *(v28 + 368);
      }

      else
      {
        v60 = 0;
      }

      v61 = v57 ^ 1;
    }

    else
    {
      sub_1DCB16DB0(v28 + 272, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v60 = 0;
      v61 = 1;
    }

    v69 = v52;
    if (v52)
    {
      v62 = v55;
    }

    else
    {
      v62 = v51;
    }

    v63 = *(v28 + 448);
    v64 = type metadata accessor for ListWindowedContentSource(0, *(v28 + 488), v58, v59);
    v65 = sub_1DD0C35E8(v63, v62, v60, v61, v74);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_18_39();
    v67 = OUTLINED_FUNCTION_99_4();
    type metadata accessor for WindowingOrchestrationFlow(v67, AssociatedTypeWitness, v64, v68);
    a17 = v71;
    *(v28 + 352) = v65;
    *(v28 + 360) = sub_1DD0C7E80(&a17, v28 + 352);
    sub_1DCBA0D4C(v74, v51, v69, v71);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v31 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
  v32 = sub_1DD0DD8EC();
  v33 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v33))
  {
    v34 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v34);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v35, v36, v37, v38, v39, 2u);
    OUTLINED_FUNCTION_62();
  }

  v72 = *(v28 + 416);

  v73 = v72 + 72;
  OUTLINED_FUNCTION_24_0();
  v70 = v40 + *v40;
  v41 = swift_task_alloc();
  *(v28 + 552) = v41;
  *v41 = v28;
  v41[1] = sub_1DCE3B644;
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_141();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, v70, v73, a17, a18, a19, a20);
}

uint64_t sub_1DCE3B644()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 560) = v0;

  if (!v0)
  {
    *(v4 + 568) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3B748()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3B7C4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 584) = v0;

  if (!v0)
  {
    *(v4 + 592) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3B8C8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3B944()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 608) = v0;

  if (!v0)
  {
    *(v4 + 616) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3BA48()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3BAC4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 632) = v0;

  if (!v0)
  {
    *(v4 + 640) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3BBC8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3BC44()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 656) = v0;

  if (!v0)
  {
    *(v4 + 664) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3BD48()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3BDC4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 680) = v0;

  if (!v0)
  {
    *(v4 + 688) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3BEC8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3BF44()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 704) = v0;

  if (!v0)
  {
    *(v4 + 712) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3C048()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 456);

  v2 = OUTLINED_FUNCTION_19_3();

  return v3(v2);
}

uint64_t sub_1DCE3C0B4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3C12C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 456);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE3C198()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3C214()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3C290()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3C30C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3C388()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3C404()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3C480()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_41();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3C4FC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 480);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v4 = *(v0 + 424);

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1DCE3C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1DCBCFA04;

  PatternFlowProviding.makeDetailedResultFlow<A>(provider:)();
}

void PatternFlowProviding.makeDetailedResultFlow<A>(provider:)()
{
  OUTLINED_FUNCTION_42();
  v0[26] = v1;
  v0[27] = v2;
  v0[24] = v3;
  v0[25] = v4;
  v0[23] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[28] = AssociatedTypeWitness;
  v0[29] = sub_1DD0DE97C();
  OUTLINED_FUNCTION_24_0();
  v0[30] = v7;
  v0[31] = OUTLINED_FUNCTION_38();
  v0[32] = *(AssociatedTypeWitness - 8);
  v0[33] = OUTLINED_FUNCTION_38();
  sub_1DD0DCC3C();
}

uint64_t sub_1DCE3C7E0()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_51_21();
  v1 = OUTLINED_FUNCTION_49_3();
  v2(v1);
  OUTLINED_FUNCTION_64_2();
  v3 = OUTLINED_FUNCTION_49_3();
  v0[37] = v4(v3);
  v5 = OUTLINED_FUNCTION_49_3();
  v0[38] = v6(v5);
  v0[39] = v7;
  objc_opt_self();
  OUTLINED_FUNCTION_15_31();
  v0[40] = sub_1DD0DDF8C();

  OUTLINED_FUNCTION_97_5();
  v0[2] = v8;
  v0[7] = v0 + 22;
  OUTLINED_FUNCTION_67_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EC0, &unk_1DD0FBB00);
  OUTLINED_FUNCTION_3_90(v9);
  OUTLINED_FUNCTION_96_7(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_115_3(v10, sel_load_patternId_completion_);
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_1DCE3C940()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 328) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCE3CA48()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[40];
  v0[42] = v0[22];

  sub_1DCE40424();
}

uint64_t sub_1DCE3CED4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE3CFD4()
{
  v28 = v0;
  v1 = v0[31];
  v2 = v0[28];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v18 = v0[42];
    v20 = v0[38];
    v19 = v0[39];
    (*(v0[32] + 32))(v0[33], v1, v2);
    v21 = [v18 settings];
    v22 = sub_1DD0DDE6C();

    type metadata accessor for LexicalWindowedContentSource();
    swift_allocObject();
    v23 = sub_1DD0C4690(v20, v19, v22);
    OUTLINED_FUNCTION_191();
    swift_getAssociatedConformanceWitness();
    static PromptFlowProviderType.continuation<A>(_:)(v2, &v27);
    v24 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EE0, &qword_1DD0E28C0);
    v25 = swift_allocObject();
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0u;
    *(v25 + 80) = 0u;
    *(v25 + 96) = 0u;
    *(v25 + 112) = 6;
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    type metadata accessor for AnyFlow();
    swift_allocObject();
    sub_1DD0DCF8C();
  }

  v4 = v0[29];
  v3 = v0[30];

  (*(v3 + 8))(v1, v4);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v5 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v7))
  {
    v8 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v8);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_62();
  }

  OUTLINED_FUNCTION_8();
  v26 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[45] = v15;
  *v15 = v0;
  v15[1] = sub_1DCE3D3A4;
  v16 = OUTLINED_FUNCTION_55_2(v0[25]);

  return v26(v16);
}

uint64_t sub_1DCE3D3A4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3D4A8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 296);

  v2 = OUTLINED_FUNCTION_21_29();
  v3(v2);

  v4 = OUTLINED_FUNCTION_19_3();

  return v5(v4);
}

uint64_t sub_1DCE3D53C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 392) = v0;

  if (!v0)
  {
    *(v4 + 400) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3D640()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 296);

  v2 = OUTLINED_FUNCTION_21_29();
  v3(v2);

  v4 = OUTLINED_FUNCTION_19_3();

  return v5(v4);
}

uint64_t sub_1DCE3D6D4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 416) = v0;

  if (!v0)
  {
    *(v4 + 424) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3D7D8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 296);

  v2 = OUTLINED_FUNCTION_21_29();
  v3(v2);

  v4 = OUTLINED_FUNCTION_19_3();

  return v5(v4);
}

uint64_t sub_1DCE3D86C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  swift_willThrow();

  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3D8F0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_68_14();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3D978()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_68_14();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3DA00()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_68_14();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3DA88()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_68_14();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCE3DB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1DCBCFA04;

  PatternFlowProviding.makeTableSetFlow<A>(provider:)();
}

uint64_t sub_1DCE3DC78()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_51_21();
  v1 = OUTLINED_FUNCTION_49_3();
  v2(v1);
  OUTLINED_FUNCTION_64_2();
  v3 = OUTLINED_FUNCTION_49_3();
  v0[56] = v4(v3);
  v5 = OUTLINED_FUNCTION_49_3();
  v0[57] = v6(v5);
  objc_opt_self();
  OUTLINED_FUNCTION_15_31();
  v0[58] = sub_1DD0DDF8C();

  OUTLINED_FUNCTION_97_5();
  v0[2] = v7;
  v0[7] = v0 + 42;
  OUTLINED_FUNCTION_67_13();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7EC0, &unk_1DD0FBB00);
  OUTLINED_FUNCTION_3_90(v8);
  OUTLINED_FUNCTION_96_7(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_115_3(v9, sel_load_patternId_completion_);
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DEC8](v10);
}

uint64_t sub_1DCE3DDD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 472) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE3E8F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 512) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE3EA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_102();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 232);
  if ((~v31 & 0xF000000000000007) != 0)
  {
    v73 = *(v28 + 208);
    v52 = *(v28 + 216);
    v53 = *(v28 + 224);
    v54 = [*(v28 + 480) settings];
    sub_1DD0DDE6C();

    OUTLINED_FUNCTION_43_19();
    OUTLINED_FUNCTION_77_9();

    if (*(v28 + 264))
    {
      v55 = swift_dynamicCast();
    }

    else
    {
      sub_1DCB16DB0(v28 + 240, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v55 = 0;
    }

    v70 = v52;
    if ((v53 & 1) != 0 && (v55 & 1) == 0)
    {
      sub_1DD0DE3BC();
    }

    v56 = [*(v28 + 480) settings];
    sub_1DD0DDE6C();

    OUTLINED_FUNCTION_23_22();
    sub_1DCB90D40();

    if (*(v28 + 296))
    {
      v57 = swift_dynamicCast();
      if (v57)
      {
        v60 = *(v28 + 368);
      }

      else
      {
        v60 = 0;
      }

      v61 = v57 ^ 1;
    }

    else
    {
      sub_1DCB16DB0(v28 + 272, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v60 = 0;
      v61 = 1;
    }

    v62 = type metadata accessor for ListWindowedContentSource(0, *(v28 + 488), v58, v59);
    v63 = OUTLINED_FUNCTION_21_3();
    v65 = sub_1DD0C35E8(v63, v64, v60, v61, v73);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_18_39();
    v67 = OUTLINED_FUNCTION_99_4();
    type metadata accessor for WindowingOrchestrationFlow(v67, AssociatedTypeWitness, v62, v68);
    a17 = v31;
    *(v28 + 352) = v65;
    *(v28 + 360) = sub_1DD0C7E80(&a17, v28 + 352);
    sub_1DCBA0D4C(v73, v70, v53, v31);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v32 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
  v33 = sub_1DD0DD8EC();
  v34 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v34))
  {
    v35 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v35);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_62();
  }

  v71 = *(v28 + 416);

  v72 = v71 + 56;
  OUTLINED_FUNCTION_24_0();
  v69 = v41 + *v41;
  v42 = swift_task_alloc();
  *(v28 + 520) = v42;
  *v42 = v28;
  v42[1] = sub_1DCE3EE84;
  OUTLINED_FUNCTION_1_89();
  OUTLINED_FUNCTION_141();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, v69, v72, a17, a18, a19, a20);
}

uint64_t sub_1DCE3EE84()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 528) = v0;

  if (!v0)
  {
    *(v4 + 536) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3EF88()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3F004()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 552) = v0;

  if (!v0)
  {
    *(v4 + 560) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3F108()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3F184()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 576) = v0;

  if (!v0)
  {
    *(v4 + 584) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3F288()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3F304()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 600) = v0;

  if (!v0)
  {
    *(v4 + 608) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3F408()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3F484()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 624) = v0;

  if (!v0)
  {
    *(v4 + 632) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3F588()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3F604()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 648) = v0;

  if (!v0)
  {
    *(v4 + 656) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCE3F708()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  v3 = OUTLINED_FUNCTION_19_3();

  return v4(v3);
}

uint64_t sub_1DCE3F784()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  swift_willThrow();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3F7FC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3F878()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3F8F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3F970()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3F9EC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3FA68()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36_26();

  v1 = OUTLINED_FUNCTION_4_83();
  v2(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE3FAE4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 480);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCE3FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE3FBAC, 0, 0);
}

uint64_t sub_1DCE3FBAC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[11];
  swift_beginAccess();
  sub_1DCB17D04(v1 + 56, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[14] = v2;
  *v2 = v3;
  v2[1] = sub_1DCE3FCE4;
  OUTLINED_FUNCTION_90_7();

  return v4();
}

uint64_t sub_1DCE3FCE4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE3FDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v13 = v12[12];
  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
  v15 = v13;
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6EC();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v12[15];
  if (v18)
  {
    v20 = v12[12];
    v21 = v12[10];
    v22 = OUTLINED_FUNCTION_151();
    a9 = OUTLINED_FUNCTION_83();
    *v22 = 136315138;
    v23 = [v20 patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_64_2();

    v24 = OUTLINED_FUNCTION_15_31();
    v27 = sub_1DCB10E9C(v24, v25, v26);

    *(v22 + 4) = v27;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v28, v29, "Could not build output for pattern %s");
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v21 = v12[10];
  }

  v30 = type metadata accessor for EmptyOutput();
  v31 = swift_allocObject();
  v21[3] = v30;
  v21[4] = &protocol witness table for EmptyOutput;

  *v21 = v31;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_1DCE3FF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE3FFA4, 0, 0);
}

uint64_t sub_1DCE3FFA4()
{
  OUTLINED_FUNCTION_33();
  (*(v0[12] + 16))(v0[11]);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[13] = v1;
  *v1 = v2;
  v1[1] = sub_1DCE400D8;
  OUTLINED_FUNCTION_90_7();

  return v3();
}

uint64_t sub_1DCE400D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE401D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 2);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v13 = v12[9];
  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
  v15 = v13;
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6EC();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v12[14];
  if (v18)
  {
    v20 = v12[9];
    v21 = v12[7];
    v22 = OUTLINED_FUNCTION_151();
    a9 = OUTLINED_FUNCTION_83();
    *v22 = 136315138;
    v23 = [v20 patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_64_2();

    v24 = OUTLINED_FUNCTION_15_31();
    v27 = sub_1DCB10E9C(v24, v25, v26);

    *(v22 + 4) = v27;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v28, v29, "Could not build output for pattern %s");
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v21 = v12[7];
  }

  v30 = type metadata accessor for EmptyOutput();
  v31 = swift_allocObject();
  v21[3] = v30;
  v21[4] = &protocol witness table for EmptyOutput;

  *v21 = v31;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t *PatternFlowProviding.makeResponseFlowWithContinuationPrompt<A>(shouldContinueForResponse:strategy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = type metadata accessor for ContinuationPromptFlow(0, a6, a8, a4);
  OUTLINED_FUNCTION_106_3(v9, v10, v11, v12, v13, v14, v15, v16, v27[0], v27[1], v27[2], v27[3], v27[4], v28, v29, v30, v31);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_92_7();
  v18 = v17();
  v27[0] = OUTLINED_FUNCTION_108_4(v18, v19, v20, v21, v22, v23, v24, v25, *v27, v27[2], v27[3], v27[4], v28, v29, v30, v31);
  swift_unknownObjectRetain();
  Flow.eraseToAnyValueFlow()(v8, &off_1EECFC4B0);
  OUTLINED_FUNCTION_33_4();

  return v27;
}

uint64_t sub_1DCE40AA4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1DCEA2438();
  }

  else
  {
    v7 = a2;

    return sub_1DCEA243C();
  }
}

uint64_t PatternFlowProvider.init(outputPublisher:responseGenerator:)(uint64_t a1, uint64_t a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v6 = OUTLINED_FUNCTION_76_11(v5);
  v7(v6);
  OUTLINED_FUNCTION_84_8();
  v8 = OUTLINED_FUNCTION_33_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v2;
}

uint64_t PatternFlowProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t PatternFlowProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1DCE40D9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCF08C;

  PatternFlowProviding.makeTableSetFlow<A>(provider:)();
}

uint64_t sub_1DCE40E60(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  sub_1DCAFF9E8(a1, a3 + 16);
  sub_1DCAFF9E8(&v11, a3 + 56);
  return a3;
}

uint64_t sub_1DCE40EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutputGenerationManifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCE40F58()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for OutputGenerationManifest(0) - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v0 + v10);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DCB4AE1C;

  return sub_1DCE3FF7C(v4, v0 + v8, v13, v0 + v12, v6, v5);
}

uint64_t sub_1DCE410B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AD3C;

  return sub_1DCE3FB88(a1, v8, a3, a4);
}

uint64_t sub_1DCE41168(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for PatternFlowProvider();
  v11 = &protocol witness table for PatternFlowProvider;
  *&v9 = a3;
  *(a4 + 16) = a2 & 1;
  *(a4 + 24) = a1;
  sub_1DCAFF9E8(&v9, a4 + 32);
  *(a4 + 72) = 0;
  return a4;
}

unint64_t sub_1DCE411D8()
{
  result = qword_1ECCA7EC8;
  if (!qword_1ECCA7EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA7EC8);
  }

  return result;
}

unint64_t sub_1DCE41220()
{
  result = qword_1ECCA7ED0;
  if (!qword_1ECCA7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7ED0);
  }

  return result;
}

uint64_t dispatch thunk of PatternFlowProviding.makeDetailedDisambiguationClarificationFlow<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_30_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_23_3(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_30_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_23_3(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of PatternFlowProviding.makeDetailedResultFlow<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_30_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_23_3(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t dispatch thunk of PatternFlowProviding.makeTableSetFlow<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_25_1();
  v27 = v14 + *v14;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_30_1(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_23_3(v16);
  OUTLINED_FUNCTION_48();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1DCE41734()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_32_1();
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1DCE41870()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *(type metadata accessor for OutputGenerationManifest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1DCB4AD3C;

  return sub_1DCE410B0(v3, (v0 + 16), v6, v0 + v5);
}

void OUTLINED_FUNCTION_68_14()
{
  v2 = *(v0 + 336);
}

id OUTLINED_FUNCTION_105_6(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t *OUTLINED_FUNCTION_106_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  a17 = v19;
  a12 = v18;
  a13 = v17;

  return __swift_allocate_boxed_opaque_existential_1Tm(&a9);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_117_2()
{
}

uint64_t sub_1DCE41A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE41A3C, 0, 0);
}

uint64_t sub_1DCE41A3C()
{
  v1 = *(v0[3] + 16);
  v0[6] = v1;
  if (v1)
  {
    v2 = qword_1EDE4F900;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DCAFC000, v5, v6, "Using PatternExecutionResult to build Output", v7, 2u);
      MEMORY[0x1E12A8390](v7, -1, -1);
    }

    v8 = v0[5];

    v9 = v8[5];
    v10 = v8[6];
    __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
    v17 = (*(v10 + 8) + **(v10 + 8));
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_1DCE41C90;
    v12 = v0[4];
    v13 = v0[2];

    return v17(v13, v3, v12, v9, v10);
  }

  else
  {
    v15 = v0[2];
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
    OUTLINED_FUNCTION_29();

    return v16();
  }
}

uint64_t sub_1DCE41C90()
{
  OUTLINED_FUNCTION_42();
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DCE41DFC;
  }

  else
  {
    v2 = sub_1DCE41DA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DCE41DA0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE41DFC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE41E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCE41F30;

  return sub_1DCE41A18(a1, a2, a3);
}

uint64_t sub_1DCE41F30()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t Perform.__allocating_init(interruptionPolicy:operateWithSideEffect:operation:)()
{
  OUTLINED_FUNCTION_19_36();
  v0 = OUTLINED_FUNCTION_21_30();
  Perform.init(interruptionPolicy:operateWithSideEffect:operation:)();
  return v0;
}

uint64_t sub_1DCE4217C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_2();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCE42248(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_2();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t Perform.init(interruptionPolicy:operateWithSideEffect:operation:)()
{
  OUTLINED_FUNCTION_19_36();
  v4 = v3;
  v6 = *v5;
  v7 = *(*v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  *(v1 + *(*v1 + 120)) = 0;
  *(v1 + 16) = v6;
  *(v1 + 17) = v4;
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return v1;
}

uint64_t Perform.__allocating_init<A>(interruptionPolicy:operation:)()
{
  OUTLINED_FUNCTION_19_36();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_21_30();
  Perform.init<A>(interruptionPolicy:operation:)(v2, v4, v1, v0);
  return v5;
}

uint64_t Perform.init<A>(interruptionPolicy:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = *MEMORY[0x1EEE9AC00](a1, a2);
  v13 = *(v12 + 112);
  v14 = *(v12 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v15 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v5 + v13, 1, 1, v15);
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + 16) = v11;
  *(v5 + 17) = (*(a4 + 16))(a3, a4) & 1;
  v16 = *(v9 + 32);
  v16(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v14;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  v16(&v18[v17], &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v5 + 24) = &unk_1DD0FBD50;
  *(v5 + 32) = v18;
  return v5;
}

uint64_t sub_1DCE42660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 24) + **(a6 + 24));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AD3C;

  return v13(a1, a2, a5, a6);
}

uint64_t sub_1DCE42798(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v7 - 8) + 80) + 40) & ~*(*(v7 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DCB4AE1C;

  return sub_1DCE42660(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t Perform.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v4 = sub_1DD0DF22C();
  v46 = type metadata accessor for Conclude(0, v4, v5, v6);
  OUTLINED_FUNCTION_0_1();
  v44 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v43 = &v43 - v10;
  v11 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v43 - v16;
  OUTLINED_FUNCTION_0_1();
  v19 = v18;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v43 - v26;
  sub_1DCE4217C(v17);
  if (OUTLINED_FUNCTION_17_34() == 1)
  {
    (*(v13 + 8))(v17, v11);
    a1[3] = type metadata accessor for Abort(0);
    a1[4] = &protocol witness table for Abort;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for Perform(0, v3, v29, v30);
    OUTLINED_FUNCTION_1_90();
    swift_getWitnessTable();
    return ActingFlow.abort(reason:)(0xD000000000000020, 0x80000001DD11CC90, boxed_opaque_existential_1Tm);
  }

  (*(v19 + 32))(v27, v17, v4);
  v32 = a1;
  if (*(v1 + *(*v1 + 120)) != 1)
  {
    goto LABEL_9;
  }

  (*(v19 + 16))(v24, v27, v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v19 + 8))(v24, v4);
LABEL_9:
    v49 = v46;
    v50 = &protocol witness table for Conclude<A>;
    v40 = __swift_allocate_boxed_opaque_existential_1Tm(&v48);
    type metadata accessor for Perform(0, v3, v41, v42);
    OUTLINED_FUNCTION_1_90();
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v27, v40);
    goto LABEL_10;
  }

  v33 = *v24;
  *&v48 = v33;
  v34 = v33;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  type metadata accessor for Perform(0, v3, v35, v36);
  OUTLINED_FUNCTION_1_90();
  swift_getWitnessTable();
  v37 = v43;
  ActingFlow.conclude(with:)(v27, v43);
  v38 = v46;
  v49 = v46;
  v50 = &protocol witness table for Conclude<A>;
  v39 = __swift_allocate_boxed_opaque_existential_1Tm(&v48);
  sub_1DCD278D0(v38, v39);
  (*(v44 + 8))(v37, v38);

LABEL_10:
  (*(v19 + 8))(v27, v4);
  return sub_1DCAFF9E8(&v48, v32);
}

char *Perform.deinit()
{

  v1 = *(*v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t Perform.__deallocating_deinit()
{
  Perform.deinit();

  return swift_deallocClassInstance();
}

uint64_t Perform.execute(with:)()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v1[14] = sub_1DD0DF22C();
  v1[15] = sub_1DD0DE97C();
  OUTLINED_FUNCTION_24_0();
  v1[16] = v3;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE42F88, 0, 0);
}

uint64_t sub_1DCE42F88()
{
  OUTLINED_FUNCTION_33();
  v1 = *(*(v0 + 104) + 24);
  sub_1DCB17CA0(*(v0 + 96) + 40, v0 + 56);
  v2 = type metadata accessor for NoUserInteractionAceServiceInvoker();
  v3 = swift_allocObject();
  sub_1DCAFF9E8((v0 + 56), v3 + 16);
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_1F5867AB8;
  *(v0 + 16) = v3;
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1DCE430CC;
  v5 = *(v0 + 152);

  return v7(v5, v0 + 16);
}

uint64_t sub_1DCE430CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 168) = v0;

  sub_1DCDB4910((v3 + 16));
  if (v0)
  {
    v6 = sub_1DCE43284;
  }

  else
  {
    v6 = sub_1DCE431D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCE431D8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1DCE42248(v1);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE43284()
{
  sub_1DCE4217C(v0[17]);
  if (OUTLINED_FUNCTION_17_34() == 1)
  {
    v1 = v0[21];
    *v0[18] = v1;
    swift_storeEnumTagMultiPayload();
    v2 = OUTLINED_FUNCTION_17_34();
    v3 = v1;
    if (v2 != 1)
    {
      (*(v0[16] + 8))(v0[17], v0[15]);
    }
  }

  else
  {
    (*(*(v0[14] - 8) + 32))(v0[18], v0[17]);
  }

  v4 = v0[21];
  v5 = v0[18];
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v0[14]);
  sub_1DCE42248(v5);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t Perform.cancel(error:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DF22C();
  v3 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - v12;
  sub_1DCE4217C(&v21 - v12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v2);
  result = (*(v5 + 8))(v13, v3);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Perform was canceled before its operation completes.", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v2);
    v20 = a1;
    return sub_1DCE42248(v10);
  }

  return result;
}

uint64_t sub_1DCE4366C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return Perform.execute(with:)();
}

BOOL sub_1DCE43728()
{
  v0 = objc_opt_self();
  if (OUTLINED_FUNCTION_22_30(v0))
  {
    return 1;
  }

  v1 = objc_opt_self();
  if (OUTLINED_FUNCTION_22_30(v1))
  {
    return 1;
  }

  v2 = objc_opt_self();
  if (OUTLINED_FUNCTION_22_30(v2))
  {
    return 1;
  }

  v4 = objc_opt_self();
  return OUTLINED_FUNCTION_22_30(v4) != 0;
}

uint64_t sub_1DCE43798()
{
  OUTLINED_FUNCTION_16_42();
  v0 = OUTLINED_FUNCTION_7_1();
  return v1(v0) & 1;
}

uint64_t sub_1DCE437D8()
{
  result = sub_1DCE43728();
  if (result)
  {
    sub_1DCE44BDC();
    swift_allocError();
    *v1 = 0xD000000000000083;
    v1[1] = 0x80000001DD11F9E0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DCE4384C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE43868()
{
  OUTLINED_FUNCTION_33();
  sub_1DCE437D8();
  OUTLINED_FUNCTION_41_5(*(v0 + 32));
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_59(v1);

  return v3(v2);
}

uint64_t sub_1DCE439A8(uint64_t a1, char a2)
{
  sub_1DCE437D8();
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 48))(a1, a2 & 1, v5, v6);
}

void sub_1DCE43B90(uint64_t a1, char a2)
{
  v4 = sub_1DCB08B14(a1);
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E12A72C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    sub_1DCE439A8(v6, a2 & 1);
  }
}

uint64_t sub_1DCE43C40(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE43C5C()
{
  OUTLINED_FUNCTION_33();
  sub_1DCE437D8();
  OUTLINED_FUNCTION_41_5(*(v0 + 32));
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_59(v1);

  return v3(v2);
}

uint64_t sub_1DCE43D9C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_69();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1DCE43E88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 64) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE43EA8()
{
  OUTLINED_FUNCTION_33();
  sub_1DCE437D8();
  OUTLINED_FUNCTION_41_5(*(v1 + 48));
  OUTLINED_FUNCTION_24_0();
  v10 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1DCE44008;
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = *(v1 + 16);

  return (v10)(v8, v7, v5, v4, v6, v0, 0);
}

uint64_t sub_1DCE44008()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_69();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}