uint64_t DistanceSampler.updateDistance(_:date:)(uint64_t a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDistance;
  if (*(v2 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDistance + 8))
  {
    goto LABEL_4;
  }

  v19 = *v18;
  v20 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDate;
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v20, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    _s10Foundation4DateVSgWOhTm_10(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_4:
    *(v2 + 128) = a2;
    *(v2 + 136) = 0;
    v21 = *(v14 + 16);
    v21(v9, a1, v13);
    v22 = *(v14 + 56);
    v22(v9, 0, 1, v13);
    v23 = a1;
    v24 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_firstSampleEndDate;
    swift_beginAccess();
    outlined assign with take of Date?(v9, v2 + v24);
    swift_endAccess();
    *v18 = a2;
    *(v18 + 8) = 0;
    v21(v9, v23, v13);
    v22(v9, 0, 1, v13);
    v25 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDate;
    swift_beginAccess();
    v26 = v2 + v25;
LABEL_5:
    outlined assign with take of Date?(v9, v26);
    return swift_endAccess();
  }

  (*(v14 + 32))(v17, v12, v13);
  v28 = a2 - v19;
  if (v28 > 0.0)
  {
    v29 = [objc_opt_self() meterUnit];
    v30 = [objc_opt_self() quantityWithUnit:v29 doubleValue:v28];

    v38 = *(v2 + 112);
    v31 = v30;
    v39 = v2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v37 = isa;
    v33 = Date._bridgeToObjectiveC()().super.isa;
    v34 = [objc_opt_self() quantitySampleWithType:v38 quantity:v31 startDate:isa endDate:v33];

    DistanceSampler.updateAggregateSample(with:)(v34);
    (*(v14 + 8))(v17, v13);
    *v18 = a2;
    *(v18 + 8) = 0;
    (*(v14 + 16))(v9, a1, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    v35 = v39;
    swift_beginAccess();
    v26 = v35 + v20;
    goto LABEL_5;
  }

  return (*(v14 + 8))(v17, v13);
}

void DistanceSampler.updateAggregateSample(with:)(void *a1)
{
  v2 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSampleMaxSize;
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSampleMaxSize) < 1)
  {
    v8 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples;
    v9 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B425990;
    *(inited + 32) = a1;
    v24 = v9;
    v11 = a1;

    v12 = v1;
    specialized Array.append<A>(contentsOf:)(inited);
    v13 = DistanceSampler.downsample(samples:)(v24);

    *(v12 + v8) = v13;
  }

  else
  {
    v3 = (v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSample);
    v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSample + 8);
    if (v4)
    {
      v5 = v4;
      v6 = DistanceSampler.AggregateSample.adding(_:)(a1);
      if (v6.sampleCount >= *(v1 + v2))
      {
        v15 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples;
        v16 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v17 = swift_initStackObject();
        *(v17 + 16) = xmmword_20B425990;
        *(v17 + 32) = v6.sample.super.super.super.isa;
        v25 = v16;

        v18 = v6.sample.super.super.super.isa;
        v19 = v1;
        specialized Array.append<A>(contentsOf:)(v17);
        v20 = DistanceSampler.downsample(samples:)(v25);

        *(v19 + v15) = v20;

        isa = v3->sample.super.super.super.isa;
        v3->sampleCount = 0;
        v3->sample.super.super.super.isa = 0;
      }

      else
      {

        v7 = v3->sample.super.super.super.isa;
        *v3 = v6;
      }
    }

    else
    {
      v3->sampleCount = 1;
      v3->sample.super.super.super.isa = a1;

      v14 = a1;
    }
  }
}

unint64_t DistanceSampler.downsample(samples:)(unint64_t a1)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = ceil(v5 / *(v1 + 120));
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = v6;
  if (v6 < 2)
  {

    return a1;
  }

  v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSampleMaxSize);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (!v9)
  {
    v22 = v4;
    *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSampleMaxSize) = v10;
    v2 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    if (v5 >= 1)
    {
      v11 = 0;
      do
      {
        v13 = __OFADD__(v11, v7);
        v24 = v11;
        v14 = closure #1 in DistanceSampler.downsample(samples:)(&v24, v7, a1, &v23);
        if (v23)
        {
          MEMORY[0x20F2E6F30](v14);
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = v25;
        }

        v12 = v11 + v7 >= v5 || v13;
        v11 += v7;
      }

      while ((v12 & 1) == 0);
    }

    if (one-time initialization token for workoutVoice == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_23:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.workoutVoice);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    if (v22)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2048;
    if (v2 >> 62)
    {
      v20 = __CocoaSet.count.getter();
    }

    else
    {
      v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 14) = v20;

    _os_log_impl(&dword_20AEA4000, v16, v17, "DistanceSampler: Downsampled %ld -> %ld", v18, 0x16u);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t closure #1 in DistanceSampler.downsample(samples:)@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = type metadata accessor for Date();
  v12 = MEMORY[0x28223BE20](v10, v11);
  MEMORY[0x28223BE20](v12, v13);
  v17 = *a1;
  v18 = v17 + a2;
  if (__OFADD__(v17, a2))
  {
    __break(1u);
  }

  else
  {
    v58 = &v52 - v14;
    v59 = v16;
    v60 = v15;
    v5 = a3 >> 62;
    if (!(a3 >> 62))
    {
      result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v18)
      {
        v20 = v17 + a2;
      }

      else
      {
        v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v20 < v17)
      {
        goto LABEL_36;
      }

      if (result >= v17)
      {
        goto LABEL_8;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  result = __CocoaSet.count.getter();
  if (result >= v18)
  {
    v20 = v17 + a2;
  }

  else
  {
    v20 = result;
  }

  if (v20 < v17)
  {
    goto LABEL_36;
  }

  result = __CocoaSet.count.getter();
  if (result < v17)
  {
    goto LABEL_35;
  }

LABEL_8:
  if (v17 < 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v5)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v20)
  {
    goto LABEL_38;
  }

  if (v20 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((a3 & 0xC000000000000001) == 0 || v17 == v20)
  {

    v57 = v10;
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v17 >= v20)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  type metadata accessor for HKQuantitySample();

  v21 = v17;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v20 != v22);
  v57 = v10;
  if (!v5)
  {
LABEL_20:
    result = a3 & 0xFFFFFFFFFFFFFF8;
    v23 = (a3 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = v20 - v17;
    v24 = v20 <= v17;
    if (v20 != v17)
    {
      goto LABEL_21;
    }

LABEL_27:
    result = swift_unknownObjectRelease();
    v47 = 0;
LABEL_28:
    *a4 = v47;
    return result;
  }

LABEL_26:

  result = _CocoaArrayWrapper.subscript.getter();
  v17 = v50;
  v20 = v51 >> 1;
  v25 = (v51 >> 1) - v50;
  v24 = (v51 >> 1) <= v50;
  if (v51 >> 1 == v50)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (!v24)
  {
    v54 = a4;
    v55 = v4;
    v56 = result;
    v26 = (v23 + 8 * v17);
    v27 = *v26;
    v28 = *(v23 + 8 * v20 - 8);
    v29 = objc_opt_self();
    v53 = v27;
    v52 = v28;
    v30 = [v29 meterUnit];
    v31 = [objc_opt_self() quantityWithUnit:v30 doubleValue:0.0];

    v32 = v31;
    v33 = v32;
    do
    {
      v34 = v33;
      v35 = *v26++;
      v36 = v35;
      v37 = [v36 quantity];
      v33 = [v33 _quantityByAddingQuantity_];

      --v25;
    }

    while (v25);

    v38 = v53;
    v39 = [v53 quantityType];
    v40 = [v38 startDate];
    v41 = v58;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v52;
    v43 = [v52 endDate];
    v44 = v59;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Date._bridgeToObjectiveC()().super.isa;
    v46 = Date._bridgeToObjectiveC()().super.isa;
    v47 = [objc_opt_self() quantitySampleWithType:v39 quantity:v33 startDate:isa endDate:v46];

    swift_unknownObjectRelease();
    v48 = *(v60 + 8);
    v49 = v57;
    v48(v44, v57);
    result = (v48)(v41, v49);
    a4 = v54;
    goto LABEL_28;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t DistanceSampler.__deallocating_deinit()
{
  _s10Foundation4DateVSgWOhTm_10(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_firstSampleEndDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _s10Foundation4DateVSgWOhTm_10(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DistanceSampler(uint64_t a1)
{
  result = type metadata singleton initialization cache for DistanceSampler;
  if (!type metadata singleton initialization cache for DistanceSampler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DistanceSampler(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for DistanceSampler.AggregateSample(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DistanceSampler.AggregateSample(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t type metadata accessor for HKQuantitySample()
{
  result = lazy cache variable for type metadata for HKQuantitySample;
  if (!lazy cache variable for type metadata for HKQuantitySample)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKQuantitySample);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOhTm_10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DeviceInferenceAvailabilityProvider.__allocating_init(inferenceClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + v3) = v4;
  v5 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability;
  v6 = type metadata accessor for DeviceInferenceAvailability();
  v7 = *(*(v6 - 8) + 56);
  v7(v2 + v5, 1, 1, v6);
  v7(v2 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__hasFetchedAvailability) = 0;
  v8 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v9 = type metadata accessor for InferenceClient();
  (*(*(v9 - 8) + 32))(v2 + v8, a1, v9);
  return v2;
}

uint64_t closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_beginAccess();
  return outlined init with copy of DeviceInferenceAvailability?(a1 + v5, a3);
}

uint64_t closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12 - v8;
  outlined init with copy of DeviceInferenceAvailability?(a2, &v12 - v8);
  v10 = *a3;
  swift_beginAccess();
  outlined assign with take of DeviceInferenceAvailability?(v9, a1 + v10);
  return swift_endAccess();
}

uint64_t DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOyyts5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOyyts5Error_p__GMR);
  MEMORY[0x28223BE20](v2, v3);
  v8 = v0;
  v9 = v1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D858A0]);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

double closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v7 + 16))(v11, a1, v6);
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  (*(v7 + 32))(&v18[v17], v11, v6);
  *&v18[(v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream(), v18);

  return result;
}

uint64_t closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream(), 0, 0);
}

uint64_t closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_allocObject();
  v0[9] = v7;
  swift_weakInit();
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[10] = v9;
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v1, v3);
  *(v9 + ((v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream();

  return MEMORY[0x282160A60](partial apply for closure #1 in closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream(), v9);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOyyts5Error_p__GMd, &_sScs12ContinuationV11YieldResultOyyts5Error_p__GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20[-1] - v7;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.workoutVoice);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v10, v11, "%s Observation block called.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DeviceInferenceAvailabilityProvider.updateDeviceInferenceAvailability()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR);
  AsyncThrowingStream.Continuation.yield<>()();
  return (*(v5 + 8))(v8, v4);
}

uint64_t DeviceInferenceAvailabilityProvider.init(inferenceClient:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability;
  v6 = type metadata accessor for DeviceInferenceAvailability();
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v1 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__hasFetchedAvailability) = 0;
  v8 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v9 = type metadata accessor for InferenceClient();
  (*(*(v9 - 8) + 32))(v1 + v8, a1, v9);
  return v1;
}

uint64_t DeviceInferenceAvailabilityProvider.activate()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](DeviceInferenceAvailabilityProvider.activate(), 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.hasFetchedAvailability.getter;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sb_TG5TA_0(v26);
  os_unfair_lock_unlock(v2 + 4);
  LOBYTE(v1) = v26[0];

  if (v1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26[0] = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v26);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20AEA4000, v5, v6, "%s already fetched availability, ignoring call to activate.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }
  }

  else
  {
    v12 = *(v0 + 16);
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
    v14 = swift_task_alloc();
    *(v14 + 16) = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.hasFetchedAvailability.setter;
    *(v14 + 24) = v13;
    os_unfair_lock_lock(v2 + 4);
    _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(v15);
    os_unfair_lock_unlock(v2 + 4);

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.workoutVoice);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136315138;
      v21 = _typeName(_:qualified:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_20AEA4000, v17, v18, "%s activating.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    DeviceInferenceAvailabilityProvider.updateDeviceInferenceAvailability()();
  }

  v24 = *(v0 + 8);

  return v24();
}

Swift::Void __swiftcall DeviceInferenceAvailabilityProvider.updateDeviceInferenceAvailability()()
{
  v89 = *v0;
  v1 = type metadata accessor for InferenceDevice();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v87 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v76 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v10 = MEMORY[0x28223BE20](v84, v9);
  v83 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v88 = v76 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = v76 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = v76 - v20;
  v22 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v23 = *(v2 + 104);
  v23(v8, *MEMORY[0x277D09FE0], v1);
  v85 = v21;
  v86 = v0;
  InferenceClient.queryDeviceInferenceAvailability(device:)();
  v79 = v18;
  v80 = v23;
  v81 = v2 + 104;
  v82 = v22;
  v24 = (v2 + 8);
  v25 = *v24;
  v26 = (*v24)(v8, v1);
  v27 = v86;
  v28 = *(v86 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v31 = v85;
  v76[-2] = v27;
  v76[-1] = v31;
  MEMORY[0x28223BE20](v30, v32);
  v76[-2] = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.setter;
  v76[-1] = v33;
  os_unfair_lock_lock(v28 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v34);
  os_unfair_lock_unlock(v28 + 4);
  _sSo8NSObjectCSgWOhTm_9(v31, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v35, static WOLog.workoutVoice);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v77 = v38;
    v78 = v37;
    v85 = v36;
    v76[2] = v24;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v90[0] = v40;
    *v39 = 136315394;
    v41 = _typeName(_:qualified:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v90);

    v76[1] = v76;
    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    MEMORY[0x28223BE20](v44, v45);
    v76[-2] = _s11WorkoutCore35DeviceInferenceAvailabilityProviderC05phoneE019FitnessIntelligence0cdE0VSgvgAHyYbXEfU_TA_0;
    v76[-1] = v27;
    os_unfair_lock_lock(v28 + 4);
    v46 = v79;
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v47);
    os_unfair_lock_unlock(v28 + 4);
    v48 = Optional.description.getter();
    v50 = v49;
    _sSo8NSObjectCSgWOhTm_9(v46, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v90);

    *(v39 + 14) = v51;
    v37 = v78;
    _os_log_impl(&dword_20AEA4000, v78, v77, "%s Inference availability for phone: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v40, -1, -1);
    MEMORY[0x20F2E9420](v39, -1, -1);
  }

  v52 = v87;
  v53 = v88;
  v80(v87, *MEMORY[0x277D09FE8], v1);
  InferenceClient.queryDeviceInferenceAvailability(device:)();
  v54 = v25(v52, v1);
  v56 = MEMORY[0x28223BE20](v54, v55);
  v76[-2] = v27;
  v76[-1] = v53;
  MEMORY[0x28223BE20](v56, v57);
  v76[-2] = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.watchAvailability.setter;
  v76[-1] = v58;
  os_unfair_lock_lock(v28 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v59);
  os_unfair_lock_unlock(v28 + 4);
  _sSo8NSObjectCSgWOhTm_9(v53, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v90[0] = v64;
    *v63 = 136315394;
    v65 = _typeName(_:qualified:)();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v90);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    MEMORY[0x28223BE20](v68, v69);
    v76[-2] = _s11WorkoutCore35DeviceInferenceAvailabilityProviderC05watchE019FitnessIntelligence0cdE0VSgvgAHyYbXEfU_TA_0;
    v76[-1] = v27;
    os_unfair_lock_lock(v28 + 4);
    v70 = v83;
    _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_19FitnessIntelligence27DeviceInferenceAvailabilityVSg_Tg5TA_0(v71);
    os_unfair_lock_unlock(v28 + 4);
    v72 = Optional.description.getter();
    v74 = v73;
    _sSo8NSObjectCSgWOhTm_9(v70, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v90);

    *(v63 + 14) = v75;
    _os_log_impl(&dword_20AEA4000, v60, v61, "%s Inference availability for watch: %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v64, -1, -1);
    MEMORY[0x20F2E9420](v63, -1, -1);
  }
}

uint64_t DeviceInferenceAvailabilityProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  _sSo8NSObjectCSgWOhTm_9(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  _sSo8NSObjectCSgWOhTm_9(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  return v0;
}

uint64_t DeviceInferenceAvailabilityProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  _sSo8NSObjectCSgWOhTm_9(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  _sSo8NSObjectCSgWOhTm_9(v0 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in DeviceInferenceAvailabilityProvider.watchAvailability.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of DeviceInferenceAvailability?(v2 + v4, a2);
}

uint64_t type metadata accessor for DeviceInferenceAvailabilityProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for DeviceInferenceAvailabilityProvider;
  if (!type metadata singleton initialization cache for DeviceInferenceAvailabilityProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DeviceInferenceAvailabilityProvider(uint64_t a1)
{
  type metadata accessor for InferenceClient();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DeviceInferenceAvailability?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of DeviceInferenceAvailabilityProvider.activate()()
{
  v4 = (*(*v0 + 280) + **(*v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of DeviceInferenceAvailabilityProvider.activate();

  return v4();
}

void type metadata accessor for DeviceInferenceAvailability?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DeviceInferenceAvailability?)
  {
    type metadata accessor for DeviceInferenceAvailability();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for DeviceInferenceAvailability?);
    }
  }
}

uint64_t outlined init with copy of DeviceInferenceAvailability?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of DeviceInferenceAvailability?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream();

  return closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t partial apply for closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()(v3, v0 + v2, v4);
}

uint64_t closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(uint64_t a1)
{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_19FitnessIntelligence27DeviceInferenceAvailabilityVSg_Tg5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_1(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_2(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_2(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_2(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(a1);
}

WorkoutCore::WorkoutDeviceConnectionNotification_optional __swiftcall WorkoutDeviceConnectionNotification.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutDeviceConnectionNotification.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t WorkoutDeviceConnectionNotification.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  if (v1 != 6)
  {
    v2 = 0xD000000000000020;
  }

  v3 = 0xD000000000000018;
  if (v1 == 4)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (v1 != 2)
  {
    v4 = 0xD000000000000015;
  }

  v5 = 0xD000000000000013;
  if (!*v0)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type WorkoutDeviceConnectionNotification and conformance WorkoutDeviceConnectionNotification()
{
  result = lazy protocol witness table cache variable for type WorkoutDeviceConnectionNotification and conformance WorkoutDeviceConnectionNotification;
  if (!lazy protocol witness table cache variable for type WorkoutDeviceConnectionNotification and conformance WorkoutDeviceConnectionNotification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDeviceConnectionNotification and conformance WorkoutDeviceConnectionNotification);
  }

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutDeviceConnectionNotification(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "wo_disconnect_powerbeats";
  v4 = 0xD00000000000001DLL;
  if (v2 != 6)
  {
    v4 = 0xD000000000000020;
    v3 = "wo_connect_heart_rate_monitor";
  }

  v5 = "wo_disconnect_airpods";
  v6 = 0xD000000000000018;
  if (v2 == 4)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = "wo_connect_powerbeats";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "wo_disconnect_watch";
  v8 = 0xD000000000000012;
  if (v2 != 2)
  {
    v7 = "wo_connect_airpods";
    v8 = 0xD000000000000015;
  }

  v9 = 0xD000000000000013;
  if (*v1)
  {
    v10 = "wo_connect_watch";
  }

  else
  {
    v9 = 0xD000000000000010;
    v10 = "alertValue";
  }

  if (*v1 > 1u)
  {
    v9 = v8;
    v10 = v7;
  }

  if (*v1 <= 3u)
  {
    v11 = v10;
  }

  else
  {
    v9 = v4;
    v11 = v3;
  }

  *a1 = v9;
  a1[1] = v11 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [WorkoutDeviceConnectionNotification] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutDeviceConnectionNotification] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutDeviceConnectionNotification] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A28DeviceConnectionNotificationOGMd, &_sSay11WorkoutCore0A28DeviceConnectionNotificationOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutDeviceConnectionNotification] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDeviceConnectionNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutDeviceConnectionNotification(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id static MetricPlatterStore.userDefaults.getter()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static MetricPlatterStore.userDefaults;

  return v0;
}

void static MetricPlatterStore.userDefaults.setter(uint64_t a1)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MetricPlatterStore.userDefaults;
  static MetricPlatterStore.userDefaults = a1;
}

uint64_t (*static MetricPlatterStore.userDefaults.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static MetricPlatterStore.userDefaults.modify;
}

id key path getter for static MetricPlatterStore.userDefaults : MetricPlatterStore.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MetricPlatterStore.userDefaults;
  *a1 = static MetricPlatterStore.userDefaults;

  return v2;
}

void key path setter for static MetricPlatterStore.userDefaults : MetricPlatterStore.Type(id *a1)
{
  v1 = one-time initialization token for userDefaults;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MetricPlatterStore.userDefaults;
  static MetricPlatterStore.userDefaults = v2;
}

void static MetricPlatterStore.save(metricPlatters:activityType:)(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v50 = a1;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  lazy protocol witness table accessor for type [MetricPlatter] and conformance <A> [A](&lazy protocol witness table cache variable for type [MetricPlatter] and conformance <A> [A], lazy protocol witness table accessor for type MetricPlatter and conformance MetricPlatter, MEMORY[0x277D83948]);
  v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v13 = v12;

  v14 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v49[0] = 0;
  v16 = [v14 propertyListWithData:isa options:0 format:0 error:v49];

  v17 = v49[0];
  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v11, v13);
    swift_unknownObjectRelease();
    outlined init with take of Any(v51, v52);
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = static MetricPlatterStore.userDefaults;
    v19 = MEMORY[0x20F2E6C00](0x6C5063697274654DLL, 0xEE00737265747461);
    v20 = [v18 dictionaryForKey_];

    if (v20)
    {
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v24 = [a2 uniqueIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    outlined init with copy of Any(v52, v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = v21;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, v25, v27, isUniquelyReferenced_nonNull_native);

    v29 = static MetricPlatterStore.userDefaults;
    v30 = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = MEMORY[0x20F2E6C00](0x6C5063697274654DLL, 0xEE00737265747461);
    [v29 setObject:v30 forKey:v31];

    v32 = static MetricPlatterStore.userDefaults;
    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 standardUserDefaults];
    type metadata accessor for NSUserDefaults();
    LOBYTE(v32) = static NSObject.== infix(_:_:)();

    if (v32)
    {
      v36 = MEMORY[0x20F2E6C00](0x6C5063697274654DLL, 0xEE00737265747461);
      [v33 fu:v36 backupStandardUserDefaultsKey:?];
    }

    v37 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for MetricPlattersDidSave != -1)
    {
      swift_once();
    }

    [v37 postNotificationName:static NSNotificationName.MetricPlattersDidSave object:0];

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.app);
    v39 = a2;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v51[0] = v44;
      *v42 = 138412546;
      *(v42 + 4) = v39;
      *v43 = v39;
      *(v42 + 12) = 2080;
      v45 = v39;
      v46 = MEMORY[0x20F2E6F70](a1, &type metadata for MetricPlatter);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v51);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_20AEA4000, v40, v41, "Saved MetricPlatters to user defaults for activityType=%@ metricPlatters=%s", v42, 0x16u);
      outlined destroy of NSObject?(v43);
      MEMORY[0x20F2E9420](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      MEMORY[0x20F2E9420](v42, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v22 = v17;
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v11, v13);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.app);
    v5 = a2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_20AEA4000, v6, v7, "Failed to encode and save MetricPlatters for activityType=%@", v8, 0xCu);
      outlined destroy of NSObject?(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }
  }
}

uint64_t one-time initialization function for MetricPlattersDidSave()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B463090);
  static NSNotificationName.MetricPlattersDidSave = result;
  return result;
}

id static NSNotificationName.MetricPlattersDidSave.getter()
{
  if (one-time initialization token for MetricPlattersDidSave != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.MetricPlattersDidSave;

  return v1;
}

uint64_t specialized static MetricPlatterStore.read(for:)(void *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MetricPlatterStore.userDefaults;
  v3 = MEMORY[0x20F2E6C00](0x6C5063697274654DLL, 0xEE00737265747461);
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.app);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20AEA4000, v21, v22, "MetricPlatters for all activity types not present in user defaults. Will use system defaults.", v23, 2u);
    v24 = v23;
    goto LABEL_17;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_13;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_13:

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.app);
    v26 = a1;
    v21 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v27))
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v26;
    *v29 = v26;
    v30 = v26;
    _os_log_impl(&dword_20AEA4000, v21, v27, "MetricPlatters for activity type not present in user defaults. Will use system defaults. activity_type=%@", v28, 0xCu);
    outlined destroy of NSObject?(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    v24 = v28;
LABEL_17:
    MEMORY[0x20F2E9420](v24, -1, -1);
LABEL_18:

    return MEMORY[0x277D84F90];
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v10, v58);

  outlined init with take of Any(v58, &v59);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(&v59, v60);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v58[0] = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:v58];
  swift_unknownObjectRelease();
  v16 = *&v58[0];
  if (!v15)
  {
    v32 = v16;
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static WOLog.app);
    v35 = a1;
    v36 = v33;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v58[0] = v41;
      *v39 = 138412546;
      *(v39 + 4) = v35;
      *v40 = v35;
      *(v39 + 12) = 2080;
      swift_getErrorValue();
      v42 = v35;
      v43 = Error.errorDescription.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v58);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_20AEA4000, v37, v38, "Failed to decode MetricPlatters for activityType=%@. error=%s", v39, 0x16u);
      outlined destroy of NSObject?(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(&v59);
    return MEMORY[0x277D84F90];
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  lazy protocol witness table accessor for type [MetricPlatter] and conformance <A> [A](&lazy protocol witness table cache variable for type [MetricPlatter] and conformance <A> [A], lazy protocol witness table accessor for type MetricPlatter and conformance MetricPlatter, MEMORY[0x277D83978]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v57 = *&v58[0];
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static WOLog.app);

  v47 = a1;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v58[0] = v52;
    *v50 = 136315394;
    v53 = MEMORY[0x20F2E6F70](v57, &type metadata for MetricPlatter);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v58);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2112;
    *(v50 + 14) = v47;
    *v51 = v47;
    v56 = v47;
    _os_log_impl(&dword_20AEA4000, v48, v49, "Successfully read user metricPlatters=%s for activityType=%@", v50, 0x16u);
    outlined destroy of NSObject?(v51);
    MEMORY[0x20F2E9420](v51, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x20F2E9420](v52, -1, -1);
    MEMORY[0x20F2E9420](v50, -1, -1);
  }

  outlined consume of Data._Representation(v17, v19);

  __swift_destroy_boxed_opaque_existential_0(&v59);
  return v57;
}

unint64_t lazy protocol witness table accessor for type MetricPlatter and conformance MetricPlatter()
{
  result = lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter;
  if (!lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter;
  if (!lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter;
  if (!lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter and conformance MetricPlatter);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlatterStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricPlatterStore(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MetricPlatter] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutConfiguration.analyticsKey.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 <= 1)
  {
    if (*(v0 + v1))
    {
      return 0x6C61767265746E69;
    }

    else
    {
      return 1818324839;
    }
  }

  else if (v2 == 2)
  {
    return 1701011826;
  }

  else if (v2 == 3)
  {
    return 0x7265636170;
  }

  else
  {
    return 0x6F707369746C756DLL;
  }
}

id WorkoutConfiguration.swimmingActivityType.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v0;
    static Published.subscript.getter(v17);

    v2 = v17[0];
    if (v17[0] >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v17[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v4 = 0;
      v16 = v1;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x20F2E7A20](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v1 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v8 = *&v6[v7];
        v9 = v6;
        if ([v8 identifier] == 46)
        {
          v10 = *&v6[v7];
          v11 = [v10 hasLocationTypePool];

          if (v11)
          {

            v12 = *&v6[v7];

            return v12;
          }
        }

        else
        {
        }

        ++v4;
        if (v1 == i)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_24:

    return 0;
  }

  v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if ([*&v0[v13] identifier] != 46 || !objc_msgSend(*&v0[v13], sel_hasLocationTypePool))
  {
    return 0;
  }

  v12 = *&v0[v13];
  v14 = v12;
  return v12;
}

uint64_t SessionSensorUnavailableEvaluator.__allocating_init(workout:devicesProvider:healthDataSubmissionAllowedProvider:coreAnalyticsReporter:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  *(v8 + 120) = 0;
  *(v8 + 128) = v9;
  *(v8 + 16) = v10;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = a1;
  v12 = a2;
  static Published.subscript.getter(&v16);

  *(v8 + 128) = v16;

  outlined init with copy of HealthDataSubmissionAllowedProvider(a3, v8 + 40);
  outlined init with copy of HealthDataSubmissionAllowedProvider(a4, v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v8 + 72);
  __swift_project_boxed_opaque_existential_1((v8 + 40), v13);
  if ((*(v14 + 8))(v13, v14))
  {
    SessionSensorUnavailableEvaluator.beginObserving()();
  }

  __swift_destroy_boxed_opaque_existential_1Tm_10(a4);
  __swift_destroy_boxed_opaque_existential_1Tm_10(a3);
  return v8;
}

uint64_t SessionSensorUnavailableEvaluator.init(workout:devicesProvider:healthDataSubmissionAllowedProvider:coreAnalyticsReporter:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  *(v5 + 120) = 0;
  *(v5 + 128) = v10;
  *(v5 + 16) = v11;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v13 = a2;
  static Published.subscript.getter(&v17);

  *(v5 + 128) = v17;

  outlined init with copy of HealthDataSubmissionAllowedProvider(a3, v5 + 40);
  outlined init with copy of HealthDataSubmissionAllowedProvider(a4, v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v5 + 72);
  __swift_project_boxed_opaque_existential_1((v5 + 40), v14);
  if ((*(v15 + 8))(v14, v15))
  {
    SessionSensorUnavailableEvaluator.beginObserving()();
  }

  __swift_destroy_boxed_opaque_existential_1Tm_10(a4);
  __swift_destroy_boxed_opaque_existential_1Tm_10(a3);
  return v5;
}

uint64_t outlined init with copy of HealthDataSubmissionAllowedProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double SessionSensorUnavailableEvaluator.beginObserving()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher();
  Publisher<>.sink(receiveValue:)();

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

double closure #1 in SessionSensorUnavailableEvaluator.beginObserving()(void **a1, uint64_t a2)
{
  v2._rawValue = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    SessionSensorUnavailableEvaluator.evaluateWorkoutDevicesUnavailable(latestDevices:)(v2);
  }

  return result;
}

Swift::Void __swiftcall SessionSensorUnavailableEvaluator.evaluateWorkoutDevicesUnavailable(latestDevices:)(Swift::OpaquePointer latestDevices)
{
  v2 = v1;
  v4 = type metadata accessor for SessionSensorDisconnectAnalyticsEvent(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));

  v9 = specialized static SessionSensorUnavailableEvaluator.unavailableDevices(previousDevices:latestDevices:)(v8, latestDevices._rawValue);

  *(v2 + 128) = latestDevices;

  if (*(v2 + 120))
  {

    if (!*(v9 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v10 = *(v9 + 16);

  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    v13 = v10 - 1;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = *(v9 + 16);
      v16 = (v12 + 80 * v11);
      v17 = v11;
      while (1)
      {
        if (v17 >= v15)
        {
          __break(1u);
          goto LABEL_25;
        }

        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[4];
        v50 = v16[3];
        v21 = *v16;
        v51 = v20;
        v48 = v18;
        v49 = v19;
        v47 = v21;
        v11 = v17 + 1;
        if ((BYTE8(v50) & 1) == 0)
        {
          break;
        }

        v16 += 5;
        ++v17;
        if (v10 == v11)
        {
          goto LABEL_18;
        }
      }

      outlined init with copy of WorkoutDevice(&v47, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v14;
      v45 = v12;
      v44 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
        v14 = v52;
      }

      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v14 = v52;
      }

      *(v14 + 16) = v24 + 1;
      v25 = (v14 + 80 * v24);
      v25[2] = v47;
      v26 = v48;
      v27 = v49;
      v28 = v51;
      v25[5] = v50;
      v25[6] = v28;
      v25[3] = v26;
      v25[4] = v27;
      v13 = v44;
      v12 = v45;
    }

    while (v44 != v17);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_18:
  swift_bridgeObjectRelease_n();
  v9 = v14;
  if (*(v14 + 16))
  {
LABEL_19:
    if (one-time initialization token for analytics != -1)
    {
LABEL_25:
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static WOLog.analytics);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v47 = v33;
      *v32 = 136315138;

      v35 = MEMORY[0x20F2E6F70](v34, &type metadata for WorkoutDevice);
      v37 = v36;

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v47);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_20AEA4000, v30, v31, "Workout device unavailable. unavailable_devices=%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_10(v33);
      MEMORY[0x20F2E9420](v33, -1, -1);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    v39 = *(v2 + 24);

    v40 = [v39 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    *v7 = 0xD00000000000002CLL;
    v7[1] = 0x800000020B45C500;
    v7[2] = v9;
    v41 = *(v2 + 104);
    v42 = *(v2 + 112);
    __swift_project_boxed_opaque_existential_1((v2 + 80), v41);
    *(&v48 + 1) = v4;
    *&v49 = &protocol witness table for SessionSensorDisconnectAnalyticsEvent;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    outlined init with copy of SessionSensorDisconnectAnalyticsEvent(v7, boxed_opaque_existential_1);
    (*(v42 + 8))(&v47, v41, v42);
    outlined destroy of SessionSensorDisconnectAnalyticsEvent(v7);
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v47);
  }

LABEL_23:
}

uint64_t SessionSensorUnavailableEvaluator.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 80));

  return v0;
}

uint64_t SessionSensorUnavailableEvaluator.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t specialized static SessionSensorUnavailableEvaluator.unavailableDevices(previousDevices:latestDevices:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  v21 = result + 32;
  do
  {
    v22 = v6;
    v7 = (v5 + 80 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = v7[3];
      v27 = v7[2];
      v28 = v9;
      v29 = v7[4];
      v10 = v7[1];
      v25 = *v7;
      v26 = v10;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v11 = v7[2];
      v12 = v7[4];
      v24[3] = v7[3];
      v24[4] = v12;
      v13 = *v7;
      v24[1] = v7[1];
      v24[2] = v11;
      v24[0] = v13;
      MEMORY[0x28223BE20](result, a2);
      v20[2] = v24;
      outlined init with copy of WorkoutDevice(&v25, &v23);
      if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v20, a2) & 1) == 0)
      {
        break;
      }

      result = outlined destroy of WorkoutDevice(&v25);
      v7 += 5;
      if (v4 == v2)
      {
        return v22;
      }
    }

    v6 = v22;
    result = swift_isUniquelyReferenced_nonNull_native();
    v30 = v6;
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = v30;
    }

    v5 = v21;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v6 = v30;
    }

    *(v6 + 16) = v15 + 1;
    v16 = (v6 + 80 * v15);
    v16[2] = v25;
    v17 = v26;
    v18 = v27;
    v19 = v29;
    v16[5] = v28;
    v16[6] = v19;
    v16[3] = v17;
    v16[4] = v18;
  }

  while (v4 != v2);
  return v6;
}

uint64_t outlined init with copy of SessionSensorDisconnectAnalyticsEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSensorDisconnectAnalyticsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SessionSensorDisconnectAnalyticsEvent(uint64_t a1)
{
  v2 = type metadata accessor for SessionSensorDisconnectAnalyticsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v9[2] = a1[2];
  v9[3] = v3;
  v9[4] = a1[4];
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  v8[4] = v2[4];
  v6 = v2[1];
  v8[0] = *v2;
  v8[1] = v6;
  return specialized static WorkoutDevice.== infix(_:_:)(v9, v8) & 1;
}

unint64_t lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t WorkoutDeviceWatchScanner.foundDevice.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

BOOL WorkoutDeviceWatchScanner.pairedWatchNearby.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client) activeDevices];
  _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_6;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while ((v3 & 0xC000000000000001) == 0)
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v5)
      {
        return v4 != 0;
      }

      __break(1u);
LABEL_6:
      v6 = v3;
      v4 = __CocoaSet.count.getter();
      v3 = v6;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    MEMORY[0x20F2E7A20](0, v3);
    swift_unknownObjectRelease();
  }

LABEL_9:

  return v4 != 0;
}

id WorkoutDeviceWatchScanner.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21RPCompanionLinkDeviceCSgGMd, &_s7Combine9PublishedVySo21RPCompanionLinkDeviceCSgGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  *&v0[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable] = 0;
  v7 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner__foundDevice;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21RPCompanionLinkDeviceCSgMd, &_sSo21RPCompanionLinkDeviceCSgMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v7], v5, v1);
  *&v0[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationUtility] = [objc_allocWithZone(type metadata accessor for WorkoutAppInstallationUtility(0)) init];
  v8 = type metadata accessor for WorkoutDeviceWatchScanner(0);
  v12.receiver = v0;
  v12.super_class = v8;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  WorkoutDeviceWatchScanner.setupClient()();
  WorkoutDeviceWatchScanner.observeWorkoutAppInstallation()();

  return v9;
}

id WorkoutDeviceWatchScanner.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController;
  v3 = *&v1[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController];
  if (v3)
  {
    [v3 cancel];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable;
  if (*&v1[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable])
  {

    AnyCancellable.cancel()();
  }

  *&v1[v5] = 0;

  v7.receiver = v1;
  v7.super_class = type metadata accessor for WorkoutDeviceWatchScanner(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double WorkoutDeviceWatchScanner.observeWorkoutAppInstallation()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy11WorkoutCore0G20AppInstallationStateO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy11WorkoutCore0G20AppInstallationStateO_GSo17OS_dispatch_queueCGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - v12;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v14 = static OS_dispatch_queue.main.getter();
  v19[1] = v14;
  v15 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type Published<WorkoutAppInstallationState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMR, MEMORY[0x277CBCEC8]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  _sSo8NSObjectCSgWOhTm_10(v3, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v5 + 8))(v8, v4);
  swift_allocObject();
  v16 = v19[0];
  swift_unknownObjectWeakInit();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<WorkoutAppInstallationState>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy11WorkoutCore0G20AppInstallationStateO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy11WorkoutCore0G20AppInstallationStateO_GSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v13, v9);
  *(v16 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable) = v17;

  return result;
}

void closure #1 in WorkoutDeviceWatchScanner.observeWorkoutAppInstallation()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.devices);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = 0xE900000000000064;
      v11 = 0x656C6C6174736E69;
      if (v2 != 1)
      {
        v11 = 0x6174736E49746F6ELL;
        v10 = 0xEC00000064656C6CLL;
      }

      if (v2)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0x6E776F6E6B6E75;
      }

      if (v2)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_20AEA4000, v6, v7, "[WorkoutDeviceWatchScanner] workout app installation state changed to %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    WorkoutDeviceWatchScanner.reevaluateDeviceAvailability()();
  }
}

double WorkoutDeviceWatchScanner.reevaluateDeviceAvailability()()
{
  v2 = [*&v0[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client] activeDevices];
  _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x20F2E7A20](0, v3);
      goto LABEL_6;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v3 + 32);
LABEL_6:
      v11 = v4;

      WorkoutDeviceWatchScanner.updateFoundDevice(with:)(v11);

      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  v1 = v0;

  if (one-time initialization token for devices != -1)
  {
LABEL_16:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.devices);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[WorkoutDeviceWatchScanner] No active device available", v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v1;
  static Published.subscript.setter();
  return result;
}

double WorkoutDeviceWatchScanner.updateFoundDevice(with:)(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v20);

  if (v20 == 2)
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.devices);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_19;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "[WorkoutDeviceWatchScanner] Workout app not installed, clearing foundDevice";
LABEL_18:
    _os_log_impl(&dword_20AEA4000, v5, v6, v8, v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
LABEL_19:

    swift_getKeyPath();
    swift_getKeyPath();
    v20 = 0;
    v19 = v2;
    static Published.subscript.setter();
    return result;
  }

  v9 = *&v1[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController];
  if (!v9)
  {
LABEL_14:
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.devices);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_19;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "[WorkoutDeviceWatchScanner] Watch not unlocked and on wrist, clearing foundDevice";
    goto LABEL_18;
  }

  v10 = v9;
  if (![v10 isUnlockedAndOnWrist])
  {

    goto LABEL_14;
  }

  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.devices);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[WorkoutDeviceWatchScanner] Device is available and workout app is installed", v14, 2u);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = a1;
  v15 = v2;
  v16 = a1;
  static Published.subscript.setter();

  return result;
}

void WorkoutDeviceWatchScanner.setupClient()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client);
  v2 = MEMORY[0x20F2E6C00](0xD00000000000002DLL, 0x800000020B463250);
  [v1 setAppID_];

  [v1 setControlFlags_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #1 in WorkoutDeviceWatchScanner.setupClient();
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v15 = &block_descriptor_31_2;
  v4 = _Block_copy(&v12);

  [v1 setDeviceFoundHandler_];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #2 in WorkoutDeviceWatchScanner.setupClient();
  v17 = v5;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v15 = &block_descriptor_35;
  v6 = _Block_copy(&v12);

  [v1 setDeviceLostHandler_];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #3 in WorkoutDeviceWatchScanner.setupClient();
  v17 = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice, @unowned RPDeviceChangeFlags) -> ();
  v15 = &block_descriptor_39_2;
  v8 = _Block_copy(&v12);

  [v1 setDeviceChangedHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #4 in WorkoutDeviceWatchScanner.setupClient();
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v15 = &block_descriptor_43_0;
  v10 = _Block_copy(&v12);

  [v1 setLocalDeviceUpdatedHandler_];
  _Block_release(v10);
  v16 = closure #5 in WorkoutDeviceWatchScanner.setupClient();
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v15 = &block_descriptor_46;
  v11 = _Block_copy(&v12);
  [v1 activateWithCompletion_];
  _Block_release(v11);
}

uint64_t closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

uint64_t closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient(), v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  closure #1 in WorkoutDeviceWatchScanner.handleDeviceChanged(_:)(v1, v2);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

void thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

uint64_t closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient(), v3, v2);
  }

  else
  {
    **(v0 + 48) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 64);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 40) = 0;
  v2 = v1;
  static Published.subscript.setter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

{

  **(v0 + 48) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

double closure #3 in WorkoutDeviceWatchScanner.setupClient()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v37 - v7;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.devices);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v37 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315394;
    v15 = [v10 identifier];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v38 = v17;
    v39 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v20 = Optional.description.getter();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v40);

    *(v13 + 4) = v23;
    *(v13 + 12) = 2080;
    v24 = [v10 name];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v38 = v26;
    v39 = v28;
    v29 = Optional.description.getter();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v40);

    *(v13 + 14) = v32;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[WorkoutDeviceWatchScanner] Device changed: %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);

    a3 = v37;
  }

  else
  {
  }

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = a3;
  v34[5] = v10;
  v35 = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient(), v34);

  return result;
}

uint64_t closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

uint64_t closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient(), v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  closure #1 in WorkoutDeviceWatchScanner.handleDeviceChanged(_:)(v1, v2);

  return MEMORY[0x2822009F8](closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

{

  **(v0 + 40) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice, @unowned RPDeviceChangeFlags) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double closure #1 in WorkoutDeviceWatchScanner.setupClient()(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v42 - v12;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.devices);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v43 = a3;
    v44 = a4;
    v45 = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 136315394;
    v20 = [v15 identifier];
    v46 = a5;
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v47 = v22;
    v48 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v25 = Optional.description.getter();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v49);

    *(v18 + 4) = v28;
    *(v18 + 12) = 2080;
    v29 = [v15 name];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    a5 = v46;
    v47 = v31;
    v48 = v33;
    v34 = Optional.description.getter();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v49);

    *(v18 + 14) = v37;
    _os_log_impl(&dword_20AEA4000, v16, v17, v43, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    a2 = v45;
  }

  else
  {
  }

  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = a2;
  v39[5] = v15;
  v40 = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v13, a5, v39);

  return result;
}

uint64_t closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

uint64_t closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient(), v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  closure #1 in WorkoutDeviceWatchScanner.handleDeviceChanged(_:)(v1, v2);

  return MEMORY[0x2822009F8](closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

void closure #5 in WorkoutDeviceWatchScanner.setupClient()(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.activityPicker);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = MEMORY[0x20F2E7F50]();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Error activating paired companion link: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    else
    {
    }
  }
}

double closure #1 in WorkoutDeviceWatchScanner.handleDeviceChanged(_:)(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController;
  if (!*(a1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController))
  {
    v5 = [objc_allocWithZone(WOWorkoutDevicePairedWatchController) init];
    v6 = *(a1 + v4);
    *(a1 + v4) = v5;
    v7 = v5;

    if (v7)
    {
      [v7 setDelegate_];
    }

    [*(a1 + v4) activate];
  }

  return WorkoutDeviceWatchScanner.updateFoundDevice(with:)(a2);
}

void closure #1 in WorkoutDeviceWatchScanner.workoutDevicePairedWatchControllerDidUpdateStatus(_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.devices);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a2 & 1;
      _os_log_impl(&dword_20AEA4000, v6, v7, "[WorkoutDeviceWatchScanner] Paired watch status updated: isUnlockedAndOnWrist = %{BOOL}d", v8, 8u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    if ((a2 & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v34), , , v34 == 2))
    {
      v9 = v4;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v34 = v13;
        *v12 = 67109378;
        *(v12 + 4) = a2 & 1;
        *(v12 + 8) = 2080;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v33);

        v14 = 0xE900000000000064;
        v15 = 0x656C6C6174736E69;
        if (v33 != 1)
        {
          v15 = 0x6174736E49746F6ELL;
          v14 = 0xEC00000064656C6CLL;
        }

        if (v33)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0x6E776F6E6B6E75;
        }

        if (v33)
        {
          v17 = v14;
        }

        else
        {
          v17 = 0xE700000000000000;
        }

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v34);

        *(v12 + 10) = v18;
        _os_log_impl(&dword_20AEA4000, v10, v11, "[WorkoutDeviceWatchScanner] Clearing found device - watch not on wrist (%{BOOL}d) or workout app not installed (%s)", v12, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x20F2E9420](v13, -1, -1);
        MEMORY[0x20F2E9420](v12, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v34 = 0;
LABEL_19:
      static Published.subscript.setter();
      return;
    }

    v19 = [*&v4[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client] activeDevices];
    _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_23;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_23:
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x20F2E7A20](0, v20);
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v21 = *(v20 + 32);
      }

      v22 = v21;

      v23 = v22;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v23;
        *v27 = v23;
        v28 = v23;
        _os_log_impl(&dword_20AEA4000, v24, v25, "[WorkoutDeviceWatchScanner] Updating found device status %@ - workout app is installed and watch is on wrist", v26, 0xCu);
        _sSo8NSObjectCSgWOhTm_10(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v27, -1, -1);
        MEMORY[0x20F2E9420](v26, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v34 = v23;
      goto LABEL_19;
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20AEA4000, v29, v30, "[WorkoutDeviceWatchScanner] activeDevices is empty when the watch is on wrist. Setting foundDevice.", v31, 2u);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    v32 = [objc_allocWithZone(MEMORY[0x277D44170]) init];
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v32;
    goto LABEL_19;
  }
}

void type metadata completion function for WorkoutDeviceWatchScanner(uint64_t a1)
{
  type metadata accessor for Published<RPCompanionLinkDevice?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<RPCompanionLinkDevice?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<RPCompanionLinkDevice?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo21RPCompanionLinkDeviceCSgMd, &_sSo21RPCompanionLinkDeviceCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<RPCompanionLinkDevice?>);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutDeviceWatchScanner@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDeviceWatchScanner(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void key path getter for WorkoutDeviceWatchScanner.foundDevice : WorkoutDeviceWatchScanner(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutDeviceWatchScanner.foundDevice : WorkoutDeviceWatchScanner(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  static Published.subscript.setter();
  return result;
}

uint64_t partial apply for closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient();

  return closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient();

  return closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient();

  return closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient()(a1, v4, v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient();

  return closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient()(a1, v4, v5, v7, v6);
}

uint64_t HeartRateZone.__allocating_init(displaySpan:configuration:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_allocObject();
  v9 = floor(a3);
  v10 = floor(a4);
  if (v9 > v10)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v9;
    *(result + 24) = v10;
    *(result + 32) = a1;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t zoneColor(for:index:count:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B4238A0;
  v10 = *MEMORY[0x277CE0EE0];
  v11 = *(v5 + 104);
  v11(v8, v10, v4);
  *(inited + 32) = Color.init(_:red:green:blue:opacity:)();
  v11(v8, v10, v4);
  v40 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 40) = v40;
  v11(v8, v10, v4);
  v12 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 48) = v12;
  v11(v8, v10, v4);
  v13 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 56) = v13;
  v11(v8, v10, v4);
  v14 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 64) = v14;
  v11(v8, v10, v4);
  *(inited + 72) = Color.init(_:red:green:blue:opacity:)();
  v11(v8, v10, v4);
  v15 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 80) = v15;
  v16 = v4;
  v17 = v43;
  v11(v8, v10, v16);
  v18 = v42;
  v19 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 88) = v19;
  if ((v18 & 0x8000000000000000) != 0 || v18 >= v17)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0x2064696C61766E49, 0xED00007865646E69, "WorkoutCore/HeartRateZone.swift", 31, 2, 25, 0);
    goto LABEL_34;
  }

  if (v17 > 5)
  {
    switch(v17)
    {
      case 6:
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_20B423930;
        v25 = v40;
        *(v24 + 32) = *(inited + 32);
        *(v24 + 40) = v25;
        *(v24 + 48) = v12;
        *(v24 + 56) = v13;
        *(v24 + 64) = v14;

        *(v24 + 72) = v15;
        inited = v24;
        goto LABEL_15;
      case 7:
        v21 = v19;
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_20B423920;
        v23 = v40;
        *(v22 + 32) = *(inited + 32);
        *(v22 + 40) = v23;
        *(v22 + 48) = v12;
        *(v22 + 56) = v13;
        *(v22 + 64) = v14;
        *(v22 + 72) = v15;

        v17 = v43;

        *(v22 + 80) = v21;
        inited = v22;
        goto LABEL_15;
      case 8:
        v27 = *(inited + 16);
        goto LABEL_28;
    }

    goto LABEL_35;
  }

  if (v17 == 3)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20B423A20;
    *(v20 + 32) = *(inited + 32);
    *(v20 + 40) = v12;

    *(v20 + 48) = v15;
    goto LABEL_14;
  }

  if (v17 != 4)
  {
    if (v17 == 5)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_20B423940;
      v26 = v40;
      *(v20 + 32) = *(inited + 32);
      *(v20 + 40) = v26;
      *(v20 + 48) = v12;
      *(v20 + 56) = v14;

      *(v20 + 64) = v15;
      goto LABEL_14;
    }

    while (1)
    {
LABEL_35:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0x2064696C61766E49, 0xED0000746E756F63, "WorkoutCore/HeartRateZone.swift", 31, 2, 63, 0);
LABEL_34:
      __break(1u);
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B4290B0;
  *(v20 + 32) = *(inited + 32);
  *(v20 + 40) = v12;
  *(v20 + 48) = v14;

  *(v20 + 56) = v15;
LABEL_14:
  inited = v20;
LABEL_15:
  v27 = *(inited + 16);
  if (v27 > v18)
  {
LABEL_28:
    if (v27 > v18)
    {
      v36 = *(inited + 8 * v18 + 32);

      return v36;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (one-time initialization token for core != -1)
  {
LABEL_32:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static WOLog.core);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136315650;
    if (v39)
    {
      v33 = 0x6E6F5A7265776F70;
    }

    else
    {
      v33 = 0x7461527472616568;
    }

    if (v39)
    {
      v34 = 0xE900000000000065;
    }

    else
    {
      v34 = 0xED0000656E6F5A65;
    }

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v18;
    *(v31 + 22) = 2048;
    *(v31 + 24) = v17;
    _os_log_impl(&dword_20AEA4000, v29, v30, "Unsupported zone color for (zoneViewType: %s,  index: %ld, count: %ld)", v31, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm_6(v32);
    MEMORY[0x20F2E9420](v32, -1, -1);
    MEMORY[0x20F2E9420](v31, -1, -1);
  }

  return Color.init(hue:saturation:brightness:opacity:)();
}

uint64_t HeartRateZone.init(displaySpan:configuration:)(uint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = floor(a3);
  v6 = floor(a4);
  if (v5 > v6)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
    *(v4 + 32) = result;
    *(v4 + 40) = a2;
    return v4;
  }

  return result;
}

uint64_t HeartRateZone.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  outlined init with copy of Decoder(a1, v5);
  Zone.init(from:)(v5);
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0Tm_6(a1);
  return v3;
}

uint64_t HeartRateZone.init(from:)(void *a1)
{
  outlined init with copy of Decoder(a1, v5);
  Zone.init(from:)(v5);
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0Tm_6(a1);
  return v3;
}

id WorkoutChartDataElement.__allocating_init(date:value:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR___WOWorkoutChartDataElement_value] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t key path getter for WorkoutChartDataElement.date : WorkoutChartDataElement@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for WorkoutChartDataElement.date : WorkoutChartDataElement(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t WorkoutChartDataElement.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WorkoutChartDataElement.date.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double WorkoutChartDataElement.value.getter()
{
  v1 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutChartDataElement.value.setter(double a1)
{
  v3 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id WorkoutChartDataElement.init(date:value:)(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___WOWorkoutChartDataElement_value] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for WorkoutChartDataElement(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for WorkoutChartDataElement(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutChartDataElement;
  if (!type metadata singleton initialization cache for WorkoutChartDataElement)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int WorkoutChartDataElement.hash.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v7 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v6, v2);
  v8 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v9);
  return Hasher.finalize()();
}

BOOL WorkoutChartDataElement.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v22 - v10;
  outlined init with copy of Any?(a1, v23);
  if (v24)
  {
    type metadata accessor for WorkoutChartDataElement(0);
    if (swift_dynamicCast())
    {
      v12 = v22[7];
      v13 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v14 = *(v4 + 16);
      v14(v11, v1 + v13, v3);
      v15 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v14(v8, &v12[v15], v3);
      LOBYTE(v15) = static Date.== infix(_:_:)();
      v16 = *(v4 + 8);
      v16(v8, v3);
      v16(v11, v3);
      if (v15)
      {
        v17 = OBJC_IVAR___WOWorkoutChartDataElement_value;
        swift_beginAccess();
        v18 = *(v1 + v17);
        v19 = OBJC_IVAR___WOWorkoutChartDataElement_value;
        swift_beginAccess();
        v20 = *&v12[v19];

        return v18 == v20;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v23);
  }

  return 0;
}

BOOL static WorkoutChartDataElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21[-v11];
  v13 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, a1 + v13, v4);
  v15 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v14(v9, a2 + v15, v4);
  LOBYTE(v15) = static Date.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v12, v4);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v17 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  return v18 == *(a2 + v19);
}

id WorkoutChartDataElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutChartDataElement.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutChartDataElement.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutChartDataElement.CodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1702125924;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance WorkoutChartDataElement.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutChartDataElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutChartDataElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id WorkoutChartDataElement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutChartDataElement(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutChartDataElement.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D16ChartDataElementC10CodingKeys33_6F6E8A068D440DC4B222C7D8CFCBB10FLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D16ChartDataElementC10CodingKeys33_6F6E8A068D440DC4B222C7D8CFCBB10FLLOGMR);
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v13, v4);
  v18 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580]);
  v14 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v8, v4);
  if (!v14)
  {
    swift_beginAccess();
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v17 + 8))(v12, v9);
}

unint64_t lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys);
  }

  return result;
}

void *WorkoutChartDataElement.init(from:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D16ChartDataElementC10CodingKeys33_6F6E8A068D440DC4B222C7D8CFCBB10FLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D16ChartDataElementC10CodingKeys33_6F6E8A068D440DC4B222C7D8CFCBB10FLLOGMR);
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v10);
  v12 = v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for WorkoutChartDataElement(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v9;
    v13 = v22;
    v26 = 0;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0]);
    v14 = v23;
    v15 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = *(v13 + 32);
    v20[1] = OBJC_IVAR___WOWorkoutChartDataElement_date;
    v17(v1 + OBJC_IVAR___WOWorkoutChartDataElement_date, v8, v14);
    v26 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR___WOWorkoutChartDataElement_value) = v18;
    v19 = type metadata accessor for WorkoutChartDataElement(0);
    v25.receiver = v1;
    v25.super_class = v19;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    (*(v21 + 8))(v12, v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void *protocol witness for Decodable.init(from:) in conformance WorkoutChartDataElement@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WorkoutChartDataElement(0));
  result = WorkoutChartDataElement.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutChartDataElement@<X0>(uint64_t *a1@<X8>)
{
  result = NSObject.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t WorkoutChartDataElement.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v13 = v11;
  v14 = v12;
  MEMORY[0x20F2E6D80](0x3D65746164, 0xE500000000000000);
  v7 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95B8]);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x20F2E6D80](0x3D65756C6176202CLL, 0xE800000000000000);
  swift_beginAccess();
  Double.write<A>(to:)();
  return v13;
}

uint64_t type metadata completion function for WorkoutChartDataElement(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutChartDataElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutChartDataElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double LocationProvider.preSessionSetup(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  swift_beginAccess();
  v7 = *(a1 + 56);
  type metadata accessor for RunningTrackInfo();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = v6;
  *(v8 + 56) = v7;
  v9 = one-time initialization token for trackRunning;
  v10 = v4;
  v11 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.trackRunning);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;

    v17 = RunningTrackInfo.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[LocationProvider] Setting pre-session trackInfo to %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  *(v2 + OBJC_IVAR___WOCoreLocationProvider_trackInfo) = v8;

  return result;
}

double closure #1 in LocationProvider.addObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.location);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    v23[1] = a1;
    *v9 = 136315138;
    v23[2] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17TrackInfoObserver_pMd, &_s11WorkoutCore17TrackInfoObserver_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[LocationProvider] Adding observer %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v14 = *(a3 + OBJC_IVAR___WOCoreLocationProvider_observers);
  ObjectType = swift_getObjectType();
  [v14 addObject_];
  v16 = OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations;
  if ((*(a3 + OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations) & 1) == 0)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "[LocationProvider] Starting continuous updates", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    [*(a3 + OBJC_IVAR___WOCoreLocationProvider_locationManager) startUpdatingLocation];
    *(a3 + v16) = 1;
  }

  v20 = *(a3 + OBJC_IVAR___WOCoreLocationProvider_trackInfo);
  swift_beginAccess();
  LOBYTE(v23[0]) = *(v20 + 24);
  v21 = *(a2 + 8);

  v21(0, v23, v20, ObjectType, a2);
  LOBYTE(v23[0]) = 0;
  (*(a2 + 16))(0, v20, v23, ObjectType, a2);
  (*(a2 + 24))(0, v20, ObjectType, a2);

  return result;
}

double LocationProvider.removeObserver(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___WOCoreLocationProvider_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = partial apply for closure #1 in LocationProvider.removeObserver(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);

  return result;
}

void LocationProvider.validateObservers()()
{
  v1 = [*(v0 + OBJC_IVAR___WOCoreLocationProvider_observers) allObjects];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v4 = OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations;
    if (*(v0 + OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations) == 1)
    {
      v5 = v0;
      if (one-time initialization token for location != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static WOLog.location);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_20AEA4000, v7, v8, "[LocationProvider] Stopping continuous updates", v9, 2u);
        MEMORY[0x20F2E9420](v9, -1, -1);
      }

      [*(v5 + OBJC_IVAR___WOCoreLocationProvider_locationManager) stopUpdatingLocation];
      if (one-time initialization token for defaultTrackInfo != -1)
      {
        swift_once();
      }

      *(v5 + OBJC_IVAR___WOCoreLocationProvider_trackInfo) = static RunningTrackInfo.defaultTrackInfo;

      *(v5 + v4) = 0;
    }
  }
}

Swift::Void __swiftcall LocationProvider.select(laneNumber:)(Swift::Int laneNumber)
{
  v2 = v1;
  v29 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.location);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = laneNumber;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[LocationProvider] Manually selected lane number: %ld", v16, 0xCu);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v24 = 0;
  aBlock = mach_continuous_time();
  if (laneNumber < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (laneNumber > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  LODWORD(v24) = laneNumber;
  CLSetTrackRunHint();
  v20 = *&v2[OBJC_IVAR___WOCoreLocationProvider_queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = laneNumber;
  v27 = partial apply for closure #1 in LocationProvider.select(laneNumber:);
  v28 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v26 = &block_descriptor_9_6;
  v18 = _Block_copy(&aBlock);
  v19 = v2;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v18);
  _Block_release(v18);
  (*(v5 + 8))(v8, v4);
  (*(v21 + 8))(v12, v9);
}

uint64_t closure #1 in LocationProvider.select(laneNumber:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection;
  *v4 = a2;
  *(v4 + 8) = 0;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in closure #1 in LocationProvider.select(laneNumber:);
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  aBlock[3] = &block_descriptor_49_1;
  v7 = _Block_copy(aBlock);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:30.0];
  _Block_release(v7);
  v9 = *(a1 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer);
  *(a1 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer) = v8;

  v10 = OBJC_IVAR___WOCoreLocationProvider_trackInfo;
  [*(a1 + OBJC_IVAR___WOCoreLocationProvider_trackInfo) copyWithZone_];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for RunningTrackInfo();
  if (swift_dynamicCast())
  {
    v11 = v14;
    v12 = *(a1 + v10);
    swift_beginAccess();
    *(v12 + 32) = a2;
    LOBYTE(v14) = 1;

    LocationProvider.notifyChangedTrackInfo(_:to:reason:)(v11, v12, &v14);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003DLL, 0x800000020B4634B0, "WorkoutCore/LocationProvider.swift", 34, 2, 126, 0);
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in LocationProvider.select(laneNumber:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = &Strong[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection];
    *v3 = 0;
    v3[8] = 1;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer];
    *&v4[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer] = 0;
  }
}

void LocationProvider.configureLocationUpdates()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR___WOCoreLocationProvider_queue];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v10 = *&v1[OBJC_IVAR___WOCoreLocationProvider_locationManager];
  if (!v10)
  {
    return;
  }

  outlined init with copy of ForegroundProviding(&v1[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider], v22);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v13 = *(v12 + 16);
  v2 = v10;
  v9 = v13(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm_11(v22);
  if (one-time initialization token for location != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.location);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109376;
    *(v18 + 4) = v9 & 1;
    *(v18 + 8) = 1024;
    *(v18 + 10) = *&v15[OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus];

    _os_log_impl(&dword_20AEA4000, v16, v17, "[LocationProvider] Configuring... isEffectivelyForeground: %{BOOL}d, authorizationStatus: %d", v18, 0xEu);
    MEMORY[0x20F2E9420](v18, -1, -1);

    if ((v9 & 1) == 0)
    {
LABEL_6:
      v19 = &selRef_stopUpdatingLocation;
LABEL_12:
      [v2 *v19];
      goto LABEL_13;
    }
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v20 = *&v15[OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus];
  if ((v20 - 3) < 2)
  {
    v19 = &selRef_startUpdatingLocation;
    goto LABEL_12;
  }

  if (!v20)
  {
    v19 = &selRef_requestWhenInUseAuthorization;
    goto LABEL_12;
  }

LABEL_13:
}

void LocationProvider.completeLocationRequests(location:)(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR___WOCoreLocationProvider_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (one-time initialization token for location == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.location);
  v11 = a1;
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 136315394;
    v17 = type metadata accessor for LocationRequest();

    v19 = MEMORY[0x20F2E6F70](v18, v17);
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v31);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = a1;
    v23 = v11;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[LocationProvider] Completing locationRequests: %s with location: %@", v15, 0x16u);
    outlined destroy of NSObject?(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    v24 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v30);
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v25 = OBJC_IVAR___WOCoreLocationProvider_locationRequests;
  v26 = *&v12[OBJC_IVAR___WOCoreLocationProvider_locationRequests];
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_14:
    *&v12[v25] = MEMORY[0x277D84F90];

    LocationProvider.validateObservers()();
    return;
  }

  v27 = __CocoaSet.count.getter();
  if (!v27)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v27 >= 1)
  {

    v28 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v28, v26);
      }

      else
      {
      }

      ++v28;
      v29.value.super.isa = a1;
      LocationRequest.received(_:)(v29);
    }

    while (v27 != v28);

    goto LABEL_14;
  }

  __break(1u);
}

double LocationProvider.notifyChangedTrackInfo(_:to:reason:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = *a3;
  v12 = *(v3 + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (one-time initialization token for location == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_30:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static WOLog.location);

  v16 = v3;
  v72 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  p_cb = &OBJC_PROTOCOL___NLWorkoutAlertDelegate.cb;
  v70 = a2;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v77[0] = v22;
    *v21 = 136315650;
    v76[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
    v23 = Optional.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v77);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = RunningTrackInfo.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v77);

    *(v21 + 14) = v28;
    *(v21 + 22) = 2048;
    v29 = [*&v16[OBJC_IVAR___WOCoreLocationProvider_observers] allObjects];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 24) = v31;

    _os_log_impl(&dword_20AEA4000, v17, v18, "[LocationProvider] Changed from: %s to %s. Updating %ld observers.", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);

    a2 = v70;
    p_cb = (&OBJC_PROTOCOL___NLWorkoutAlertDelegate + 64);
  }

  else
  {
  }

  v32 = [*&v16[*(p_cb + 474)] allObjects];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v33 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_10;
    }

LABEL_33:
    v68 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v33 = __CocoaSet.count.getter();
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_10:
  v34 = 0;
  v68 = MEMORY[0x277D84F90];
  do
  {
    v35 = v34;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x20F2E7A20](v35, v3);
        v34 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v35 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v36 = *(v3 + 8 * v35 + 32);
        swift_unknownObjectRetain();
        v34 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      swift_getObjectType();
      v37 = swift_conformsToProtocol2();
      if (v37)
      {
        if (v36)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      ++v35;
      if (v34 == v33)
      {
        goto LABEL_34;
      }
    }

    v38 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
    }

    v41 = v68[2];
    v40 = v68[3];
    if (v41 >= v40 >> 1)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v68);
    }

    v42 = v38;
    a2 = v70;
    v43 = v68;
    v68[2] = v41 + 1;
    v44 = &v43[2 * v41];
    v44[4] = v36;
    v44[5] = v42;
  }

  while (v34 != v33);
LABEL_34:

  v45 = v68[2];
  if (v45)
  {
    v46 = (v68 + 4);
    swift_beginAccess();
    swift_beginAccess();
    *&v47 = 136315138;
    v69 = v47;
    do
    {
      v73 = *v46;
      swift_unknownObjectRetain_n();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v75 = v51;
        *v50 = v69;
        v74 = v73;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17TrackInfoObserver_pMd, &_s11WorkoutCore17TrackInfoObserver_pMR);
        v52 = String.init<A>(describing:)();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v75);

        *(v50 + 4) = v54;
        a2 = v70;
        _os_log_impl(&dword_20AEA4000, v48, v49, "[LocationProvider] Updating %s about trackInfo change.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_11(v51);
        MEMORY[0x20F2E9420](v51, -1, -1);
        MEMORY[0x20F2E9420](v50, -1, -1);
      }

      if (!a1)
      {
        ObjectType = swift_getObjectType();
        LOBYTE(v74) = *(a2 + 24);
        v57 = *(&v73 + 1);
        (*(*(&v73 + 1) + 8))(0, &v74, a2, ObjectType, *(&v73 + 1));
        LOBYTE(v74) = v71;
        (*(v57 + 16))(0, a2, &v74, ObjectType, v57);
        (*(v57 + 24))(0, a2, ObjectType, v57);
        goto LABEL_37;
      }

      swift_beginAccess();
      v55 = *(a1 + 24);
      if (v55 == *(a2 + 24))
      {

        if (v55 != 3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v58 = swift_getObjectType();
        v59 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        v60 = [v59 initWithInteger_];
        LOBYTE(v74) = *(a2 + 24);
        (*(*(&v73 + 1) + 8))(v60, &v74, a2, v58);

        if (*(a2 + 24) != 3)
        {
LABEL_46:
          if (v71 == 1)
          {
            v61 = swift_getObjectType();
            swift_beginAccess();
            v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            LOBYTE(v74) = 1;
            (*(*(&v73 + 1) + 16))(v62, a2, &v74, v61);
          }

          swift_beginAccess();
          v63 = *(a1 + 40);
          if (v63 != *(a2 + 40))
          {
            v64 = swift_getObjectType();
            v65 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            (*(*(&v73 + 1) + 24))(v65, a2, v64);
          }
        }
      }

LABEL_37:
      swift_unknownObjectRelease();
      ++v46;
      --v45;
    }

    while (v45);
  }

  return result;
}

double LocationProvider.update(observer:from:to:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = *a5;
  if (!a3)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v22[0] = *(a4 + 24);
    (*(a2 + 8))(0, v22, a4, ObjectType, a2);
    v22[0] = v7;
    (*(a2 + 16))(0, a4, v22, ObjectType, a2);
    (*(a2 + 24))(0, a4, ObjectType, a2);
    return result;
  }

  swift_beginAccess();
  v9 = *(a3 + 24);
  swift_beginAccess();
  if (v9 == *(a4 + 24))
  {

    if (v9 == 3)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (v7 == 1)
    {
      v16 = swift_getObjectType();
      swift_beginAccess();
      v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v21[0] = 1;
      (*(a2 + 16))(v17, a4, v21, v16, a2);
    }

    swift_beginAccess();
    v18 = *(a3 + 40);
    swift_beginAccess();
    if (v18 != *(a4 + 40))
    {
      v19 = swift_getObjectType();
      v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      (*(a2 + 24))(v20, a4, v19, a2);
    }

    goto LABEL_11;
  }

  v12 = swift_getObjectType();
  v13 = *(a3 + 24);
  v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v15 = [v14 initWithInteger_];
  v21[0] = *(a4 + 24);
  (*(a2 + 8))(v15, v21, a4, v12, a2);

  if (*(a4 + 24) != 3)
  {
    goto LABEL_7;
  }

LABEL_11:

  return result;
}

Swift::Void __swiftcall LocationProvider.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  isa = a1.super.isa;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = [(objc_class *)isa authorizationStatus];
    *(v1 + OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus) = v10;
    LocationProvider.configureLocationUpdates()();
  }

  else
  {
    __break(1u);
  }
}

void LocationProvider.locationManager(_:didFailWithError:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    LocationProvider.completeLocationRequests(location:)(0);
  }

  else
  {
    __break(1u);
  }
}

id LocationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double specialized LocationProvider.addObserver(_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&a2[OBJC_IVAR___WOCoreLocationProvider_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a4;
  v16[4] = a2;
  aBlock[4] = _s11WorkoutCore16LocationProviderC11addObserveryyAA09TrackInfoF0_pFyyYbcfU_TA_0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_55_1;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);

  return result;
}

void specialized LocationProvider.locationManager(_:didUpdateLocations:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (!(a1 >> 62))
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_12:
      v15 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v14 = MEMORY[0x20F2E7A20](v13, a1);
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
    return;
  }

  v14 = *(a1 + 8 * v13 + 32);
LABEL_9:
  v15 = v14;
LABEL_13:
  v16 = OBJC_IVAR___WOCoreLocationProvider_trackInfo;
  v17 = *(v2 + OBJC_IVAR___WOCoreLocationProvider_trackInfo);
  type metadata accessor for RunningTrackInfo();
  swift_allocObject();
  v18 = v15;

  v19 = RunningTrackInfo.init(location:)(v15);
  v20 = (v2 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection);
  if (*(v2 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection + 8))
  {
    v21 = 2;
  }

  else
  {
    v22 = *v20;
    swift_beginAccess();
    if (*(v19 + 32) == v22)
    {
      *v20 = 0;
      *(v20 + 8) = 1;
      v23 = OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer;
      [*(v2 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer) invalidate];
      v24 = *(v2 + v23);
      *(v2 + v23) = 0;

      v21 = 2;
    }

    else
    {
      *(v19 + 32) = v22;
      v21 = 1;
    }
  }

  *(v2 + v16) = v19;

  if (!specialized static RunningTrackInfo.== infix(_:_:)(v17, v19))
  {
    v27 = v21;

    LocationProvider.notifyChangedTrackInfo(_:to:reason:)(v25, v19, &v27);
  }

  LocationProvider.completeLocationRequests(location:)(v15);
}

double static WorkoutAlertTimingConstants.alertHoldoffTime(workoutConfiguration:)(uint64_t a1)
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  v1 = swift_dynamicCastClass();
  result = 60.0;
  if (v1)
  {
    return 10.0;
  }

  return result;
}

double static WorkoutAlertTimingConstants.alertHoldoffTime(liveWorkoutConfiguration:)(uint64_t a1)
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  v1 = swift_dynamicCastClass();
  result = 60.0;
  if (v1)
  {
    return 10.0;
  }

  return result;
}

id WorkoutAlertTimingConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertTimingConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertTimingConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WorkoutAlertTimingConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertTimingConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutReadinessCheckError.disclaimerMessage.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "INCOMPATIBLE_GIZMO_VERSION_BODY";
  v5 = "R_DISCONNECTED_BODY";
  v6 = 0xD000000000000016;
  if (v1 != 2)
  {
    v5 = "minTimeBetweenAlertsSec";
    v6 = 0xD000000000000023;
  }

  if (v1)
  {
    v4 = "TRACKING_DISABLED_BODY";
    v7 = 0xD00000000000001FLL;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (v1 <= 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = MEMORY[0x20F2E6C00](v9, v8 | 0x8000000000000000);
  v11 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
  v12 = [v3 localizedStringForKey:v10 value:0 table:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v13;
}

uint64_t WorkoutReadinessCheckError.disclaimerTitle.getter()
{
  if (*v0 != 2)
  {
    return 0;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B4635E0);
  v4 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

unint64_t WorkoutReadinessCheckError.disclaimerSymbol.getter()
{
  v1 = *v0;
  v2 = v1 >= 2;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t WorkoutReadinessCheckError.appStorageKey.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(22);

  v2 = 0xD000000000000016;
  v3 = "art_rate_monitor";
  v4 = "incompatibleGizmoVersion";
  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0xD00000000000001BLL;
    v4 = "fitnessTrackingDisabled";
  }

  if (v1)
  {
    v2 = 0xD000000000000018;
    v3 = "gizmoWorkoutAppMissing";
  }

  if (v1 <= 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x20F2E6D80](v6, v7 | 0x8000000000000000);

  return 0xD000000000000014;
}

unint64_t WorkoutReadinessCheckError.rawValue.getter()
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001BLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t WorkoutReadinessCheckError.footerURLText.getter()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      return 0x73676E6974746553;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = MEMORY[0x20F2E6C00](0x5441575F4E45504FLL, 0xEE005050415F4843);
    v5 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v7;
  }
}

Swift::Void __swiftcall WorkoutReadinessCheckError.footerAction()()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      specialized static FitnessTrackingSettingsNavigator.openSettings()();
    }
  }

  else
  {
    specialized static FitnessBridgeAppSettingsNavigator.openSettings()();
  }
}

WorkoutCore::WorkoutReadinessCheckError_optional __swiftcall WorkoutReadinessCheckError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutReadinessCheckError.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutReadinessCheckError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance WorkoutReadinessCheckError(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutReadinessCheckError(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutReadinessCheckError(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = "art_rate_monitor";
  v4 = "incompatibleGizmoVersion";
  v5 = 0xD00000000000001BLL;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v4 = "fitnessTrackingDisabled";
  }

  if (*v1)
  {
    v2 = 0xD000000000000018;
    v3 = "gizmoWorkoutAppMissing";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type WorkoutReadinessCheckError and conformance WorkoutReadinessCheckError()
{
  result = lazy protocol witness table cache variable for type WorkoutReadinessCheckError and conformance WorkoutReadinessCheckError;
  if (!lazy protocol witness table cache variable for type WorkoutReadinessCheckError and conformance WorkoutReadinessCheckError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReadinessCheckError and conformance WorkoutReadinessCheckError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutReadinessCheckError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutReadinessCheckError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id WorkoutAlertPacer.__allocating_init(activityType:distanceGoalInMeters:finishTime:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType] = a1;
  *&v7[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime] = a3;
  *&v7[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters] = a2;
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v9 setType_];

  return v9;
}

void key path setter for WorkoutAlertPacer.activityType : WorkoutAlertPacer(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id WorkoutAlertPacer.activityType.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WorkoutAlertPacer.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double WorkoutAlertPacer.finishTime.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutAlertPacer.finishTime.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double WorkoutAlertPacer.distanceGoalInMeters.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutAlertPacer.distanceGoalInMeters.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id WorkoutAlertPacer.init(activityType:distanceGoalInMeters:finishTime:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType] = a1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime] = a3;
  *&v3[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters] = a2;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WorkoutAlertPacer();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  [v6 setType_];

  return v6;
}

id WorkoutAlertPacer.spokenDescription(with:)(void *a1)
{
  swift_beginAccess();
  v3 = FIUIDistanceTypeForActivityType();
  result = [a1 unitManager];
  if (result)
  {
    v5 = result;
    v6 = [result userDistanceUnitForDistanceType_];

    v7 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
    swift_beginAccess();
    v8 = [a1 localizedStringWithDistanceInMeters:v6 distanceUnit:0 unitStyle:3 decimalPrecision:2 roundingMode:2 decimalTrimmingMode:*(v1 + v7)];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v13 = [objc_opt_self() meterUnit];
    v14 = [objc_opt_self() quantityWithUnit:v13 doubleValue:*(v1 + v7)];

    v15 = MEMORY[0x20F2E8320](v6);
    [v14 doubleValueForUnit_];
    v17 = v16;

    v18 = [a1 localizedLongUnitStringForDistanceUnit:v6 distanceInUnit:2 textCase:v17];
    if (v18 && (v19 = v18, v20 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v22 = v21, v19, v12) && v22)
    {
      v23 = MEMORY[0x20F2E6C00](v10, v12);

      v24 = MEMORY[0x20F2E6C00](v20, v22);

      v25 = objc_opt_self();
      v26 = [v25 stringWithValueString:v23 unitString:v24];

      v27 = [v26 spokenString];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime;
      swift_beginAccess();
      v32 = [a1 stringWithDuration:6 durationFormat:*(v1 + v31)];
      if (v32)
      {
        v33 = v32;
        v34 = [v25 stringWithValueString:v32 unitString:0];

        v35 = [v34 spokenString];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v40 = [objc_opt_self() bundleForClass_];
        v41 = MEMORY[0x20F2E6C00](0xD00000000000002BLL, 0x800000020B463660);
        v42 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_20B4282E0;
        v45 = MEMORY[0x277D837D0];
        *(v44 + 56) = MEMORY[0x277D837D0];
        v46 = lazy protocol witness table accessor for type String and conformance String();
        *(v44 + 32) = v28;
        *(v44 + 40) = v30;
        *(v44 + 96) = v45;
        *(v44 + 104) = v46;
        *(v44 + 64) = v46;
        *(v44 + 72) = v36;
        *(v44 + 80) = v38;
        v47 = String.init(format:_:)();

        return v47;
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAlertPacer.distanceGoalString(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v6 = [a1 localizedCompactGoalDescriptionForGoalType:1 goalValue:*(v1 + v5) activityType:v4];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

Swift::String __swiftcall WorkoutAlertPacer.goalCompletionString()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B463690);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id WorkoutAlertPacer.spokenUserData(with:)(void *a1)
{
  v3 = type metadata accessor for PacerGoalCompletionModel();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = FIUIDistanceTypeForActivityType();
  result = [a1 unitManager];
  if (result)
  {
    v10 = result;
    v11 = [result userDistanceHKUnitForDistanceType_];

    v12 = [objc_opt_self() meterUnit];
    v13 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
    swift_beginAccess();
    v14 = [objc_opt_self() quantityWithUnit:v12 doubleValue:*(v1 + v13)];

    [v14 doubleValueForUnit_];
    v15 = [v11 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    PacerGoalCompletionModel.init(magnitude:unit:duration:)();
    v16 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v4 + 8))(v7, v3);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id WorkoutAlertPacer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertPacer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertPacer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_get_2Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_set_3Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

id WorkoutAlertLapChange.__allocating_init(activityType:lapNumber:lapDuration:lapDistance:)(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___WorkoutAlertLapChange_activityType] = a1;
  *&v9[OBJC_IVAR___WorkoutAlertLapChange_lapNumber] = a2;
  *&v9[OBJC_IVAR___WorkoutAlertLapChange_lapDuration] = a3;
  *&v9[OBJC_IVAR___WorkoutAlertLapChange_lapDistance] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v11 setType_];

  return v11;
}

uint64_t WorkoutAlertLapChange.lapNumber.getter()
{
  v1 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutAlertLapChange.lapNumber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double WorkoutAlertLapChange.lapDuration.getter()
{
  v1 = OBJC_IVAR___WorkoutAlertLapChange_lapDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutAlertLapChange.lapDuration.setter(double a1)
{
  v3 = OBJC_IVAR___WorkoutAlertLapChange_lapDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double WorkoutAlertLapChange.lapDistance.getter()
{
  v1 = OBJC_IVAR___WorkoutAlertLapChange_lapDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutAlertLapChange.lapDistance.setter(double a1)
{
  v3 = OBJC_IVAR___WorkoutAlertLapChange_lapDistance;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id WorkoutAlertLapChange.init(activityType:lapNumber:lapDuration:lapDistance:)(void *a1, uint64_t a2, __n128 a3, double a4)
{
  *&v4[OBJC_IVAR___WorkoutAlertLapChange_activityType] = a1;
  *&v4[OBJC_IVAR___WorkoutAlertLapChange_lapNumber] = a2;
  *&v4[OBJC_IVAR___WorkoutAlertLapChange_lapDuration] = a3.n128_u64[0];
  *&v4[OBJC_IVAR___WorkoutAlertLapChange_lapDistance] = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for WorkoutAlertLapChange();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setType_];

  return v7;
}

id WorkoutAlertLapChange.spokenDescription(with:)(void *a1)
{
  v3 = WorkoutAlertLapChange.lapDescription()();
  v4 = FIUIDistanceTypeForActivityType();
  v5 = [objc_opt_self() meterUnit];
  v6 = OBJC_IVAR___WorkoutAlertLapChange_lapDistance;
  swift_beginAccess();
  v7 = [objc_opt_self() quantityWithUnit:v5 doubleValue:*(v1 + v6)];

  v8 = OBJC_IVAR___WorkoutAlertLapChange_lapDuration;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = MEMORY[0x20F2E8410](v4);
  v11 = MEMORY[0x277D837D0];
  if (v10 != 4)
  {
    result = [a1 unitManager];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v13 = result;
    [result paceWithDistance:v7 overDuration:v10 paceFormat:v4 distanceType:v9];
    v15 = v14;

    if (v15 <= 0.0)
    {

      v34 = 0;
      v36 = 0xE000000000000000;
LABEL_14:
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v37);

      MEMORY[0x20F2E6D80](92, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_20B423A20;
      *(v38 + 56) = v11;
      v39 = lazy protocol witness table accessor for type String and conformance String();
      *(v38 + 32) = v3;
      *(v38 + 96) = v11;
      *(v38 + 104) = v39;
      *(v38 + 64) = v39;
      *(v38 + 72) = 0x3D65737561705C1BLL;
      *(v38 + 80) = 0xE800000000000000;
      *(v38 + 136) = v11;
      *(v38 + 144) = v39;
      *(v38 + 112) = v34;
      *(v38 + 120) = v36;
      return String.init(format:_:)();
    }
  }

  v16 = MEMORY[0x20F2E8410](v4);
  if (v16 == 4)
  {
LABEL_7:
    v20 = [a1 localizedPaceAndUnitWithDistance:v7 overDuration:v16 paceFormat:v4 distanceType:3 unitStyle:2 decimalTrimmingMode:v9];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

LABEL_10:
      v25 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(36, v10, 0);
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_20B423A20;
      *(v28 + 56) = v11;
      v29 = lazy protocol witness table accessor for type String and conformance String();
      *(v28 + 64) = v29;
      *(v28 + 32) = v25;
      *(v28 + 40) = v27;
      if (one-time initialization token for pausePunctuation != -1)
      {
        v40 = v29;
        swift_once();
        v29 = v40;
      }

      v31 = static SpokenUtilities.pausePunctuation;
      v30 = *algn_27C72C6E8;
      *(v28 + 96) = v11;
      *(v28 + 104) = v29;
      *(v28 + 72) = v31;
      *(v28 + 80) = v30;
      *(v28 + 136) = v11;
      *(v28 + 144) = v29;
      *(v28 + 112) = v22;
      *(v28 + 120) = v24;

      v32 = String.init(format:_:)();
      v34 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v32, v33);
      v36 = v35;

      goto LABEL_14;
    }

LABEL_9:
    v22 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_10;
  }

  result = [a1 unitManager];
  if (result)
  {
    v17 = result;
    [result paceWithDistance:v7 overDuration:v16 paceFormat:v4 distanceType:v9];
    v19 = v18;

    if (v19 <= 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::String __swiftcall WorkoutAlertLapChange.lapDescription()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = MEMORY[0x20F2E6C00](0x4C5F4E454B4F5053, 0xEA00000000005041);
  v4 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20B423A90;
  v7 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v9;
  *(v6 + 32) = v8;
  v10 = String.init(format:_:)();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

id WorkoutAlertLapChange.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertLapChange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertLapChange();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertLapChange.localizedProgressDescription(with:formattingManager:)()
{
  v7 = MEMORY[0x277D84F90];
  v0 = MEMORY[0x20F2E6C00](0x6574656C706D6F43, 0xE900000000000064);
  v1 = objc_opt_self();
  v2 = [v1 stringWithValueString:v0 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_beginAccess();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v3);

  v4 = MEMORY[0x20F2E6C00](544235884, 0xE400000000000000);

  v5 = [v1 stringWithValueString:v4 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v7;
}

double keypath_get_2Tm_0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_set_3Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

unint64_t type metadata accessor for NLWorkoutAlertUnitAnnotatedString()
{
  result = lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString;
  if (!lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString);
  }

  return result;
}

double WorkoutAlertInterval.completedStep.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep;
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep);
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 16);
  v6 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 24);
  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = *(v2 + 40);
  return outlined copy of CompletedWorkoutStep?(v3, v4, v5, v6);
}

__n128 WorkoutAlertInterval.repetitionCounter.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter);
  *a1 = result;
  return result;
}

uint64_t WorkoutAlertInterval.internalType.getter()
{
  v1 = [v0 type];
  if (v1 == 16)
  {
    return 0;
  }

  if (v1 == 17)
  {
    return 1;
  }

  _StringGuts.grow(_:)(46);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
  [v0 type];
  type metadata accessor for NLWorkoutAlertType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertInterval.swift", 38, 2, 30, 0);
  __break(1u);
  return result;
}

id WorkoutAlertInterval.__allocating_init(type:completedStep:nextStep:repetition:maxRepetitions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = objc_allocWithZone(v5);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  LOBYTE(a2) = *(a2 + 40);
  v16 = &v10[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
  *v16 = v11;
  *(v16 + 1) = v12;
  *(v16 + 2) = v13;
  *(v16 + 3) = v14;
  *(v16 + 4) = v15;
  v16[40] = a2;
  *&v10[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = a3;
  v17 = &v10[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
  *v17 = a4;
  *(v17 + 1) = a5;
  outlined copy of CompletedWorkoutStep?(v11, v12, v13, v14);
  v24.receiver = v10;
  v24.super_class = v6;

  v18 = objc_msgSendSuper2(&v24, sel_init);
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
  {
    v19 = v18;
    outlined consume of CompletedWorkoutStep?(v11, v12, v13, v14);
    [v19 setType_];

    return v19;
  }

  else
  {
    v21 = v18;
    _StringGuts.grow(_:)(46);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertInterval.swift", 38, 2, 57, 0);
    __break(1u);
  }

  return result;
}

id WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = &v5[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
  *v13 = *a2;
  *(v13 + 1) = v8;
  *(v13 + 2) = v9;
  *(v13 + 3) = v10;
  *(v13 + 4) = v11;
  v13[40] = v12;
  *&v5[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = a3;
  v14 = &v5[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
  *v14 = a4;
  *(v14 + 1) = a5;
  outlined copy of CompletedWorkoutStep?(v7, v8, v9, v10);
  v19.receiver = v5;
  v19.super_class = type metadata accessor for WorkoutAlertInterval();

  v15 = objc_msgSendSuper2(&v19, sel_init);
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
  {
    v16 = v15;
    outlined consume of CompletedWorkoutStep?(v7, v8, v9, v10);
    [v16 setType_];

    return v16;
  }

  else
  {
    v18 = v15;
    _StringGuts.grow(_:)(46);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertInterval.swift", 38, 2, 57, 0);
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAlertInterval.spokenGoalString(formattingManager:)(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v27);

  v3 = v27;
  v4 = [v27 goalTypeIdentifier];

  if (v4 <= 1)
  {
    if (!v4)
    {
      v5 = MEMORY[0x20F2E82D0]();
      if (v5)
      {
        v6 = v5;
        v28._object = 0xE000000000000000;
        v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v7.value._object = 0xEB00000000656C62;
        v8._object = 0x800000020B460130;
        v8._countAndFlagsBits = 0xD000000000000011;
        v9._countAndFlagsBits = 0;
        v9._object = 0xE000000000000000;
        v28._countAndFlagsBits = 0;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v28)._countAndFlagsBits;
LABEL_17:
        v11 = countAndFlagsBits;

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      goto LABEL_23;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v27);

    v23 = v27;
    [v27 doubleValue];
    v25 = v24;

    v14 = [a1 localizedStringWithEnergyInCalories:1 energyType:2 unitStyle:v25];
    if (!v14)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_16:
    v6 = v14;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v27);

  v4 = v27;
  [v27 doubleValue];
  v13 = v12;

  v14 = [a1 stringWithDuration:6 durationFormat:v13];
  if (v14)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_10:
  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v27);

    v15 = v27;
    v16 = [v27 value];

    if (!v16)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000035, 0x800000020B4600F0, "WorkoutCore/WorkoutAlertInterval.swift", 38, 2, 85, 0);
      goto LABEL_25;
    }

    v17 = [v16 _unit];
    v18 = MEMORY[0x20F2E8310]();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v27);

    v19 = v27;
    [v27 doubleValue];
    v21 = v20;

    v22 = [a1 localizedStringWithDistanceInMeters:v18 distanceUnit:3 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:sel_defaultPrecisionForDistanceUnit_ roundingMode:v18) decimalTrimmingMode:{6, 1, v21}];
    if (v22)
    {
      v6 = v22;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_18:
      return v11;
    }

    goto LABEL_22;
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000064, 0x800000020B4638B0, "WorkoutCore/WorkoutAlertInterval.swift", 38, 2, 100, 0);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t WorkoutAlertInterval.writtenDescription(step:prefix:formattingManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20B425990;
  v11 = MEMORY[0x20F2E6C00](a2, a3);
  v12 = objc_opt_self();
  v13 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  v14 = [v12 stringWithValueString:v11 unitString:0];

  *(v10 + 32) = v14;
  v63 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v61);

  if (!v62)
  {
    goto LABEL_6;
  }

  v15 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v15 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_6:
    swift_beginAccess();
    LOBYTE(v60) = *(a1 + 16);
    StepType.displayString.getter();
  }

  v16 = MEMORY[0x20F2E6C00]();

  v17 = [v12 stringWithValueString:v16 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (*(v5 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter(&v60);

      v18 = v60;
      swift_beginAccess();
      v19 = FIUIDistanceTypeForActivityType();
      v20 = NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)(a4, v19, 0);
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v59 = a4;
    v23 = MEMORY[0x20F2E6C00](v20, v22);

    v5 = [v12 *(v13 + 3400)];

    MEMORY[0x20F2E6F30]();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v24 = v63;
    v25 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
    swift_beginAccess();
    v26 = *(a1 + v25);
    v58 = v12;
    v27 = v26 >> 62 ? __CocoaSet.count.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v27)
    {
      break;
    }

    v13 = 0;
    v12 = (v26 & 0xC000000000000001);
    a4 = (v26 & 0xFFFFFFFFFFFFFF8);
    while (v12)
    {
      v5 = MEMORY[0x20F2E7A20](v13, v26);
      v28 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_20:
      swift_beginAccess();
      if (*(v5 + 40))
      {

        v36 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v37 = *(a1 + v36);
        swift_beginAccess();
        v38 = *(v5 + 24);
        swift_beginAccess();
        v39 = *(v5 + 32);
        v40 = v37;
        if (v38 == v39)
        {
          TargetZone.alertSpokenStringForSingleThreshold(formattingManager:activityType:)(v59, v40);
        }

        else
        {
          TargetZone.alertSpokenStringForMultiThreshold(formattingManager:activityType:)(v59, v40);
        }

        v53 = v41;
        v54 = v42;

        v55 = MEMORY[0x20F2E6C00](v53, v54);

        v56 = [v58 stringWithValueString:v55 unitString:0];

        MEMORY[0x20F2E6F30]();
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v63;
      }

      ++v13;
      if (v28 == v27)
      {
        goto LABEL_26;
      }
    }

    if (v13 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v26 + 8 * v13 + 32);

      v28 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_26:

  v5 = *(a1 + v25);
  if (v5 >> 62)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29)
  {
    v30 = 0;
    v12 = (v5 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F2E7A20](v30, v5);
        a4 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v30 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v13 = *(v5 + 8 * v30 + 32);

        a4 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      swift_beginAccess();
      v31 = *(v13 + 40);

      if (v31 == 1)
      {
        break;
      }

      ++v30;
      if (a4 == v29)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
LABEL_39:

    v32 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
    swift_beginAccess();
    v33 = *(a1 + v32);
    if (v33)
    {
      v34 = *(a1 + v32);
      v35 = v59;
    }

    else
    {
      v35 = v59;
      if (one-time initialization token for defaultZone != -1)
      {
        swift_once();
      }

      v34 = static HeartRateTargetZone.defaultZone;
    }

    if (*(v34 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v34 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
    {
      v52 = v33;
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v44 = v33;

      if (v43)
      {
      }

      else
      {
        v45 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v46 = *(a1 + v45);
        v47 = specialized HeartRateTargetZone.spokenString(formattingManager:activityType:)(v35);
        v49 = v48;

        v50 = MEMORY[0x20F2E6C00](v47, v49);

        v51 = [v58 stringWithValueString:v50 unitString:0];

        MEMORY[0x20F2E6F30]();
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v63;
      }
    }
  }

  return v24;
}

uint64_t WorkoutAlertInterval.upcomingSpokenDescription(formattingManager:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v117);

  v5 = v118;
  if (v118)
  {
    v6 = v117;
    v7 = HIBYTE(v118) & 0xF;
    if ((v118 & 0x2000000000000000) == 0)
    {
      v7 = v117 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  LOBYTE(v117) = *(v2 + 16);
  v6 = StepType.displayString.getter();
  v5 = v8;
LABEL_8:
  v9 = WorkoutAlertInterval.spokenGoalString(formattingManager:)(a1);
  v11 = v10;
  v12 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v114 = v3;
  v116 = a1;
  v111 = v11;
  v113 = v6;
  v109 = v9;
  if (v13 >> 62)
  {
    goto LABEL_66;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x20F2E7A20](v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v14 = __CocoaSet.count.getter();
          goto LABEL_10;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_20;
        }
      }

      swift_beginAccess();
      if (*(v16 + 40))
      {

        v27 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v28 = *(v2 + v27);
        swift_beginAccess();
        v29 = *(v16 + 24);
        swift_beginAccess();
        v30 = *(v16 + 32);
        v31 = v28;
        if (v29 == v30)
        {
          TargetZone.alertSpokenStringForSingleThreshold(formattingManager:activityType:)(v116, v31);
        }

        else
        {
          TargetZone.alertSpokenStringForMultiThreshold(formattingManager:activityType:)(v116, v31);
        }

        v68 = v32;
        v69 = v33;

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v71 = [objc_opt_self() bundleForClass_];
        v72 = MEMORY[0x20F2E6C00](0xD000000000000036, 0x800000020B463920);
        v73 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v74 = [v71 localizedStringForKey:v72 value:0 table:v73];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_20B423A20;
        v76 = MEMORY[0x277D837D0];
        *(v75 + 56) = MEMORY[0x277D837D0];
        v77 = lazy protocol witness table accessor for type String and conformance String();
        *(v75 + 32) = v113;
        *(v75 + 40) = v5;
        *(v75 + 96) = v76;
        *(v75 + 104) = v77;
        *(v75 + 64) = v77;
        *(v75 + 72) = v109;
        *(v75 + 80) = v111;
        *(v75 + 136) = v76;
        *(v75 + 144) = v77;
        *(v75 + 112) = v68;
        *(v75 + 120) = v69;
        v23 = String.init(format:_:)();
        v58 = v78;

        goto LABEL_56;
      }

      ++v15;
    }

    while (v17 != v14);
  }

  v18 = *(v2 + v12);
  if (v18 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v19 = 0;
    v12 = v18 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v20 = MEMORY[0x20F2E7A20](v19, v18);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v20 = *(v18 + 8 * v19 + 32);

        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_33:
          __break(1u);
          return 0;
        }
      }

      swift_beginAccess();
      v22 = *(v20 + 40);

      if (v22 == 1)
      {
        goto LABEL_49;
      }

      ++v19;
    }

    while (v21 != v13);
  }

  v24 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (v25)
  {
    v26 = *(v2 + v24);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v26 = static HeartRateTargetZone.defaultZone;
  }

  if (v26[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v26[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
  {
    v46 = v25;

LABEL_49:
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35 = v25;

    if ((v34 & 1) == 0)
    {
      v36 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
      swift_beginAccess();
      v37 = *(v2 + v36);
      v38 = specialized HeartRateTargetZone.spokenString(formattingManager:activityType:)(v116);
      v40 = v39;

      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v41 = swift_getObjCClassFromMetadata();
      v42 = [objc_opt_self() bundleForClass_];
      v43 = MEMORY[0x20F2E6C00](0xD000000000000036, 0x800000020B463920);
      v44 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v45 = [v42 localizedStringForKey:v43 value:0 table:v44];
      goto LABEL_52;
    }
  }

  v47 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (!v47)
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v59 = swift_getObjCClassFromMetadata();
    v60 = [objc_opt_self() bundleForClass_];
    v61 = MEMORY[0x20F2E6C00](0xD00000000000002BLL, 0x800000020B463A10);
    v62 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v63 = [v60 localizedStringForKey:v61 value:0 table:v62];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_20B4282E0;
    v65 = MEMORY[0x277D837D0];
    *(v64 + 56) = MEMORY[0x277D837D0];
    v66 = lazy protocol witness table accessor for type String and conformance String();
    *(v64 + 32) = v113;
    *(v64 + 40) = v5;
    *(v64 + 96) = v65;
    *(v64 + 104) = v66;
    *(v64 + 64) = v66;
    *(v64 + 72) = v9;
    *(v64 + 80) = v111;
    v23 = String.init(format:_:)();
    v58 = v67;

    goto LABEL_56;
  }

  v26 = v47;
  v48 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v49 = *(v2 + v48);
  PowerZonesAlertTargetZone.spokenString(formattingManager:activityType:)(v116, v49);
  v38 = v50;
  v40 = v51;

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  v52 = swift_getObjCClassFromMetadata();
  v42 = [objc_opt_self() bundleForClass_];
  v43 = MEMORY[0x20F2E6C00](0xD000000000000036, 0x800000020B463920);
  v44 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v45 = [v42 localizedStringForKey:v43 value:0 table:v44];
LABEL_52:
  v53 = v45;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20B423A20;
  v55 = MEMORY[0x277D837D0];
  *(v54 + 56) = MEMORY[0x277D837D0];
  v56 = lazy protocol witness table accessor for type String and conformance String();
  *(v54 + 32) = v113;
  *(v54 + 40) = v5;
  *(v54 + 96) = v55;
  *(v54 + 104) = v56;
  *(v54 + 64) = v56;
  *(v54 + 72) = v109;
  *(v54 + 80) = v111;
  *(v54 + 136) = v55;
  *(v54 + 144) = v56;
  *(v54 + 112) = v38;
  *(v54 + 120) = v40;
  v23 = String.init(format:_:)();
  v58 = v57;

LABEL_56:
  v79 = v114 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep;
  v80 = *(v114 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 16);
  if (v80)
  {
    v81 = *(v79 + 8);
    v82 = *(v79 + 24);
    v83 = *(v79 + 32);
    v84 = *(v79 + 40);
    v115 = *v79;
    v117 = *v79;
    v118 = v81;
    v119 = v80;
    v120 = v82;
    v121 = v83;
    v122 = v84 & 1;

    v85 = CompletedWorkoutStep.spokenString(formattingManager:)(v116);
    if (!v86)
    {

      outlined consume of CompletedWorkoutStep?(v115, v81, v80, v82);
      return v23;
    }

    v87 = v86;
    v107 = v85;
    swift_beginAccess();
    v88 = *(v80 + 16);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v110 = v82;
    v89 = swift_getObjCClassFromMetadata();
    v90 = [objc_opt_self() bundleForClass_];
    v91 = "H_ALERT_SUMMARY_SPOKEN";
    if (v88 == 1)
    {
      v91 = "OMBINED_STEPS_SUMMARIES_SPOKEN";
    }

    v92 = MEMORY[0x20F2E6C00](0xD000000000000030, v91 | 0x8000000000000000);
    v93 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v112 = v81;
    v94 = [v90 localizedStringForKey:v92 value:0 table:v93];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_20B423A90;
    *(v95 + 56) = MEMORY[0x277D837D0];
    v96 = lazy protocol witness table accessor for type String and conformance String();
    *(v95 + 64) = v96;
    *(v95 + 32) = v107;
    *(v95 + 40) = v87;
    v97 = String.init(format:_:)();
    v106 = v98;
    v108 = v97;

    v99 = [objc_opt_self() bundleForClass_];
    v100 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B4639A0);
    v101 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v102 = [v99 localizedStringForKey:v100 value:0 table:v101];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_20B4282E0;
    v104 = MEMORY[0x277D837D0];
    *(v103 + 56) = MEMORY[0x277D837D0];
    *(v103 + 64) = v96;
    *(v103 + 32) = v108;
    *(v103 + 40) = v106;
    *(v103 + 96) = v104;
    *(v103 + 104) = v96;
    *(v103 + 72) = v23;
    *(v103 + 80) = v58;
    v23 = String.init(format:_:)();
    outlined consume of CompletedWorkoutStep?(v115, v112, v80, v110);
  }

  return v23;
}

id WorkoutAlertInterval.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertInterval.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertInterval();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertInterval.endSpokenDescription()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B463A40);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t specialized WorkoutAlertInterval.localizedProgressDescription(with:formattingManager:)(void *a1)
{
  v3 = [v1 type];
  if (v3 == 16)
  {
    if (*&v1[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep])
    {

      v5 = WorkoutAlertInterval.writtenDescription(step:prefix:formattingManager:)(v4, 0x7478654E207055, 0xE700000000000000, a1);

      return v5;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if (v3 == 17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20B425990;
    v8 = specialized WorkoutAlertInterval.endSpokenDescription()();
    v9 = MEMORY[0x20F2E6C00](v8);

    v10 = [objc_opt_self() stringWithValueString:v9 unitString:0];

    result = v7;
    *(v7 + 32) = v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    [v1 type];
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertInterval.swift", 38, 2, 30, 0);
    __break(1u);
  }

  return result;
}

id WorkoutAlertTrackStatusChange.__allocating_init(trackStatusAlertType:)()
{
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setType_];
  return v1;
}

void TrackStatusAlertType.init(rawValue:)(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrackStatusAlertType.init(rawValue:), v3);

  *a2 = v5 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrackStatusAlertType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrackStatusAlertType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance TrackStatusAlertType(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TrackStatusAlertType, *a1);

  *a2 = v3 != 0;
}

id WorkoutAlertTrackStatusChange.init(trackStatusAlertType:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WorkoutAlertTrackStatusChange();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [v2 setType_];
  return v2;
}

id WorkoutAlertTrackStatusChange.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertTrackStatusChange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertTrackStatusChange();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertTrackStatusChange.localizedAlertTitle.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B463B20);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

unint64_t lazy protocol witness table accessor for type TrackStatusAlertType and conformance TrackStatusAlertType()
{
  result = lazy protocol witness table cache variable for type TrackStatusAlertType and conformance TrackStatusAlertType;
  if (!lazy protocol witness table cache variable for type TrackStatusAlertType and conformance TrackStatusAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackStatusAlertType and conformance TrackStatusAlertType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackStatusAlertType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TrackStatusAlertType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id TrainerTimerEndEventAlert.__allocating_init(duration:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = objc_allocWithZone(v0);
  v9.super_class = v0;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  [v6 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v6 setEventDate_];

  return v6;
}

id TrainerTimerEndEventAlert.init(duration:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrainerTimerEndEventAlert();
  v10.receiver = v0;
  v10.super_class = v6;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  [v7 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v7 setEventDate_];

  return v7;
}

id TrainerTimerEndEventAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrainerTimerEndEventAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrainerTimerEndEventAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WorkoutAlertTimeSplit.init(workoutAlertType:elapsedTime:formattingManager:)(uint64_t a1, void *a2, double a3)
{
  *&v3[OBJC_IVAR____TtC11WorkoutCore21WorkoutAlertTimeSplit_elapsedTime] = a3;
  *&v3[OBJC_IVAR____TtC11WorkoutCore21WorkoutAlertTimeSplit_formattingManager] = a2;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for WorkoutAlertTimeSplit();
  v6 = a2;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  if (a1 == 5)
  {
    v8 = v7;
    [v8 setType_];

    return v8;
  }

  else
  {
    v10 = v7;
    _StringGuts.grow(_:)(47);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B463BD0);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertTimeSplit.swift", 39, 2, 26, 0);
    __break(1u);
  }

  return result;
}

id WorkoutAlertTimeSplit.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertTimeSplit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertTimeSplit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertTimeSplit.localizedProgressDescription(with:formattingManager:)(void *a1)
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B463C50);
  v6 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x20F2E6C00](v8);
  }

  v9 = [objc_opt_self() splitStringOnNewlines_];
  type metadata accessor for NLWorkoutAlertUnitAnnotatedString();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore21WorkoutAlertTimeSplit_elapsedTime) < 3600.0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = [a1 stringWithDuration:v11 durationFormat:?];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = MEMORY[0x20F2E6C00](v14, v16);

  v18 = [objc_opt_self() stringWithValueString:v17 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v10;
}

void key path setter for WorkoutAlertHeartRateZone.heartRateTargetZone : WorkoutAlertHeartRateZone(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id WorkoutAlertHeartRateZone.heartRateTargetZone.getter()
{
  v1 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

double WorkoutAlertHeartRateZone.heartRate.getter()
{
  v1 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
  swift_beginAccess();
  return *(v0 + v1);
}

id WorkoutAlertHeartRateZone.init(heartRateTargetZone:heartRate:)(void *a1, double a2)
{
  *&v2[OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone] = a1;
  *&v2[OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for WorkoutAlertHeartRateZone();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v15, sel_init);
  v7 = HeartRateTargetZone.applicableRange.getter();
  if ((v9 & 1) != 0 || a2 <= 2.22044605e-16)
  {
    v11 = v6;
    v12 = 0;
  }

  else
  {
    if (v8 <= a2)
    {
      v14 = v6;
      [v14 setType_];
      goto LABEL_8;
    }

    v10 = *&v7;
    v11 = v6;
    if (v10 <= a2)
    {
      v12 = 10;
    }

    else
    {
      v12 = 9;
    }
  }

  [v11 setType_];
LABEL_8:

  return v6;
}

id WorkoutAlertHeartRateZone.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertHeartRateZone.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertHeartRateZone();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertHeartRateZone.localizedProgressDescription(with:formattingManager:)()
{
  v1 = v0;
  v51 = MEMORY[0x277D84F90];
  v2 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  if ([v0 type] == 8)
  {
    v3 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
    swift_beginAccess();
    v4 = *&v1[v3];
    if (*(v4 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1 && (v5 = v4 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange, swift_beginAccess(), (*(v5 + 16) & 1) == 0) && *(v5 + 8) - *v5 <= 1.0)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v43 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B463E30);
      v44 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v10 = [v7 localizedStringForKey:v43 value:0 table:v44];

      if (!v10)
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x20F2E6C00](v45);
      }
    }

    else
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v6 = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v8 = MEMORY[0x20F2E6C00](0x4F5A5F45564F4241, 0xEA0000000000454ELL);
      v9 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

      if (!v10)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x20F2E6C00](v11);
      }
    }
  }

  else if ([v0 type] == 9)
  {
    v12 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
    swift_beginAccess();
    v13 = *&v1[v12];
    if (*(v13 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1 && (v14 = v13 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange, swift_beginAccess(), (*(v14 + 16) & 1) == 0) && *(v14 + 8) - *v14 <= 1.0)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v46 = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v47 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B463E10);
      v48 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v10 = [v7 localizedStringForKey:v47 value:0 table:v48];

      if (!v10)
      {
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x20F2E6C00](v49);
      }
    }

    else
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v15 = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v16 = MEMORY[0x20F2E6C00](0x4F5A5F574F4C4542, 0xEA0000000000454ELL);
      v17 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v10 = [v7 localizedStringForKey:v16 value:0 table:v17];

      if (!v10)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x20F2E6C00](v18);
      }
    }
  }

  else
  {
    if ([v0 type] != 10)
    {
LABEL_34:
      _StringGuts.grow(_:)(50);

      [v1 v2[476]];
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v50);

      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000030, 0x800000020B463DD0, "WorkoutCore/WorkoutAlertHeartRateZone.swift", 43, 2, 55, 0);
      __break(1u);
      return result;
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v19 = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v20 = MEMORY[0x20F2E6C00](0x5A5F4E4948544957, 0xEB00000000454E4FLL);
    v21 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v10 = [v7 localizedStringForKey:v20 value:0 table:v21];

    if (!v10)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = MEMORY[0x20F2E6C00](v22);
    }
  }

  v23 = [objc_opt_self() splitStringOnNewlines_];
  type metadata accessor for NLWorkoutAlertUnitAnnotatedString();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v24);
  v25 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
  swift_beginAccess();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  if (one-time initialization token for integralFormatter != -1)
  {
    swift_once();
  }

  v26 = [static NSNumberFormatter.integralFormatter stringFromNumber_];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v29;
  }

  else
  {
    v2 = 0xA300000000000000;
    v28 = 9666786;
  }

  v30 = MEMORY[0x20F2E82D0]();
  if (!v30)
  {
    __break(1u);
    goto LABEL_34;
  }

  v31 = v30;
  v52._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0x524F48535F4D5042;
  v32._object = 0xE900000000000054;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v52);

  lazy protocol witness table accessor for type String and conformance String();
  v35 = StringProtocol.localizedUppercase.getter();
  v37 = v36;

  v38 = MEMORY[0x20F2E6C00](v28, v2);

  v39 = MEMORY[0x20F2E6C00](v35, v37);

  v40 = [objc_opt_self() stringWithValueString:v38 shortDescriptionString:v39 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v51;
}

uint64_t specialized WorkoutAlertHeartRateZone.spokenDescription(with:)()
{
  v1 = [v0 type];
  if (v1 != 8)
  {
    if (v1 != 10)
    {
      goto LABEL_14;
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B463D10);
    v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20B423A90;
    v8 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
    swift_beginAccess();
    v9 = *&v0[v8];
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v9 <= -9.22337204e18)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v9 < 9.22337204e18)
    {
LABEL_21:
      v28 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v28;
      *(v7 + 32) = v9;
      v29 = String.init(format:_:)();

      return v29;
    }

    __break(1u);
  }

  v10 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (*(v11 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
  {
    v12 = v11 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
    swift_beginAccess();
    if ((*(v12 + 16) & 1) == 0 && *(v12 + 8) - *v12 <= 1.0)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v31 = swift_getObjCClassFromMetadata();
      v32 = [objc_opt_self() bundleForClass_];
      v33 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B463D50);
      v34 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20B423A90;
      v36 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v9 = *&v0[v36];
      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v9 <= -9.22337204e18)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v9 < 9.22337204e18)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_26:
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v37 = swift_getObjCClassFromMetadata();
      v38 = [objc_opt_self() bundleForClass_];
      v39 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B463DA0);
      v40 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20B423A90;
      v42 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v9 = *&v0[v42];
      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v9 <= -9.22337204e18)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v9 < 9.22337204e18)
      {
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  v13 = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B463D30);
  v16 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20B423A90;
  v18 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
  v1 = swift_beginAccess();
  v9 = *&v0[v18];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v9 < 9.22337204e18)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_14:
  if (v1 == 9)
  {
    v19 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
    swift_beginAccess();
    v20 = *&v0[v19];
    if (*(v20 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1 || (v21 = v20 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange, swift_beginAccess(), (*(v21 + 16) & 1) != 0) || *(v21 + 8) - *v21 > 1.0)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v22 = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      v24 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B463D80);
      v25 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20B423A90;
      v27 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v9 = *&v0[v27];
      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v9 > -9.22337204e18)
        {
          if (v9 < 9.22337204e18)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    goto LABEL_26;
  }

LABEL_41:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000019, 0x800000020B463CF0, "WorkoutCore/WorkoutAlertHeartRateZone.swift", 43, 2, 84, 0);
  __break(1u);
  return result;
}

id WorkoutAlertSegment.__allocating_init(workoutAlertType:segmentMarker:activityType:activityMoveMode:gpsAvailable:shouldHideTime:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___WOSegmentAlert_segmentMarker] = a2;
  *&v13[OBJC_IVAR___WOSegmentAlert_activityType] = a3;
  *&v13[OBJC_IVAR___WOSegmentAlert_activityMoveMode] = a4;
  v13[OBJC_IVAR___WOSegmentAlert_gpsAvailable] = a5;
  v13[OBJC_IVAR___WOSegmentAlert_shouldHideTime] = a6;
  v20.receiver = v13;
  v20.super_class = v6;
  v14 = a2;
  v15 = a3;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  if (a1 == 26 || a1 == 6)
  {
    v17 = v16;
    [v17 setType_];

    return v17;
  }

  else
  {
    v19 = v16;
    _StringGuts.grow(_:)(45);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B463E80);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertSegment.swift", 37, 2, 37, 0);
    __break(1u);
  }

  return result;
}

id WorkoutAlertSegment.init(workoutAlertType:segmentMarker:activityType:activityMoveMode:gpsAvailable:shouldHideTime:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char a6)
{
  *&v6[OBJC_IVAR___WOSegmentAlert_segmentMarker] = a2;
  *&v6[OBJC_IVAR___WOSegmentAlert_activityType] = a3;
  *&v6[OBJC_IVAR___WOSegmentAlert_activityMoveMode] = a4;
  v6[OBJC_IVAR___WOSegmentAlert_gpsAvailable] = a5;
  v6[OBJC_IVAR___WOSegmentAlert_shouldHideTime] = a6;
  v16.receiver = v6;
  v16.super_class = type metadata accessor for WorkoutAlertSegment();
  v10 = a2;
  v11 = a3;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  if (a1 == 26 || a1 == 6)
  {
    v13 = v12;
    [v13 setType_];

    return v13;
  }

  else
  {
    v15 = v12;
    _StringGuts.grow(_:)(45);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B463E80);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertSegment.swift", 37, 2, 37, 0);
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall WorkoutAlertSegment.segmentDescription()()
{
  v1 = NLSessionActivitySegmentMarker.segmentDescription(alertType:)([v0 type]);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id WorkoutAlertSegment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertSegment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertSegment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)(uint64_t a1, double a2, double a3)
{
  if ((a1 - 23) > 1)
  {
    _StringGuts.grow(_:)(50);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD00000000000001DLL, 0x800000020B464010);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertRace.swift", 34, 2, 31, 0);
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC11WorkoutCore24WorkoutAlertRaceComplete_didWinRace) = a1 == 23;
    *(v3 + OBJC_IVAR____TtC11WorkoutCore24WorkoutAlertRaceComplete_raceTime) = a2;
    *(v3 + OBJC_IVAR____TtC11WorkoutCore24WorkoutAlertRaceComplete_secondsAhead) = a3;

    return WorkoutAlertRace.init(type:)(a1);
  }

  return result;
}

id WorkoutAlertRace.init(type:)(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for WorkoutAlertRace();
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if ((a1 - 18) > 6)
  {
    v6 = v3;
    _StringGuts.grow(_:)(42);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B464030);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertRace.swift", 34, 2, 75, 0);
    __break(1u);
  }

  else
  {
    v4 = v3;
    [v3 setType_];
    return v4;
  }

  return result;
}

Swift::String __swiftcall WorkoutAlertRaceComplete.resultTitle()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B464050);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t WorkoutAlertRace.internalType.getter()
{
  v1 = [v0 type];
  if ((v1 - 18) < 7)
  {
    return 0x4030200010605uLL >> (8 * (v1 - 18));
  }

  _StringGuts.grow(_:)(42);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
  [v0 type];
  type metadata accessor for NLWorkoutAlertType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B464030);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/WorkoutAlertRace.swift", 34, 2, 64, 0);
  __break(1u);
  return result;
}

Swift::String __swiftcall WorkoutAlertRace.alertTitle()()
{
  v0 = WorkoutAlertRace.internalType.getter();
  v1 = 0xD000000000000013;
  v2 = "RACE_ALERT_OFF_ROUTE";
  v3 = "RACE_ALERT_BEHIND_GHOST";
  v4 = 0xD000000000000016;
  if (v0 != 5)
  {
    v4 = 0xD000000000000017;
    v3 = "lete";
  }

  v5 = "RACE_ALERT_ROUTE_COMPLETE_LOST";
  v6 = 0xD00000000000001DLL;
  if (v0 != 3)
  {
    v6 = 0xD00000000000001ELL;
    v5 = "RACE_ALERT_AHEAD_GHOST";
  }

  if (v0 <= 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "RACE_ALERT_EXPIRED";
  v8 = 0xD000000000000014;
  if (v0 != 1)
  {
    v8 = 0xD000000000000012;
    v7 = "RACE_ALERT_ROUTE_COMPLETE_WON";
  }

  if (v0)
  {
    v1 = v8;
    v2 = v7;
  }

  if (v0 <= 2u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  if (v0 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v3;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = MEMORY[0x20F2E6C00](v9, v10 | 0x8000000000000000);

  v14 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

Swift::String __swiftcall WorkoutAlertRace.alertTitleLocalizationKey()()
{
  v0 = WorkoutAlertRace.internalType.getter();
  v1 = 0xD000000000000013;
  v2 = "RACE_ALERT_OFF_ROUTE";
  v3 = v0;
  v4 = "RACE_ALERT_BEHIND_GHOST";
  v5 = 0xD000000000000016;
  if (v0 != 5)
  {
    v5 = 0xD000000000000017;
    v4 = "lete";
  }

  v6 = "RACE_ALERT_ROUTE_COMPLETE_LOST";
  v7 = 0xD00000000000001DLL;
  if (v0 != 3)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "RACE_ALERT_AHEAD_GHOST";
  }

  if (v0 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "RACE_ALERT_EXPIRED";
  v9 = 0xD000000000000014;
  if (v0 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = "RACE_ALERT_ROUTE_COMPLETE_WON";
  }

  if (v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v12 = (v11 | 0x8000000000000000);
  result._object = v12;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall WorkoutAlertRace.alertSubtitle()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id WorkoutAlertRace.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertRaceComplete.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized WorkoutAlertRace.spokenDescription(with:)()
{
  v0 = WorkoutAlertRace.internalType.getter();
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = "RACE_ALERT_OFF_ROUTE_SPOKEN";
  v4 = "RACE_ALERT_BEHIND_GHOST_SPOKEN";
  if (v0 == 5)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = "e16WorkoutAlertRace";
    v5 = 0xD00000000000001ELL;
  }

  v6 = "_COMPLETE_LOST_SPOKEN";
  v7 = 0xD000000000000024;
  if (v0 != 3)
  {
    v6 = "RACE_ALERT_AHEAD_GHOST_SPOKEN";
    v7 = 0xD000000000000025;
  }

  if (v0 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = "RACE_ALERT_EXPIRED_SPOKEN";
  v9 = 0xD00000000000001BLL;
  if (v0 != 1)
  {
    v8 = "_COMPLETE_WON_SPOKEN";
    v9 = 0xD000000000000019;
  }

  if (v0)
  {
    v3 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xD00000000000001ALL;
  }

  if (v0 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v3 = v4;
    v11 = v5;
  }

  v12 = MEMORY[0x20F2E6C00](v11, v3 | 0x8000000000000000);
  v13 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v14 = [v2 localizedStringForKey:v12 value:0 table:v13];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v15;
}

uint64_t specialized WorkoutAlertRace.spokenUserData(with:)()
{
  v0 = type metadata accessor for BasicVoiceFeedbackAlerts();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = WorkoutAlertRace.internalType.getter();
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        static BasicVoiceFeedbackAlerts.raceOffRoute.getter();
      }

      else
      {
        static BasicVoiceFeedbackAlerts.raceExpired.getter();
      }
    }

    else
    {
      static BasicVoiceFeedbackAlerts.raceOnRoute.getter();
    }
  }

  else if (v5 > 4)
  {
    if (v5 == 5)
    {
      static BasicVoiceFeedbackAlerts.raceAheadOfGhost.getter();
    }

    else
    {
      static BasicVoiceFeedbackAlerts.raceBehindGhost.getter();
    }
  }

  else if (v5 == 3)
  {
    static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon.getter();
  }

  else
  {
    static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost.getter();
  }

  v6 = specialized VoiceFeedbackAlerting.toDictionary()();
  (*(v1 + 8))(v4, v0);
  return v6;
}

id TaskFinalizer.().init()()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v12 = OBJC_IVAR___WOCoreTaskFinalizer_queue;
  v11 = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___WOCoreTaskFinalizer_tasks] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___WOCoreTaskFinalizer_finalizedIdentifiers] = MEMORY[0x277D84FA0];
  v9 = type metadata accessor for TaskFinalizer();
  v14.receiver = v0;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_init);
}

double static TaskFinalizer.appendTask(identifier:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for shared != -1)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    v8 = a3;
    swift_once();
    a1 = v5;
    a2 = v6;
    a3 = v8;
    a4 = v7;
  }

  return TaskFinalizer.appendTask(identifier:task:)(a1, a2, a3, a4);
}

double TaskFinalizer.appendTask(identifier:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + OBJC_IVAR___WOCoreTaskFinalizer_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = partial apply for closure #1 in TaskFinalizer.appendTask(identifier:task:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v16, v12, v19);
  _Block_release(v19);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);

  return result;
}

void closure #1 in TaskFinalizer.appendTask(identifier:task:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    TaskFinalizer._queue_appendTask(identifier:task:)(a2, a3, a4, a5);
  }
}

uint64_t TaskFinalizer._queue_appendTask(identifier:task:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a3;
  v55 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___WOCoreTaskFinalizer_tasks;
  swift_beginAccess();
  v17 = *(v4 + v16);
  v18 = MEMORY[0x277D84F90];
  if (*(v17 + 16))
  {

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v20)
    {
      v18 = *(*(v17 + 56) + 8 * v19);
    }
  }

  v21 = OBJC_IVAR___WOCoreTaskFinalizer_finalizedIdentifiers;
  swift_beginAccess();
  v22 = *(v5 + v21);

  LOBYTE(v21) = specialized Set.contains(_:)(a1, a2, v22);

  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v18[2])
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.core);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      _os_log_impl(&dword_20AEA4000, v24, v25, "Finalizer: Identifier %s is currently being finalized, enqueueing new task.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F2E9420](v27, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

LABEL_12:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.core);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      _os_log_impl(&dword_20AEA4000, v29, v30, "Finalizer: Enqueueing new task for identifier %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v54;
    *(v33 + 24) = v55;
    v34 = v18[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v18;
    if (!isUniquelyReferenced_nonNull_native || v34 >= v18[3] >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34 + 1, 1, v18);
      v58 = v18;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, _sIeg_ytIegr_TRTA_4, v33);

    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v5 + v16);
    *(v5 + v16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a1, a2, v36);

    *(v5 + v16) = v57;
    return swift_endAccess();
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static WOLog.core);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    _os_log_impl(&dword_20AEA4000, v39, v40, "Finalizer: Identifier %s was already finalized, just running task", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x20F2E9420](v42, -1, -1);
    MEMORY[0x20F2E9420](v41, -1, -1);
  }

  v43 = MEMORY[0x277D84F90];
  type metadata accessor for OS_dispatch_queue();
  v44 = static OS_dispatch_queue.main.getter();
  v45 = swift_allocObject();
  v46 = v55;
  *(v45 + 16) = v54;
  *(v45 + 24) = v46;
  aBlock[4] = partial apply for closure #1 in TaskFinalizer._queue_appendTask(identifier:task:);
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_18_2;
  v47 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = v43;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v48 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v15, v11, v47);
  _Block_release(v47);

  (*(v52 + 8))(v11, v48);
  return (*(v50 + 8))(v15, v51);
}

void static TaskFinalizer.replaceTasks(identifier:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static TaskFinalizer.shared;
  v9 = *(static TaskFinalizer.shared + OBJC_IVAR___WOCoreTaskFinalizer_queue);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in TaskFinalizer.replaceTasks(identifier:with:);
  *(v11 + 24) = v10;
  v15[4] = _sIg_Ieg_TRTA_4;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed () -> ();
  v15[3] = &block_descriptor_51;
  v12 = _Block_copy(v15);
  v13 = v8;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

double @objc static TaskFinalizer.appendTask(identifier:task:)(int a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  a7(v10, v12, a6, v13);

  return result;
}

void TaskFinalizer.replaceTasks(identifier:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___WOCoreTaskFinalizer_queue];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in TaskFinalizer.replaceTasks(identifier:with:)partial apply;
  *(v11 + 24) = v10;
  v15[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed () -> ();
  v15[3] = &block_descriptor_59;
  v12 = _Block_copy(v15);
  v13 = v4;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t closure #1 in TaskFinalizer.replaceTasks(identifier:with:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.core);
  v11 = a1;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v27 = a5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 134218242;
    v16 = OBJC_IVAR___WOCoreTaskFinalizer_tasks;
    swift_beginAccess();
    v17 = *&v11[v16];
    v18 = *(v17 + 16);

    if (v18 && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    *(v14 + 4) = v22;

    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v29);
    _os_log_impl(&dword_20AEA4000, v12, v13, "Finalizer: Replacing %ld tasks for %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    a5 = v27;
  }

  else
  {
  }

  v23 = TaskFinalizer.tasks.modify(v29);
  v25 = specialized Dictionary.subscript.modify(v28, a2, a3);
  if (*v24)
  {
    *v24 = MEMORY[0x277D84F90];
  }

  (v25)(v28, 0);
  (v23)(v29, 0);
  return TaskFinalizer._queue_appendTask(identifier:task:)(a2, a3, a4, a5);
}