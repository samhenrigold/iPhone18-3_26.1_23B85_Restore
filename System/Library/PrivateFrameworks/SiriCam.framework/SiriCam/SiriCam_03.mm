uint64_t specialized CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v54[3] = type metadata accessor for SiriSignalsContainer();
  v54[4] = &protocol witness table for SiriSignalsContainer;
  v54[0] = a2;
  v50 = *a1;
  Array<A>.topTwo.getter(v50, v16);
  v17 = type metadata accessor for TopTwo(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v16, &_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.ranker);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266790000, v19, v20, "Fewer than 2 actions, will not extract disambiguation features.", v21, 2u);
      MEMORY[0x26D5DDCD0](v21, -1, -1);
    }
  }

  else
  {
    v48 = v12;
    v49 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMR);
    v22 = *(v5 + 72);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_266813E60;
    v46 = v23;
    v24 = v8;
    outlined init with copy of RankedAction();
    v47 = v22;
    outlined init with copy of RankedAction();

    outlined destroy of RankedAction(v16);
    v53[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2, 0);
    v25 = v53[0];
    outlined init with copy of RankedAction();
    v45 = v4;
    v26 = &v7[*(v4 + 36)];
    v44 = *(v9 + 16);
    v44(v51, v26, v8);
    outlined destroy of RankedAction(v7);
    v53[0] = v25;
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
      v25 = v53[0];
    }

    *(v25 + 16) = v28 + 1;
    v30 = *(v9 + 32);
    v29 = v9 + 32;
    v31 = (*(v29 + 48) + 32) & ~*(v29 + 48);
    v32 = *(v29 + 40);
    v33 = v51;
    v51 = v30;
    (v30)(v25 + v31 + v32 * v28, v33, v24);
    outlined init with copy of RankedAction();

    v34 = v48;
    v44(v48, &v7[*(v45 + 36)], v24);
    outlined destroy of RankedAction(v7);
    v53[0] = v25;
    v36 = *(v25 + 16);
    v35 = *(v25 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
      v25 = v53[0];
    }

    *(v25 + 16) = v36 + 1;
    (v51)(v25 + v31 + v36 * v32, v34, v24);
    v37 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5(v25);
    outlined init with copy of SignalProviding(v54, v52);
    v38 = v50;

    DisambiguationFeatureExtractor.init(rankedActions:siriSignalsContainer:)(v39, v52, v53);
    v40 = v49;
    specialized Sequence.filter(_:)(0, *(v38 + 16), v37, v49);
    v42 = v41;
    MEMORY[0x28223BE20](v41);
    *(&v44 - 2) = v53;
    *(&v44 - 1) = v40;
    specialized Sequence.forEach(_:)(partial apply for closure #2 in CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:), (&v44 - 4), v42);

    outlined destroy of DisambiguationFeatureExtractor(v53);
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1, uint64_t *a2)
{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, *a2);
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, *a2);
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, *a2);
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1)
{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, (v1 + 16));
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, (v1 + 16));
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1, (v1 + 16));
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(void *a1)
{
  v2 = type metadata accessor for CamModelMetadata(0);
  OUTLINED_FUNCTION_14(v2);
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1);
}

{
  return specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1);
}

unint64_t lazy protocol witness table accessor for type AnyEncodable and conformance AnyEncodable()
{
  result = lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable;
  if (!lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable);
  }

  return result;
}

uint64_t outlined init with copy of UUID?()
{
  OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_2();
  v3 = OUTLINED_FUNCTION_8_0();
  v4(v3);
  return v0;
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 32) & ~v4;
  v8 = (v4 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_19_3(v9);
  v11 = *(v10 + 80);
  v12 = (v6 + v11 + v8) & ~v11;
  v16 = *(v13 + 64);

  v14 = *(v3 + 8);
  v14(v0 + v7, v1);

  v14(v0 + v8, v1);
  if (!__swift_getEnumTagSinglePayload(v0 + v12, 1, v1))
  {
    v14(v0 + v12, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((v16 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v11 | 7);
}

uint64_t partial apply for closure #4 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_19_3(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  v10 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v7 + v10 + 16) & ~v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_19_3(v12);
  v14 = v13;
  v16 = v15;
  v17 = (v9 + *(v14 + 80) + v11) & ~*(v14 + 80);
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = *(v1 + v10);
  v21 = *(v1 + v10 + 8);
  v22 = *(v1 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v18, v19, v1 + v8, v20, v21, v1 + v11, v1 + v17, v22);
}

uint64_t outlined init with copy of RankedAction()
{
  OUTLINED_FUNCTION_46();
  v1(0);
  OUTLINED_FUNCTION_0_2();
  v2 = OUTLINED_FUNCTION_8_0();
  v3(v2);
  return v0;
}

uint64_t outlined init with take of CamModelMetadata()
{
  OUTLINED_FUNCTION_46();
  v1(0);
  OUTLINED_FUNCTION_0_2();
  v2 = OUTLINED_FUNCTION_8_0();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_38(void *a1@<X8>)
{
  v2 = *(v1 - 312);
  *a1 = *(v1 - 320);
  a1[1] = v2;
}

unint64_t OUTLINED_FUNCTION_40()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return outlined init with copy of UUID?();
}

uint64_t OUTLINED_FUNCTION_61()
{

  return static TrialProvider.fetchBoolFactorFromTrial(_:)(0xD000000000000021, (v0 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t ReflectedStringConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v25[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  Mirror.init(reflecting:)();
  Mirror.subjectType.getter();
  v25[0] = _typeName(_:qualified:)();
  v25[1] = v15;
  MEMORY[0x26D5DCD80](40, 0xE100000000000000);
  Mirror.superclassMirror.getter();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of Mirror?(v6);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    Mirror.children.getter();
    v16 = ReflectedStringConvertible.printElements(_:)();
    v18 = v17;

    v23 = v16;
    v24 = v18;

    MEMORY[0x26D5DCD80](8236, 0xE200000000000000);

    MEMORY[0x26D5DCD80](v23, v24);

    (*(v8 + 8))(v11, v7);
  }

  Mirror.children.getter();
  v19 = ReflectedStringConvertible.printElements(_:)();
  v21 = v20;

  MEMORY[0x26D5DCD80](v19, v21);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  (*(v8 + 8))(v13, v7);
  return v25[0];
}

uint64_t outlined destroy of Mirror?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorVSgMd, &_ss6MirrorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReflectedStringConvertible.printElements(_:)()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  v0 = 1;
  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v6[0] = v3[1];
    v6[1] = v4;
    v5 = v3[0];
    if (!*(&v4 + 1))
    {
      break;
    }

    v1 = v5;
    outlined init with take of Any(v6, v3);
    if (*(&v1 + 1))
    {
      if ((v0 & 1) == 0)
      {
        MEMORY[0x26D5DCD80](8236, 0xE200000000000000);
      }

      MEMORY[0x26D5DCD80](v1, *(&v1 + 1));

      MEMORY[0x26D5DCD80](8250, 0xE200000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D5DCD80](0, 0xE000000000000000);

      v0 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  return v7;
}

uint64_t ActionAmbiguityHeuristicHandler.init(forModelWithName:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for CamModelMetadata(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + OBJC_IVAR____TtC7SiriCam31ActionAmbiguityHeuristicHandler_overrideDisambiguateForRankingEvaluationRate;
  *v11 = 0;
  *(v11 + 8) = 1;
  CamModelVersion.init(_:)();
  if (v3)
  {

    type metadata accessor for ActionAmbiguityHeuristicHandler(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v12;
    v17 = v14;
    v18 = v15;
    v27 = v13;
    v19 = type metadata accessor for Locale();
    v26 = a2;
    v20 = v19;
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v19);
    v21 = *(v8 + 28);
    __swift_storeEnumTagSinglePayload(&v10[v21], 1, 1, v20);
    v23 = v26;
    v22 = v27;
    *v10 = v28;
    *(v10 + 1) = v23;
    *(v10 + 2) = v16;
    *(v10 + 3) = v22;
    *(v10 + 4) = v17;
    *(v10 + 5) = v18;
    v10[48] = 2;
    outlined assign with take of Locale?(v7, &v10[v21]);
    outlined init with take of CamModelMetadata(v10, v2 + OBJC_IVAR____TtC7SiriCam31ActionAmbiguityHeuristicHandler_modelMetadata);
  }

  return v2;
}

MLDictionaryFeatureProvider __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActionAmbiguityHeuristicHandler.predict(from:)(Swift::OpaquePointer from)
{
  v4 = ActionAmbiguityHeuristicHandler.createFeatureProvider(modelScore:modelDecision:)(0, 0.0);
  if (v1)
  {
    return v2;
  }

  v2 = v4;
  v5 = "uationWasSelected";
  v6 = specialized Dictionary.subscript.getter();
  if (!v6)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.ambiguityHandling);
    v12 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v13 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_23();
    v15 = OUTLINED_FUNCTION_3_7();
    v52 = v15;
    *v3 = 136315138;
    v16 = 0xD000000000000024;
LABEL_10:
    v17 = v5 | 0x8000000000000000;
LABEL_11:
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v52);
    OUTLINED_FUNCTION_6_9(&dword_266790000, v18, v19, "[ActionAmbiguityHeuristicHandler] Feature not found: %s. Returning default prediction output");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    goto LABEL_12;
  }

  v7 = v6;
  v8 = MLMultiArray.toDoubleScalar()();
  if (v9)
  {
LABEL_4:

    return v2;
  }

  v20 = v8;

  v21 = specialized Dictionary.subscript.getter();
  if (!v21)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.ambiguityHandling);
    v12 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v36 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_23();
    v15 = OUTLINED_FUNCTION_3_7();
    v52 = v15;
    *v3 = 136315138;
    v17 = 0x8000000266819C40;
    v16 = 0xD00000000000001CLL;
    goto LABEL_11;
  }

  v7 = v21;
  v22 = MLMultiArray.toDoubleScalar()();
  if (v23)
  {
    goto LABEL_4;
  }

  v24 = v22;

  v5 = "second_top_action_confidence";
  v25 = specialized Dictionary.subscript.getter();
  if (!v25)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.ambiguityHandling);
    v12 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v39 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_23();
    v15 = OUTLINED_FUNCTION_3_7();
    v52 = v15;
    *v3 = 136315138;
    v16 = 0xD00000000000001DLL;
    goto LABEL_10;
  }

  v7 = v25;
  v26 = MLMultiArray.toBoolScalar()();
  if (v27)
  {
    goto LABEL_4;
  }

  v28 = v26;

  if (v20 < 0.0)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.ambiguityHandling);
    v12 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v30 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_13;
    }

    v32 = OUTLINED_FUNCTION_23();
    *v32 = 134217984;
    *(v32 + 4) = v20;
    OUTLINED_FUNCTION_6_9(&dword_266790000, v33, v34, "[ActionAmbiguityHeuristicHandler] Cannot resolve ambiguity because top ranked confidence difference is %f. Returning default prediction output");
LABEL_12:
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
LABEL_13:

    return v2;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.ambiguityHandling);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_23();
    *v44 = 134217984;
    *(v44 + 4) = v20;
    _os_log_impl(&dword_266790000, v42, v43, "[ActionAmbiguityHeuristicHandler] Top two action confidence difference is %f", v44, 0xCu);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v45 = ActionAmbiguityHeuristicHandler.denyDisambiguationOverride(secondTopActionConfidence:topTwoContainsAppShortcut:)(v28, v24);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  v48 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 67109376;
    *(v50 + 4) = v20 < 0.01;
    *(v50 + 8) = 1024;
    *(v50 + 10) = v45 & 1;
    _os_log_impl(&dword_266790000, v46, v47, "[ActionAmbiguityHeuristicHandler] isTie: %{BOOL}d isDisambiguationDenyOverride: %{BOOL}d", v50, 0xEu);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v51 = ActionAmbiguityHeuristicHandler.createFeatureProvider(modelScore:modelDecision:)((v20 < 0.01) & (v45 ^ 1u), 1.0 - v20);
  return v51;
}

id ActionAmbiguityHeuristicHandler.createFeatureProvider(modelScore:modelDecision:)(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000025;
  *(inited + 16) = xmmword_266813C70;
  *(inited + 40) = 0x800000026681AEF0;
  v6 = type metadata accessor for MLMultiArray();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  v7 = lazy protocol witness table accessor for type [Double] and conformance [A](&lazy protocol witness table cache variable for type [Double] and conformance [A], &_sSaySdGMd, &_sSaySdGMR);
  v11 = OUTLINED_FUNCTION_5_7(v7, v8, v9, v10);
  if (v2)
  {

    *(inited + 16) = 0;
    swift_setDeallocating();
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    *(inited + 80) = 0xD000000000000021;
    *(inited + 72) = v6;
    *(inited + 48) = v11;
    *(inited + 88) = 0x800000026681AF20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_266813FC0;
    *(v12 + 32) = a2;
    *(inited + 96) = OUTLINED_FUNCTION_5_7(v12, v13, v14, v15);
    *(inited + 120) = v6;
    *(inited + 128) = 0xD000000000000024;
    *(inited + 136) = 0x800000026681AF50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_266813FC0;
    *(v16 + 32) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    v17 = MLMultiArray.init<A>(_:)();
    *(inited + 168) = v6;
    *(inited + 144) = v17;
    Dictionary.init(dictionaryLiteral:)();
    v19 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    return @nonobjc MLDictionaryFeatureProvider.init(dictionary:)();
  }
}

uint64_t ActionAmbiguityHeuristicHandler.denyDisambiguationOverride(secondTopActionConfidence:topTwoContainsAppShortcut:)(char a1, double a2)
{
  if (a1)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.ambiguityHandling);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = OUTLINED_FUNCTION_22_0();
    if (!os_log_type_enabled(v6, v7))
    {
      v10 = 0;
      goto LABEL_21;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[ActionAmbiguityHeuristicHandler] disambiguation not denied since it contains an app shortcut";
LABEL_6:
    _os_log_impl(&dword_266790000, v4, v5, v9, v8, 2u);
    v10 = a1 ^ 1;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
LABEL_21:

    return v10 & 1;
  }

  if (CamFeatureFlag.isEnabled.getter(6))
  {
    if (ForcedDisambiguation.decision()())
    {
      if (a2 >= 0.5)
      {
        v10 = 0;
        return v10 & 1;
      }

      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.ambiguityHandling);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      v13 = OUTLINED_FUNCTION_22_0();
      if (os_log_type_enabled(v13, v14))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "[ActionAmbiguityHeuristicHandler] disambiguation denied since second top does not have enough confidence";
        goto LABEL_6;
      }
    }

    else
    {
      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.ambiguityHandling);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      v16 = OUTLINED_FUNCTION_22_0();
      if (os_log_type_enabled(v16, v17))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "[ActionAmbiguityHeuristicHandler] disambiguation denied for disambiguateAllRankingTies rate limiting. ";
        goto LABEL_6;
      }
    }

    v10 = 1;
    goto LABEL_21;
  }

  v10 = 1;
  return v10 & 1;
}

uint64_t ActionAmbiguityHeuristicHandler.__deallocating_deinit()
{
  outlined destroy of CamModelMetadata(v0 + OBJC_IVAR____TtC7SiriCam31ActionAmbiguityHeuristicHandler_modelMetadata);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ActionAmbiguityHeuristicHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActionAmbiguityHeuristicHandler;
  if (!type metadata singleton initialization cache for ActionAmbiguityHeuristicHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ActionAmbiguityHeuristicHandler(uint64_t a1)
{
  result = type metadata accessor for CamModelMetadata(319);
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

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type [Double] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

id static CaarFeatureLogger.map(from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR);
  OUTLINED_FUNCTION_38_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D56B68]) init];
  if (v12)
  {
    v13 = v12;
    v28 = MEMORY[0x277D84F90];
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v16 = *(v4 + 72);
      do
      {
        outlined init with copy of (UUID, [String : MLFeatureValue])(v15, v11);
        outlined init with copy of (UUID, [String : MLFeatureValue])(v11, v8);
        v17 = static CaarFeatureLogger.extractSelfFeatures(actionFeatures:)(v8, *(v8 + *(v1 + 48)));

        outlined destroy of (UUID, [String : MLFeatureValue])(v11);
        v18 = type metadata accessor for UUID();
        v19 = (*(*(v18 - 8) + 8))(v8, v18);
        if (v17)
        {
          MEMORY[0x26D5DCE50](v19);
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v15 += v16;
        --v14;
      }

      while (v14);
    }

    v20 = OUTLINED_FUNCTION_15_5();
    outlined bridged method (mbnn) of @objc CAARSchemaCAARFeaturesGenerated.actionFeatureSets.setter(v20, v21);
  }

  else
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.ranker);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_266790000, v23, v24, "Failed to create CAARSchemaCAARFeaturesGenerated SELF message.", v25, 2u);
      MEMORY[0x26D5DDCD0](v25, -1, -1);
    }

    return 0;
  }

  return v13;
}

uint64_t static CaarFeatureLogger.extractSelfFeatures(actionFeatures:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_38_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v58 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = *(v6 + 16);
  v20(&v55 - v18, a1, v2);
  *&v19[*(v13 + 48)] = a2;
  v21 = objc_allocWithZone(MEMORY[0x277D56AF8]);

  v22 = [v21 init];
  if (!v22)
  {
LABEL_29:
    outlined destroy of (UUID, [String : MLFeatureValue])(v19);
    return v22;
  }

  v56 = v19;
  outlined init with copy of (UUID, [String : MLFeatureValue])(v19, v16);
  v23 = *(v16 + *(v13 + 48));
  v57 = v6;
  (*(v6 + 32))(v12, v16, v2);
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
  v24 = v58;
  v25 = v12;
  v20(v58, v12, v2);
  v26 = SISchemaUUID.__allocating_init(nsuuid:)(v24);
  OUTLINED_FUNCTION_49_0(v26, sel_setActionCandidateId_);

  v27 = OUTLINED_FUNCTION_39_0();
  v28 = v2;
  if (v27)
  {
    OUTLINED_FUNCTION_33(v27);
    OUTLINED_FUNCTION_22_2();
    [v22 setIsAppInForeground_];
  }

  v29 = OUTLINED_FUNCTION_39_0();
  if (v29)
  {
    [v22 setIsTopRankedPlugin_];
  }

  v30 = specialized Dictionary.subscript.getter();
  v19 = v56;
  v31 = v57;
  if (v30)
  {
    OUTLINED_FUNCTION_33(v30);
    OUTLINED_FUNCTION_22_2();
    [v22 setIsAutoshortcut_];
  }

  v32 = specialized Dictionary.subscript.getter();
  if (v32)
  {
    OUTLINED_FUNCTION_33(v32);
    OUTLINED_FUNCTION_22_2();
    [v22 setIsTopRankedParse_];
  }

  v33 = specialized Dictionary.subscript.getter();
  if (v33)
  {
    v26 = v33;
    [v33 doubleValue];
    *&v34 = v34;
    [v22 setNlParseProbability_];
  }

  v35 = OUTLINED_FUNCTION_39_0();
  if (v35)
  {
    OUTLINED_FUNCTION_33(v35);
    OUTLINED_FUNCTION_22_2();
    [v22 setIsHighConfidence_];
  }

  v36 = OUTLINED_FUNCTION_39_0();
  if (v36)
  {
    OUTLINED_FUNCTION_33(v36);
    OUTLINED_FUNCTION_22_2();
    [v22 setIsRepeatedFlowHandlerId_];
  }

  v37 = OUTLINED_FUNCTION_39_0();
  if (v37)
  {
    OUTLINED_FUNCTION_33(v37);
    OUTLINED_FUNCTION_22_2();
    [v22 setIsAmbiguousFirstRunPreviouslyShown_];
  }

  v38 = OUTLINED_FUNCTION_39_0();
  if (v38)
  {
    v26 = v38;
    v39 = [v38 stringValue];
    v40 = v31;
    v41 = v19;
    v42 = v25;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = v43;
    v25 = v42;
    v19 = v41;
    v31 = v40;
    outlined bridged method (mbnn) of @objc CAARSchemaCAARActionFeatureSet.actionIdentifier.setter(v46, v45, v22);
  }

  OUTLINED_FUNCTION_9_2();
  v47 = specialized Dictionary.subscript.getter();
  if (!v47)
  {
LABEL_24:
    OUTLINED_FUNCTION_9_2();
    v49 = specialized Dictionary.subscript.getter();
    if (v49)
    {
      OUTLINED_FUNCTION_33(v49);
      OUTLINED_FUNCTION_22_2();
      [v22 setIsAutoShortcutEnabled_];
    }

    v50 = OUTLINED_FUNCTION_39_0();
    if (v50)
    {
      OUTLINED_FUNCTION_33(v50);
      OUTLINED_FUNCTION_22_2();
      [v22 setIsInterpretableAsUniversalCommand_];
    }

    v51 = static CaarFeatureLogger.extractAppHistorySelfFeatures(_:)(v23);
    OUTLINED_FUNCTION_49_0(v51, sel_setAppHistoryFeatures_);

    v52 = static CaarFeatureLogger.extractAppLevelDisambiguationHistorySelfFeatures(_:)(v23);
    OUTLINED_FUNCTION_49_0(v52, sel_setAppLevelDisambiguationHistory_);

    v53 = static CaarFeatureLogger.extractActionLevelDisambiguationHistorySelfFeatures(_:)(v23);

    OUTLINED_FUNCTION_49_0(v54, sel_setActionLevelDisambiguationHistory_);

    (*(v31 + 8))(v25, v28);
    goto LABEL_29;
  }

  result = OUTLINED_FUNCTION_33(v47);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    [v22 setDomainProtectionLevel_];

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t static CaarFeatureLogger.roundToMinutes(seconds:)(uint64_t result)
{
  if (result < 0)
  {
    v2 = 0;
    return v2 | ((result < 0) << 32);
  }

  v1 = floor(result / 60.0);
  if (v1 == INFINITY)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v1 < 4294967300.0)
  {
    v2 = v1;
    return v2 | ((result < 0) << 32);
  }

LABEL_10:
  __break(1u);
  return result;
}

void outlined bridged method (mbnn) of @objc CAARSchemaCAARFeaturesGenerated.actionFeatureSets.setter(uint64_t a1, void *a2)
{
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARActionFeatureSet, 0x277D56AF8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setActionFeatureSets_];
}

void outlined bridged method (mbnn) of @objc CAARSchemaCAARActionFeatureSet.actionIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5DCC90](a1);

  [a3 setActionIdentifier_];
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return specialized Dictionary.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_25_2()
{
}

double OUTLINED_FUNCTION_26_2()
{

  return result;
}

double OUTLINED_FUNCTION_27_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_29_1()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

unint64_t OUTLINED_FUNCTION_31_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

void OUTLINED_FUNCTION_35()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_36()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return specialized Dictionary.subscript.getter();
}

unint64_t OUTLINED_FUNCTION_40_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

unint64_t OUTLINED_FUNCTION_48_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

id OUTLINED_FUNCTION_49_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_51_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

unint64_t OUTLINED_FUNCTION_52_0()
{

  return lazy protocol witness table accessor for type String and conformance String();
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

    v8 = (a1)(v11);
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

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for RRDataSourceMetadataValue() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t static AmbiguousFirstRunHelper.recordAmbiguousFirstRunShown(bundleId:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.common);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v16);
    _os_log_impl(&dword_266790000, v5, v6, "Storing ambiguous first run shown for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5DDCD0](v8, -1, -1);
    MEMORY[0x26D5DDCD0](v7, -1, -1);
  }

  static CamUserHistoryDefaultsManager.getValue(key:)(0xD000000000000021, 0x800000026681AFC0, v16);
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v9 = v15;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of Any?(v16);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_10:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = v13;
  }

  v10 = *(v9 + 16);
  if (v10 >= *(v9 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = v14;
  }

  *(v9 + 16) = v10 + 1;
  v11 = v9 + 16 * v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v16[0] = v9;
  static CamUserHistoryDefaultsManager.setValue(key:value:)(0xD000000000000021, 0x800000026681AFC0, v16);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

BOOL static AmbiguousFirstRunHelper.ambiguousFirstRunPreviouslyShown(bundleId:)(uint64_t a1, uint64_t a2)
{
  static CamUserHistoryDefaultsManager.getValue(key:)(0xD000000000000021, 0x800000026681AFC0, v9);
  if (!v9[3])
  {
    v4 = outlined destroy of Any?(v9);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v4 = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
LABEL_5:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v5 = v8[4];
LABEL_6:
  v9[0] = a1;
  v9[1] = a2;
  MEMORY[0x28223BE20](v4);
  v8[2] = v9;
  v6 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v8, v5);

  return v6;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_8_8();
  if (v4)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_13();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v7 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * (v8 / 16);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v4)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_13();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam23Domain3PProtectionLevelOGMd, &_ss23_ContiguousArrayStorageCy7SiriCam23Domain3PProtectionLevelOGMR);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v4)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_10();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v7 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v7);
    OUTLINED_FUNCTION_5_9(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_10_8();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v4)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_13();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
    v7 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v7);
    v7[2] = v2;
    v7[3] = 2 * (v8 / 8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_11_7();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v4)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_13();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SitGMd, &_ss23_ContiguousArrayStorageCySS_SitGMR);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_12_9(v7);
    v7[2] = v2;
    v7[3] = 2 * (v8 / 24);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[3 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_11_7();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
    OUTLINED_FUNCTION_11_7();
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v4)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_10();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v7 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v7);
    OUTLINED_FUNCTION_5_9(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_10_8();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v4)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_10();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    v7 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v7);
    OUTLINED_FUNCTION_5_9(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_10_8();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v4)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_10();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v7 = OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_12_9(v7);
    OUTLINED_FUNCTION_5_9(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_10_8();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

{
  OUTLINED_FUNCTION_8_8();
  if (v3)
  {
    OUTLINED_FUNCTION_3_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS13flowHandlerId_10Foundation4UUIDV05parseJ0Si13affinityScoret_Tt1g5(v7, v4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v0 + v10, v7, v8 + v10, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMd, &_sSS13flowHandlerId_10Foundation4UUIDV05parseC0Si13affinityScoretMR);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMR, &_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam31UncertaintyPromptActionEnforcer_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam31UncertaintyPromptActionEnforcer_pGMR, &_s7SiriCam31UncertaintyPromptActionEnforcer_pMd, &_s7SiriCam31UncertaintyPromptActionEnforcer_pMR);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam13ActionHandler_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam13ActionHandler_pGMR, &_s7SiriCam13ActionHandler_pMd, &_s7SiriCam13ActionHandler_pMR);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam25AutoConfirmActionEnforcer_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam25AutoConfirmActionEnforcer_pGMR, &_s7SiriCam25AutoConfirmActionEnforcer_pMd, &_s7SiriCam25AutoConfirmActionEnforcer_pMR);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC32SiriReferenceResolutionDataModel25RRDataSourceMetadataValueO_Tt1g5, MEMORY[0x277D5FE98], MEMORY[0x277D5FE98]);
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SiriCam12RankedActionV_Tt1g5, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_4();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_17();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_17();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_12_9(v17);
    v17[2] = v15;
    v17[3] = 2 * (v18 / 40);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D2A310]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277CC9260]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277D5FE08]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for RankedAction);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, MEMORY[0x277CC95F0]);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for CamParse);
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_13_7();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_3_9();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_3_9();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_13_7();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_3_9();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_3_9();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AmbiguousFirstRunHelper(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AmbiguousFirstRunHelper(_BYTE *result, int a2, int a3)
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

uint64_t specialized ActionProtocol.inferBundleId()()
{
  return specialized ActionProtocol.inferBundleId()(type metadata accessor for RankedAction, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
}

{
  return specialized ActionProtocol.inferBundleId()(type metadata accessor for ActionCandidate, type metadata accessor for ActionCandidate, type metadata accessor for ActionCandidate);
}

uint64_t specialized ActionProtocol.inferBundleId()(uint64_t (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  v123 = a2;
  v124 = a3;
  v8 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMd, &_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_3();
  v122 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash();
  OUTLINED_FUNCTION_22();
  v117 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v116 = v13;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  v120 = &v113 - v15;
  v16 = a1(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v121 = v18;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_3();
  v114 = v20;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_3();
  v115 = v22;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_0_2();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v28);
  v30 = &v113 - v29;
  v118 = type metadata accessor for CamUSOParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v119 = v32;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v33);
  v35 = &v113 - v34;
  v36 = *(v17 + 28);
  OUTLINED_FUNCTION_2_10();
  outlined init with copy of CamParse(v8 + v36, v30, v37);
  if (swift_getEnumCaseMultiPayload())
  {
    v38 = type metadata accessor for CamParse;
    v39 = v30;
  }

  else
  {
    outlined init with take of CamUSOParse(v30, v35);
    v113 = CamUSOParse.appShortcutInvocation.getter();
    if (v47)
    {
      v48 = v47;
      v122 = v35;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.common);
      v50 = v6;
      outlined init with copy of CamParse(v8, v6, v123);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_18_5();
        v126 = OUTLINED_FUNCTION_17_5();
        *v53 = 136315394;
        v54 = *v6;
        v55 = v6[1];

        _s7SiriCam0B5ParseOWOhTm_0(v50, v124);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v126);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2080;

        v46 = v113;
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v48, &v126);

        *(v53 + 14) = v57;
        _os_log_impl(&dword_266790000, v51, v52, "Inferring bundle for %s from AS invocation = %s", v53, 0x16u);
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_3_1();

        OUTLINED_FUNCTION_0_15();
        _s7SiriCam0B5ParseOWOhTm_0(v122, v58);
      }

      else
      {

        _s7SiriCam0B5ParseOWOhTm_0(v6, v124);
        OUTLINED_FUNCTION_0_15();
        _s7SiriCam0B5ParseOWOhTm_0(v122, v109);

        return v113;
      }

      return v46;
    }

    v38 = type metadata accessor for CamUSOParse;
    v39 = v35;
  }

  _s7SiriCam0B5ParseOWOhTm_0(v39, v38);
  OUTLINED_FUNCTION_2_10();
  outlined init with copy of CamParse(v8 + v36, v4, v40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s7SiriCam0B5ParseOWOhTm_0(v4, type metadata accessor for CamParse);
LABEL_7:
    outlined init with copy of CamParse(v8 + v36, v27, type metadata accessor for CamParse);
    if (swift_getEnumCaseMultiPayload())
    {
      v43 = type metadata accessor for CamParse;
      v44 = v27;
    }

    else
    {
      v72 = v119;
      outlined init with take of CamUSOParse(v27, v119);
      v73 = (v72 + *(v118 + 24));
      v74 = v73[1];
      if (v74)
      {
        v46 = *v73;
        v75 = one-time initialization token for common;

        if (v75 != -1)
        {
          OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
        }

        v76 = type metadata accessor for Logger();
        __swift_project_value_buffer(v76, static Logger.common);
        v77 = OUTLINED_FUNCTION_20_5();
        outlined init with copy of CamParse(v77, v114, v123);

        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = OUTLINED_FUNCTION_18_5();
          v126 = OUTLINED_FUNCTION_17_5();
          *v80 = 136315394;

          v81 = OUTLINED_FUNCTION_28_4();
          _s7SiriCam0B5ParseOWOhTm_0(v81, v82);
          v83 = OUTLINED_FUNCTION_23_4();

          *(v80 + 4) = v83;
          *(v80 + 12) = 2080;
          *(v80 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v74, &v126);
          OUTLINED_FUNCTION_32_1(&dword_266790000, v84, v85, "Inferring bundle for %s from USO parse = %s");
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_3_1();
          OUTLINED_FUNCTION_3_1();
        }

        else
        {

          v110 = OUTLINED_FUNCTION_28_4();
          _s7SiriCam0B5ParseOWOhTm_0(v110, v111);
        }

        v71 = type metadata accessor for CamUSOParse;
        v70 = v72;
        goto LABEL_38;
      }

      v43 = type metadata accessor for CamUSOParse;
      v44 = v72;
    }

    _s7SiriCam0B5ParseOWOhTm_0(v44, v43);

    v45._countAndFlagsBits = OUTLINED_FUNCTION_8_0();
    PluginToBundleMap.init(rawValue:)(v45);
    if (v126 == 32)
    {
      v46 = 0;
    }

    else
    {
      v125 = v126;
      v46 = PluginToBundleMap.associatedAppBundleId.getter();
    }

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.common);
    v60 = OUTLINED_FUNCTION_20_5();
    outlined init with copy of CamParse(v60, v121, v123);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_18_5();
      v126 = OUTLINED_FUNCTION_17_5();
      *v63 = 136315394;

      v64 = OUTLINED_FUNCTION_28_4();
      _s7SiriCam0B5ParseOWOhTm_0(v64, v65);
      v66 = OUTLINED_FUNCTION_23_4();

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;

      v67 = OUTLINED_FUNCTION_23_4();

      *(v63 + 14) = v67;
      OUTLINED_FUNCTION_32_1(&dword_266790000, v68, v69, "Inferring bundle for %s from plugin mapping = %s");
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();

      return v46;
    }

    v70 = OUTLINED_FUNCTION_28_4();
LABEL_38:
    _s7SiriCam0B5ParseOWOhTm_0(v70, v71);
    return v46;
  }

  v41 = *v4;
  PommesResponse.sash()(v5);
  v42 = v122;
  if (__swift_getEnumTagSinglePayload(v5, 1, v122) == 1)
  {

    outlined destroy of Apple_Parsec_Siri_V2alpha_Sash?(v5);
    goto LABEL_7;
  }

  v86 = v117;
  v87 = v120;
  (*(v117 + 32))(v120, v5, v42);
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
  }

  v121 = v41;
  v88 = type metadata accessor for Logger();
  __swift_project_value_buffer(v88, static Logger.common);
  v89 = OUTLINED_FUNCTION_20_5();
  v90 = v115;
  outlined init with copy of CamParse(v89, v115, v123);
  v91 = v116;
  (*(v86 + 16))(v116, v87, v42);
  v92 = v42;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = OUTLINED_FUNCTION_18_5();
    v126 = OUTLINED_FUNCTION_17_5();
    *v95 = 136315394;
    v96 = *v90;
    v97 = v90;
    v98 = v91;
    v99 = *(v97 + 8);

    _s7SiriCam0B5ParseOWOhTm_0(v97, v124);
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v99, &v126);

    *(v95 + 4) = v100;
    *(v95 + 12) = 2080;
    v101 = Apple_Parsec_Siri_V2alpha_Sash.appID.getter();
    v103 = v102;
    v104 = *(v86 + 8);
    v105 = v98;
    v106 = v122;
    v104(v105, v122);
    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, &v126);

    *(v95 + 14) = v107;
    _os_log_impl(&dword_266790000, v93, v94, "Inferring bundle for %s from sash = %s", v95, 0x16u);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_3_1();
    v87 = v120;
    OUTLINED_FUNCTION_3_1();

    v108 = v106;
  }

  else
  {

    v104 = *(v86 + 8);
    v104(v91, v92);
    _s7SiriCam0B5ParseOWOhTm_0(v90, v124);
    v108 = v92;
  }

  v46 = Apple_Parsec_Siri_V2alpha_Sash.appID.getter();

  v104(v87, v108);
  return v46;
}

Swift::String_optional __swiftcall ActionProtocol.inferBundleId()()
{
  v5 = v1;
  v6 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMd, &_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMR);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x28223BE20](v8);
  v141 = &v131 - v9;
  v140 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash();
  OUTLINED_FUNCTION_22();
  v133 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v132 = v12;
  OUTLINED_FUNCTION_6();
  v14 = MEMORY[0x28223BE20](v13);
  v135 = &v131 - v15;
  v144 = *(v6 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v139 = v16;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_3();
  v131 = v18;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_3();
  v142 = v20;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v138 = v23;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v25);
  v27 = &v131 - v26;
  v134 = type metadata accessor for CamUSOParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5();
  v136 = v29;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v30);
  v32 = &v131 - v31;
  v33 = *(v5 + 16);
  v145 = v2;
  v146 = v5;
  v143 = v6;
  v33(v6, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_3_10();
    v35 = v27;
  }

  else
  {
    v51 = v4;
    outlined init with take of CamUSOParse(v27, v32);
    v137 = CamUSOParse.appShortcutInvocation.getter();
    if (v52)
    {
      v54 = v53;
      v55 = v52;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.common);
      v57 = v144;
      v58 = v143;
      (*(v144 + 16))(v51, v145, v143);
      v59 = v55;

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_18_5();
        v63 = OUTLINED_FUNCTION_17_5();
        v145 = v32;
        v148 = v63;
        *v62 = 136315394;
        OUTLINED_FUNCTION_16_4();
        LODWORD(v142) = v61;
        v64(v58);
        v146 = v54;
        OUTLINED_FUNCTION_19_5();
        (*(v57 + 8))(v51, v58);
        v65 = OUTLINED_FUNCTION_8_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v67);
        OUTLINED_FUNCTION_10_9();

        *(v62 + 4) = v54;
        *(v62 + 12) = 2080;

        v68 = v137;
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v55, &v148);

        *(v62 + 14) = v69;
        _os_log_impl(&dword_266790000, v60, v142, "Inferring bundle for %s from AS invocation = %s", v62, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_3_1();

        OUTLINED_FUNCTION_0_15();
        _s7SiriCam0B5ParseOWOhTm_0(v145, v70);

        v50 = v59;
        goto LABEL_41;
      }

      (*(v57 + 8))(v51, v58);
      OUTLINED_FUNCTION_0_15();
      _s7SiriCam0B5ParseOWOhTm_0(v32, v123);

      v50 = v55;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_0_15();
    v35 = v32;
  }

  _s7SiriCam0B5ParseOWOhTm_0(v35, v34);
  v36 = v143;
  v33(v143, v146);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = v141;
  v39 = v142;
  if (EnumCaseMultiPayload == 1)
  {
    v40 = *v3;
    PommesResponse.sash()(v141);
    v41 = v140;
    if (__swift_getEnumTagSinglePayload(v38, 1, v140) != 1)
    {
      v139 = v40;
      v104 = v133;
      v105 = v135;
      (*(v133 + 32))(v135, v38, v41);
      v106 = v145;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v107 = type metadata accessor for Logger();
      __swift_project_value_buffer(v107, static Logger.common);
      v108 = v144;
      (*(v144 + 16))(v39, v106, v36);
      v109 = v132;
      (*(v104 + 16))(v132, v105, v41);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = OUTLINED_FUNCTION_18_5();
        v145 = OUTLINED_FUNCTION_17_5();
        v148 = v145;
        *v112 = 136315394;
        OUTLINED_FUNCTION_16_4();
        v113(v36);
        OUTLINED_FUNCTION_19_5();
        (*(v108 + 8))(v39, v36);
        v114 = OUTLINED_FUNCTION_8_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v116);
        OUTLINED_FUNCTION_10_9();

        OUTLINED_FUNCTION_15_6();
        Apple_Parsec_Siri_V2alpha_Sash.appID.getter();
        OUTLINED_FUNCTION_19_5();
        v117 = *(v104 + 8);
        v117(v109, v140);
        v118 = OUTLINED_FUNCTION_8_0();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, v120);
        OUTLINED_FUNCTION_10_9();

        *(v112 + 14) = v109;
        OUTLINED_FUNCTION_12_10(&dword_266790000, v121, v122, "Inferring bundle for %s from sash = %s");
        swift_arrayDestroy();
        v105 = v135;
        OUTLINED_FUNCTION_3_1();
        v41 = v140;
        OUTLINED_FUNCTION_3_1();
      }

      else
      {

        v124 = v39;
        v117 = *(v104 + 8);
        v117(v109, v41);
        (*(v108 + 8))(v124, v36);
      }

      v68 = Apple_Parsec_Siri_V2alpha_Sash.appID.getter();
      v50 = v125;

      v117(v105, v41);
      goto LABEL_41;
    }

    outlined destroy of Apple_Parsec_Siri_V2alpha_Sash?(v38);
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    _s7SiriCam0B5ParseOWOhTm_0(v3, v42);
  }

  v43 = v145;
  v44 = v138;
  v33(v36, v146);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_3_10();
    _s7SiriCam0B5ParseOWOhTm_0(v44, v45);
    v46 = v144;
    v47 = v139;
LABEL_9:
    v48 = *(v146 + 8);
    v49._countAndFlagsBits = v48(v36);
    PluginToBundleMap.init(rawValue:)(v49);
    if (v148 == 32)
    {
      v137 = 0;
      v50 = 0;
    }

    else
    {
      v147 = v148;
      v137 = PluginToBundleMap.associatedAppBundleId.getter();
      v50 = v71;
    }

    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.common);
    (*(v46 + 16))(v47, v43, v36);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_18_5();
      v148 = OUTLINED_FUNCTION_17_5();
      *v75 = 136315394;
      v76 = (v48)(v36, v146);
      v78 = v77;
      (*(v46 + 8))(v47, v36);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v148);

      OUTLINED_FUNCTION_15_6();
      v68 = v137;
      if (v50)
      {
        v79 = v137;
      }

      else
      {
        v79 = 7104878;
      }

      v80 = OUTLINED_FUNCTION_8_0();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v82);
      OUTLINED_FUNCTION_10_9();

      *(v75 + 14) = v79;
      OUTLINED_FUNCTION_12_10(&dword_266790000, v83, v84, "Inferring bundle for %s from plugin mapping = %s");
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();

      goto LABEL_41;
    }

    (*(v46 + 8))(v47, v36);
LABEL_36:
    v68 = v137;
    goto LABEL_41;
  }

  v85 = v44;
  v86 = v136;
  outlined init with take of CamUSOParse(v85, v136);
  v87 = (v86 + *(v134 + 24));
  v50 = v87[1];
  v47 = v139;
  if (!v50)
  {
    OUTLINED_FUNCTION_0_15();
    _s7SiriCam0B5ParseOWOhTm_0(v86, v126);
    v46 = v144;
    goto LABEL_9;
  }

  v88 = *v87;
  v89 = one-time initialization token for common;

  v90 = v144;
  if (v89 != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
  }

  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Logger.common);
  v92 = v131;
  (*(v90 + 16))(v131, v43, v36);

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = OUTLINED_FUNCTION_18_5();
    v148 = OUTLINED_FUNCTION_17_5();
    *v95 = 136315394;
    OUTLINED_FUNCTION_16_4();
    v96(v36);
    OUTLINED_FUNCTION_19_5();
    (*(v90 + 8))(v97, v36);
    v98 = OUTLINED_FUNCTION_8_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v100);
    OUTLINED_FUNCTION_10_9();

    OUTLINED_FUNCTION_15_6();
    v68 = v88;
    *(v95 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v50, &v148);
    OUTLINED_FUNCTION_12_10(&dword_266790000, v101, v102, "Inferring bundle for %s from USO parse = %s");
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();

    OUTLINED_FUNCTION_0_15();
    _s7SiriCam0B5ParseOWOhTm_0(v136, v103);
  }

  else
  {

    (*(v90 + 8))(v92, v36);
    OUTLINED_FUNCTION_0_15();
    _s7SiriCam0B5ParseOWOhTm_0(v136, v127);
    v68 = v88;
  }

LABEL_41:
  v128 = v68;
  v129 = v50;
  result.value._object = v129;
  result.value._countAndFlagsBits = v128;
  return result;
}

uint64_t RankedAction.parse.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_2_10();
  return outlined init with copy of CamParse(v1 + v3, a1, v4);
}

double RankedAction.alternatives.getter()
{
  type metadata accessor for RankedAction(0);

  return result;
}

double RankedAction.userData.getter()
{
  type metadata accessor for RankedAction(0);

  return result;
}

uint64_t RankedAction.loggingId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RankedAction(0) + 36);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t RankedAction.inferredBundleId.getter()
{
  type metadata accessor for RankedAction(0);

  return OUTLINED_FUNCTION_8_0();
}

uint64_t RankedAction.inferredBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RankedAction(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void RankedAction.init(flowHandlerId:parse:score:alternatives:userData:)()
{
  OUTLINED_FUNCTION_30_2();
  v30 = v0;
  v31 = v1;
  v29 = v2;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CamParse(0);
  v19 = OUTLINED_FUNCTION_14(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CamParse(v5, v21, type metadata accessor for CamParse);
  UUID.init()();
  v22 = type metadata accessor for RankedAction(0);
  v23 = &v11[v22[10]];
  *v11 = v9;
  *(v11 + 1) = v7;
  outlined init with copy of CamParse(v21, &v11[v22[5]], type metadata accessor for CamParse);
  *&v11[v22[6]] = v29;
  *&v11[v22[7]] = v4;
  *&v11[v22[8]] = v31;
  (*(v14 + 16))(&v11[v22[9]], v17, v12);
  type metadata accessor for MLFeatureValue();
  *&v11[v22[11]] = Dictionary.init(dictionaryLiteral:)();
  *v23 = 0;
  v23[1] = 0;
  v24 = OUTLINED_FUNCTION_5_10();
  v25 = specialized ActionProtocol.inferBundleId()(v24, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
  v27 = v26;
  _s7SiriCam0B5ParseOWOhTm_0(v30, type metadata accessor for CamParse);
  (*(v14 + 8))(v17, v12);
  _s7SiriCam0B5ParseOWOhTm_0(v21, type metadata accessor for CamParse);
  *v23 = v25;
  v23[1] = v27;
  OUTLINED_FUNCTION_29_2();
}

void RankedAction.init(flowHandlerId:parse:score:loggingId:alternatives:userData:)()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = type metadata accessor for RankedAction(0);
  v17 = &v15[v16[10]];
  *v15 = v13;
  *(v15 + 1) = v11;
  OUTLINED_FUNCTION_2_10();
  outlined init with copy of CamParse(v9, &v15[v18], v19);
  *&v15[v16[6]] = v3;
  *&v15[v16[7]] = v7;
  *&v15[v16[8]] = v1;
  v20 = v16[9];
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v15[v20], v5, v21);
  type metadata accessor for MLFeatureValue();
  *&v15[v16[11]] = Dictionary.init(dictionaryLiteral:)();
  *v17 = 0;
  v17[1] = 0;
  v23 = OUTLINED_FUNCTION_5_10();
  v24 = specialized ActionProtocol.inferBundleId()(v23, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
  v26 = v25;
  (*(v22 + 8))(v5, v21);
  OUTLINED_FUNCTION_3_10();
  _s7SiriCam0B5ParseOWOhTm_0(v9, v27);
  *v17 = v24;
  v17[1] = v26;
  OUTLINED_FUNCTION_29_2();
}

uint64_t RankedAction.description.getter()
{
  _StringGuts.grow(_:)(100);
  MEMORY[0x26D5DCD80](0xD000000000000014, 0x800000026681AFF0);
  v1 = type metadata accessor for RankedAction(0);
  Double.write<A>(to:)();
  MEMORY[0x26D5DCD80](0xD000000000000011, 0x800000026681B010);
  MEMORY[0x26D5DCD80](*v0, v0[1]);
  MEMORY[0x26D5DCD80](0x614472657375202CLL, 0xEC000000203A6174);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v2);

  MEMORY[0x26D5DCD80](0x3A6573726170202CLL, 0xE900000000000020);
  v3 = type metadata accessor for CamParse(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5DCD80](0xD000000000000010, 0x800000026681B030);
  v4 = MEMORY[0x26D5DCE80](*(v0 + *(v1 + 24)), v3);
  MEMORY[0x26D5DCD80](v4);

  MEMORY[0x26D5DCD80](0x6E6967676F6C202CLL, 0xED0000203A644967);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D5DCD80](v5);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  return 0;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RankedAction.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueAFSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RankedAction.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueSSvg_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance RankedAction.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLO8rawValueAFSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance RankedAction.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = RankedAction.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RankedAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RankedAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RankedAction.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam12RankedActionV10CodingKeys33_669DDB58ABA9B95181F4253FED030C0CLLOGMR);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_25_3();
  v6 = type metadata accessor for RankedAction(v5);
  v7 = v6;
  v8 = *(v1 + *(v6 + 32));
  if (v8)
  {
    v38 = a1;
    v39 = v6;
    v40 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    OUTLINED_FUNCTION_20_5();
    result = static _DictionaryStorage.copy(original:)();
    v10 = 0;
    v11 = v8 + 64;
    v12 = 1 << *(v8 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v8 + 64);
    v15 = (v12 + 63) >> 6;
    v42 = result + 8;
    v43 = result;
    if (v14)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_11:
        v19 = v16 | (v10 << 6);
        v20 = *(v8 + 56);
        v21 = v8;
        v22 = (*(v8 + 48) + 16 * v19);
        v23 = v22[1];
        v46 = *v22;
        outlined init with copy of Any(v20 + 32 * v19, v45);
        outlined init with copy of Any(v45, v44);

        v24 = String.init<A>(describing:)();
        v26 = v25;
        result = __swift_destroy_boxed_opaque_existential_0(v45);
        *(v42 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        v27 = (v43[6] + 16 * v19);
        *v27 = v46;
        v27[1] = v23;
        v28 = (v43[7] + 16 * v19);
        *v28 = v24;
        v28[1] = v26;
        v29 = v43[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          break;
        }

        v43[2] = v31;
        v8 = v21;
        if (!v14)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
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
          v2 = v40;
          a1 = v38;
          v7 = v39;
          goto LABEL_16;
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
    }

    __break(1u);
  }

  else
  {
    v43 = 0;
LABEL_16:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v45[0]) = 2;
    type metadata accessor for CamParse(0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CamParse and conformance CamParse, type metadata accessor for CamParse, &protocol conformance descriptor for CamParse);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v41)
    {
      v32 = OUTLINED_FUNCTION_14_6();
      v33(v32);
    }

    else
    {
      v45[0] = v43;
      v44[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
      v34 = lazy protocol witness table accessor for type [String : String]? and conformance <A> A?();
      OUTLINED_FUNCTION_13_8(v34);

      LOBYTE(v45[0]) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      v45[0] = *(v2 + *(v7 + 24));
      v44[0] = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam0B5ParseOGMd, &_sSay7SiriCam0B5ParseOGMR);
      v35 = lazy protocol witness table accessor for type [CamParse] and conformance <A> [A]();
      OUTLINED_FUNCTION_13_8(v35);
      LOBYTE(v45[0]) = 4;
      KeyedEncodingContainer.encode(_:forKey:)();
      v36 = OUTLINED_FUNCTION_14_6();
      return v37(v36);
    }
  }

  return result;
}

void RankedAction.with(score:)()
{
  OUTLINED_FUNCTION_30_2();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v7 = v6;
  v42 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v44 = v9;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v41 = &v37 - v11;
  v13 = type metadata accessor for CamParse(0);
  v14 = OUTLINED_FUNCTION_14(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v45 = v15;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *v0;
  v38 = v0[1];
  v39 = v19;
  v20 = type metadata accessor for RankedAction(0);
  v21 = v0 + v20[5];
  v43 = v18;
  outlined init with copy of CamParse(v21, v18, type metadata accessor for CamParse);
  v22 = *(v7 + 16);
  v22(v12, v0 + v20[9], v5);
  v46 = *(v0 + v20[11]);
  v23 = *(v0 + v20[6]);
  v37 = *(v0 + v20[8]);
  v24 = v18;
  v25 = v45;
  outlined init with copy of CamParse(v24, v45, type metadata accessor for CamParse);
  v26 = v44;
  v22(v44, v12, v5);
  v40 = &v4[v20[10]];
  v27 = v38;
  *v4 = v39;
  *(v4 + 1) = v27;
  outlined init with copy of CamParse(v25, &v4[v20[5]], type metadata accessor for CamParse);
  *&v4[v20[6]] = v23;
  *&v4[v20[7]] = v2;
  *&v4[v20[8]] = v37;
  v22(&v4[v20[9]], v26, v5);
  type metadata accessor for MLFeatureValue();

  v28 = Dictionary.init(dictionaryLiteral:)();
  v29 = v20[11];
  *&v4[v29] = v28;
  v30 = v40;
  *v40 = 0;
  v30[1] = 0;
  v31 = v30;
  v32 = OUTLINED_FUNCTION_5_10();
  v33 = specialized ActionProtocol.inferBundleId()(v32, type metadata accessor for RankedAction, type metadata accessor for RankedAction);
  v35 = v34;
  v36 = *(v42 + 8);
  v36(v44, v5);
  _s7SiriCam0B5ParseOWOhTm_0(v45, type metadata accessor for CamParse);
  v36(v41, v5);
  _s7SiriCam0B5ParseOWOhTm_0(v43, type metadata accessor for CamParse);

  *v31 = v33;
  v31[1] = v35;
  *&v4[v29] = v46;
  OUTLINED_FUNCTION_29_2();
}

uint64_t closure #1 in ActionProtocol.getAssociatedAppMentioned()@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_22();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (v34 - v13);
  v15 = *a1;
  if (*a1 >> 62)
  {
    if (v15 < 0)
    {
      v33 = *a1;
    }

    else
    {
      v33 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5DD300](v33);
    if (!result)
    {
      goto LABEL_32;
    }
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_32;
    }
  }

  v17 = v15 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

LABEL_5:
  dispatch thunk of UsoValue.getAsEntity()();
  OUTLINED_FUNCTION_10_9();

  if (v17)
  {
    UsoEntity.attributes.getter();

    specialized Dictionary.subscript.getter();
    OUTLINED_FUNCTION_20_5();

    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v17 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D5DD230](0, v17);
      }

      else
      {
        v17 = *(v17 + 32);
      }

      if (v17)
      {
        v35 = a2;

        v15 = v17;
        a2 = dispatch thunk of UsoValue.getUsoIdentifiers()();

        v40 = a2[2];
        if (v40)
        {
          v34[0] = v14;
          v34[1] = v17;
          v34[2] = v3;
          v3 = 0;
          v18 = *MEMORY[0x277D5F4C0];
          v38 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
          v39 = v18;
          v37 = v8 + 16;
          v36 = *MEMORY[0x277D5F538];
          v14 = (v8 + 8);
          do
          {
            if (v3 >= a2[2])
            {
              __break(1u);
LABEL_41:
              MEMORY[0x26D5DD230](0, v15);
              goto LABEL_5;
            }

            (*(v8 + 16))(v12, &v38[*(v8 + 72) * v3], v6);
            v19 = UsoIdentifier.appBundleId.getter();
            v15 = v20;
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v22;
            if (v19 == v21 && v15 == v22)
            {
            }

            else
            {
              v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v24 & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            v25 = UsoIdentifier.namespace.getter();
            v17 = v26;
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = v28;
            if (v17)
            {
              if (v25 == v27 && v17 == v28)
              {

LABEL_34:

                v31 = v34[0];
                (*(v8 + 32))(v34[0], v12, v6);
                UsoIdentifier.value.getter();
                OUTLINED_FUNCTION_19_5();

                result = (*(v8 + 8))(v31, v6);
                v32 = v35;
                *v35 = v17;
                v32[1] = v31;
                return result;
              }

              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v30)
              {
                goto LABEL_34;
              }
            }

            else
            {
            }

LABEL_28:
            ++v3;
            (*v14)(v12, v6);
          }

          while (v40 != v3);
        }

        a2 = v35;
      }
    }

    else
    {
    }
  }

LABEL_32:
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t ***, uint64_t))
{
  v6 = a4(a1, a2);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);
  OUTLINED_FUNCTION_10_9();

  v9 = *a1;
  *v9 = a3;
  *a1 = v9 + 1;
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t outlined destroy of Apple_Parsec_Siri_V2alpha_Sash?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMd, &_s10PegasusAPI30Apple_Parsec_Siri_V2alpha_SashVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RankedAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for RankedAction;
  if (!type metadata singleton initialization cache for RankedAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RankedAction.CodingKeys and conformance RankedAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CamParse] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [CamParse] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CamParse] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SiriCam0B5ParseOGMd, &_sSay7SiriCam0B5ParseOGMR);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CamParse and conformance CamParse, type metadata accessor for CamParse, &protocol conformance descriptor for CamParse);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CamParse] and conformance <A> [A]);
  }

  return result;
}

void type metadata completion function for RankedAction(uint64_t a1)
{
  type metadata accessor for CamParse(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [CamParse](319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String : Any]?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?();
          if (v5 <= 0x3F)
          {
            type metadata accessor for [String : MLFeatureValue](319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [CamParse](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [CamParse])
  {
    type metadata accessor for CamParse(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [CamParse]);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RankedAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of CamParse(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  v4 = OUTLINED_FUNCTION_8_0();
  v5(v4);
  return a2;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_23_4()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return type metadata accessor for CamParse(0);
}

void OUTLINED_FUNCTION_32_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 56);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = *(v6 - 2);
      v16[0] = *(v6 - 3);
      v16[1] = v10;
      v16[2] = v8;
      v16[3] = v9;

      (a1)(&v17, v16);
      if (v3)
      {
        break;
      }

      v11 = v17;
      if (v17 != 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v7 = v13;
        }

        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v7 = v14;
        }

        *(v7 + 16) = v12 + 1;
        *(v7 + v12 + 32) = v11;
      }

      v6 += 4;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v17 = *v5;
      a1(&v15, &v17, a2);
      if (v3)
      {
        break;
      }

      v7 = v16;
      if (v16)
      {
        v8 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v11;
        }

        v9 = *(v6 + 16);
        if (v9 >= *(v6 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v12;
        }

        *(v6 + 16) = v9 + 1;
        v10 = v6 + 16 * v9;
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;
      }

      ++v5;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v32 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_2_3();
  v30 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = *(a3 + 16);
  v16 = (a3 + 56);
  v17 = MEMORY[0x277D84F90];
  if (v15)
  {
    while (1)
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v20 = *(v16 - 2);
      v33[0] = *(v16 - 3);
      v33[1] = v20;
      v33[2] = v18;
      v33[3] = v19;

      v34(v33);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v32) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v8, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
      }

      else
      {
        outlined init with take of CamUSOParse(v8, v14, type metadata accessor for RankedAction);
        outlined init with take of CamUSOParse(v14, v31, type metadata accessor for RankedAction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = OUTLINED_FUNCTION_0_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v24, v25, v17);
          v17 = v26;
        }

        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v17);
          v17 = v27;
        }

        *(v17 + 16) = v22 + 1;
        outlined init with take of CamUSOParse(v31, v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, type metadata accessor for RankedAction);
      }

      v16 += 4;
      if (!--v15)
      {
        return v17;
      }
    }
  }

  return v17;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t DisambiguationSerialiser.init(actions:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;

  OUTLINED_FUNCTION_5_11();
  specialized MutableCollection<>.sort(by:)(&v5, v3, specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

  *a2 = v5;
  return result;
}

BOOL closure #1 in DisambiguationSerialiser.init(actions:)(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 40))(v4, v5);
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v14 = v13;
  if (v13)
  {
    v15 = v8 == v12 && v9 == v13;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v29 & 1;
    }

    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v18 = ActionProtocol.actionRepresentation.getter(v16, v17);
    v20 = v19;
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    v23 = ActionProtocol.actionRepresentation.getter(v21, v22);
    v25 = v24;
    if (v20)
    {
      if (v24)
      {
        if (v18 != v23 || v20 != v24)
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v27 & 1;
        }

        return 0;
      }
    }

    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.ranker);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266790000, v31, v32, "DisambiguationSerialiser: at least 1 action has nil representation, this should not happen.", v33, 2u);
      MEMORY[0x26D5DDCD0](v33, -1, -1);
    }

    v14 = v25 == 0;
  }

  return v14;
}

uint64_t DisambiguationSerialiser.indexOfSelectedAction(selected:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  v10 = *v1;
  v27 = a1;
  v11 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in DisambiguationSerialiser.indexOfSelectedAction(selected:), v26, v10);
  if (v12)
  {
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.ranker);
    outlined init with copy of SignalProviding(a1, v29);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_15();
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v16 = 136315138;
      v25 = v11;
      v18 = v30;
      v17 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v17 + 32))(v18, v17);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v5 + 8))(v9, v3);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v28);

      *(v16 + 4) = v22;
      v11 = v25;
      _os_log_impl(&dword_266790000, v14, v15, "Could not find selected action %s in the candidates list", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v29);
    }
  }

  return v11;
}

uint64_t closure #1 in DisambiguationSerialiser.indexOfSelectedAction(selected:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 32))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 32))(v13, v14);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i, a2);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t DisambiguationSerialiser.serialisedSelectedActionIndex(selected:)(uint64_t a1)
{
  DisambiguationSerialiser.indexOfSelectedAction(selected:)(a1);
  if (v1)
  {
    return 0;
  }

  else
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisambiguationSerialiser.serialiseActionBundles()()
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = OUTLINED_FUNCTION_14(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    v7 = *(*v0 + 16);
    do
    {
      outlined init with copy of SignalProviding(v5, &v54);
      v8 = v55;
      v9 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, v55);
      v10 = (*(v9 + 40))(v8, v9);
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0(&v54);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v15;
        }

        v13 = *(v6 + 16);
        if (v13 >= *(v6 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v16;
        }

        *(v6 + 16) = v13 + 1;
        v14 = v6 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
      }

      v5 += 40;
      --v7;
    }

    while (v7);
    v17 = *(v3 + 16);
  }

  else
  {
    v17 = 0;
    v6 = MEMORY[0x277D84F90];
  }

  if (*(v6 + 16) == v17)
  {
    v18 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    *&v54 = 0;
    v20 = [v18 dataWithJSONObject:isa options:0 error:&v54];

    v21 = v54;
    if (v20)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      static String.Encoding.utf8.getter();
      OUTLINED_FUNCTION_11_7();
      String.init(data:encoding:)();
      v22 = OUTLINED_FUNCTION_11_7();
      outlined consume of Data._Representation(v22, v23);
    }

    else
    {
      v51 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {

    v24 = 0;
    v25 = v3 + 32;
    v26 = MEMORY[0x277D84F90];
    while (v4 != v24)
    {
      if (v24 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      outlined init with copy of SignalProviding(v25, &v54);
      v27 = v55;
      v28 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, v55);
      (*(v28 + 40))(v27, v28);
      if (v29)
      {

        __swift_destroy_boxed_opaque_existential_0(&v54);
      }

      else
      {
        outlined init with take of ActionProtocol(&v54, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_11_8();
        }

        v30 = *(v26 + 24);
        if (*(v26 + 16) >= v30 >> 1)
        {
          OUTLINED_FUNCTION_13_9(v30);
        }

        __swift_mutable_project_boxed_opaque_existential_1(v53, v53[3]);
        OUTLINED_FUNCTION_2_3();
        MEMORY[0x28223BE20](v31);
        OUTLINED_FUNCTION_3_0();
        v33 = OUTLINED_FUNCTION_9_9(v32);
        v34(v33);
        OUTLINED_FUNCTION_14_7();
        __swift_destroy_boxed_opaque_existential_0(v53);
      }

      v25 += 40;
      ++v24;
    }

    if (one-time initialization token for ranker == -1)
    {
      goto LABEL_27;
    }

LABEL_34:
    OUTLINED_FUNCTION_2_0();
    swift_once();
LABEL_27:
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.ranker);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_15();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v54 = v39;
      *v38 = 136315138;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pMd, &_s7SiriCam14ActionProtocol_pMR);
      v41 = MEMORY[0x26D5DCE80](v26, v40);
      v43 = v42;

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v54);

      *(v38 + 4) = v44;
      OUTLINED_FUNCTION_6_9(&dword_266790000, v45, v46, "DisambiguationSerialiser: could not serialize due to nil bundle (%s)");
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v47);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v48);
    }

    else
    {
    }
  }

  v49 = OUTLINED_FUNCTION_17_6();
  result.value._object = v50;
  result.value._countAndFlagsBits = v49;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DisambiguationSerialiser.serialiseActionRepresentations()()
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = OUTLINED_FUNCTION_14(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    v7 = *(*v0 + 16);
    do
    {
      outlined init with copy of SignalProviding(v5, &v50);
      v8 = OUTLINED_FUNCTION_19_6();
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(&v50);
      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v13;
        }

        v11 = *(v6 + 16);
        if (v11 >= *(v6 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v14;
        }

        *(v6 + 16) = v11 + 1;
        v12 = v6 + 16 * v11;
        *(v12 + 32) = v8;
        *(v12 + 40) = v10;
      }

      v5 += 40;
      --v7;
    }

    while (v7);
    v15 = *(v3 + 16);
  }

  else
  {
    v15 = 0;
    v6 = MEMORY[0x277D84F90];
  }

  if (*(v6 + 16) == v15)
  {
    v16 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    *&v50 = 0;
    v18 = [v16 dataWithJSONObject:isa options:0 error:&v50];

    v19 = v50;
    if (v18)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      static String.Encoding.utf8.getter();
      OUTLINED_FUNCTION_11_7();
      String.init(data:encoding:)();
      v20 = OUTLINED_FUNCTION_11_7();
      outlined consume of Data._Representation(v20, v21);
    }

    else
    {
      v47 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {

    v22 = 0;
    v23 = v3 + 32;
    v24 = MEMORY[0x277D84F90];
    while (v4 != v22)
    {
      if (v22 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      outlined init with copy of SignalProviding(v23, &v50);
      OUTLINED_FUNCTION_19_6();
      if (v25)
      {

        __swift_destroy_boxed_opaque_existential_0(&v50);
      }

      else
      {
        outlined init with take of ActionProtocol(&v50, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_11_8();
        }

        v26 = *(v24 + 24);
        if (*(v24 + 16) >= v26 >> 1)
        {
          OUTLINED_FUNCTION_13_9(v26);
        }

        __swift_mutable_project_boxed_opaque_existential_1(v49, v49[3]);
        OUTLINED_FUNCTION_2_3();
        MEMORY[0x28223BE20](v27);
        OUTLINED_FUNCTION_3_0();
        v29 = OUTLINED_FUNCTION_9_9(v28);
        v30(v29);
        OUTLINED_FUNCTION_14_7();
        __swift_destroy_boxed_opaque_existential_0(v49);
      }

      v23 += 40;
      ++v22;
    }

    if (one-time initialization token for ranker == -1)
    {
      goto LABEL_27;
    }

LABEL_34:
    OUTLINED_FUNCTION_2_0();
    swift_once();
LABEL_27:
    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.ranker);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_15();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v50 = v35;
      *v34 = 136315138;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pMd, &_s7SiriCam14ActionProtocol_pMR);
      v37 = MEMORY[0x26D5DCE80](v24, v36);
      v39 = v38;

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v50);

      *(v34 + 4) = v40;
      OUTLINED_FUNCTION_6_9(&dword_266790000, v41, v42, "DisambiguationSerialiser: could not serialize due to nil repr (%s)");
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v43);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v44);
    }

    else
    {
    }
  }

  v45 = OUTLINED_FUNCTION_17_6();
  result.value._object = v46;
  result.value._countAndFlagsBits = v45;
  return result;
}

SiriCam::DisambiguationSerialiser::DonationFields_optional __swiftcall DisambiguationSerialiser.DonationFields.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DisambiguationSerialiser.DonationFields.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t DisambiguationSerialiser.DonationFields.rawValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DisambiguationSerialiser.DonationFields@<X0>(unint64_t *a1@<X8>)
{
  result = DisambiguationSerialiser.DonationFields.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriSignalsQueryManager.serialiseQueryFields(fields:selected:)(uint64_t a1, uint64_t a2)
{
  v11[2] = *v2;
  v11[3] = a2;
  v4 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in SiriSignalsQueryManager.serialiseQueryFields(fields:selected:), v11, a1);
  if (*(v4 + 16) == *(a1 + 16))
  {
    v11[4] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v5 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.ranker);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_266790000, v7, v8, "At least one of the query fields could not be serialised.", v9, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    return 0;
  }

  return v5;
}

uint64_t closure #1 in SiriSignalsQueryManager.serialiseQueryFields(fields:selected:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*a1)
  {
    v19[0] = a2;

    v10 = DisambiguationSerialiser.serialiseActionBundles()();
    object = v10.value._object;
    countAndFlagsBits = v10.value._countAndFlagsBits;
LABEL_5:
    v11 = countAndFlagsBits;
    v12 = object;

    if (v8)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (*a1 == 1)
  {
    v19[0] = a2;

    v9 = DisambiguationSerialiser.serialiseActionRepresentations()();
    object = v9.value._object;
    countAndFlagsBits = v9.value._countAndFlagsBits;
    goto LABEL_5;
  }

  outlined init with copy of ActionProtocol?(a3, &v17);
  if (!v18)
  {
    result = outlined destroy of (CamLogOutput, CamModelMetadata)(&v17, &_s7SiriCam14ActionProtocol_pSgMd, &_s7SiriCam14ActionProtocol_pSgMR);
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  outlined init with take of ActionProtocol(&v17, v19);
  *&v17 = a2;

  v14 = DisambiguationSerialiser.indexOfSelectedAction(selected:)(v19);
  if (v15)
  {

    v11 = 0;
    v12 = 0;
  }

  else
  {
    *&v17 = v14;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v16;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v19);
LABEL_13:
  *a4 = v11;
  a4[1] = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pMd, &_s7SiriCam14ActionProtocol_pMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_142:
    v147 = *a1;
    if (!v147)
    {
      goto LABEL_184;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_144;
    }

    goto LABEL_178;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5++;
    v134 = v7;
    if (v5 >= v4)
    {
      goto LABEL_49;
    }

    v8 = *a3;
    outlined init with copy of SignalProviding(&(*a3)[40 * v5], &v144);
    outlined init with copy of SignalProviding(&v8[40 * v7], v141);
    LODWORD(v147) = closure #1 in DisambiguationSerialiser.init(actions:)(&v144, v141);
    if (v140)
    {
      __swift_destroy_boxed_opaque_existential_0(v141);
      __swift_destroy_boxed_opaque_existential_0(&v144);
LABEL_152:

      return;
    }

    v132 = v6;
    __swift_destroy_boxed_opaque_existential_0(v141);
    __swift_destroy_boxed_opaque_existential_0(&v144);
    v6 = 40 * v7;
    v9 = &v8[40 * v7 + 80];
    v10 = v7 + 2;
    v137 = v4;
    while (1)
    {
      v11 = v10;
      if (v5 + 1 >= v4)
      {
        break;
      }

      outlined init with copy of SignalProviding(v9, &v144);
      outlined init with copy of SignalProviding(v9 - 40, v141);
      v12 = v145;
      v13 = v146;
      __swift_project_boxed_opaque_existential_1(&v144, v145);
      v14 = (*(v13 + 40))(v12, v13);
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        v19 = v142;
        v18 = v143;
        __swift_project_boxed_opaque_existential_1(v141, v142);
        v20 = (*(v18 + 40))(v19, v18);
        if (!v21)
        {
          goto LABEL_31;
        }

        v22 = v16 == v20 && v17 == v21;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v23 = v145;
          v24 = v146;
          __swift_project_boxed_opaque_existential_1(&v144, v145);
          v25 = ActionProtocol.actionRepresentation.getter(v23, v24);
          v27 = v26;
          v28 = v142;
          v29 = v143;
          __swift_project_boxed_opaque_existential_1(v141, v142);
          v30 = ActionProtocol.actionRepresentation.getter(v28, v29);
          v32 = v31;
          if (v27)
          {
            if (v31)
            {
              if (v25 != v30 || v27 != v31)
              {
                goto LABEL_20;
              }

LABEL_31:

              v34 = 0;
LABEL_32:
              v4 = v137;
              goto LABEL_33;
            }
          }

          if (one-time initialization token for ranker != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          __swift_project_value_buffer(v35, static Logger.ranker);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_266790000, v36, v37, "DisambiguationSerialiser: at least 1 action has nil representation, this should not happen.", v38, 2u);
            MEMORY[0x26D5DDCD0](v38, -1, -1);
          }

          v34 = v32 == 0;
        }

        else
        {
LABEL_20:
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_32;
      }

      v34 = 0;
LABEL_33:
      __swift_destroy_boxed_opaque_existential_0(v141);
      __swift_destroy_boxed_opaque_existential_0(&v144);
      v9 += 40;
      ++v5;
      v10 = v11 + 1;
      if ((v147 ^ v34))
      {
        goto LABEL_36;
      }
    }

    v5 = v4;
LABEL_36:
    if ((v147 & 1) == 0)
    {
LABEL_47:
      v6 = v132;
      v7 = v134;
      goto LABEL_49;
    }

    v7 = v134;
    if (v5 < v134)
    {
      goto LABEL_177;
    }

    if (v134 < v5)
    {
      if (v4 >= v11)
      {
        v39 = v11;
      }

      else
      {
        v39 = v4;
      }

      v40 = 40 * v39 - 40;
      v41 = v5;
      do
      {
        if (v7 != --v41)
        {
          v42 = *a3;
          if (!*a3)
          {
            goto LABEL_182;
          }

          v43 = &v42[v6];
          v44 = &v42[v40];
          outlined init with take of ActionProtocol(&v42[v6], &v144);
          v45 = *(v44 + 32);
          v46 = *(v44 + 16);
          *v43 = *v44;
          *(v43 + 1) = v46;
          *(v43 + 4) = v45;
          outlined init with take of ActionProtocol(&v144, v44);
        }

        ++v7;
        v40 -= 40;
        v6 += 40;
      }

      while (v7 < v41);
      goto LABEL_47;
    }

    v6 = v132;
LABEL_49:
    v47 = a3[1];
    if (v5 < v47)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_174;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_90:
    if (v5 < v7)
    {
      goto LABEL_173;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v121;
    }

    v80 = *(v6 + 16);
    v81 = v80 + 1;
    if (v80 >= *(v6 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v122;
    }

    *(v6 + 16) = v81;
    v82 = v6 + 32;
    v83 = (v6 + 32 + 16 * v80);
    *v83 = v134;
    v83[1] = v5;
    v147 = *a1;
    if (!v147)
    {
      goto LABEL_183;
    }

    if (v80)
    {
      while (1)
      {
        v84 = v81 - 1;
        v85 = (v82 + 16 * (v81 - 1));
        v86 = (v6 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v6 + 32);
          v88 = *(v6 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_110:
          if (v90)
          {
            goto LABEL_160;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_163;
          }

          v106 = v85[1];
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_166;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_168;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_132;
          }

          goto LABEL_125;
        }

        if (v81 < 2)
        {
          goto LABEL_162;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_125:
        if (v105)
        {
          goto LABEL_165;
        }

        v111 = *v85;
        v110 = v85[1];
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_167;
        }

        if (v112 < v104)
        {
          goto LABEL_139;
        }

LABEL_132:
        if (v84 - 1 >= v81)
        {
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        if (!*a3)
        {
          goto LABEL_180;
        }

        v116 = v6;
        v117 = (v82 + 16 * (v84 - 1));
        v118 = *v117;
        v6 = v82 + 16 * v84;
        v119 = *(v6 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*a3)[40 * *v117], &(*a3)[40 * *v6], &(*a3)[40 * v119], v147);
        if (v140)
        {
          goto LABEL_152;
        }

        if (v119 < v118)
        {
          goto LABEL_155;
        }

        v120 = *(v116 + 16);
        if (v84 > v120)
        {
          goto LABEL_156;
        }

        *v117 = v118;
        v117[1] = v119;
        if (v84 >= v120)
        {
          goto LABEL_157;
        }

        v81 = v120 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v6 + 16), v120 - 1 - v84, (v82 + 16 * v84));
        v6 = v116;
        *(v116 + 16) = v120 - 1;
        if (v120 <= 2)
        {
          goto LABEL_139;
        }
      }

      v91 = v82 + 16 * v81;
      v92 = *(v91 - 64);
      v93 = *(v91 - 56);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_158;
      }

      v96 = *(v91 - 48);
      v95 = *(v91 - 40);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_159;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_161;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_164;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = v85[1];
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_172;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_132;
      }

      goto LABEL_110;
    }

LABEL_139:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_142;
    }
  }

  v48 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_175;
  }

  if (v48 >= v47)
  {
    v48 = a3[1];
  }

  if (v48 < v7)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
LABEL_144:
    v123 = v6;
    v124 = (v6 + 16);
    for (i = *(v6 + 16); ; *v124 = i)
    {
      v6 = i - 2;
      if (i < 2)
      {
        break;
      }

      if (!*a3)
      {
        goto LABEL_181;
      }

      v126 = (v123 + 16 * i);
      v127 = *v126;
      v128 = &v124[2 * i];
      v129 = *(v128 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)(&(*a3)[40 * *v126], &(*a3)[40 * *v128], &(*a3)[40 * v129], v147);
      if (v140)
      {
        break;
      }

      if (v129 < v127)
      {
        goto LABEL_169;
      }

      if (v6 >= *v124)
      {
        goto LABEL_170;
      }

      *v126 = v127;
      v126[1] = v129;
      v130 = *v124 - i;
      if (*v124 < i)
      {
        goto LABEL_171;
      }

      i = *v124 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v128 + 16, v130, v128);
    }

    goto LABEL_152;
  }

  if (v5 == v48)
  {
    goto LABEL_90;
  }

  v147 = *a3;
  v49 = &v147[40 * v5];
  v50 = v7 - v5;
  v135 = v48;
  while (2)
  {
    v136 = v50;
    v138 = v49;
LABEL_59:
    outlined init with copy of SignalProviding(v49, &v144);
    outlined init with copy of SignalProviding((v49 - 40), v141);
    v51 = v145;
    v52 = v146;
    __swift_project_boxed_opaque_existential_1(&v144, v145);
    v53 = (*(v52 + 40))(v51, v52);
    if (!v54)
    {
      goto LABEL_87;
    }

    v55 = v53;
    v56 = v54;
    v57 = v142;
    v58 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    v59 = (*(v58 + 40))(v57, v58);
    if (!v60)
    {
      goto LABEL_86;
    }

    v61 = v55 == v59 && v56 == v60;
    if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v62 = v145;
      v63 = v146;
      __swift_project_boxed_opaque_existential_1(&v144, v145);
      v64 = ActionProtocol.actionRepresentation.getter(v62, v63);
      v66 = v65;
      v67 = v142;
      v68 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      v69 = ActionProtocol.actionRepresentation.getter(v67, v68);
      v71 = v70;
      if (v66)
      {
        if (v70)
        {
          if (v64 == v69 && v66 == v70)
          {

LABEL_86:

LABEL_87:
            __swift_destroy_boxed_opaque_existential_0(v141);
            __swift_destroy_boxed_opaque_existential_0(&v144);
LABEL_88:
            ++v5;
            v49 = v138 + 40;
            v50 = v136 - 1;
            if (v5 == v135)
            {
              v5 = v135;
              v7 = v134;
              goto LABEL_90;
            }

            continue;
          }

          goto LABEL_72;
        }
      }

      if (one-time initialization token for ranker != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Logger.ranker);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_266790000, v75, v76, "DisambiguationSerialiser: at least 1 action has nil representation, this should not happen.", v77, 2u);
        MEMORY[0x26D5DDCD0](v77, -1, -1);
      }

      v73 = v71 == 0;
    }

    else
    {
LABEL_72:
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    break;
  }

  __swift_destroy_boxed_opaque_existential_0(v141);
  __swift_destroy_boxed_opaque_existential_0(&v144);
  if ((v73 & 1) == 0)
  {
    goto LABEL_88;
  }

  if (v147)
  {
    outlined init with take of ActionProtocol(v49, &v144);
    v78 = *(v49 - 24);
    *v49 = *(v49 - 40);
    *(v49 + 1) = v78;
    *(v49 + 4) = *(v49 - 1);
    outlined init with take of ActionProtocol(&v144, (v49 - 40));
    v49 -= 40;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 40;
  v10 = (a3 - a2) / 40;
  if (v9 < v10)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 40, a4);
    v11 = v5 + 40 * v9;
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v34 = v8;
        goto LABEL_30;
      }

      outlined init with copy of SignalProviding(v7, v45);
      outlined init with copy of SignalProviding(v5, v44);
      v13 = closure #1 in DisambiguationSerialiser.init(actions:)(v45, v44);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_0(v44);
        __swift_destroy_boxed_opaque_existential_0(v45);
        v38 = (v11 - v5) / 40;
        v39 = v8 < v5 || v8 >= v5 + 40 * v38;
        if (v39 || v8 != v5)
        {
          v37 = 40 * v38;
          v34 = v8;
LABEL_42:
          v40 = v5;
LABEL_49:
          memmove(v34, v40, v37);
        }

        return 1;
      }

      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(v44);
      __swift_destroy_boxed_opaque_existential_0(v45);
      if (!v14)
      {
        break;
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 40;
      if (!v16)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 += 40;
    }

    v15 = v5;
    v16 = v8 == v5;
    v5 += 40;
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_13:
    v17 = *v15;
    v18 = *(v15 + 16);
    *(v8 + 4) = *(v15 + 32);
    *v8 = v17;
    *(v8 + 1) = v18;
    goto LABEL_14;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 40, a4);
  v19 = v5 + 40 * v10;
  v20 = -v5;
  v43 = -v5;
LABEL_16:
  v46 = v7;
  v21 = (v7 - 40);
  v6 -= 40;
  v22 = v19 - 40;
  for (i = v20 + v19; ; i -= 40)
  {
    v11 = v22 + 40;
    if (v22 + 40 <= v5 || v46 <= v8)
    {
      v34 = v46;
LABEL_30:
      v35 = (v11 - v5) / 40;
      v36 = v34 < v5 || v34 >= v5 + 40 * v35;
      if (v36 || v34 != v5)
      {
        v37 = 40 * v35;
        goto LABEL_42;
      }

      return 1;
    }

    v25 = v5;
    outlined init with copy of SignalProviding(v22, v45);
    v26 = v21;
    outlined init with copy of SignalProviding(v21, v44);
    v27 = closure #1 in DisambiguationSerialiser.init(actions:)(v45, v44);
    if (v4)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(v44);
    __swift_destroy_boxed_opaque_existential_0(v45);
    if (v28)
    {
      v19 = v22 + 40;
      v31 = v26;
      v7 = v26;
      v20 = v43;
      v5 = v25;
      if (v6 + 40 != v46)
      {
        v32 = *v31;
        v33 = *(v31 + 1);
        *(v6 + 32) = *(v31 + 4);
        *v6 = v32;
        *(v6 + 16) = v33;
        v7 = v31;
      }

      goto LABEL_16;
    }

    if (v11 != v6 + 40)
    {
      v29 = *v22;
      v30 = *(v22 + 16);
      *(v6 + 32) = *(v22 + 32);
      *v6 = v29;
      *(v6 + 16) = v30;
    }

    v6 -= 40;
    v22 -= 40;
    v21 = v26;
    v5 = v25;
  }

  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v45);
  v34 = v46;
  v41 = v46 < v25 || v46 >= v25 + 40 * (i / 40);
  if (v41 || v46 != v25)
  {
    v37 = 40 * (i / 40);
    v40 = v25;
    goto LABEL_49;
  }

  return 1;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ActionProtocol(&v12, v10 + 40 * a1 + 32);
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

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t specialized static DisambiguationSerialiser.actionToStrRepresentation(action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_2_3();
  v65 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for CamUSOParse(0);
  v17 = OUTLINED_FUNCTION_14(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_0();
  v24 = (v23 - v22);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_0();
  v28 = v27 - v26;
  v67 = v29;
  (*(v29 + 16))(v27 - v26, a1, a2);
  v30 = *(a3 + 16);
  v66 = v28;
  v68 = a2;
  v30(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v37 = v65;
    outlined init with take of CamUSOParse(v24, v20, type metadata accessor for CamUSOParse);
    v38 = CamUSOParse.appShortcutInvocation.getter();
    if (v41)
    {
      v42 = v39;
      v43 = v40;
      strcpy(v69, "appshortcuts:");
      HIWORD(v69[1]) = -4864;

      MEMORY[0x26D5DCD80](v42, v43);
      swift_bridgeObjectRelease_n();

      v36 = v69[0];
LABEL_6:
      OUTLINED_FUNCTION_0_7();
      outlined destroy of CamParse(v20, v44);
      goto LABEL_26;
    }

    v51 = MEMORY[0x26D5DC620](v38);
    specialized Collection.first.getter(v51);

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v9, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    else
    {
      (*(v37 + 32))(v15, v9, v10);
      v52 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      if (specialized Array.count.getter() == 1 && specialized Array.count.getter())
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        if ((v52 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D5DD230](0, v52);
        }

        else
        {
        }

        v69[0] = 0x3A34766C6ELL;
        v69[1] = 0xE500000000000000;
        v53 = UsoTask.verbString.getter();
        MEMORY[0x26D5DCD80](v53);

        MEMORY[0x26D5DCD80](14906, 0xE200000000000000);
        v54 = UsoTask.baseEntityAsString.getter();
        MEMORY[0x26D5DCD80](v54);

        v36 = v69[0];
        v55 = OUTLINED_FUNCTION_8_9();
        v56(v55);
        goto LABEL_6;
      }

      v57 = OUTLINED_FUNCTION_8_9();
      v58(v57);
    }

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.ranker);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_266790000, v60, v61, "Couldn't convert UserDialogAct to UsoTask.", v62, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    OUTLINED_FUNCTION_0_7();
    v50 = v20;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.ranker);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_266790000, v46, v47, "Couldn't represent action as string, not NLv4 parse & not an app shortcut.", v48, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v49 = type metadata accessor for CamParse;
    v50 = v24;
LABEL_25:
    outlined destroy of CamParse(v50, v49);
    v36 = 0;
    goto LABEL_26;
  }

  v32 = *v24;
  v69[0] = dispatch thunk of PommesResponse.primaryCatIds()();

  specialized MutableCollection<>.sort(by:)(v69, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v33 = BidirectionalCollection<>.joined(separator:)();
  v35 = v34;

  strcpy(v69, "pommes:");
  v69[1] = 0xE700000000000000;
  MEMORY[0x26D5DCD80](v33, v35);

  v36 = v69[0];
LABEL_26:
  (*(v67 + 8))(v66, v68);
  return v36;
}

unint64_t lazy protocol witness table accessor for type DisambiguationSerialiser.DonationFields and conformance DisambiguationSerialiser.DonationFields()
{
  result = lazy protocol witness table cache variable for type DisambiguationSerialiser.DonationFields and conformance DisambiguationSerialiser.DonationFields;
  if (!lazy protocol witness table cache variable for type DisambiguationSerialiser.DonationFields and conformance DisambiguationSerialiser.DonationFields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationSerialiser.DonationFields and conformance DisambiguationSerialiser.DonationFields);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationSerialiser.DonationFields(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of ActionProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pSgMd, &_s7SiriCam14ActionProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CamUSOParse(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for DisambiguationSerialiser(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for DisambiguationSerialiser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v2, v3, (v4 - 176), v0, v1);
}

uint64_t OUTLINED_FUNCTION_19_6()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 96);
  v3 = __swift_project_boxed_opaque_existential_1((v0 - 128), v1);

  return specialized static DisambiguationSerialiser.actionToStrRepresentation(action:)(v3, v1, v2);
}

uint64_t type metadata accessor for UserHistoryTieBreaker(uint64_t a1)
{
  result = type metadata singleton initialization cache for UserHistoryTieBreaker;
  if (!type metadata singleton initialization cache for UserHistoryTieBreaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UserHistoryTieBreaker(uint64_t a1)
{
  result = type metadata accessor for RankedAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for mockFeatures()
{
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  result = Dictionary.init(dictionaryLiteral:)();
  static UserHistoryTieBreaker.mockFeatures = result;
  return result;
}

uint64_t UserHistoryTieBreaker.enabled.getter()
{
  OUTLINED_FUNCTION_9_2();
  v1 = static TrialProvider.fetchBoolFactorFromTrial(_:)(0xD000000000000021, v0);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    return 0;
  }

  return CamFeatureFlag.isEnabled.getter(5);
}

uint64_t UserHistoryTieBreaker.init(tie:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UserHistoryTieBreaker(0);
  *(a2 + v4[6]) = 0x3FB70A3D70A3D70ALL;
  *(a2 + v4[7]) = 3600;
  *(a2 + v4[8]) = 600;
  *(a2 + v4[9]) = 900;
  *(a2 + v4[10]) = 300;
  *(a2 + v4[11]) = 4;
  *(a2 + v4[12]) = 0x3FECCCCCCCCCCCCDLL;
  *(a2 + v4[13]) = 6;
  *(a2 + v4[14]) = 0x3FECCCCCCCCCCCCDLL;
  _s7SiriCam0B8USOParseVWObTm_0(a1, a2);
  v5 = type metadata accessor for TopTwo(0);
  return _s7SiriCam0B8USOParseVWObTm_0(a1 + *(v5 + 20), a2 + v4[5]);
}

uint64_t UserHistoryTieBreaker.actionBoost(features:loggingId:)@<X0>(Swift::OpaquePointer a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (one-time initialization token for mockFeatures != -1)
  {
    swift_once();
  }

  if (*(static UserHistoryTieBreaker.mockFeatures + 16))
  {

    Dictionary<>.mock(with:for:)(v8, a2, a1._rawValue);
    a1._rawValue = v9;
  }

  else
  {
  }

  if (UserHistoryTieBreaker.rule_ForegroundedAppShortcut(_:)(a1))
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v10, static Logger.ranker);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_10(v12))
    {
      v13 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_13_10(v13);
      OUTLINED_FUNCTION_3_11(&dword_266790000, v14, v15, "[UserHistoryHeuristic] ForegroundedAppShortcut rule match.");
      OUTLINED_FUNCTION_2_4();
    }

    v16 = *(v4 + *(type metadata accessor for UserHistoryTieBreaker(0) + 24));
    OUTLINED_FUNCTION_30_3();
    v18 = v17 - 5;
    goto LABEL_38;
  }

  v19 = OUTLINED_FUNCTION_16_5();
  if (UserHistoryTieBreaker.rule_RecentDisambiguationSameActions(_:)(v19))
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v20, static Logger.ranker);
    v11 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_10(v21))
    {
      v22 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_13_10(v22);
      OUTLINED_FUNCTION_3_11(&dword_266790000, v23, v24, "[UserHistoryHeuristic] RecentDisambiguationSameActions rule match.");
      OUTLINED_FUNCTION_2_4();
    }

    v25 = type metadata accessor for UserHistoryTieBreaker(0);
    v16 = OUTLINED_FUNCTION_15_7(v25) + -0.01;
LABEL_18:
    OUTLINED_FUNCTION_30_3();
    v18 = v26 | 3;
    goto LABEL_38;
  }

  v27 = OUTLINED_FUNCTION_16_5();
  if (UserHistoryTieBreaker.rule_RecentDisambiguationSameApps(_:)(v27))
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v28, static Logger.ranker);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_10(v30))
    {
      v31 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_13_10(v31);
      OUTLINED_FUNCTION_3_11(&dword_266790000, v32, v33, "[UserHistoryHeuristic] RecentDisambiguationSameApps rule match.");
      OUTLINED_FUNCTION_2_4();
    }

    v18 = 0xD00000000000001CLL;

    v34 = type metadata accessor for UserHistoryTieBreaker(0);
    v16 = OUTLINED_FUNCTION_15_7(v34) + -0.02;
    v35 = "RecentDisambiguationSameApps";
LABEL_25:
    v11 = ((v35 - 32) | 0x8000000000000000);
    goto LABEL_38;
  }

  v36 = OUTLINED_FUNCTION_16_5();
  if (UserHistoryTieBreaker.rule_RecentInstall(_:)(v36))
  {

    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v37, static Logger.ranker);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_10(v39))
    {
      v40 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_13_10(v40);
      OUTLINED_FUNCTION_3_11(&dword_266790000, v41, v42, "[UserHistoryHeuristic] RecentInstall rule match.");
      OUTLINED_FUNCTION_2_4();
    }

    v43 = type metadata accessor for UserHistoryTieBreaker(0);
    v16 = OUTLINED_FUNCTION_15_7(v43) + -0.03;
    v11 = 0xED00006C6C617473;
    v18 = 0x6E49746E65636552;
  }

  else
  {
    v44 = OUTLINED_FUNCTION_16_5();
    if (UserHistoryTieBreaker.rule_RecentLaunch(_:)(v44))
    {

      if (one-time initialization token for ranker != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
      }

      v45 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v45, static Logger.ranker);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_10(v47))
      {
        v48 = OUTLINED_FUNCTION_23_5();
        OUTLINED_FUNCTION_13_10(v48);
        OUTLINED_FUNCTION_3_11(&dword_266790000, v49, v50, "[UserHistoryHeuristic] RecentLaunch rule match.");
        OUTLINED_FUNCTION_2_4();
      }

      v51 = type metadata accessor for UserHistoryTieBreaker(0);
      v16 = OUTLINED_FUNCTION_15_7(v51) + -0.04;
      v11 = 0xEC00000068636E75;
      v18 = 0x614C746E65636552;
    }

    else
    {
      v55 = OUTLINED_FUNCTION_16_5();
      if (UserHistoryTieBreaker.rule_HistoricalPreferenceSameActions(_:)(v55))
      {

        if (one-time initialization token for ranker != -1)
        {
          OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
        }

        v56 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v56, static Logger.ranker);
        v11 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_10(v57))
        {
          v58 = OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_13_10(v58);
          OUTLINED_FUNCTION_3_11(&dword_266790000, v59, v60, "[UserHistoryHeuristic] HistoricalPreferenceSameActions rule match.");
          OUTLINED_FUNCTION_2_4();
        }

        v61 = type metadata accessor for UserHistoryTieBreaker(0);
        v16 = OUTLINED_FUNCTION_15_7(v61) + -0.05;
        goto LABEL_18;
      }

      v62 = OUTLINED_FUNCTION_16_5();
      v63 = UserHistoryTieBreaker.rule_HistoricalPreferenceSameApps(_:)(v62);

      if (v63)
      {
        if (one-time initialization token for ranker != -1)
        {
          OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
        }

        v64 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v64, static Logger.ranker);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_10(v66))
        {
          v67 = OUTLINED_FUNCTION_23_5();
          OUTLINED_FUNCTION_13_10(v67);
          OUTLINED_FUNCTION_3_11(&dword_266790000, v68, v69, "[UserHistoryHeuristic] HistoricalPreferenceSameApps rule match.");
          OUTLINED_FUNCTION_2_4();
        }

        v18 = 0xD00000000000001CLL;

        v70 = type metadata accessor for UserHistoryTieBreaker(0);
        v16 = OUTLINED_FUNCTION_15_7(v70) + -0.06;
        v35 = "HistoricalPreferenceSameApps";
        goto LABEL_25;
      }

      if (one-time initialization token for ranker != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
      }

      v71 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v71, static Logger.ranker);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_23_5();
        *v74 = 0;
        _os_log_impl(&dword_266790000, v72, v73, "[UserHistoryHeuristic] No rule matched.", v74, 2u);
        MEMORY[0x26D5DDCD0](v74, -1, -1);
      }

      v11 = 0xE700000000000000;
      v18 = 0x686374614D6F4ELL;
      v16 = 0.0;
    }
  }

LABEL_38:
  v52 = *(type metadata accessor for ScoreBoost(0) + 24);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2();
  result = (*(v53 + 16))(a3 + v52, a2);
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v11;
  return result;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.supportedTie()()
{
  v53 = type metadata accessor for UserHistoryTieBreaker(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v51 = v3 - v4;
  MEMORY[0x28223BE20](v5);
  v50 = &v50 - v6;
  v7 = type metadata accessor for CamUSOParse(0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_4();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v54 = type metadata accessor for RankedAction(0);
  v55 = v0;
  OUTLINED_FUNCTION_1_14();
  v52 = v24;
  _s7SiriCam0B5ParseOWOcTm_0(v0 + v24, v23);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_2_11();
    _s7SiriCam0B5ParseOWOhTm_1(v23, v25);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    _s7SiriCam0B8USOParseVWObTm_0(v23, v13);
    CamUSOParse.appShortcutInvocation.getter();
    OUTLINED_FUNCTION_6_11();
    _s7SiriCam0B5ParseOWOhTm_1(v13, v35);
    if (v1)
    {
      v26 = v54;
      goto LABEL_14;
    }
  }

  v26 = v54;
  OUTLINED_FUNCTION_1_14();
  _s7SiriCam0B5ParseOWOcTm_0(v27 + v28, v21);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_2_11();
    _s7SiriCam0B5ParseOWOhTm_1(v21, v29);
LABEL_5:
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v30, static Logger.ranker);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_23_5();
      *v33 = 0;
      _os_log_impl(&dword_266790000, v31, v32, "[UserHistoryHeuristic] Only tie breaking app shortcut ambiguity.", v33, 2u);
      MEMORY[0x26D5DDCD0](v33, -1, -1);
    }

    return 0;
  }

  OUTLINED_FUNCTION_7_8();
  _s7SiriCam0B8USOParseVWObTm_0(v21, v10);
  CamUSOParse.appShortcutInvocation.getter();
  OUTLINED_FUNCTION_6_11();
  _s7SiriCam0B5ParseOWOhTm_1(v10, v36);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_14:
  outlined consume of AppShortcutInvocation?(v23, v1);
  OUTLINED_FUNCTION_1_14();
  v37 = v55;
  _s7SiriCam0B5ParseOWOcTm_0(v55 + v52, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_11();
  _s7SiriCam0B5ParseOWOhTm_1(v17, v39);
  if (EnumCaseMultiPayload != 1)
  {
    v40 = v53;
    if (vabdd_f64(*(v37 + *(v26 + 28)), *(v37 + *(v26 + 28) + *(v53 + 20))) >= 0.01)
    {
      if (one-time initialization token for ranker != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
      }

      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_26(v41, static Logger.ranker);
      v42 = v50;
      _s7SiriCam0B5ParseOWOcTm_0(v37, v50);
      v43 = v51;
      _s7SiriCam0B5ParseOWOcTm_0(v37, v51);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134218240;
        v47 = v54;
        v48 = *(v42 + *(v54 + 28));
        _s7SiriCam0B5ParseOWOhTm_1(v42, type metadata accessor for UserHistoryTieBreaker);
        *(v46 + 4) = v48;
        *(v46 + 12) = 2048;
        v49 = *(v43 + *(v40 + 20) + *(v47 + 28));
        _s7SiriCam0B5ParseOWOhTm_1(v43, type metadata accessor for UserHistoryTieBreaker);
        *(v46 + 14) = v49;
        _os_log_impl(&dword_266790000, v44, v45, "[UserHistoryHeuristic] Scores not ambiguous: top = %f, second = %f.", v46, 0x16u);
        MEMORY[0x26D5DDCD0](v46, -1, -1);
      }

      else
      {

        _s7SiriCam0B5ParseOWOhTm_1(v43, type metadata accessor for UserHistoryTieBreaker);
        _s7SiriCam0B5ParseOWOhTm_1(v42, type metadata accessor for UserHistoryTieBreaker);
      }

      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_ForegroundedAppShortcut(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    v1 = OUTLINED_FUNCTION_12_11();
    if (v2)
    {
      v3 = [OUTLINED_FUNCTION_27_1(v1) int64Value];
      if (v3)
      {
        OUTLINED_FUNCTION_9_2();
        v3 = OUTLINED_FUNCTION_32_2(19, v4);
        if (v3)
        {
          v5 = v3;
          v6 = [v3 int64Value];

          LOBYTE(v3) = v6 != 0;
        }
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_RecentDisambiguationSameActions(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_6;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000031, 0x8000000266819BD0);
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = [OUTLINED_FUNCTION_27_1(v1) int64Value];
  OUTLINED_FUNCTION_9_2();
  v5 = OUTLINED_FUNCTION_32_2(45, v4);
  if (v5)
  {
    v6 = v5;
    [v5 int64Value];

    if (v3)
    {
      v7 = type metadata accessor for UserHistoryTieBreaker(0);
      LOBYTE(v5) = OUTLINED_FUNCTION_22_4(*(v7 + 28));
      return v5;
    }

LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_RecentDisambiguationSameApps(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_6;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x8000000266819B40);
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = [OUTLINED_FUNCTION_27_1(v1) int64Value];
  OUTLINED_FUNCTION_9_2();
  v5 = OUTLINED_FUNCTION_32_2(42, v4);
  if (v5)
  {
    v6 = v5;
    [v5 int64Value];

    if (v3)
    {
      v7 = type metadata accessor for UserHistoryTieBreaker(0);
      LOBYTE(v5) = OUTLINED_FUNCTION_22_4(*(v7 + 32));
      return v5;
    }

LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_RecentInstall(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_2();
  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, v1);
  if ((v3 & 1) == 0 || [OUTLINED_FUNCTION_27_1(v2) int64Value] < 1)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for UserHistoryTieBreaker(v4);
  return OUTLINED_FUNCTION_22_4(*(v5 + 36));
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_RecentLaunch(_:)(Swift::OpaquePointer a1)
{
  result = 0;
  if (*(a1._rawValue + 2))
  {
    v2 = v1;
    v3 = OUTLINED_FUNCTION_12_11();
    if (v4)
    {
      if ([OUTLINED_FUNCTION_27_1(v3) int64Value])
      {
        OUTLINED_FUNCTION_9_2();
        v6 = OUTLINED_FUNCTION_32_2(26, v5);
        if (v6)
        {
          v7 = v6;
          v8 = [v6 int64Value];

          if (v8 >= 1 && v8 < *(v2 + *(type metadata accessor for UserHistoryTieBreaker(0) + 40)))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_HistoricalPreferenceSameActions(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  if (one-time initialization token for FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ != -1)
  {
LABEL_43:
    swift_once();
  }

  v2 = 0;
  v3 = static CAARFeatures.FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ;
  v4 = *(static CAARFeatures.FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ + 16);
  OUTLINED_FUNCTION_29_3();
  v85 = v12;
LABEL_3:
  v13 = &v12[16 * v2];
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_17_7(v5, v6, v7, v8, v9, v10, v11);

    v19 = OUTLINED_FUNCTION_2_9(v14, v15, v16, v17, v18);
    if (v19)
    {
      if ((OUTLINED_FUNCTION_31_2(v19, v20, v21, v22, v23, v24, v25, v26, v81, v82, rawValue, v85, v87) & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v28 = *(v1 + 16);
      v27 = *(v1 + 24);
      if (v28 >= v27 >> 1)
      {
        v29 = OUTLINED_FUNCTION_11_9(v27);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v28 + 1, 1);
      }

      OUTLINED_FUNCTION_14_8();
      goto LABEL_3;
    }

    v13 += 16;
    ++v2;
  }

  OUTLINED_FUNCTION_10_10();
  if (!v30)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_33_0();

  v39 = OUTLINED_FUNCTION_20_6(v31, v32, v33, v34, v35, v36, v37, v38, v81, v82, rawValue);

  if (!v39)
  {
    return 0;
  }

  v86 = v39;
  if (one-time initialization token for ACTION_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  v40 = 0;
  v41 = *(static CAARFeatures.ACTION_DISAMBIGUATION_FREQ + 16);
  OUTLINED_FUNCTION_29_3();
  v81 = v49;
LABEL_19:
  v50 = v49 + 16 * v40;
  while (v41 != v40)
  {
    if (v40 >= v41)
    {
      goto LABEL_41;
    }

    if (__OFADD__(v40, 1))
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_17_7(v42, v43, v44, v45, v46, v47, v48);

    v56 = OUTLINED_FUNCTION_25_4(v51, v52, v53, v54, v55);
    if (v56)
    {
      if ((OUTLINED_FUNCTION_31_2(v56, v57, v58, v59, v60, v61, v62, v63, v81, v82, rawValue, v86, v87) & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v40 = *(v1 + 16);
      v64 = *(v1 + 24);
      if (v40 >= v64 >> 1)
      {
        v65 = OUTLINED_FUNCTION_11_9(v64);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v65, v40 + 1, 1);
      }

      OUTLINED_FUNCTION_18_6();
      goto LABEL_19;
    }

    ++v40;
    v50 += 16;
  }

  OUTLINED_FUNCTION_10_10();
  if (!v30)
  {

LABEL_35:

    return 0;
  }

  OUTLINED_FUNCTION_33_0();

  v74 = OUTLINED_FUNCTION_20_6(v66, v67, v68, v69, v70, v71, v72, v73, v81, v82, rawValue);

  if (!v74)
  {

    return 0;
  }

  [v86 doubleValue];
  v76 = v75;
  v77 = type metadata accessor for UserHistoryTieBreaker(0);
  if (*(v83 + *(v77 + 48)) > v76)
  {

    return 0;
  }

  v79 = v77;
  v80 = [v74 int64Value];

  return v80 >= *(v83 + *(v79 + 44));
}

Swift::Bool __swiftcall UserHistoryTieBreaker.rule_HistoricalPreferenceSameApps(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  if (one-time initialization token for FRAC_SELECTED_APP_DISAMBIGUATION_FREQ != -1)
  {
LABEL_43:
    swift_once();
  }

  v2 = 0;
  v3 = static CAARFeatures.FRAC_SELECTED_APP_DISAMBIGUATION_FREQ;
  v4 = *(static CAARFeatures.FRAC_SELECTED_APP_DISAMBIGUATION_FREQ + 16);
  OUTLINED_FUNCTION_29_3();
  v85 = v12;
LABEL_3:
  v13 = &v12[16 * v2];
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_17_7(v5, v6, v7, v8, v9, v10, v11);

    v19 = OUTLINED_FUNCTION_2_9(v14, v15, v16, v17, v18);
    if (v19)
    {
      if ((OUTLINED_FUNCTION_31_2(v19, v20, v21, v22, v23, v24, v25, v26, v81, v82, rawValue, v85, v87) & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v28 = *(v1 + 16);
      v27 = *(v1 + 24);
      if (v28 >= v27 >> 1)
      {
        v29 = OUTLINED_FUNCTION_11_9(v27);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v28 + 1, 1);
      }

      OUTLINED_FUNCTION_14_8();
      goto LABEL_3;
    }

    v13 += 16;
    ++v2;
  }

  OUTLINED_FUNCTION_10_10();
  if (!v30)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_33_0();

  v39 = OUTLINED_FUNCTION_20_6(v31, v32, v33, v34, v35, v36, v37, v38, v81, v82, rawValue);

  if (!v39)
  {
    return 0;
  }

  v86 = v39;
  if (one-time initialization token for APP_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  v40 = 0;
  v41 = *(static CAARFeatures.APP_DISAMBIGUATION_FREQ + 16);
  OUTLINED_FUNCTION_29_3();
  v81 = v49;
LABEL_19:
  v50 = v49 + 16 * v40;
  while (v41 != v40)
  {
    if (v40 >= v41)
    {
      goto LABEL_41;
    }

    if (__OFADD__(v40, 1))
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_17_7(v42, v43, v44, v45, v46, v47, v48);

    v56 = OUTLINED_FUNCTION_25_4(v51, v52, v53, v54, v55);
    if (v56)
    {
      if ((OUTLINED_FUNCTION_31_2(v56, v57, v58, v59, v60, v61, v62, v63, v81, v82, rawValue, v86, v87) & 1) == 0)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v40 = *(v1 + 16);
      v64 = *(v1 + 24);
      if (v40 >= v64 >> 1)
      {
        v65 = OUTLINED_FUNCTION_11_9(v64);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v65, v40 + 1, 1);
      }

      OUTLINED_FUNCTION_18_6();
      goto LABEL_19;
    }

    ++v40;
    v50 += 16;
  }

  OUTLINED_FUNCTION_10_10();
  if (!v30)
  {

LABEL_35:

    return 0;
  }

  OUTLINED_FUNCTION_33_0();

  v74 = OUTLINED_FUNCTION_20_6(v66, v67, v68, v69, v70, v71, v72, v73, v81, v82, rawValue);

  if (!v74)
  {

    return 0;
  }

  [v86 doubleValue];
  v76 = v75;
  v77 = type metadata accessor for UserHistoryTieBreaker(0);
  if (*(v83 + *(v77 + 56)) > v76)
  {

    return 0;
  }

  v79 = v77;
  v80 = [v74 int64Value];

  return v80 >= *(v83 + *(v79 + 52));
}

uint64_t outlined consume of AppShortcutInvocation?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t _s7SiriCam0B5ParseOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_28();
  v5(v4);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s7SiriCam0B8USOParseVWObTm_0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_28();
  v5(v4);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 32))(a2, v2);
  return a2;
}

void OUTLINED_FUNCTION_14_8()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_18_6()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1, uint64_t a2)
{

  return specialized Dictionary.subscript.getter();
}

uint64_t RankedActionFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  if (*(a1 + 16) < 2uLL)
  {
    lazy protocol witness table accessor for type CamError and conformance CamError();
    swift_allocError();
    *v15 = 0xD000000000000044;
    *(v15 + 8) = 0x800000026681B0F0;
    *(v15 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v2 = type metadata accessor for RankedAction(0);
    v4 = *(v2 - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = 1.0;
    if (!CamParse.isAppShortcutParse()())
    {
      if (CamParse.isAppShortcutParse()())
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }
    }

    if (one-time initialization token for ambiguityHandling != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.ambiguityHandling);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_266790000, v8, v9, "Extracting features from ranked actions", v10, 2u);
      MEMORY[0x26D5DDCD0](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813C70;
    *(inited + 32) = 0xD000000000000024;
    *(inited + 40) = 0x8000000266819C10;
    type metadata accessor for MLMultiArray();
    v12 = (v5 + *(v2 + 28));
    v13 = *(v12 + *(v4 + 72));
    v14 = static MLMultiArray.makeScalar(from:)(*v12 - v13);
    if (v1)
    {

      *(inited + 16) = 0;
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    else
    {
      *(inited + 48) = v14;
      *(inited + 56) = 0xD00000000000001CLL;
      *(inited + 64) = 0x8000000266819C40;
      *(inited + 72) = static MLMultiArray.makeScalar(from:)(v13);
      *(inited + 80) = 0xD00000000000001DLL;
      *(inited + 88) = 0x8000000266819C60;
      *(inited + 96) = static MLMultiArray.makeScalar(from:)(v6);
      v2 = Dictionary.init(dictionaryLiteral:)();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136315138;

        v22 = Dictionary.Keys.description.getter();
        v24 = v23;

        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v26);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_266790000, v17, v18, "Extracted ranked action features: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x26D5DDCD0](v21, -1, -1);
        MEMORY[0x26D5DDCD0](v20, -1, -1);
      }
    }
  }

  return v2;
}

uint64_t type metadata accessor for TrialOverridesTieBreaker(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrialOverridesTieBreaker;
  if (!type metadata singleton initialization cache for TrialOverridesTieBreaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrialOverridesTieBreaker(uint64_t a1)
{
  type metadata accessor for RankedAction?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for RankedAction?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RankedAction?)
  {
    type metadata accessor for RankedAction(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RankedAction?);
    }
  }
}

uint64_t TrialOverridesTieBreaker.forcedDisambiguation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v2);
  v4 = (&v18 - v3);
  v5 = type metadata accessor for TrialOverridesTieBreaker(0);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v0 + *(v5 + 20), v4, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v6 = type metadata accessor for RankedAction(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v4, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
    return 4;
  }

  v8 = *v4;
  v7 = v4[1];

  OUTLINED_FUNCTION_1_15();
  _s7SiriCam12RankedActionVWOhTm_0(v4, v9);
  if (v8 == 0xD000000000000021 && 0x8000000266819930 == v7)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
LABEL_13:
      if (one-time initialization token for ranker != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.ranker);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266790000, v14, v15, "[TrialOverridesTieBreaker] This override will not be forced disambiguated.", v16, 2u);
        MEMORY[0x26D5DDCD0](v16, -1, -1);
      }

      return 4;
    }
  }

  v12 = static TrialProvider.fetchBoolFactorFromTrial(_:)(0xD000000000000021, 0x800000026681A900);
  if (v12 != 2 && (v12 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5) & 1) != 0)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t TrialOverridesTieBreaker.init(tie:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_12();
  v7 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 1;
  v11 = static TrialProvider.tieBreakingOverrides.getter();
  if (v11)
  {
    Array<A>.getFavouredAction(tie:)(a1, v11, v2);

    OUTLINED_FUNCTION_2_12();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
      v12 = &a2[*(type metadata accessor for TrialOverridesTieBreaker(0) + 20)];
      v13 = 1;
    }

    else
    {
      outlined init with take of RankedAction(v2, v10);
      v16 = *(type metadata accessor for TrialOverridesTieBreaker(0) + 20);
      outlined init with take of RankedAction(v10, &a2[v16]);
      v12 = &a2[v16];
      v13 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v7);
  }

  else
  {
    OUTLINED_FUNCTION_2_12();
    v14 = &a2[*(type metadata accessor for TrialOverridesTieBreaker(0) + 20)];

    return __swift_storeEnumTagSinglePayload(v14, 1, 1, v7);
  }
}

Swift::Bool __swiftcall TrialOverridesTieBreaker.supportedTie()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_12();
  v4 = type metadata accessor for TrialOverridesTieBreaker(0);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v0 + *(v4 + 20), v1, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v5 = type metadata accessor for RankedAction(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  outlined destroy of (CamLogOutput, CamModelMetadata)(v1, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  return v6;
}

uint64_t TrialOverridesTieBreaker.actionBoost(features:loggingId:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, _s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_12();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = OUTLINED_FUNCTION_14(v13);
  v15 = MEMORY[0x28223BE20](v14);
  v43 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v40[-v20];
  v44 = v5;
  v22 = *(v5 + 16);
  v46 = a1;
  v22(&v40[-v20], a1, v4);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v4);
  v23 = type metadata accessor for TrialOverridesTieBreaker(0);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v45 + *(v23 + 20), v12, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v24 = type metadata accessor for RankedAction(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v24) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v12, &_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
    v25 = 1;
  }

  else
  {
    v22(v19, &v12[*(v24 + 36)], v4);
    OUTLINED_FUNCTION_1_15();
    _s7SiriCam12RankedActionVWOhTm_0(v12, v26);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v25, 1, v4);
  v27 = *(v7 + 48);
  v28 = &_s10Foundation4UUIDVSgMd;
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v21, v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v19, v2 + v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_8_11(v2);
  if (v30)
  {
    OUTLINED_FUNCTION_7_9(v19);
    OUTLINED_FUNCTION_7_9(v21);
    OUTLINED_FUNCTION_8_11(v2 + v27);
    if (v30)
    {
      OUTLINED_FUNCTION_6_12();
      outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_16:
      v31 = 0x646572756F766146;
      v32 = 0x3F947AE147AE147BLL;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v29 = v43;
  outlined init with copy of (CamLogOutput, CamModelMetadata)(v2, v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_8_11(v2 + v27);
  if (v30)
  {
    OUTLINED_FUNCTION_7_9(v19);
    OUTLINED_FUNCTION_7_9(v21);
    (*(v44 + 8))(v29, v4);
LABEL_12:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s10Foundation4UUIDVSg_ADtMd, _s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_13;
  }

  v33 = v44;
  v34 = v2 + v27;
  v35 = v42;
  (*(v44 + 32))(v42, v34, v4);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = v22;
  v36 = *(v33 + 8);
  v28 = (v33 + 8);
  v36(v35, v4);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v36(v29, v4);
  v22 = v45;
  outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v41)
  {
    OUTLINED_FUNCTION_6_12();
    goto LABEL_16;
  }

LABEL_13:
  v28 = 0x800000026681B140;
  v31 = 0xD000000000000011;
  v32 = 0;
LABEL_17:
  v37 = type metadata accessor for ScoreBoost(0);
  v38 = v47;
  result = (v22)(v47 + *(v37 + 24), v46, v4);
  *v38 = v32;
  v38[1] = v31;
  v38[2] = v28;
  return result;
}

uint64_t _s7SiriCam12RankedActionVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t MLFeatureValue.MLFeatureValueCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int MLFeatureValue.MLFeatureValueCodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](a1 & 1);
  return Hasher._finalize()();
}

uint64_t MLFeatureValue.MLFeatureValueCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x6570795461746164;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLFeatureValue.MLFeatureValueCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLFeatureValue.MLFeatureValueCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLFeatureValue.MLFeatureValueCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = MLFeatureValue.MLFeatureValueCodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLFeatureValue.MLFeatureValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLFeatureValue.MLFeatureValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLFeatureValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo14MLFeatureValueC7SiriCamE0dE10CodingKeys33_6839BE060B73B362827386E1C3BE7052LLOGMd, &_ss22KeyedEncodingContainerVySo14MLFeatureValueC7SiriCamE0dE10CodingKeys33_6839BE060B73B362827386E1C3BE7052LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  [v3 type];
  v15 = 0;
  OUTLINED_FUNCTION_0_16();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  switch([v3 type])
  {
    case 1uLL:
      [v3 int64Value];
      v13[13] = 1;
      OUTLINED_FUNCTION_0_16();
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v6 + 8))(v8, v5);
    case 2uLL:
      [v3 doubleValue];
      v13[12] = 1;
      OUTLINED_FUNCTION_0_16();
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v6 + 8))(v8, v5);
    case 3uLL:
      v10 = [v3 stringValue];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v13[14] = 1;
      OUTLINED_FUNCTION_0_16();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v8, v5);

      break;
    case 5uLL:
      v11 = [v3 multiArrayValue];
      v14 = v11;
      v13[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12MLMultiArrayCSgMd, _sSo12MLMultiArrayCSgMR);
      lazy protocol witness table accessor for type MLMultiArray? and conformance <A> A?();
      OUTLINED_FUNCTION_0_16();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      return (*(v6 + 8))(v8, v5);
    default:
      lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      swift_allocError();
      *v12 = 0xD000000000000026;
      *(v12 + 8) = 0x800000026681A4B0;
      *(v12 + 16) = 0;
      swift_willThrow();
      return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys;
  if (!lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys;
  if (!lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys;
  if (!lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys;
  if (!lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLFeatureValue.MLFeatureValueCodingKeys and conformance MLFeatureValue.MLFeatureValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLMultiArray? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLMultiArray? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLMultiArray? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo12MLMultiArrayCSgMd, _sSo12MLMultiArrayCSgMR);
    lazy protocol witness table accessor for type MLMultiArray and conformance MLMultiArray();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLMultiArray and conformance MLMultiArray()
{
  result = lazy protocol witness table cache variable for type MLMultiArray and conformance MLMultiArray;
  if (!lazy protocol witness table cache variable for type MLMultiArray and conformance MLMultiArray)
  {
    type metadata accessor for MLMultiArray();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray and conformance MLMultiArray);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLFeatureValue.MLFeatureValueCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MLFeatureValue.MLFeatureValueCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CamUSOParse.appShortcutInvocation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - v1;
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_22();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  v10 = MEMORY[0x26D5DC620]();
  specialized Collection.first.getter(v10);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v2, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_9:
    OUTLINED_FUNCTION_6_13();
    return v10;
  }

  (*(v5 + 32))(v9, v2, v3);
  v10 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (specialized Array.count.getter() != 1)
  {
    v11 = OUTLINED_FUNCTION_1_16();
    v12(v11);

    goto LABEL_9;
  }

  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5DD230](0, v10);
    }

    else
    {
    }

    v10 = UsoTask.appShortcutInvocation.getter();
  }

  else
  {

    OUTLINED_FUNCTION_6_13();
  }

  v14 = OUTLINED_FUNCTION_1_16();
  v15(v14);
  return v10;
}

Swift::Bool __swiftcall CamParse.isAppShortcutParse()()
{
  v1 = v0;
  v2 = type metadata accessor for CamUSOParse(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4 - v3;
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  outlined init with copy of CamParse(v1, v8 - v7);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of CamParse(v9, type metadata accessor for CamParse);
    return 0;
  }

  outlined init with take of CamUSOParse(v9, v5);
  v11 = CamUSOParse.appShortcutInvocation.getter();
  v13 = v12;
  outlined destroy of CamParse(v5, type metadata accessor for CamUSOParse);
  if (!v13)
  {
    return 0;
  }

  outlined consume of AppShortcutInvocation?(v11, v13);
  return 1;
}

uint64_t UsoTask.appShortcutInvocation.getter()
{
  v1 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v2);
  v85 = &v75 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GMR);
  OUTLINED_FUNCTION_22();
  v81 = v5;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v6);
  v80 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd, &_s17_StringProcessing5RegexVySs_SstGMR);
  OUTLINED_FUNCTION_22();
  v10 = v9;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v11);
  v84 = &v75 - v12;
  v13 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_22();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v82 = &v75 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v75 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v75 - v28;
  MEMORY[0x28223BE20](v27);
  v86 = &v75 - v30;
  v87 = v0;
  static UsoTask_CodegenConverter.convert(task:)();
  v88 = v13;
  if (v94)
  {
    v31 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
    if (OUTLINED_FUNCTION_4_6(v31))
    {
      v79 = v10;
      v32 = v89;

      dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.reference.getter();

      if (v91)
      {
        v33 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

        if (v33)
        {
          v76 = v32;
          v77 = v4;
          v78 = v8;
          v34 = 0;
          v35 = *(v33 + 16);
          v36 = (v15 + 8);
          while (v35 != v34)
          {
            if (v34 >= *(v33 + 16))
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            (*(v15 + 16))(v26, v33 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v34, v88);
            if (closure #1 in UsoTask.appShortcutInvocation.getter())
            {
              v57 = *(v15 + 32);
              v58 = v88;
              v57(v29, v26, v88);
              v59 = v86;
              v57(v86, v29, v58);
              v60 = UsoIdentifier.value.getter();
              v1 = v61;
              v91 = v60;
              v92 = v61;
              v89 = 95;
              v90 = 0xE100000000000000;
              lazy protocol witness table accessor for type String and conformance String();
              v62 = StringProtocol.components<A>(separatedBy:)();

              if (*(v62 + 16))
              {

                if (*(v62 + 16))
                {

                  v39 = UsoIdentifier.appBundleId.getter();

                  (*v36)(v59, v88);
                  return v39;
                }

LABEL_48:
                __break(1u);
              }

              __break(1u);

              result = (*v36)(v26, v88);
              __break(1u);
              return result;
            }

            (*v36)(v26, v88);
            ++v34;
          }

          v13 = v88;
          v4 = v77;
          v8 = v78;
        }

        else
        {

          v13 = v88;
        }
      }

      else
      {
      }

      v10 = v79;
    }
  }

  else
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(&v91, &_sypSgMd, &_sypSgMR);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v94)
  {
    v53 = &_sypSgMd;
    v54 = &_sypSgMR;
    v55 = &v91;
LABEL_34:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v55, v53, v54);
    return 0;
  }

  v37 = type metadata accessor for UsoTask_run_common_VoiceCommand();
  if ((OUTLINED_FUNCTION_4_6(v37) & 1) == 0)
  {
    return 0;
  }

  v79 = v10;
  v38 = v89;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v39 = v91;
  if (!v91)
  {

    return v39;
  }

  v78 = v8;
  v40 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v40)
  {
LABEL_37:

    return 0;
  }

  v76 = v38;
  v77 = v4;
  v36 = 0;
  v41 = *(v40 + 16);
  v86 = (v15 + 16);
  v26 = *MEMORY[0x277D5F538];
  v87 = v15 + 8;
  while (1)
  {
    if (v41 == v36)
    {

      goto LABEL_37;
    }

    if (v36 >= *(v40 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    (*(v15 + 16))(v19, v40 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v36, v13);
    v42 = UsoIdentifier.namespace.getter();
    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v44)
    {

      goto LABEL_32;
    }

    if (v42 == v45 && v44 == v46)
    {
      break;
    }

    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v48)
    {
      goto LABEL_31;
    }

LABEL_32:
    v13 = v88;
    v51 = OUTLINED_FUNCTION_7_10();
    v52(v51, v13);
    v36 = (v36 + 1);
  }

LABEL_31:
  v91 = UsoIdentifier.value.getter();
  v92 = v49;
  v89 = 0x726F68736F747561;
  v90 = 0xEF2F2F3A74756374;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v50 = BidirectionalCollection<>.starts<A>(with:)();

  if ((v50 & 1) == 0)
  {
    goto LABEL_32;
  }

  v63 = *(v15 + 32);
  v64 = v82;
  v65 = v88;
  v63(v82, v19, v88);
  v63(v83, v64, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd, &_sSs_SstMR);
  v66 = v84;
  Regex.init(_regexString:version:)();
  UsoIdentifier.value.getter();
  v67 = v85;
  Regex.firstMatch(in:)();

  v68 = v77;
  if (__swift_getEnumTagSinglePayload(v67, 1, v77) == 1)
  {

    (*(v79 + 8))(v66, v78);
    v69 = OUTLINED_FUNCTION_7_10();
    v70(v69);
    v53 = &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd;
    v54 = &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMR;
    v55 = v67;
    goto LABEL_34;
  }

  v72 = v80;
  v71 = v81;
  (*(v81 + 32))(v80, v67, v68);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  MEMORY[0x26D5DCD30](v91, v92, v93, v94);

  v39 = UsoIdentifier.appBundleId.getter();

  (*(v71 + 8))(v72, v68);
  (*(v79 + 8))(v66, v78);
  v73 = OUTLINED_FUNCTION_7_10();
  v74(v73);
  return v39;
}

uint64_t closure #1 in UsoTask.appShortcutInvocation.getter()
{
  v0 = type metadata accessor for UsoIdentifier.NluComponent();
  v31 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v29 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = UsoIdentifier.namespace.getter();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v15)
  {

LABEL_16:
    v20 = 0;
    return v20 & 1;
  }

  if (v13 == v16 && v15 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = 0;
    if ((v19 & 1) == 0)
    {
      return v20 & 1;
    }
  }

  UsoIdentifier.sourceComponent.getter();
  v21 = v31;
  (*(v31 + 104))(v10, *MEMORY[0x277D5E4D0], v0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v0);
  v22 = *(v2 + 48);
  outlined init with copy of UsoIdentifier.NluComponent?(v12, v4);
  outlined init with copy of UsoIdentifier.NluComponent?(v10, &v4[v22]);
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) != 1)
  {
    v23 = v30;
    outlined init with copy of UsoIdentifier.NluComponent?(v4, v30);
    if (__swift_getEnumTagSinglePayload(&v4[v22], 1, v0) != 1)
    {
      v25 = &v4[v22];
      v26 = v29;
      (*(v21 + 32))(v29, v25, v0);
      lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v21 + 8);
      v27(v26, v0);
      outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of (CamLogOutput, CamModelMetadata)(v12, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v27(v30, v0);
      outlined destroy of (CamLogOutput, CamModelMetadata)(v4, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      return v20 & 1;
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v12, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    (*(v21 + 8))(v23, v0);
    goto LABEL_15;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v12, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  if (__swift_getEnumTagSinglePayload(&v4[v22], 1, v0) != 1)
  {
LABEL_15:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v4, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
    goto LABEL_16;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(v4, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v20 = 1;
  return v20 & 1;
}

uint64_t outlined init with copy of UsoIdentifier.NluComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, _s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent()
{
  result = lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent;
  if (!lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent)
  {
    type metadata accessor for UsoIdentifier.NluComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent);
  }

  return result;
}

uint64_t AsrSimpleFeatureExtractor.extractImpl(from:)(void *a1)
{
  if (outlined bridged method (pb) of @objc SASRecognition.utterances.getter(a1))
  {
    v2 = specialized Array.count.getter();

    v3 = v2;
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.common);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000266818D10, &v12);
      _os_log_impl(&dword_266790000, v5, v6, "No utterances found. Forcing %s to 0", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x26D5DDCD0](v8, -1, -1);
      MEMORY[0x26D5DDCD0](v7, -1, -1);
    }

    v3 = 0.0;
  }

  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
  result = static MLMultiArray.makeScalar(from:)(v3);
  v10 = result;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    *(inited + 32) = 0xD00000000000001BLL;
    *(inited + 40) = 0x8000000266818D10;
    *(inited + 48) = v10;
    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc SASRecognition.utterances.getter(void *a1)
{
  v1 = [a1 utterances];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASUtterance, 0x277D477A8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *UncertaintyPromptHandler.init()()
{
  v2 = v0;
  type metadata accessor for LatticePathFeatureExtractor();
  v3 = swift_allocObject();
  v0[2] = 0x3FF0000000000000;
  v0[3] = v3;
  v4 = type metadata accessor for CoreMLHandler(0);
  swift_allocObject();
  v5 = CoreMLHandler.init(forModelWithName:)(0xD000000000000025, 0x8000000266819F10);
  if (v1)
  {

    type metadata accessor for UncertaintyPromptHandler();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v4;
    v21 = &protocol witness table for CoreMLHandler;
    *&v19 = v5;
    outlined init with take of CaarHandler(&v19, (v0 + 11));
    v6 = Dictionary.init(dictionaryLiteral:)();
    v0[4] = 0xD000000000000023;
    v0[5] = 0x800000026681B230;
    v0[6] = 0xD000000000000027;
    v0[7] = 0x800000026681B260;
    v0[8] = 0xD000000000000026;
    v0[9] = 0x800000026681B290;
    v0[10] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam31UncertaintyPromptActionEnforcer_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam31UncertaintyPromptActionEnforcer_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2668162F0;
    *(v7 + 56) = &type metadata for LongPayloadActionEnforcer;
    *(v7 + 64) = &protocol witness table for LongPayloadActionEnforcer;
    *(v7 + 96) = &type metadata for UserConfirmationActionEnforcer;
    *(v7 + 104) = &protocol witness table for UserConfirmationActionEnforcer;
    *(v7 + 136) = &type metadata for SiriVocabActionEnforcer;
    *(v7 + 144) = &protocol witness table for SiriVocabActionEnforcer;
    *(v7 + 176) = &type metadata for MessageDictationActionEnforcer;
    *(v7 + 184) = &protocol witness table for MessageDictationActionEnforcer;
    *(v7 + 216) = &type metadata for GiveUpRepeatActionEnforcer;
    *(v7 + 224) = &protocol witness table for GiveUpRepeatActionEnforcer;
    *(v7 + 256) = &type metadata for ExecuteActionEnforcer;
    *(v7 + 264) = &protocol witness table for ExecuteActionEnforcer;
    *(v7 + 296) = &type metadata for ShadowLogActionEnforcer;
    *(v7 + 304) = &protocol witness table for ShadowLogActionEnforcer;
    *(v7 + 336) = &type metadata for ZeroAsrConfidenceActionEnforcer;
    *(v7 + 344) = &protocol witness table for ZeroAsrConfidenceActionEnforcer;
    *(v7 + 376) = &type metadata for ExactShortcutActionEnforcer;
    *(v7 + 384) = &protocol witness table for ExactShortcutActionEnforcer;
    *(v7 + 416) = &type metadata for OverrideParseActionEnforcer;
    *(v7 + 424) = &protocol witness table for OverrideParseActionEnforcer;
    *(v7 + 456) = &type metadata for UserEntityVocabActionEnforcer;
    *(v7 + 464) = &protocol witness table for UserEntityVocabActionEnforcer;
    v8 = MEMORY[0x26D5DCC90](0x6C616E7265746E49, 0xED0000646C697542);
    v9 = MGGetBoolAnswer();

    if (v9)
    {
      if (one-time initialization token for ambiguityHandling != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.ambiguityHandling);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_7_5();
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_266790000, v11, v12, "Detected internal build", v13, 2u);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      v20 = &type metadata for UncertaintyPromptMagicWordsActionEnforcer;
      v21 = &protocol witness table for UncertaintyPromptMagicWordsActionEnforcer;
      outlined init with take of CaarHandler(&v19, v17);
      v18 = v7;
      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v14 + 1, 1, v7);
        v7 = v16;
        v18 = v16;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v17);
    }

    v2[19] = &type metadata for UncertaintyPromptSequentialEnforcer;
    v2[20] = &protocol witness table for UncertaintyPromptSequentialEnforcer;
    v2[16] = v7;
  }

  return v2;
}

uint64_t static UncertaintyPromptHandler.register(camEnabledFeatures:allowDefaultAskRepeatModel:asrOnDevice:)(uint64_t a1, int a2, int a3)
{
  v39 = a2;
  v40 = a3;
  OUTLINED_FUNCTION_10_11();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = *(a1 + 16);
  v9 = (a1 + 32);
  OUTLINED_FUNCTION_8_12();
  while (v8)
  {
    v10 = *v9;
    if (v10 != 1 && v10 != 2)
    {

LABEL_13:
      if (v40)
      {
        if ((v39 & 1) != 0 || (static AssetProvider.fetchModelFromUAF(_:)(0xD000000000000025, 0x8000000266819F10, v7), v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tMR), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v17), outlined destroy of (CamLogOutput, CamModelMetadata)(v7, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMd, &_s10Foundation3URLV8modelUrl_7SiriCam0F13ModelMetadataV0cH0tSgMR), EnumTagSinglePayload != 1))
        {
          type metadata accessor for UncertaintyPromptHandler();
          v37 = swift_allocObject();
          UncertaintyPromptHandler.init()();
          return v37;
        }

        if (one-time initialization token for ambiguityHandling != -1)
        {
          OUTLINED_FUNCTION_0_12();
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.ambiguityHandling);
        v20 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v21 = OUTLINED_FUNCTION_6_14();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          OUTLINED_FUNCTION_9();
          v24 = swift_slowAlloc();
          v41 = v24;
          *v23 = 136315138;
          *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000266819F10, &v41);
          OUTLINED_FUNCTION_13_11();
          _os_log_impl(v25, v26, v27, v28, v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          goto LABEL_24;
        }
      }

      else
      {
        if (one-time initialization token for ambiguityHandling != -1)
        {
          OUTLINED_FUNCTION_0_12();
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.ambiguityHandling);
        v20 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        v30 = OUTLINED_FUNCTION_6_14();
        if (os_log_type_enabled(v30, v31))
        {
          OUTLINED_FUNCTION_7_5();
          v32 = swift_slowAlloc();
          *v32 = 0;
          OUTLINED_FUNCTION_13_11();
          _os_log_impl(v33, v34, v35, v36, v32, 2u);
LABEL_24:
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
        }
      }

      return 0;
    }

    OUTLINED_FUNCTION_12_12();
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v9;
    --v8;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.ambiguityHandling);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v16 = swift_slowAlloc();
    v41 = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, 0xEA00000000005441, &v41);
    _os_log_impl(&dword_266790000, v13, v14, "[UncertaintyPromptHandler] Not registering as %s is disabled", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UncertaintyPromptHandler.update()()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v1);
  (*(v2 + 16))(v1, v2);
}

_BYTE *UncertaintyPromptHandler.handle(camInput:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v114[-v5];
  v7 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_22();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v135 = v11;
  v12 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_22();
  v134 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v133 = v15;
  v16 = type metadata accessor for CamInput(0);
  OUTLINED_FUNCTION_22();
  v130 = v17;
  MEMORY[0x28223BE20](v18);
  v131 = v19;
  OUTLINED_FUNCTION_21_1(&v114[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v129 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_22();
  v128 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v23 = OUTLINED_FUNCTION_21_1(v22);
  type metadata accessor for CamModelMetadata(v23);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_21_1(v25);
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_22();
  v27 = MEMORY[0x28223BE20](v26);
  v140 = &v114[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v139 = &v114[-v31];
  if (!*(a1 + *(v16 + 32)))
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.ambiguityHandling);
    v39 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v40 = OUTLINED_FUNCTION_6_14();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v118 = v12;
  v120 = v9;
  v121 = v7;
  v124 = v30;
  v125 = v29;
  v122 = v3;
  v123 = v6;
  v137 = v1;
  v119 = v16;
  v32 = *(v16 + 48);
  v136 = a1;
  v33 = *(a1 + v32);
  v34 = (v33 + 32);
  v35 = *(v33 + 16);
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_11();
  while (v35)
  {
    v36 = *v34;
    if (v36 != 1 && v36 != 2)
    {

LABEL_18:
      if (one-time initialization token for ambiguityHandling != -1)
      {
        swift_once();
      }

      v50 = static Log.ambiguityHandling;
      v51 = v139;
      OSSignpostID.init(log:)();
      v52 = static os_signpost_type_t.begin.getter();
      OUTLINED_FUNCTION_14_9(v52, &dword_266790000, v53, "CamFeatureExtraction");
      v54 = v137;
      v55 = v138;
      v56 = specialized FeatureExtracting.extract(from:)(v136, *(v138 + 24), *(v138 + 16));
      if (v54)
      {
        (*(v124 + 8))(v51, v125);
        return v50;
      }

      v57 = v56;
      v58 = static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_14_9(v58, &dword_266790000, v59, "CamFeatureExtraction");
      v60 = v50;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v61 = v55;
      v62 = *(v55 + 112);
      v63 = *(v55 + 120);
      __swift_project_boxed_opaque_existential_1((v61 + 88), v62);
      v64 = (*(v63 + 32))(v57, v62, v63);
      v137 = v57;
      static os_signpost_type_t.end.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v65 = *(v61 + 48);
      v147 = *(v61 + 32);
      v148 = v65;
      v149 = *(v61 + 64);
      v150 = *(v61 + 80);
      CamOutputProvider.toCamOutput(from:)(v64);
      v50 = v66;
      v116 = v64;
      v68 = swift_allocBox();
      v70 = v69;
      v71 = *(v61 + 112);
      v72 = *(v61 + 120);
      __swift_project_boxed_opaque_existential_1((v61 + 88), v71);
      (*(v72 + 24))(v71, v72);
      v73 = *(v61 + 152);
      v74 = *(v61 + 160);
      __swift_project_boxed_opaque_existential_1((v61 + 128), v73);
      OUTLINED_FUNCTION_4_7();
      v138 = v70;
      v75 = v70;
      v76 = v126;
      _s7SiriCam0B13ModelMetadataVWOcTm_0(v75, v126, v77);
      v78 = v136;
      (*(v74 + 8))(&aBlock, v137, v50, v136, v76, v73, v74);
      outlined destroy of CamModelMetadata(v76);
      v79 = v143;
      v117 = v68;
      if (v143)
      {
        v80 = v142;
        v81 = aBlock;
        if (one-time initialization token for ambiguityHandling != -1)
        {
          OUTLINED_FUNCTION_0_12();
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        __swift_project_value_buffer(v82, static Logger.ambiguityHandling);

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v83, v84))
        {
          OUTLINED_FUNCTION_9();
          v85 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          aBlock = v126;
          *v85 = 136315650;
          LOBYTE(v151) = v50[56];
          v86 = String.init<A>(describing:)();
          v115 = v84;
          v87 = v81;
          v89 = v80;
          v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &aBlock);

          *(v85 + 4) = v90;
          *(v85 + 12) = 2080;
          LOBYTE(v151) = v81;
          v91 = String.init<A>(describing:)();
          v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &aBlock);
          v80 = v89;

          *(v85 + 14) = v93;
          v81 = v87;
          *(v85 + 22) = 2080;
          v78 = v136;
          *(v85 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v79, &aBlock);
          _os_log_impl(&dword_266790000, v83, v115, "[UncertaintyPromptHandler] Overriding %s with %s due to %s", v85, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          v68 = v117;
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
        }

        LOBYTE(aBlock) = v81;
        v94._countAndFlagsBits = v80;
        v94._object = v79;
        CamOutput.overrideAction(action:enforcer:)(&aBlock, v94);
        if (v80 == 0xD000000000000017 && v79 == 0x800000026681B210)
        {
        }

        else
        {
          v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v96 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        *(v138 + 48) = 1;
      }

LABEL_37:
      type metadata accessor for OS_dispatch_queue();
      v97 = v128;
      v98 = v127;
      v99 = v129;
      (*(v128 + 104))(v127, *MEMORY[0x277D851A8], v129);
      v126 = static OS_dispatch_queue.global(qos:)();
      (*(v97 + 8))(v98, v99);
      v100 = v132;
      _s7SiriCam0B13ModelMetadataVWOcTm_0(v78, v132, type metadata accessor for CamInput);
      v101 = (*(v130 + 80) + 40) & ~*(v130 + 80);
      v102 = swift_allocObject();
      v102[2] = v137;
      v102[3] = v50;
      v102[4] = v68;
      outlined init with take of CamInput(v100, v102 + v101);
      v145 = partial apply for closure #1 in UncertaintyPromptHandler.handle(camInput:);
      v146 = v102;
      aBlock = MEMORY[0x277D85DD0];
      v142 = 1107296256;
      v143 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v144 = &block_descriptor_1;
      v103 = _Block_copy(&aBlock);

      v104 = v133;
      static DispatchQoS.unspecified.getter();
      v151 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v105 = v135;
      v106 = v121;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v107 = v126;
      MEMORY[0x26D5DD090](0, v104, v105, v103);
      _Block_release(v103);

      (*(v120 + 8))(v105, v106);
      (*(v134 + 8))(v104, v118);

      v108 = v138;
      swift_beginAccess();
      v109 = v123;
      *v123 = v50;
      OUTLINED_FUNCTION_4_7();
      _s7SiriCam0B13ModelMetadataVWOcTm_0(v108, v109 + v110, v111);

      _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA0B11ModelLoggerV_Tt5B5();

      outlined destroy of (CamLogOutput, CamModelMetadata)(v109, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMd, &_s7SiriCam0B9LogOutputC_AA0B13ModelMetadataVtMR);
      v112 = *(v124 + 8);
      v113 = v125;
      v112(v140, v125);
      v112(v139, v113);

      return v50;
    }

    OUTLINED_FUNCTION_12_12();
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v34;
    --v35;
    if (v37)
    {
      goto LABEL_18;
    }
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.ambiguityHandling);
  v39 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v43 = OUTLINED_FUNCTION_6_14();
  if (os_log_type_enabled(v43, v44))
  {
LABEL_15:
    OUTLINED_FUNCTION_7_5();
    v45 = swift_slowAlloc();
    *v45 = 0;
    OUTLINED_FUNCTION_13_11();
    _os_log_impl(v46, v47, v48, v49, v45, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

LABEL_16:

  type metadata accessor for CamOutput();
  *(swift_allocObject() + 56) = 1;
  return CamLogOutput.init(prediction:score:threshold:)(0, 0.0, 0.0);
}

uint64_t closure #1 in UncertaintyPromptHandler.handle(camInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CamModelMetadata(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  swift_beginAccess();
  _s7SiriCam0B13ModelMetadataVWOcTm_0(v10, v9, type metadata accessor for CamModelMetadata);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v14 = type metadata accessor for CamInput(0);
  _s7SiriCam0B27FeatureStoreLoggingProtocolPAAE9writeData13modelFeatures0I6Output0I8Metadata9requestId02rcN08fsStreamySDySSSo12MLMultiArrayCG_AA0b3LogK0CAA0b5ModelL0VS2SAA0cdQ0OtFZAA0bcD6LoggerV_Tt5g5(a1, a2, v9, v11, v13, *(a4 + *(v14 + 24)), *(a4 + *(v14 + 24) + 8), 0);

  return outlined destroy of CamModelMetadata(v9);
}

void *UncertaintyPromptHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  return v0;
}

uint64_t UncertaintyPromptHandler.__deallocating_deinit()
{
  UncertaintyPromptHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t _s7SiriCam0B13ModelMetadataVWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined init with take of CamInput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamInput(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in UncertaintyPromptHandler.handle(camInput:)()
{
  v1 = *(type metadata accessor for CamInput(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #1 in UncertaintyPromptHandler.handle(camInput:)(v2, v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = v10 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam31UncertaintyPromptActionEnforcer_pMd, &_s7SiriCam31UncertaintyPromptActionEnforcer_pMR);
  result = swift_arrayDestroy();
  v12 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v11 + 40 * a3;
  if (!v12)
  {
LABEL_7:
    if (a3 < 1)
    {
      return outlined destroy of (CamLogOutput, CamModelMetadata)(a4, &_ss15CollectionOfOneVy7SiriCam31UncertaintyPromptActionEnforcer_pGMd, &_ss15CollectionOfOneVy7SiriCam31UncertaintyPromptActionEnforcer_pGMR);
    }

    for (i = 0; (i & 1) == 0; i = 1)
    {
      result = outlined init with copy of SignalProviding(a4, v11);
      v11 += 40;
      if (v11 >= v13)
      {
        return outlined destroy of (CamLogOutput, CamModelMetadata)(a4, &_ss15CollectionOfOneVy7SiriCam31UncertaintyPromptActionEnforcer_pGMd, &_ss15CollectionOfOneVy7SiriCam31UncertaintyPromptActionEnforcer_pGMR);
      }
    }

    goto LABEL_15;
  }

  v14 = *(v9 + 16);
  if (__OFSUB__(v14, a2))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v10 + 40 * a2), v14 - a2, (v11 + 40 * a3));
  v15 = *(v9 + 16);
  v16 = __OFADD__(v15, v12);
  v17 = v15 + v12;
  if (!v16)
  {
    *(v9 + 16) = v17;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t MixingModelHandler.deinit()
{
  outlined destroy of MixingModel(v0 + 16);

  outlined destroy of CamModelMetadata(v0 + OBJC_IVAR____TtC7SiriCam18MixingModelHandler_modelMetadata);
  return v0;
}

uint64_t MixingModelHandler.__deallocating_deinit()
{
  MixingModelHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MixingModelHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for MixingModelHandler;
  if (!type metadata singleton initialization cache for MixingModelHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MixingModelHandler(uint64_t a1)
{
  result = type metadata accessor for CamModelMetadata(319);
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

void AutoConfirmSequentialEnforcer.enforce(inputFeatures:autoSendOutput:autoSendInput:modelMetadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a5 + 16);
  v12 = (a5 + 32);
  if (v11)
  {
    while (1)
    {
      v13 = v12[3];
      v14 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v14 + 8))(v23, a1, a2, a3, a4, v13, v14);
      v15 = v24;
      if (v24)
      {
        break;
      }

      v12 += 5;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }

    v16 = v23[1];
    v17 = LOBYTE(v23[0]);
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_18(&one-time initialization token for autoSend);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.autoSend);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v23);
      _os_log_impl(&dword_266790000, v19, v20, "%s has overridden", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }

    *a6 = v17;
    a6[1] = v16;
    a6[2] = v15;
  }

  else
  {
LABEL_4:
    OUTLINED_FUNCTION_3_13();
  }
}

void AutoConfirmMagicWordsActionEnforcer.enforce(inputFeatures:autoSendOutput:autoSendInput:modelMetadata:)(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for AutoSendInput(0) + 20)) recognition];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 aceRecognition];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    _s7SiriCam23TopRecognitionExtractorPAAE03getcD011recognitionSSSo14SASRecognitionC_tKFAA41UncertaintyPromptMagicWordsActionEnforcerV_Tt0g5(v5);

    String.lowercased()();

    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = OUTLINED_FUNCTION_2_13(v7);
    v9 = v8;
    v10 = OUTLINED_FUNCTION_2_13(v8);

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam35AutoConfirmMagicWordsActionEnforcerVmMd, _s7SiriCam35AutoConfirmMagicWordsActionEnforcerVmMR);
      v11 = String.init<A>(describing:)();
      v13 = v12;

      v14 = 1;
LABEL_11:
      *a2 = v14;
      a2[1] = v11;
      a2[2] = v13;
      return;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam35AutoConfirmMagicWordsActionEnforcerVmMd, _s7SiriCam35AutoConfirmMagicWordsActionEnforcerVmMR);
      v11 = String.init<A>(describing:)();
      v13 = v15;

      v14 = 2;
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_3_13();
}

void UserDefaultsActionEnforcer.enforce(inputFeatures:autoSendOutput:autoSendInput:modelMetadata:)(void *a1@<X8>)
{
  v2 = CamStringUserDefaults.value.getter();
  if (v3 && (static AutoConfirmAction.action(from:)(v2, v3, &v12), , v4 = v12, v12 != 3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam26UserDefaultsActionEnforcerVmMd, &_s7SiriCam26UserDefaultsActionEnforcerVmMR);
    v10 = String.init<A>(describing:)();
    *a1 = v4;
    a1[1] = v10;
    a1[2] = v11;
  }

  else
  {
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_18(&one-time initialization token for autoSend);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.autoSend);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_8(&dword_266790000, v8, v9, "No user default override");
      OUTLINED_FUNCTION_3_1();
    }

    OUTLINED_FUNCTION_3_13();
  }
}

void ForcedConfirmationActionEnforcer.enforce(inputFeatures:autoSendOutput:autoSendInput:modelMetadata:)(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AutoSendInput(0) + 28)))
  {
    if (ForcedDisambiguation.decision()())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam32ForcedConfirmationActionEnforcerVmMd, &_s7SiriCam32ForcedConfirmationActionEnforcerVmMR);
      v3 = String.init<A>(describing:)();
      *a2 = 1;
      a2[1] = v3;
      a2[2] = v4;
      return;
    }
  }

  else
  {
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_18(&one-time initialization token for autoSend);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.autoSend);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_8(&dword_266790000, v8, v9, "ForcedConfirmationActionEnforcer: user is not opt in");
      OUTLINED_FUNCTION_3_1();
    }
  }

  OUTLINED_FUNCTION_3_13();
}

void Dictionary<>.mock(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = *(*(a1 + 56) + 8 * v5);
      v49 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = v49;
      v12 = specialized Dictionary.startIndex.getter(a3);
      v13 = 0;
      v14 = a3 + 64;
      v42 = v10;
      v43 = v9;
      v41 = a3 + 72;
      v45 = a3 + 64;
      v46 = a3;
      v44 = v7;
      while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
      {
        v15 = v12 >> 6;
        if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_33;
        }

        if (*(a3 + 36) != v10)
        {
          goto LABEL_34;
        }

        v48 = v10;
        v47 = v11;
        v16 = (*(a3 + 48) + 16 * v12);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a3 + 56) + 8 * v12);
        v20 = *(v9 + 16);

        v21 = v19;
        v22 = v9;
        v23 = v21;
        if (v20)
        {
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
          if (v25)
          {
            v26 = *(*(v22 + 56) + 8 * v24);

            v23 = v26;
          }
        }

        v27 = v48;
        v28 = v8;
        v50 = v8;
        v29 = *(v8 + 16);
        v30 = *(v28 + 24);
        if (v29 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v29 + 1, 1);
          v27 = v48;
          v28 = v50;
        }

        *(v28 + 16) = v29 + 1;
        v31 = (v28 + 24 * v29);
        v31[4] = v18;
        v31[5] = v17;
        v31[6] = v23;
        a3 = v46;
        v32 = 1 << *(v46 + 32);
        if (v12 >= v32)
        {
          goto LABEL_35;
        }

        v14 = v45;
        v33 = *(v45 + 8 * v15);
        if ((v33 & (1 << v12)) == 0)
        {
          goto LABEL_36;
        }

        v8 = v28;
        if (*(v46 + 36) != v27)
        {
          goto LABEL_37;
        }

        v34 = v33 & (-2 << (v12 & 0x3F));
        if (v34)
        {
          v32 = __clz(__rbit64(v34)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v35 = v44;
        }

        else
        {
          v36 = v15 << 6;
          v37 = v15 + 1;
          v38 = (v41 + 8 * v15);
          v35 = v44;
          while (v37 < (v32 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              outlined consume of [String : MLFeatureValue].Index._Variant(v12, v27, v47 & 1);
              v32 = __clz(__rbit64(v39)) + v36;
              goto LABEL_24;
            }
          }

          outlined consume of [String : MLFeatureValue].Index._Variant(v12, v27, v47 & 1);
        }

LABEL_24:
        v10 = v42;
        v9 = v43;
        v11 = 0;
        ++v13;
        v12 = v32;
        if (v13 == v35)
        {

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    else
    {
LABEL_29:

      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_So14MLFeatureValueCSaySS_AFtGTt0g5(v8);
    }
  }

  else
  {
  }
}

char *AutoSendHandler.init()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_22();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v25 = OBJC_IVAR____TtC7SiriCam15AutoSendHandler_siriLocale;
  static EnvironmentUtilities.currentSiriLocale.getter();
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_5_12();
    swift_once();
  }

  static Log.autoSend;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_18_7();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.autoSend);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_7_5();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266790000, v12, v13, "Initialising AutoSend Handler", v16, 2u);
    v2 = v1;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  type metadata accessor for AutoSendCoreHandler(0);
  swift_allocObject();
  v17 = AutoSendCoreHandler.init()();
  if (v2)
  {
    (*(v6 + 8))(v10, v4);
    type metadata accessor for Locale();
    OUTLINED_FUNCTION_0_2();
    (*(v18 + 8))(v3 + v25);
    type metadata accessor for AutoSendHandler(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = OUTLINED_FUNCTION_22_0();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_7_5();
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266790000, v19, v20, "AutoSend Handler initialised successfully", v23, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_18_7();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v6 + 8))(v10, v4);
  }

  return v3;
}

uint64_t AutoSendHandler.inferConfirmationImpl(for:withRequestId:resultCandidateId:recipientCrrSignals:featureOptInStatus:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W6>, void *a7@<X8>)
{
  v89 = a6;
  v105 = a4;
  v102 = a2;
  v103 = a3;
  v97 = a7;
  v88 = type metadata accessor for AutoSendInput(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  v16 = v86 - v15;
  v106 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v104 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v86 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v86 - v25;
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_22();
  v94 = v28;
  v95 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  v31 = v30 - v29;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_5_12();
    swift_once();
  }

  v32 = static Log.autoSend;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_14_10();
  v91 = v32;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v33, static Logger.autoSend);

  v35 = a1;
  v36 = v103;

  v99 = v34;
  v37 = Logger.logObject.getter();
  LODWORD(v34) = static os_log_type_t.default.getter();

  LODWORD(v92) = v34;
  v38 = os_log_type_enabled(v37, v34);
  v100 = v24;
  v101 = v26;
  v96 = v12;
  v93 = v31;
  v98 = v16;
  v87 = v35;
  if (v38)
  {
    OUTLINED_FUNCTION_11();
    v86[0] = OUTLINED_FUNCTION_16_6();
    v108[0] = v86[0];
    *v12 = 136315650;
    v39 = v35;
    v35 = a5;
    v40 = v39;
    v41 = [v39 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    a5 = v35;
    v24 = v100;

    v45 = v105;
    LOWORD(v41) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v108);

    OUTLINED_FUNCTION_12_13();
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v36, v108);
    *(v12 + 22) = v41;
    v107[0] = v45;
    v107[1] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v46 = String.init<A>(describing:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v108);

    *(v12 + 24) = v48;
    v26 = v101;
    _os_log_impl(&dword_266790000, v37, v92, "Handling AutoSend request for speechPackage: %s, requestId: %s and rcId: %s", v12, 0x20u);
    swift_arrayDestroy();
    v16 = v98;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v12 = v96;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  type metadata accessor for AutoSendHandler(0);
  static AutoSendHandler.validateRequestId(requestId:)(v26);
  static AutoSendHandler.makeAutoSendIdAndLogRequestLink(requestId:)(v26, v24);
  if (a5)
  {
    swift_bridgeObjectRetain_n();
    v49 = v105;
  }

  else
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v52 = OUTLINED_FUNCTION_22_0();
    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_7_5();
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_266790000, v50, v51, "rcId missing in Siri Signals", v54, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    a5 = 0xE200000000000000;
    v49 = 12589;
  }

  OUTLINED_FUNCTION_20_7(v16);
  _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA08AutoSendH6LoggerV_Tt5B5();
  outlined destroy of UUID?(v16);
  v55 = v88;
  v56 = a5;
  v57 = *(v104 + 16);
  v57(v12 + *(v88 + 32), v26, v35);
  v57(v12, v24, v35);
  v58 = v87;
  *(v12 + v55[5]) = v87;
  v59 = (v12 + v55[6]);
  v105 = v49;
  *v59 = v49;
  v59[1] = v56;
  v92 = v56;
  *(v12 + v55[7]) = v89 & 1;
  v60 = v58;

  v61 = AutoSendCoreHandler.handle(_:)(v12);
  v90 = 0;
  v62 = v61;

  v63 = OUTLINED_FUNCTION_19_7(&v109);
  (v57)(v63);
  v64 = v103;

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    OUTLINED_FUNCTION_11();
    v107[0] = OUTLINED_FUNCTION_16_6();
    *v12 = 136315650;
    OUTLINED_FUNCTION_1_17();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(v67, v68, MEMORY[0x277CC9628]);
    LODWORD(v99) = v66;
    v69 = v106;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    v73 = OUTLINED_FUNCTION_7_11();
    MEMORY[0](v73, v69);
    LOWORD(v70) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v107);

    OUTLINED_FUNCTION_12_13();
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v64, v107);
    *(v12 + 22) = v70;
    LOBYTE(v108[0]) = *(v62 + 57);
    v74 = String.init<A>(describing:)();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v107);

    *(v12 + 24) = v76;
    _os_log_impl(&dword_266790000, v65, v99, "%s, requestid: %s: Sending successful autoSend response : %s", v12, 0x20u);
    swift_arrayDestroy();
    v16 = v98;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v12 = v96;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    v77 = OUTLINED_FUNCTION_7_11();
    MEMORY[0](v77, v106);
  }

  v78 = v106;
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v106);

  v80 = v100;
  v79 = v101;
  _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA22AutoSendResponseLoggerV_Tt5B5();

  outlined destroy of UUID?(v16);
  outlined destroy of AutoSendInput(v12);
  MEMORY[0](v80, v78);
  MEMORY[0](v79, v78);
  v81 = *(v62 + 57);

  v82 = v90 != 0;
  v83 = v97;
  *v97 = v81;
  v83[1] = 0;
  *(v83 + 16) = 0;
  *(v83 + 17) = v82;
  static os_signpost_type_t.end.getter();
  v84 = v93;
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v94 + 8))(v84, v95);
}