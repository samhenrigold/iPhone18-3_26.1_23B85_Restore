unint64_t ClassificationSampling.pickToken(_:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 56))(v3, v4);
  v6 = *(v1 + 24);
  v7 = *(v6 + 16);
  p_base_meths = &DataStreamStateManager.base_meths;
  if (v7)
  {
    v35 = v5;
    v9 = one-time initialization token for device;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = 0;
    v11 = v35;
    v2 = v35 + 32;
    v12 = (v6 + 40);
    while (1)
    {
      if (v10 >= *(v6 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v13 = *(v12 - 1);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v13 >= *(v11 + 16))
      {
        goto LABEL_25;
      }

      v14 = *v12;
      _H9 = *(v2 + 2 * v13);
      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Log.device);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134218240;
        *(v19 + 4) = v13;
        *(v19 + 12) = 2048;
        __asm { FCVT            D0, H9 }

        *(v19 + 14) = _D0;
        _os_log_impl(&dword_220940000, v17, v18, "Classification sampling - Logit probability for token %ld is %f", v19, 0x16u);
        v25 = v19;
        v11 = v35;
        MEMORY[0x223D90A10](v25, -1, -1);
      }

      __asm { FCVT            S9, H9 }

      if (v14 <= _S9)
      {
        break;
      }

      ++v10;
      v12 += 4;
      if (v7 == v10)
      {

        v2 = v1;
        p_base_meths = (&DataStreamStateManager + 32);
        goto LABEL_14;
      }
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v13;
      _os_log_impl(&dword_220940000, v31, v32, "Classification sampling - Picked class token %ld over class threshold", v33, 0xCu);
      MEMORY[0x223D90A10](v33, -1, -1);
    }
  }

  else
  {

LABEL_14:
    if (p_base_meths[239] != -1)
    {
LABEL_26:
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.device);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = *(v2 + 16);

      _os_log_impl(&dword_220940000, v28, v29, "Classification sampling - Picked default token %ld", v30, 0xCu);
      MEMORY[0x223D90A10](v30, -1, -1);
    }

    else
    {
    }

    return *(v2 + 16);
  }

  return v13;
}

unint64_t specialized ClassificationSampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:)(void *a1)
{
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.device);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_220940000, v3, v4, "Speculative sampling is not implemented for classification sampling.  Resorting to normal classification sampling.", v5, 2u);
    MEMORY[0x223D90A10](v5, -1, -1);
  }

  return ClassificationSampling.pickToken(_:)(a1);
}

uint64_t GreedySampling.__allocating_init(randomSeed:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
  }

  v6 = &type metadata for SeedableRandomNumberGenerator;
  v7 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
  *&v5 = v2;
  v3 = swift_allocObject();
  outlined init with take of RandomNumberGenerator(&v5, v3 + 16);
  return v3;
}

void specialized Sequence.compactMap<A>(_:)(void (*a1)(void *__return_ptr, void, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v20 = a1;
  v19 = v4;
  while (v9)
  {
LABEL_12:
    v24 = *(*(v4 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
    (a1)(&v21, &v24);
    if (v3)
    {

LABEL_18:

      return;
    }

    if ((v23 & 1) == 0)
    {
      v15 = v21;
      v16 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v13 = &v12[16 * v18];
      *(v13 + 4) = v15;
      *(v13 + 10) = v16;
      v4 = v19;
      a1 = v20;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_18;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(void *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5;
    v15[0] = *(v5 - 1);
    v15[1] = v8;

    v16(v14, v15);
    if (v3)
    {
      break;
    }

    v9 = v14[0];
    if (v14[0])
    {
      v10 = v14[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v9;
      *(v7 + 5) = v10;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t GreedySampling.__allocating_init(generator:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized GreedySampling.__allocating_init(generator:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t GreedySampling.pickToken(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t closure #1 in GreedySampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:)@<X0>(Swift::Int *a1@<X0>, void *a2@<X1>, Swift::Int *a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for ContiguousBitSet();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v29 - v15;
  v17 = *a1;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 8))(v18, v19);
  outlined init with copy of LogitIndexSet(v16, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = v30;
    v23 = v31;
    (*(v30 + 32))(v8, v13, v31);
    v25 = ContiguousBitSet.contains(_:)(v17);
    (*(v24 + 8))(v8, v23);
    result = outlined destroy of LogitIndexSet(v16);
    if (!v25)
    {
      v17 = 0;
      v22 = 1;
      v21 = 0;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  result = outlined destroy of LogitIndexSet(v16);
  v21 = 0;
  if (v17 >= *v13 && v17 < v13[1])
  {
LABEL_6:
    v26 = a2[3];
    v27 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    result = (*(v27 + 24))(v17, v26, v27);
    v22 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  v22 = 1;
LABEL_8:
  v28 = v32;
  *v32 = v17;
  *(v28 + 2) = v21;
  *(v28 + 12) = v22;
  return result;
}

uint64_t GreedySampling.makePresampler()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for ArgmaxPresampler(0);
  a1[4] = &protocol witness table for ArgmaxPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v3 = type metadata accessor for LogitIndexSet(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(boxed_opaque_existential_1, 1, 1, v3);
}

uint64_t GreedySampling.pickToken(targetLogits:draftLogits:draftTokens:)(void *a1, short float *a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for speculativeDecode != -1)
  {
LABEL_33:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.speculativeDecode);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_220940000, v9, v10, "Acceptance threshold is unused for speculative sampling.", v11, 2u);
    MEMORY[0x223D90A10](v11, -1, -1);
  }

  if (!*(a3 + 16))
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "No draft logits supplied for speculative sampling; performing greedy sampling instead.  This is a logic error, not a user error.";
      goto LABEL_10;
    }

LABEL_11:

LABEL_12:
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    return (*(v19 + 32))(v18, v19);
  }

  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v12);
  if (LogitCollection.isEmpty.getter(v12, v13))
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "No draft logits, falling back to normal sampling";
LABEL_10:
      _os_log_impl(&dword_220940000, v14, v15, v17, v16, 2u);
      MEMORY[0x223D90A10](v16, -1, -1);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  if (LogitCollection.isEmpty.getter(v21, v22))
  {
    return 0;
  }

  v23 = *(a2 + 3);
  v24 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v23);
  a2 = (*(v24 + 56))(v23, v24);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  result = (*(v26 + 56))(v25, v26);
  v27 = result;
  v28 = 0;
  v29 = 0;
  v30 = 1 << *(a3 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a3 + 56);
  LOWORD(v33) = 0;
  if (!v32)
  {
    while (1)
    {
LABEL_19:
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v34 >= ((v30 + 63) >> 6))
      {
        break;
      }

      v32 = *(a3 + 56 + 8 * v34);
      ++v29;
      if (v32)
      {
        goto LABEL_22;
      }
    }

    v36 = v28;

    if (v36 >= *(v27 + 16))
    {
      goto LABEL_36;
    }

    v37 = *(v27 + 2 * v36 + 32);

    if (v33 < v37)
    {
      return v36;
    }

    swift_beginAccess();
    __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, *(v4 + 40));
    lazy protocol witness table accessor for type Float16 and conformance Float16();
    lazy protocol witness table accessor for type UInt16 and conformance UInt16();
    static BinaryFloatingPoint<>.random<A>(in:using:)();
    swift_endAccess();
    if (v38 < (v37 / v33))
    {
      return v36;
    }

    goto LABEL_12;
  }

  while (1)
  {
    v34 = v29;
LABEL_22:
    v35 = *(*(a3 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v32)))));
    if ((v35 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v35 >= *(a2 + 2))
    {
      goto LABEL_35;
    }

    v32 &= v32 - 1;
    if (v33 < a2[v35 + 16])
    {
      v33 = a2[v35 + 16];
      v28 = v35;
    }

    v29 = v34;
    if (!v32)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t GreedySampling.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenSampling.pickToken(_:) in conformance GreedySampling(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t protocol witness for TokenSampling.makePresampler() in conformance GreedySampling@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for ArgmaxPresampler(0);
  a1[4] = &protocol witness table for ArgmaxPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v3 = type metadata accessor for LogitIndexSet(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(boxed_opaque_existential_1, 1, 1, v3);
}

uint64_t specialized GreedySampling.__allocating_init(generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  outlined init with take of RandomNumberGenerator(&v9, v7 + 16);
  return v7;
}

uint64_t specialized GreedySampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:)(void *a1, uint64_t a2, float a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 32))(v6, v7);
  v9 = v8;
  if ((v10 & 1) != 0 || !*(a2 + 16))
  {
    return v9;
  }

  if (specialized Set.contains(_:)(v8, a2))
  {
    return v9;
  }

  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 24))(v9, v12, v13);
  v16 = v15;
  MEMORY[0x28223BE20](v14, v17);
  v29[2] = a1;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in GreedySampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:), v29, a2);
  v19 = *(v18 + 16);
  if (!v19)
  {

    return v9;
  }

  v20 = v16 - a3;
  v21 = *(v18 + 32);
  v22 = *(v18 + 40);
  v23 = v19 - 1;
  if (v23)
  {
    v24 = (v18 + 56);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      v24 += 4;
      v27 = v26;
      if (v22 < v26)
      {
        v21 = v25;
        v22 = v27;
      }

      --v23;
    }

    while (v23);
  }

  v28 = v21;

  result = v28;
  if (v20 >= v22)
  {
    return v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Float16 and conformance Float16()
{
  result = lazy protocol witness table cache variable for type Float16 and conformance Float16;
  if (!lazy protocol witness table cache variable for type Float16 and conformance Float16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float16 and conformance Float16);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (a5 >> 1 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v9 = result;
    if (a4 > v6)
    {
      v6 = a4;
    }

    v10 = v6 - a4;
    v11 = (a3 + 16 * a4 + 8);
    v8 = MEMORY[0x277D84F90];
    while (v10)
    {
      v12 = *v11;
      v21[0] = *(v11 - 1);
      v21[1] = v12;

      v9(v19, v21);
      if (v5)
      {

        return v8;
      }

      if (v20)
      {
        v16 = v19[0];
        v17 = v19[1];
        v18 = v20;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 16) = v14 + 1;
        v15 = (v8 + 48 * v14);
        v15[3] = v17;
        v15[4] = v18;
        v15[2] = v16;
      }

      else
      {
        result = outlined destroy of AFMDecodeFunction?(v19);
      }

      --v10;
      v11 += 2;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of AFMDecodeFunction?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference17AFMDecodeFunctionVSgMd, &_s24TokenGenerationInference17AFMDecodeFunctionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

float *NucleusSampling.init(p:temperature:generator:)(__int128 *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for TokenGenerationError.Context();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    if (a3 > 0.0 && a3 <= 2.0)
    {
      v27 = a2;
      v28 = a3;
      *(v3 + 16) = v27;
      *(v3 + 20) = v28;
      outlined init with take of RandomNumberGenerator(a1, v3 + 24);
      return v4;
    }

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.device);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = a3;
      _os_log_impl(&dword_220940000, v21, v22, "Invalid nucleous sampling temperature value %f, should be between (0.0, 2.0]", v23, 0xCu);
      MEMORY[0x223D90A10](v23, -1, -1);
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    MEMORY[0x223D8E780](0xD000000000000012, 0x8000000220AFF8A0);
    Double.write<A>(to:)();
    v18 = ", should be between (0.0, 2.0]";
  }

  else
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.device);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a2;
      _os_log_impl(&dword_220940000, v15, v16, "Invalid nucleous sampling p value %f, should be between [0.0, 1.0]", v17, 0xCu);
      MEMORY[0x223D90A10](v17, -1, -1);
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    MEMORY[0x223D8E780](0x2065756C61762070, 0xE800000000000000);
    Double.write<A>(to:)();
    v18 = ", should be between [0.0, 1.0]";
  }

  MEMORY[0x223D8E780](0xD00000000000001ELL, (v18 - 32) | 0x8000000000000000);
  TokenGenerationError.Context.init(debugDescription:underlyingError:)();
  v24 = type metadata accessor for TokenGenerationError();
  lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError();
  swift_allocError();
  v26 = v25;
  (*(v9 + 16))(v25, v12, v8);
  (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D71AE0], v24);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v9 + 8))(v12, v8);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t NucleusSampling.pickToken(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContiguousBitSet();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LogitIndexSet(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = v49 - v14;
  _S8 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  _S0 = *(v1 + 20);
  __asm { FCVT            H0, S0 }

  v24 = (*(v18 + 64))(v17, v18, _S0);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = (*(v26 + 32))(v25, v26);
  v29 = v27;
  if (v28)
  {
    goto LABEL_23;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v27 >= *(v24 + 16))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __asm { FCVT            H8, S8 }

  v30 = v24;
  v31 = v24 + 32;
  if (*(v31 + 2 * v29) >= *&_S8)
  {
    goto LABEL_23;
  }

  v50 = v30;
  v49[1] = v28;
  v33 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  (*(v32 + 8))(v33, v32);
  outlined init with copy of LogitIndexSet(v15, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of LogitIndexSet(v15);
  v35 = v12[1];
  v36 = v35 - *v12;
  if (__OFSUB__(v35, *v12))
  {
    __break(1u);
LABEL_9:
    v38 = v51;
    v37 = v52;
    (*(v51 + 32))(v7, v12, v52);
    v39 = ContiguousBitSet.count.getter();
    (*(v38 + 8))(v7, v37);
    outlined destroy of LogitIndexSet(v15);
    v36 = v39;
  }

  v34.n128_u32[0] = _S8;
  v40 = Array<A>.topCumulativeSum(_:maxCount:)(v36, v50, v34);
  __asm { FCMP            H0, #0 }

  if (_NF ^ _VF | _ZF)
  {

    if (*(v40 + 16))
    {
      v29 = *(v40 + 32);
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  v53 = 0;
  v54 = _H0;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 24, *(v2 + 48));
  lazy protocol witness table accessor for type Float16 and conformance Float16();
  lazy protocol witness table accessor for type UInt16 and conformance UInt16();
  static BinaryFloatingPoint<>.random<A>(in:using:)();
  swift_endAccess();
  v42 = *(v40 + 16);
  if (v42)
  {
    v29 = *(v40 + 32);
    if ((v29 & 0x80000000) != 0)
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v43 = *(v50 + 16);
      if (v43 > v29)
      {
        v44 = *(v31 + 2 * v29);
        if (v55 > v44)
        {
          v45 = v44 + COERCE_SHORT_FLOAT(0);
          v46 = (v40 + 36);
          v47 = v42 - 1;
          while (v47)
          {
            v29 = *v46;
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_24;
            }

            if (v43 <= v29)
            {
              goto LABEL_25;
            }

            v45 = v45 + *(v31 + 2 * v29);
            ++v46;
            --v47;
            if (v55 <= v45)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_29;
        }

LABEL_20:

LABEL_23:

        return v29;
      }
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_29:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t NucleusSampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:)(void *a1, uint64_t a2, float a3)
{
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LogitCollection.max()(v8);
  if ((v9 & 0x100000000) != 0)
  {
    return 0;
  }

  v10 = *&v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 48))(v11, v12, *(v3 + 16));
  v14 = v13;
  v15 = *(v13 + 16);
  if (!v15)
  {

    return 0;
  }

  if (v15 == 1)
  {
    v16 = *(v13 + 32);
LABEL_17:

    return v16;
  }

  v42 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v18 = v42;
  v19 = *(v42 + 16);
  v20 = 32;
  do
  {
    v21 = *(v14 + v20);
    v42 = v18;
    v22 = *(v18 + 24);
    if (v19 >= v22 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v19 + 1, 1);
      v18 = v42;
    }

    *(v18 + 16) = v19 + 1;
    *(v18 + 8 * v19 + 32) = v21;
    v20 += 4;
    ++v19;
    --v15;
  }

  while (v15);
  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v18);

  MEMORY[0x28223BE20](v24, v25);
  v40 = a1;
  v41 = v10 - a3;

  v26 = specialized _NativeSet.filter(_:)(partial apply for closure #1 in NucleusSampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:), v39, a2);
  v27 = specialized _NativeSet.intersection(_:)(v26, v23);

  v28 = *(v27 + 16);
  if (!v28)
  {

    v29 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v27 + 16), 0);
  v30 = specialized Sequence._copySequenceContents(initializing:)(&v42, v29 + 4, v28, v27);
  result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant(v42);
  if (v30 == v28)
  {
    if (v29[2])
    {
LABEL_14:

      MEMORY[0x28223BE20](v31, v32);
      v40 = a1;
      v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Sfs5NeverOTg5(partial apply for closure #2 in NucleusSampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:), v39, v29);
      v34 = *(v4 + 20);
      swift_beginAccess();
      v16 = specialized Array<A>.sampleRandomElement(logits:temperature:generator:)(v33, v4 + 24, v29, specialized Array<A>.sampleRandomElement(probabilities:generator:), v34);
      swift_endAccess();

      goto LABEL_17;
    }

LABEL_16:

    MEMORY[0x28223BE20](v35, v36);
    v40 = a1;
    v37 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5Int32VG_Sfs5NeverOTg5(partial apply for closure #3 in NucleusSampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:), v39, v14);
    v38 = *(v4 + 20);
    swift_beginAccess();
    v16 = specialized Array<A>.sampleRandomElement(logits:temperature:generator:)(v37, v4 + 24, v14, specialized Array<A>.sampleRandomElement(probabilities:generator:), v38);
    swift_endAccess();

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

BOOL closure #1 in NucleusSampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:)(Swift::Int *a1, void *a2, float a3)
{
  v27 = type metadata accessor for ContiguousBitSet();
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LogitIndexSet(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v26 - v16;
  v28 = *a1;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 8))(v18, v19);
  outlined init with copy of LogitIndexSet(v17, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v17);
    v20 = v28;
    if (v28 < *v14 || v28 >= v14[1])
    {
      return 0;
    }
  }

  else
  {
    v22 = v27;
    (*(v6 + 32))(v9, v14, v27);
    v20 = v28;
    v23 = ContiguousBitSet.contains(_:)(v28);
    (*(v6 + 8))(v9, v22);
    outlined destroy of LogitIndexSet(v17);
    if (!v23)
    {
      return 0;
    }
  }

  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  return (*(v25 + 24))(v20, v24, v25) > a3;
}

uint64_t specialized Array<A>.sampleRandomElement(logits:temperature:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{

  return specialized Array<A>.sampleRandomElement(logits:temperature:generator:)(a1, a2, a3, specialized Array<A>.sampleRandomElement(probabilities:generator:), a4);
}

uint64_t specialized Array<A>.sampleRandomElement(logits:temperature:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), float a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 16);
  LODWORD(__C) = 2143289344;

  vDSP_maxv((v11 + 32), 1, &__C, v10);
  v12 = *&__C;
  v13 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
  }

  *&__C = -v12;
  MEMORY[0x223D90BB0](a1 + 32, 1, &__C, v13 + 32, 1, v10);
  __C = v13;
  if (a5 != 0.0)
  {
    v14 = *(v13 + 2);

    v15 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    }

    v20 = a5;
    vDSP_vsdiv(v13 + 8, 1, &v20, v15 + 8, 1, v14);
    __C = v15;
  }

  _s10Accelerate6vForceO3exp_6resultyx_q_ztAA0A6BufferRzAA0a7MutableE0R_Sf7ElementRtzSfAHRt_r0_lFZSaySfG_AKTt1g5(v16, &__C);

  v17 = a4(__C, a2, a3);

  return v17;
}

void sub_220ACBA8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220ACBA94);
  }

  _Unwind_Resume(a1);
}

uint64_t NucleusSampling.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t specialized Array<A>.sampleRandomElement(probabilities:generator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  __C[0] = NAN;
  v6 = a1 + 32;
  vDSP_sve((a1 + 32), 1, __C, v5);
  v7 = __C[0];
  if (__C[0] < 0.0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  __C[0] = 0.0;
  __C[1] = v7;
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  lazy protocol witness table accessor for type Float and conformance Float();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  static BinaryFloatingPoint<>.random<A>(in:using:)();
  v8 = 0;
  v9 = 0.0;
  do
  {
    if (v5 == v8)
    {
      v11 = *(a3 + 16);
      if (v11)
      {
        v12 = 24;
        return *(a3 + v12 + 8 * v11);
      }

      goto LABEL_11;
    }

    v10 = v8 + 1;
    v9 = v9 + *(v6 + 4 * v8++);
  }

  while (__C[2] > v9);
  v11 = v10 - 1;
  if ((v10 - 1) >= *(a3 + 16))
  {
    goto LABEL_12;
  }

  v12 = 32;
  return *(a3 + v12 + 8 * v11);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  __C[0] = NAN;
  v6 = a1 + 32;
  vDSP_sve((a1 + 32), 1, __C, v5);
  v7 = __C[0];
  if (__C[0] < 0.0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  __C[0] = 0.0;
  __C[1] = v7;
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  lazy protocol witness table accessor for type Float and conformance Float();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  static BinaryFloatingPoint<>.random<A>(in:using:)();
  v8 = 0;
  v9 = 0.0;
  do
  {
    if (v5 == v8)
    {
      v11 = *(a3 + 16);
      if (v11)
      {
        v12 = 28;
        return *(a3 + v12 + 4 * v11);
      }

      goto LABEL_11;
    }

    v10 = v8 + 1;
    v9 = v9 + *(v6 + 4 * v8++);
  }

  while (__C[2] > v9);
  v11 = v10 - 1;
  if ((v10 - 1) >= *(a3 + 16))
  {
    goto LABEL_12;
  }

  v12 = 32;
  return *(a3 + v12 + 4 * v11);
}

void sub_220ACBCD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

void sub_220ACBE40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySiG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_Si_TG5AHxSbs5Error_pRi_zRi0_zlySiIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + 8 * v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return specialized _NativeSet.extractSubset(using:count:)(v20, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized NucleusSampling.pickToken(targetLogits:draftLogits:draftTokens:)(void *a1)
{
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.device);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_220940000, v3, v4, "Speculative sampling is not implemented for nucleus sampling.  Resorting to normal nucleus sampling.", v5, 2u);
    MEMORY[0x223D90A10](v5, -1, -1);
  }

  return NucleusSampling.pickToken(_:)(a1);
}

void partial apply for closure #2 in NucleusSampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:)(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  *a2 = (*(v7 + 24))(v5, v6, v7);
}

void partial apply for closure #3 in NucleusSampling.pickToken(targetLogits:draftTokens:acceptanceThreshold:)(int *a1@<X0>, float *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  *a2 = (*(v7 + 24))(v5, v6, v7);
}

float *TopK.init(k:temperature:generator:)(uint64_t a1, __int128 *a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for TokenGenerationError.Context();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 > 0.0 && a3 <= 2.0)
  {
    *(v4 + 16) = a1;
    v21 = a3;
    *(v4 + 24) = v21;
    outlined init with take of RandomNumberGenerator(a2, v4 + 32);
  }

  else
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.device);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a3;
      _os_log_impl(&dword_220940000, v15, v16, "Invalid top-k temperature value %f, should be between (0.0, 2.0]", v17, 0xCu);
      MEMORY[0x223D90A10](v17, -1, -1);
    }

    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    MEMORY[0x223D8E780](0xD000000000000012, 0x8000000220AFF8A0);
    Double.write<A>(to:)();
    MEMORY[0x223D8E780](0xD00000000000001ELL, 0x8000000220AFF8C0);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v18 = type metadata accessor for TokenGenerationError();
    lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError();
    swift_allocError();
    v20 = v19;
    (*(v9 + 16))(v19, v12, v8);
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D71AE0], v18);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a2);
    (*(v9 + 8))(v12, v8);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t TopK.pickToken(_:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 40))(*(v1 + 16), v4, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    v8 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = v8;
    v10 = v22;
    v11 = *(v22 + 16);
    v12 = 32;
    do
    {
      v13 = *(v9 + v12);
      v22 = v10;
      v14 = *(v10 + 24);
      if (v11 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1);
        v9 = v8;
        v10 = v22;
      }

      *(v10 + 16) = v11 + 1;
      *(v10 + 8 * v11 + 32) = v13;
      v12 += 4;
      ++v11;
      --v7;
    }

    while (v7);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v15, v16);
  v21[2] = a1;
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Sfs5NeverOTg5(partial apply for closure #1 in TopK.pickToken(_:), v21, v10);
  v18 = *(v2 + 24);
  swift_beginAccess();
  v19 = specialized Array<A>.sampleRandomElement(logits:temperature:generator:)(v17, v2 + 32, v10, v18);
  swift_endAccess();

  return v19;
}

uint64_t TopK.pickToken(targetLogits:draftTokens:acceptanceThreshold:)(void *a1, uint64_t a2, float a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 40))(*(v3 + 16), v8, v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v44 = a2;
    v45 = MEMORY[0x277D84F90];
    v12 = v10;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = v12;
    v14 = v45;
    v15 = *(v45 + 16);
    v16 = 32;
    do
    {
      v17 = *(v13 + v16);
      v45 = v14;
      v18 = *(v14 + 24);
      if (v15 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
        v13 = v12;
        v14 = v45;
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v17;
      v16 += 4;
      ++v15;
      --v11;
    }

    while (v11);

    v4 = v3;
    a2 = v44;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LogitCollection.max()(v19);
  if ((v20 & 0x100000000) != 0)
  {

    return 0;
  }

  v21 = *&v20 - a3;

  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v22);

  MEMORY[0x28223BE20](v24, v25);
  v42 = a1;
  v43 = v21;

  v26 = specialized _NativeSet.filter(_:)(partial apply for closure #1 in TopK.pickToken(targetLogits:draftTokens:acceptanceThreshold:), v41, a2);
  v27 = specialized _NativeSet.intersection(_:)(v26, v23);

  v28 = *(v27 + 16);
  if (!v28)
  {

    v29 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v27 + 16), 0);
  v30 = specialized Sequence._copySequenceContents(initializing:)(&v45, v29 + 4, v28, v27);
  result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant(v45);
  if (v30 == v28)
  {
    if (v29[2])
    {
LABEL_12:

      MEMORY[0x28223BE20](v32, v33);
      v42 = a1;
      v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Sfs5NeverOTg5(partial apply for closure #2 in TopK.pickToken(targetLogits:draftTokens:acceptanceThreshold:), v41, v29);
      v35 = *(v4 + 24);
      swift_beginAccess();
      v36 = specialized Array<A>.sampleRandomElement(logits:temperature:generator:)(v34, v4 + 32, v29, v35);
      swift_endAccess();

LABEL_16:

      return v36;
    }

LABEL_15:

    MEMORY[0x28223BE20](v37, v38);
    v42 = a1;
    v39 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Sfs5NeverOTg5(partial apply for closure #1 in TopK.pickToken(_:), v41, v14);
    v40 = *(v4 + 24);
    swift_beginAccess();
    v36 = specialized Array<A>.sampleRandomElement(logits:temperature:generator:)(v39, v4 + 32, v14, v40);
    swift_endAccess();

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

BOOL closure #1 in TopK.pickToken(targetLogits:draftTokens:acceptanceThreshold:)(Swift::Int *a1, void *a2, float a3)
{
  v27 = type metadata accessor for ContiguousBitSet();
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LogitIndexSet(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v26 - v16;
  v28 = *a1;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 8))(v18, v19);
  outlined init with copy of LogitIndexSet(v17, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v17);
    v20 = v28;
    if (v28 < *v14 || v28 >= v14[1])
    {
      return 0;
    }
  }

  else
  {
    v22 = v27;
    (*(v6 + 32))(v9, v14, v27);
    v20 = v28;
    v23 = ContiguousBitSet.contains(_:)(v28);
    (*(v6 + 8))(v9, v22);
    outlined destroy of LogitIndexSet(v17);
    if (!v23)
    {
      return 0;
    }
  }

  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  return (*(v25 + 24))(v20, v24, v25) > a3;
}

uint64_t TopK.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

void protocol witness for TokenSampling.makePresampler() in conformance TopK(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  if (v3 == 2)
  {
    a1[3] = &type metadata for TopK2Presampler;
    a1[4] = &protocol witness table for TopK2Presampler;
  }

  else
  {
    if (v3 == 1)
    {
      v4 = type metadata accessor for ArgmaxPresampler(0);
      v5 = &protocol witness table for ArgmaxPresampler;
    }

    else
    {
      v4 = type metadata accessor for BasicLogitPresampler(0);
      v5 = &protocol witness table for BasicLogitPresampler;
    }

    a1[3] = v4;
    a1[4] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v7 = type metadata accessor for LogitIndexSet(0);
    v8 = *(*(v7 - 8) + 56);

    v8(boxed_opaque_existential_1, 1, 1, v7);
  }
}

uint64_t specialized TopK.pickToken(targetLogits:draftLogits:draftTokens:)(void *a1)
{
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.device);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_220940000, v3, v4, "Speculative sampling is not implemented for TopK sampling.  Resorting to normal topK sampling.", v5, 2u);
    MEMORY[0x223D90A10](v5, -1, -1);
  }

  return TopK.pickToken(_:)(a1);
}

Swift::Bool __swiftcall LogitIndexSet.contains(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v12 <= a1 && v12[1] > a1;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v14 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
  }

  return v14;
}

uint64_t type metadata accessor for LogitIndexSet(uint64_t a1)
{
  result = type metadata singleton initialization cache for LogitIndexSet;
  if (!type metadata singleton initialization cache for LogitIndexSet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static LogitIndexSet.count(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
    type metadata accessor for LogitIndexSet(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t LogitIndexSet.forEach(_:)(void (*a1)(uint64_t))
{
  v3 = type metadata accessor for ContiguousBitSet.Iterator();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ContiguousBitSet();
  v34 = *(v29 - 8);
  v8 = MEMORY[0x28223BE20](v29, v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v31, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = v17[1];
    if (v19 <= *v17)
    {
      v20 = *v17;
    }

    else
    {
      v20 = v17[1];
    }

    result = *v17;
    while (v19 != result)
    {
      if (v19 < v18)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      if (v20 == result)
      {
        goto LABEL_17;
      }

      v22 = result + 1;
      (a1)();
      result = v22;
      if (v1)
      {
        return result;
      }
    }
  }

  else
  {
    v28 = v10;
    v23 = v34;
    v24 = v29;
    (*(v34 + 32))(v13, v17, v29);
    v25 = *(v23 + 16);
    v31 = v13;
    v25(v28, v13, v24);
    lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(&lazy protocol witness table cache variable for type ContiguousBitSet and conformance ContiguousBitSet, MEMORY[0x277D71E78], MEMORY[0x277D71E80]);
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(&lazy protocol witness table cache variable for type ContiguousBitSet.Iterator and conformance ContiguousBitSet.Iterator, MEMORY[0x277D71E68], MEMORY[0x277D71E70]);
    v26 = v24;
    v27 = v34;
    do
    {
      dispatch thunk of IteratorProtocol.next()();
      if (v33)
      {
        break;
      }

      a1(v32);
    }

    while (!v1);
    (*(v30 + 8))(v6, v3);
    return (*(v27 + 8))(v31, v26);
  }

  return result;
}

void *static LogitIndexSet.tokens<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ContiguousBitSet();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for LogitIndexSet(0);
    v13 = __swift_project_value_buffer(v12, static LogitIndexSet.empty);

    return outlined init with copy of LogitIndexSet(v13, a4);
  }

  else if (dispatch thunk of Collection.count.getter() == 1)
  {
    result = Collection.first.getter();
    if ((v20 & 1) == 0)
    {
      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
      }

      else if (v15 >= v19)
      {
        *a4 = v19;
        a4[1] = v15;
        type metadata accessor for LogitIndexSet(0);
        return swift_storeEnumTagMultiPayload();
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v16 = *(a3 + 8);
    v21 = a2;
    v22 = v16;
    v17 = __swift_allocate_boxed_opaque_existential_1(&v19);
    (*(*(a2 - 8) + 16))(v17, a1, a2);
    ContiguousBitSet.init(_:)();
    return LogitIndexSet.init(_:)(v11, a4);
  }

  return result;
}

uint64_t static LogitIndexSet.singleToken(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a2 = result;
  a2[1] = v3;
  type metadata accessor for LogitIndexSet(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t LogitIndexSet.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (ContiguousBitSet.isDense.getter())
  {
    v4 = ContiguousBitSet.first.getter();
    if (v5 & 1) != 0 || (v6 = v4, v7 = ContiguousBitSet.last.getter(), (v8))
    {
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for ContiguousBitSet();
      (*(*(v9 - 8) + 8))(a1, v9);
      v10 = type metadata accessor for LogitIndexSet(0);
      v11 = __swift_project_value_buffer(v10, static LogitIndexSet.empty);

      return outlined init with copy of LogitIndexSet(v11, a2);
    }

    v14 = v7;
    v15 = type metadata accessor for ContiguousBitSet();
    result = (*(*(v15 - 8) + 8))(a1, v15);
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else if (v16 >= v6)
    {
      *a2 = v6;
      a2[1] = v16;
      type metadata accessor for LogitIndexSet(0);
      goto LABEL_10;
    }

    __break(1u);
    return result;
  }

  v13 = type metadata accessor for ContiguousBitSet();
  (*(*(v13 - 8) + 32))(a2, a1, v13);
  type metadata accessor for LogitIndexSet(0);
LABEL_10:

  return swift_storeEnumTagMultiPayload();
}

uint64_t LogitIndexSet.count.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v1, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  v11 = v10[1];
  result = v11 - *v10;
  if (__OFSUB__(v11, *v10))
  {
    __break(1u);
LABEL_5:
    (*(v3 + 32))(v6, v10, v2);
    v13 = ContiguousBitSet.count.getter();
    (*(v3 + 8))(v6, v2);
    return v13;
  }

  return result;
}

uint64_t LogitIndexSet.first.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v10 == v10[1])
    {
      return 0;
    }

    else
    {
      return *v10;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = ContiguousBitSet.first.getter();
    (*(v3 + 8))(v6, v2);
    return v12;
  }
}

uint64_t LogitIndexSet.last.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v1, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v12 = v10[1];
    if (*v10 == v12)
    {
      return 0;
    }

    else if (*v10 < v12)
    {
      return v12 - 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v13 = ContiguousBitSet.last.getter();
    (*(v3 + 8))(v6, v2);
    return v13;
  }

  return result;
}

uint64_t LogitIndexSet.isDisjoint(with:)(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for LogitIndexSet(0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = (&v59 - v23);
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v59 - v26);
  outlined init with copy of LogitIndexSet(v2, &v59 - v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = *(v4 + 32);
    v36(v15, v27, v3);
    outlined init with copy of LogitIndexSet(v60, v24);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36(v12, v24, v3);
      v35 = ContiguousBitSet.isDisjoint(with:)();
      v43 = *(v4 + 8);
      v43(v12, v3);
      v43(v15, v3);
      return v35 & 1;
    }

    v37 = *v24;
    v38 = v24[1];
    v39 = ContiguousBitSet.first.getter();
    if (v40)
    {
      (*(v4 + 8))(v15, v3);
LABEL_20:
      v35 = 1;
      return v35 & 1;
    }

    v44 = v39;
    v45 = ContiguousBitSet.last.getter();
    v47 = v46;
    result = (*(v4 + 8))(v15, v3);
    if (v47)
    {
LABEL_35:
      v35 = 1;
      return v35 & 1;
    }

    if (v45 >= v44)
    {
      v49 = v45 + 1;
      if (!__OFADD__(v45, 1))
      {
        v34 = v44 >= v38 || v37 >= v49 || v44 == v49 || v37 == v38;
        goto LABEL_12;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v28 = *v27;
  v29 = v27[1];
  outlined init with copy of LogitIndexSet(v60, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v20;
    v31 = v20[1];
    v34 = v28 >= v31 || v30 >= v29 || v28 == v29 || v30 == v31;
LABEL_12:
    v35 = v34;
    return v35 & 1;
  }

  (*(v4 + 32))(v8, v20, v3);
  v41 = ContiguousBitSet.first.getter();
  if (v42)
  {
    (*(v4 + 8))(v8, v3);
    goto LABEL_20;
  }

  v52 = v41;
  v53 = ContiguousBitSet.last.getter();
  v55 = v54;
  result = (*(v4 + 8))(v8, v3);
  if (v55)
  {
    goto LABEL_35;
  }

  if (v53 < v52)
  {
    goto LABEL_49;
  }

  v56 = v53 + 1;
  if (!__OFADD__(v53, 1))
  {
    v34 = v52 >= v29 || v28 >= v56 || v52 == v56 || v28 == v29;
    goto LABEL_12;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t LogitIndexSet.formIntersection(_:)(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for LogitIndexSet(0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v36 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v36 - v26);
  outlined init with take of LogitIndexSet(v2, &v36 - v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v27;
    v28 = v27[1];
    outlined init with copy of LogitIndexSet(v37, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v20;
      v31 = v20[1];
      if (*v20 <= v29)
      {
        v30 = v29;
      }

      if (v31 >= v28)
      {
        v31 = v28;
      }

      if (v30 >= v31)
      {
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v35 = __swift_project_value_buffer(v16, static LogitIndexSet.empty);
        return outlined init with copy of LogitIndexSet(v35, v2);
      }

      else
      {
        *v2 = v30;
        v2[1] = v31;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      (*(v4 + 32))(v12, v20, v3);
      ContiguousBitSet.formIntersection(_:)();
      (*(v4 + 16))(v8, v12, v3);
      LogitIndexSet.init(_:)(v8, v2);
      return (*(v4 + 8))(v12, v3);
    }
  }

  else
  {
    v36 = v2;
    v33 = *(v4 + 32);
    v33(v15, v27, v3);
    outlined init with copy of LogitIndexSet(v37, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      ContiguousBitSet.formIntersection(_:)();
      (*(v4 + 16))(v12, v15, v3);
      LogitIndexSet.init(_:)(v12, v36);
      return (*(v4 + 8))(v15, v3);
    }

    else
    {
      v33(v12, v24, v3);
      ContiguousBitSet.formIntersection(_:)();
      (*(v4 + 16))(v8, v15, v3);
      LogitIndexSet.init(_:)(v8, v36);
      v34 = *(v4 + 8);
      v34(v12, v3);
      return (v34)(v15, v3);
    }
  }
}

uint64_t LogitIndexSet.isEmpty.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10 == v10[1];
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = ContiguousBitSet.isEmpty.getter();
    (*(v3 + 8))(v6, v2);
  }

  return v11 & 1;
}

void LogitIndexSet.maskLogits(_:value:)(void *a1, uint64_t a2, float a3)
{
  v4 = v3;
  v8 = type metadata accessor for ContiguousBitSet();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v13 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 24);
  outlined init with copy of LogitIndexSet(v4, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    ContiguousBitSet.applyMask(_:maskValue:)();
    (*(v9 + 8))(v12, v8);
    return;
  }

  v18 = *v16;
  v19 = v16[1];
  if (*v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19 == a2;
  }

  if (!v20)
  {
    if (v18 >= a2)
    {
      v18 = a2;
    }

    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      if (!v18)
      {
        goto LABEL_13;
      }

      v22[0] = LOWORD(a3);
      v22[1] = LOWORD(a3);
      if (!a1)
      {
LABEL_19:
        __break(1u);
        return;
      }

      if (v18 + 0x4000000000000000 >= 0)
      {
        memset_pattern4(a1, v22, 2 * v18);
LABEL_13:
        if (v19 < a2)
        {
          v17.n128_f32[0] = a3;
          specialized maskRange #1 (_:) in LogitIndexSet.maskLogits(_:value:)(v19, a2, a1, v17);
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t one-time initialization function for empty()
{
  v0 = type metadata accessor for LogitIndexSet(0);
  __swift_allocate_value_buffer(v0, static LogitIndexSet.empty);
  v1 = __swift_project_value_buffer(v0, static LogitIndexSet.empty);
  *v1 = 0;
  v1[1] = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t static LogitIndexSet.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogitIndexSet(0);
  v3 = __swift_project_value_buffer(v2, static LogitIndexSet.empty);

  return outlined init with copy of LogitIndexSet(v3, a1);
}

unint64_t LogitIndexSet.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = v10[1];
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v19 = 0xD000000000000014;
    v20 = 0x8000000220AFF930;
    v17 = v12;
    v18 = v11;
    v15 = 0;
    v16 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D8E780](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D8E780](v15, v16);

    MEMORY[0x223D8E780](41, 0xE100000000000000);
    return v19;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    MEMORY[0x223D8E780](0xD000000000000015, 0x8000000220AFF950);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D8E780](41, 0xE100000000000000);
    v13 = v19;
    (*(v3 + 8))(v6, v2);
  }

  return v13;
}

uint64_t LogitIndexSet.formUnion(_:)(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for LogitIndexSet(0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v39 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v39 - v26);
  outlined init with take of LogitIndexSet(v2, &v39 - v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = v2;
    v33 = *(v4 + 32);
    v33(v15, v27, v3);
    outlined init with copy of LogitIndexSet(v40, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      ContiguousBitSet.formUnion(_:)();
      (*(v4 + 16))(v12, v15, v3);
      LogitIndexSet.init(_:)(v12, v39);
      return (*(v4 + 8))(v15, v3);
    }

    else
    {
      v33(v12, v24, v3);
      ContiguousBitSet.formUnion(_:)();
      (*(v4 + 16))(v8, v15, v3);
      LogitIndexSet.init(_:)(v8, v39);
      v35 = *(v4 + 8);
      v35(v12, v3);
      return (v35)(v15, v3);
    }
  }

  v29 = *v27;
  v28 = v27[1];
  outlined init with copy of LogitIndexSet(v40, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 32))(v12, v20, v3);
    ContiguousBitSet.formUnion(_:)();
    (*(v4 + 16))(v8, v12, v3);
    v32 = v2;
    goto LABEL_12;
  }

  v39 = v2;
  v30 = v20[1];
  if (v28 < *v20 || v30 < v29)
  {
    ContiguousBitSet.init(_:)();
    ContiguousBitSet.formUnion(_:)();
    (*(v4 + 16))(v8, v12, v3);
    v32 = v39;
LABEL_12:
    LogitIndexSet.init(_:)(v8, v32);
    return (*(v4 + 8))(v12, v3);
  }

  if (*v20 >= v29)
  {
    v36 = v29;
  }

  else
  {
    v36 = *v20;
  }

  if (v30 <= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v20[1];
  }

  v38 = v39;
  *v39 = v36;
  v38[1] = v37;
  return swift_storeEnumTagMultiPayload();
}

void type metadata completion function for LogitIndexSet(uint64_t a1)
{
  type metadata accessor for ContiguousBitSet();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Range<Int>();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Range<Int>()
{
  if (!lazy cache variable for type metadata for Range<Int>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Int>);
    }
  }
}

void specialized maskRange #1 (_:) in LogitIndexSet.maskLogits(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a1 != a2)
  {
    v5[0] = a4.n128_u16[0];
    v5[1] = a4.n128_u16[0];
    if (a3)
    {
      v4 = a2 - a1;
      if (__OFSUB__(a2, a1))
      {
        __break(1u);
      }

      else if (v4 + 0x4000000000000000 >= 0)
      {
        memset_pattern4((a3 + 2 * a1), v5, 2 * v4);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for SeedableRandomNumberGenerator(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SeedableRandomNumberGenerator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t Array<A>.applySoftmax()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (one-time initialization token for softmaxGraphContext != -1)
  {
    swift_once();
  }

  v2 = static UnsafeBufferPointer<A>.softmaxGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v2 + 4);
  swift_endAccess();
  if (!v1)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220AE8A20;
  if ((v1 + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220AE8A30;
  *(v6 + 32) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220AE8A30;
  *(v7 + 32) = v1;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v8 = v31;
  v5[8] = v30;
  v5[9] = v8;
  v9 = v33;
  v5[10] = v32;
  v5[11] = v9;
  v10 = v27;
  v5[4] = v26;
  v5[5] = v10;
  v11 = v29;
  v5[6] = v28;
  v5[7] = v11;
  v12 = v25;
  v5[2] = v24;
  v5[3] = v12;
  if (v1 >> 61)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220AE8A30;
  *(v13 + 32) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220AE8A30;
  *(v14 + 32) = v1;
  static Float.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v15 = v41;
  v5[18] = v40;
  v5[19] = v15;
  v16 = v43;
  v5[20] = v42;
  v5[21] = v16;
  v17 = v37;
  v5[14] = v36;
  v5[15] = v17;
  v18 = v39;
  v5[16] = v38;
  v5[17] = v18;
  v19 = v35;
  v5[12] = v34;
  v5[13] = v19;
  arguments._rawValue = v5;
  BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
  if (!v20)
  {

    v21 = v3;
    *(v3 + 16) = v1;
LABEL_9:
    swift_beginAccess();
    os_unfair_lock_unlock(v2 + 4);
    swift_endAccess();
    return v21;
  }

LABEL_12:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Array<A>.topCumulativeSum(_:maxCount:)(unint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *a3.n128_u16;
  v7 = a2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiSgGMd, &_ss23_ContiguousArrayStorageCySiSgGMR);
  inited = swift_initStackObject();
  v9 = 0;
  *(inited + 16) = xmmword_220AE8A20;
  v10 = 32;
  if (a1 < 32)
  {
    v10 = a1;
  }

  *(inited + 32) = v10;
  v11 = inited + 32;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  v12 = 0x27CF6D000uLL;
LABEL_5:
  v13 = v11 + 16 * v9;
  v14 = *v13;
  v47 = *(v13 + 8) | (*v13 >= v4);
  if (*(v13 + 8) & 1 | (*v13 >= v4))
  {
    if (*(v12 + 1600) != -1)
    {
      swift_once();
    }

    v15 = static UnsafeBufferPointer<A>.argsortGraphContext;
    swift_beginAccess();
    os_unfair_lock_lock(v15 + 4);
    swift_endAccess();
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v3 + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_220AE8A20;
    if (!(v4 >> 61))
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_220AE8A30;
      *(v18 + 32) = v4;
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_220AE8A30;
      *(v19 + 32) = v4;
      static Int32.bnnsDataType.getter();
      BNNSTensor.init(data:shape:stride:dataType:)();
      v20 = v56;
      v17[8] = v55;
      v17[9] = v20;
      v21 = v58;
      v17[10] = v57;
      v17[11] = v21;
      v22 = v52;
      v17[4] = v51;
      v17[5] = v22;
      v23 = v54;
      v17[6] = v53;
      v17[7] = v23;
      v24 = v50;
      v17[2] = v49;
      v17[3] = v24;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_220AE8A30;
      *(v25 + 32) = v4;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_220AE8A30;
      *(v26 + 32) = v4;
      static Float16.bnnsDataType.getter();
      BNNSTensor.init(data:shape:stride:dataType:)();
      v27 = v59[7];
      v17[18] = v59[6];
      v17[19] = v27;
      v28 = v59[9];
      v17[20] = v59[8];
      v17[21] = v28;
      v29 = v59[3];
      v17[14] = v59[2];
      v17[15] = v29;
      v30 = v59[5];
      v17[16] = v59[4];
      v17[17] = v30;
      v31 = v59[1];
      v17[12] = v59[0];
      v17[13] = v31;
      arguments._rawValue = v17;
      BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
      if (v32)
      {
        swift_unexpectedError();
        __break(1u);
LABEL_52:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      *(v3 + 16) = v4;
      swift_beginAccess();
      os_unfair_lock_unlock(v15 + 4);
      swift_endAccess();
      v12 = 0x27CF6D000;
      goto LABEL_14;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v14 < 0xFFFFFFFF80000000)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v14 > 0x7FFFFFFF)
  {
    goto LABEL_48;
  }

  v3 = UnsafeBufferPointer<A>.argtopK(_:)(v14, v7, v4);
LABEL_14:
  v33 = 0;
  ++v9;
  LOWORD(v34) = 0;
  while (1)
  {
    if (*(v3 + 16) == v33)
    {
      if ((v47 & 1) == 0)
      {

        if (v9 != 2)
        {
          goto LABEL_5;
        }

        goto LABEL_52;
      }

      swift_setDeallocating();
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_49;
      }

      v42 = *(v3 + 16);
      if (v42 >= a1)
      {
        v42 = a1;
      }

      v43 = 2 * v42;
      if (a1)
      {
        a1 = v43 + 1;
      }

      else
      {
        a1 = 1;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v44 = swift_dynamicCastClass();
      if (!v44)
      {
        swift_unknownObjectRelease();
        v44 = MEMORY[0x277D84F90];
      }

      v45 = *(v44 + 16);

      if (v45 == a1 >> 1)
      {
        v40 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v40)
        {
          return v40;
        }

        swift_unknownObjectRelease();
        return MEMORY[0x277D84F90];
      }

LABEL_50:
      swift_unknownObjectRelease();
      specialized _copyCollectionToContiguousArray<A>(_:)(v3, v3 + 32, 0, a1);
      v40 = v46;
      swift_unknownObjectRelease();
      return v40;
    }

    v35 = v33 + 1;
    v36 = *(v7 + 2 * *(v3 + 4 * v33 + 32));
    v34 = v34 + v36;
    if (v36 <= COERCE_SHORT_FLOAT(5120) || v34 >= v6)
    {
      break;
    }

    ++v33;
    if (a1 == v35)
    {
      goto LABEL_27;
    }
  }

  a1 = v33 + 1;
LABEL_27:

  v38 = *(v3 + 16);
  if (v38 < a1)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v38 == a1)
  {
    return v3;
  }

  specialized _copyCollectionToContiguousArray<A>(_:)(v3, v3 + 32, 0, (2 * a1) | 1);
  v40 = v39;

  return v40;
}

uint64_t Array<A>.applySoftmax(temperature:)(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u16[0];
  v3 = *(a1 + 16);
  if (one-time initialization token for temperatureSoftmaxGraphContext != -1)
  {
    swift_once();
  }

  v4 = static UnsafeBufferPointer<A>.temperatureSoftmaxGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v4 + 4);
  swift_endAccess();
  if (!v3)
  {
    v29 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220AE8A20;
  if ((v3 + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220AE8A30;
  *(v8 + 32) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220AE8A30;
  *(v9 + 32) = v3;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v10 = v40;
  *(v7 + 128) = v39;
  *(v7 + 144) = v10;
  v11 = v42;
  *(v7 + 160) = v41;
  *(v7 + 176) = v11;
  v12 = v36;
  *(v7 + 64) = v35;
  *(v7 + 80) = v12;
  v13 = v38;
  *(v7 + 96) = v37;
  *(v7 + 112) = v13;
  v14 = v34;
  *(v7 + 32) = v33;
  *(v7 + 48) = v14;
  if (v3 >> 61)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220AE8A30;
  *(v15 + 32) = v3;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220AE8A30;
  *(v16 + 32) = v3;
  static Float.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v17 = v43[7];
  *(v7 + 288) = v43[6];
  *(v7 + 304) = v17;
  v18 = v43[9];
  *(v7 + 320) = v43[8];
  *(v7 + 336) = v18;
  v19 = v43[3];
  *(v7 + 224) = v43[2];
  *(v7 + 240) = v19;
  v20 = v43[5];
  *(v7 + 256) = v43[4];
  *(v7 + 272) = v20;
  v21 = v43[1];
  *(v7 + 192) = v43[0];
  *(v7 + 208) = v21;
  v32 = v2;
  static BNNSTensor.allocate<A>(repeating:shape:stride:)();
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v7);
  *(v22 + 2) = 3;
  v23 = v43[17];
  *(v22 + 28) = v43[16];
  *(v22 + 29) = v23;
  v24 = v43[19];
  *(v22 + 30) = v43[18];
  *(v22 + 31) = v24;
  v25 = v43[13];
  *(v22 + 24) = v43[12];
  *(v22 + 25) = v25;
  v26 = v43[15];
  *(v22 + 26) = v43[14];
  *(v22 + 27) = v26;
  v27 = v43[11];
  *(v22 + 22) = v43[10];
  *(v22 + 23) = v27;
  arguments._rawValue = v22;
  BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
  if (!v28)
  {

    BNNSTensor.deallocate()();
    v29 = v5;
    *(v5 + 16) = v3;
LABEL_9:
    swift_beginAccess();
    os_unfair_lock_unlock(v4 + 4);
    swift_endAccess();
    return v29;
  }

LABEL_12:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Array<A>.adjustSoftmaxTemperature(from:to:)(uint64_t a1, __n128 a2, __n128 a3)
{
  v3 = *a3.n128_u16;
  v4 = *a2.n128_u16;
  v5 = *(a1 + 16);
  if (one-time initialization token for adjustSoftmaxTemperatureGraphContext != -1)
  {
    swift_once();
  }

  v6 = static UnsafeBufferPointer<A>.adjustSoftmaxTemperatureGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v6 + 4);
  swift_endAccess();
  if (!v5)
  {
    v31 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v7 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220AE8A20;
  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220AE8A30;
    *(v10 + 32) = v5;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_220AE8A30;
    *(v11 + 32) = v5;
    static Float16.bnnsDataType.getter();
    BNNSTensor.init(data:shape:stride:dataType:)();
    v12 = v42;
    *(v9 + 128) = v41;
    *(v9 + 144) = v12;
    v13 = v44;
    *(v9 + 160) = v43;
    *(v9 + 176) = v13;
    v14 = v38;
    *(v9 + 64) = v37;
    *(v9 + 80) = v14;
    v15 = v40;
    *(v9 + 96) = v39;
    *(v9 + 112) = v15;
    v16 = v36;
    *(v9 + 32) = v35;
    *(v9 + 48) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_220AE8A30;
    *(v17 + 32) = v5;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220AE8A30;
    *(v18 + 32) = v5;
    static Float16.bnnsDataType.getter();
    BNNSTensor.init(data:shape:stride:dataType:)();
    v19 = v45[7];
    *(v9 + 288) = v45[6];
    *(v9 + 304) = v19;
    v20 = v45[9];
    *(v9 + 320) = v45[8];
    *(v9 + 336) = v20;
    v21 = v45[3];
    *(v9 + 224) = v45[2];
    *(v9 + 240) = v21;
    v22 = v45[5];
    *(v9 + 256) = v45[4];
    *(v9 + 272) = v22;
    v23 = v45[1];
    *(v9 + 192) = v45[0];
    *(v9 + 208) = v23;
    v34 = v4 / v3;
    static BNNSTensor.allocate<A>(repeating:shape:stride:)();
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v9);
    *(v24 + 2) = 3;
    v25 = v45[17];
    *(v24 + 28) = v45[16];
    *(v24 + 29) = v25;
    v26 = v45[19];
    *(v24 + 30) = v45[18];
    *(v24 + 31) = v26;
    v27 = v45[13];
    *(v24 + 24) = v45[12];
    *(v24 + 25) = v27;
    v28 = v45[15];
    *(v24 + 26) = v45[14];
    *(v24 + 27) = v28;
    v29 = v45[11];
    *(v24 + 22) = v45[10];
    *(v24 + 23) = v29;
    arguments._rawValue = v24;
    BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
    if (!v30)
    {

      BNNSTensor.deallocate()();
      v31 = v7;
      *(v7 + 16) = v5;
LABEL_8:
      swift_beginAccess();
      os_unfair_lock_unlock(v6 + 4);
      swift_endAccess();
      return v31;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static UnsafeBufferPointer<A>.makeSoftmaxBNNSGraphContext()()
{
  v0 = type metadata accessor for BNNSGraph.Builder.Intent();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  (*(v1 + 104))(v4, *MEMORY[0x277D831D8], v0);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  (*(v1 + 8))(v4, v0);
  BNNSGraph.Builder.Tensor.cast<A>(to:)();
  v14 = *(v6 + 8);
  v14(v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd, &_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220AE8A30;
  *(v15 + 56) = v5;
  *(v15 + 64) = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR, MEMORY[0x277D831E0]);
  __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  BNNSGraph.Builder.Tensor.softmax(axis:)();
  v14(v13, v5);
  return v15;
}

{
  v0 = type metadata accessor for BNNSGraph.Builder.Intent();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__SfGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__SfGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v17 - v13;
  (*(v1 + 104))(v4, *MEMORY[0x277D831D8], v0);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  (*(v1 + 8))(v4, v0);
  BNNSGraph.Builder.Tensor.cast<A>(to:)();
  (*(v6 + 8))(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd, &_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220AE8A30;
  *(v15 + 56) = v10;
  *(v15 + 64) = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR, MEMORY[0x277D831E0]);
  __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  BNNSGraph.Builder.Tensor.softmax(axis:)();
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t specialized closure #1 in static UnsafeBufferPointer<A>.makeTemperatureSoftmaxBNNSGraphContext()(uint64_t a1)
{
  v33 = a1;
  v1 = type metadata accessor for BNNSGraph.Builder.Intent();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR);
  v34 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v32 = &v28 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v30 = &v28 - v18;
  v19 = *MEMORY[0x277D831D8];
  v29 = *(v2 + 104);
  v29(v5, v19, v1);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  v20 = v2 + 8;
  v21 = *(v2 + 8);
  v28 = v20;
  v21(v5, v1);
  BNNSGraph.Builder.Tensor.cast<A>(to:)();
  v22 = *(v34 + 8);
  v34 += 8;
  v22(v16, v6);
  v29(v5, v19, v1);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  v21(v5, v1);
  v35 = COERCE_UNSIGNED_INT(1.0);
  v23 = v31;
  BNNSGraph.Builder.constant<A>(name:value:)();
  lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR, MEMORY[0x277D831E8]);
  v24 = v32;
  static BNNSGraph.Builder.OperationParameter./ infix(_:_:)();
  v22(v23, v6);
  v25 = v30;
  static BNNSGraph.Builder.OperationParameter.* infix(_:_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd, &_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_220AE8A30;
  *(v26 + 56) = v6;
  *(v26 + 64) = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR, MEMORY[0x277D831E0]);
  __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  BNNSGraph.Builder.Tensor.softmax(axis:)();
  v22(v23, v6);
  v22(v24, v6);
  v22(v16, v6);
  v22(v25, v6);
  return v26;
}

{
  v34[2] = a1;
  v1 = type metadata accessor for BNNSGraph.Builder.Intent();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__SfGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__SfGMR);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR);
  v42 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v40 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v41 = v34 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v36 = v34 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v37 = v34 - v22;
  v23 = *MEMORY[0x277D831D8];
  v35 = *(v2 + 104);
  v35(v5, v23, v1);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  v24 = *(v2 + 8);
  v34[1] = v2 + 8;
  v24(v5, v1);
  v25 = v38;
  BNNSGraph.Builder.Tensor.cast<A>(to:)();
  (*(v39 + 8))(v10, v25);
  v35(v5, v23, v1);
  v26 = v36;
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  v24(v5, v1);
  v43 = COERCE_UNSIGNED_INT(1.0);
  v27 = v40;
  BNNSGraph.Builder.constant<A>(name:value:)();
  lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR, MEMORY[0x277D831E8]);
  v28 = v41;
  v29 = v27;
  static BNNSGraph.Builder.OperationParameter./ infix(_:_:)();
  v30 = *(v42 + 8);
  v30(v29, v11);
  v31 = v37;
  static BNNSGraph.Builder.OperationParameter.* infix(_:_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd, &_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_220AE8A30;
  *(v32 + 56) = v11;
  *(v32 + 64) = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR, MEMORY[0x277D831E0]);
  __swift_allocate_boxed_opaque_existential_1((v32 + 32));
  BNNSGraph.Builder.Tensor.softmax(axis:)();
  v30(v29, v11);
  v30(v28, v11);
  v30(v26, v11);
  v30(v31, v11);
  return v32;
}

uint64_t specialized closure #1 in static UnsafeBufferPointer<A>.makeAdjustSoftmaxTemperatureBNNSGraphContext()(uint64_t a1)
{
  v34[2] = a1;
  v1 = type metadata accessor for BNNSGraph.Builder.Intent();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR);
  v41 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v39 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v40 = v34 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v38 = v34 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = v34 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v36 = v34 - v21;
  v22 = *MEMORY[0x277D831D8];
  v35 = *(v2 + 104);
  v35(v5, v22, v1);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  v23 = v2 + 8;
  v24 = *(v2 + 8);
  v34[1] = v23;
  v24(v5, v1);
  BNNSGraph.Builder.Tensor.cast<A>(to:)();
  v37 = *(v41 + 8);
  v37(v19, v6);
  v35(v5, v22, v1);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  v24(v5, v1);
  lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR, MEMORY[0x277D831E8]);
  v25 = v38;
  v26 = v19;
  v27 = v36;
  BNNSGraph.Builder.Tensor.pow<A>(y:)();
  v28 = v39;
  BNNSGraph.Builder.Tensor.sum(axes:keepDimensions:)();
  v29 = v40;
  static BNNSGraph.Builder.OperationParameter./ infix(_:_:)();
  v30 = v37;
  v37(v28, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd, &_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_220AE8A30;
  *(v31 + 56) = v6;
  *(v31 + 64) = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Float16> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR, MEMORY[0x277D831E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
  (*(v41 + 32))(boxed_opaque_existential_1, v29, v6);
  v30(v25, v6);
  v30(v26, v6);
  v30(v27, v6);
  return v31;
}

uint64_t specialized closure #1 in static UnsafeBufferPointer<A>.makeArgsortBNNSGraphContext(ascending:)(uint64_t a1, int a2)
{
  v28 = a2;
  v2 = type metadata accessor for BNNSGraph.Builder.SortOrder();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMR);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v27 = &v27 - v10;
  v11 = type metadata accessor for BNNSGraph.Builder.Intent();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v27 - v19;
  (*(v12 + 104))(v15, *MEMORY[0x277D831D8], v11);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  (*(v12 + 8))(v15, v11);
  v21 = MEMORY[0x277D831F8];
  if ((v28 & 1) == 0)
  {
    v21 = MEMORY[0x277D831F0];
  }

  (*(v3 + 104))(v6, *v21, v2);
  v22 = v27;
  BNNSGraph.Builder.Tensor.argSort(axis:sortOrder:)();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd, &_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_220AE8A30;
  v24 = v29;
  *(v23 + 56) = v29;
  *(v23 + 64) = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Int32> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMR, MEMORY[0x277D831E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  (*(v30 + 32))(boxed_opaque_existential_1, v22, v24);
  (*(v17 + 8))(v20, v16);
  return v23;
}

uint64_t UnsafeBufferPointer<A>.argmax()(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (one-time initialization token for argmaxGraphContext != -1)
  {
    swift_once();
  }

  v3 = static UnsafeBufferPointer<A>.argmaxGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v4 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220AE8A20;
  if (a2 >> 61)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220AE8A30;
  *(v7 + 32) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220AE8A30;
  *(v8 + 32) = a2;
  static Int32.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v9 = v32;
  v6[8] = v31;
  v6[9] = v9;
  v10 = v34;
  v6[10] = v33;
  v6[11] = v10;
  v11 = v28;
  v6[4] = v27;
  v6[5] = v11;
  v12 = v30;
  v6[6] = v29;
  v6[7] = v12;
  v13 = v26;
  v6[2] = v25;
  v6[3] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220AE8A30;
  *(v14 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220AE8A30;
  *(v15 + 32) = a2;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v16 = v42;
  v6[18] = v41;
  v6[19] = v16;
  v17 = v44;
  v6[20] = v43;
  v6[21] = v17;
  v18 = v38;
  v6[14] = v37;
  v6[15] = v18;
  v19 = v40;
  v6[16] = v39;
  v6[17] = v19;
  v20 = v36;
  v6[12] = v35;
  v6[13] = v20;
  arguments._rawValue = v6;
  BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
  if (!v21)
  {

    *(v4 + 16) = a2;
    swift_beginAccess();
    os_unfair_lock_unlock(v3 + 4);
    swift_endAccess();
    if (*(v4 + 16))
    {
      v22 = *(v4 + 32);

      return v22;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t UnsafeBufferPointer<A>.applySoftmax()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for softmaxGraphContext != -1)
  {
    swift_once();
  }

  v3 = static UnsafeBufferPointer<A>.softmaxGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  if (!a2)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v4 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220AE8A20;
  if (a2 + 0x4000000000000000 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220AE8A30;
  *(v7 + 32) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220AE8A30;
  *(v8 + 32) = a2;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v9 = v31;
  v6[8] = v30;
  v6[9] = v9;
  v10 = v33;
  v6[10] = v32;
  v6[11] = v10;
  v11 = v27;
  v6[4] = v26;
  v6[5] = v11;
  v12 = v29;
  v6[6] = v28;
  v6[7] = v12;
  v13 = v25;
  v6[2] = v24;
  v6[3] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220AE8A30;
  *(v14 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220AE8A30;
  *(v15 + 32) = a2;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v16 = v41;
  v6[18] = v40;
  v6[19] = v16;
  v17 = v43;
  v6[20] = v42;
  v6[21] = v17;
  v18 = v37;
  v6[14] = v36;
  v6[15] = v18;
  v19 = v39;
  v6[16] = v38;
  v6[17] = v19;
  v20 = v35;
  v6[12] = v34;
  v6[13] = v20;
  arguments._rawValue = v6;
  BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
  if (!v21)
  {

    *(v4 + 16) = a2;
LABEL_9:
    swift_beginAccess();
    os_unfair_lock_unlock(v3 + 4);
    swift_endAccess();
    return v4;
  }

LABEL_12:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t UnsafeBufferPointer<A>.applySoftmax(temperature:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*a3.n128_u16 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    v5 = a3.n128_u16[0];
    if (one-time initialization token for temperatureSoftmaxGraphContext != -1)
    {
      swift_once();
    }

    v6 = static UnsafeBufferPointer<A>.temperatureSoftmaxGraphContext;
    swift_beginAccess();
    os_unfair_lock_lock(v6 + 4);
    swift_endAccess();
    if (!a2)
    {
      v7 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_220AE8A20;
      if (a2 + 0x4000000000000000 >= 0)
      {
        v9 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_220AE8A30;
        *(v10 + 32) = a2;
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_220AE8A30;
        *(v11 + 32) = a2;
        static Float16.bnnsDataType.getter();
        BNNSTensor.init(data:shape:stride:dataType:)();
        v12 = v40;
        *(v9 + 128) = v39;
        *(v9 + 144) = v12;
        v13 = v42;
        *(v9 + 160) = v41;
        *(v9 + 176) = v13;
        v14 = v36;
        *(v9 + 64) = v35;
        *(v9 + 80) = v14;
        v15 = v38;
        *(v9 + 96) = v37;
        *(v9 + 112) = v15;
        v16 = v34;
        *(v9 + 32) = v33;
        *(v9 + 48) = v16;
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_220AE8A30;
        *(v17 + 32) = a2;
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_220AE8A30;
        *(v18 + 32) = a2;
        static Float16.bnnsDataType.getter();
        BNNSTensor.init(data:shape:stride:dataType:)();
        v19 = v43[7];
        *(v9 + 288) = v43[6];
        *(v9 + 304) = v19;
        v20 = v43[9];
        *(v9 + 320) = v43[8];
        *(v9 + 336) = v20;
        v21 = v43[3];
        *(v9 + 224) = v43[2];
        *(v9 + 240) = v21;
        v22 = v43[5];
        *(v9 + 256) = v43[4];
        *(v9 + 272) = v22;
        v23 = v43[1];
        *(v9 + 192) = v43[0];
        *(v9 + 208) = v23;
        v32 = v5;
        static BNNSTensor.allocate<A>(repeating:shape:stride:)();
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v9);
        *(v24 + 2) = 3;
        v25 = v43[17];
        *(v24 + 28) = v43[16];
        *(v24 + 29) = v25;
        v26 = v43[19];
        *(v24 + 30) = v43[18];
        *(v24 + 31) = v26;
        v27 = v43[13];
        *(v24 + 24) = v43[12];
        *(v24 + 25) = v27;
        v28 = v43[15];
        *(v24 + 26) = v43[14];
        *(v24 + 27) = v28;
        v29 = v43[11];
        *(v24 + 22) = v43[10];
        *(v24 + 23) = v29;
        arguments._rawValue = v24;
        BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
        if (!v30)
        {

          BNNSTensor.deallocate()();
          *(v7 + 16) = a2;
LABEL_13:
          swift_beginAccess();
          os_unfair_lock_unlock(v6 + 4);
          swift_endAccess();
          return v7;
        }

LABEL_16:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return UnsafeBufferPointer<A>.applySoftmax()(a1, a2);
}

uint64_t UnsafeBufferPointer<A>.argtopK(_:)(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a1;
  }

  v112 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  v7 = a3 + 15;
  if (a3 >= 0)
  {
    v7 = a3;
  }

  v109 = a3;
  if (a3 < -15)
  {
    goto LABEL_136;
  }

  v8 = 0;
  v9 = v112;
  v10 = v7 >> 4;
  v11.i64[0] = 0x400040004000400;
  v11.i64[1] = 0x400040004000400;
LABEL_8:
  if (v8 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = 16 - 16 * v8;
  v14 = (-16 * v8) + 16;
  v15 = v8;
  while (1)
  {
    if (v10 == v15)
    {
      v59 = 16 * v10;
      if (v59 > v109)
      {
        goto LABEL_137;
      }

      if (v59 == v109)
      {
LABEL_64:
        if (*(v9 + 16))
        {
          v60 = MEMORY[0x277D84F90];
          while (1)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v9);
              v9 = result;
            }

            v61 = *(v9 + 16);
            if (!v61)
            {
              goto LABEL_126;
            }

            v62 = v9 + 32 + 8 * (v61 - 1);
            v63 = *v62;
            v64 = *(v62 + 4);
            *(v9 + 16) = v61 - 1;
            if (v61 != 1)
            {
              v65 = *(v9 + 32);
              *(v9 + 32) = v63;
              *(v9 + 36) = v64;
              specialized Heap._UnsafeHandle.trickleDownMin(_:)(0, 0, v9 + 32, v61 - 1);
              v63 = v65;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
            }

            v67 = *(v60 + 2);
            v66 = *(v60 + 3);
            if (v67 >= v66 >> 1)
            {
              v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v60);
            }

            *(v60 + 2) = v67 + 1;
            *&v60[4 * v67 + 32] = v63;
            if (!*(v9 + 16))
            {
              goto LABEL_124;
            }
          }
        }

        v60 = MEMORY[0x277D84F90];
LABEL_124:
        v104 = specialized Sequence.reversed()(v60);

        return v104;
      }

      if (v59 >= v109)
      {
        goto LABEL_139;
      }

      while (1)
      {
        v68 = *(a2 + 2 * v59);
        v69 = *(v9 + 16);
        if (v69 >= v5)
        {
          if (!v69)
          {
            goto LABEL_131;
          }

          if (*(v9 + 36) >= v68)
          {
            goto LABEL_79;
          }
        }

        if (v59 < 0xFFFFFFFF80000000)
        {
          goto LABEL_129;
        }

        if (v59 > 0x7FFFFFFF)
        {
          goto LABEL_130;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v112 = v9;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69 + 1, 1);
          v9 = v112;
        }

        v71 = *(v9 + 16);
        v70 = *(v9 + 24);
        v72 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
          v9 = v112;
        }

        *(v9 + 16) = v72;
        v73 = v9 + 32;
        v74 = v9 + 32 + 8 * v71;
        *v74 = v59;
        *(v74 + 4) = v68;
        if (v71)
        {
          break;
        }

LABEL_110:
        v91 = *(v9 + 16);
        if (v5 < v91)
        {
          if (!v91)
          {
            goto LABEL_134;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v9);
            v9 = result;
          }

          v92 = *(v9 + 16);
          if (!v92)
          {
            goto LABEL_135;
          }

          v93 = v9 + 32 + 8 * (v92 - 1);
          v94 = *v93;
          v95 = *(v93 + 4);
          *(v9 + 16) = v92 - 1;
          if (v92 != 1)
          {
            *(v9 + 32) = v94;
            *(v9 + 36) = v95;
            result = specialized Heap._UnsafeHandle.trickleDownMin(_:)(0, 0, v9 + 32, v92 - 1);
          }
        }

LABEL_79:
        if (++v59 == v109)
        {
          goto LABEL_64;
        }
      }

      v75 = __clz(v72);
      v76 = v75 ^ 0x3F;
      v77 = (v71 - 1) >> 1;
      v78 = v73 + 8 * v77;
      v79 = *v78;
      v80 = *(v78 + 4);
      if ((v75 ^ 0x3F))
      {
        v82 = v79 < v59;
        if (v68 != v80)
        {
          v82 = v68 < v80;
        }

        if (!v82)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v81 = v79 > v59;
        if (v80 != v68)
        {
          v81 = v80 < v68;
        }

        if (!v81)
        {
          goto LABEL_100;
        }
      }

      v76 = 62 - v75;
      if (v71 != v77)
      {
        *v74 = *v78;
        *v78 = v59;
        *(v78 + 4) = v68;
        v71 = (v71 - 1) >> 1;
      }

LABEL_100:
      if (v76)
      {
        if (v71 >= 3)
        {
          do
          {
            v96 = v71 - 3;
            v97 = (v71 - 3) >> 2;
            v98 = v73 + 8 * v71;
            v99 = *v98;
            v100 = *(v98 + 4);
            v101 = v73 + 8 * v97;
            v102 = *(v101 + 4);
            v103 = *v98 < *v101;
            if (v102 != v100)
            {
              v103 = v102 < v100;
            }

            if (!v103)
            {
              break;
            }

            if (v71 != v97)
            {
              *v98 = *v101;
              *v101 = v99;
              *(v101 + 4) = v100;
            }

            v71 = (v71 - 3) >> 2;
          }

          while (v96 > 0xB);
        }
      }

      else if (v71 >= 3)
      {
        do
        {
          v83 = v71 - 3;
          v84 = (v71 - 3) >> 2;
          v85 = v73 + 8 * v71;
          v86 = *v85;
          v87 = *(v85 + 4);
          v88 = v73 + 8 * v84;
          v89 = *(v88 + 4);
          v90 = *v88 < *v85;
          if (v87 != v89)
          {
            v90 = v87 < v89;
          }

          if (!v90)
          {
            break;
          }

          if (v71 != v84)
          {
            *v85 = *v88;
            *v88 = v86;
            *(v88 + 4) = v87;
          }

          v71 = (v71 - 3) >> 2;
        }

        while (v83 > 0xB);
      }

      goto LABEL_110;
    }

    if (v12 == v15)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_140;
    }

    v8 = v15 + 1;
    v16 = (a2 + 32 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = vuzp1q_s8(vcgtq_f16(*v16, v11), vcgtq_f16(v18, v11));
    v13 -= 16;
    v14 -= 16;
    v15 = v8;
    if (vmaxvq_u8(v19))
    {
      v20 = 0;
      v108 = -v13;
      v21 = -v14;
      v106 = v18;
      v107 = v17;
      v105 = v19;
      while (1)
      {
        v111 = v19;
        if (*(&v111 | v20 & 0xF))
        {
          break;
        }

LABEL_18:
        if (++v20 == 16)
        {
          if (!*(v9 + 16))
          {
            goto LABEL_138;
          }

          v58 = (v9 + 36);
          v11 = vld1q_dup_s16(v58);
          goto LABEL_8;
        }
      }

      v110[0] = v17;
      v110[1] = v18;
      if (v108 + v20 < 0xFFFFFFFF80000000)
      {
        goto LABEL_127;
      }

      if (v108 + v20 > 0x7FFFFFFF)
      {
        goto LABEL_128;
      }

      v22 = *(v110 + (v20 & 0xF));
      result = swift_isUniquelyReferenced_nonNull_native();
      v112 = v9;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
        v9 = v112;
      }

      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v9 = v112;
      }

      v26 = v21 + v20;
      *(v9 + 16) = v25;
      v27 = v9 + 32;
      v28 = v9 + 32 + 8 * v24;
      *v28 = v21 + v20;
      *(v28 + 4) = v22;
      if (v24)
      {
        v29 = __clz(v25);
        v30 = v29 ^ 0x3F;
        v31 = (v24 - 1) >> 1;
        v32 = v27 + 8 * v31;
        v33 = *v32;
        v34 = *(v32 + 4);
        if (((v29 ^ 0x3F) & 1) == 0)
        {
          v35 = v33 > v26;
          if (v34 != v22)
          {
            v35 = v34 < v22;
          }

          if (!v35)
          {
            goto LABEL_37;
          }

LABEL_35:
          v30 = 62 - v29;
          if (v24 != v31)
          {
            *v28 = *v32;
            *v32 = v26;
            *(v32 + 4) = v22;
            v24 = (v24 - 1) >> 1;
          }

          goto LABEL_37;
        }

        v36 = v33 < v26;
        if (v22 != v34)
        {
          v36 = v22 < v34;
        }

        if (v36)
        {
          goto LABEL_35;
        }

LABEL_37:
        if (v30)
        {
          if (v24 >= 3)
          {
            do
            {
              v50 = v24 - 3;
              v51 = (v24 - 3) >> 2;
              v52 = v27 + 8 * v24;
              v53 = *v52;
              v54 = *(v52 + 4);
              v55 = v27 + 8 * v51;
              v56 = *(v55 + 4);
              v57 = *v52 < *v55;
              if (v56 != v54)
              {
                v57 = v56 < v54;
              }

              if (!v57)
              {
                break;
              }

              if (v24 != v51)
              {
                *v52 = *v55;
                *v55 = v53;
                *(v55 + 4) = v54;
              }

              v24 = (v24 - 3) >> 2;
            }

            while (v50 > 0xB);
          }
        }

        else if (v24 >= 3)
        {
          do
          {
            v37 = v24 - 3;
            v38 = (v24 - 3) >> 2;
            v39 = v27 + 8 * v24;
            v40 = *v39;
            v41 = *(v39 + 4);
            v42 = v27 + 8 * v38;
            v43 = *(v42 + 4);
            v44 = *v42 < *v39;
            if (v41 != v43)
            {
              v44 = v41 < v43;
            }

            if (!v44)
            {
              break;
            }

            if (v24 != v38)
            {
              *v39 = *v42;
              *v42 = v40;
              *(v42 + 4) = v41;
            }

            v24 = (v24 - 3) >> 2;
          }

          while (v37 > 0xB);
        }
      }

      v45 = *(v9 + 16);
      if (v5 < v45)
      {
        if (!v45)
        {
          goto LABEL_132;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v9);
          v9 = result;
        }

        v46 = *(v9 + 16);
        if (!v46)
        {
          goto LABEL_133;
        }

        v47 = v9 + 32 + 8 * (v46 - 1);
        v48 = *v47;
        v49 = *(v47 + 4);
        *(v9 + 16) = v46 - 1;
        if (v46 != 1)
        {
          *(v9 + 32) = v48;
          *(v9 + 36) = v49;
          result = specialized Heap._UnsafeHandle.trickleDownMin(_:)(0, 0, v9 + 32, v46 - 1);
        }
      }

      v18 = v106;
      v17 = v107;
      v19 = v105;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t UnsafeBufferPointer<A>.argmax(mask:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v6 = type metadata accessor for ContiguousBitSet.Iterator();
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContiguousBitSet();
  v59 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for LogitIndexSet(0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = (&v54 - v23);
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v54 - v26);
  if (!a3)
  {
    return a3;
  }

  v55 = a1;
  outlined init with copy of LogitIndexSet(a1, &v54 - v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    if (*v27 == v27[1])
    {
      return 0;
    }
  }

  else
  {
    v29 = v9;
    v30 = v59;
    (*(v59 + 32))(v15, v27, v29);
    v31 = ContiguousBitSet.isEmpty.getter();
    v32 = v30;
    v9 = v29;
    (*(v32 + 8))(v15, v29);
    if (v31)
    {
      return 0;
    }
  }

  v33 = UnsafeBufferPointer<A>.argmax()(a2, a3);
  v34 = v55;
  if ((v35 & 1) == 0)
  {
    a3 = v33;
    outlined init with copy of LogitIndexSet(v55, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (a3 >= *v24 && a3 < v24[1])
      {
        return a3;
      }
    }

    else
    {
      v46 = v9;
      v47 = v59;
      (*(v59 + 32))(v15, v24, v46);
      v48 = ContiguousBitSet.contains(_:)(a3);
      v49 = v47;
      v9 = v46;
      (*(v49 + 8))(v15, v46);
      if (v48)
      {
        return a3;
      }
    }
  }

  outlined init with copy of LogitIndexSet(v34, v20);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    v39 = v9;
    v40 = v59;
    v41 = v57;
    (*(v59 + 32))(v57, v20, v39);
    v42 = v40;
    v43 = v39;
    (*(v42 + 16))(v15, v41, v39);
    lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(&lazy protocol witness table cache variable for type ContiguousBitSet and conformance ContiguousBitSet, MEMORY[0x277D71E78], MEMORY[0x277D71E80]);
    v44 = v56;
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(&lazy protocol witness table cache variable for type ContiguousBitSet.Iterator and conformance ContiguousBitSet.Iterator, MEMORY[0x277D71E68], MEMORY[0x277D71E70]);
    v45 = v54;
    dispatch thunk of IteratorProtocol.next()();
    if (v61)
    {
      a3 = 0;
    }

    else
    {
      a3 = 0;
      v53 = -1025;
      do
      {
        if (*&v53 < *(a2 + 2 * v60))
        {
          a3 = v60;
          v53 = *(a2 + 2 * v60);
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v61 != 1);
    }

    (*(v58 + 8))(v44, v45);
    (*(v59 + 8))(v41, v43);
    return a3;
  }

  v38 = *v20;
  v37 = v20[1];
  if (v37 == *v20)
  {
    return 0;
  }

  if (v37 < *v20)
  {
    __break(1u);
  }

  else if (v37 - *v20 > (v37 + ~v38))
  {
    a3 = 0;
    v50 = -1025;
    do
    {
      v51 = *(a2 + 2 * v38);
      if (*&v50 < v51)
      {
        a3 = v38;
      }

      v52 = v38 + 1;
      if (*&v50 < v51)
      {
        v50 = *(a2 + 2 * v38);
      }

      ++v38;
    }

    while (v37 != v52);
    return a3;
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance IndexValuePair(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == v3)
  {
    return *a2 < *a1;
  }

  else
  {
    return v2 < v3;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance IndexValuePair(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v3 == v2)
  {
    return *a1 >= *a2;
  }

  else
  {
    return v3 >= v2;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance IndexValuePair(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == v3)
  {
    return *a2 >= *a1;
  }

  else
  {
    return v2 >= v3;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance IndexValuePair(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v3 == v2)
  {
    return *a1 < *a2;
  }

  else
  {
    return v3 < v2;
  }
}

__int16 one-time initialization function for veryNegativeLogit@<H0>()
{
  result = -1025;
  static Float16.veryNegativeLogit = -1025;
  return result;
}

uint64_t one-time initialization function for softmaxGraphContext(uint64_t a1)
{
  return one-time initialization function for argmaxGraphContext(a1, specialized closure #1 in static UnsafeBufferPointer<A>.makeSoftmaxBNNSGraphContext(), &static UnsafeBufferPointer<A>.softmaxGraphContext);
}

{
  return one-time initialization function for argmaxGraphContext(a1, specialized closure #1 in static UnsafeBufferPointer<A>.makeSoftmaxBNNSGraphContext(), &static UnsafeBufferPointer<A>.softmaxGraphContext);
}

uint64_t one-time initialization function for temperatureSoftmaxGraphContext(uint64_t a1)
{
  return one-time initialization function for argmaxGraphContext(a1, specialized closure #1 in static UnsafeBufferPointer<A>.makeTemperatureSoftmaxBNNSGraphContext(), &static UnsafeBufferPointer<A>.temperatureSoftmaxGraphContext);
}

{
  return one-time initialization function for argmaxGraphContext(a1, specialized closure #1 in static UnsafeBufferPointer<A>.makeTemperatureSoftmaxBNNSGraphContext(), &static UnsafeBufferPointer<A>.temperatureSoftmaxGraphContext);
}

uint64_t one-time initialization function for argsortGraphContext()
{
  v0 = type metadata accessor for BNNSGraph.CompileOptions();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[16] = 0;
  BNNSGraph.CompileOptions.init()();
  v5 = static BNNSGraph.makeContext(options:_:)();
  (*(v1 + 8))(v4, v0);
  type metadata accessor for LockedBNNSContext();
  v6 = swift_allocObject();
  v9 = 0;

  TokenMask.subscript.read();

  *(v6 + 16) = v9;
  *(v6 + 24) = v5;
  static UnsafeBufferPointer<A>.argsortGraphContext = v6;
  return result;
}

uint64_t one-time initialization function for argmaxGraphContext(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for BNNSGraph.CompileOptions();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BNNSGraph.CompileOptions.init()();
  v9 = static BNNSGraph.makeContext(options:_:)();
  (*(v5 + 8))(v8, v4);
  type metadata accessor for LockedBNNSContext();
  v10 = swift_allocObject();
  HIDWORD(v12) = 0;

  TokenMask.subscript.read();

  *(v10 + 16) = HIDWORD(v12);
  *(v10 + 24) = v9;
  *a3 = v10;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySDyS2i4next_Sf5logittGGMd, &_ss23_ContiguousArrayStorageCySDyS2i4next_Sf5logittGGMR, &_sSDyS2i4next_Sf5logittGMd, &_sSDyS2i4next_Sf5logittGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMR, MEMORY[0x277D71BE0]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySiGGMd, &_ss23_ContiguousArrayStorageCySaySiGGMR, &_sSaySiGMd, &_sSaySiGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeV0H0OGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation8ToolTypeV0H0OGMR, MEMORY[0x277D0DE10]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF19AssetObjectE5RunnerVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF19AssetObjectE5RunnerVGMR, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMR, MEMORY[0x277D71DA0]);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi_SitGMd, &_ss23_ContiguousArrayStorageCySi_SitGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi6target_Si5drafttGMd, &_ss23_ContiguousArrayStorageCySi6target_Si5drafttGMR);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVtGMd, &_ss23_ContiguousArrayStorageCySS_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVtMd, &_sSS_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi7tokenID_SS9remainingtGMd, &_ss23_ContiguousArrayStorageCySi7tokenID_SS9remainingtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi7tokenID_SS9remainingtMd, &_sSi7tokenID_SS9remainingtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t specialized Heap._UnsafeHandle.trickleDownMin(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = (a3 + 8 * result);
    v7 = *v6;
    v8 = v6[2];
    v9 = (4 * result) | 3;
    if (4 * result + 6 < a4)
    {
      while (1)
      {
        v11 = (a3 + 8 * (v9 + 1));
        v12 = *v11;
        v13 = v11[2];
        v14 = a3 + 8 * v9;
        v15 = *(v14 + 4);
        v16 = *v14 < v12;
        if (v13 != v15)
        {
          v16 = v13 < v15;
        }

        if (v16)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v9;
        }

        v18 = v9 + 2;
        v19 = (a3 + 8 * (v9 + 3));
        v20 = *v19;
        v21 = v19[2];
        v22 = a3 + 8 * (v9 + 2);
        v23 = *(v22 + 4);
        v24 = *v22 < v20;
        if (v21 != v23)
        {
          v24 = v21 < v23;
        }

        if (v24)
        {
          v18 = v9 + 3;
        }

        v25 = (a3 + 8 * v18);
        v26 = *v25;
        v27 = v25[2];
        v28 = a3 + 8 * v17;
        v29 = *(v28 + 4);
        v30 = *v28 < v26;
        if (v27 != v29)
        {
          v30 = v27 < v29;
        }

        if (v30)
        {
          v17 = v18;
        }

        v31 = (a3 + 8 * v17);
        v32 = *v31;
        v33 = v31[2];
        v34 = v7 < *v31;
        if (v33 != v8)
        {
          v34 = v33 < v8;
        }

        if (!v34)
        {
          break;
        }

        v35 = a3 + 8 * result;
        *v35 = v32;
        *(v35 + 4) = v33;
        v36 = (a3 + 8 * ((v17 - 1 + ((v17 - 1) >> 63)) >> 1));
        v37 = *v36;
        v38 = v36[2];
        v39 = v7 < *v36;
        if (v38 != v8)
        {
          v39 = v38 < v8;
        }

        if (v39)
        {
          *v36 = v7;
          v36[2] = v8;
          v8 = v38;
          v7 = v37;
        }

        v9 = (4 * v17) | 3;
        a2 += 2;
        result = v17;
        if (4 * v17 + 6 >= a4)
        {
          v10 = a2 + 2;
          result = v17;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v10 = a2 + 2;
LABEL_26:
      if (((2 * result) | 1) < a4)
      {
        v40 = result;
        result = specialized Heap._UnsafeHandle._minDescendant(c0:gc0:)((2 * result) | 1, a2 + 1, v9, v10, a3, a4);
        v41 = a3 + 8 * result;
        v42 = *(v41 + 4);
        v43 = v7 < *v41;
        if (v42 != v8)
        {
          v43 = v42 < v8;
        }

        if (v43)
        {
          v44 = a3 + 8 * v40;
          *v44 = *v41;
          *(v44 + 4) = v42;
          if (result >= v9)
          {
            v45 = result;
            result = (result - 1) / 2;
            v46 = (a3 + 8 * result);
            v47 = *v46;
            v48 = v46[2];
            v49 = v7 < *v46;
            if (v48 != v8)
            {
              v49 = v48 < v8;
            }

            if (v49)
            {
              *v41 = v47;
              *(v41 + 4) = v48;
            }

            else
            {
              result = v45;
            }
          }
        }

        else
        {
          result = v40;
        }
      }
    }

    v50 = a3 + 8 * result;
    *v50 = v7;
    *(v50 + 4) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Heap._UnsafeHandle._minDescendant(c0:gc0:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= a6)
  {
    if (result + 1 < a6)
    {
      v19 = (a5 + 8 * (result + 1));
      v20 = *v19;
      v21 = v19[2];
      v22 = a5 + 8 * result;
      v23 = *(v22 + 4);
      v24 = *v22 < v20;
      if (v21 != v23)
      {
        v24 = v21 < v23;
      }

      if (v24)
      {
        ++result;
      }
    }
  }

  else if (a3 + 2 >= a6)
  {
    v25 = a5 + 8 * a3;
    v26 = *(v25 + 4);
    v27 = a5 + 8 * (result + 1);
    v28 = *(v27 + 4);
    v29 = *v27 < *v25;
    if (v26 != v28)
    {
      v29 = v26 < v28;
    }

    if (v29)
    {
      result = a3;
    }

    else
    {
      ++result;
    }

    if (a3 + 1 < a6)
    {
      v30 = (a5 + 8 * (a3 + 1));
      v31 = *v30;
      v32 = v30[2];
      v33 = a5 + 8 * result;
      v34 = *(v33 + 4);
      v35 = *v33 < v31;
      if (v32 != v34)
      {
        v35 = v32 < v34;
      }

      if (v35)
      {
        return a3 + 1;
      }
    }
  }

  else
  {
    v6 = (a5 + 8 * (a3 + 1));
    v7 = *v6;
    v8 = v6[2];
    v9 = a5 + 8 * a3;
    v10 = *(v9 + 4);
    v11 = *v9 < v7;
    if (v8 != v10)
    {
      v11 = v8 < v10;
    }

    if (v11)
    {
      v12 = a3 + 1;
    }

    else
    {
      v12 = a3;
    }

    v13 = (a5 + 8 * (a3 + 2));
    v14 = *v13;
    v15 = v13[2];
    v16 = a5 + 8 * v12;
    v17 = *(v16 + 4);
    v18 = *v16 < v14;
    if (v15 != v17)
    {
      v18 = v15 < v17;
    }

    if (v18)
    {
      return a3 + 2;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IndexValuePair(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IndexValuePair(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type IndexValuePair and conformance IndexValuePair()
{
  result = lazy protocol witness table cache variable for type IndexValuePair and conformance IndexValuePair;
  if (!lazy protocol witness table cache variable for type IndexValuePair and conformance IndexValuePair)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexValuePair and conformance IndexValuePair);
  }

  return result;
}

uint64_t _s24TokenGenerationInference13LogitIndexSetO6tokensyACxSlRzSi7ElementRtzlFZSD4KeysVyS2i_G_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ContiguousBitSet();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8 != 1)
  {
    if (v8)
    {
      v14[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVyS2i_GMd, &_sSD4KeysVyS2i_GMR);
      v14[5] = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type [Int : Int].Keys and conformance [A : B].Keys, &_sSD4KeysVyS2i_GMd, &_sSD4KeysVyS2i_GMR, MEMORY[0x277D83480]);
      v14[1] = a1;

      ContiguousBitSet.init(_:)();
      return LogitIndexSet.init(_:)(v7, a2);
    }

    else
    {
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for LogitIndexSet(0);
      v10 = __swift_project_value_buffer(v9, static LogitIndexSet.empty);
      return outlined init with copy of UnconstrainedLogitCollection(v10, a2, type metadata accessor for LogitIndexSet);
    }
  }

  result = specialized Collection.first.getter(a1);
  if (v12)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v13 < result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *a2 = result;
  a2[1] = v13;
  type metadata accessor for LogitIndexSet(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s24TokenGenerationInference13LogitIndexSetO6tokensyACxSlRzSi7ElementRtzlFZSaySiG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ContiguousBitSet();
  result = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9 != 1)
  {
    if (v9)
    {
      v14[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      v14[5] = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR, MEMORY[0x277D83970]);
      v14[1] = a1;

      ContiguousBitSet.init(_:)();
      return LogitIndexSet.init(_:)(v8, a2);
    }

    else
    {
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for LogitIndexSet(0);
      v11 = __swift_project_value_buffer(v10, static LogitIndexSet.empty);
      return outlined init with copy of UnconstrainedLogitCollection(v11, a2, type metadata accessor for LogitIndexSet);
    }
  }

  v12 = *(a1 + 32);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 < v12)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *a2 = v12;
  a2[1] = v13;
  type metadata accessor for LogitIndexSet(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OneTokenHealingPrefixMatchingLanguageModel.init(processor:prompt:overflowConstraints:)(void *a1, char *a2, uint64_t a3)
{
  v5 = v3;
  v8 = a1;
  *(v3 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_nodeStates) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_startNode) = 0;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:)(a2, a3, v9, v10);
  if (v4)
  {

    outlined destroy of Constraints?(a3);

    swift_deallocPartialClassInstance();
    goto LABEL_34;
  }

  v57 = a3;
  v58 = v5;
  v59 = v8;
  v13 = &unk_27CF76000;
  a3 = OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_leadingTokens;
  *(v5 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_leadingTokens) = v11;
  *(v5 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_allowedFirstTokens) = v12;
  if (*(v12 + 16))
  {

    outlined init with copy of DeterministicLanguageModelProtocol(v59, v5 + 16);
    v14 = v59[3];
    v15 = v59[4];
    v16 = __swift_project_boxed_opaque_existential_1(v59, v14);
    v17 = (*(v15 + 40))(v14, v15);
    if (v17 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    a3 = v5;
    v18 = (v5 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_unconstrainedLogitCollection);
    *v18 = 0;
    v18[1] = v17;
    type metadata accessor for LogitIndexSet(0);
    swift_storeEnumTagMultiPayload();
    v19 = *(v5 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_leadingTokens);
    v20 = *(v19 + 16);
    v13 = MEMORY[0x277D84F90];
    v16 = &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
    if (v20)
    {
      v62[0] = MEMORY[0x277D84F90];

      v16 = v62;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v61 = *(v19 + 16);
      v21 = v62[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
      v22 = 0;
      while (v61 != v22)
      {
        if (v22 >= *(v19 + 16))
        {
          goto LABEL_37;
        }

        v23 = *(v19 + 8 * v22 + 32);
        v15 = static _DictionaryStorage.allocate(capacity:)();
        v16 = v15;
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
        if (v25)
        {
          goto LABEL_38;
        }

        *(v15 + 8 * (v24 >> 6) + 64) |= 1 << v24;
        *(*(v15 + 48) + 8 * v24) = v23;
        *(*(v15 + 56) + 8 * v24) = ++v22;
        v26 = *(v15 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_39;
        }

        a3 = v20;
        *(v15 + 16) = v28;
        v62[0] = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v21 = v62[0];
        }

        *(v21 + 16) = v30 + 1;
        *(v21 + 8 * v30 + 32) = v15;
        v20 = a3;
        v16 = &lazy protocol witness table cache variable for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys;
        if (a3 == v22)
        {

          a3 = v58;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_20:
    v15 = v16[431];
    swift_beginAccess();
    *(a3 + v15) = v21;

    v40 = *(a3 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_allowedFirstTokens);
    v41 = *(v40 + 16);
    if (v41)
    {
      v63 = v13;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
      v42 = v63;
      v43 = (v40 + 32);
      v44 = v63[2];
      v45 = 2 * v44;
      do
      {
        v47 = *v43++;
        v46 = v47;
        v63 = v42;
        v48 = v42[3];
        if (v44++ >= v48 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v44, 1);
          v42 = v63;
        }

        v42[2] = v44;
        v50 = &v42[v45];
        v50[4] = v46;
        v50[5] = -1;
        v45 += 2;
        --v41;
      }

      while (v41);
      a3 = v58;
    }

    else if (!v13[2])
    {
      v51 = MEMORY[0x277D84F98];
LABEL_28:
      v63 = v51;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v52, 1, &v63);

      v13 = v63;
      v16 = *(a3 + v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + v15) = v16;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_29:
        v55 = v16[2];
        v54 = v16[3];
        if (v55 >= v54 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v16);
        }

        v16[2] = v55 + 1;
        v16[v55 + 4] = v13;
        *(a3 + v15) = v16;
        outlined destroy of Constraints?(v57);
        v8 = v59;
        goto LABEL_34;
      }

LABEL_41:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      *(a3 + v15) = v16;
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
    v51 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_28;
  }

  if (one-time initialization token for healing != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.healing);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = v32;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v35 = 136642819;
    v36 = MEMORY[0x223D8E8D0](a2, MEMORY[0x277D83B88]);
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v62);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_220940000, v34, v33, "Found no tokens to heal in %{sensitive}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x223D90A10](v60, -1, -1);
    MEMORY[0x223D90A10](v35, -1, -1);
  }

  else
  {
  }

  outlined destroy of Constraints?(v57);

  swift_deallocPartialClassInstance();
  a3 = 0;
  v8 = v59;
LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a3;
}

uint64_t outlined destroy of Constraints?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int __swiftcall OneTokenHealingPrefixMatchingLanguageModel.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v3 = v2;
  v5 = *(*prompt.queryTokens._rawValue + 16);
  if (!v5)
  {
    return forPreviousNode;
  }

  v6 = OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_nodeStates;
  v7 = (*prompt.queryTokens._rawValue + 32);
  while (1)
  {
    v9 = *v7++;
    v8 = v9;
    if (forPreviousNode == -1)
    {
      goto LABEL_4;
    }

    result = swift_beginAccess();
    if (forPreviousNode < 0)
    {
      break;
    }

    v11 = *(v3 + v6);
    if (forPreviousNode >= *(v11 + 16))
    {
      goto LABEL_13;
    }

    v12 = *(v11 + 8 * forPreviousNode + 32);
    if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v14 & 1) != 0))
    {
      forPreviousNode = *(*(v12 + 56) + 8 * v13);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      forPreviousNode = -1;
    }

LABEL_4:
    if (!--v5)
    {
      return forPreviousNode;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t OneTokenHealingPrefixMatchingLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](OneTokenHealingPrefixMatchingLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

void OneTokenHealingPrefixMatchingLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)()
{
  v1 = v0[6];
  if (v1 == -1)
  {
    goto LABEL_6;
  }

  v2 = v0[7];
  v3 = OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_nodeStates;
  swift_beginAccess();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v2 + v3);
  v5 = v0[6];
  if (*(v4 + 16) <= v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (!*(*(v4 + 8 * v5 + 32) + 16))
  {
LABEL_6:
    v9 = v0[7];
    v10 = v0[5];
    v11 = OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_unconstrainedLogitCollection;
    v10[3] = type metadata accessor for UnconstrainedLogitCollection(0);
    v10[4] = &protocol witness table for UnconstrainedLogitCollection;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    outlined init with copy of UnconstrainedLogitCollection(v9 + v11, boxed_opaque_existential_1, type metadata accessor for UnconstrainedLogitCollection);
    goto LABEL_7;
  }

  v6 = v0[5];
  v6[3] = type metadata accessor for UnweightedSparseLogitCollection(0);
  v6[4] = &protocol witness table for UnweightedSparseLogitCollection;
  v7 = __swift_allocate_boxed_opaque_existential_1(v6);

  _s24TokenGenerationInference13LogitIndexSetO6tokensyACxSlRzSi7ElementRtzlFZSD4KeysVyS2i_G_Tt1g5(v8, v7);

LABEL_7:
  v13 = v0[1];

  v13();
}

uint64_t OneTokenHealingPrefixMatchingLanguageModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  outlined destroy of UnconstrainedLogitCollection(v0 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_unconstrainedLogitCollection);

  return v0;
}

uint64_t OneTokenHealingPrefixMatchingLanguageModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  outlined destroy of UnconstrainedLogitCollection(v0 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_unconstrainedLogitCollection);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance OneTokenHealingPrefixMatchingLanguageModel(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return OneTokenHealingPrefixMatchingLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(a1, a2);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_6;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a2 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    _StringGuts.grow(_:)(30);
    MEMORY[0x223D8E780](0xD00000000000001BLL, 0x8000000220AFB7D0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D8E780](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v24 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = *a3;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_24;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v26;
      *(v36[7] + 8 * v29) = v27;
      v37 = v36[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      ++v25;
      v36[2] = v38;
      v24 += 2;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

void specialized OneTokenHealingPrefixMatchingLanguageModel.node(forPreviousNode:token:isPrompt:)(unint64_t a1, uint64_t a2)
{
  if (a1 == -1)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_nodeStates;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v2 + v5);
  if (*(v6 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(*(v6 + 8 * a1 + 32) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t outlined destroy of UnconstrainedLogitCollection(uint64_t a1)
{
  v2 = type metadata accessor for UnconstrainedLogitCollection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for OneTokenHealingPrefixMatchingLanguageModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for OneTokenHealingPrefixMatchingLanguageModel;
  if (!type metadata singleton initialization cache for OneTokenHealingPrefixMatchingLanguageModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for OneTokenHealingPrefixMatchingLanguageModel(uint64_t a1)
{
  result = type metadata accessor for LogitIndexSet(319);
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

uint64_t outlined init with copy of UnconstrainedLogitCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized Sequence.reversed()(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = specialized _copySequenceToContiguousArray<A>(_:)(a1, a2, a3, a4 & 1);

  v6 = *(v4 + 16);
  if (v6 < 2)
  {
    return v4;
  }

  v7 = v6 >> 1;
  v8 = v6 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_5;
    }

    v10 = *(v4 + 16);
    if (i - 4 >= v10)
    {
      break;
    }

    if (v8 - 4 >= v10)
    {
      goto LABEL_12;
    }

    v11 = *(v4 + 8 * i);
    v12 = *(v4 + 8 * v8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      v4 = result;
    }

    *(v4 + 8 * i) = v12;
    *(v4 + 8 * v8) = v11;
LABEL_5:
    --v8;
    if (!--v7)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Sequence.reversed()(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v10 = *(a4 + 48);

  v11 = String.count.getter();

  v54 = v10;
  if (v11 >= v10(a3, a4))
  {
LABEL_49:

    return;
  }

  v56 = a3;
  v57 = a4;
  v58 = v4;
  v60 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = *(a1 + 2);
    if (!v12)
    {
      goto LABEL_49;
    }

    v13 = *&a1[8 * v12 + 24];
    v14 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[8 * v16 + 32] = v13;
    v60 = v14;
    if (((*(v57 + 56))(v56, v57) & 1) == 0)
    {
      break;
    }

    v17 = *(v14 + 2);

    if (v17 >= 2)
    {
      v33 = v17 >> 1;
      v34 = v17 + 3;
      v35 = 4;
      do
      {
        if (v35 != v34)
        {
          v36 = *(v14 + 2);
          if (v35 - 4 >= v36)
          {
            goto LABEL_59;
          }

          if (v34 - 4 >= v36)
          {
            goto LABEL_60;
          }

          v37 = *&v14[8 * v35];
          v38 = *&v14[8 * v34];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
          }

          *&v14[8 * v35] = v38;
          *&v14[8 * v34] = v37;
        }

        --v34;
        ++v35;
        --v33;
      }

      while (v33);
    }

    v18 = (*(v57 + 16))(v14, v56, v57);
    if (v6)
    {

      goto LABEL_54;
    }

    v20 = v18;
    v21 = v19;

    v22 = implicit closure #1 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:)(v58, v56, v57);
LABEL_30:
    v40 = specialized PrefixMatchingTextProcessor.validateTokenIDs(for:constraints:tokenIDs:)(v20, v21, a2, v22, v23);
    if (v6)
    {

LABEL_54:

      return;
    }

    v41 = v40;

    if (!*(v41 + 2))
    {

      goto LABEL_49;
    }

    if (!*(a1 + 2))
    {
      goto LABEL_61;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v42 = *(a1 + 2);
      if (!v42)
      {
        goto LABEL_48;
      }
    }

    else
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
      v42 = *(a1 + 2);
      if (!v42)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    *(a1 + 2) = v42 - 1;
    v43 = *(v60 + 2);

    if (v43 >= 2)
    {
      v47 = v43 >> 1;
      v48 = v43 + 3;
      v49 = 4;
      v45 = v44;
      while (1)
      {
        if (v49 != v48)
        {
          v50 = *(v45 + 2);
          if (v49 - 4 >= v50)
          {
            goto LABEL_57;
          }

          if (v48 - 4 >= v50)
          {
            goto LABEL_58;
          }

          v51 = *&v45[8 * v49];
          v52 = *&v45[8 * v48];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
          }

          *&v45[8 * v49] = v52;
          *&v45[8 * v48] = v51;
        }

        --v48;
        ++v49;
        if (!--v47)
        {
          goto LABEL_37;
        }
      }
    }

    v45 = v44;
LABEL_37:
    (*(v57 + 16))(v45, v56, v57);

    v46 = String.count.getter();

    if (v46 >= v54(v56, v57))
    {
      goto LABEL_49;
    }
  }

  v59 = implicit closure #3 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:)(v58, v56, v57);
  v24 = *(v14 + 2);
  if (!v24)
  {

LABEL_29:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v21 = v39;

    v22 = implicit closure #5 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:)(v58, v56, v57);
    goto LABEL_30;
  }

  v53 = v6;
  v61 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
  v25 = *(v14 + 2);
  while (v25)
  {
    v26 = v25 - 1;
    if ((v25 - 1) >= *(v14 + 2))
    {
      goto LABEL_56;
    }

    v27 = (v59)(*&v14[8 * v25 + 24]);
    v29 = v28;
    v31 = *(v61 + 16);
    v30 = *(v61 + 24);
    if (v31 >= v30 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
    }

    *(v61 + 16) = v31 + 1;
    v32 = v61 + 16 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    v25 = v26;
    if (!--v24)
    {

      v6 = v53;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t (*implicit closure #1 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:);
}

uint64_t (*implicit closure #3 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #4 in implicit closure #3 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:);
}

uint64_t (*implicit closure #5 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #6 in implicit closure #5 in PrefixMatchingTextProcessor.rewindToHealingPoint(prompt:overflowConstraints:);
}

BOOL specialized PrefixMatchingTextProcessor.validate(characters:against:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (a4 + 40);
  v8 = *(a4 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 2;
    v11 = *(v7 - 1);
    v10 = *v7;

    v12._countAndFlagsBits = v11;
    v12._object = v10;
    LOBYTE(v11) = String.hasPrefix(_:)(v12);

    v7 = v9;
    if (v11)
    {
      return 0;
    }
  }

  v14 = (a3 + 40);
  v15 = *(a3 + 16) + 1;
  do
  {
    v13 = --v15 != 0;
    if (!v15)
    {
      break;
    }

    v17 = *(v14 - 1);
    v16 = *v14;

    v18._countAndFlagsBits = v17;
    v18._object = v16;
    if (String.hasPrefix(_:)(v18))
    {

      return 1;
    }

    v14 += 2;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    v20 = String.hasPrefix(_:)(v19);
  }

  while (!v20);
  return v13;
}

BOOL specialized PrefixMatchingTextProcessor.validate(characters:against:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RecognizerElement();
  MEMORY[0x28223BE20](v4, v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = HIBYTE(a2) & 0xF;
  v27 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v9;
  if (!v9)
  {
    return 1;
  }

  v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v24 = a2 & 0xFFFFFFFFFFFFFFLL;
  v26 = *MEMORY[0x277D71E88];
  v10 = (v6 + 104);
  v11 = (v6 + 8);

  v12 = 0;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v15 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v17 = v16;
      goto LABEL_14;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = v27;
      v28[1] = v24;
      v14 = v28 + v12;
    }

    else
    {
      v13 = v23;
      if ((v27 & 0x1000000000000000) == 0)
      {
        v13 = _StringObject.sharedUTF8.getter();
      }

      v14 = (v13 + v12);
    }

    v15 = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
LABEL_13:
      v17 = 1;
      goto LABEL_14;
    }

    v20 = (__clz(v15 ^ 0xFF) - 24);
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v15 = ((v15 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3F;
        v17 = 3;
      }

      else
      {
        v15 = ((v15 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3F;
        v17 = 4;
      }
    }

    else
    {
      if (v20 == 1)
      {
        goto LABEL_13;
      }

      v15 = v14[1] & 0x3F | ((v15 & 0x1F) << 6);
      v17 = 2;
    }

LABEL_14:
    *v8 = v15;
    (*v10)(v8, v26, v4);
    v18 = EarleyRecognizer.childRecognizer(consumingElement:)();

    (*v11)(v8, v4);
    v19 = v18 != 0;
    if (!v18)
    {
      goto LABEL_23;
    }

    v12 += v17;
  }

  while (v12 < v25);

LABEL_23:

  return v19;
}

char *specialized PrefixMatchingTextProcessor.validateTokenIDs(for:constraints:tokenIDs:)(char *a1, char *a2, uint64_t a3, unint64_t *a4, char *a5)
{
  v65 = a5;
  v70 = a4;
  v62 = a1;
  v63 = a2;
  v6 = type metadata accessor for Schema();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Grammar();
  v61 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66, v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v58 = &v56 - v14;
  v15 = type metadata accessor for GenerationSchema();
  v59 = *(v15 - 8);
  v60 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v56 - v21;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v24 = MEMORY[0x28223BE20](v56, v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v56 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v56 - v32;
  v57 = a3;
  outlined init with copy of Constraints?(a3, &v56 - v32);
  v34 = type metadata accessor for Constraints();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    outlined init with copy of Constraints?(v33, v30);
    LODWORD(v38) = (*(v35 + 88))(v30, v34);
    if (v38 == *MEMORY[0x277D71B30])
    {
      v39 = *(v35 + 96);
      v35 += 96;
      v39(v30, v34);
      v40 = v59;
      v34 = v60;
      (*(v59 + 32))(v22, v30, v60);
      v71 = GenerationSchema.extractPrefixes()();
      if (v71.value.legal._rawValue)
      {
        rawValue = v71.value.legal._rawValue;
        v37 = v71.value.illegal._rawValue;
        (*(v40 + 8))(v22, v34, *&v71.is_nil);
        v67 = 0;
        goto LABEL_10;
      }

      (*(v40 + 16))(v19, v22, v34);
      Schema.init(type:)();
      v46 = v58;
      v53 = v64;
      Grammar.init(_:)();
      if (v53)
      {
        (*(v40 + 8))(v22, v34);
        outlined destroy of Constraints?(v33);
        return v46;
      }

      v64 = 0;
      type metadata accessor for EarleyRecognizer();
      v67 = MEMORY[0x223D8D6F0](v46, 0);
      (*(v61 + 8))(v46, v66);
      (*(v40 + 8))(v22, v34);
    }

    else
    {
      if (v38 != *MEMORY[0x277D71B38])
      {
        goto LABEL_36;
      }

      v42 = *(v35 + 96);
      v35 += 96;
      v42(v30, v34);
      v43 = v64;
      Grammar.init(backusNaurForm:prependSpaceToRootRule:)();
      v64 = v43;
      if (v43)
      {
        LODWORD(v38) = swift_unexpectedError();
        __break(1u);
LABEL_39:
        if (v38 != *MEMORY[0x277D71B28] && v38 != *MEMORY[0x277D71B20])
        {
          goto LABEL_42;
        }

        while (1)
        {
LABEL_41:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_42:
          v54 = *(v35 + 8);
          v35 += 8;
          v54(v30, v34);
          v68 = 0;
          v69 = 0xE000000000000000;
          v30 = &v68;
          _StringGuts.grow(_:)(28);

          v68 = 0xD00000000000001ALL;
          v69 = 0x8000000220AFFAD0;
          outlined init with copy of Constraints?(v57, v26);
          v55 = String.init<A>(describing:)();
          MEMORY[0x223D8E780](v55);
        }
      }

      type metadata accessor for EarleyRecognizer();
      v67 = MEMORY[0x223D8D6F0](v12, 0);
      (*(v61 + 8))(v12, v66);
    }

    rawValue = 0;
    v37 = 0;
    goto LABEL_10;
  }

  rawValue = 0;
  v37 = 0;
  v67 = 0;
LABEL_10:
  outlined destroy of Constraints?(v33);
  v38 = (v70)(v62, v63);
  v44 = v38;
  v45 = *(v38 + 2);
  if (!v45)
  {
    v46 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v30 = 0;
  v70 = *(v38 + 2);
  v62 = (v45 - 1);
  v63 = v38 + 48;
  v46 = MEMORY[0x277D84F90];
  v66 = rawValue;
  do
  {
    v65 = v46;
    v47 = &v63[24 * v30];
    v26 = v30;
    while (1)
    {
      if (v26 >= *(v44 + 2))
      {
        __break(1u);
LABEL_36:
        if (v38 == *MEMORY[0x277D71B18])
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

      v35 = *(v47 - 2);
      v48 = *(v47 - 1);
      v49 = *v47;
      v30 = (v26 + 1);
      v50 = (*v47 >> 56) & 0xF;
      if ((*v47 & 0x2000000000000000) == 0)
      {
        v50 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (!v50)
      {
        break;
      }

      if (rawValue)
      {

        v34 = specialized PrefixMatchingTextProcessor.validate(characters:against:)(v48, v49, rawValue, v37);

        if (v34)
        {
          break;
        }
      }

      else
      {
        if (!v67)
        {
          break;
        }

        v34 = specialized PrefixMatchingTextProcessor.validate(characters:against:)(v48, v49);

        rawValue = v66;

        if (v34)
        {
          break;
        }
      }

      v47 += 3;
      ++v26;
      if (v70 == v30)
      {
        v46 = v65;
        goto LABEL_30;
      }
    }

    v46 = v65;
    LODWORD(v38) = swift_isUniquelyReferenced_nonNull_native();
    if ((v38 & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
      v46 = v38;
    }

    v34 = *(v46 + 2);
    v51 = *(v46 + 3);
    if (v34 >= v51 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v34 + 1, 1, v46);
      v46 = v38;
    }

    *(v46 + 2) = v34 + 1;
    *&v46[8 * v34 + 32] = v35;
  }

  while (v62 != v26);
LABEL_30:

  outlined consume of (legal: [String], illegal: [String])?(rawValue, v37);
  return v46;
}

uint64_t outlined init with copy of Constraints?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of (legal: [String], illegal: [String])?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t TokenHealingDecoder.__allocating_init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v6[14] = swift_allocObject();

  return MEMORY[0x2822009F8](TokenHealingDecoder.__allocating_init(processor:overflowConstraints:stopTokenIDs:buildDecoder:), 0, 0);
}

uint64_t TokenHealingDecoder.__allocating_init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = (v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
  v7 = MEMORY[0x277D84F90];
  *v6 = MEMORY[0x277D84F90];
  v6[1] = v7;
  v6[2] = v7;
  *(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;
  outlined init with copy of DeterministicLanguageModelProtocol(v4, v1 + 16);
  v8 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints;
  v0[15] = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v5, v1 + v8, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v9 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs;
  v0[16] = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs;
  *(v1 + v9) = v3;
  v0[7] = v7;
  v10 = swift_task_alloc();
  v0[17] = v10;
  *(v10 + 16) = v0 + 7;
  v13 = (v2 + *v2);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = TokenHealingDecoder.__allocating_init(processor:overflowConstraints:stopTokenIDs:buildDecoder:);

  return (v13)(v0 + 2, partial apply for closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:), v10);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = TokenHealingDecoder.__allocating_init(processor:overflowConstraints:stopTokenIDs:buildDecoder:);
  }

  else
  {
    v2 = TokenHealingDecoder.__allocating_init(processor:overflowConstraints:stopTokenIDs:buildDecoder:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  outlined destroy of [Int](*(v0 + 72), &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  __swift_destroy_boxed_opaque_existential_1(v2);
  outlined init with take of RandomNumberGenerator((v0 + 16), v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
  *(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = *(v0 + 56);
  v3 = *(v0 + 8);
  v4 = *(v0 + 112);

  return v3(v4);
}

{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[8];
  outlined destroy of [Int](v0[9], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  __swift_destroy_boxed_opaque_existential_1(v3);

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  outlined destroy of [Int](v2 + v1, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);

  swift_deallocPartialClassInstance();
  v4 = v0[1];

  return v4();
}

uint64_t TokenHealingDecoder.baseDecoder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder;
  swift_beginAccess();
  return outlined init with copy of DeterministicLanguageModelProtocol(v1 + v3, a1);
}

uint64_t TokenHealingDecoder.baseDecoder.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  outlined init with take of RandomNumberGenerator(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v6[14] = *v5;
  return MEMORY[0x2822009F8](TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:), 0, 0);
}

uint64_t TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = (v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
  v7 = MEMORY[0x277D84F90];
  *v6 = MEMORY[0x277D84F90];
  v6[1] = v7;
  v6[2] = v7;
  *(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;
  outlined init with copy of DeterministicLanguageModelProtocol(v4, v1 + 16);
  v8 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints;
  v0[15] = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v5, v1 + v8, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v9 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs;
  v0[16] = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs;
  *(v1 + v9) = v3;
  v0[7] = v7;
  v10 = swift_task_alloc();
  v0[17] = v10;
  *(v10 + 16) = v0 + 7;
  v13 = (v2 + *v2);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:);

  return (v13)(v0 + 2, closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)partial apply, v10);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:);
  }

  else
  {
    v2 = TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  outlined destroy of [Int](*(v0 + 72), &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  __swift_destroy_boxed_opaque_existential_1(v2);
  outlined init with take of RandomNumberGenerator((v0 + 16), v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
  *(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = *(v0 + 56);
  v3 = *(v0 + 8);
  v4 = *(v0 + 104);

  return v3(v4);
}

{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  outlined destroy of [Int](v0[9], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  __swift_destroy_boxed_opaque_existential_1(v3);

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  outlined destroy of [Int](v2 + v1, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);

  swift_deallocPartialClassInstance();
  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of DeterministicLanguageModelProtocol(a1, v9);
  v5 = type metadata accessor for DelayedMaskedLanguageModel();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  outlined init with take of RandomNumberGenerator(v9, v6 + 24);

  MEMORY[0x223D8E8A0](v7);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  a3[3] = v5;
  a3[4] = &protocol witness table for DelayedMaskedLanguageModel;
  *a3 = v6;
  return result;
}

Swift::Void __swiftcall TokenHealingDecoder.append(prompt:)(TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  if (*(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed))
  {
    __break(1u);
  }

  else
  {
    v3 = *(prompt.queryTokens._rawValue + 1);
    v2 = *(prompt.queryTokens._rawValue + 2);
    v4 = (v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
    *v4 = *prompt.queryTokens._rawValue;
    v4[1] = v3;
    v4[2] = v2;
  }
}

uint64_t TokenHealingDecoder.decodeNextChunk()()
{
  *(v1 + 80) = v0;
  return MEMORY[0x2822009F8](TokenHealingDecoder.decodeNextChunk(), 0, 0);
}

{
  v1 = v0[10];
  if (*(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed))
  {
    if (*(*(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt + 16) + 16))
    {
      *(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt + 16) = MEMORY[0x277D84F90];
      v2 = v0[1];

      return v2();
    }

    else
    {
      v5 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v1 + v5, (v0 + 2));
      v6 = v0[5];
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
      v9 = (*(v7 + 16) + **(v7 + 16));
      v8 = swift_task_alloc();
      v0[12] = v8;
      *v8 = v0;
      v8[1] = TokenHealingDecoder.decodeNextChunk();

      return v9(v6, v7);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = TokenHealingDecoder.decodeNextChunk();

    return TokenHealingDecoder.healPromptTokens()();
  }
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](TokenHealingDecoder.decodeNextChunk(), 0, 0);
  }
}

{
  v1 = v0[10];
  if (*(*(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt + 16) + 16))
  {
    *(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt + 16) = MEMORY[0x277D84F90];
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v1 + v4, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v8 = (*(v6 + 16) + **(v6 + 16));
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = TokenHealingDecoder.decodeNextChunk();

    return v8(v5, v6);
  }
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[14];
  v2 = v0[1];

  return v2(v1);
}

{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenHealingDecoder.decodeNextChunk()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = TokenHealingDecoder.decodeNextChunk();
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = TokenHealingDecoder.decodeNextChunk();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t TokenHealingDecoder.healPromptTokens()()
{
  *(v1 + 920) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v1 + 928) = swift_task_alloc();

  return MEMORY[0x2822009F8](TokenHealingDecoder.healPromptTokens(), 0, 0);
}

{
  v128 = v0;
  v1 = *(v0 + 920);
  v2 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed;
  *(v0 + 936) = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed;
  if (*(v1 + v2))
  {
    goto LABEL_86;
  }

  v3 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt;
  *(v0 + 944) = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt;
  v4 = (v1 + v3);
  v5 = *(v1 + v3);
  *(v0 + 952) = v5;
  if (!*(v5 + 16))
  {
    if (one-time initialization token for healing != -1)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Log.healing);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_220940000, v10, v11, "Skipping token healing because prompt was empty", v12, 2u);
        MEMORY[0x223D90A10](v12, -1, -1);
      }

      v13 = *(v0 + 920);

      v14 = *(v13 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels);
      if (v14 >> 62)
      {
        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v15)
      {
LABEL_27:

        goto LABEL_28;
      }

      v16 = 0;
      v118 = v14 & 0xFFFFFFFFFFFFFF8;
      v121 = v14 & 0xC000000000000001;
      v112 = v15;
      v115 = v14;
      while (v121)
      {
        v18 = MEMORY[0x223D8EEA0](v16, v14);
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_81;
        }

LABEL_16:
        *(v0 + 608) = 0;
        *(v0 + 576) = 0u;
        *(v0 + 592) = 0u;
        if (v18[2])
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 576, v0 + 656, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
        if (*(v0 + 680))
        {
          v124 = v19;
          outlined init with take of RandomNumberGenerator((v0 + 656), v0 + 616);
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 616, v0 + 696);
          outlined init with copy of DeterministicLanguageModelProtocol((v18 + 3), v0 + 736);
          type metadata accessor for MaskedLanguageModel();
          v20 = swift_allocObject();
          *(v20 + 16) = MEMORY[0x277D84F90];
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 696, v20 + 24);
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 736, v20 + 64);
          v21 = *(v0 + 720);
          v22 = *(v0 + 728);
          __swift_project_boxed_opaque_existential_1((v0 + 696), v21);
          v23 = (*(v22 + 8))(v21, v22);
          v24 = *(v0 + 760);
          v25 = *(v0 + 768);
          __swift_project_boxed_opaque_existential_1((v0 + 736), v24);
          v26 = (*(v25 + 8))(v24, v25);
          swift_beginAccess();
          v27 = *(v20 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v20 + 16) = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
            *(v20 + 16) = v27;
          }

          v30 = *(v27 + 2);
          v29 = *(v27 + 3);
          if (v30 >= v29 >> 1)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
          }

          *(v27 + 2) = v30 + 1;
          v31 = &v27[24 * v30];
          *(v31 + 4) = v23;
          *(v31 + 5) = v26;
          *(v31 + 6) = MEMORY[0x277D84F98];
          *(v20 + 16) = v27;
          __swift_destroy_boxed_opaque_existential_1((v0 + 736));
          __swift_destroy_boxed_opaque_existential_1((v0 + 696));
          v32 = v18[2];
          v18[2] = v20;

          outlined consume of DelayedMaskedLanguageModel.MaskResolution(v32);
          v33 = v18[6];
          v34 = v18[7];
          v35 = __swift_project_boxed_opaque_existential_1(v18 + 3, v33);
          v36 = *(v33 - 8);
          v37 = swift_task_alloc();
          (*(v36 + 16))(v37, v35, v33);
          v38 = (*(v34 + 8))(v33, v34);

          (*(v36 + 8))(v37, v33);
          __swift_destroy_boxed_opaque_existential_1((v0 + 616));
          outlined destroy of [Int](v0 + 576, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);

          v15 = v112;
          v14 = v115;
          v19 = v124;
          if (v38)
          {
            goto LABEL_83;
          }
        }

        else
        {
          outlined destroy of [Int](v0 + 576, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          outlined destroy of [Int](v0 + 656, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          v17 = v18[2];
          v18[2] = 1;
          outlined consume of DelayedMaskedLanguageModel.MaskResolution(v17);
        }

        ++v16;
        if (v19 == v15)
        {
          goto LABEL_27;
        }
      }

      if (v16 >= *(v118 + 16))
      {
        goto LABEL_82;
      }

      v18 = *(v14 + 8 * v16 + 32);

      v19 = v16 + 1;
      if (!__OFADD__(v16, 1))
      {
        goto LABEL_16;
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      swift_once();
    }
  }

  v6 = *(v0 + 928);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 16, v0 + 16);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, v6, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v7 = type metadata accessor for OneTokenHealingPrefixMatchingLanguageModel(0);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v8 = OneTokenHealingPrefixMatchingLanguageModel.init(processor:prompt:overflowConstraints:)((v0 + 16), v5, v6);
  *(v0 + 960) = v8;
  v41 = v8;
  if (v8)
  {
    v42 = *(*(v0 + 920) + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels);
    v108 = v5;
    if (v42 >> 62)
    {
      v43 = __CocoaSet.count.getter();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v43)
    {
      v44 = 0;
      v116 = v42 & 0xFFFFFFFFFFFFFF8;
      v119 = v42 & 0xC000000000000001;
      v111 = v41;
      v113 = v7;
      v109 = v43;
      v110 = v42;
      do
      {
        if (v119)
        {
          v46 = MEMORY[0x223D8EEA0](v44, v42);
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_84;
          }
        }

        else
        {
          if (v44 >= *(v116 + 16))
          {
            goto LABEL_85;
          }

          v46 = *(v42 + 8 * v44 + 32);

          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_84;
          }
        }

        *(v0 + 320) = v7;
        *(v0 + 328) = &protocol witness table for OneTokenHealingPrefixMatchingLanguageModel;
        *(v0 + 296) = v41;
        if (v46[2])
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v125 = v47;
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 296, v0 + 376, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
        if (*(v0 + 400))
        {
          outlined init with take of RandomNumberGenerator((v0 + 376), v0 + 336);
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 336, v0 + 416);
          outlined init with copy of DeterministicLanguageModelProtocol((v46 + 3), v0 + 456);
          type metadata accessor for MaskedLanguageModel();
          v48 = swift_allocObject();
          *(v48 + 16) = MEMORY[0x277D84F90];
          v49 = (v48 + 16);
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 416, v48 + 24);
          v122 = v48;
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 456, v48 + 64);
          v50 = *(v0 + 440);
          v51 = *(v0 + 448);
          __swift_project_boxed_opaque_existential_1((v0 + 416), v50);
          v52 = *(v51 + 8);

          v53 = v52(v50, v51);
          v55 = *(v0 + 480);
          v54 = *(v0 + 488);
          __swift_project_boxed_opaque_existential_1((v0 + 456), v55);
          v56 = (*(v54 + 8))(v55, v54);
          swift_beginAccess();
          v57 = *v49;
          v58 = swift_isUniquelyReferenced_nonNull_native();
          *v49 = v57;
          if ((v58 & 1) == 0)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
            *v49 = v57;
          }

          v60 = *(v57 + 2);
          v59 = *(v57 + 3);
          v42 = v110;
          if (v60 >= v59 >> 1)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
          }

          *(v57 + 2) = v60 + 1;
          v61 = &v57[24 * v60];
          *(v61 + 4) = v53;
          *(v61 + 5) = v56;
          *(v61 + 6) = MEMORY[0x277D84F98];
          *(v122 + 16) = v57;
          __swift_destroy_boxed_opaque_existential_1((v0 + 456));
          __swift_destroy_boxed_opaque_existential_1((v0 + 416));
          v62 = v46[2];
          v46[2] = v122;

          outlined consume of DelayedMaskedLanguageModel.MaskResolution(v62);
          v63 = v46[6];
          v64 = v46[7];
          v65 = __swift_project_boxed_opaque_existential_1(v46 + 3, v63);
          v66 = *(v63 - 8);
          v67 = swift_task_alloc();
          (*(v66 + 16))(v67, v65, v63);
          v68 = (*(v64 + 8))(v63, v64);

          (*(v66 + 8))(v67, v63);
          __swift_destroy_boxed_opaque_existential_1((v0 + 336));

          v41 = v111;
          v7 = v113;
          v43 = v109;
          if (v68)
          {
            goto LABEL_87;
          }
        }

        else
        {

          outlined destroy of [Int](v0 + 376, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          v45 = v46[2];
          v46[2] = 1;
          outlined consume of DelayedMaskedLanguageModel.MaskResolution(v45);
        }

        outlined destroy of [Int](v0 + 296, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
        ++v44;
      }

      while (v125 != v43);
    }

    v69 = *(v41 + OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_leadingTokens);
    *(v0 + 968) = v69;

    v70 = swift_task_alloc();
    *(v0 + 976) = v70;
    *v70 = v0;
    v70[1] = TokenHealingDecoder.healPromptTokens();

    return TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:)(v0 + 848, v69, v108);
  }

  else
  {

    if (one-time initialization token for healing != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Log.healing);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_220940000, v72, v73, "Skipping token healing because no healing is possible", v74, 2u);
      MEMORY[0x223D90A10](v74, -1, -1);
    }

    v114 = v4;
    v75 = *(v0 + 920);

    v76 = *(v75 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels);
    if (v76 >> 62)
    {
      v77 = __CocoaSet.count.getter();
    }

    else
    {
      v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v77)
    {
      v78 = 0;
      v123 = v76 & 0xFFFFFFFFFFFFFF8;
      v126 = v76 & 0xC000000000000001;
      v117 = v77;
      v120 = v76;
      do
      {
        if (v126)
        {
          v80 = MEMORY[0x223D8EEA0](v78, v76);
          v81 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v78 >= *(v123 + 16))
          {
            goto LABEL_89;
          }

          v80 = *(v76 + 8 * v78 + 32);

          v81 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            goto LABEL_88;
          }
        }

        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
        if (v80[2])
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 56, v0 + 136, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
        if (*(v0 + 160))
        {
          outlined init with take of RandomNumberGenerator((v0 + 136), v0 + 96);
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 96, v0 + 176);
          outlined init with copy of DeterministicLanguageModelProtocol((v80 + 3), v0 + 216);
          type metadata accessor for MaskedLanguageModel();
          v82 = swift_allocObject();
          *(v82 + 16) = MEMORY[0x277D84F90];
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 176, v82 + 24);
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 216, v82 + 64);
          v83 = *(v0 + 200);
          v84 = *(v0 + 208);
          __swift_project_boxed_opaque_existential_1((v0 + 176), v83);
          v85 = (*(v84 + 8))(v83, v84);
          v86 = *(v0 + 240);
          v87 = *(v0 + 248);
          __swift_project_boxed_opaque_existential_1((v0 + 216), v86);
          v88 = (*(v87 + 8))(v86, v87);
          swift_beginAccess();
          v89 = *(v82 + 16);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          *(v82 + 16) = v89;
          if ((v90 & 1) == 0)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 2) + 1, 1, v89);
            *(v82 + 16) = v89;
          }

          v92 = *(v89 + 2);
          v91 = *(v89 + 3);
          if (v92 >= v91 >> 1)
          {
            v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v89);
          }

          *(v89 + 2) = v92 + 1;
          v93 = &v89[24 * v92];
          *(v93 + 4) = v85;
          *(v93 + 5) = v88;
          *(v93 + 6) = MEMORY[0x277D84F98];
          *(v82 + 16) = v89;
          __swift_destroy_boxed_opaque_existential_1((v0 + 216));
          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          v94 = v80[2];
          v80[2] = v82;

          outlined consume of DelayedMaskedLanguageModel.MaskResolution(v94);
          v95 = v80[6];
          v96 = v80[7];
          v97 = __swift_project_boxed_opaque_existential_1(v80 + 3, v95);
          v98 = *(v95 - 8);
          v99 = swift_task_alloc();
          (*(v98 + 16))(v99, v97, v95);
          v100 = (*(v96 + 8))(v95, v96);

          (*(v98 + 8))(v99, v95);
          __swift_destroy_boxed_opaque_existential_1((v0 + 96));
          outlined destroy of [Int](v0 + 56, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);

          v77 = v117;
          v76 = v120;
          if (v100)
          {
            goto LABEL_90;
          }
        }

        else
        {
          outlined destroy of [Int](v0 + 56, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          v79 = v80[2];
          v80[2] = 1;
          outlined consume of DelayedMaskedLanguageModel.MaskResolution(v79);
        }

        ++v78;
      }

      while (v81 != v77);
    }

    v101 = *(v0 + 920);

    v102 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v101 + v102, v0 + 256);
    v103 = *(v0 + 280);
    v104 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), v103);
    v105 = v114[1];
    v106 = v114[2];
    v127[0] = *v114;
    v127[1] = v105;
    v127[2] = v106;
    v107 = *(v104 + 8);

    v107(v127, v103, v104);

    __swift_destroy_boxed_opaque_existential_1((v0 + 256));
LABEL_28:
    *(*(v0 + 920) + *(v0 + 936)) = 1;

    v39 = *(v0 + 8);

    return v39();
  }
}

{
  *(*v1 + 984) = v0;

  if (v0)
  {
    v2 = TokenHealingDecoder.healPromptTokens();
  }

  else
  {
    v2 = TokenHealingDecoder.healPromptTokens();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v38 = v0;
  v1 = *(v0 + 920);
  v2 = v1 + *(v0 + 944);
  v3 = *(v0 + 864);
  *v2 = *(v0 + 848);
  *(v2 + 16) = v3;

  v4 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder;
  swift_beginAccess();
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + v4, v0 + 496);
  v5 = *(v0 + 520);
  v6 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1((v0 + 496), v5);
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v36[0] = *v2;
  v36[1] = v7;
  v36[2] = v8;
  v9 = *(v6 + 8);

  v9(v36, v5, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + 496));
  if (one-time initialization token for healing != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.healing);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      break;
    }

    v13 = *(v0 + 920);
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v14 = 136642819;
    v2 = *(v2 + 16);
    outlined init with copy of DeterministicLanguageModelProtocol(v13 + 16, v0 + 536);
    v15 = *(v2 + 16);
    v16 = MEMORY[0x277D84F90];
    if (!v15)
    {
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1((v0 + 536));
      v27 = MEMORY[0x223D8E8D0](v16, MEMORY[0x277D837D0]);
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v37);

      *(v14 + 4) = v30;
      _os_log_impl(&dword_220940000, v11, v12, "Boundary overflow tokens: %{sensitive}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223D90A10](v35, -1, -1);
      MEMORY[0x223D90A10](v14, -1, -1);
      break;
    }

    v34 = v12;
    v36[0] = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v17 = 0;
    v16 = v36[0];
    while (v17 < *(v2 + 16))
    {
      v18 = *(v2 + 8 * v17 + 32);
      v19 = *(v0 + 560);
      v20 = *(v0 + 568);
      __swift_project_boxed_opaque_existential_1((v0 + 536), v19);
      v21 = (*(v20 + 24))(v18, v19, v20);
      v36[0] = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        v33 = v21;
        v26 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v33;
        v16 = v36[0];
      }

      ++v17;
      *(v16 + 16) = v24 + 1;
      v25 = v16 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      if (v15 == v17)
      {

        v12 = v34;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  *(*(v0 + 920) + *(v0 + 936)) = 1;

  v31 = *(v0 + 8);

  return v31();
}

{

  *(v0[115] + v0[117]) = 1;

  v1 = v0[1];

  return v1();
}

uint64_t TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  return MEMORY[0x2822009F8](TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:), 0, 0);
}

uint64_t TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:)()
{
  v84 = v0;
  if (one-time initialization token for healing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 296) = __swift_project_value_buffer(v1, static Log.healing);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(*(v5 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt) + 16);

    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v6 + 16);

    _os_log_impl(&dword_220940000, v2, v3, "Healing prompt from %ld to %ld token(s)", v7, 0x16u);
    MEMORY[0x223D90A10](v7, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt;
  *(v0 + 304) = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt;
  v11 = v8 + v10;
  v12 = *(v11 + 8);
  *(v0 + 312) = v12;
  v13 = *(v11 + 16);
  *(v0 + 320) = v13;
  v14 = *(v8 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels);

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_42;
  }

LABEL_8:
  v9 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_44:

    v16 = MEMORY[0x223D8EEA0](v9, v14);

    goto LABEL_13;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = *(v14 + 8 * v9 + 32);

LABEL_13:
  *(v0 + 328) = v16;
  v17 = v16[6];
  v18 = v16[7];
  v19 = __swift_project_boxed_opaque_existential_1(v16 + 3, v17);
  v20 = *(v17 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v17);
  v22 = (*(v18 + 8))(v17, v18);
  (*(v20 + 8))(v21, v17);

  v23 = v16[2];
  if (!v23)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v23 == 1)
  {
    v24 = *(v0 + 272);
    outlined init with copy of DeterministicLanguageModelProtocol((v16 + 3), v0 + 176);
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v25);
    v81 = v24;
    v82 = v12;
    v83 = v13;
    v27 = (*(v26 + 64))(v22, &v81, v25, v26);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  else
  {
    v81 = *(v0 + 272);
    v82 = v12;
    v83 = v13;

    v86.queryTokens._rawValue = &v81;
    v27 = MaskedLanguageModel.node(forPreviousNode:prompt:)(v22, v86);
    outlined consume of DelayedMaskedLanguageModel.MaskResolution(v23);
  }

  v28 = *(v0 + 280);
  v29 = *(v0 + 288);
  v30 = v29[5];
  v31 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v30);
  v32 = (*(v31 + 16))(v28, v30, v31);
  *(v0 + 336) = v32;
  *(v0 + 344) = v33;
  v34 = v32;
  v35 = v33;
  v36 = *(v0 + 272);
  v37 = v29[5];
  v38 = v29[6];
  __swift_project_boxed_opaque_existential_1(v29 + 2, v37);
  v39 = (*(v38 + 16))(v36, v37, v38);
  v41 = v40;
  *(v0 + 352) = OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs;

  v42._countAndFlagsBits = v34;
  v42._object = v35;
  v43 = String.hasPrefix(_:)(v42);
  v44 = *(v0 + 272);
  if (v43)
  {
    goto LABEL_23;
  }

  *(v0 + 376) = v39;
  *(v0 + 384) = v27;
  *(v0 + 360) = v44;
  *(v0 + 368) = v41;
  v45 = String.count.getter();
  if (String.count.getter() < v45)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_220940000, v46, v47, "Token healing failure, could not regenerate prefix", v48, 2u);
      MEMORY[0x223D90A10](v48, -1, -1);
    }

LABEL_23:
    v49 = *(v0 + 336);
    v50 = *(v0 + 344);
    v51 = *(*(v0 + 288) + *(v0 + 304) + 8);

    v79 = TokenHealingDecoder.proceedingCharacterTokens(sourceText:targetText:)(v49, v50, v39, v41);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_36;
    }

    v55 = *(v0 + 304);
    v56 = *(v0 + 288);
    v57 = *(v0 + 272);
    v58 = swift_slowAlloc();
    result = swift_slowAlloc();
    v78 = result;
    v81 = result;
    *v58 = 136643075;
    v59 = *(v57 + 16);
    if (*(*(v56 + v55) + 16) >= v59)
    {

      v60 = ArraySlice.description.getter();
      v62 = v61;

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v81);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2085;
      if (*(v44 + 16) >= v59)
      {

        v64 = ArraySlice.description.getter();
        v66 = v65;

        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v81);

        *(v58 + 14) = v67;
        _os_log_impl(&dword_220940000, v52, v53, "Healed from %{sensitive}s to %{sensitive}s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v78, -1, -1);
        MEMORY[0x223D90A10](v58, -1, -1);
LABEL_36:

        v75 = *(v0 + 264);
        *v75 = v44;
        v75[1] = v51;
        v75[2] = v79;

        v76 = *(v0 + 8);

        return v76();
      }

LABEL_48:
      __break(1u);
      return result;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v68 = *(v0 + 328);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v69 = swift_allocObject();
  *(v0 + 392) = v69;
  *(v69 + 16) = xmmword_220AE8A30;
  *(v69 + 32) = v27;
  v70 = *(v68 + 16);
  *(v0 + 400) = v70;
  if (!v70)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v71 = v69;
  if (v70 == 1)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v68 + 24, v0 + 136);
    v72 = *(v0 + 160);
    v73 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v72);
    v80 = (*(v73 + 24) + **(v73 + 24));
    v74 = swift_task_alloc();
    *(v0 + 424) = v74;
    *v74 = v0;
    v74[1] = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);

    return v80(v71, v0 + 56, 1, v72, v73);
  }

  else
  {

    v77 = swift_task_alloc();
    *(v0 + 408) = v77;
    *v77 = v0;
    v77[1] = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);

    return MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(v71, v0 + 56, 1);
  }
}

{
  v80 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  v1 = *(v0 + 248);
  if (!*(v1 + 16))
  {
    goto LABEL_56;
  }

  v2 = *(v0 + 432);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 32, v0 + 16);

  outlined destroy of [Int](v0 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = (*(v4 + 32))(v3, v4);
  if (v6)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_220940000, v7, v8, "Token healing failure, reached termination of language model", v9, 2u);
      MEMORY[0x223D90A10](v9, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v10 = *(v0 + 368);
    v11 = *(v0 + 376);
    v12 = *(v0 + 360);
    goto LABEL_6;
  }

  v17 = v5;
  v18 = *(v0 + 328);

  v19 = *(v18 + 16);
  if (!v19)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v19 == 1)
  {
    v20 = *(v0 + 384);
    outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 328) + 24, v0 + 96);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v21);
    v23 = (*(v22 + 16))(v20, v17, 1, v21, v22);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  }

  else
  {
    v40 = *(v0 + 384);

    v23 = MaskedLanguageModel.node(forPreviousNode:token:isPrompt:)(v40, v17, 1);
    outlined consume of DelayedMaskedLanguageModel.MaskResolution(v19);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, *(v0 + 360));
  }

  v43 = *(v12 + 2);
  v42 = *(v12 + 3);
  if (v43 >= v42 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v12);
  }

  v44 = *(v0 + 288);
  *(v12 + 2) = v43 + 1;
  *&v12[8 * v43 + 32] = v17;
  v45 = v44[5];
  v46 = v44[6];
  __swift_project_boxed_opaque_existential_1(v44 + 2, v45);
  v47 = *(v46 + 16);

  v49 = v47(v48, v45, v46);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_23;
  }

  v11 = v49;
  v10 = v50;
  v52 = *(v0 + 352);
  v53 = *(v0 + 288);

  v54 = *(v53 + v52);
  if (v54)
  {
    v55 = *(v54 + 16);

    v56 = specialized Sequence.suffix(_:)(v55, v12);
    if (*(v56 + 16) == v55)
    {
      if (v55 && v56 != v54)
      {
        v57 = (v56 + 32);
        v58 = (v54 + 32);
        v59 = *(v54 + 16);
        while (v59)
        {
          if (*v57 != *v58)
          {
            goto LABEL_37;
          }

          ++v58;
          ++v57;
          --v59;
          if (!--v55)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_54;
      }

LABEL_32:

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v2 = 0;
LABEL_6:
      v13 = *(v0 + 336);
      v14 = *(v0 + 344);
      v15 = *(*(v0 + 288) + *(v0 + 304) + 8);

      v16 = TokenHealingDecoder.proceedingCharacterTokens(sourceText:targetText:)(v13, v14, v11, v10);
      if (v2)
      {

        swift_bridgeObjectRelease_n();

LABEL_23:

        v51 = *(v0 + 8);
LABEL_34:

        return v51();
      }

      v77 = v16;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v24, v25))
      {
LABEL_33:

        v60 = *(v0 + 264);
        *v60 = v12;
        v60[1] = v15;
        v60[2] = v77;

        v51 = *(v0 + 8);
        goto LABEL_34;
      }

      v26 = *(v0 + 304);
      v27 = *(v0 + 288);
      v28 = *(v0 + 272);
      v29 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v29 = 136643075;
      v30 = *(v28 + 16);
      if (*(*(v27 + v26) + 16) >= v30)
      {

        v31 = ArraySlice.description.getter();
        v33 = v32;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v79);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2085;
        if (*(v12 + 2) >= v30)
        {

          v35 = ArraySlice.description.getter();
          v37 = v36;

          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v79);

          *(v29 + 14) = v38;
          _os_log_impl(&dword_220940000, v24, v25, "Healed from %{sensitive}s to %{sensitive}s", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D90A10](v76, -1, -1);
          MEMORY[0x223D90A10](v29, -1, -1);
          goto LABEL_33;
        }

        goto LABEL_55;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:

      __break(1u);
      return result;
    }

LABEL_37:
  }

  v62 = *(v0 + 336);
  v61 = *(v0 + 344);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v63._countAndFlagsBits = v62;
  v63._object = v61;
  if (String.hasPrefix(_:)(v63))
  {
    v2 = 0;
    goto LABEL_6;
  }

  *(v0 + 376) = v11;
  *(v0 + 384) = v23;
  *(v0 + 360) = v12;
  *(v0 + 368) = v10;
  v64 = String.count.getter();
  if (String.count.getter() < v64)
  {
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_220940000, v65, v66, "Token healing failure, could not regenerate prefix", v67, 2u);
      MEMORY[0x223D90A10](v67, -1, -1);
    }

    v2 = 0;
    goto LABEL_6;
  }

  v68 = *(v0 + 328);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v69 = swift_allocObject();
  *(v0 + 392) = v69;
  *(v69 + 16) = xmmword_220AE8A30;
  *(v69 + 32) = v23;
  v70 = *(v68 + 16);
  *(v0 + 400) = v70;
  if (!v70)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v71 = v69;
  if (v70 == 1)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v68 + 24, v0 + 136);
    v72 = *(v0 + 160);
    v73 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v72);
    v78 = (*(v73 + 24) + **(v73 + 24));
    v74 = swift_task_alloc();
    *(v0 + 424) = v74;
    *v74 = v0;
    v74[1] = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);

    return v78(v71, v0 + 56, 1, v72, v73);
  }

  else
  {

    v75 = swift_task_alloc();
    *(v0 + 408) = v75;
    *v75 = v0;
    v75[1] = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);

    return MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(v71, v0 + 56, 1);
  }
}

{
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  outlined destroy of [Int](v0 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v80 = v0;
  outlined consume of DelayedMaskedLanguageModel.MaskResolution(*(v0 + 400));
  v1 = *(v0 + 224);
  if (!*(v1 + 16))
  {
    goto LABEL_56;
  }

  v2 = *(v0 + 416);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 32, v0 + 16);

  outlined destroy of [Int](v0 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = (*(v4 + 32))(v3, v4);
  if (v6)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_220940000, v7, v8, "Token healing failure, reached termination of language model", v9, 2u);
      MEMORY[0x223D90A10](v9, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v10 = *(v0 + 368);
    v11 = *(v0 + 376);
    v12 = *(v0 + 360);
    goto LABEL_6;
  }

  v17 = v5;
  v18 = *(v0 + 328);

  v19 = *(v18 + 16);
  if (!v19)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v19 == 1)
  {
    v20 = *(v0 + 384);
    outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 328) + 24, v0 + 96);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v21);
    v23 = (*(v22 + 16))(v20, v17, 1, v21, v22);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  }

  else
  {
    v40 = *(v0 + 384);

    v23 = MaskedLanguageModel.node(forPreviousNode:token:isPrompt:)(v40, v17, 1);
    outlined consume of DelayedMaskedLanguageModel.MaskResolution(v19);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, *(v0 + 360));
  }

  v43 = *(v12 + 2);
  v42 = *(v12 + 3);
  if (v43 >= v42 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v12);
  }

  v44 = *(v0 + 288);
  *(v12 + 2) = v43 + 1;
  *&v12[8 * v43 + 32] = v17;
  v45 = v44[5];
  v46 = v44[6];
  __swift_project_boxed_opaque_existential_1(v44 + 2, v45);
  v47 = *(v46 + 16);

  v49 = v47(v48, v45, v46);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_23;
  }

  v11 = v49;
  v10 = v50;
  v52 = *(v0 + 352);
  v53 = *(v0 + 288);

  v54 = *(v53 + v52);
  if (v54)
  {
    v55 = *(v54 + 16);

    v56 = specialized Sequence.suffix(_:)(v55, v12);
    if (*(v56 + 16) == v55)
    {
      if (v55 && v56 != v54)
      {
        v57 = (v56 + 32);
        v58 = (v54 + 32);
        v59 = *(v54 + 16);
        while (v59)
        {
          if (*v57 != *v58)
          {
            goto LABEL_37;
          }

          ++v58;
          ++v57;
          --v59;
          if (!--v55)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_54;
      }

LABEL_32:

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v2 = 0;
LABEL_6:
      v13 = *(v0 + 336);
      v14 = *(v0 + 344);
      v15 = *(*(v0 + 288) + *(v0 + 304) + 8);

      v16 = TokenHealingDecoder.proceedingCharacterTokens(sourceText:targetText:)(v13, v14, v11, v10);
      if (v2)
      {

        swift_bridgeObjectRelease_n();

LABEL_23:

        v51 = *(v0 + 8);
LABEL_34:

        return v51();
      }

      v77 = v16;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v24, v25))
      {
LABEL_33:

        v60 = *(v0 + 264);
        *v60 = v12;
        v60[1] = v15;
        v60[2] = v77;

        v51 = *(v0 + 8);
        goto LABEL_34;
      }

      v26 = *(v0 + 304);
      v27 = *(v0 + 288);
      v28 = *(v0 + 272);
      v29 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v29 = 136643075;
      v30 = *(v28 + 16);
      if (*(*(v27 + v26) + 16) >= v30)
      {

        v31 = ArraySlice.description.getter();
        v33 = v32;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v79);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2085;
        if (*(v12 + 2) >= v30)
        {

          v35 = ArraySlice.description.getter();
          v37 = v36;

          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v79);

          *(v29 + 14) = v38;
          _os_log_impl(&dword_220940000, v24, v25, "Healed from %{sensitive}s to %{sensitive}s", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D90A10](v76, -1, -1);
          MEMORY[0x223D90A10](v29, -1, -1);
          goto LABEL_33;
        }

        goto LABEL_55;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:

      __break(1u);
      return result;
    }

LABEL_37:
  }

  v62 = *(v0 + 336);
  v61 = *(v0 + 344);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v63._countAndFlagsBits = v62;
  v63._object = v61;
  if (String.hasPrefix(_:)(v63))
  {
    v2 = 0;
    goto LABEL_6;
  }

  *(v0 + 376) = v11;
  *(v0 + 384) = v23;
  *(v0 + 360) = v12;
  *(v0 + 368) = v10;
  v64 = String.count.getter();
  if (String.count.getter() < v64)
  {
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_220940000, v65, v66, "Token healing failure, could not regenerate prefix", v67, 2u);
      MEMORY[0x223D90A10](v67, -1, -1);
    }

    v2 = 0;
    goto LABEL_6;
  }

  v68 = *(v0 + 328);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v69 = swift_allocObject();
  *(v0 + 392) = v69;
  *(v69 + 16) = xmmword_220AE8A30;
  *(v69 + 32) = v23;
  v70 = *(v68 + 16);
  *(v0 + 400) = v70;
  if (!v70)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v71 = v69;
  if (v70 == 1)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v68 + 24, v0 + 136);
    v72 = *(v0 + 160);
    v73 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v72);
    v78 = (*(v73 + 24) + **(v73 + 24));
    v74 = swift_task_alloc();
    *(v0 + 424) = v74;
    *v74 = v0;
    v74[1] = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);

    return v78(v71, v0 + 56, 1, v72, v73);
  }

  else
  {

    v75 = swift_task_alloc();
    *(v0 + 408) = v75;
    *v75 = v0;
    v75[1] = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);

    return MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(v71, v0 + 56, 1);
  }
}

{
  outlined consume of DelayedMaskedLanguageModel.MaskResolution(*(v0 + 400));
  outlined destroy of [Int](v0 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:)(uint64_t a1)
{
  v3 = *v2;
  v3[27] = v2;
  v3[28] = a1;
  v3[29] = v1;
  v3[52] = v1;

  if (v1)
  {

    v4 = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);
  }

  else
  {
    v4 = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v3 = *v2;
  v3[30] = v2;
  v3[31] = a1;
  v3[32] = v1;
  v3[54] = v1;

  if (v1)
  {

    v4 = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);
  }

  else
  {
    v4 = TokenHealingDecoder.decodeUntilPromptRegenerated(leadingTokens:originalPromptTokens:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t specialized Sequence.suffix(_:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v16 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v16;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v8 = 32;
  do
  {
    v10 = *(a2 + v8);
    v11 = *(v16 + 16);
    if (v11 < v3)
    {
      v9 = *(v16 + 24);
      if (v11 >= v9 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v11 + 1, 1);
      }

      *(v16 + 16) = v11 + 1;
      *(v16 + 8 * v11 + 32) = v10;
    }

    else
    {
      if (v7 >= v11)
      {
        __break(1u);
        goto LABEL_27;
      }

      *(v16 + 8 * v7 + 32) = v10;
      if ((v7 + 1) < v3)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v8 += 8;
    --v6;
  }

  while (v6);

  if (!v7)
  {
    return v5;
  }

  v12 = *(v16 + 16);
  v15 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
  if (v12 >= v7)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v13 = *(v16 + 16);
    if (v13 >= v7 && v13 >= v12)
    {

      specialized ContiguousArray.append<A>(contentsOf:)(v14, v16 + 32, v7, (2 * v12) | 1);
      specialized ContiguousArray.append<A>(contentsOf:)(v16, v16 + 32, 0, (2 * v7) | 1);
      return v15;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

char *TokenHealingDecoder.proceedingCharacterTokens(sourceText:targetText:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = String.hasPrefix(_:)(*&a1);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1;
  }

  v15 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v15 = 11;
  }

  v16 = v15 | (v14 << 16);

  v17 = specialized Collection.suffix(from:)(v16, a3, a4);
  v19 = v18;
  v52 = v20;
  v22 = v21;

  if (!((v17 ^ v19) >> 14))
  {
    goto LABEL_7;
  }

  v24 = v7[5];
  v25 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v24);
  if ((*(v25 + 56))(v24, v25))
  {
    v13 = v7[5];
    v26 = v7[6];
    __swift_project_boxed_opaque_existential_1(v7 + 2, v13);
    v27 = MEMORY[0x223D8E730](v17, v19, v52, v22);
    v29 = v28;

    v30 = (*(v26 + 8))(v27, v29, v13, v26);
    if (!v6)
    {
      v13 = v30;
    }

    goto LABEL_7;
  }

  v31 = Substring.distance(from:to:)();
  if (!v31)
  {
LABEL_7:

    return v13;
  }

  v32 = v31;
  v51 = v7;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0);
  if (v32 < 0)
  {
    goto LABEL_38;
  }

  v33 = 0;
  while (1)
  {
    v34 = v32;
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v37 = Substring.subscript.getter();
    v38 = v36;
    if ((v37 != 32 || v36 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v37 == 9 && v38 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v42 = v51[5];
        v43 = v51[6];
        __swift_project_boxed_opaque_existential_1(v51 + 2, v42);
        v44 = *(v43 + 32);
        v45 = 0x3E393078303CLL;
        goto LABEL_24;
      }

      if (v37 == 10 && v38 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v42 = v51[5];
        v43 = v51[6];
        __swift_project_boxed_opaque_existential_1(v51 + 2, v42);
        v44 = *(v43 + 32);
        v45 = 0x3E413078303CLL;
LABEL_24:
        v46 = 0xE600000000000000;
      }

      else
      {
        v42 = v51[5];
        v43 = v51[6];
        __swift_project_boxed_opaque_existential_1(v51 + 2, v42);
        v44 = *(v43 + 32);
        v45 = v37;
        v46 = v38;
      }

      v41 = v44(v45, v46, v42, v43);
      goto LABEL_26;
    }

    v40 = v51[5];
    v39 = v51[6];
    __swift_project_boxed_opaque_existential_1(v51 + 2, v40);
    v41 = (*(v39 + 32))(8492770, 0xA300000000000000, v40, v39);
LABEL_26:
    v47 = v41;

    v49 = *(v13 + 16);
    v48 = *(v13 + 24);
    if (v49 >= v48 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
    }

    *(v13 + 16) = v49 + 1;
    *(v13 + 8 * v49 + 32) = v47;
    result = Substring.index(after:)();
    ++v33;
    v50 = v35 == v34;
    v32 = v34;
    if (v50)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t TokenHealingDecoder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  outlined destroy of [Int](v0 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder));

  return v0;
}

uint64_t TokenHealingDecoder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  outlined destroy of [Int](v0 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder));

  return swift_deallocClassInstance();
}

uint64_t *protocol witness for SamplingDecoder.append(prompt:) in conformance TokenHealingDecoder(uint64_t *result)
{
  v2 = *v1;
  if (*(*v1 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed))
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    v3 = result[2];
    v5 = (v2 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
    *v5 = *result;
    v5[1] = v4;
    v5[2] = v3;
  }

  return result;
}

uint64_t protocol witness for SamplingDecoder.decodeNextChunk() in conformance TokenHealingDecoder()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return TokenHealingDecoder.decodeNextChunk()();
}

void type metadata completion function for TokenHealingDecoder(uint64_t a1)
{
  type metadata accessor for Constraints?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of TokenHealingDecoder.__allocating_init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(v5 + 136) + **(v5 + 136));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = dispatch thunk of SamplingDecoder.decodeNextChunk();

  return v14(a1, a2, a3, a4, a5);
}

void type metadata accessor for Constraints?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Constraints?)
  {
    type metadata accessor for Constraints();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Constraints?);
    }
  }
}

char *specialized ContiguousArray.append<A>(contentsOf:)(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v6 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v12 = *(v11 + 24) >> 1;
  if (v12 < v8)
  {
    goto LABEL_19;
  }

  if (v9 == v5)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      if (v7 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v7;
      }

LABEL_11:
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1);
      v11 = *v4;
      v12 = *(*v4 + 24) >> 1;
      if (v9 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v14 = *(v11 + 16);
  if (v12 - v14 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 8 * v14 + 32), (v6 + 8 * v5), 8 * v10);
    if (v10 <= 0)
    {
LABEL_16:
      result = swift_unknownObjectRelease();
      *v4 = v11;
      return result;
    }

    v15 = *(v11 + 16);
    v16 = __OFADD__(v15, v10);
    v17 = v15 + v10;
    if (!v16)
    {
      *(v11 + 16) = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.suffix(from:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v28;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[5];
      v24 = v4[4];
      v25 = v5;
      v6 = v4[7];
      v26 = v4[6];
      v27 = v6;
      v7 = v4[1];
      v20 = *v4;
      v21 = v7;
      v8 = v4[3];
      v22 = v4[2];
      v23 = v8;
      outlined init with copy of ProcessedImage(&v20, &v17);
      v28 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v2 = v28;
      }

      v18 = &type metadata for ProcessedImage;
      v19 = &protocol witness table for ProcessedImage;
      v11 = swift_allocObject();
      *&v17 = v11;
      v12 = v25;
      v11[5] = v24;
      v11[6] = v12;
      v13 = v27;
      v11[7] = v26;
      v11[8] = v13;
      v14 = v21;
      v11[1] = v20;
      v11[2] = v14;
      v15 = v23;
      v11[3] = v22;
      v11[4] = v15;
      *(v2 + 16) = v10 + 1;
      outlined init with take of RandomNumberGenerator(&v17, v2 + 40 * v10 + 32);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v15 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v5 = v10;
        v2 = v15;
      }

      v13 = &type metadata for TopK2LogitCollection;
      v14 = &protocol witness table for TopK2LogitCollection;
      v11 = v5;
      v12 = v6;
      *(v2 + 16) = v8 + 1;
      outlined init with take of RandomNumberGenerator(&v11, v2 + 40 * v8 + 32);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SStMd, &_sSi_SStMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi7tokenID_SS9remainingtMd, &_sSi7tokenID_SS9remainingtMR);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.__allocating_init(tokenizer:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 32) = 1;
  *(result + 40) = 0;
  *(result + 48) = 513;
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.init(tokenizer:)(uint64_t a1)
{
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 513;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerPrefixMatchingTextProcessor.decode(possiblyUnknownTokenIDs:)(Swift::OpaquePointer possiblyUnknownTokenIDs)
{
  v1 = *(possiblyUnknownTokenIDs._rawValue + 2);
  if (v1)
  {
    v2 = (possiblyUnknownTokenIDs._rawValue + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v2++;
      v6 = v7;
      possiblyUnknownTokenIDs._rawValue = TokenizerRunnerPrefixMatchingTextProcessor.vocabularyCount.getter(possiblyUnknownTokenIDs._rawValue);
      if (v7 < possiblyUnknownTokenIDs._rawValue)
      {
        possiblyUnknownTokenIDs._rawValue = swift_isUniquelyReferenced_nonNull_native();
        if ((possiblyUnknownTokenIDs._rawValue & 1) == 0)
        {
          possiblyUnknownTokenIDs._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
        }

        v5 = *(v3 + 16);
        v4 = *(v3 + 24);
        if (v5 >= v4 >> 1)
        {
          possiblyUnknownTokenIDs._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
        }

        *(v3 + 16) = v5 + 1;
        *(v3 + 8 * v5 + 32) = v6;
      }

      --v1;
    }

    while (v1);
  }

  v8 = dispatch thunk of TokenizerRunner.detokenize(_:)();
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.vocabularyCount.getter(uint64_t a1)
{
  if (*(v1 + 48) != 1)
  {
    return *(v1 + 40);
  }

  result = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  *(v1 + 40) = result;
  *(v1 + 48) = 0;
  return result;
}

Swift::String __swiftcall TokenizerRunnerPrefixMatchingTextProcessor.text(forTokenID:)(Swift::Int forTokenID)
{
  v1 = dispatch thunk of TokenizerRunner.text(forTokenID:)();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.longestTokenLength.getter()
{
  if (*(v0 + 32) != 1)
  {
    return *(v0 + 24);
  }

  result = dispatch thunk of TokenizerRunner.longestTokenLength.getter();
  *(v0 + 24) = result;
  *(v0 + 32) = 0;
  return result;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.longestTokenLength.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 32) = 0;
  return result;
}

uint64_t (*TokenizerRunnerPrefixMatchingTextProcessor.longestTokenLength.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = TokenizerRunnerPrefixMatchingTextProcessor.longestTokenLength.getter();
  return TokenizerRunnerPrefixMatchingTextProcessor.longestTokenLength.modify;
}

void *TokenizerRunnerPrefixMatchingTextProcessor.longestTokenLength.modify(void *result)
{
  v1 = result[1];
  *(v1 + 24) = *result;
  *(v1 + 32) = 0;
  return result;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.vocabularyCount.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 48) = 0;
  return result;
}

uint64_t (*TokenizerRunnerPrefixMatchingTextProcessor.vocabularyCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = TokenizerRunnerPrefixMatchingTextProcessor.vocabularyCount.getter(a1);
  return TokenizerRunnerPrefixMatchingTextProcessor.vocabularyCount.modify;
}

void *TokenizerRunnerPrefixMatchingTextProcessor.vocabularyCount.modify(void *result)
{
  v1 = result[1];
  *(v1 + 40) = *result;
  *(v1 + 48) = 0;
  return result;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.isContinuationTokenizer.getter()
{
  v1 = *(v0 + 49);
  if (v1 == 2)
  {
    LOBYTE(v1) = closure #1 in TokenizerRunnerPrefixMatchingTextProcessor.isContinuationTokenizer.getter();
    *(v0 + 49) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t closure #1 in TokenizerRunnerPrefixMatchingTextProcessor.isContinuationTokenizer.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220AE8A30;
  *(v0 + 32) = dispatch thunk of TokenizerRunner.tokenID(forText:)();
  v1 = dispatch thunk of TokenizerRunner.detokenize(_:)();
  v3 = v2;

  if (v1 == 24864 && v3 == 0xE200000000000000)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      if (one-time initialization token for healing != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Log.healing);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        v10 = 0;
        goto LABEL_18;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_220940000, v7, v8, "Non-continuation tokenizer with token healing: results may be unexpected", v9, 2u);
      v10 = 0;
      goto LABEL_15;
    }
  }

  if (one-time initialization token for healing != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.healing);
  v7 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v7, v12))
  {
    v10 = 1;
    goto LABEL_18;
  }

  v9 = swift_slowAlloc();
  *v9 = 0;
  _os_log_impl(&dword_220940000, v7, v12, "Detected continuation tokenizer", v9, 2u);
  v10 = 1;
LABEL_15:
  MEMORY[0x223D90A10](v9, -1, -1);
LABEL_18:

  return v10;
}

uint64_t (*TokenizerRunnerPrefixMatchingTextProcessor.isContinuationTokenizer.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = TokenizerRunnerPrefixMatchingTextProcessor.isContinuationTokenizer.getter() & 1;
  return TokenizerRunnerPrefixMatchingTextProcessor.isContinuationTokenizer.modify;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.prefixTokenIDs(forPrefix:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = specialized _arrayForceCast<A, B>(_:)(v3);

  return v4;
}

uint64_t TokenizerRunnerPrefixMatchingTextProcessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PrefixMatchingTextProcessor.prefixTokenIDs(forPrefix:) in conformance TokenizerRunnerPrefixMatchingTextProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a5(a1, a2, a3, a4);
  v6 = specialized _arrayForceCast<A, B>(_:)(v5);

  return v6;
}

uint64_t cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase::AJAXE5MLModelBase(uint64_t a1)
{
  return (*(*a1 + 8))(a1);
}

{
  return (*(*a1 + 8))(a1);
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v17);
  std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](v17);
    v12 = v11;
    v13 = std::__width_estimation_table::__estimated_width[abi:ne200100](v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

void cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(E5RT::ExecutionStreamOperation const&)::$_0::operator()(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_220940000, log, OS_LOG_TYPE_ERROR, "No preferred buffer type for port. Falling back to IOSurface.", buf, 2u);
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](unsigned __int8 **a1, _DWORD *a2, _BYTE *a3)
{
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](a1);
  v6 = v5 & 0x7FFFFFFF;
  v7 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v5 & 0x7FFFFFFF);
  v8 = v7;
  result = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](a2, v6, v7);
  *a2 = v6;
  *a3 = v8;
  return result;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::ANEAJAXE5MLModel(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&dword_220940000, log, OS_LOG_TYPE_DEBUG, "Model vocab size: %zu, max context length: %zu", &v5, 0x16u);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::singleExtend()
{
  __assert_rtn("singleExtend", "ane_ajax_e5ml_model.mm", 401, "tokenMasks.empty() || (tokenMasks.size() == tokens.size())");
}

{
  __assert_rtn("singleExtend", "ane_ajax_e5ml_model.mm", 400, "!mInDynamicState && Inference cannot be run while in dynamic state");
}

{
  __assert_rtn("singleExtend", "ane_ajax_e5ml_model.mm", 399, "tokens.size() >= startTokenOffset");
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::singleExtend(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_220940000, a2, OS_LOG_TYPE_DEBUG, "Setting ANE qos_class request to %u", v2, 8u);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::setKVCacheEntry()
{
  __assert_rtn("setKVCacheEntry", "ane_ajax_e5ml_model.mm", 327, "startIndex == mContextTokens.size()");
}

{
  __assert_rtn("setKVCacheEntry", "ane_ajax_e5ml_model.mm", 328, "tokens.size() == tokenMasks.size()");
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void cgm::token_generation_inference::ajax::EnumeratedShapeAJAXE5MLModel::switchExtendModule(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_220940000, log, OS_LOG_TYPE_DEBUG, "Switching extend module from size %zu to size %zu", buf, 0x16u);
}

void ___ZN23ImageEmbeddingsProvider13getEmbeddingsEi_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x277D85DE8]);
  LODWORD(v7) = 136315138;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_1_0(&dword_220940000, v1, v2, "%s", v3, v4, v5, v6, v7, DWORD2(v7));
}

void cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL()
{
  if (__cxa_guard_acquire(byte_2812BEF68))
  {
    _MergedGlobals = os_log_create("com.apple.tokengeneration", "OnDeviceLanguageModel");

    __cxa_guard_release(byte_2812BEF68);
  }
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Prompt.RenderedPromptFragment.renderedText()()
{
  v0 = MEMORY[0x2821DA120]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Overridable<A>.init(key:)()
{
  return MEMORY[0x2821DA300]();
}

{
  return MEMORY[0x2821DA308]();
}

{
  return MEMORY[0x2821DA310]();
}

{
  return MEMORY[0x2821DA318]();
}

uint64_t ContiguousBitSet.formIntersection(_:)()
{
  return MEMORY[0x2821DA3D0]();
}

{
  return MEMORY[0x2821DA3D8]();
}

uint64_t ContiguousBitSet.formUnion(_:)()
{
  return MEMORY[0x2821DA430]();
}

{
  return MEMORY[0x2821DA438]();
}

uint64_t ContiguousBitSet.init(_:)()
{
  return MEMORY[0x2821DA448]();
}

{
  return MEMORY[0x2821DA450]();
}

{
  return MEMORY[0x2821DA458]();
}

Swift::tuple_tokens_OpaquePointer_stopSequence_String_optional __swiftcall StopSequenceMonitor.handleOutputTokens(_:)(Swift::OpaquePointer a1)
{
  v1 = MEMORY[0x2821DA528](a1._rawValue);
  result.stopSequence.value._object = v3;
  result.stopSequence.value._countAndFlagsBits = v2;
  result.tokens._rawValue = v1;
  return result;
}

uint64_t static BinaryFloatingPoint<>.random<A>(in:using:)()
{
  return MEMORY[0x2821FB778]();
}

{
  return MEMORY[0x2821FB780]();
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD9A0]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA10]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAD8]();
}

{
  return MEMORY[0x2821FDAE0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB50]();
}

{
  return MEMORY[0x2821FDB58]();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return MEMORY[0x2821FDED8]();
}

{
  return MEMORY[0x2821FDEF8]();
}

uint64_t E5RT::TensorDataType::TensorDataType()
{
  return MEMORY[0x28215CB38]();
}

{
  return MEMORY[0x28215CB40]();
}

uint64_t E5RT::ExecutionStreamOperation::GetInOutPortRef()
{
  return MEMORY[0x28215CC10]();
}

{
  return MEMORY[0x28215CD70]();
}

uint64_t E5RT::ExecutionStreamOperation::GetInputPortRef()
{
  return MEMORY[0x28215CC18]();
}

{
  return MEMORY[0x28215CD78]();
}

uint64_t E5RT::ExecutionStreamOperation::GetOutputPortRef()
{
  return MEMORY[0x28215CC20]();
}

{
  return MEMORY[0x28215CD80]();
}

uint64_t E5RT::PrecompiledComputeOpCreateOptions::Create()
{
  return MEMORY[0x28215CC70]();
}

{
  return MEMORY[0x28215CC78]();
}

uint64_t *E5RT::IOPort::GetMemoryObject@<X0>(uint64_t *__return_ptr a1@<X8>, E5RT::IOPort *this@<X0>)
{
  return MEMORY[0x28215CC80](a1, this);
}

{
  return MEMORY[0x28215CD88](a1, this);
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}