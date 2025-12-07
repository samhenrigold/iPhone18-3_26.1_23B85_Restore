uint64_t closure #1 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v46 = a1;
  v45 = a2;
  v44 = a3;
  outlined init with copy of HealthDataQuery(a1 + 48, v41);
  v29 = v42;
  v30 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v31 = HyperParams.birthDateRequired.getter();
  v4 = HyperParams.useCachedDayStreamProcessorConfig.getter();
  v32 = (*(v30 + 40))(v31 & 1, v4 & 1, v29);
  v33 = v5;
  v34 = v6;
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v40 = v32;
  v39 = v5;
  v38 = v6;
  __swift_destroy_boxed_opaque_existential_1(v41);
  outlined init with copy of HealthDataQuery(a1 + 48, v35);
  v24 = v36;
  v25 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v7._countAndFlagsBits = HyperParams.heartRateFwEnd10PctModelName.getter();
  v8 = PFLTask.getValidModelPath(modelFileSuffix:)(v7);
  if (v9)
  {

    __swift_destroy_boxed_opaque_existential_1(v35);
    return MEMORY[0x277D82BD8](v32);
  }

  else
  {

    v10._countAndFlagsBits = HyperParams.heartRatePeriod10PctModelName.getter();
    v11 = PFLTask.getValidModelPath(modelFileSuffix:)(v10);
    if (v12)
    {

      __swift_destroy_boxed_opaque_existential_1(v35);
      return MEMORY[0x277D82BD8](v32);
    }

    else
    {

      v13._countAndFlagsBits = HyperParams.wTmpFwEndLstmModelName.getter();
      v14 = PFLTask.getValidModelPath(modelFileSuffix:)(v13);
      if (v15)
      {

        __swift_destroy_boxed_opaque_existential_1(v35);
        return MEMORY[0x277D82BD8](v32);
      }

      else
      {

        v16._countAndFlagsBits = HyperParams.wTmpFwEndRFModelName.getter();
        v17 = PFLTask.getValidModelPath(modelFileSuffix:)(v16);
        if (v18)
        {

          __swift_destroy_boxed_opaque_existential_1(v35);
          return MEMORY[0x277D82BD8](v32);
        }

        else
        {

          v19._countAndFlagsBits = HyperParams.wTmpPeriodLstmModelName.getter();
          v20 = PFLTask.getValidModelPath(modelFileSuffix:)(v19);

          if (v21)
          {

            __swift_destroy_boxed_opaque_existential_1(v35);
          }

          else
          {
            v23 = (*(v25 + 56))(v8._countAndFlagsBits, v8._object, v11._countAndFlagsBits, v11._object, v14._countAndFlagsBits, v14._object, v17._countAndFlagsBits, v17._object, v20._countAndFlagsBits, v20._object, 0, 0, 0, v24, v25);

            __swift_destroy_boxed_opaque_existential_1(v35);
            MEMORY[0x277D82BE0](v32);
            *a4 = v32;
            a4[1] = v33;
            a4[2] = v34;
            MEMORY[0x277D82BE0](v23);
            a4[3] = v23;
            MEMORY[0x277D82BD8](v23);
          }

          return MEMORY[0x277D82BD8](v32);
        }
      }
    }
  }
}

uint64_t closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  *(v5 + 40) = v3;
  *v3 = *(v5 + 16);
  v3[1] = closure #2 in NightingaleDPFLRunner.run(task:useCase:context:);

  return NightingaleDPFLRunner.queryPregnancies(hyperParams:)(a2);
}

uint64_t closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v10 = *v5;
  *(v10 + 16) = *v5;
  v11 = v10 + 16;

  if (v4)
  {
    v9 = *(*v11 + 8);

    return v9(v6);
  }

  else
  {
    v7 = *(*v11 + 8);

    return v7(a1, a2, a3, a4);
  }
}

uint64_t thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error)(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 32) = v3;
  *v3 = *(v5 + 16);
  v3[1] = thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error);

  return v6();
}

uint64_t thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *v5;
  *(v6 + 16) = *v5;
  v10 = v6 + 16;
  v11 = v6 + 16;

  if (v4)
  {
    v8 = *(*v11 + 8);
  }

  else
  {
    v7 = *(v10 + 8);
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    v8 = *(*v11 + 8);
  }

  return v8();
}

uint64_t closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *(v5 + 100) = a5;
  *(v5 + 92) = a4;
  *(v5 + 56) = a3;
  *(v5 + 48) = a2;
  *(v5 + 40) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return MEMORY[0x2822009F8](closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v11 = *(v1 + 100);
  v9 = *(v1 + 92);
  v8 = *(v1 + 56);
  v10 = *(v1 + 48);
  *(v1 + 16) = v1;
  v13 = HyperParams.rawSampleTimeout.getter();

  v14 = swift_allocObject();
  *(v1 + 64) = v14;
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  v2 = swift_task_alloc();
  v12[9] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd, &_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMR);
  v4.n128_f64[0] = v13;
  v5 = v3;
  *v2 = v12[2];
  v2[1] = closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);
  v6 = v12[5];

  return MEMORY[0x2821A2088](v6, &async function pointer to partial apply for closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), v14, v5, v4);
}

uint64_t closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(v5 + 148) = a5;
  *(v5 + 96) = a4;
  *(v5 + 140) = a3;
  *(v5 + 88) = a2;
  *(v5 + 80) = a1;
  *(v5 + 56) = v5;
  *(v5 + 64) = 0;
  *(v5 + 136) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = 0;
  *(v5 + 64) = a2;
  *(v5 + 136) = a3;
  *(v5 + 72) = a4;
  *(v5 + 144) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v1 = v0[11];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  _allocateUninitializedArray<A>(_:)();
  *v2 = 0;
  v2[1] = 3;
  v2[2] = 1;
  v2[3] = 2;
  _finalizeUninitializedArray<A>(_:)();
  v13 = v3;
  v0[13] = v3;
  result = HyperParams.lmpMaxRange.getter();
  if (result < 0)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
  }

  if (result > 0xFFFFFFFFLL)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
  }

  v5 = *(v10 + 140);
  v9 = v5 - result;
  if (v5 < result)
  {
    __break(1u);
  }

  else if (*(v10 + 148) >= v9)
  {
    v7 = *(v10 + 148);
    v8 = (*(v12 + 16) + **(v12 + 16));
    v6 = swift_task_alloc();
    *(v10 + 112) = v6;
    *v6 = *(v10 + 56);
    v6[1] = closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);

    return v8(v13, __PAIR64__(v7, v9), v11, v12);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
  }

  return result;
}

{
  v1 = v0[15];
  v2 = v0[10];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v3 = closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t closure #7 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t closure #8 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(uint64_t *a1@<X8>, void **a2@<X1>, void **a3@<X2>, void **a4@<X3>, void **a5@<X4>)
{
  result = CalendarPeriodPrediction.predictHistoricalPeriods(flow:otr:spotting:cycleFactors:)(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
  }

  return result;
}

uint64_t closure #9 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  v23 = 0;
  v22 = 0;
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v28 = (*(v19 + 48))(v20);
  v27 = 2;
  lazy protocol witness table accessor for type PregnancySource and conformance PregnancySource();
  if (== infix<A>(_:_:)())
  {
    v16 = HyperParams.minLMPTestDelta.getter();
  }

  else
  {
    v16 = HyperParams.minLMPFactorDelta.getter();
  }

  v26 = v16;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v25 = (*(v14 + 48))(v15);
  v24 = 2;
  if (== infix<A>(_:_:)())
  {
    v13 = HyperParams.maxLMPTestDelta.getter();
  }

  else
  {
    v13 = HyperParams.maxLMPFactorDelta.getter();
  }

  v23 = v13;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = HyperParams.minPregnancyDuration.getter();
  v7 = HyperParams.maxPregnancyDuration.getter();
  v8 = HyperParams.excludePregnanciesContainingFlow.getter();
  v9 = HyperParams.maxLMPTolerableFlowDelta.getter();
  v11 = *a3;

  HyperParams.hkPregnancyStartSourceIncludeList.getter();
  v12 = (*(v6 + 128))(v10, v7, v16, v13, v8 & 1, v9, v11);

  v22 = v12;
  if (static PregnancyInvalidReason.== infix(_:_:)(v12, 0))
  {
    outlined init with copy of HealthDataQuery(a1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    return Array.append(_:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining22PregnancyInvalidReasonOGMd, &_sSay19NightingaleTraining22PregnancyInvalidReasonOGMR);
    return Array.append(_:)();
  }
}

BOOL closure #16 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8 = (*(v3 + 64))(v4);
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  return v8 < (*(v6 + 64))(v7);
}

uint64_t closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[6] = a2;
  v4[5] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[11] = 0;
  v4[12] = a4;
  v4[3] = a2;
  v4[4] = a3;
  v4[11] = a4;
  return MEMORY[0x2822009F8](closure #18 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v9 = *(v0 + 100);
  v8 = *(v0 + 96);
  v7 = *(v0 + 56);
  *(v0 + 16) = v0;
  v11 = HyperParams.sensorTimeout.getter();

  v12 = swift_allocObject();
  *(v0 + 64) = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 28) = v9;
  v1 = swift_task_alloc();
  v10[9] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd, &_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMR);
  v3.n128_f64[0] = v11;
  v4 = v2;
  *v1 = v10[2];
  v1[1] = closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);
  v5 = v10[5];

  return MEMORY[0x2821A2088](v5, &async function pointer to partial apply for closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:), v12, v4, v3);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #18 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[9] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[15] = 0;
  v3[16] = a3;
  v3[8] = a2;
  v3[15] = a3;
  return MEMORY[0x2822009F8](closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v6 = v0[16];
  v1 = v0[10];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  _allocateUninitializedArray<A>(_:)();
  *v2 = 7;
  _finalizeUninitializedArray<A>(_:)();
  v11 = v3;
  v0[11] = v3;
  v10 = (*(v9 + 16) + **(v9 + 16));
  v4 = swift_task_alloc();
  *(v7 + 96) = v4;
  *v4 = *(v7 + 56);
  v4[1] = closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);

  return v10(v11, v6, v8, v9);
}

{
  v1 = v0[13];
  v2 = v0[9];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[13] = a1;
  v5[14] = v1;

  if (v1)
  {
    v3 = closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v3 = closure #1 in closure #18 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

float closure #19 in NightingaleDPFLRunner.run(task:useCase:context:)@<S0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);

  result = v3;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  return result;
}

BOOL closure #20 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8 = (*(v3 + 16))(v4);
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  return v8 < (*(v6 + 16))(v7);
}

uint64_t closure #22 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(v5 + 148) = a5;
  *(v5 + 96) = a4;
  *(v5 + 140) = a3;
  *(v5 + 88) = a2;
  *(v5 + 80) = a1;
  *(v5 + 56) = v5;
  *(v5 + 64) = 0;
  *(v5 + 136) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = 0;
  *(v5 + 64) = a2;
  *(v5 + 136) = a3;
  *(v5 + 72) = a4;
  *(v5 + 144) = a5;
  return MEMORY[0x2822009F8](closure #22 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #22 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v1 = v0[11];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  _allocateUninitializedArray<A>(_:)();
  *v2 = 0;
  v2[1] = 3;
  v2[2] = 1;
  v2[3] = 2;
  v2[4] = 7;
  _finalizeUninitializedArray<A>(_:)();
  v13 = v3;
  v0[13] = v3;
  result = HyperParams.maximumDays.getter();
  v5 = *(v10 + 140);
  v9 = v5 - result;
  if (v5 < result)
  {
    __break(1u);
  }

  else if (*(v10 + 148) >= v9)
  {
    v7 = *(v10 + 148);
    v8 = (*(v12 + 16) + **(v12 + 16));
    v6 = swift_task_alloc();
    *(v10 + 112) = v6;
    *v6 = *(v10 + 56);
    v6[1] = closure #1 in closure #3 in NightingaleDPFLRunner.run(task:useCase:context:);

    return v8(v13, __PAIR64__(v7, v9), v11, v12);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
  }

  return result;
}

BOOL closure #32 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8 = (*(v3 + 8))(v4);
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  return v8 < (*(v6 + 8))(v7);
}

uint64_t closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[64] = v19;
  v8[63] = a8;
  v8[62] = a7;
  v8[61] = a6;
  v8[60] = a4;
  v8[59] = a3;
  v8[58] = a2;
  v8[38] = v8;
  v8[39] = 0;
  v8[40] = 0;
  v8[41] = 0;
  v8[71] = 0;
  v8[42] = 0;
  v8[43] = 0;
  v8[44] = 0;
  v8[45] = 0;
  v8[48] = 0;
  v8[49] = 0;
  v8[72] = a5;
  v10 = type metadata accessor for PFLError();
  v8[65] = v10;
  v8[66] = *(v10 - 8);
  v8[67] = swift_task_alloc();
  v8[39] = a2;
  v8[40] = a3;
  v8[41] = a4;
  v8[71] = a5;
  v8[42] = a6;
  v8[43] = a7;
  v8[44] = a8;
  v8[45] = v19;

  return MEMORY[0x2822009F8](closure #33 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v9 = *(v0 + 580);
  v8 = *(v0 + 576);
  v6 = *(v0 + 480);
  v5 = *(v0 + 472);
  *(v0 + 304) = v0;
  v11 = HyperParams.sensorTimeout.getter();
  v7 = *v5;

  v12 = swift_allocObject();
  *(v0 + 544) = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 36) = v9;
  v1 = swift_task_alloc();
  *(v10 + 552) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd, &_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMR);
  v3.n128_f64[0] = v11;
  *v1 = *(v10 + 304);
  v1[1] = closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);

  return MEMORY[0x2821A2088](v10 + 368, &async function pointer to partial apply for closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:), v12, v2, v3);
}

{
  v4 = *v1;
  *(v4 + 304) = *v1;
  *(v4 + 560) = v0;

  if (v0)
  {
    v2 = closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 304) = v0;
  v25 = *(v0 + 368);
  *(v0 + 392) = v25;
  *(v0 + 584) = 8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd, &_s19NightingaleTraining21HealthDataQueryResult_pMR);
  v27 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v0 + 584, v25, &type metadata for HealthDataRawSampleType, v26);
  if (*(v0 + 40))
  {
    v23 = *(v24 + 40);
    v21 = *(v24 + 48);
    __swift_project_boxed_opaque_existential_1((v24 + 16), v23);
    v22 = *(v21 + 16);
    *(v24 + 200) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0((v24 + 176));
    v22(v23, v21);
    __swift_destroy_boxed_opaque_existential_1((v24 + 16));
  }

  else
  {
    outlined destroy of Pregnancy?((v24 + 16));
    *(v24 + 176) = 0;
    *(v24 + 184) = 0;
    *(v24 + 192) = 0;
    *(v24 + 200) = 0;
  }

  if (*(v24 + 200))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd, &_sSDys6UInt32VSfGMR);
    if (swift_dynamicCast())
    {
      v19 = *(v24 + 456);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    outlined destroy of Pregnancy?((v24 + 176));
    v20 = 0;
  }

  *(v24 + 400) = v20;
  if (!*(v24 + 400))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd, &_ss6UInt32V_SftMR);
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (*(v24 + 400))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v1 = *(v24 + 560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfGMd, &_sSDys6UInt32VSfGMR);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  if (!v1)
  {
    *(v24 + 585) = 10;
    MEMORY[0x25F8891D0](v24 + 585, v25, &type metadata for HealthDataRawSampleType, v26, v27);
    if (*(v24 + 80))
    {
      v18 = *(v24 + 80);
      v16 = *(v24 + 88);
      __swift_project_boxed_opaque_existential_1((v24 + 56), v18);
      v17 = *(v16 + 16);
      *(v24 + 232) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v24 + 208));
      v17(v18, v16);
      __swift_destroy_boxed_opaque_existential_1((v24 + 56));
    }

    else
    {
      outlined destroy of Pregnancy?((v24 + 56));
      *(v24 + 208) = 0;
      *(v24 + 216) = 0;
      *(v24 + 224) = 0;
      *(v24 + 232) = 0;
    }

    if (*(v24 + 232))
    {
      if (swift_dynamicCast())
      {
        v14 = *(v24 + 448);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
    }

    else
    {
      outlined destroy of Pregnancy?((v24 + 208));
      v15 = 0;
    }

    *(v24 + 408) = v15;
    if (!*(v24 + 408))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd, &_ss6UInt32V_SftMR);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v24 + 408))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    Dictionary.merge(_:uniquingKeysWith:)();
    *(v24 + 586) = 9;
    MEMORY[0x25F8891D0](v24 + 586, v25, &type metadata for HealthDataRawSampleType, v26, v27);
    if (*(v24 + 120))
    {
      v13 = *(v24 + 120);
      v11 = *(v24 + 128);
      __swift_project_boxed_opaque_existential_1((v24 + 96), v13);
      v12 = *(v11 + 16);
      *(v24 + 264) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v24 + 240));
      v12(v13, v11);
      __swift_destroy_boxed_opaque_existential_1((v24 + 96));
    }

    else
    {
      outlined destroy of Pregnancy?((v24 + 96));
      *(v24 + 240) = 0;
      *(v24 + 248) = 0;
      *(v24 + 256) = 0;
      *(v24 + 264) = 0;
    }

    if (*(v24 + 264))
    {
      if (swift_dynamicCast())
      {
        v9 = *(v24 + 440);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
    }

    else
    {
      outlined destroy of Pregnancy?((v24 + 240));
      v10 = 0;
    }

    *(v24 + 416) = v10;
    if (!*(v24 + 416))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SftMd, &_ss6UInt32V_SftMR);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v24 + 416))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    Dictionary.merge(_:uniquingKeysWith:)();
    *(v24 + 587) = 7;
    MEMORY[0x25F8891D0](v24 + 587, v25, &type metadata for HealthDataRawSampleType, v26, v27);
    if (*(v24 + 160))
    {
      v8 = *(v24 + 160);
      v6 = *(v24 + 168);
      __swift_project_boxed_opaque_existential_1((v24 + 136), v8);
      v7 = *(v6 + 16);
      *(v24 + 296) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v24 + 272));
      v7(v8, v6);
      __swift_destroy_boxed_opaque_existential_1((v24 + 136));
    }

    else
    {
      outlined destroy of Pregnancy?((v24 + 136));
      *(v24 + 272) = 0;
      *(v24 + 280) = 0;
      *(v24 + 288) = 0;
      *(v24 + 296) = 0;
    }

    if (*(v24 + 296))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd, &_sSDys6UInt32VSf_SStGMR);
      if (swift_dynamicCast())
      {
        v4 = *(v24 + 432);
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;
    }

    else
    {
      outlined destroy of Pregnancy?((v24 + 272));
      v5 = 0;
    }

    *(v24 + 424) = v5;
    if (!*(v24 + 424))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_Sf_SSttMd, &_ss6UInt32V_Sf_SSttMR);
      _allocateUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd, &_sSf_SStMR);
      Dictionary.init(dictionaryLiteral:)();
      if (*(v24 + 424))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf_SStGMd, &_sSDys6UInt32VSf_SStGMR);
    Dictionary.merge(_:uniquingKeysWith:)();

    v3 = *(*(v24 + 304) + 8);

    return v3();
  }

  return result;
}

{
  v9 = v0[70];
  v0[38] = v0;

  v1 = v9;
  v0[47] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v8 + 528) + 88))(*(v8 + 536), *(v8 + 520)) == *MEMORY[0x277D413F0])
    {
      v7 = *(v8 + 560);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 61;
      swift_willThrow();

      goto LABEL_7;
    }

    (*(*(v8 + 528) + 8))(*(v8 + 536), *(v8 + 520));
  }

  else
  {
  }

  v6 = *(v8 + 560);
  v3 = v6;
  *(v8 + 384) = v6;
  swift_willThrow();

LABEL_7:

  v4 = *(*(v8 + 304) + 8);

  return v4();
}

uint64_t closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[16] = 0;
  v4[17] = a4;
  v4[8] = a2;
  v4[9] = a3;
  v4[16] = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v5 = v0[17];
  v1 = v0[11];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = (*(v8 + 16) + **(v8 + 16));
  v2 = swift_task_alloc();
  v6[13] = v2;
  *v2 = v6[7];
  v2[1] = closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  v3 = v6[12];

  return v9(v3, v5, v7, v8);
}

{
  v1 = v0[14];
  v2 = v0[10];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {
    v3 = closure #1 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

float closure #2 in closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)@<S0>(float *a1@<X1>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a7;
  *(v7 + 168) = a6;
  *(v7 + 160) = a5;
  *(v7 + 152) = a3;
  *(v7 + 144) = a2;
  *(v7 + 80) = v7;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 232) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 136) = 0;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 240) = a4;
  v8 = type metadata accessor for PFLError();
  *(v7 + 184) = v8;
  *(v7 + 192) = *(v8 - 8);
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 88) = a2;
  *(v7 + 96) = a3;
  *(v7 + 232) = a4;
  *(v7 + 104) = a5;
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;

  return MEMORY[0x2822009F8](closure #34 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v7 = *(v0 + 244);
  v6 = *(v0 + 240);
  v8 = *(v0 + 152);
  v5 = *(v0 + 144);
  *(v0 + 80) = v0;
  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QuerySHR", 8uLL, 1);
  dispatch thunk of PerformanceMeasure.start(_:)();

  v10 = HyperParams.shrTimeout.getter();

  v11 = swift_allocObject();
  *(v0 + 208) = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 28) = v7;
  *(v11 + 32) = v8;
  v1 = swift_task_alloc();
  *(v9 + 216) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0tMd, &_sSDys6UInt32VSfG9daySHR10s_AC05nightC0SDyABSiG0B9SHRCountsAF0dE0tMR);
  v3.n128_f64[0] = v10;
  *v1 = *(v9 + 80);
  v1[1] = closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return MEMORY[0x2821A2088](v9 + 16, &async function pointer to partial apply for closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:), v11, v2, v3);
}

{
  v4 = *v1;
  *(v4 + 80) = *v1;
  *(v4 + 224) = v0;

  if (v0)
  {
    v2 = closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v8 = v0[22];
  v7 = v0[21];
  v6 = v0[20];
  v0[10] = v0;
  v10 = v0[2];
  v11 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v0[6] = v10;
  v0[7] = v11;
  v0[8] = v1;
  v0[9] = v2;

  *v6 = v10;

  *v7 = v11;

  NightingaleDPFLRunner.performanceMeasure.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QuerySHR", 8uLL, 1);
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v9 = v3;

  *v8 = v9;

  v4 = *(v0[10] + 8);

  return v4();
}

{
  v9 = v0[28];
  v0[10] = v0;

  v1 = v9;
  v0[16] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v8 + 192) + 88))(*(v8 + 200), *(v8 + 184)) == *MEMORY[0x277D413F0])
    {
      v7 = *(v8 + 224);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 6;
      swift_willThrow();

      goto LABEL_7;
    }

    (*(*(v8 + 192) + 8))(*(v8 + 200), *(v8 + 184));
  }

  else
  {
  }

  v6 = *(v8 + 224);
  v3 = v6;
  *(v8 + 136) = v6;
  swift_willThrow();

LABEL_7:

  v4 = *(*(v8 + 80) + 8);

  return v4();
}

uint64_t closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[11] = a2;
  v4[10] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[19] = 0;
  v4[9] = 0;
  v4[20] = a3;
  v4[8] = a2;
  v4[19] = a3;
  v4[9] = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

{
  v8 = *v5;
  v8[7] = *v5;
  v8[14] = v4;
  v8[15] = a1;
  v8[16] = a2;
  v8[17] = a3;
  v8[18] = a4;

  if (v4)
  {
    v6 = closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {
    v6 = closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v4 = v0[20];
  v1 = v0[11];
  v0[7] = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v6 = HyperParams.sHRQueryBatchSize.getter();
  v9 = (*(v8 + 24) + **(v8 + 24));
  v2 = swift_task_alloc();
  *(v5 + 104) = v2;
  *v2 = *(v5 + 56);
  v2[1] = closure #1 in closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return v9(v4, v6, v7, v8);
}

{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[16];
  v4 = v0[15];
  v5 = v0[10];
  v0[7] = v0;
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = *(v0[7] + 8);

  return v6();
}

{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 560) = v23;
  *(v8 + 552) = v22;
  *(v8 + 544) = v21;
  *(v8 + 536) = v20;
  *(v8 + 528) = v19;
  *(v8 + 520) = a8;
  *(v8 + 512) = a7;
  *(v8 + 504) = a6;
  *(v8 + 656) = a5;
  *(v8 + 652) = a4;
  *(v8 + 496) = a3;
  *(v8 + 644) = a2;
  *(v8 + 320) = v8;
  *(v8 + 616) = 0;
  *(v8 + 328) = 0;
  *(v8 + 624) = 0;
  *(v8 + 632) = 0;
  *(v8 + 336) = 0;
  *(v8 + 344) = 0;
  *(v8 + 352) = 0;
  *(v8 + 360) = 0;
  *(v8 + 368) = 0;
  *(v8 + 376) = 0;
  *(v8 + 384) = 0;
  *(v8 + 392) = 0;
  *(v8 + 640) = 0;
  *(v8 + 648) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 304) = 0;
  *(v8 + 312) = 0;
  v12 = type metadata accessor for PFLError();
  *(v8 + 568) = v12;
  *(v8 + 576) = *(v12 - 8);
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 616) = a2;
  *(v8 + 328) = a3;
  *(v8 + 624) = a4;
  *(v8 + 632) = a5;
  *(v8 + 336) = a6;
  *(v8 + 344) = a7;
  *(v8 + 352) = a8;
  *(v8 + 360) = v19;
  *(v8 + 368) = v20;
  *(v8 + 376) = v21;
  *(v8 + 384) = v22;
  *(v8 + 392) = v23;

  return MEMORY[0x2822009F8](closure #35 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v24 = v1;
  v25 = *(v1 + 644);
  *(v1 + 320) = v1;
  v2 = HyperParams.minSliceAnchorDelta.getter();
  v26 = v25 + v2;
  if (__OFADD__(v25, v2))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return MEMORY[0x2821A2088](v2, v3, v4, v5, v6);
  }

  v2 = HyperParams.sliceSize.getter();
  v23 = v26 - v2;
  if (__OFSUB__(v26, v2))
  {
    goto LABEL_32;
  }

  if (__OFADD__(v23, 1))
  {
    goto LABEL_33;
  }

  v22 = v23 - 549;
  if (__OFSUB__(v23 + 1, 550))
  {
    goto LABEL_34;
  }

  if (v22 < 0)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
  }

  if (v22 > 0xFFFFFFFFLL)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
  }

  v20 = *(v1 + 652);
  *(v1 + 640) = v22;
  v2 = HyperParams.maxSliceAnchorDelta.getter();
  v21 = v20 + v2;
  if (__OFADD__(v20, v2))
  {
    goto LABEL_35;
  }

  if (v21 < 0)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
  }

  if (v21 > 0xFFFFFFFFLL)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
  }

  v16 = *(v1 + 504);
  v13 = *(v1 + 656);
  *(v1 + 628) = v21;
  *(v1 + 636) = v13;
  min<A>(_:_:)();
  v17 = *(v1 + 620);
  *(v1 + 648) = v17;
  v18 = HyperParams.rawSampleTimeout.getter();

  v19 = swift_allocObject();
  *(v1 + 592) = v19;
  *(v19 + 16) = v16;
  *(v19 + 24) = v22;
  *(v19 + 28) = v17;
  v14 = swift_task_alloc();
  *(v24 + 600) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd, &_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMR);
  v6.n128_f64[0] = v18;
  v3 = &async function pointer to partial apply for closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v4 = v19;
  v5 = v15;
  *v14 = *(v24 + 320);
  v14[1] = closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  v2 = v24 + 400;

  return MEMORY[0x2821A2088](v2, v3, v4, v5, v6);
}

uint64_t closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 608) = v0;

  if (v0)
  {
    v2 = closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 320) = v0;
  v32 = *(v0 + 400);
  *(v0 + 424) = v32;
  *(v0 + 660) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd, &_s19NightingaleTraining21HealthDataQueryResult_pMR);
  v34 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v0 + 660, v32, &type metadata for HealthDataRawSampleType, v33);
  if (*(v0 + 40))
  {
    v30 = *(v31 + 40);
    v28 = *(v31 + 48);
    __swift_project_boxed_opaque_existential_1((v31 + 16), v30);
    v29 = *(v28 + 16);
    *(v31 + 200) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0((v31 + 176));
    v29(v30, v28);
    __swift_destroy_boxed_opaque_existential_1((v31 + 16));
  }

  else
  {
    outlined destroy of Pregnancy?((v31 + 16));
    *(v31 + 176) = 0;
    *(v31 + 184) = 0;
    *(v31 + 192) = 0;
    *(v31 + 200) = 0;
  }

  if (*(v31 + 200))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd, &_sSDys6UInt32Vs5UInt8VGMR);
    if (swift_dynamicCast())
    {
      v26 = *(v31 + 488);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
  }

  else
  {
    outlined destroy of Pregnancy?((v31 + 176));
    v27 = 0;
  }

  *(v31 + 432) = v27;
  if (!*(v31 + 432))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd, &_ss6UInt32V_s5UInt8VtMR);
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (*(v31 + 432))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v1 = *(v31 + 608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd, &_sSDys6UInt32Vs5UInt8VGMR);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  if (!v1)
  {
    *(v31 + 661) = 2;
    MEMORY[0x25F8891D0](v31 + 661, v32, &type metadata for HealthDataRawSampleType, v33, v34);
    if (*(v31 + 80))
    {
      v25 = *(v31 + 80);
      v23 = *(v31 + 88);
      __swift_project_boxed_opaque_existential_1((v31 + 56), v25);
      v24 = *(v23 + 16);
      *(v31 + 232) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v31 + 208));
      v24(v25, v23);
      __swift_destroy_boxed_opaque_existential_1((v31 + 56));
    }

    else
    {
      outlined destroy of Pregnancy?((v31 + 56));
      *(v31 + 208) = 0;
      *(v31 + 216) = 0;
      *(v31 + 224) = 0;
      *(v31 + 232) = 0;
    }

    if (*(v31 + 232))
    {
      if (swift_dynamicCast())
      {
        v21 = *(v31 + 480);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
    }

    else
    {
      outlined destroy of Pregnancy?((v31 + 208));
      v22 = 0;
    }

    *(v31 + 440) = v22;
    if (!*(v31 + 440))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd, &_ss6UInt32V_s5UInt8VtMR);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v31 + 440))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    Dictionary.merge(_:uniquingKeysWith:)();
    *(v31 + 662) = 1;
    MEMORY[0x25F8891D0](v31 + 662, v32, &type metadata for HealthDataRawSampleType, v33, v34);
    if (*(v31 + 120))
    {
      v20 = *(v31 + 120);
      v18 = *(v31 + 128);
      __swift_project_boxed_opaque_existential_1((v31 + 96), v20);
      v19 = *(v18 + 16);
      *(v31 + 264) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v31 + 240));
      v19(v20, v18);
      __swift_destroy_boxed_opaque_existential_1((v31 + 96));
    }

    else
    {
      outlined destroy of Pregnancy?((v31 + 96));
      *(v31 + 240) = 0;
      *(v31 + 248) = 0;
      *(v31 + 256) = 0;
      *(v31 + 264) = 0;
    }

    if (*(v31 + 264))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd, &_sSDys6UInt32VSbGMR);
      if (swift_dynamicCast())
      {
        v16 = *(v31 + 472);
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    else
    {
      outlined destroy of Pregnancy?((v31 + 240));
      v17 = 0;
    }

    *(v31 + 448) = v17;
    if (!*(v31 + 448))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SbtMd, &_ss6UInt32V_SbtMR);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v31 + 448))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd, &_sSDys6UInt32VSbGMR);
    Dictionary.merge(_:uniquingKeysWith:)();
    *(v31 + 663) = 3;
    MEMORY[0x25F8891D0](v31 + 663, v32, &type metadata for HealthDataRawSampleType, v33, v34);
    if (*(v31 + 160))
    {
      v15 = *(v31 + 160);
      v13 = *(v31 + 168);
      __swift_project_boxed_opaque_existential_1((v31 + 136), v15);
      v14 = *(v13 + 16);
      *(v31 + 296) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v31 + 272));
      v14(v15, v13);
      __swift_destroy_boxed_opaque_existential_1((v31 + 136));
    }

    else
    {
      outlined destroy of Pregnancy?((v31 + 136));
      *(v31 + 272) = 0;
      *(v31 + 280) = 0;
      *(v31 + 288) = 0;
      *(v31 + 296) = 0;
    }

    if (*(v31 + 296))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V_ADtGGMd, &_sSDys5UInt8VSays6UInt32V_ADtGGMR);
      if (swift_dynamicCast())
      {
        v11 = *(v31 + 464);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
    }

    else
    {
      outlined destroy of Pregnancy?((v31 + 272));
      v12 = 0;
    }

    *(v31 + 456) = v12;
    if (!*(v31 + 456))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V_ADtGtMd, &_ss5UInt8V_Says6UInt32V_ADtGtMR);
      _allocateUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd, &_sSays6UInt32V_ABtGMR);
      Dictionary.init(dictionaryLiteral:)();
      if (*(v31 + 456))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd, &_sSays6UInt32V_ABtGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
    _dictionaryUpCast<A, B, C, D>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd, &_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMR);
    Dictionary.merge(_:uniquingKeysWith:)();
    cycleFactors = *(v31 + 536);
    spotting = *(v31 + 528);
    otr = *(v31 + 520);
    flow = *(v31 + 512);

    v4 = CalendarPeriodPrediction.analyze(flow:otr:spotting:cycleFactors:)(flow, otr, spotting, cycleFactors);
    if (v3)
    {

      v5 = *(*(v31 + 320) + 8);
    }

    else
    {
      *(v31 + 304) = v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSf15periodStartMean_Sf0bC3StdtGMd, &_sSDys6UInt32VSf15periodStartMean_Sf0bC3StdtGMR);
      Dictionary.merge(_:uniquingKeysWith:)();
      v6 = *(v31 + 560);

      *v6 = v4.periods._rawValue;

      v5 = *(*(v31 + 320) + 8);
    }

    return v5();
  }

  return result;
}

{
  v9 = v0[76];
  v0[40] = v0;

  v1 = v9;
  v0[51] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v8 + 576) + 88))(*(v8 + 584), *(v8 + 568)) == *MEMORY[0x277D413F0])
    {
      v7 = *(v8 + 608);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 5;
      swift_willThrow();

      goto LABEL_7;
    }

    (*(*(v8 + 576) + 8))(*(v8 + 584), *(v8 + 568));
  }

  else
  {
  }

  v6 = *(v8 + 608);
  v3 = v6;
  *(v8 + 416) = v6;
  swift_willThrow();

LABEL_7:

  v4 = *(*(v8 + 320) + 8);

  return v4();
}

uint64_t closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(v4 + 132) = a4;
  *(v4 + 124) = a3;
  *(v4 + 80) = a2;
  *(v4 + 72) = a1;
  *(v4 + 56) = v4;
  *(v4 + 64) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 64) = a2;
  *(v4 + 120) = a3;
  *(v4 + 128) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v12 = *(v0 + 132);
  v11 = *(v0 + 124);
  v1 = *(v0 + 80);
  *(v0 + 56) = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, v0 + 16);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  _allocateUninitializedArray<A>(_:)();
  *v2 = 0;
  v2[1] = 3;
  v2[2] = 1;
  v2[3] = 2;
  _finalizeUninitializedArray<A>(_:)();
  v13 = v3;
  *(v0 + 88) = v3;
  if (v12 < v11)
  {
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
  }

  HIDWORD(v6) = *(v8 + 132);
  LODWORD(v6) = *(v8 + 124);
  v7 = (*(v10 + 16) + **(v10 + 16));
  v5 = swift_task_alloc();
  *(v8 + 96) = v5;
  *v5 = *(v8 + 56);
  v5[1] = closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);

  return v7(v13, v6, v9, v10);
}

{
  v1 = v0[13];
  v2 = v0[9];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[13] = a1;
  v5[14] = v1;

  if (v1)
  {
    v3 = closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v3 = closure #1 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

float closure #6 in closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)@<S0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = *a1;
  *(a2 + 4) = result;
  return result;
}

uint64_t closure #36 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t a14, unsigned int a15)
{
  v30 = *a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd, &_sSf_SStMR);
  v32 = Dictionary.mapValues<A>(_:)();
  if (v31)
  {
    __break(1u);
  }

  else
  {

    v19 = *a5;

    v20 = *a6;

    v21 = *a7;

    v22 = *a8;

    v23 = *a10;

    v16 = *a11;

    v17 = *a12;

    v18 = *a13;

    Featurizer.featurizeNightingaleD(task:pregnancies:swts:hrvs:respiratoryRates:spo2s:daySHR10s:nightSHR10s:calendarPeriodPredictions:historicalPeriods:cycleFactors:hyperParam:today:)(a2, v30, v32, v19, v20, v21, v22, v23, v16, v17, v18, a14, a15);

    result = v44;
    *a9 = v33;
    a9[1] = v34;
    a9[2] = v35;
    a9[3] = v36;
    a9[4] = v37;
    a9[5] = v38;
    a9[6] = v39;
    a9[7] = v40;
    a9[8] = v41;
    a9[9] = v42;
    a9[10] = v43;
    a9[11] = v44;
    a9[12] = v45;
    a9[13] = v46;
    a9[14] = v47;
    a9[15] = v48;
    a9[16] = v49;
    a9[17] = v50;
    a9[18] = v51;
    a9[19] = v52;
    a9[20] = v53;
  }

  return result;
}

uint64_t closure #1 in closure #36 in NightingaleDPFLRunner.run(task:useCase:context:)@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
}

uint64_t closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 648) = v21;
  *(v8 + 640) = v20;
  *(v8 + 632) = v19;
  *(v8 + 624) = a8;
  *(v8 + 616) = a7;
  *(v8 + 608) = a6;
  *(v8 + 708) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  *(v8 + 384) = v8;
  *(v8 + 392) = 0;
  *(v8 + 400) = 0;
  *(v8 + 408) = 0;
  *(v8 + 704) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  *(v8 + 440) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  *(v8 + 712) = 0;
  *(v8 + 720) = 0;
  *(v8 + 496) = 0;
  *(v8 + 504) = 0;
  v10 = type metadata accessor for PFLError();
  *(v8 + 656) = v10;
  *(v8 + 664) = *(v10 - 8);
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 392) = a2;
  *(v8 + 400) = a3;
  *(v8 + 408) = a4;
  *(v8 + 704) = a5;
  *(v8 + 416) = a6;
  *(v8 + 424) = a7;
  *(v8 + 432) = a8;
  *(v8 + 440) = v19;
  *(v8 + 448) = v20;
  *(v8 + 456) = v21;

  return MEMORY[0x2822009F8](closure #38 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

uint64_t closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  *(v0 + 384) = v0;
  if (HyperParams.isSWTRequired()())
  {
    v24 = **(v25 + 592);

    *(v25 + 464) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
    Sequence.min(by:)();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (*(v25 + 40))
    {
      v21 = *(v25 + 40);
      v20 = *(v25 + 48);
      __swift_project_boxed_opaque_existential_1((v25 + 16), v21);
      v22 = (*(v20 + 40))(v21);
      __swift_destroy_boxed_opaque_existential_1((v25 + 16));
      v23 = v22;
    }

    else
    {
      outlined destroy of Pregnancy?((v25 + 16));
      LODWORD(v23) = 0;
      BYTE4(v23) = 1;
    }

    *(v25 + 716) = v23;
    if ((v23 & 0x100000000) == 0)
    {
      v1 = *(v25 + 592);
      *(v25 + 712) = v23;
      v19 = *v1;

      *(v25 + 472) = v19;
      Sequence.max(by:)();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      if (*(v25 + 80))
      {
        v15 = *(v25 + 80);
        v14 = *(v25 + 88);
        __swift_project_boxed_opaque_existential_1((v25 + 56), v15);
        v16 = (*(v14 + 16))(v15);
        __swift_destroy_boxed_opaque_existential_1((v25 + 56));
        v17 = v16;
        v18 = 0;
      }

      else
      {
        outlined destroy of Pregnancy?((v25 + 56));
        v17 = 0;
        v18 = 1;
      }

      *(v25 + 724) = v17;
      if ((v18 & 1) == 0)
      {
        v10 = *(v25 + 708);
        v9 = *(v25 + 600);
        v11 = *(v25 + 584);
        *(v25 + 720) = v17;
        v12 = HyperParams.rawSampleTimeout.getter();

        v13 = swift_allocObject();
        *(v25 + 680) = v13;
        *(v13 + 16) = v9;
        *(v13 + 24) = v10;
        *(v13 + 32) = v11;
        v2 = swift_task_alloc();
        *(v25 + 688) = v2;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd, &_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMR);
        v4.n128_f64[0] = v12;
        *v2 = *(v25 + 384);
        v2[1] = closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);

        return MEMORY[0x2821A2088](v25 + 480, &async function pointer to partial apply for closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:), v13, v3, v4);
      }
    }

    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v5 = 58;
    swift_willThrow();
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v6 = 66;
    swift_willThrow();
  }

  v7 = *(*(v25 + 384) + 8);

  return v7();
}

{
  v4 = *v1;
  *(v4 + 384) = *v1;
  *(v4 + 696) = v0;

  if (v0)
  {
    v2 = closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  *(v0 + 384) = v0;
  v33 = *(v0 + 480);
  *(v0 + 504) = v33;
  *(v0 + 728) = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining21HealthDataQueryResult_pMd, &_s19NightingaleTraining21HealthDataQueryResult_pMR);
  v35 = lazy protocol witness table accessor for type HealthDataRawSampleType and conformance HealthDataRawSampleType();
  MEMORY[0x25F8891D0](v0 + 728, v33, &type metadata for HealthDataRawSampleType, v34);
  if (*(v0 + 120))
  {
    v31 = *(v32 + 120);
    v29 = *(v32 + 128);
    __swift_project_boxed_opaque_existential_1((v32 + 96), v31);
    v30 = *(v29 + 16);
    *(v32 + 280) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0((v32 + 256));
    v30(v31, v29);
    __swift_destroy_boxed_opaque_existential_1((v32 + 96));
  }

  else
  {
    outlined destroy of Pregnancy?((v32 + 96));
    *(v32 + 256) = 0;
    *(v32 + 264) = 0;
    *(v32 + 272) = 0;
    *(v32 + 280) = 0;
  }

  if (*(v32 + 280))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd, &_sSDys6UInt32Vs5UInt8VGMR);
    if (swift_dynamicCast())
    {
      v27 = *(v32 + 568);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
  }

  else
  {
    outlined destroy of Pregnancy?((v32 + 256));
    v28 = 0;
  }

  *(v32 + 512) = v28;
  if (!*(v32 + 512))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd, &_ss6UInt32V_s5UInt8VtMR);
    _allocateUninitializedArray<A>(_:)();
    Dictionary.init(dictionaryLiteral:)();
    if (*(v32 + 512))
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }
  }

  v1 = *(v32 + 696);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32Vs5UInt8VGMd, &_sSDys6UInt32Vs5UInt8VGMR);
  result = Dictionary.merge(_:uniquingKeysWith:)();
  if (!v1)
  {
    *(v32 + 729) = 2;
    MEMORY[0x25F8891D0](v32 + 729, v33, &type metadata for HealthDataRawSampleType, v34, v35);
    if (*(v32 + 160))
    {
      v26 = *(v32 + 160);
      v24 = *(v32 + 168);
      __swift_project_boxed_opaque_existential_1((v32 + 136), v26);
      v25 = *(v24 + 16);
      *(v32 + 312) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v32 + 288));
      v25(v26, v24);
      __swift_destroy_boxed_opaque_existential_1((v32 + 136));
    }

    else
    {
      outlined destroy of Pregnancy?((v32 + 136));
      *(v32 + 288) = 0;
      *(v32 + 296) = 0;
      *(v32 + 304) = 0;
      *(v32 + 312) = 0;
    }

    if (*(v32 + 312))
    {
      if (swift_dynamicCast())
      {
        v22 = *(v32 + 560);
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
    }

    else
    {
      outlined destroy of Pregnancy?((v32 + 288));
      v23 = 0;
    }

    *(v32 + 520) = v23;
    if (!*(v32 + 520))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_s5UInt8VtMd, &_ss6UInt32V_s5UInt8VtMR);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v32 + 520))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    Dictionary.merge(_:uniquingKeysWith:)();
    *(v32 + 730) = 1;
    MEMORY[0x25F8891D0](v32 + 730, v33, &type metadata for HealthDataRawSampleType, v34, v35);
    if (*(v32 + 200))
    {
      v21 = *(v32 + 200);
      v19 = *(v32 + 208);
      __swift_project_boxed_opaque_existential_1((v32 + 176), v21);
      v20 = *(v19 + 16);
      *(v32 + 344) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v32 + 320));
      v20(v21, v19);
      __swift_destroy_boxed_opaque_existential_1((v32 + 176));
    }

    else
    {
      outlined destroy of Pregnancy?((v32 + 176));
      *(v32 + 320) = 0;
      *(v32 + 328) = 0;
      *(v32 + 336) = 0;
      *(v32 + 344) = 0;
    }

    if (*(v32 + 344))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd, &_sSDys6UInt32VSbGMR);
      if (swift_dynamicCast())
      {
        v17 = *(v32 + 552);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
    }

    else
    {
      outlined destroy of Pregnancy?((v32 + 320));
      v18 = 0;
    }

    *(v32 + 528) = v18;
    if (!*(v32 + 528))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_SbtMd, &_ss6UInt32V_SbtMR);
      _allocateUninitializedArray<A>(_:)();
      Dictionary.init(dictionaryLiteral:)();
      if (*(v32 + 528))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt32VSbGMd, &_sSDys6UInt32VSbGMR);
    Dictionary.merge(_:uniquingKeysWith:)();
    *(v32 + 731) = 3;
    MEMORY[0x25F8891D0](v32 + 731, v33, &type metadata for HealthDataRawSampleType, v34, v35);
    if (*(v32 + 240))
    {
      v16 = *(v32 + 240);
      v14 = *(v32 + 248);
      __swift_project_boxed_opaque_existential_1((v32 + 216), v16);
      v15 = *(v14 + 16);
      *(v32 + 376) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0((v32 + 352));
      v15(v16, v14);
      __swift_destroy_boxed_opaque_existential_1((v32 + 216));
    }

    else
    {
      outlined destroy of Pregnancy?((v32 + 216));
      *(v32 + 352) = 0;
      *(v32 + 360) = 0;
      *(v32 + 368) = 0;
      *(v32 + 376) = 0;
    }

    if (*(v32 + 376))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V_ADtGGMd, &_sSDys5UInt8VSays6UInt32V_ADtGGMR);
      if (swift_dynamicCast())
      {
        v12 = *(v32 + 544);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
    }

    else
    {
      outlined destroy of Pregnancy?((v32 + 352));
      v13 = 0;
    }

    *(v32 + 536) = v13;
    if (!*(v32 + 536))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_Says6UInt32V_ADtGtMd, &_ss5UInt8V_Says6UInt32V_ADtGtMR);
      _allocateUninitializedArray<A>(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd, &_sSays6UInt32V_ABtGMR);
      Dictionary.init(dictionaryLiteral:)();
      if (*(v32 + 536))
      {
        outlined destroy of [(start: UInt32, end: UInt32)]();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V_ABtGMd, &_sSays6UInt32V_ABtGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
    _dictionaryUpCast<A, B, C, D>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd, &_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMR);
    Dictionary.merge(_:uniquingKeysWith:)();
    v11 = *(v32 + 632);
    v10 = *(v32 + 624);
    v9 = *(v32 + 616);
    v8 = *(v32 + 608);

    v3 = CalendarPeriodPrediction.predictHistoricalPeriods(flow:otr:spotting:cycleFactors:)(v8, v9, v10, v11);
    v7 = *(v32 + 724);
    v5 = *(v32 + 716);
    v6 = *(v32 + 576);
    **(v32 + 640) = v3;

    *v6 = v5;
    v6[1] = v7;

    v4 = *(*(v32 + 384) + 8);

    return v4();
  }

  return result;
}

{
  v9 = v0[87];
  v0[48] = v0;

  v1 = v9;
  v0[61] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v8 + 664) + 88))(*(v8 + 672), *(v8 + 656)) == *MEMORY[0x277D413F0])
    {
      v7 = *(v8 + 696);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 5;
      swift_willThrow();

      goto LABEL_7;
    }

    (*(*(v8 + 664) + 8))(*(v8 + 672), *(v8 + 656));
  }

  else
  {
  }

  v6 = *(v8 + 696);
  v3 = v6;
  *(v8 + 496) = v6;
  swift_willThrow();

LABEL_7:

  v4 = *(*(v8 + 384) + 8);

  return v4();
}

BOOL closure #1 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v8 = (*(v3 + 40))(v4);
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  return v8 < (*(v6 + 40))(v7);
}

uint64_t closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 96) = a4;
  *(v4 + 140) = a3;
  *(v4 + 88) = a2;
  *(v4 + 80) = a1;
  *(v4 + 56) = v4;
  *(v4 + 64) = 0;
  *(v4 + 136) = 0;
  *(v4 + 72) = 0;
  *(v4 + 64) = a2;
  *(v4 + 136) = a3;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:), 0);
}

void closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v12 = *(v0 + 140);
  v1 = *(v0 + 88);
  *(v0 + 56) = v0;
  outlined init with copy of HealthDataQuery(v1 + 48, v0 + 16);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  _allocateUninitializedArray<A>(_:)();
  *v2 = 0;
  v2[1] = 3;
  v2[2] = 1;
  v2[3] = 2;
  _finalizeUninitializedArray<A>(_:)();
  v13 = v3;
  *(v0 + 104) = v3;
  v14 = v12 - 550;
  if (v12 < 0x226)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v8 = HyperParams.lmpMaxRange.getter();
  if (v8 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
    return;
  }

  if (v8 > 0xFFFFFFFFLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
    return;
  }

  v4 = *(v9 + 140);
  v7 = v4 - v8;
  if (v4 < v8)
  {
    goto LABEL_13;
  }

  if (v7 >= v14)
  {
    v6 = (*(v11 + 16) + **(v11 + 16));
    v5 = swift_task_alloc();
    *(v9 + 112) = v5;
    *v5 = *(v9 + 56);
    v5[1] = closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);

    v6(v13, __PAIR64__(v7, v14), v10, v11);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
  }
}

uint64_t closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  else
  {

    v3 = closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t closure #3 in closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v1 = v0[15];
  v2 = v0[10];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t closure #39 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  LODWORD(v10) = *a1;
  DWORD2(v10) = v2;
  *&v11 = v3;
  *(&v11 + 1) = v4;
  v9 = a2;
  v6 = *a2;

  v8 = v10;
  v7 = MEMORY[0x25F8897F0](&v8, v6, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);

  return v7 & 1;
}

uint64_t _sSTsE5count5whereSiSb7ElementQzqd__YKXE_tqd__YKs5ErrorRd__lF(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a1;
  v29 = a2;
  v54 = a3;
  v30 = a4;
  v53 = a5;
  v31 = a7;
  v61 = a3;
  v60 = a4;
  v32 = *(a4 - 8);
  v33 = a4 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a5);
  v35 = &v16 - v34;
  v55 = 0;
  v41 = MEMORY[0x277D83880];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, AssociatedTypeWitness);
  v40 = &v16 - v39;
  v42 = (*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v55, v53);
  v43 = &v16 - v42;
  v51 = *(v8 - 8);
  v45 = v8 - 8;
  v44 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v9);
  v10 = &v16 - v44;
  v47 = swift_getAssociatedTypeWitness();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47, v46);
  v52 = &v16 - v50;
  (*(v51 + 16))(v10);
  dispatch thunk of Sequence.makeIterator()();
  v57 = v55;
  v58 = v55;
  for (i = v56; ; i = v21)
  {
    v24 = i;
    v25 = v58;
    v26 = v57;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    v11 = (*(v37 + 48))(v43, 1, AssociatedTypeWitness);
    v27 = v26;
    if (v11 == 1)
    {
      v23 = v27;
      (*(v48 + 8))(v52, v47);
      return v23;
    }

    (*(v37 + 32))(v40, v43, AssociatedTypeWitness);
    v13 = v24;
    v14 = v28(v40, v35);
    v21 = v13;
    v22 = v14;
    if (v13)
    {
      (*(v37 + 8))(v40, AssociatedTypeWitness);
      (*(v48 + 8))(v52, v47);
      (*(v32 + 32))(v31, v35, v30);
      return v20;
    }

    v19 = v22;
    result = (*(v37 + 8))(v40, AssociatedTypeWitness);
    v18 = (v19 & 1) != 0;
    v17 = v25 + v18;
    if (__OFADD__(v25, v18))
    {
      break;
    }

    v57 = v17;
    v58 = v17;
  }

  __break(1u);
  return result;
}

id NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = MEMORY[0x28223BE20](a1, a2);
  v851 = &v939;
  v786 = v30;
  v843 = v29;
  v33 = v32;
  v787._rawValue = v32;
  v35 = v34;
  v788 = v34;
  v37 = v36;
  v789 = v36;
  v39 = v38;
  v790 = v38;
  v41 = v40;
  v848 = v40;
  v842 = v42;
  v846 = v43;
  v845 = v31;
  v835 = a28;
  v791 = a28;
  v839 = a27;
  v792 = a27;
  v838 = a26;
  v793 = a26;
  v837 = a25;
  v794._rawValue = a25;
  v834 = a24;
  v795._rawValue = a24;
  v833 = a23;
  v796._rawValue = a23;
  v832 = a22;
  v797._rawValue = a22;
  v831 = a21;
  v798._rawValue = a21;
  v841 = a20;
  v799._rawValue = a20;
  v840 = a19;
  v800._rawValue = a19;
  v830 = a18;
  v801._rawValue = a18;
  v836 = a17;
  v802._rawValue = a17;
  v829 = a16;
  v803._rawValue = a16;
  v828 = a15;
  v804._rawValue = a15;
  v827 = a14;
  v805._rawValue = a14;
  v826 = a13;
  v806._rawValue = a13;
  v825 = a12;
  v807._rawValue = a12;
  v824 = a11;
  v808._rawValue = a11;
  v809._rawValue = a10;
  v810._rawValue = a9;
  v847 = a29;
  v815 = 0;
  v974 = 0;
  v973 = 0;
  v972 = 0;
  v971 = 0;
  v970 = 0;
  v969 = 0;
  v968 = 0;
  v967 = 0;
  v966 = 0;
  v965 = 0;
  v964 = 0;
  v963 = 0;
  v962 = 0;
  v961 = 0;
  v960 = 0;
  v959 = 0;
  v958 = 0;
  v956 = 0;
  v955 = 0;
  v954 = 0;
  v953._rawValue = 0;
  v949[24] = 0;
  v946 = 0;
  v938 = 0;
  v934 = 0;
  v933 = 0;
  v932 = 0;
  v931 = 0;
  v928 = 0;
  v927 = 0;
  v926 = 0;
  v925 = 0;
  v921 = 0;
  v920 = 0;
  v919 = 0;
  v918 = 0;
  v917 = 0;
  v908 = 0;
  v887 = 0;
  v882 = 0;
  v879 = 0;
  v876 = 0;
  v873 = 0;
  v872 = 0;
  v869 = 0;
  v868 = 0;
  v867 = 0;
  v862 = 0;
  v859 = 0;
  v811 = type metadata accessor for EspressoFunction();
  v812 = *(v811 - 8);
  v813 = v812;
  MEMORY[0x28223BE20](0, v811);
  v814 = &v364 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v974 = v814;
  v816 = type metadata accessor for Logger();
  v817 = *(v816 - 8);
  v818 = v817;
  v820 = *(v817 + 64);
  v45 = MEMORY[0x28223BE20](v815, v816);
  v822 = (v820 + 15) & 0xFFFFFFFFFFFFFFF0;
  v819 = &v364 - v822;
  v46 = MEMORY[0x28223BE20](v45, &v364 - v822);
  v821 = &v364 - v822;
  MEMORY[0x28223BE20](v46, &v364 - v822);
  v823 = &v364 - v822;
  v47 = type metadata accessor for String.Encoding();
  v48 = v830;
  v844 = &v364 - ((MEMORY[0x28223BE20](*(*(v47 - 8) + 64), v836) + 15) & 0xFFFFFFFFFFFFFFF0);
  v973 = v845;
  v971 = v846;
  v972 = v842;
  v970 = v41;
  v969 = v39;
  v968 = v37;
  v967 = v35;
  v975 = v33;
  v976 = a9;
  v977 = a10;
  v978 = v49;
  v979 = v50;
  v980 = v51;
  v981 = v52;
  v982 = v53;
  v983 = v54;
  v984 = v55;
  v985 = v48;
  v986 = v840;
  v987 = v841;
  v988 = v56;
  v989 = v57;
  v990 = v58;
  v991 = v59;
  v992 = v837;
  v993 = v838;
  v994 = v839;
  v995 = v60;
  v966 = v847;
  v965 = v843;

  v964 = v847;
  v850 = NightingaleDPFLRunner.performanceMeasure.getter();
  v852 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v61 = HyperParams.trainingEngine.getter();
  v62 = v851;
  v63 = v852;
  *(v851 + 687) = v61 & 1;
  *(v62 + 686) = v63;
  lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  if (== infix<A>(_:_:)())
  {
    v64 = v786;
    static OnDeviceML.extendMorpheus()();
    v784 = v64;
    v785 = v64;
    if (v64)
    {
      v413 = v785;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v413;
      v414 = v413;
      return result;
    }

    static Math.extendMorpheus()();
    v782 = 0;
    v783 = 0;
    HyperParams.morpheusTrainingProgramFileName.getter();
    v778 = v65;
    v66 = dispatch thunk of PFLTask.attachmentPath(name:)();
    v781 = v67;
    v779 = v66;
    v780 = v67;

    if (v781)
    {
      v776 = v779;
      v777 = v780;
      v769 = v780;
      v768 = v779;
      v770 = v782;
      v920 = v779;
      v921 = v780;
      static String.Encoding.utf8.getter();
      v68 = v770;
      v69 = String.init(contentsOfFile:encoding:)();
      v771 = v68;
      v772 = v69;
      v773 = v70;
      v774 = v68;
      if (v68)
      {
        v411 = 0;
        v412 = 0;

        v765 = v411;
        v766 = v411;
        v767 = v412;
      }

      else
      {
        v765 = v772;
        v766 = v773;
        v767 = 0;
      }

      v762 = v767;
      v763 = v766;
      v764 = v765;
      if (v766)
      {
        v760 = v764;
        v761 = v763;
        v752 = v763;
        v753 = v764;
        v918 = v764;
        v919 = v763;
        static PFLLogging.plugin.getter();
        v758 = Logger.logObject.getter();
        v754 = v758;
        v757 = static os_log_type_t.debug.getter();
        v755 = v757;
        v756 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v759 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v758, v757))
        {
          v750 = v762;
          v742 = static UnsafeMutablePointer.allocate(capacity:)();
          v738 = v742;
          v739 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v740 = 0;
          v743 = createStorage<A>(capacity:type:)(0, v739, v739);
          v741 = v743;
          v744 = createStorage<A>(capacity:type:)(v740, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v856[0] = v742;
          v855 = v743;
          v854 = v744;
          v745 = 0;
          v746 = v856;
          serialize(_:at:)(0, v856);
          serialize(_:at:)(v745, v746);
          v853 = v759;
          v747 = &v364;
          MEMORY[0x28223BE20](&v364, v72);
          v748 = &v364 - 6;
          *(&v364 - 4) = v73;
          *(&v364 - 3) = &v855;
          *(&v364 - 2) = &v854;
          v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          v74 = v750;
          Sequence.forEach(_:)();
          v751 = v74;
          if (v74)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_25C4D8000, v754, v755, "Using Morpheus to train.", v738, 2u);
            v736 = 0;
            destroyStorage<A>(_:count:)(v741, 0, v739);
            destroyStorage<A>(_:count:)(v744, v736, MEMORY[0x277D84F70] + 8);
            MEMORY[0x25F8899D0](v738, MEMORY[0x277D84B78]);

            v737 = v751;
          }
        }

        else
        {

          v737 = v762;
        }

        v732 = v737;

        v730 = *(v818 + 8);
        v731 = (v818 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v730(v823, v816);
        type metadata accessor for MorpheusProgram();
        v75 = v732;
        v76 = static MorpheusProgram.fromDSL(_:)();
        v733 = v75;
        v734 = v76;
        v735 = v75;
        if (v75)
        {
          v638 = v735;
          v639 = 0;
          goto LABEL_101;
        }

        v700 = v734;
        v724 = 0;
        v908 = v734;
        v716 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
        v701 = v716;
        v702 = 20;
        v709 = _allocateUninitializedArray<A>(_:)();
        v708 = v77;
        v704 = 15;
        v722 = 1;
        v78 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10", 0xFuLL, 1);
        *v708 = v78;
        v706 = &v975;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v975, &v907);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
        v80 = v702;
        v81 = v708;
        rawValue = v787._rawValue;
        v83 = v722;
        v707 = v79;
        v708[2]._object = v79;
        v81[1]._countAndFlagsBits = rawValue;
        v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10Stats", v80, v83);
        v85 = v706;
        v708[3] = v84;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v85, &v906);
        v86 = v708;
        v87 = v810._rawValue;
        v88 = v722;
        v708[5]._object = v707;
        v86[4]._countAndFlagsBits = v87;
        v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10", 0x11uLL, v88);
        v90 = v706;
        v708[6] = v89;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v90, &v905);
        v91 = v708;
        v92 = v809._rawValue;
        v93 = v722;
        v708[8]._object = v707;
        v91[7]._countAndFlagsBits = v92;
        v705 = 22;
        v94 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10Stats", 0x16uLL, v93);
        v95 = v706;
        v708[9] = v94;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v95, &v904);
        v96 = v708;
        v97 = v808._rawValue;
        v98 = v722;
        v708[11]._object = v707;
        v96[10]._countAndFlagsBits = v97;
        v703 = 10;
        v99 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSM", 0xAuLL, v98);
        v100 = v706;
        v708[12] = v99;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v100, &v903);
        v101 = v704;
        v102 = v708;
        v103 = v807._rawValue;
        v104 = v722;
        v708[14]._object = v707;
        v102[13]._countAndFlagsBits = v103;
        v105 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSMStats", v101, v104);
        v106 = v706;
        v708[15] = v105;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v106, &v902);
        v107 = v703;
        v108 = v708;
        v109 = v806._rawValue;
        v110 = v722;
        v708[17]._object = v707;
        v108[16]._countAndFlagsBits = v109;
        v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSS", v107, v110);
        v112 = v706;
        v708[18] = v111;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v112, &v901);
        v113 = v704;
        v114 = v708;
        v115 = v805._rawValue;
        v116 = v722;
        v708[20]._object = v707;
        v114[19]._countAndFlagsBits = v115;
        v117 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSSStats", v113, v116);
        v118 = v706;
        v708[21] = v117;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v118, &v900);
        v119 = v708;
        v120 = v804._rawValue;
        v121 = v722;
        v708[23]._object = v707;
        v119[22]._countAndFlagsBits = v120;
        v122 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStart", 0x1FuLL, v121);
        v123 = v706;
        v708[24] = v122;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v123, &v899);
        v124 = v708;
        v125 = v803._rawValue;
        v126 = v722;
        v708[26]._object = v707;
        v124[25]._countAndFlagsBits = v125;
        v127 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStartStats", 0x24uLL, v126);
        v128 = v706;
        v708[27] = v127;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v128, &v898);
        v129 = v703;
        v130 = v708;
        v131 = v802._rawValue;
        v132 = v722;
        v708[29]._object = v707;
        v130[28]._countAndFlagsBits = v131;
        v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWT", v129, v132);
        v134 = v706;
        v708[30] = v133;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v134, &v897);
        v135 = v704;
        v136 = v708;
        v137 = v801._rawValue;
        v138 = v722;
        v708[32]._object = v707;
        v136[31]._countAndFlagsBits = v137;
        v139 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWTStats", v135, v138);
        v140 = v706;
        v708[33] = v139;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v140, &v896);
        v141 = v703;
        v142 = v708;
        v143 = v800._rawValue;
        v144 = v722;
        v708[35]._object = v707;
        v142[34]._countAndFlagsBits = v143;
        v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRV", v141, v144);
        v146 = v706;
        v708[36] = v145;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v146, &v895);
        v147 = v704;
        v148 = v708;
        v149 = v799._rawValue;
        v150 = v722;
        v708[38]._object = v707;
        v148[37]._countAndFlagsBits = v149;
        v151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRVStats", v147, v150);
        v152 = v706;
        v708[39] = v151;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v152, &v894);
        v153 = v705;
        v154 = v708;
        v155 = v798._rawValue;
        v156 = v722;
        v708[41]._object = v707;
        v154[40]._countAndFlagsBits = v155;
        v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRate", v153, v156);
        v158 = v706;
        v708[42] = v157;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v158, &v893);
        v159 = v708;
        v160 = v797._rawValue;
        v161 = v722;
        v708[44]._object = v707;
        v159[43]._countAndFlagsBits = v160;
        v162 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRateStats", 0x1BuLL, v161);
        v163 = v706;
        v708[45] = v162;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v163, &v892);
        v164 = v708;
        v165 = v796._rawValue;
        v166 = v722;
        v708[47]._object = v707;
        v164[46]._countAndFlagsBits = v165;
        v167 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2", 0xBuLL, v166);
        v168 = v706;
        v708[48] = v167;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v168, &v891);
        v169 = v708;
        v170 = v795._rawValue;
        v171 = v722;
        v708[50]._object = v707;
        v169[49]._countAndFlagsBits = v170;
        v172 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2Stats", 0x10uLL, v171);
        v173 = v706;
        v708[51] = v172;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v173, &v890);
        v174 = v708;
        v175 = v794._rawValue;
        v176 = v722;
        v708[53]._object = v707;
        v174[52]._countAndFlagsBits = v175;
        v177 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, v176);
        v178 = v706;
        v708[54] = v177;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v178, &v889);
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
        v180 = v708;
        v181 = v793;
        v182 = v722;
        v708[56]._object = v179;
        v180[55]._countAndFlagsBits = v181;
        v183 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, v182);
        v184 = v706;
        v708[57] = v183;
        outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v184, &v888);
        v185 = v708;
        v186 = v792;
        v708[59]._object = v707;
        v185[58]._countAndFlagsBits = v186;
        _finalizeUninitializedArray<A>(_:)();
        v710 = v187;

        v719 = MEMORY[0x277D84F70] + 8;
        v721 = MEMORY[0x277D837D0];
        v720 = MEMORY[0x277D837E0];
        v712 = Dictionary.init(dictionaryLiteral:)();
        v711 = v712;
        v887 = v712;
        v715 = _allocateUninitializedArray<A>(_:)();
        v714 = v188;

        v717 = 0;
        v189 = type metadata accessor for PFLTask();
        v190 = v845;
        v191 = v714;
        v714[3] = v189;
        *v191 = v190;

        v192 = type metadata accessor for HyperParams();
        v193 = v848;
        v194 = v714;
        v714[7] = v192;
        v194[4] = v193;

        v195 = v846;
        v196 = v842;
        v197 = v714;
        v714[11] = v721;
        v197[8] = v195;
        v197[9] = v196;

        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
        v199 = v712;
        v200 = v714;
        v713 = v198;
        v714[15] = v198;
        v200[12] = v199;

        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
        v202 = v790;
        v203 = v714;
        v714[19] = v201;
        v203[16] = v202;

        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
        v205 = v789;
        v206 = v788;
        v207 = v714;
        v714[23] = v204;
        v207[20] = v205;
        v207[27] = MEMORY[0x277D83B88];
        v207[24] = v206;
        _finalizeUninitializedArray<A>(_:)();
        v725 = v208;
        v718 = v208;
        _allocateUninitializedArray<A>(_:)();
        v726 = Dictionary.init(dictionaryLiteral:)();
        v723 = v726;
        v209 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("train", 5uLL, v722);
        v210 = v724;
        v727 = v209._object;
        dispatch thunk of MorpheusProgram.execute(args:keywords:function:)();
        v728 = v210;
        v729 = v210;
        if (v210)
        {
          v371 = v729;
          v372 = 0;

          v638 = v371;
          v639 = v372;
          goto LABEL_101;
        }

        v884[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
        v884[0] = swift_allocObject();
        outlined init with copy of Any?(v886, v884[0] + 16);
        v699 = &v885;
        v698 = v884;
        static MorpheusUtils.unwrapMorpheusResult(result:)();
        __swift_destroy_boxed_opaque_existential_1(v698);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
        if (swift_dynamicCast())
        {
          v697 = v883;
        }

        else
        {
          v697 = 0;
        }

        v696 = v697;
        if (v697)
        {
          v695 = v696;
          v694 = v696;
          v882 = v696;
          if (MEMORY[0x25F8895B0]() >= 5)
          {
            v691 = MEMORY[0x277D84F70] + 8;
            v692 = &v881;
            v690 = 0;
            Array.subscript.getter();
            v693 = type metadata accessor for NSNumber();
            if (swift_dynamicCast())
            {
              v689 = v880;
            }

            else
            {
              v689 = 0;
            }

            v688 = v689;
            if (v689)
            {
              v687 = v688;
              v683 = v688;
              [v688 floatValue];
              v684 = v211;

              v685 = v684;
              v686 = 0;
            }

            else
            {
              v685 = 0;
              v686 = 1;
            }

            v682 = v685;
            if (v686)
            {
              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v582 = 0;
              v583 = swift_allocError();
              *v246 = 87;
              swift_willThrow();
              v584 = v582;

              outlined destroy of Pregnancy?(v886);

              v638 = v583;
              v639 = v584;
              goto LABEL_101;
            }

            v681 = v682;
            v677 = v682;
            v879 = v682;
            v679 = MEMORY[0x277D84F70] + 8;
            v678 = &v878;
            Array.subscript.getter();
            v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, _sSaySo8NSNumberCGMR);
            if (swift_dynamicCast())
            {
              v676 = v877;
            }

            else
            {
              v676 = 0;
            }

            v675 = v676;
            if (v676)
            {
              v674 = v675;
              v671 = v728;
              v856[1] = v675;
              KeyPath = swift_getKeyPath();
              v669 = KeyPath;

              v212 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
              v213 = v671;
              v215 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), KeyPath, v680, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v212, MEMORY[0x277D84AC0], v214);
              v672 = v213;
              v673 = v215;
              if (v213)
              {

                __break(1u);
                goto LABEL_111;
              }

              v666 = v673;

              outlined destroy of [(start: UInt32, end: UInt32)]();
              v667 = v666;
              v668 = v672;
            }

            else
            {
              v667 = 0;
              v668 = v728;
            }

            v664 = v668;
            v665 = v667;
            if (!v667)
            {
              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v585 = 0;
              v586 = swift_allocError();
              *v245 = 88;
              swift_willThrow();
              v587 = v585;

              outlined destroy of Pregnancy?(v886);

              v638 = v586;
              v639 = v587;
              goto LABEL_101;
            }

            v663 = v665;
            v662 = v665;
            v876 = v665;
            if ((HyperParams.evalBeforeTrain.getter() & 1) == 0)
            {
              v643 = v664;
              goto LABEL_55;
            }

            v661 = MEMORY[0x277D84F70] + 8;
            v660 = v864;
            Array.subscript.getter();
            if (swift_dynamicCast())
            {
              v659 = v863;
            }

            else
            {
              v659 = 0;
            }

            v658 = v659;
            if (!v659)
            {
              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v632 = 0;
              v633 = swift_allocError();
              *v220 = 89;
              swift_willThrow();
              v634 = v632;

              outlined destroy of Pregnancy?(v886);

              v638 = v633;
              v639 = v634;
              goto LABEL_101;
            }

            v657 = v658;
            v216 = v664;
            v655 = v658;
            v862 = v658;

            Dictionary.merge(_:uniquingKeysWith:)();
            v656 = v216;
            if (!v216)
            {
              v654 = MEMORY[0x277D84F70] + 8;
              v653 = &v861;
              Array.subscript.getter();
              if (swift_dynamicCast())
              {
                v652 = v860;
              }

              else
              {
                v652 = 0;
              }

              v651 = v652;
              if (v652)
              {
                v650 = v651;
                v646 = v651;
                [v651 floatValue];
                v647 = v217;

                v648 = v647;
                v649 = 0;
              }

              else
              {
                v648 = 0;
                v649 = 1;
              }

              v645 = v648;
              if (v649)
              {
                lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                v635 = 0;
                v636 = swift_allocError();
                *v219 = 90;
                swift_willThrow();
                v637 = v635;

                outlined destroy of Pregnancy?(v886);

                v638 = v636;
                v639 = v637;
                goto LABEL_101;
              }

              v644 = v645;
              v640 = v645;
              v859 = v645;
              v218 = NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
              v641 = *v218;
              v642 = *(v218 + 1);

              v858 = MEMORY[0x277D83A90];
              v857[0] = v640;
              v856[2] = v641;
              v856[3] = v642;
              Dictionary.subscript.setter();

              v643 = v656;
LABEL_55:
              v629 = v643;
              v631 = MEMORY[0x277D84F70] + 8;
              v630 = &v875;
              Array.subscript.getter();
              if (swift_dynamicCast())
              {
                v628 = v874;
              }

              else
              {
                v628 = 0;
              }

              v627 = v628;
              if (v628)
              {
                v626 = v627;
                v622 = v627;
                [v627 floatValue];
                v623 = v221;

                v624 = v623;
                v625 = 0;
              }

              else
              {
                v624 = 0;
                v625 = 1;
              }

              v621 = v624;
              if ((v625 & 1) == 0)
              {
                v620 = v621;
                v615 = v621;
                v873 = v621;
                v618 = NightingaleDPFLRunner.performanceMeasure.getter();
                v616 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
                dispatch thunk of PerformanceMeasure.finish(_:)();
                v619 = v222;
                v617 = v222;

                v872 = v619;
                v223 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
                NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_trainingCompleted, v223);
                if (HyperParams.collectL2Norm.getter())
                {
                  v225 = NightingaleDPFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();
                  v613 = *v225;
                  v614 = *(v225 + 1);

                  static PFLStats.l2Norm(_:)();
                  v866 = MEMORY[0x277D83A90];
                  v865[0] = v226;
                  v864[4] = v613;
                  v864[5] = v614;
                  Dictionary.subscript.setter();
                }

                v227 = v629;
                _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), 0, v662, MEMORY[0x277D83A90], MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v224);
                v612 = v227;
                if (!v227)
                {
                  v610 = 0;
                  v598 = v870;
                  v599 = v871;
                  v868 = v870;
                  v869 = v871;
                  v601 = NightingaleDPFLRunner.performanceMeasure.getter();
                  v600 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1)._object;
                  dispatch thunk of PerformanceMeasure.finish(_:)();
                  v604 = v228;

                  v867 = v604;
                  v609 = _allocateUninitializedArray<A>(_:)();
                  v608 = v229;
                  v230 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v230, v608);
                  v231 = v617;
                  v232 = v608;
                  v603 = MEMORY[0x277D839F8];
                  v608[5] = MEMORY[0x277D839F8];
                  v232[2] = v231;
                  v602 = v232 + 6;
                  v233 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
                  outlined init with copy of String(v233, v602);
                  v234 = v604;
                  v235 = v608;
                  v608[11] = v603;
                  v235[8] = v234;
                  v605 = v235 + 12;
                  v236 = NightingaleDPFLRunner.keyMetricsLoss.unsafeMutableAddressor();
                  outlined init with copy of String(v236, v605);
                  v237 = v677;
                  v238 = v608;
                  v607 = MEMORY[0x277D83A90];
                  v608[17] = MEMORY[0x277D83A90];
                  *(v238 + 28) = v237;
                  v606 = v238 + 18;
                  v239 = NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();
                  outlined init with copy of String(v239, v606);
                  v240 = v608;
                  v241 = v615;
                  v608[23] = v607;
                  *(v240 + 40) = v241;
                  _finalizeUninitializedArray<A>(_:)();
                  Dictionary.init(dictionaryLiteral:)();
                  v242 = v610;
                  Dictionary.merge(_:uniquingKeysWith:)();
                  v611 = v242;
                  if (!v242)
                  {
                    v595 = &v364;
                    MEMORY[0x28223BE20](&v364, v243);
                    *(&v364 - 2) = &v964;
                    NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(12, 1, (&v364 - 4), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
                    v596 = 0;
                    v597 = 0;
                    type metadata accessor for PFLTaskResult();
                    v591 = v964;

                    outlined copy of Data._Representation(v598, v599);
                    v592 = PFLTaskResult.__allocating_init(json:vector:)();
                    outlined consume of Data._Representation(v598, v599);

                    outlined destroy of Pregnancy?(v886);

                    outlined destroy of [(start: UInt32, end: UInt32)]();
                    v593 = v592;
                    v594 = v596;
                    return v593;
                  }

                  goto LABEL_113;
                }

LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
                v369 = v597;
                v370 = 0;
                outlined consume of Data._Representation(v598, v599);

                outlined destroy of Pregnancy?(v886);

                v638 = v369;
                v639 = v370;
                goto LABEL_101;
              }

              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              v588 = 0;
              v589 = swift_allocError();
              *v244 = 91;
              swift_willThrow();
              v590 = v588;

              outlined destroy of Pregnancy?(v886);

              v638 = v589;
              v639 = v590;
LABEL_101:
              v345 = v819;
              v392 = v639;
              v553 = v638;
              v346 = v638;
              v917 = v553;
              v347 = Logging.default.unsafeMutableAddressor();
              v573 = *(v818 + 16);
              v572 = (v818 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
              v573(v345, v347, v816);
              v348 = v553;
              v400 = 7;
              v398 = swift_allocObject();
              *(v398 + 16) = v553;
              default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

              v410 = Logger.logObject.getter();
              v393 = v410;
              v409 = static os_log_type_t.error.getter();
              v394 = v409;
              v395 = 17;
              v404 = swift_allocObject();
              v396 = v404;
              *(v404 + 16) = 64;
              v405 = swift_allocObject();
              v397 = v405;
              *(v405 + 16) = 8;
              v399 = 32;
              v349 = swift_allocObject();
              v350 = v398;
              v401 = v349;
              *(v349 + 16) = partial apply for implicit closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:);
              *(v349 + 24) = v350;
              v351 = swift_allocObject();
              v352 = v401;
              v402 = v351;
              *(v351 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
              *(v351 + 24) = v352;
              v353 = swift_allocObject();
              v354 = v402;
              v408 = v353;
              v403 = v353;
              *(v353 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
              *(v353 + 24) = v354;
              v406 = _allocateUninitializedArray<A>(_:)();
              v407 = v355;

              v356 = v404;
              v357 = v407;
              *v407 = partial apply for closure #1 in OSLogArguments.append(_:);
              v357[1] = v356;

              v358 = v405;
              v359 = v407;
              v407[2] = partial apply for closure #1 in OSLogArguments.append(_:);
              v359[3] = v358;

              v360 = v407;
              v361 = v408;
              v407[4] = partial apply for closure #1 in OSLogArguments.append(_:);
              v360[5] = v361;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v410, v409))
              {
                v389 = v392;
                v384 = static UnsafeMutablePointer.allocate(capacity:)();
                v381 = v384;
                v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v387 = 1;
                v385 = createStorage<A>(capacity:type:)(1, v382, v382);
                v383 = v385;
                v386 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v913[0] = v384;
                v912 = v385;
                v911 = v386;
                v388 = v913;
                serialize(_:at:)(2, v913);
                serialize(_:at:)(v387, v388);
                v362 = v389;
                v909 = partial apply for closure #1 in OSLogArguments.append(_:);
                v910 = v396;
                closure #1 in osLogInternal(_:log:type:)(&v909, v388, &v912, &v911);
                v390 = v362;
                v391 = v362;
                if (v362)
                {
                  v379 = 0;

                  __break(1u);
                }

                else
                {
                  v909 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v910 = v397;
                  closure #1 in osLogInternal(_:log:type:)(&v909, v913, &v912, &v911);
                  v377 = 0;
                  v378 = 0;
                  v909 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v910 = v403;
                  closure #1 in osLogInternal(_:log:type:)(&v909, v913, &v912, &v911);
                  v375 = 0;
                  v376 = 0;
                  _os_log_impl(&dword_25C4D8000, v393, v394, "Error executing Morpheus program for train: %@.", v381, 0xCu);
                  destroyStorage<A>(_:count:)(v383, 1, v382);
                  destroyStorage<A>(_:count:)(v386, 0, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x25F8899D0](v381, MEMORY[0x277D84B78]);

                  v380 = v375;
                }
              }

              else
              {

                v380 = v392;
              }

              v557 = v380;

              v730(v819, v816);
              if ((HyperParams.trainingFallbackToNative.getter() & 1) == 0)
              {
                v363 = v553;
                v373 = _convertErrorToNSError(_:)();
                v374 = [v373 code];

                NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_trainingCompleted, v374);
                swift_willThrow();

                outlined destroy of [(start: UInt32, end: UInt32)]();
                result = v553;
                v414 = v553;
                return result;
              }

              v248 = v821;
              v249 = Logging.default.unsafeMutableAddressor();
              v573(v248, v249, v816);
              v577 = Logger.logObject.getter();
              v574 = v577;
              v576 = static os_log_type_t.info.getter();
              v575 = v576;
              v578 = _allocateUninitializedArray<A>(_:)();
              if (os_log_type_enabled(v577, v576))
              {
                v570 = v557;
                v562 = static UnsafeMutablePointer.allocate(capacity:)();
                v558 = v562;
                v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v560 = 0;
                v563 = createStorage<A>(capacity:type:)(0, v559, v559);
                v561 = v563;
                v564 = createStorage<A>(capacity:type:)(v560, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v916 = v562;
                v915 = v563;
                v914 = v564;
                v565 = 0;
                v566 = &v916;
                serialize(_:at:)(0, &v916);
                serialize(_:at:)(v565, v566);
                v913[1] = v578;
                v567 = &v364;
                MEMORY[0x28223BE20](&v364, v250);
                v568 = &v364 - 6;
                *(&v364 - 4) = v251;
                *(&v364 - 3) = &v915;
                *(&v364 - 2) = &v914;
                v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                v252 = v570;
                Sequence.forEach(_:)();
                v571 = v252;
                if (v252)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&dword_25C4D8000, v574, v575, "Fallback to use native train.", v558, 2u);
                  v555 = 0;
                  destroyStorage<A>(_:count:)(v561, 0, v559);
                  destroyStorage<A>(_:count:)(v564, v555, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x25F8899D0](v558, MEMORY[0x277D84B78]);

                  v556 = v571;
                }
              }

              else
              {

                v556 = v557;
              }

              v554 = v556;

              v730(v821, v816);

              v775 = v554;
              goto LABEL_80;
            }

LABEL_111:
            __break(1u);
            goto LABEL_112;
          }
        }

        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v579 = 0;
        v580 = swift_allocError();
        *v247 = 86;
        swift_willThrow();
        v581 = v579;
        outlined destroy of Pregnancy?(v886);

        v638 = v580;
        v639 = v581;
        goto LABEL_101;
      }

      v775 = v762;
    }

    else
    {
      v775 = v782;
    }

LABEL_80:
    v552 = v775;
    goto LABEL_82;
  }

  v552 = v786;
LABEL_82:
  v512 = v552;
  v546 = HyperParams.labelName.getter();
  v545 = v253;
  v513 = v546;
  v514 = v253;
  v962 = v546;
  v963 = v253;
  v515 = HyperParams.lossName.getter();
  v516 = v254;
  v960 = v515;
  v961 = v254;
  v517 = HyperParams.outputName.getter();
  v518 = v255;
  v958 = v517;
  v959 = v255;
  v544 = &v975;
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v975, &v957);
  v520 = MEMORY[0x25F8895B0](v792, MEMORY[0x277D83A90]);
  v519 = v520;
  v956 = v520;

  v256 = HyperParams.batchSize.getter();
  v521 = static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(v520, v256);
  v522 = v257;
  v955 = v521;
  v954 = v257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd, &_sSS_SaySfGtMR);
  v523 = _allocateUninitializedArray<A>(_:)();
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v953._rawValue = Dictionary.init(dictionaryLiteral:)();
  v525 = HyperParams.isDaySHRRequired()();
  v526 = *HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();

  v541 = &v953;
  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v525, v787, v810, v526, &v953);

  v527 = HyperParams.isNightSHRRequired()();
  v528 = *HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v527, v809, v808, v528, v541);

  v529 = HyperParams.isPSMRequired()();
  v530 = *HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v529, v807, v806, v530, v541);

  v531 = HyperParams.isPSSRequired()();
  v532 = *HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v531, v805, v804, v532, v541);

  v533 = HyperParams.isSWTRequired()();
  v534 = *HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v533, v801, v800, v534, v541);

  PeriodStart = HyperParams.isDaysSinceLastPeriodStartRequired()();
  v536 = *HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(PeriodStart, v803, v802, v536, v541);

  v537 = HyperParams.isHRVRequired()();
  v538 = *HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v537, v799, v798, v538, v541);

  v539 = HyperParams.isRespiratoryRateRequired()();
  v540 = *HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v539, v797, v796, v540, v541);

  v258 = HyperParams.isSpO2Required()();
  v259 = v541;
  v542 = v258;
  v543 = *HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v542, v795, v794, v543, v259);

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v544, &v952);
  v951[7] = v792;
  v951[5] = v546;
  v951[6] = v545;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
  Dictionary.subscript.setter();

  v547 = HyperParams.modelRepresentation.getter();
  v550 = v260;
  v261 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
  v548 = *v261;
  v549 = *(v261 + 1);

  v551 = MEMORY[0x25F889340](v547, v550, v548, v549);

  if (v551)
  {
    v511 = type metadata accessor for EspressoEIRTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v262 = EspressoEIRTrainer.__allocating_init(_:)();
    v922[3] = v511;
    v922[4] = MEMORY[0x277D413C0];
    v922[0] = v262;
    outlined init with take of HealthDataQuery(v922, v951);
  }

  else
  {
    v510 = type metadata accessor for EspressoMILTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v263 = EspressoMILTrainer.__allocating_init(_:)();
    v950[3] = v510;
    v950[4] = MEMORY[0x277D413D0];
    v950[0] = v263;
    outlined init with take of HealthDataQuery(v950, v951);
  }

  v264 = HyperParams.evalBeforeTrain.getter();
  v509 = v264;
  *(v851 + 152) = v264 & 1;
  if (v264)
  {
    v507 = _allocateUninitializedArray<A>(_:)();
    v506 = v265;
    static EspressoFunction.evaluation.getter();
    static EspressoFunction.training.getter();
    _finalizeUninitializedArray<A>(_:)();
    v508 = v266;
    lazy protocol witness table accessor for type EspressoFunction and conformance EspressoFunction();
    SetAlgebra<>.init(arrayLiteral:)();
  }

  else
  {
    static EspressoFunction.training.getter();
  }

  v503 = v512;
  v497 = v848 + 24;
  v498 = 32;
  v496 = v949;
  v501 = 0;
  swift_beginAccess();
  v495 = *(v848 + 24);

  swift_endAccess();
  v499 = &v948;
  swift_beginAccess();
  v500 = *(v848 + 24);

  swift_endAccess();
  v947 = v500;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v267 = lazy protocol witness table accessor for type [String] and conformance [A]();
  v268 = v503;
  v270 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #5 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v501, v502, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v267, MEMORY[0x277D84AC0], v269);
  v504 = v268;
  v505 = v270;
  if (v268)
  {
    __break(1u);
    goto LABEL_115;
  }

  v475 = v505;
  v489 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v484 = MEMORY[0x277D837D0];
  v480 = static Array.+ infix(_:_:)();

  v476 = _allocateUninitializedArray<A>(_:)();
  v477 = v271;

  v272 = v477;
  v273 = v514;
  *v477 = v513;
  v272[1] = v273;
  _finalizeUninitializedArray<A>(_:)();
  v478 = v274;
  v487 = static Array.+ infix(_:_:)();
  v479 = v487;

  v946 = v487;
  v481 = v943;
  outlined init with copy of HealthDataQuery(v951, v943);
  v490 = v944;
  v491 = v945;
  v486 = __swift_project_boxed_opaque_existential_1(v481, v944);
  v482 = _allocateUninitializedArray<A>(_:)();
  v483 = v275;

  v276 = v516;
  v277 = v483;
  *v483 = v515;
  v277[1] = v276;

  v278 = v483;
  v279 = v518;
  v483[2] = v517;
  v278[3] = v279;
  _finalizeUninitializedArray<A>(_:)();
  v488 = v280;
  v485 = v280;
  v281 = HyperParams.weightNames.getter();
  v282 = v489;
  v492 = v281;
  dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
  v493 = v282;
  v494 = v282;
  if (v282)
  {
LABEL_115:
    v368 = v494;

    __swift_destroy_boxed_opaque_existential_1(v943);

    (*(v813 + 8))(v814, v811);
    __swift_destroy_boxed_opaque_existential_1(v951);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v368;
    v414 = v368;
    return result;
  }

  v470 = 0;

  __swift_destroy_boxed_opaque_existential_1(v943);
  v468 = v940;
  outlined init with copy of HealthDataQuery(v951, v940);
  v471 = v941;
  v472 = v942;
  v469 = __swift_project_boxed_opaque_existential_1(v468, v941);
  v283 = HyperParams.learningRate.getter();
  v284 = v470;
  *&v939 = v283;
  *(v851 + 4) = 0;
  dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
  v473 = v284;
  v474 = v284;
  if (v284)
  {
    v367 = v474;
    __swift_destroy_boxed_opaque_existential_1(v940);

    (*(v813 + 8))(v814, v811);
    __swift_destroy_boxed_opaque_existential_1(v951);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v367;
    v414 = v367;
    return result;
  }

  v462 = 0;
  __swift_destroy_boxed_opaque_existential_1(v940);
  v285 = v462;
  v464 = v953._rawValue;
  v463 = v953._rawValue;

  v465 = &v364;
  MEMORY[0x28223BE20](&v364, v286);
  *(&v364 - 2) = v287;
  v288 = Dictionary.mapValues<A>(_:)();
  v466 = v285;
  v467 = v288;
  if (v285)
  {
    __break(1u);
    goto LABEL_118;
  }

  v289 = v848;
  v455 = v467;
  v459 = 0;

  v938 = v455;
  v457 = &v936;
  v449 = &v936;
  v450 = &v937;
  v451 = &v937 + 1;

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v975, &v935);

  v290 = v975;
  v291 = v976;
  v292 = v977;
  v293 = v978;
  v294 = v979;
  v295 = v980;
  v296 = v989;
  v453 = v990;
  v454 = v991;
  v452 = &v364;
  v297 = MEMORY[0x28223BE20](v988, v987);
  v298 = v790;
  v299 = v789;
  v300 = v453;
  v301 = v454;
  v302 = v845;
  v456 = &v364;
  v303 = &v364 - 38;
  v458 = &v364 - 38;
  *(v303 + 16) = v304 & 1;
  v303[3] = v951;
  v303[4] = &v953;
  v303[5] = v455;
  v305 = v456;
  *(v456 - 32) = v519;
  *(v305 - 31) = v515;
  *(v305 - 30) = v516;
  *(v305 - 29) = v517;
  *(v305 - 28) = v518;
  v306 = v788;
  *(v305 - 27) = v302;
  *(v305 - 26) = v289;
  *(v305 - 25) = v290;
  *(v305 - 24) = v291;
  *(v305 - 23) = v292;
  *(v305 - 22) = v293;
  *(v305 - 21) = v294;
  *(v305 - 20) = v295;
  *(v305 - 19) = v307;
  *(v305 - 18) = v308;
  *(v305 - 17) = v309;
  *(v305 - 16) = v310;
  *(v305 - 15) = v311;
  *(v305 - 14) = v312;
  *(v305 - 13) = v313;
  *(v305 - 12) = v297;
  *(v305 - 11) = v296;
  *(v305 - 10) = v300;
  *(v305 - 9) = v301;
  *(v305 - 8) = v314;
  *(v305 - 7) = v315;
  *(v305 - 6) = v316;
  *(v305 - 5) = v317;
  *(v305 - 4) = v298;
  *(v305 - 3) = v299;
  *(v305 - 4) = v306;
  *(v305 - 1) = &v964;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG_S2ftMd, &_sSaySfG_S2ftMR);
  v319 = v459;
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(11, 1, v458, v318, v457);
  v460 = v319;
  v461 = v319;
  if (v319)
  {
LABEL_118:
    v366 = v461;

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    (*(v813 + 8))(v814, v811);
    __swift_destroy_boxed_opaque_existential_1(v951);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v366;
    v414 = v366;
    return result;
  }

  v447 = 0;

  outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

  v446 = *v449;
  v439 = v446;
  v440 = *v450;
  v441 = *v451;
  v934 = v446;
  v933 = v440;
  v932 = v441;
  v444 = NightingaleDPFLRunner.performanceMeasure.getter();
  v442 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v445 = v320;
  v443 = v320;

  v321 = v447;
  v931 = v445;
  _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), 0, v446, MEMORY[0x277D83A90], MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v322);
  v448 = v321;
  if (v321)
  {
    __break(1u);
  }

  else
  {
    v437 = v929;
    v438 = v930;
    v927 = v929;
    v928 = v930;
    if (HyperParams.collectL2Norm.getter())
    {
      v323 = NightingaleDPFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();
      v435 = *v323;
      v436 = *(v323 + 1);

      static PFLStats.l2Norm(_:)();
      v924 = MEMORY[0x277D83A90];
      v923[0] = v324;
      v922[5] = v435;
      v922[6] = v436;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
      Dictionary.subscript.setter();
    }

    v432 = v448;
    v421 = NightingaleDPFLRunner.performanceMeasure.getter();
    v420 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v424 = v325;

    v926 = v424;
    v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    v431 = _allocateUninitializedArray<A>(_:)();
    v429 = v326;
    v327 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v327, v429);
    v328 = v443;
    v329 = v429;
    v423 = MEMORY[0x277D839F8];
    v429[5] = MEMORY[0x277D839F8];
    v329[2] = v328;
    v422 = v329 + 6;
    v330 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v330, v422);
    v331 = v424;
    v332 = v429;
    v429[11] = v423;
    v332[8] = v331;
    v425 = v332 + 12;
    v333 = NightingaleDPFLRunner.keyMetricsLoss.unsafeMutableAddressor();
    outlined init with copy of String(v333, v425);
    v334 = v440;
    v335 = v429;
    v428 = MEMORY[0x277D83A90];
    v429[17] = MEMORY[0x277D83A90];
    *(v335 + 28) = v334;
    v426 = v335 + 18;
    v336 = NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();
    outlined init with copy of String(v336, v426);
    v337 = v521;
    v338 = v429;
    v429[23] = MEMORY[0x277D83B88];
    v338[20] = v337;
    v427 = v338 + 24;
    v339 = NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
    outlined init with copy of String(v339, v427);
    v340 = v429;
    v341 = v441;
    v429[29] = v428;
    *(v340 + 52) = v341;
    _finalizeUninitializedArray<A>(_:)();
    v433 = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
    v342 = v432;
    Dictionary.merge(_:uniquingKeysWith:)();
    v434 = v342;
    if (!v342)
    {
      v417 = &v364;
      MEMORY[0x28223BE20](&v364, v343);
      *(&v364 - 2) = &v964;
      NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(12, 1, (&v364 - 4), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
      v418 = 0;
      v419 = 0;
      type metadata accessor for PFLTaskResult();
      v415 = v964;

      outlined copy of Data._Representation(v437, v438);
      v416 = PFLTaskResult.__allocating_init(json:vector:)();
      v925 = v416;
      outlined consume of Data._Representation(v437, v438);

      (*(v813 + 8))(v814, v811);
      __swift_destroy_boxed_opaque_existential_1(v951);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v593 = v416;
      v594 = v418;
      return v593;
    }
  }

  __break(1u);
  v365 = v419;
  outlined consume of Data._Representation(v437, v438);

  (*(v813 + 8))(v814, v811);
  __swift_destroy_boxed_opaque_existential_1(v951);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v365;
}

uint64_t key path getter for NSNumber.floatValue : NSNumber@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *a1;
  [*a1 floatValue];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v5);
}

uint64_t implicit closure #1 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);

  swift_getAtKeyPath();
  MEMORY[0x277D82BD8](v3);
}

uint64_t closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x25F888AA0](a1, a2, MEMORY[0x277D83A90]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a6;
  v19 = a8;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v20 = *(a6 - 8);
  v21 = a6 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](a1, a2);
  v23 = &v18 - v22;
  result = _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v9, v10, v11, v12, v13, v14, v15, &v18 - v22, v16);
  v24 = v8;
  if (v8)
  {
    return (*(v20 + 32))(v19, v23, v18);
  }

  return result;
}

uint64_t closure #4 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(uint64_t *a1)
{
  v2 = *a1;

  static HIDPFLUtils.checkMetrics(_:)(v2);
}

Swift::Void __swiftcall transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(Swift::Bool required, Swift::OpaquePointer feature, Swift::OpaquePointer stats, Swift::String name, Swift::OpaquePointer *mlInputs)
{
  if (required)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
    Dictionary.subscript.setter();
    v8 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v9 = v5;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x25F889DE0](countAndFlagsBits);

    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_stats", 6uLL, 1)._countAndFlagsBits;
    MEMORY[0x25F889DE0](v7);

    outlined destroy of DefaultStringInterpolation();
    MEMORY[0x25F889320](v8, v9);

    Dictionary.subscript.setter();
  }
}

uint64_t closure #5 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t *a2@<X8>)
{
  v8 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v9 = v2;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_stats", 6uLL, 1)._countAndFlagsBits;
  MEMORY[0x25F889DE0](v4);

  outlined destroy of DefaultStringInterpolation();
  result = MEMORY[0x25F889320](v8, v9);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t closure #6 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x25F8895B0]();
  v5 = result;
  if (!a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Division by zero", 16, 2, "Swift/IntegerTypes.swift", 24, 2, 9012, 0);
    __break(1u);
  }

  if (v5 == 0x8000000000000000 && a1 == -1)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Division results in an overflow", 31, 2, "Swift/IntegerTypes.swift", 24, 2, 9019, 0);
    __break(1u);
  }

  *a2 = v5 / a1;
  return result;
}

void closure #7 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, float *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  v190 = a9;
  v228 = a1;
  v214 = a2;
  v204 = a3;
  v205 = a4;
  v206 = a5;
  v207 = a6;
  v208 = a7;
  v209 = a8;
  v210 = a10;
  v211 = a11;
  v212 = a12;
  v191 = a13;
  v223 = a14;
  v224 = a15;
  v225 = a16;
  v213 = a17;
  v193 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v194 = "Fatal error";
  v195 = "Negative value is not representable";
  v196 = "Swift/Integers.swift";
  v197 = "Not enough bits to represent the passed value";
  v289 = 0;
  v288 = 0;
  v287 = 0;
  v286 = 0;
  v285 = 0;
  v283 = 0;
  v284 = 0;
  v281 = 0;
  v282 = 0;
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0.0;
  v273 = 0;
  v272 = 0;
  v262 = 0;
  v259 = 0;
  v258 = 0;
  v248 = 0;
  v246 = 0;
  v247 = 0;
  v240 = 0;
  v239 = 0;
  v236 = 0.0;
  v233 = 0;
  v17 = a13[1];
  v18 = a13[2];
  v19 = a13[3];
  v20 = a13[4];
  v21 = a13[5];
  v22 = a13[6];
  v23 = a13[7];
  v24 = a13[8];
  v25 = a13[9];
  v26 = a13[10];
  v27 = a13[11];
  v28 = a13[12];
  v29 = a13[13];
  v30 = a13[14];
  v31 = a13[15];
  v32 = a13[16];
  v33 = a13[17];
  v34 = a13[18];
  v35 = a13[19];
  v36 = a13[20];
  v290 = *a13;
  v291 = v17;
  v292 = v18;
  v293 = v19;
  v294 = v20;
  v295 = v21;
  v296 = v22;
  v297 = v23;
  v298 = v24;
  v299 = v25;
  v300 = v26;
  v301 = v27;
  v302 = v28;
  v303 = v29;
  v304 = v30;
  v305 = v31;
  v306 = v32;
  v307 = v33;
  v308 = v34;
  v309 = v35;
  v310 = v36;
  v198 = 0;
  v199 = type metadata accessor for ShuffleMethod();
  v200 = *(v199 - 8);
  v201 = v199 - 8;
  v202 = (*(v200 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v37);
  v203 = &v71 - v202;
  v215 = type metadata accessor for EspressoFunction();
  v216 = *(v215 - 8);
  v217 = v215 - 8;
  v221 = *(v216 + 64);
  v218 = (v221 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = MEMORY[0x28223BE20](v228, v214);
  v219 = &v71 - v218;
  v220 = (v221 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = MEMORY[0x28223BE20](v38, v39);
  v222 = &v71 - v220;
  v226 = (v221 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = MEMORY[0x28223BE20](v40, v41);
  v227 = &v71 - v226;
  v289 = v42 & 1;
  v288 = v43;
  v287 = v44;
  v286 = v45;
  v285 = v46;
  v283 = v47;
  v284 = v48;
  v281 = v49;
  v282 = v50;
  v280 = v51;
  v279 = v52;
  v278 = v223;
  v277 = v224;
  v276 = v225;
  v275 = v53;
  v274 = 0.0;
  v273 = Array.init()();
  if (v228)
  {
    v183 = v249;
    outlined init with copy of HealthDataQuery(v214, v249);
    v185 = v250;
    v186 = v251;
    __swift_project_boxed_opaque_existential_1(v183, v250);
    v54 = v192;
    v184 = *v204;

    v55 = dispatch thunk of EspressoTrainer.eval(_:featureSizes:numSamples:)();
    v187 = v54;
    v188 = v55;
    v189 = v54;
    if (v54)
    {
      v75 = v189;

      __swift_destroy_boxed_opaque_existential_1(v249);
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v152 = v75;
      return;
    }

    v177 = v188;

    v248 = v177;
    __swift_destroy_boxed_opaque_existential_1(v249);

    v245 = v177;
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySfGGGMd, &_sSaySDySSSaySfGGGMR);
    lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]();
    Collection<>.makeIterator()();
    v179 = 0.0;
    v180 = 0.0;
    v181 = 0.0;
    for (i = v187; ; i = v170)
    {
      v170 = i;
      v171 = v181;
      v173 = v180;
      v172 = v179;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySDySSSaySfGGGGMd, &_ss16IndexingIteratorVySaySDySSSaySfGGGGMR);
      IndexingIterator.next()();
      v174 = v244;
      v175 = v172;
      v176 = v173;
      if (!v244)
      {
        break;
      }

      v169 = v174;
      v162 = v174;
      v239 = v174;

      v164 = v237;
      v237[0] = v207;
      v237[1] = v208;
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      MEMORY[0x25F8891D0](&v238, v164, v162, MEMORY[0x277D837D0]);
      outlined destroy of DefaultStringInterpolation();
      v165 = v238;
      if (v238)
      {
        v161 = v165;
        v156 = v165;
        v231 = v165;
        lazy protocol witness table accessor for type [Float] and conformance [A]();
        Collection.first.getter();
        v158 = v229;
        v157 = v230;

        v159 = v158;
        v160 = v157;
      }

      else
      {
        v159 = 0.0;
        v160 = 1;
      }

      v154 = v159;
      v155 = v162;
      if (v160)
      {
        v150 = v155;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v151 = swift_allocError();
        *v56 = 10;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v152 = v151;
        return;
      }

      v153 = v154;
      v236 = v154;
      v146 = v171 + v154;
      v274 = v171 + v154;

      v147 = v234;
      v234[0] = v209;
      v234[1] = v210;
      MEMORY[0x25F8891D0](&v235);
      outlined destroy of DefaultStringInterpolation();
      v148 = v235;
      v149 = v162;
      if (!v235)
      {
        v143 = v149;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v144 = swift_allocError();
        *v57 = 26;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v152 = v144;
        return;
      }

      v145 = v148;
      v142 = v148;
      v233 = v148;

      v141 = &v232;
      v232 = v142;
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      Array.append<A>(contentsOf:)();

      v179 = v146;
      v180 = v146;
      v181 = v146;
    }

    v166 = v176;
    v167 = v175;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
    if (MEMORY[0x25F8895B0](v177) > 0)
    {
      v58 = MEMORY[0x25F8895B0](v177, v168);
      v274 = v166 / v58;
      v140 = v274;
    }

    else
    {
      v140 = v167;
    }

    v129 = v140;
    v132 = v241;
    outlined init with copy of HealthDataQuery(v214, v241);
    v130 = v242;
    v131 = v243;
    __swift_project_boxed_opaque_existential_1(v132, v242);
    static EspressoFunction.evaluation.getter();
    dispatch thunk of EspressoTrainer.unload(functions:)();
    (*(v216 + 8))(v227, v215);
    __swift_destroy_boxed_opaque_existential_1(v132);
    v133 = v273;

    v134 = v309;
    v135 = v308;
    v59 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v60 = v170;
    object = v59._object;
    v61 = static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(v211, v212, v133, v134, v223, v135, v224, v225, v59._countAndFlagsBits, v59._object);
    v137 = v60;
    v138 = v61;
    v139 = v60;
    if (v60)
    {
      v74 = v139;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v152 = v74;
      return;
    }

    v127 = v138;

    v240 = v127;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
    v62 = v137;
    Dictionary.merge(_:uniquingKeysWith:)();
    v128 = v62;
    if (v62)
    {
      __break(1u);
      goto LABEL_41;
    }

    v125 = v129;
    v126 = v128;
  }

  else
  {
    v125 = 0.0;
    v126 = v192;
  }

  v119 = v126;
  v117 = v125;
  v118 = v269;
  outlined init with copy of HealthDataQuery(v214, v269);
  v120 = v270;
  v121 = v271;
  __swift_project_boxed_opaque_existential_1(v118, v270);
  static EspressoFunction.training.getter();
  v63 = v119;
  v64 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
  v122 = v63;
  v123 = v64;
  v124 = v63;
  if (v63)
  {
LABEL_41:
    v73 = v124;
    (*(v216 + 8))(v222, v215);
    __swift_destroy_boxed_opaque_existential_1(v269);
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v152 = v73;
    return;
  }

  v110 = v123;
  v108 = *(v216 + 8);
  v109 = v216 + 8;
  v108(v222, v215);
  v272 = v110;
  __swift_destroy_boxed_opaque_existential_1(v269);
  v111 = v266;
  outlined init with copy of HealthDataQuery(v214, v266);
  v112 = v267;
  v113 = v268;
  v114 = __swift_project_boxed_opaque_existential_1(v111, v267);
  v115 = *v204;

  v116 = HyperParams.epochs.getter();
  if (v116 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)(v194, 11, 2, v195, 35, 2, v196, 20, 2, 3049, 0);
    __break(1u);
  }

  if (v116 > 0xFFFFFFFFLL)
  {
    _assertionFailure(_:_:file:line:flags:)(v194, 11, 2, v197, 45, 2, v196, 20, 2, 3053, 0);
    __break(1u);
  }

  else
  {
    v105 = v116;
    HyperParams.inputShuffleMethod.getter(v203);
    HyperParams.fullBatchTraining.getter();
    v65 = v122;
    dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
    v106 = v65;
    v107 = v65;
    if (v65)
    {
      v72 = v107;
      (*(v200 + 8))(v203, v199);

      __swift_destroy_boxed_opaque_existential_1(v266);
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v152 = v72;
      return;
    }
  }

  (*(v200 + 8))(v203, v199);

  __swift_destroy_boxed_opaque_existential_1(v266);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v100 = MEMORY[0x277D837D0];
  v102 = MEMORY[0x277D837E0];
  v95 = default argument 0 of Dictionary.removeAll(keepingCapacity:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
  Dictionary.removeAll(keepingCapacity:)(v95 & 1);
  v98 = v263;
  outlined init with copy of HealthDataQuery(v214, v263);
  v96 = v264;
  v97 = v265;
  __swift_project_boxed_opaque_existential_1(v98, v264);
  static EspressoFunction.training.getter();
  v99 = dispatch thunk of EspressoTrainer.extractOutputs(function:)();
  v108(v227, v215);
  v262 = v99;
  __swift_destroy_boxed_opaque_existential_1(v98);

  v103 = v260;
  v260[0] = v207;
  v260[1] = v208;
  MEMORY[0x25F8891D0](&v261);
  outlined destroy of DefaultStringInterpolation();
  v104 = v261;
  if (v261)
  {
    v94 = v104;
    v89 = v104;
    v254 = v104;
    lazy protocol witness table accessor for type [Float] and conformance [A]();
    Collection.first.getter();
    v91 = v252;
    v90 = v253;

    v92 = v91;
    v93 = v90;
  }

  else
  {
    v92 = 0;
    v93 = 1;
  }

  v88 = v92;
  if (v93)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v86 = swift_allocError();
    *v66 = 10;
    swift_willThrow();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v152 = v86;
  }

  else
  {
    v87 = v88;
    v79 = v88;
    v259 = v88;
    v80 = v255;
    outlined init with copy of HealthDataQuery(v214, v255);
    v81 = v256;
    v82 = v257;
    __swift_project_boxed_opaque_existential_1(v80, v256);
    static EspressoFunction.training.getter();
    v67 = v106;
    v68 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
    v83 = v67;
    v84 = v68;
    v85 = v67;
    if (v67)
    {
      v71 = v85;
      v108(v219, v215);
      __swift_destroy_boxed_opaque_existential_1(v255);
    }

    else
    {
      v76 = v84;
      v108(v219, v215);
      v77 = &v258;
      v258 = v76;
      __swift_destroy_boxed_opaque_existential_1(v255);
      v78 = &v272;
      static HIDPFLUtils.inplaceSub(_:_:)(v77, &v272);
      outlined init with copy of [Float](v77, v190);
      v69 = v190;
      v70 = v117;
      *(v190 + 2) = v79;
      v69[3] = v70;
      outlined destroy of [(start: UInt32, end: UInt32)]();
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }
}

uint64_t NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v187 = a6;
  v188 = a7;
  v191 = a5;
  v194 = a4;
  v189 = a3;
  v190 = a2;
  v192 = a1;
  v193 = 0;
  v231 = 0;
  v230 = 0.0;
  v228 = 0;
  v226 = 0;
  v224 = 0;
  v222 = 0;
  v220 = 0;
  v218 = 0;
  v216 = 0;
  v214 = 0;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v204 = 0;
  v203 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v238 = a1;
  v236 = a2;
  v237 = a3;
  v235 = a4;
  v234 = a5;
  v233 = a7;
  v232 = a6;
  result = MEMORY[0x25F8895B0]();
  v8 = __OFSUB__(v194, result);
  v195 = v194 - result;
  if (v8)
  {
    __break(1u);
    return result;
  }

  v182 = v186;
  v179 = v195;
  v230 = v195;

  v229 = v191;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining22PregnancyInvalidReasonOGMd, &_sSay19NightingaleTraining22PregnancyInvalidReasonOGMR);
  v180 = v181;
  v183 = lazy protocol witness table accessor for type [PregnancyInvalidReason] and conformance [A]();
  v184 = v186;
  v185 = _ArrayProtocol.filter(_:)();
  if (v186)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_31;
  }

  v174 = v185;
  v176 = 0;
  v175 = MEMORY[0x25F8895B0]();
  v228 = v175;

  v227 = v191;
  v177 = 0;
  v178 = _ArrayProtocol.filter(_:)();
  v169 = v178;
  v171 = 0;
  v170 = MEMORY[0x25F8895B0]();
  v226 = v170;

  v225 = v191;
  v172 = 0;
  v173 = _ArrayProtocol.filter(_:)();
  v164 = v173;
  v166 = 0;
  v165 = MEMORY[0x25F8895B0]();
  v224 = v165;

  v223 = v191;
  v167 = 0;
  v168 = _ArrayProtocol.filter(_:)();
  v159 = v168;
  v161 = 0;
  v160 = MEMORY[0x25F8895B0]();
  v222 = v160;

  v221 = v191;
  v162 = 0;
  v163 = _ArrayProtocol.filter(_:)();
  v154 = v163;
  v156 = 0;
  v155 = MEMORY[0x25F8895B0]();
  v220 = v155;

  v219 = v191;
  v157 = 0;
  v158 = _ArrayProtocol.filter(_:)();
  v149 = v158;
  v151 = 0;
  v150 = MEMORY[0x25F8895B0]();
  v218 = v150;

  v217 = v191;
  v152 = 0;
  v153 = _ArrayProtocol.filter(_:)();
  v144 = v153;
  v146 = 0;
  v145 = MEMORY[0x25F8895B0]();
  v216 = v145;

  v215 = v191;
  v147 = 0;
  v148 = _ArrayProtocol.filter(_:)();
  v139 = v148;
  v141 = 0;
  v140 = MEMORY[0x25F8895B0]();
  v214 = v140;

  v213 = v191;
  v142 = 0;
  v143 = _ArrayProtocol.filter(_:)();
  v126 = v143;
  v127 = MEMORY[0x25F8895B0]();
  v212 = v127;

  v129 = NightingaleDPFLRunner.performanceMeasure.getter();
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v130 = HyperParams.inputName.getter();
  v131 = v9;
  v210 = v130;
  v211 = v9;
  v132 = HyperParams.labelName.getter();
  v133 = v10;
  v208 = v132;
  v209 = v10;
  v134 = HyperParams.modelRepresentation.getter();
  v137 = v11;
  v12 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
  v135 = *v12;
  v136 = *(v12 + 1);

  v138 = MEMORY[0x25F889340](v134, v137, v135, v136);

  if (v138)
  {
    v125 = type metadata accessor for EspressoEIRTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v13 = EspressoEIRTrainer.__allocating_init(_:)();
    v196[3] = v125;
    v196[4] = MEMORY[0x277D413C0];
    v196[0] = v13;
    outlined init with take of HealthDataQuery(v196, v207);
  }

  else
  {
    v124 = type metadata accessor for EspressoMILTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v14 = EspressoMILTrainer.__allocating_init(_:)();
    v206[3] = v124;
    v206[4] = MEMORY[0x277D413D0];
    v206[0] = v14;
    outlined init with take of HealthDataQuery(v206, v207);
  }

  v121 = v142;

  v118 = &v74;
  MEMORY[0x28223BE20](&v74, v15);
  v119 = &v74;
  v120 = v71;
  v71[2] = v207;
  v71[3] = v190;
  v71[4] = v16;
  v71[5] = v17;
  v71[6] = v18;
  v71[7] = v19;
  v71[8] = v133;
  v71[9] = v192;
  v71[10] = v194;
  v72 = v20;
  v73 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v23 = v121;
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(11, 1, v120, v22, &v205);
  v122 = v23;
  v123 = v23;
  if (v23)
  {
LABEL_31:
    v75 = v123;

    __swift_destroy_boxed_opaque_existential_1(v207);

    result = v75;
    v76 = v75;
    return result;
  }

  v116 = 0;

  v115 = v205;
  v110 = v205;
  v204 = v205;
  v113 = NightingaleDPFLRunner.performanceMeasure.getter();
  v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v114 = v24;
  v112 = v24;

  v25 = v116;
  v203 = v114;
  _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), 0, v115, MEMORY[0x277D83A90], MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v26);
  v117 = v25;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v107 = 0;
    v82 = v201;
    v83 = v202;
    v199 = v201;
    v200 = v202;
    v85 = NightingaleDPFLRunner.performanceMeasure.getter();
    v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v88 = v27;

    v198 = v88;
    v28 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_pluginCompleted, v28);

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    v103 = _allocateUninitializedArray<A>(_:)();
    v101 = v29;
    v30 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v30, v101);
    v31 = v112;
    v32 = v101;
    v87 = MEMORY[0x277D839F8];
    v101[5] = MEMORY[0x277D839F8];
    v32[2] = v31;
    v86 = v32 + 6;
    v33 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v33, v86);
    v34 = v88;
    v35 = v101;
    v101[11] = v87;
    v35[8] = v34;
    v89 = v35 + 12;
    v36 = NightingaleDPFLRunner.keyMetricsNumberOfAllPregnancies.unsafeMutableAddressor();
    outlined init with copy of String(v36, v89);
    v37 = v194;
    v38 = v101;
    v100 = MEMORY[0x277D83B88];
    v101[17] = MEMORY[0x277D83B88];
    v38[14] = v37;
    v90 = v38 + 18;
    v39 = NightingaleDPFLRunner.keyMetricsNumberOfValidPregnancies.unsafeMutableAddressor();
    outlined init with copy of String(v39, v90);
    v40 = v179;
    v41 = v101;
    v101[23] = MEMORY[0x277D83A90];
    *(v41 + 40) = v40;
    v91 = v41 + 24;
    v42 = NightingaleDPFLRunner.keyMetricsInvalidDurationPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v42, v91);
    v43 = v175;
    v44 = v101;
    v101[29] = v100;
    v44[26] = v43;
    v92 = v44 + 30;
    v45 = NightingaleDPFLRunner.keyMetricsInvalidLMPDeltaPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v45, v92);
    v46 = v170;
    v47 = v101;
    v101[35] = v100;
    v47[32] = v46;
    v93 = v47 + 36;
    v48 = NightingaleDPFLRunner.keyMetricsContainsFlowPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v48, v93);
    v49 = v165;
    v50 = v101;
    v101[41] = v100;
    v50[38] = v49;
    v94 = v50 + 42;
    v51 = NightingaleDPFLRunner.keyMetricsInvalidLMPPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v51, v94);
    v52 = v160;
    v53 = v101;
    v101[47] = v100;
    v53[44] = v52;
    v95 = v53 + 48;
    v54 = NightingaleDPFLRunner.keyMetricsInvalidEndPregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(v54, v95);
    v55 = v155;
    v56 = v101;
    v101[53] = v100;
    v56[50] = v55;
    v96 = v56 + 54;
    started = NightingaleDPFLRunner.keyMetricsInvalidStartSourcePregnanciesCount.unsafeMutableAddressor();
    outlined init with copy of String(started, v96);
    v58 = v150;
    v59 = v101;
    v101[59] = v100;
    v59[56] = v58;
    v97 = v59 + 60;
    v60 = NightingaleDPFLRunner.keyMetricsFailedToQuerySWTCount.unsafeMutableAddressor();
    outlined init with copy of String(v60, v97);
    v61 = v140;
    v62 = v101;
    v101[65] = v100;
    v62[62] = v61;
    v98 = v62 + 66;
    UpdatingFeatures = NightingaleDPFLRunner.keyMetricsFailedToQueryUpdatingFeaturesCount.unsafeMutableAddressor();
    outlined init with copy of String(UpdatingFeatures, v98);
    v64 = v145;
    v65 = v101;
    v101[71] = v100;
    v65[68] = v64;
    v99 = v65 + 72;
    HistoricalPeriods = NightingaleDPFLRunner.keyMetricsFailedToGetHistoricalPeriodsCount.unsafeMutableAddressor();
    outlined init with copy of String(HistoricalPeriods, v99);
    v67 = v101;
    v68 = v127;
    v101[77] = v100;
    v67[74] = v68;
    _finalizeUninitializedArray<A>(_:)();
    v105 = MEMORY[0x277D84F70] + 8;
    v104 = MEMORY[0x277D837D0];
    v106 = MEMORY[0x277D837E0];
    Dictionary.init(dictionaryLiteral:)();
    v69 = v107;
    v70 = Dictionary.merging(_:uniquingKeysWith:)();
    v108 = v69;
    v109 = v70;
    if (!v69)
    {
      v79 = v109;
      v197 = v109;
      static HIDPFLUtils.checkMetrics(_:)(v109);
      v80 = 0;
      v81 = 0;
      v78 = 0;
      type metadata accessor for PFLTaskResult();
      outlined copy of Data._Representation(v82, v83);
      v77 = PFLTaskResult.__allocating_init(json:vector:)();
      outlined consume of Data._Representation(v82, v83);

      __swift_destroy_boxed_opaque_existential_1(v207);

      return v77;
    }
  }

  __break(1u);
  v74 = v81;

  outlined consume of Data._Representation(v82, v83);

  __swift_destroy_boxed_opaque_existential_1(v207);

  result = v74;
  v76 = v74;
  return result;
}

uint64_t closure #10 in NightingaleDPFLRunner.runPregnanciesDistribution(hyperParams:modelPath:numberOfRawPregnancies:invalidReasons:swtAvailability:existingMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12)
{
  v110 = a9;
  v120 = a1;
  v146 = a2;
  v139 = a3;
  v130 = a4;
  v131 = a5;
  v133 = a6;
  v134 = a7;
  v111 = a8;
  v117 = a12;
  v118 = a10;
  v119 = a11;
  v182 = 0;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  v176 = 0;
  v177 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v168 = 0;
  v161 = 0;
  v160 = 0;
  v153 = 0;
  v137 = 0;
  v112 = type metadata accessor for ShuffleMethod();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v13);
  v116 = &v63 - v115;
  v121 = type metadata accessor for EspressoFunction();
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v120, v146);
  v125 = &v63 - v124;
  v126 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v127 = &v63 - v126;
  v128 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v140 = &v63 - v128;
  v182 = v20;
  v180 = v21;
  v181 = v22;
  v178 = v23;
  v179 = v24;
  v176 = v25;
  v177 = v26;
  v175 = a8;
  v174 = v27;
  v173 = v28;
  v172 = v29;
  v129 = v169;
  outlined init with copy of HealthDataQuery(v20, v169);
  v144 = v170;
  v145 = v171;
  v138 = __swift_project_boxed_opaque_existential_1(v129, v170);
  static EspressoFunction.training.getter();
  v136 = MEMORY[0x277D837D0];
  v132 = _allocateUninitializedArray<A>(_:)();
  v135 = v30;

  v31 = v131;
  v32 = v135;
  *v135 = v130;
  v32[1] = v31;

  v33 = v134;
  v34 = v135;
  v135[2] = v133;
  v34[3] = v33;
  _finalizeUninitializedArray<A>(_:)();
  v141 = v35;
  v142 = _allocateUninitializedArray<A>(_:)();
  v36 = HyperParams.weightNames.getter();
  v37 = v143;
  v147 = v36;
  dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
  v148 = v37;
  v149 = v37;
  if (v37)
  {
    v67 = v149;

    (*(v122 + 8))(v140, v121);
    result = __swift_destroy_boxed_opaque_existential_1(v169);
    v68 = v67;
  }

  else
  {

    v101 = *(v122 + 8);
    v102 = v122 + 8;
    v101(v140, v121);
    __swift_destroy_boxed_opaque_existential_1(v169);
    v38 = HyperParams.batchSize.getter();
    static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(1, v38);
    v105 = v39;
    v168 = v39;
    v103 = v165;
    outlined init with copy of HealthDataQuery(v120, v165);
    v106 = v166;
    v107 = v167;
    v104 = __swift_project_boxed_opaque_existential_1(v103, v166);
    v40 = HyperParams.learningRate.getter();
    v41 = v148;
    v163 = v40;
    v164 = 0;
    dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
    v108 = v41;
    v109 = v41;
    if (v41)
    {
      v66 = v109;
      result = __swift_destroy_boxed_opaque_existential_1(v165);
      v68 = v66;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v165);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd, &_sSS_SaySfGtMR);
      v92 = _allocateUninitializedArray<A>(_:)();
      v90 = v42;

      v43 = v131;
      v44 = v90;
      *v90 = v130;
      v44[1] = v43;
      v89 = MEMORY[0x277D83A90];
      _allocateUninitializedArray<A>(_:)();
      v45 = v118;
      v46 = v119;
      *v47 = v117;
      v47[1] = v45;
      v47[2] = v46;
      _finalizeUninitializedArray<A>(_:)();
      v90[2] = v48;

      v49 = v134;
      v50 = v90;
      v90[3] = v133;
      v50[4] = v49;
      v162 = 1.0;
      v90[5] = Array.init(repeating:count:)();
      _finalizeUninitializedArray<A>(_:)();
      v93 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
      v94 = Dictionary.init(dictionaryLiteral:)();
      v161 = v94;
      v95 = v157;
      outlined init with copy of HealthDataQuery(v120, v157);
      v96 = v158;
      v97 = v159;
      __swift_project_boxed_opaque_existential_1(v95, v158);
      static EspressoFunction.training.getter();
      v52 = v108;
      v53 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
      v98 = v52;
      v99 = v53;
      v100 = v52;
      if (v52)
      {
        v65 = v100;
        v101(v127, v121);
        __swift_destroy_boxed_opaque_existential_1(v157);

        v68 = v65;
      }

      else
      {
        v78 = v99;
        v101(v127, v121);
        v160 = v78;
        __swift_destroy_boxed_opaque_existential_1(v157);
        v79 = v154;
        outlined init with copy of HealthDataQuery(v120, v154);
        v85 = v155;
        v86 = v156;
        __swift_project_boxed_opaque_existential_1(v79, v155);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
        v80 = _allocateUninitializedArray<A>(_:)();
        v81 = v54;

        v55 = v131;
        v56 = v81;
        *v81 = v130;
        v56[1] = v55;
        v56[2] = 3;

        v57 = v134;
        v58 = v81;
        v81[3] = v133;
        v58[4] = v57;
        v84 = 1;
        v58[5] = 1;
        _finalizeUninitializedArray<A>(_:)();
        v83 = Dictionary.init(dictionaryLiteral:)();
        (*(v113 + 104))(v116, *MEMORY[0x277D41360], v112);
        v59 = v98;
        dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
        v87 = v59;
        v88 = v59;
        if (v59)
        {
          v64 = v88;
          (*(v113 + 8))(v116, v112);

          __swift_destroy_boxed_opaque_existential_1(v154);
          outlined destroy of [(start: UInt32, end: UInt32)]();

          v68 = v64;
        }

        else
        {
          (*(v113 + 8))(v116, v112);

          __swift_destroy_boxed_opaque_existential_1(v154);
          v72 = v150;
          outlined init with copy of HealthDataQuery(v120, v150);
          v73 = v151;
          v74 = v152;
          __swift_project_boxed_opaque_existential_1(v72, v151);
          static EspressoFunction.training.getter();
          v60 = v87;
          v61 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
          v75 = v60;
          v76 = v61;
          v77 = v60;
          if (v60)
          {
            v63 = v77;
            v101(v125, v121);
            __swift_destroy_boxed_opaque_existential_1(v150);
          }

          else
          {
            v69 = v76;
            v101(v125, v121);
            v70 = &v153;
            v153 = v69;
            __swift_destroy_boxed_opaque_existential_1(v150);
            v71 = &v160;
            static HIDPFLUtils.inplaceSub(_:_:)(v70, &v160);
            *v110 = v153;
          }

          outlined destroy of [(start: UInt32, end: UInt32)]();
        }
      }
    }
  }

  return result;
}

uint64_t NightingaleDPFLRunner.runDemographics(hyperParams:modelPath:pregnancies:historicalPeriods:swtAvailabilityStats:numberOfSlices:age:earliestPregrancyLMP:latestPregrancyEndDay:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, Swift::UInt32 a10, Swift::UInt32 a11, uint64_t a12)
{
  v136 = a9;
  periods._rawValue = a5;
  pregnancies._rawValue = a4;
  v137 = a3;
  v138 = a2;
  v139 = a1;
  v140 = a12;
  latestPregrancyEndDay = a11;
  earliestPregrancyLMP = a10;
  v141 = 0;
  v142 = 0;
  v192 = 0;
  v190 = 0.0;
  v189 = 0;
  v188 = 0.0;
  v187 = 0.0;
  v186 = 0.0;
  v185 = 0;
  v184 = 0.0;
  v183 = 0.0;
  v182 = 0.0;
  v181 = 0;
  v180 = 0.0;
  v179 = 0.0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v210 = a6;
  v143 = a6;
  v144 = BYTE4(a6);
  v209 = a7;
  v145 = a7;
  v146 = BYTE4(a7);
  v208 = a8;
  v147 = a8;
  v148 = BYTE4(a8);
  v207 = a1;
  v205 = a2;
  v206 = a3;
  v204 = a4;
  v203 = a5;
  v199 = a6;
  v200 = BYTE4(a6);
  v201 = a7;
  v202 = BYTE4(a7);
  v198 = a9;
  v196 = a8;
  v197 = BYTE4(a8);
  v195 = a10;
  v194 = a11;
  v193 = a12;
  type metadata accessor for Featurizer();
  v153 = Featurizer.__allocating_init()();
  Featurizer.cycleStats(pregnancies:periods:earliestPregrancyLMP:latestPregrancyEndDay:)(&v191, pregnancies, periods, a10, a11);
  v154 = v12;
  count = v191.prePregCycleStats.count;
  value = v191.prePregCycleStats.mean.value;
  is_nil = v191.prePregCycleStats.mean.is_nil;
  std = v191.prePregCycleStats.std;
  v159 = v191.pregCycleStats.count;
  v160 = v191.pregCycleStats.mean.value;
  v161 = v191.pregCycleStats.mean.is_nil;
  v162 = v191.pregCycleStats.std;
  v163 = v191.postPregCycleStats.count;
  v164 = v191.postPregCycleStats.mean.value;
  v165 = v191.postPregCycleStats.mean.is_nil;
  v166 = v191.postPregCycleStats.std;
  v167 = v12;
  if (v12)
  {

    result = v167;
    v77 = v167;
    return result;
  }

  v13 = v135;
  v124 = v166;
  v113 = v165;
  v127 = v164;
  v123 = v163;
  v122 = v162;
  v112 = v161;
  v121 = v160;
  v120 = v159;
  v119 = std;
  v111 = is_nil;
  v117 = value;
  v116 = count;
  v132 = 0;

  v14 = v138;
  v190 = count;
  v188 = value;
  v118 = is_nil;
  v189 = is_nil;
  v187 = std;
  v186 = v159;
  v184 = v160;
  v126 = v161;
  v185 = v161;
  v183 = v162;
  v182 = v163;
  v180 = v164;
  v128 = v165;
  v181 = v165;
  v179 = v166;
  v130 = &v177;
  v114 = &v177;
  v115 = &v178;

  v125 = &v74;
  v15 = MEMORY[0x28223BE20](v139, v146);
  v129 = &v74;
  v131 = v51;
  v51[4] = v16;
  v52 = v17 & 1;
  v53 = v18;
  v54 = v19 & 1;
  v55 = v13;
  v56 = v15;
  v57 = v14;
  v58 = v137;
  v59 = v147;
  v60 = v20 & 1;
  v61 = v21;
  v62 = v22;
  v63 = v23;
  v64 = v24;
  v65 = v25;
  v66 = v26;
  v67 = v126;
  v68 = v27;
  v69 = v28;
  v70 = v127;
  v71 = v128;
  v72 = v29;
  v73 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfG_SdtMd, &_sSaySfG_SdtMR);
  v32 = v132;
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(11, 1, v131, v31, v130);
  v133 = v32;
  v134 = v32;
  if (v32)
  {
    v76 = v134;

    result = v76;
    v77 = v76;
    return result;
  }

  v109 = 0;

  v108 = *v114;
  v97 = v108;
  v98 = *v115;
  v176 = v108;
  v175 = v98;
  v101 = NightingaleDPFLRunner.performanceMeasure.getter();
  v103 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v102 = v33;
  v100 = v33;

  v174 = v102;
  v106 = NightingaleDPFLRunner.performanceMeasure.getter();
  v104 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v103)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v107 = v34;
  v105 = v34;

  v173 = v107;
  v35 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_pluginCompleted, v35);
  v36 = v109;
  _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), 0, v108, MEMORY[0x277D83A90], MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v37);
  v110 = v36;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    v94 = 0;
    v83 = v171;
    v84 = v172;
    v169 = v171;
    v170 = v172;

    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    v90 = _allocateUninitializedArray<A>(_:)();
    v88 = v38;
    v39 = NightingaleDPFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v39, v88);
    v40 = v98;
    v41 = v88;
    v87 = MEMORY[0x277D839F8];
    v88[5] = MEMORY[0x277D839F8];
    v41[2] = v40;
    v85 = v41 + 6;
    v42 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v42, v85);
    v43 = v100;
    v44 = v88;
    v88[11] = v87;
    v44[8] = v43;
    v86 = v44 + 12;
    v45 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v45, v86);
    v46 = v88;
    v47 = v105;
    v88[17] = v87;
    v46[14] = v47;
    _finalizeUninitializedArray<A>(_:)();
    v92 = MEMORY[0x277D84F70] + 8;
    v91 = MEMORY[0x277D837D0];
    v93 = MEMORY[0x277D837E0];
    Dictionary.init(dictionaryLiteral:)();
    v48 = v94;
    v49 = Dictionary.merging(_:uniquingKeysWith:)();
    v95 = v48;
    v96 = v49;
    if (!v48)
    {
      v80 = v96;
      v168 = v96;
      static HIDPFLUtils.checkMetrics(_:)(v96);
      v81 = 0;
      v82 = 0;
      v79 = 0;
      type metadata accessor for PFLTaskResult();
      outlined copy of Data._Representation(v83, v84);
      v78 = PFLTaskResult.__allocating_init(json:vector:)();
      outlined consume of Data._Representation(v83, v84);

      return v78;
    }
  }

  __break(1u);
  v75 = v82;

  outlined consume of Data._Representation(v83, v84);

  return v75;
}

uint64_t closure #1 in NightingaleDPFLRunner.runDemographics(hyperParams:modelPath:pregnancies:historicalPeriods:swtAvailabilityStats:numberOfSlices:age:earliestPregrancyLMP:latestPregrancyEndDay:existingMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, float a14@<S4>, float a15@<S5>, float a16@<S6>, uint64_t a17, uint64_t a18)
{
  v198 = a9;
  v207 = a3;
  v208 = a4;
  v209 = a5;
  v210 = a6;
  v211 = a10;
  v214 = a11;
  v215 = a12;
  v218 = a13;
  v219 = a14;
  v220 = a15;
  v221 = a16;
  memset(v303, 0, 13);
  v302 = 0;
  v301 = 0;
  v299 = 0;
  v300 = 0;
  v297 = 0.0;
  v298 = 0;
  v296 = 0;
  v294 = 0;
  v295 = 0;
  v293 = 0;
  v292 = 0;
  v290 = 0;
  v291 = 0;
  v289 = 0;
  v288 = 0;
  v286 = 0;
  v287 = 0;
  v285 = 0;
  v284 = 0;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v277 = 0.0;
  v276 = 0;
  v274 = 0;
  v275 = 0;
  v272 = 0;
  v273 = 0;
  v266 = 0;
  v258 = 0.0;
  v250 = 0;
  v249 = 0;
  v242 = 0;
  v303[6] = a1;
  v303[7] = a2;
  v232 = a1;
  v222 = BYTE4(a1);
  v223 = a2;
  v206 = BYTE4(a2);
  v303[5] = a7;
  v235 = *&a7;
  v236 = BYTE4(a7);
  v303[4] = a8;
  v212 = a8;
  v213 = BYTE4(a8);
  v303[3] = a17;
  v216 = a17;
  v217 = BYTE4(a17);
  v303[2] = a18;
  v233 = a18;
  v234 = BYTE4(a18);
  v200 = 0;
  v201 = type metadata accessor for ShuffleMethod();
  v202 = *(v201 - 8);
  v203 = v201 - 8;
  v204 = (*(v202 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v18);
  v205 = &v100 - v204;
  v19 = type metadata accessor for EspressoFunction();
  v20 = v206;
  v224 = v19;
  v225 = *(v19 - 8);
  v226 = v19 - 8;
  v230 = *(v225 + 64);
  v227 = (v230 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x28223BE20](v223, v21);
  v228 = &v100 - v227;
  v229 = (v230 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x28223BE20](v22, &v100 - v227);
  v231 = &v100 - v229;
  v24 = MEMORY[0x28223BE20](v23, &v100 - v229);
  v237 = &v100 - v25;
  LODWORD(v303[0]) = v232;
  BYTE4(v303[0]) = v26 & 1;
  LODWORD(v303[1]) = v24;
  BYTE4(v303[1]) = v20 & 1;
  v302 = v27;
  v301 = v28;
  v299 = v29;
  v300 = v30;
  v297 = v235;
  v298 = v236 & 1;
  v296 = v31;
  v294 = v32;
  v295 = v33 & 1;
  v293 = v34;
  v292 = v35;
  v290 = v36;
  v291 = v37 & 1;
  v289 = v38;
  v288 = v39;
  v286 = v233;
  v287 = v234 & 1;
  v285 = v40;
  v284 = v41;
  if (v26 & 1) != 0 || (v197 = v232, v196 = v197, v283 = v197, (v206))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v106 = swift_allocError();
    *v99 = 67;
    swift_willThrow();
    result = v106;
    v107 = v106;
  }

  else
  {
    v195 = v223;
    v185 = v223;
    v282 = v223;
    v191 = dispatch_group_create();
    v281 = v191;
    v187 = NightingaleDPFLRunner.performanceMeasure.getter();
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIQuery", 8uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.start(_:)();

    v188 = v278;
    outlined init with copy of HealthDataQuery(v207 + 48, v278);
    v189 = v279;
    v190 = v280;
    __swift_project_boxed_opaque_existential_1(v188, v279);
    v42 = v199;
    v43 = (*(v190 + 48))(v191, v208, v189);
    v192 = v42;
    v193 = v43;
    v194 = v42;
    if (v42)
    {
      v105 = v194;
      __swift_destroy_boxed_opaque_existential_1(v278);
      result = MEMORY[0x277D82BD8](v191);
      v107 = v105;
    }

    else
    {
      v168 = v193;
      v277 = v193;
      __swift_destroy_boxed_opaque_existential_1(v278);
      v170 = NightingaleDPFLRunner.performanceMeasure.getter();
      v172 = 8;
      v173 = 1;
      v169 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIQuery", 8uLL, 1)._object;
      dispatch thunk of PerformanceMeasure.finish(_:)();
      v171 = v44;

      v276 = v171;
      v175 = NightingaleDPFLRunner.performanceMeasure.getter();
      v174 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", v172, v173 & 1)._object;
      dispatch thunk of PerformanceMeasure.start(_:)();

      v176 = HyperParams.inputName.getter();
      v177 = v45;
      v274 = v176;
      v275 = v45;
      v178 = HyperParams.labelName.getter();
      v179 = v46;
      v272 = v178;
      v273 = v46;
      v180 = HyperParams.modelRepresentation.getter();
      v183 = v47;
      v48 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
      v181 = *v48;
      v182 = *(v48 + 1);

      v184 = MEMORY[0x25F889340](v180, v183, v181, v182);

      if (v184)
      {
        v167 = type metadata accessor for EspressoEIRTrainer();
        NightingaleDPFLRunner.performanceMeasure.getter();
        v49 = EspressoEIRTrainer.__allocating_init(_:)();
        v238[3] = v167;
        v238[4] = MEMORY[0x277D413C0];
        v238[0] = v49;
        outlined init with take of HealthDataQuery(v238, v271);
      }

      else
      {
        v166 = type metadata accessor for EspressoMILTrainer();
        NightingaleDPFLRunner.performanceMeasure.getter();
        v50 = EspressoMILTrainer.__allocating_init(_:)();
        v270[3] = v166;
        v270[4] = MEMORY[0x277D413D0];
        v270[0] = v50;
        outlined init with take of HealthDataQuery(v270, v271);
      }

      v154 = v267;
      outlined init with copy of HealthDataQuery(v271, v267);
      v161 = v268;
      v162 = v269;
      v158 = __swift_project_boxed_opaque_existential_1(v154, v268);
      static EspressoFunction.training.getter();
      v157 = MEMORY[0x277D837D0];
      v155 = _allocateUninitializedArray<A>(_:)();
      v156 = v51;

      v52 = v177;
      v53 = v156;
      *v156 = v176;
      v53[1] = v52;

      v54 = v179;
      v55 = v156;
      v156[2] = v178;
      v55[3] = v54;
      _finalizeUninitializedArray<A>(_:)();
      v159 = v56;
      v160 = _allocateUninitializedArray<A>(_:)();
      v57 = HyperParams.weightNames.getter();
      v58 = v192;
      v163 = v57;
      dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
      v164 = v58;
      v165 = v58;
      if (v58)
      {
        v104 = v165;

        (*(v225 + 8))(v237, v224);
        __swift_destroy_boxed_opaque_existential_1(v267);
        __swift_destroy_boxed_opaque_existential_1(v271);

        result = MEMORY[0x277D82BD8](v191);
        v107 = v104;
      }

      else
      {

        v145 = *(v225 + 8);
        v146 = v225 + 8;
        v145(v237, v224);
        __swift_destroy_boxed_opaque_existential_1(v267);
        v59 = HyperParams.batchSize.getter();
        static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(1, v59);
        v149 = v60;
        v266 = v60;
        v147 = v263;
        outlined init with copy of HealthDataQuery(v271, v263);
        v150 = v264;
        v151 = v265;
        v148 = __swift_project_boxed_opaque_existential_1(v147, v264);
        v61 = HyperParams.learningRate.getter();
        v62 = v164;
        v261 = v61;
        v262 = 0;
        dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
        v152 = v62;
        v153 = v62;
        if (v62)
        {
          v103 = v153;
          __swift_destroy_boxed_opaque_existential_1(v263);
          __swift_destroy_boxed_opaque_existential_1(v271);

          result = MEMORY[0x277D82BD8](v191);
          v107 = v103;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v263);
          v259 = v235;
          v260 = v236 & 1;

          if (v260)
          {
            v143 = HyperParams.defaultAge.getter();
            v144 = v143;
          }

          else
          {
            v144 = v259;
          }

          v140 = v144;

          v258 = v140;
          v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd, &_sSS_SaySfGtMR);
          v138 = _allocateUninitializedArray<A>(_:)();
          v139 = v63;

          v64 = v177;
          v65 = v139;
          *v139 = v176;
          v65[1] = v64;
          v66 = _allocateUninitializedArray<A>(_:)();
          v67 = v168;
          v68 = v211;
          v69 = v212;
          v70 = v213;
          v141 = v66;
          v142 = v71;
          *v71 = v140;
          v71[1] = v67;
          v71[2] = v68;
          v256 = v69;
          v257 = v70 & 1;
          if (v70)
          {
            v142[3] = -1.0;
          }

          else
          {
            *(v142 + 3) = v256;
          }

          v72 = v217;
          v73 = v216;
          v74 = v215;
          v75 = v142;
          v142[4] = v214;
          v75[5] = v74;
          v254 = v73;
          v255 = v72 & 1;
          if (v72)
          {
            v142[6] = -1.0;
          }

          else
          {
            *(v142 + 6) = v254;
          }

          v76 = v234;
          v77 = v233;
          v78 = v219;
          v79 = v142;
          v142[7] = v218;
          v79[8] = v78;
          v252 = v77;
          v253 = v76 & 1;
          if (v76)
          {
            v142[9] = -1.0;
          }

          else
          {
            *(v142 + 9) = v252;
          }

          v80 = v221;
          v81 = v142;
          v82 = v185;
          v83 = v196;
          v142[10] = v220;
          *(v81 + 11) = v83;
          *(v81 + 12) = v82;
          v81[13] = v80;
          v128 = MEMORY[0x277D83A90];
          _finalizeUninitializedArray<A>(_:)();
          v139[2] = v84;

          v85 = v179;
          v86 = v139;
          v139[3] = v178;
          v86[4] = v85;
          v251 = 1.0;
          v139[5] = Array.init(repeating:count:)();
          _finalizeUninitializedArray<A>(_:)();
          v129 = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
          v130 = Dictionary.init(dictionaryLiteral:)();
          v250 = v130;
          v131 = v246;
          outlined init with copy of HealthDataQuery(v271, v246);
          v132 = v247;
          v133 = v248;
          __swift_project_boxed_opaque_existential_1(v131, v247);
          static EspressoFunction.training.getter();
          v88 = v152;
          v89 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
          v134 = v88;
          v135 = v89;
          v136 = v88;
          if (v88)
          {
            v102 = v136;
            v145(v231, v224);
            __swift_destroy_boxed_opaque_existential_1(v246);

            __swift_destroy_boxed_opaque_existential_1(v271);

            result = MEMORY[0x277D82BD8](v191);
            v107 = v102;
          }

          else
          {
            v117 = v135;
            v145(v231, v224);
            v249 = v117;
            __swift_destroy_boxed_opaque_existential_1(v246);
            v118 = v243;
            outlined init with copy of HealthDataQuery(v271, v243);
            v124 = v244;
            v125 = v245;
            __swift_project_boxed_opaque_existential_1(v118, v244);
            v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
            v119 = _allocateUninitializedArray<A>(_:)();
            v120 = v90;

            v91 = v177;
            v92 = v120;
            *v120 = v176;
            v92[1] = v91;
            v92[2] = 14;

            v93 = v179;
            v94 = v120;
            v120[3] = v178;
            v94[4] = v93;
            v123 = 1;
            v94[5] = 1;
            _finalizeUninitializedArray<A>(_:)();
            v122 = Dictionary.init(dictionaryLiteral:)();
            (*(v202 + 104))(v205, *MEMORY[0x277D41360], v201);
            v95 = v134;
            dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
            v126 = v95;
            v127 = v95;
            if (v95)
            {
              v101 = v127;
              (*(v202 + 8))(v205, v201);

              __swift_destroy_boxed_opaque_existential_1(v243);
              outlined destroy of [(start: UInt32, end: UInt32)]();

              __swift_destroy_boxed_opaque_existential_1(v271);

              result = MEMORY[0x277D82BD8](v191);
              v107 = v101;
            }

            else
            {
              (*(v202 + 8))(v205, v201);

              __swift_destroy_boxed_opaque_existential_1(v243);
              v111 = v239;
              outlined init with copy of HealthDataQuery(v271, v239);
              v112 = v240;
              v113 = v241;
              __swift_project_boxed_opaque_existential_1(v111, v240);
              static EspressoFunction.training.getter();
              v96 = v126;
              v97 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
              v114 = v96;
              v115 = v97;
              v116 = v96;
              if (v96)
              {
                v100 = v116;
                v145(v228, v224);
                __swift_destroy_boxed_opaque_existential_1(v239);
              }

              else
              {
                v108 = v115;
                v145(v228, v224);
                v109 = &v242;
                v242 = v108;
                __swift_destroy_boxed_opaque_existential_1(v239);
                v110 = &v249;
                static HIDPFLUtils.inplaceSub(_:_:)(v109, &v249);
                outlined init with copy of [Float](v109, v198);
                v198[1] = v171;
                outlined destroy of [(start: UInt32, end: UInt32)]();
              }

              outlined destroy of [(start: UInt32, end: UInt32)]();

              __swift_destroy_boxed_opaque_existential_1(v271);

              return MEMORY[0x277D82BD8](v191);
            }
          }
        }
      }
    }
  }

  return result;
}

id NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = MEMORY[0x28223BE20](a1, a2);
  v670 = &v735;
  v609 = v29;
  v663 = v28;
  v32 = v31;
  v610._rawValue = v31;
  v34 = v33;
  v611._rawValue = v33;
  v36 = v35;
  v612 = v35;
  v38 = v37;
  v613 = v37;
  v40 = v39;
  v614 = v39;
  v42 = v41;
  v667 = v41;
  v662 = v43;
  v665 = v30;
  v655 = a27;
  v615 = a27;
  v659 = a26;
  v616 = a26;
  v658 = a25;
  v617 = a25;
  v657 = a24;
  v618._rawValue = a24;
  v654 = a23;
  v619._rawValue = a23;
  v653 = a22;
  v620._rawValue = a22;
  v652 = a21;
  v621._rawValue = a21;
  v651 = a20;
  v622._rawValue = a20;
  v661 = a19;
  v623._rawValue = a19;
  v660 = a18;
  v624._rawValue = a18;
  v650 = a17;
  v625._rawValue = a17;
  v656 = a16;
  v626._rawValue = a16;
  v649 = a15;
  v627._rawValue = a15;
  v648 = a14;
  v628._rawValue = a14;
  v647 = a13;
  v629._rawValue = a13;
  v646 = a12;
  v630._rawValue = a12;
  v645 = a11;
  v631._rawValue = a11;
  v644 = a10;
  v632._rawValue = a10;
  v633._rawValue = a9;
  v666 = a28;
  v634 = *v28;
  v635 = 0;
  v744 = 0;
  v743 = 0;
  v742 = 0;
  v741 = 0;
  v740 = 0;
  v739 = 0;
  v738 = 0;
  v737 = 0;
  v736 = 0;
  v733 = 0;
  v732 = 0;
  v731._rawValue = 0;
  v729 = 0;
  v728 = 0;
  v727 = 0;
  v726 = 0;
  v725 = 0;
  v724 = 0;
  v722 = 0;
  v720 = 0;
  v711 = 0;
  v710 = 0;
  v689 = 0;
  v684 = 0;
  v681 = 0;
  v678 = 0;
  v677 = 0;
  v676 = 0;
  v636 = type metadata accessor for Logger();
  v637 = *(v636 - 8);
  v638 = v637;
  v640 = *(v637 + 64);
  v44 = MEMORY[0x28223BE20](0, v636);
  v642 = (v640 + 15) & 0xFFFFFFFFFFFFFFF0;
  v639 = &v313 - v642;
  v45 = MEMORY[0x28223BE20](v44, &v313 - v642);
  v641 = &v313 - v642;
  MEMORY[0x28223BE20](v45, &v313 - v642);
  v643 = &v313 - v642;
  v46 = type metadata accessor for String.Encoding();
  v47 = v650;
  v664 = &v313 - ((MEMORY[0x28223BE20](*(*(v46 - 8) + 64), v656) + 15) & 0xFFFFFFFFFFFFFFF0);
  v744 = v665;
  v743 = v662;
  v742 = v42;
  v741 = v40;
  v740 = v38;
  v739 = v36;
  v745 = v34;
  v746 = v32;
  v747 = a9;
  v748 = v48;
  v749 = v49;
  v750 = v50;
  v751 = v51;
  v752 = v52;
  v753 = v53;
  v754 = v54;
  v755 = v47;
  v756 = v660;
  v757 = v661;
  v758 = v55;
  v759 = v56;
  v760 = v57;
  v761 = v58;
  v762 = v657;
  v763 = v658;
  v764 = v659;
  v765 = v59;
  v738 = v666;
  v737 = v663;

  v736 = v666;
  v669 = NightingaleDPFLRunner.performanceMeasure.getter();
  v671 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v60 = HyperParams.evalEngine.getter();
  v61 = v670;
  v62 = v671;
  *(v670 + 1) = v60 & 1;
  *v61 = v62;
  lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine();
  if (== infix<A>(_:_:)())
  {
    v63 = v609;
    static OnDeviceML.extendMorpheus()();
    v607 = v63;
    v608 = v63;
    if (v63)
    {
      v363 = v608;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      result = v363;
      v364 = v363;
      return result;
    }

    static Math.extendMorpheus()();
    v605 = 0;
    v606 = 0;
    HyperParams.morpheusEvalProgramFileName.getter();
    v601 = v64;
    v65 = dispatch thunk of PFLTask.attachmentPath(name:)();
    v604 = v66;
    v602 = v65;
    v603 = v66;

    if (v604)
    {
      v599 = v602;
      v600 = v603;
      v592 = v603;
      v591 = v602;
      v593 = v605;
      v726 = v602;
      v727 = v603;
      static String.Encoding.utf8.getter();
      v67 = v593;
      v68 = String.init(contentsOfFile:encoding:)();
      v594 = v67;
      v595 = v68;
      v596 = v69;
      v597 = v67;
      if (v67)
      {
        v361 = 0;
        v362 = 0;

        v588 = v361;
        v589 = v361;
        v590 = v362;
      }

      else
      {
        v588 = v595;
        v589 = v596;
        v590 = 0;
      }

      v585 = v590;
      v586 = v589;
      v587 = v588;
      if (v589)
      {
        v583 = v587;
        v584 = v586;
        v575 = v586;
        v576 = v587;
        v724 = v587;
        v725 = v586;
        static PFLLogging.plugin.getter();
        v581 = Logger.logObject.getter();
        v577 = v581;
        v580 = static os_log_type_t.debug.getter();
        v578 = v580;
        v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v582 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v581, v580))
        {
          v573 = v585;
          v565 = static UnsafeMutablePointer.allocate(capacity:)();
          v561 = v565;
          v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v563 = 0;
          v566 = createStorage<A>(capacity:type:)(0, v562, v562);
          v564 = v566;
          v567 = createStorage<A>(capacity:type:)(v563, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v675 = v565;
          v674 = v566;
          v673 = v567;
          v568 = 0;
          v569 = &v675;
          serialize(_:at:)(0, &v675);
          serialize(_:at:)(v568, v569);
          v672 = v582;
          v570 = &v313;
          MEMORY[0x28223BE20](&v313, v71);
          v571 = &v313 - 6;
          *(&v313 - 4) = v72;
          *(&v313 - 3) = &v674;
          *(&v313 - 2) = &v673;
          v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          v73 = v573;
          Sequence.forEach(_:)();
          v574 = v73;
          if (v73)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_25C4D8000, v577, v578, "Using Morpheus to eval.", v561, 2u);
            v559 = 0;
            destroyStorage<A>(_:count:)(v564, 0, v562);
            destroyStorage<A>(_:count:)(v567, v559, MEMORY[0x277D84F70] + 8);
            MEMORY[0x25F8899D0](v561, MEMORY[0x277D84B78]);

            v560 = v574;
          }
        }

        else
        {

          v560 = v585;
        }

        v556 = v560;

        v550 = *(v638 + 8);
        v551 = (v638 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v550(v643, v636);
        v723 = v665;

        v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v552 = v554;
        v555 = type metadata accessor for HyperParams();
        v553 = v555;
        v74 = lazy protocol witness table accessor for type [String] and conformance [A]();
        v75 = v556;
        v77 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v667, v554, v555, MEMORY[0x277D84A98], v74, MEMORY[0x277D84AC0], v76);
        v557 = v75;
        v558 = v77;
        if (v75)
        {

          __break(1u);
        }

        else
        {
          v543 = v558;
          v547 = 0;

          v722 = v543;
          v721[1] = v543;

          v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining11HyperParamsCGMd, &_sSay19NightingaleTraining11HyperParamsCGMR);
          v544 = v545;
          v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v78 = lazy protocol witness table accessor for type [HyperParams] and conformance [A]();
          v79 = v547;
          v80 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v662, v545, MEMORY[0x277D837D0], v546, v78, MEMORY[0x277D84950], v721);
          v548 = v79;
          v549 = v80;
          if (!v79)
          {
            v538 = v549;
            v539 = 0;

            v711 = v538;
            type metadata accessor for MorpheusProgram();
            v81 = v539;
            v82 = static MorpheusProgram.fromDSL(_:)();
            v540 = v81;
            v541 = v82;
            v542 = v81;
            if (v81)
            {
              v319 = v542;
              v320 = 0;

              v459 = v319;
              v460 = v320;
              goto LABEL_59;
            }

            v508 = v541;
            v532 = 0;
            v710 = v541;
            v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
            v509 = v524;
            v510 = 20;
            v517 = _allocateUninitializedArray<A>(_:)();
            v516 = v83;
            v512 = 15;
            v530 = 1;
            v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10", 0xFuLL, 1);
            *v516 = v84;
            v514 = &v745;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v745, &v709);
            v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
            v86 = v510;
            v87 = v516;
            rawValue = v611._rawValue;
            v89 = v530;
            v515 = v85;
            v516[2]._object = v85;
            v87[1]._countAndFlagsBits = rawValue;
            v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaySHR10Stats", v86, v89);
            v91 = v514;
            v516[3] = v90;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v91, &v708);
            v92 = v516;
            v93 = v610._rawValue;
            v94 = v530;
            v516[5]._object = v515;
            v92[4]._countAndFlagsBits = v93;
            v95 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10", 0x11uLL, v94);
            v96 = v514;
            v516[6] = v95;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v96, &v707);
            v97 = v516;
            v98 = v633._rawValue;
            v99 = v530;
            v516[8]._object = v515;
            v97[7]._countAndFlagsBits = v98;
            v513 = 22;
            v100 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureNightSHR10Stats", 0x16uLL, v99);
            v101 = v514;
            v516[9] = v100;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v101, &v706);
            v102 = v516;
            v103 = v632._rawValue;
            v104 = v530;
            v516[11]._object = v515;
            v102[10]._countAndFlagsBits = v103;
            v511 = 10;
            v105 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSM", 0xAuLL, v104);
            v106 = v514;
            v516[12] = v105;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v106, &v705);
            v107 = v512;
            v108 = v516;
            v109 = v631._rawValue;
            v110 = v530;
            v516[14]._object = v515;
            v108[13]._countAndFlagsBits = v109;
            v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSMStats", v107, v110);
            v112 = v514;
            v516[15] = v111;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v112, &v704);
            v113 = v511;
            v114 = v516;
            v115 = v630._rawValue;
            v116 = v530;
            v516[17]._object = v515;
            v114[16]._countAndFlagsBits = v115;
            v117 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSS", v113, v116);
            v118 = v514;
            v516[18] = v117;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v118, &v703);
            v119 = v512;
            v120 = v516;
            v121 = v629._rawValue;
            v122 = v530;
            v516[20]._object = v515;
            v120[19]._countAndFlagsBits = v121;
            v123 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featurePSSStats", v119, v122);
            v124 = v514;
            v516[21] = v123;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v124, &v702);
            v125 = v516;
            v126 = v628._rawValue;
            v127 = v530;
            v516[23]._object = v515;
            v125[22]._countAndFlagsBits = v126;
            v128 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStart", 0x1FuLL, v127);
            v129 = v514;
            v516[24] = v128;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v129, &v701);
            v130 = v516;
            v131 = v627._rawValue;
            v132 = v530;
            v516[26]._object = v515;
            v130[25]._countAndFlagsBits = v131;
            v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureDaysSinceLastPeriodStartStats", 0x24uLL, v132);
            v134 = v514;
            v516[27] = v133;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v134, &v700);
            v135 = v511;
            v136 = v516;
            v137 = v626._rawValue;
            v138 = v530;
            v516[29]._object = v515;
            v136[28]._countAndFlagsBits = v137;
            v139 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWT", v135, v138);
            v140 = v514;
            v516[30] = v139;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v140, &v699);
            v141 = v512;
            v142 = v516;
            v143 = v625._rawValue;
            v144 = v530;
            v516[32]._object = v515;
            v142[31]._countAndFlagsBits = v143;
            v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSWTStats", v141, v144);
            v146 = v514;
            v516[33] = v145;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v146, &v698);
            v147 = v511;
            v148 = v516;
            v149 = v624._rawValue;
            v150 = v530;
            v516[35]._object = v515;
            v148[34]._countAndFlagsBits = v149;
            v151 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRV", v147, v150);
            v152 = v514;
            v516[36] = v151;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v152, &v697);
            v153 = v512;
            v154 = v516;
            v155 = v623._rawValue;
            v156 = v530;
            v516[38]._object = v515;
            v154[37]._countAndFlagsBits = v155;
            v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureHRVStats", v153, v156);
            v158 = v514;
            v516[39] = v157;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v158, &v696);
            v159 = v513;
            v160 = v516;
            v161 = v622._rawValue;
            v162 = v530;
            v516[41]._object = v515;
            v160[40]._countAndFlagsBits = v161;
            v163 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRate", v159, v162);
            v164 = v514;
            v516[42] = v163;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v164, &v695);
            v165 = v516;
            v166 = v621._rawValue;
            v167 = v530;
            v516[44]._object = v515;
            v165[43]._countAndFlagsBits = v166;
            v168 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureRespiratoryRateStats", 0x1BuLL, v167);
            v169 = v514;
            v516[45] = v168;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v169, &v694);
            v170 = v516;
            v171 = v620._rawValue;
            v172 = v530;
            v516[47]._object = v515;
            v170[46]._countAndFlagsBits = v171;
            v173 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2", 0xBuLL, v172);
            v174 = v514;
            v516[48] = v173;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v174, &v693);
            v175 = v516;
            v176 = v619._rawValue;
            v177 = v530;
            v516[50]._object = v515;
            v175[49]._countAndFlagsBits = v176;
            v178 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("featureSpO2Stats", 0x10uLL, v177);
            v179 = v514;
            v516[51] = v178;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v179, &v692);
            v180 = v516;
            v181 = v618._rawValue;
            v182 = v530;
            v516[53]._object = v515;
            v180[52]._countAndFlagsBits = v181;
            v183 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceEndDays", 0xCuLL, v182);
            v184 = v514;
            v516[54] = v183;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v184, &v691);
            v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
            v186 = v516;
            v187 = v617;
            v188 = v530;
            v516[56]._object = v185;
            v186[55]._countAndFlagsBits = v187;
            v189 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("labels", 6uLL, v188);
            v190 = v514;
            v516[57] = v189;
            outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v190, &v690);
            v191 = v516;
            v192 = v616;
            v516[59]._object = v515;
            v191[58]._countAndFlagsBits = v192;
            _finalizeUninitializedArray<A>(_:)();
            v518 = v193;

            v527 = MEMORY[0x277D84F70] + 8;
            v529 = MEMORY[0x277D837D0];
            v528 = MEMORY[0x277D837E0];
            v520 = Dictionary.init(dictionaryLiteral:)();
            v519 = v520;
            v689 = v520;
            v523 = _allocateUninitializedArray<A>(_:)();
            v522 = v194;

            v525 = 0;
            v195 = type metadata accessor for PFLTask();
            v196 = v662;
            v197 = v522;
            v522[3] = v195;
            *v197 = v196;

            v198 = v667;
            v199 = v522;
            v522[7] = v553;
            v199[4] = v198;

            v200 = v543;
            v201 = v522;
            v522[11] = v544;
            v201[8] = v200;

            v202 = v538;
            v203 = v522;
            v522[15] = v552;
            v203[12] = v202;

            v204 = v665;
            v205 = v522;
            v522[19] = v552;
            v205[16] = v204;

            v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
            v207 = v520;
            v208 = v522;
            v521 = v206;
            v522[23] = v206;
            v208[20] = v207;

            v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32V5start_AB3endtGMd, &_sSays6UInt32V5start_AB3endtGMR);
            v210 = v614;
            v211 = v522;
            v522[27] = v209;
            v211[24] = v210;

            v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
            v213 = v613;
            v214 = v612;
            v215 = v522;
            v522[31] = v212;
            v215[28] = v213;
            v215[35] = MEMORY[0x277D83B88];
            v215[32] = v214;
            _finalizeUninitializedArray<A>(_:)();
            v533 = v216;
            v526 = v216;
            _allocateUninitializedArray<A>(_:)();
            v534 = Dictionary.init(dictionaryLiteral:)();
            v531 = v534;
            v217 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("eval", 4uLL, v530);
            v218 = v532;
            v535 = v217._object;
            dispatch thunk of MorpheusProgram.execute(args:keywords:function:)();
            v536 = v218;
            v537 = v218;
            if (v218)
            {
              v317 = v537;
              v318 = 0;

              v459 = v317;
              v460 = v318;
              goto LABEL_59;
            }

            v686[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
            v686[0] = swift_allocObject();
            outlined init with copy of Any?(v688, v686[0] + 16);
            v507 = &v687;
            v506 = v686;
            static MorpheusUtils.unwrapMorpheusResult(result:)();
            __swift_destroy_boxed_opaque_existential_1(v506);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
            if (swift_dynamicCast())
            {
              v505 = v685;
            }

            else
            {
              v505 = 0;
            }

            v504 = v505;
            if (v505)
            {
              v503 = v504;
              v502 = v504;
              v684 = v504;
              if (MEMORY[0x25F8895B0]() >= 2)
              {
                v501 = MEMORY[0x277D84F70] + 8;
                v500 = &v683;
                Array.subscript.getter();
                if (swift_dynamicCast())
                {
                  v499 = v682;
                }

                else
                {
                  v499 = 0;
                }

                v498 = v499;
                if (v499)
                {
                  v497 = v498;
                  v219 = v536;
                  v495 = v498;
                  v681 = v498;

                  Dictionary.merge(_:uniquingKeysWith:)();
                  v496 = v219;
                  if (v219)
                  {
                    __break(1u);
LABEL_71:
                    __break(1u);
                    v315 = v468;
                    v316 = 0;

                    outlined destroy of Pregnancy?(v688);

                    v459 = v315;
                    v460 = v316;
                    goto LABEL_59;
                  }

                  v493 = MEMORY[0x277D84F70] + 8;
                  v494 = &v680;
                  Array.subscript.getter();
                  type metadata accessor for NSNumber();
                  if (swift_dynamicCast())
                  {
                    v492 = v679;
                  }

                  else
                  {
                    v492 = 0;
                  }

                  v491 = v492;
                  if (v492)
                  {
                    v490 = v491;
                    v486 = v491;
                    [v491 floatValue];
                    v487 = v220;

                    v488 = v487;
                    v489 = 0;
                  }

                  else
                  {
                    v488 = 0;
                    v489 = 1;
                  }

                  v485 = v488;
                  if ((v489 & 1) == 0)
                  {
                    v484 = v485;
                    v480 = v485;
                    v482 = v496;
                    v678 = v485;
                    v470 = NightingaleDPFLRunner.performanceMeasure.getter();
                    v471 = 1;
                    v469 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
                    dispatch thunk of PerformanceMeasure.finish(_:)();
                    v474 = v221;

                    v677 = v474;
                    v222 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
                    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_trainingCompleted, v222);
                    v473 = NightingaleDPFLRunner.performanceMeasure.getter();
                    v472 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v471)._object;
                    dispatch thunk of PerformanceMeasure.finish(_:)();
                    v477 = v223;

                    v676 = v477;
                    v481 = _allocateUninitializedArray<A>(_:)();
                    v479 = v224;
                    v225 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v225, v479);
                    v226 = v474;
                    v227 = v479;
                    v476 = MEMORY[0x277D839F8];
                    v479[5] = MEMORY[0x277D839F8];
                    v227[2] = v226;
                    v475 = v227 + 6;
                    v228 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v228, v475);
                    v229 = v477;
                    v230 = v479;
                    v479[11] = v476;
                    v230[8] = v229;
                    v478 = v230 + 12;
                    v231 = NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();
                    outlined init with copy of String(v231, v478);
                    v232 = v479;
                    v233 = v480;
                    v479[17] = MEMORY[0x277D83A90];
                    *(v232 + 28) = v233;
                    _finalizeUninitializedArray<A>(_:)();
                    Dictionary.init(dictionaryLiteral:)();
                    v234 = v482;
                    Dictionary.merge(_:uniquingKeysWith:)();
                    v483 = v234;
                    if (!v234)
                    {
                      v466 = &v313;
                      MEMORY[0x28223BE20](&v313, v235);
                      *(&v313 - 2) = &v736;
                      NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(12, 1, (&v313 - 4), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
                      v467 = 0;
                      v468 = 0;
                      v462 = 0;
                      type metadata accessor for PFLTaskResult();
                      v461 = v736;

                      v463 = PFLTaskResult.__allocating_init(json:vector:)();

                      outlined destroy of Pregnancy?(v688);

                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      v464 = v463;
                      v465 = v467;
                      return v464;
                    }

                    goto LABEL_71;
                  }

                  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                  v456 = 0;
                  v457 = swift_allocError();
                  *v236 = 91;
                  swift_willThrow();
                  v458 = v456;

                  outlined destroy of Pregnancy?(v688);

                  v459 = v457;
                  v460 = v458;
                }

                else
                {
                  lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
                  v453 = 0;
                  v454 = swift_allocError();
                  *v237 = 89;
                  swift_willThrow();
                  v455 = v453;

                  outlined destroy of Pregnancy?(v688);

                  v459 = v454;
                  v460 = v455;
                }

LABEL_59:
                v294 = v639;
                v342 = v460;
                v424 = v459;
                v295 = v459;
                v720 = v424;
                v296 = Logging.default.unsafeMutableAddressor();
                v444 = *(v638 + 16);
                v443 = (v638 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
                v444(v294, v296, v636);
                v297 = v424;
                v350 = 7;
                v348 = swift_allocObject();
                *(v348 + 16) = v424;
                default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

                v360 = Logger.logObject.getter();
                v343 = v360;
                v359 = static os_log_type_t.error.getter();
                v344 = v359;
                v345 = 17;
                v354 = swift_allocObject();
                v346 = v354;
                *(v354 + 16) = 64;
                v355 = swift_allocObject();
                v347 = v355;
                *(v355 + 16) = 8;
                v349 = 32;
                v298 = swift_allocObject();
                v299 = v348;
                v351 = v298;
                *(v298 + 16) = partial apply for implicit closure #2 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:);
                *(v298 + 24) = v299;
                v300 = swift_allocObject();
                v301 = v351;
                v352 = v300;
                *(v300 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
                *(v300 + 24) = v301;
                v302 = swift_allocObject();
                v303 = v352;
                v358 = v302;
                v353 = v302;
                *(v302 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
                *(v302 + 24) = v303;
                v356 = _allocateUninitializedArray<A>(_:)();
                v357 = v304;

                v305 = v354;
                v306 = v357;
                *v357 = partial apply for closure #1 in OSLogArguments.append(_:);
                v306[1] = v305;

                v307 = v355;
                v308 = v357;
                v357[2] = partial apply for closure #1 in OSLogArguments.append(_:);
                v308[3] = v307;

                v309 = v357;
                v310 = v358;
                v357[4] = partial apply for closure #1 in OSLogArguments.append(_:);
                v309[5] = v310;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v360, v359))
                {
                  v339 = v342;
                  v334 = static UnsafeMutablePointer.allocate(capacity:)();
                  v331 = v334;
                  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v337 = 1;
                  v335 = createStorage<A>(capacity:type:)(1, v332, v332);
                  v333 = v335;
                  v336 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v716[0] = v334;
                  v715 = v335;
                  v714 = v336;
                  v338 = v716;
                  serialize(_:at:)(2, v716);
                  serialize(_:at:)(v337, v338);
                  v311 = v339;
                  v712 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v713 = v346;
                  closure #1 in osLogInternal(_:log:type:)(&v712, v338, &v715, &v714);
                  v340 = v311;
                  v341 = v311;
                  if (v311)
                  {
                    v329 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v712 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v713 = v347;
                    closure #1 in osLogInternal(_:log:type:)(&v712, v716, &v715, &v714);
                    v327 = 0;
                    v328 = 0;
                    v712 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v713 = v353;
                    closure #1 in osLogInternal(_:log:type:)(&v712, v716, &v715, &v714);
                    v325 = 0;
                    v326 = 0;
                    _os_log_impl(&dword_25C4D8000, v343, v344, "Error executing Morpheus program for eval: %@.", v331, 0xCu);
                    destroyStorage<A>(_:count:)(v333, 1, v332);
                    destroyStorage<A>(_:count:)(v336, 0, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x25F8899D0](v331, MEMORY[0x277D84B78]);

                    v330 = v325;
                  }
                }

                else
                {

                  v330 = v342;
                }

                v428 = v330;

                v550(v639, v636);
                if ((HyperParams.evalFallbackToNative.getter() & 1) == 0)
                {
                  v312 = v424;
                  v323 = _convertErrorToNSError(_:)();
                  v324 = [v323 code];

                  NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_trainingCompleted, v324);
                  swift_willThrow();

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  result = v424;
                  v364 = v424;
                  return result;
                }

                v239 = v641;
                v240 = Logging.default.unsafeMutableAddressor();
                v444(v239, v240, v636);
                v448 = Logger.logObject.getter();
                v445 = v448;
                v447 = static os_log_type_t.info.getter();
                v446 = v447;
                v449 = _allocateUninitializedArray<A>(_:)();
                if (os_log_type_enabled(v448, v447))
                {
                  v441 = v428;
                  v433 = static UnsafeMutablePointer.allocate(capacity:)();
                  v429 = v433;
                  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v431 = 0;
                  v434 = createStorage<A>(capacity:type:)(0, v430, v430);
                  v432 = v434;
                  v435 = createStorage<A>(capacity:type:)(v431, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v719 = v433;
                  v718 = v434;
                  v717 = v435;
                  v436 = 0;
                  v437 = &v719;
                  serialize(_:at:)(0, &v719);
                  serialize(_:at:)(v436, v437);
                  v716[1] = v449;
                  v438 = &v313;
                  MEMORY[0x28223BE20](&v313, v241);
                  v439 = &v313 - 6;
                  *(&v313 - 4) = v242;
                  *(&v313 - 3) = &v718;
                  *(&v313 - 2) = &v717;
                  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                  v243 = v441;
                  Sequence.forEach(_:)();
                  v442 = v243;
                  if (v243)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&dword_25C4D8000, v445, v446, "Fallback to use native eval.", v429, 2u);
                    v426 = 0;
                    destroyStorage<A>(_:count:)(v432, 0, v430);
                    destroyStorage<A>(_:count:)(v435, v426, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x25F8899D0](v429, MEMORY[0x277D84B78]);

                    v427 = v442;
                  }
                }

                else
                {

                  v427 = v428;
                }

                v425 = v427;

                v550(v641, v636);

                v598 = v425;
                goto LABEL_51;
              }
            }

            lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
            v450 = 0;
            v451 = swift_allocError();
            *v238 = 86;
            swift_willThrow();
            v452 = v450;
            outlined destroy of Pregnancy?(v688);

            v459 = v451;
            v460 = v452;
            goto LABEL_59;
          }
        }

        v322 = 0;
        v321 = v721[0];

        v459 = v321;
        v460 = v322;
        goto LABEL_59;
      }

      v598 = v585;
    }

    else
    {
      v598 = v605;
    }

LABEL_51:
    v423 = v598;
    goto LABEL_53;
  }

  v423 = v609;
LABEL_53:
  v409 = v423;
  v408 = &v745;
  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v745, &v734);
  v410 = MEMORY[0x25F8895B0](v616, MEMORY[0x277D83A90]);
  v388 = v410;
  v733 = v410;

  v244 = HyperParams.batchSize.getter();
  static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(v410, v244);
  v411 = v245;
  v732 = v245;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd, &_sSS_SaySfGtMR);
  v389 = _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  v731._rawValue = Dictionary.init(dictionaryLiteral:)();
  v390 = HyperParams.isDaySHRRequired()();
  v391 = *HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();

  v419 = &v731;
  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v390, v611, v610, v391, &v731);

  v392 = HyperParams.isNightSHRRequired()();
  v393 = *HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v392, v633, v632, v393, v419);

  v394 = HyperParams.isPSMRequired()();
  v395 = *HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v394, v631, v630, v395, v419);

  v396 = HyperParams.isPSSRequired()();
  v397 = *HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v396, v629, v628, v397, v419);

  v398 = HyperParams.isSWTRequired()();
  v399 = *HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v398, v625, v624, v399, v419);

  PeriodStart = HyperParams.isDaysSinceLastPeriodStartRequired()();
  v401 = *HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(PeriodStart, v627, v626, v401, v419);

  v402 = HyperParams.isHRVRequired()();
  v403 = *HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v402, v623, v622, v403, v419);

  v404 = HyperParams.isRespiratoryRateRequired()();
  v405 = *HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v404, v621, v620, v405, v419);

  v246 = HyperParams.isSpO2Required()();
  v247 = v663;
  v406 = v246;
  v407 = *HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();

  transferFeatureToMLInputs(required:feature:stats:name:mlInputs:)(v406, v619, v618, v407, v419);

  outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(v408, &v730);
  v248 = v409;

  v413 = v745;
  v414 = v746;
  v415 = v747;
  v418 = v749;
  v249 = v750;
  v250 = v751;
  v251 = v752;
  v252 = v753;
  v253 = v754;
  v254 = v755;
  v255 = v756;
  v416 = v762;
  v417 = v763;
  v412 = &v313;
  v256 = MEMORY[0x28223BE20](v410, v411);
  v257 = v413;
  v258 = v414;
  v259 = v415;
  v260 = v416;
  v261 = v417;
  v262 = v418;
  v420 = &v313;
  v263 = &v313 - 36;
  v263[2] = v264;
  v263[3] = v667;
  *(&v313 - 32) = v419;
  v265 = v662;
  *(v420 - 31) = v257;
  v266 = v614;
  *(v420 - 30) = v258;
  v267 = v613;
  *(v420 - 29) = v259;
  LODWORD(v258) = v612;
  v268 = v420;
  *(v420 - 28) = v269;
  v270 = v634;
  *(v268 - 27) = v262;
  *(v268 - 26) = v249;
  *(v268 - 25) = v250;
  *(v268 - 24) = v251;
  *(v268 - 23) = v252;
  *(v268 - 22) = v253;
  *(v268 - 21) = v254;
  *(v268 - 20) = v255;
  *(v268 - 19) = v271;
  *(v268 - 18) = v272;
  *(v268 - 17) = v273;
  *(v268 - 16) = v274;
  *(v268 - 15) = v275;
  *(v268 - 14) = v260;
  *(v268 - 13) = v261;
  *(v268 - 12) = v276;
  *(v268 - 11) = v277;
  *(v268 - 10) = v256;
  *(v268 - 9) = v265;
  *(v268 - 8) = v247;
  *(v268 - 7) = v278;
  *(v268 - 6) = v266;
  *(v268 - 5) = v267;
  *(v268 - 8) = v258;
  *(v268 - 3) = &v736;
  *(v268 - 2) = v270;
  NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(11, 1, (&v313 - 36), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v421 = v248;
  v422 = v248;
  if (v248)
  {
    v314 = v422;

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    result = v314;
    v364 = v314;
  }

  else
  {
    v385 = 0;

    outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])();

    v373 = NightingaleDPFLRunner.performanceMeasure.getter();
    v374 = 1;
    v372 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v377 = v279;

    v729 = v377;
    v376 = NightingaleDPFLRunner.performanceMeasure.getter();
    v375 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v374)._object;
    dispatch thunk of PerformanceMeasure.finish(_:)();
    v380 = v280;

    v728 = v380;
    v281 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining_NightingaleDReachLocation_pluginCompleted, v281);
    v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    v384 = _allocateUninitializedArray<A>(_:)();
    v382 = v282;
    v283 = NightingaleDPFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v283, v382);
    v284 = v377;
    v285 = v382;
    v379 = MEMORY[0x277D839F8];
    v382[5] = MEMORY[0x277D839F8];
    v285[2] = v284;
    v378 = v285 + 6;
    v286 = NightingaleDPFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
    outlined init with copy of String(v286, v378);
    v287 = v380;
    v288 = v382;
    v382[11] = v379;
    v288[8] = v287;
    v381 = v288 + 12;
    v289 = NightingaleDPFLRunner.keyNumSlices.unsafeMutableAddressor();
    outlined init with copy of String(v289, v381);
    v290 = v382;
    v291 = v388;
    v382[17] = MEMORY[0x277D83B88];
    v290[14] = v291;
    _finalizeUninitializedArray<A>(_:)();
    v386 = Dictionary.init(dictionaryLiteral:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
    v292 = v385;
    Dictionary.merge(_:uniquingKeysWith:)();
    v387 = v292;
    if (!v292)
    {
      v369 = v736;
      v368 = v736;

      static HIDPFLUtils.checkMetrics(_:)(v369);
      v370 = 0;
      v371 = 0;

      v366 = 0;
      type metadata accessor for PFLTaskResult();
      v365 = v736;

      v367 = PFLTaskResult.__allocating_init(json:vector:)();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v464 = v367;
      v465 = v370;
      return v464;
    }

    __break(1u);
    v313 = v371;

    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    return v313;
  }

  return result;
}

uint64_t closure #1 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  type metadata accessor for HyperParams();
  HyperParams.recipeForModel(model:)(v5, v4);
  v2 = _dictionaryUpCast<A, B, C, D>(_:)();
  v6 = HyperParams.__allocating_init(recipe:)(v2);

  result = v6;
  *a2 = v6;
  return result;
}

uint64_t closure #2 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)@<X0>(uint64_t *a1@<X2>, Swift::String_optional *a2@<X8>)
{
  v2._countAndFlagsBits = HyperParams.modelPath.getter();
  v3 = PFLTask.evalModelPath(path:)(v2);

  if (v3.value._object)
  {

    *a2 = v3;
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v6 = swift_allocError();
    *v4 = 9;
    swift_willThrow();
    result = v6;
    *a1 = v6;
  }

  return result;
}

void closure #6 in NightingaleDPFLRunner.runEvals(evalModels:task:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v13 = MEMORY[0x28223BE20](a1, a2);
  v473 = v12;
  v459 = v14;
  v458 = v15;
  v457 = v16;
  v456 = v17;
  v19 = v18;
  v449 = v18;
  v455 = v20;
  v461 = v21;
  v469 = v13;
  v460 = a12;
  v450 = a12;
  v467 = a11;
  v451 = a11;
  v466 = a10;
  v452 = a10;
  v465 = a9;
  v453 = a9;
  v454 = 0;
  v557 = 0;
  v556 = 0;
  v555 = 0;
  v554 = 0;
  v553 = 0;
  v552 = 0;
  v551 = 0;
  v550 = 0;
  v549 = 0;
  v548 = 0;
  v547 = 0;
  v546 = 0;
  v545 = 0;
  v541 = 0;
  v540 = 0;
  v539 = 0;
  v538 = 0;
  v537 = 0;
  v536 = 0;
  v535 = 0;
  v534 = 0;
  v533 = 0;
  v532 = 0;
  v531 = 0;
  v530 = 0;
  v529 = 0;
  v524 = 0;
  v523 = 0;
  v517 = 0;
  v508 = 0.0;
  v507 = 0;
  v503 = 0;
  v502 = 0;
  v501 = 0;
  v494 = 0;
  v486 = 0;
  v483 = 0.0;
  v480 = 0;
  v22 = *v18;
  v23 = v18[1];
  v24 = v18[2];
  v25 = v18[3];
  v26 = v18[4];
  v27 = v18[5];
  v28 = v18[6];
  v29 = v18[7];
  v30 = v19[8];
  v31 = v19[9];
  v32 = v19[10];
  v33 = v19[11];
  v34 = v19[12];
  v35 = v19[13];
  v36 = v19[14];
  v37 = v19[15];
  v38 = v19[16];
  v39 = v19[17];
  v40 = v19[18];
  v41 = v19[19];
  v42 = v19[20];
  v558 = v22;
  v559 = v23;
  v560 = v24;
  v561 = v25;
  v562 = v26;
  v563 = v27;
  v564 = v28;
  v565 = v29;
  v566 = v30;
  v567 = v31;
  v568 = v32;
  v569 = v33;
  v570 = v34;
  v571 = v35;
  v572 = v36;
  v573 = v37;
  v574 = v38;
  v575 = v39;
  v576 = v40;
  v577 = v41;
  v578 = v42;
  v462 = type metadata accessor for EspressoFunction();
  v463 = *(v462 - 8);
  v464 = v463;
  v43 = MEMORY[0x28223BE20](v469, v461);
  v468 = v104 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v557 = v43;
  v556 = v45;
  v555 = v46;
  v554 = v47;
  v553 = v48;
  v552 = v49;
  v551 = v50;
  v550 = a9;
  v549 = a10;
  v548 = a11;
  v547 = v51;

  v544 = v469;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v470 = v471;
  v472 = lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v473; ; i = v158)
  {
    v446 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd, &_ss16IndexingIteratorVySaySSGGMR);
    IndexingIterator.next()();
    v447 = v542;
    v448 = v543;
    if (!v543)
    {
      v443 = v446;
      outlined destroy of [(start: UInt32, end: UInt32)]();
      return;
    }

    v444 = v447;
    v445 = v448;
    v394 = v448;
    v395 = v447;
    v437 = v446;
    v540 = v447;
    v541 = v448;
    v397 = HyperParams.recipeForModel(model:)(v447, v448);
    v396 = v397;
    v539 = v397;
    type metadata accessor for HyperParams();

    v435 = MEMORY[0x277D837D0];
    v436 = MEMORY[0x277D837E0];
    v52 = _dictionaryUpCast<A, B, C, D>(_:)();
    v53 = HyperParams.__allocating_init(recipe:)(v52);
    v405 = v53;
    v398 = v53;

    v538 = v53;
    v410 = HyperParams.labelName.getter();
    v409 = v54;
    v399 = v410;
    v400 = v54;
    v536 = v410;
    v537 = v54;
    v401 = HyperParams.lossName.getter();
    v402 = v55;
    v534 = v401;
    v535 = v55;
    v403 = HyperParams.outputName.getter();
    v404 = v56;
    v532 = v403;
    v533 = v56;
    v406 = HyperParams.weightNames.getter();
    v531 = v406;
    v407 = HyperParams.modelRepresentation.getter();
    v408 = v57;
    v529 = v407;
    v530 = v57;

    outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(&v558, v528);
    v431 = v558;
    v430 = v559;
    v429 = v560;
    v428 = v561;
    v427 = v562;
    v426 = v563;
    v425 = v564;
    v424 = v565;
    v423 = v566;
    v422 = v567;
    v421 = v568;
    v420 = v569;
    v419 = v570;
    v418 = v571;
    v417 = v572;
    v416 = v573;
    v415 = v574;
    v414 = v575;
    v413 = v576;
    v412 = v578;
    v527 = v577;
    v525 = v410;
    v526 = v409;
    v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd, &_sSDySSSaySfGGMR);
    Dictionary.subscript.setter();

    v434 = *v455;
    v432 = v434;

    v439 = v104;
    MEMORY[0x28223BE20](v104, v58);
    v433 = &v104[-4];
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    v60 = v437;
    v438 = v59;
    v61 = Dictionary.mapValues<A>(_:)();
    v440 = v60;
    v441 = v61;
    v442 = v439;
    if (v60)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v141 = v350;
      v133 = v349;
      v134 = v348;
      v135 = v347;
      v136 = v346;
      v137 = v345;
      v138 = v344;
      v139 = v343;
      v140 = v342;
      v132 = v341;
      v131 = v340;
      v130 = v338;

      (*(v464 + 8))(v468, v462);
      __swift_destroy_boxed_opaque_existential_1(v514);

      __swift_destroy_boxed_opaque_existential_1(v522);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v379 = v141;
      return;
    }

    v383 = v441;

    v524 = v383;
    v62._countAndFlagsBits = HyperParams.modelPath.getter();
    object = v62._object;
    v63 = PFLTask.evalModelPath(path:)(v62);
    v384 = v63.value._object;
    v382 = v63;

    v385 = v383;
    v386 = v394;
    v387 = v396;
    v388 = v398;
    v389 = v400;
    v390 = v402;
    v391 = v404;
    v392 = v406;
    v393 = v408;
    if (!v384)
    {
      v370 = v393;
      v371 = v392;
      v372 = v391;
      v373 = v390;
      v374 = v389;
      v375 = v388;
      v376 = v387;
      v377 = v386;
      v369 = v385;
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v368 = 0;
      v378 = swift_allocError();
      *v64 = 9;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v379 = v378;
      return;
    }

    v380 = v382;
    v363 = v382.value._object;
    countAndFlagsBits = v382.value._countAndFlagsBits;
    v523 = v382;
    v65 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
    v365 = *v65;
    v366 = *(v65 + 1);

    v367 = MEMORY[0x25F889340](v407, v408, v365, v366);

    if (v367)
    {
      v362 = type metadata accessor for EspressoEIRTrainer();
      NightingaleDPFLRunner.performanceMeasure.getter();
      v66 = EspressoEIRTrainer.__allocating_init(_:)();
      v475[3] = v362;
      v475[4] = MEMORY[0x277D413C0];
      v475[0] = v66;
      outlined init with take of HealthDataQuery(v475, v522);
    }

    else
    {
      v361 = type metadata accessor for EspressoMILTrainer();
      NightingaleDPFLRunner.performanceMeasure.getter();
      v67 = EspressoMILTrainer.__allocating_init(_:)();
      v521[3] = v361;
      v521[4] = MEMORY[0x277D413D0];
      v521[0] = v67;
      outlined init with take of HealthDataQuery(v521, v522);
    }

    v358 = v440;
    v353 = v461 + 24;
    v354 = 32;
    v352 = &v520;
    v357 = 0;
    swift_beginAccess();
    v351 = *(v461 + 24);

    swift_endAccess();
    v355 = &v519;
    swift_beginAccess();
    v356 = *(v461 + 24);

    swift_endAccess();
    v68 = v358;
    v518 = v356;
    v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #5 in NightingaleDPFLRunner.runTraining(task:modelPath:hyperParams:historicalPeriods:pregnancies:today:features:existingMetrics:), v357, v470, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v472, MEMORY[0x277D84AC0], v69);
    v359 = v68;
    v360 = v70;
    if (v68)
    {
      goto LABEL_35;
    }

    v322 = v360;
    v332 = 0;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v330 = MEMORY[0x277D837D0];
    v326 = static Array.+ infix(_:_:)();

    v323 = _allocateUninitializedArray<A>(_:)();
    v324 = v71;

    v72 = v324;
    v73 = v400;
    *v324 = v399;
    v72[1] = v73;
    _finalizeUninitializedArray<A>(_:)();
    v325 = v74;
    v331 = static Array.+ infix(_:_:)();
    v335 = v331;

    v517 = v331;
    v327 = v514;
    outlined init with copy of HealthDataQuery(v522, v514);
    v333 = v515;
    v334 = v516;
    __swift_project_boxed_opaque_existential_1(v327, v515);
    static EspressoFunction.evaluation.getter();
    v328 = _allocateUninitializedArray<A>(_:)();
    v329 = v75;

    v76 = v329;
    v77 = v402;
    *v329 = v401;
    v76[1] = v77;

    v78 = v329;
    v79 = v404;
    v329[2] = v403;
    v78[3] = v79;
    _finalizeUninitializedArray<A>(_:)();
    v80 = v332;
    v336 = v81;
    dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
    v337 = v80;
    v338 = v335;
    v339 = v336;
    v340 = v363;
    v341 = v383;
    v342 = v394;
    v343 = v396;
    v344 = v398;
    v345 = v400;
    v346 = v402;
    v347 = v404;
    v348 = v406;
    v349 = v408;
    v350 = v80;
    if (v80)
    {
      goto LABEL_36;
    }

    v306 = 0;

    (*(v464 + 8))(v468, v462);
    __swift_destroy_boxed_opaque_existential_1(v514);
    v305 = v511;
    outlined init with copy of HealthDataQuery(v522, v511);
    v307 = v512;
    v308 = v513;
    __swift_project_boxed_opaque_existential_1(v305, v512);
    v82 = v306;
    v509 = 0;
    v510 = 1;
    dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
    v309 = v82;
    v310 = v335;
    v311 = v363;
    v312 = v383;
    v313 = v394;
    v314 = v396;
    v315 = v398;
    v316 = v400;
    v317 = v402;
    v318 = v404;
    v319 = v406;
    v320 = v408;
    v321 = v82;
    if (v82)
    {
      v129 = v321;
      v121 = v320;
      v122 = v319;
      v123 = v318;
      v124 = v317;
      v125 = v316;
      v126 = v315;
      v127 = v314;
      v128 = v313;
      v120 = v312;
      v119 = v311;
      v118 = v310;
      __swift_destroy_boxed_opaque_existential_1(v511);

      __swift_destroy_boxed_opaque_existential_1(v522);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v379 = v129;
      return;
    }

    v285 = 0;
    __swift_destroy_boxed_opaque_existential_1(v511);
    v508 = 0.0;
    v507 = Array.init()();
    v284 = v504;
    outlined init with copy of HealthDataQuery(v522, v504);
    v287 = v505;
    v288 = v506;
    __swift_project_boxed_opaque_existential_1(v284, v505);
    v83 = v285;
    v286 = *v455;
    v289 = v286;

    v84 = dispatch thunk of EspressoTrainer.eval(_:featureSizes:numSamples:)();
    v290 = v83;
    v291 = v84;
    v292 = v289;
    v293 = v335;
    v294 = v363;
    v295 = v383;
    v296 = v394;
    v297 = v396;
    v298 = v398;
    v299 = v400;
    v300 = v402;
    v301 = v404;
    v302 = v406;
    v303 = v408;
    v304 = v83;
    if (v83)
    {
      v117 = v304;
      v109 = v303;
      v110 = v302;
      v111 = v301;
      v112 = v300;
      v113 = v299;
      v114 = v298;
      v115 = v297;
      v116 = v296;
      v108 = v295;
      v107 = v294;
      v106 = v293;

      __swift_destroy_boxed_opaque_existential_1(v504);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      __swift_destroy_boxed_opaque_existential_1(v522);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v379 = v117;
      return;
    }

    v278 = v291;

    v503 = v278;
    __swift_destroy_boxed_opaque_existential_1(v504);

    v500 = v278;
    v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySfGGGMd, &_sSaySDySSSaySfGGGMR);
    lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]();
    Collection<>.makeIterator()();
    v280 = 0.0;
    v281 = 0.0;
    v282 = 0.0;
    for (j = v290; ; j = v196)
    {
      v271 = j;
      v272 = v282;
      v274 = v281;
      v273 = v280;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySDySSSaySfGGGGMd, &_ss16IndexingIteratorVySaySDySSSaySfGGGGMR);
      IndexingIterator.next()();
      v275 = v499;
      v276 = v273;
      v277 = v274;
      if (!v499)
      {
        break;
      }

      v270 = v275;
      v265 = v275;
      v486 = v275;

      v484[0] = v401;
      v484[1] = v402;
      v266 = v484;
      MEMORY[0x25F8891D0](&v485);
      outlined destroy of DefaultStringInterpolation();
      v267 = v485;
      if (v485)
      {
        v264 = v267;
        v259 = v267;
        v478 = v267;
        lazy protocol witness table accessor for type [Float] and conformance [A]();
        Collection.first.getter();
        v260 = v476;
        v261 = v477;

        v262 = v260;
        v263 = v261;
      }

      else
      {
        v262 = 0.0;
        v263 = 1;
      }

      v245 = v262;
      v246 = v278;
      v247 = v335;
      v248 = v363;
      v249 = v383;
      v250 = v394;
      v251 = v396;
      v252 = v398;
      v253 = v400;
      v254 = v402;
      v255 = v404;
      v256 = v406;
      v257 = v408;
      v258 = v265;
      if (v263)
      {
        v230 = v258;
        v235 = v257;
        v236 = v256;
        v237 = v255;
        v238 = v254;
        v239 = v253;
        v240 = v252;
        v241 = v251;
        v242 = v250;
        v234 = v249;
        v233 = v248;
        v232 = v247;
        v231 = v246;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v229 = 0;
        v243 = swift_allocError();
        *v85 = 10;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        __swift_destroy_boxed_opaque_existential_1(v522);

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v379 = v243;
        return;
      }

      v244 = v245;
      v483 = v245;
      v213 = v272 + v245;
      v508 = v272 + v245;

      v481[0] = v403;
      v481[1] = v404;
      v214 = v481;
      MEMORY[0x25F8891D0](&v482);
      outlined destroy of DefaultStringInterpolation();
      v215 = v482;
      v216 = v278;
      v217 = v335;
      v218 = v363;
      v219 = v383;
      v220 = v394;
      v221 = v396;
      v222 = v398;
      v223 = v400;
      v224 = v402;
      v225 = v404;
      v226 = v406;
      v227 = v408;
      v228 = v265;
      if (!v482)
      {
        v198 = v228;
        v203 = v227;
        v204 = v226;
        v205 = v225;
        v206 = v224;
        v207 = v223;
        v208 = v222;
        v209 = v221;
        v210 = v220;
        v202 = v219;
        v201 = v218;
        v200 = v217;
        v199 = v216;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v197 = 0;
        v211 = swift_allocError();
        *v86 = 26;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();

        __swift_destroy_boxed_opaque_existential_1(v522);

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v379 = v211;
        return;
      }

      v212 = v215;
      v195 = v215;
      v196 = v271;
      v480 = v215;

      v479 = v195;
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      Array.append<A>(contentsOf:)();

      v280 = v213;
      v281 = v213;
      v282 = v213;
    }

    v268 = v277;
    v269 = v276;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    if (MEMORY[0x25F8895B0](v278, v411) > 0)
    {
      v87 = MEMORY[0x25F8895B0](v278, v411);
      v508 = v268 / v87;
      v194 = v508;
    }

    else
    {
      v194 = v269;
    }

    v163 = v194;
    v174 = v271;
    v171 = v507;
    v175 = v507;

    v172 = v577;
    v173 = v576;
    v166 = 1;
    v165 = 1;
    v497 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v498 = v88;
    v89 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v166);
    v164 = v89._object;
    v168 = &v497;
    MEMORY[0x25F889DE0](v89._countAndFlagsBits);

    v495 = v395;
    v496 = v394;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", v165, v166);
    v167 = v90._object;
    MEMORY[0x25F889DE0](v90._countAndFlagsBits);

    v170 = v497;
    v169 = v498;

    outlined destroy of DefaultStringInterpolation();
    v91 = MEMORY[0x25F889320](v170, v169);
    v92 = v174;
    v176 = v93;
    v94 = static NightingaleDMetricsProcessor.generateMetrics(task:hyperParams:outputs:labels:historicalPeriods:sliceEndDays:pregnancies:today:metricPrefix:)(v457, v461, v171, v172, v453, v173, v452, v451, v91, v93);
    v177 = v92;
    v178 = v94;
    v179 = v175;
    v180 = v176;
    v181 = v278;
    v182 = v335;
    v183 = v363;
    v184 = v383;
    v185 = v394;
    v186 = v396;
    v187 = v398;
    v188 = v400;
    v189 = v402;
    v190 = v404;
    v191 = v406;
    v192 = v408;
    v193 = v92;
    if (v92)
    {
      v105 = v193;
      v104[5] = v192;
      v104[6] = v191;
      v104[7] = v190;
      v104[8] = v189;
      v104[9] = v188;
      v104[10] = v187;
      v104[11] = v186;
      v104[12] = v185;
      v104[4] = v184;
      v104[3] = v183;
      v104[2] = v182;
      v104[1] = v181;
      v104[0] = v179;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      __swift_destroy_boxed_opaque_existential_1(v522);

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v379 = v105;
      return;
    }

    v160 = v178;
    v159 = 0;

    v494 = v160;

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, _sSDySSypGMR);
    v96 = v159;
    v161 = v95;
    Dictionary.merge(_:uniquingKeysWith:)();
    v162 = v96;
    if (v96)
    {
      break;
    }

    v158 = 0;
    v152 = 1;
    v143 = 1;
    v492 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v493 = v97;
    v153 = "";
    v151 = 0;
    v98 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v152);
    v142 = v98._object;
    v155 = &v492;
    MEMORY[0x25F889DE0](v98._countAndFlagsBits);

    v491[2] = v395;
    v491[3] = v394;
    v147 = MEMORY[0x277D837D0];
    v148 = MEMORY[0x277D83838];
    v149 = MEMORY[0x277D83830];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v99 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", v143, v152);
    v144 = v99._object;
    MEMORY[0x25F889DE0](v99._countAndFlagsBits);

    v100 = NightingaleDPFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
    v145 = *v100;
    v146 = *(v100 + 1);

    v491[0] = v145;
    v491[1] = v146;
    v150 = v491;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of DefaultStringInterpolation();
    v101 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v153, v151, v152);
    v154 = v101._object;
    MEMORY[0x25F889DE0](v101._countAndFlagsBits);

    v157 = v492;
    v156 = v493;

    outlined destroy of DefaultStringInterpolation();
    v102 = MEMORY[0x25F889320](v157, v156);
    v490 = MEMORY[0x277D83A90];
    v489[0] = v163;
    v487 = v102;
    v488 = v103;
    Dictionary.subscript.setter();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    __swift_destroy_boxed_opaque_existential_1(v522);
  }

  __break(1u);
}

Swift::Void __swiftcall NightingaleDPFLRunner.sendLocation(_:_:)(NightingaleTraining::NightingaleDReachLocation a1, Swift::Int a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  v6 = NightingaleDPFLRunner.taskId.getter();
  v10 = v3;
  v12[1] = a1;
  lazy protocol witness table accessor for type NightingaleDReachLocation and conformance NightingaleDReachLocation();
  v7 = String.init<A>(describing:)();
  v9 = v4;
  NightingaleDPFLRunner.useCase.getter(v12);
  v11 = v12[0];
  static NightingaleTelemetry.sendNightingaleReachTelemetryLazy(taskId:location:useCase:errorCode:)(v6, v10, v7, v9, &v11, a2);
}

uint64_t NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)(uint64_t a1, char a2, char a3, int *a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v14 = v8;
  *(v7 + 72) = v8;
  *(v7 + 64) = a6;
  *(v7 + 114) = a3 & 1;
  *(v7 + 113) = a2;
  *(v7 + 56) = a1;
  *(v7 + 32) = v7;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 80) = *(a6 - 8);
  v18 = swift_task_alloc();
  *(v7 + 88) = v18;
  *(v7 + 112) = a2;
  *(v7 + 120) = a3 & 1;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(v7 + 40) = v14;
  v17 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v16 + 96) = v10;
  *v10 = *(v16 + 32);
  v10[1] = NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:);

  return v17(v18);
}

uint64_t NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)()
{
  v4 = *v1;
  *(v4 + 32) = *v1;
  *(v4 + 104) = v0;

  if (v0)
  {
    v2 = NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:);
  }

  else
  {
    v2 = NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = *(v0 + 114);
  *(v0 + 32) = v0;
  if (v1)
  {
    NightingaleDPFLRunner.sendLocation(_:_:)(*(v7 + 113), 0);
  }

  v6 = *(v7 + 88);
  v5 = *(v7 + 64);
  v4 = *(v7 + 80);
  (*(v4 + 16))(*(v7 + 56));
  (*(v4 + 8))(v6, v5);

  v2 = *(*(v7 + 32) + 8);

  return v2();
}

{
  v8 = *(v0 + 104);
  v6 = *(v0 + 113);
  *(v0 + 32) = v0;
  v1 = v8;
  *(v0 + 48) = v8;
  v2 = v8;
  v5 = _convertErrorToNSError(_:)();
  v7 = [v5 code];
  MEMORY[0x277D82BD8](v5);
  NightingaleDPFLRunner.sendLocation(_:_:)(v6, v7);

  swift_willThrow();

  v3 = *(*(v9 + 32) + 8);

  return v3();
}

void NightingaleDPFLRunner.sendLocation<A>(location:force:work:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v15 = a5;
  v16 = a1;
  v17 = a2;
  v19 = a3;
  v18 = a4;
  v23 = v5;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v34 = a4;
  v20 = *(a4 - 8);
  v21 = a4 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v11 - v22;
  v33 = &v11 - v22;
  v32 = MEMORY[0x28223BE20](a1, a2);
  v31 = v7 & 1;
  v29 = v8;
  v30 = v19;
  v28 = v5;
  v8();
  v25 = v6;
  v26 = v6;
  if (v6)
  {
    v14 = v26;
    v9 = v26;
    v27 = v14;
    v10 = v14;
    v12 = _convertErrorToNSError(_:)();
    v13 = [v12 code];
    MEMORY[0x277D82BD8](v12);
    NightingaleDPFLRunner.sendLocation(_:_:)(v16, v13);

    swift_willThrow();
  }

  else
  {
    if (v17)
    {
      NightingaleDPFLRunner.sendLocation(_:_:)(v16, 0);
    }

    (*(v20 + 16))(v15, v24, v18);
    (*(v20 + 8))(v24, v18);
  }
}

uint64_t NightingaleDPFLRunner.queryPregnancies(hyperParams:)(uint64_t a1)
{
  *(v2 + 184) = v1;
  *(v2 + 176) = a1;
  *(v2 + 96) = v2;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 400) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV5lower_AC5uppertMd, &_s10Foundation4DateV5lower_AC5uppertMR);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd, &_sSNy10Foundation4DateVGMR);
  *(v2 + 248) = swift_task_alloc();
  v4 = type metadata accessor for Calendar.Component();
  *(v2 + 256) = v4;
  *(v2 + 264) = *(v4 - 8);
  *(v2 + 272) = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  *(v2 + 280) = v5;
  *(v2 + 288) = *(v5 - 8);
  *(v2 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v2 + 304) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v2 + 312) = v6;
  *(v2 + 320) = *(v6 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;

  return MEMORY[0x2822009F8](NightingaleDPFLRunner.queryPregnancies(hyperParams:), 0);
}

{
  v34 = v1;
  v36 = v1[34];
  v35 = v1[33];
  v37 = v1[32];
  v1[12] = v1;
  static Calendar.current.getter();
  (*(v35 + 104))(v36, *MEMORY[0x277CC9968], v37);
  result = HyperParams.maximumDays.getter();
  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    v24 = v1[42];
    v33 = v1[39];
    v32 = v1[38];
    v30 = v1[37];
    v31 = v1[35];
    v27 = v1[34];
    v28 = v1[32];
    v23 = v1[40];
    v29 = v1[36];
    v26 = v1[33];
    Date.init()();
    default argument 3 of Calendar.date(byAdding:value:to:wrappingComponents:)();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v25 = *(v23 + 8);
    v1[44] = v25;
    v1[45] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v24, v33);
    (*(v26 + 8))(v27, v28);
    (*(v29 + 8))(v30, v31);
    if ((*(v23 + 48))(v32, 1, v33) == 1)
    {
      return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "NightingaleTraining/NightingaleDPFLRunner.swift", 47, 2, 1268, 0);
    }

    else
    {
      v19 = v1[23];
      v4 = (v1[40] + 32);
      v18 = *v4;
      (*v4)();
      outlined init with copy of HealthDataQuery(v19 + 48, (v1 + 2));
      v20 = v1[5];
      v21 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v20);
      v22 = HyperParams.pregnancySourceList.getter();
      v1[46] = v22;
      Date.init()();
      lazy protocol witness table accessor for type Date and conformance Date();
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v15 = v1[41];
        v16 = v1[39];
        v13 = v1[31];
        v12 = v1[30];
        v10 = v1[29];
        v14 = v1[28];
        v11 = v1[27];
        v5 = (v1[40] + 16);
        v8 = *v5;
        (*v5)();
        (v8)(v10 + *(v11 + 48), v15, v16);
        outlined init with copy of (lower: Date, upper: Date)(v10, v14);
        v9 = v14 + *(v11 + 48);
        (v18)(v13);
        v25(v9, v16);
        outlined init with take of (lower: Date, upper: Date)(v10, v14);
        (v18)(v13 + *(v12 + 36), v14 + *(v11 + 48), v16);
        v25(v14, v16);
        v25(v15, v16);
        v17 = (*(v21 + 8) + **(v21 + 8));
        v6 = swift_task_alloc();
        v34[47] = v6;
        *v6 = v34[12];
        v6[1] = NightingaleDPFLRunner.queryPregnancies(hyperParams:);
        v7 = v34[31];

        return v17(v22, v7, v20, v21);
      }

      else
      {
        return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
      }
    }
  }

  return result;
}

{
  v5 = *v2;
  v5[12] = *v2;
  v5[48] = a1;
  v5[49] = v1;

  if (v1)
  {
    v3 = NightingaleDPFLRunner.queryPregnancies(hyperParams:);
  }

  else
  {
    outlined destroy of ClosedRange<Date>(v5[31]);

    v3 = NightingaleDPFLRunner.queryPregnancies(hyperParams:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t NightingaleDPFLRunner.queryPregnancies(hyperParams:)()
{
  v58 = v0;
  v43 = v0[48];
  v1 = v0[26];
  v41 = v0[25];
  v42 = v0[24];
  v0[12] = v0;
  v0[15] = v43;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = Logging.default.unsafeMutableAddressor();
  (*(v41 + 16))(v1, v2, v42);

  v44 = swift_allocObject();
  *(v44 + 16) = v43;

  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in NightingaleDPFLRunner.queryPregnancies(hyperParams:);
  *(v45 + 24) = v44;

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v49 + 24) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v50 = v3;

  *v50 = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[1] = v47;

  v50[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[3] = v48;

  v50[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    v4 = *(v40 + 392);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v38 = createStorage<A>(capacity:type:)(0, v36, v36);
    v39 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v53 = buf;
    v54 = v38;
    v55 = v39;
    serialize(_:at:)(2, &v53);
    serialize(_:at:)(1, &v53);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    if (v4)
    {
    }

    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    _os_log_impl(&dword_25C4D8000, v51, v52, "pregnancies: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v38, 0, v36);
    destroyStorage<A>(_:count:)(v39, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x25F8899D0](buf, MEMORY[0x277D84B78]);

    v35 = 0;
  }

  else
  {

    v35 = *(v40 + 392);
  }

  v34 = *(v40 + 384);
  v30 = *(v40 + 208);
  v31 = *(v40 + 192);
  v29 = *(v40 + 200);
  MEMORY[0x277D82BD8](v51);
  (*(v29 + 8))(v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pSgMd, &_s19NightingaleTraining9Pregnancy_pSgMR);
  v33 = MEMORY[0x25F8895B0](v34);
  *(v40 + 128) = v33;

  *(v40 + 136) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pSgGMd, &_sSay19NightingaleTraining9Pregnancy_pSgGMR);
  lazy protocol witness table accessor for type [Pregnancy?] and conformance [A]();
  result = _ArrayProtocol.filter(_:)();
  if (!v35)
  {
    v27 = *(v40 + 384);
    v26 = MEMORY[0x25F8895B0](result, v32);
    *(v40 + 144) = v26;

    *(v40 + 152) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining9Pregnancy_pMd, &_s19NightingaleTraining9Pregnancy_pMR);
    lazy protocol witness table accessor for type [Pregnancy?] and conformance [A]();
    v28 = Sequence.compactMap<A>(_:)();
    v24 = *(v40 + 384);
    *(v40 + 160) = v28;
    v25 = MEMORY[0x25F8895B0]();
    if (v25 == MEMORY[0x25F8895B0](v24, v32))
    {
      *(v40 + 168) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
      lazy protocol witness table accessor for type [Pregnancy] and conformance [A]();
      Sequence.min(by:)();
      if (*(v40 + 80))
      {
        v20 = *(v40 + 80);
        v19 = *(v40 + 88);
        __swift_project_boxed_opaque_existential_1((v40 + 56), v20);
        v21 = (*(v19 + 8))(v20);
        __swift_destroy_boxed_opaque_existential_1((v40 + 56));
        v22 = v21;
        v23 = 0;
      }

      else
      {
        outlined destroy of Pregnancy?((v40 + 56));
        v22 = 0;
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        v17 = *(v40 + 352);
        v18 = *(v40 + 344);
        v16 = *(v40 + 312);
        *(v40 + 400) = v22;

        v17(v18, v16);

        v6 = *(*(v40 + 96) + 8);

        return v6(v33, v26, v28, v22);
      }

      v15 = *(v40 + 352);
      v13 = *(v40 + 344);
      v14 = *(v40 + 312);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v7 = 57;
      swift_willThrow();

      v15(v13, v14);
    }

    else
    {
      v12 = *(v40 + 352);
      v10 = *(v40 + 344);
      v11 = *(v40 + 312);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v8 = 68;
      swift_willThrow();

      v12(v10, v11);
    }

    v9 = *(*(v40 + 96) + 8);

    return v9();
  }

  return result;
}

{
  v6 = v0[44];
  v4 = v0[43];
  v5 = v0[39];
  v1 = v0[31];
  v0[12] = v0;
  outlined destroy of ClosedRange<Date>(v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6(v4, v5);

  v2 = *(v0[12] + 8);

  return v2();
}

uint64_t implicit closure #1 in NightingaleDPFLRunner.queryPregnancies(hyperParams:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t NightingaleDPFLRunner.deinit()
{

  outlined destroy of DefaultStringInterpolation();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  return v2;
}

uint64_t protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return MEMORY[0x2821A1EC0](a1, a2, a3, a4, a5);
}

uint64_t protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t protocol witness for PFLTaskRunner.ensureDataAvailability(taskPreferences:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for PFLTaskRunner.ensureDataAvailability(taskPreferences:) in conformance NightingaleDPFLRunner;

  return MEMORY[0x2821A1EE0](a1, a2, a3);
}

uint64_t protocol witness for PFLTaskRunner.ensureDataAvailability(taskPreferences:) in conformance NightingaleDPFLRunner()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner;

  return NightingaleDPFLRunner.isDataAvailable(taskPreferences:)();
}

uint64_t protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t protocol witness for PFLTaskRunner.isDataAvailable() in conformance NightingaleDPFLRunner()
{
  v0 = PFLTaskRunner.isDataAvailable()();
  v1 = *(v4 + 8);
  v2 = v0;

  return v1(v2);
}

uint64_t protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner;

  return NightingaleDPFLRunner.run(task:useCase:context:)(a1, a2, a3, a4);
}

uint64_t protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t protocol witness for PFLTaskRunner.handleNoTasksAvailable(taskPreferences:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for PFLTaskRunner.ensureDataAvailability(taskPreferences:) in conformance NightingaleDPFLRunner;

  return MEMORY[0x2821A1EF0](a1, a2, a3);
}

uint64_t protocol witness for PFLTaskRunner.handleNoAvailableTasks(taskPreferences:) in conformance NightingaleDPFLRunner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return MEMORY[0x2821A1EE8](a1, a2, a3);
}

uint64_t partial apply for closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = partial apply for closure #2 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)(v6, v5);
}

uint64_t partial apply for closure #2 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *v4;
  *(v7 + 16) = *v4;

  v5 = *(*(v7 + 16) + 8);

  return v5(a1, a2, a3, a4);
}

uint64_t partial apply for thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return thunk for @callee_guaranteed @async () -> (@unowned Int, @unowned Int, @owned [Pregnancy], @unowned UInt32, @error @owned Error)(a1, v6);
}

uint64_t partial apply for closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 36);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #3 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType()
{
  v2 = lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType;
  if (!lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType;
  if (!lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingalePFLTaskType and conformance NightingalePFLTaskType);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of PFLError?(uint64_t a1)
{
  v3 = type metadata accessor for PFLError();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Pregnancy] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Pregnancy] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Pregnancy] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Pregnancy] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Pregnancy] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining9Pregnancy_pGMd, &_sSay19NightingaleTraining9Pregnancy_pGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Pregnancy] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [PregnancyInvalidReason] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PregnancyInvalidReason] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PregnancyInvalidReason] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining22PregnancyInvalidReasonOGMd, &_sSay19NightingaleTraining22PregnancyInvalidReasonOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PregnancyInvalidReason] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type SliceDeltaAnchor and conformance SliceDeltaAnchor()
{
  v2 = lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor;
  if (!lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor;
  if (!lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SliceDeltaAnchor and conformance SliceDeltaAnchor);
    return WitnessTable;
  }

  return v2;
}

void *outlined destroy of Pregnancy?(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type [HealthDataRawSampleType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd, &_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HealthDataRawSampleType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine()
{
  v2 = lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine;
  if (!lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine;
  if (!lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleDProcessEngine and conformance NightingaleDProcessEngine);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v9 = a1[6];

  a2[6] = v9;
  v10 = a1[7];

  a2[7] = v10;
  v11 = a1[8];

  a2[8] = v11;
  v12 = a1[9];

  a2[9] = v12;
  v13 = a1[10];

  a2[10] = v13;
  v14 = a1[11];

  a2[11] = v14;
  v15 = a1[12];

  a2[12] = v15;
  v16 = a1[13];

  a2[13] = v16;
  v17 = a1[14];

  a2[14] = v17;
  v18 = a1[15];

  a2[15] = v18;
  v19 = a1[16];

  a2[16] = v19;
  v20 = a1[17];

  a2[17] = v20;
  v21 = a1[18];

  a2[18] = v21;
  v23 = a1[19];

  a2[19] = v23;
  v25 = a1[20];

  result = a2;
  a2[20] = v25;
  return result;
}

void outlined destroy of (daySHR10: [Float], daySHR10Stats: [Float], nightSHR10: [Float], nightSHR10Stats: [Float], periodStartMean: [Float], periodStartMeanStats: [Float], periodStartStd: [Float], periodStartStdStats: [Float], daysSinceLastPeriodStart: [Float], daysSinceLastPeriodStartStats: [Float], swt: [Float], swtStats: [Float], hrv: [Float], hrvStats: [Float], respiratoryRate: [Float], respiratoryRateStats: [Float], spo2: [Float], spo2Stats: [Float], sliceEndDays: [UInt32], labels: [Float], metrics: [String : Int])()
{
}

uint64_t partial apply for closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #38 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t lazy protocol witness table accessor for type [UInt32] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UInt32] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt32] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [UInt32] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt32] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [UInt32] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt32] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [UInt32] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt32] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UInt32] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of DateComponents?(uint64_t a1)
{
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<UInt32> and conformance <> ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNys6UInt32VGMd, &_sSNys6UInt32VGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<UInt32> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 36);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #35 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t partial apply for closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #34 in NightingaleDPFLRunner.run(task:useCase:context:);

  return closure #33 in NightingaleDPFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10, v11, v12);
}