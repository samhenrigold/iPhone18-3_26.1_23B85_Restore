uint64_t CalculateDocumentController.graphableExpressions.getter()
{
  v0 = CalculateDocumentController.expressions.getter();
  v1 = v0;
  v11 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
LABEL_22:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6CE0C0](v3, v1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v8 = v11;
            goto LABEL_24;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_19;
          }
        }

        if (CalculateExpression.isGraphable.getter())
        {
          break;
        }

        v10[3] = &type metadata for PencilAndPaperFeatureFlags;
        v10[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
        LOBYTE(v10[0]) = 7;
        v5 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_0(v10);
        if (v5)
        {
          CalculateExpression.graphableVariable.getter();
          if (v6)
          {
          }

          else
          {
            v7 = *(CalculateExpression.graphableVariables.getter() + 16);

            if (!v7)
            {

              goto LABEL_5;
            }
          }

          goto LABEL_15;
        }

LABEL_5:
        ++v3;
        if (v4 == v2)
        {
          goto LABEL_20;
        }
      }

LABEL_15:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_5;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_24:

  return v8;
}

void CalculateDocumentController.mathResultDrawing(_:forItem:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_resultDrawings;
  swift_beginAccess();
  v11 = *&v2[v10];
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
    if (v14)
    {
      v16 = v15;
      swift_unknownObjectRelease();
      if (a1 && (v14 == a1 || ([a1 isEqual_] & 1) != 0))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (!a1)
    {
      return;
    }
  }

  else
  {
    swift_endAccess();
    if (!a1)
    {
      return;
    }
  }

  v16 = 0;
LABEL_10:

  (*(v7 + 16))(v9, a2, v6);
  swift_beginAccess();
  v17 = a1;
  specialized Dictionary.subscript.setter(a1, v9);
  swift_endAccess();
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v3 selector:sel_sendExpressionsChanged object:0];
  [v3 performSelector:sel_sendExpressionsChanged withObject:0 afterDelay:0.1];
LABEL_11:
}

void CalculateDocumentController.updateTokens(expression:itemUUID:)(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a3;
  v5 = type metadata accessor for CalculateExpression.GraphableType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v41 = CalculateExpression.pkTokens.getter();
  v13 = CalculateExpression.isActuallyGraphable.getter(v12);
  v46 = &type metadata for PencilAndPaperFeatureFlags;
  v47 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v45[0]) = 7;
  v14 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v45);
  v39 = v5;
  v40 = v13;
  if ((v14 & 1) == 0)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v16 = CalculateExpression.graphableVariable.getter();
    if (!v17)
    {
      goto LABEL_8;
    }

LABEL_5:
    v18 = v16;
    v19 = v17;
    v45[0] = v16;
    v45[1] = v17;
    MEMORY[0x1EEE9AC00](v16);
    *(&v38 - 2) = v45;
    if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v38 - 4), v15))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D4058CF0;
      *(v20 + 32) = v18;
      *(v20 + 40) = v19;
    }

    else
    {
    }

    goto LABEL_8;
  }

  v15 = CalculateExpression.graphableVariables.getter();
  v16 = CalculateExpression.graphableVariable.getter();
  if (v17)
  {
    goto LABEL_5;
  }

LABEL_8:
  v21 = [objc_allocWithZone(MEMORY[0x1E6978498]) init];
  if (v40)
  {
    CalculateExpression.graphableType.getter();
    v22 = v39;
    (*(v6 + 104))(v8, *MEMORY[0x1E69920D8], v39);
    v23 = static CalculateExpression.GraphableType.== infix(_:_:)();
    v24 = *(v6 + 8);
    v24(v8, v22);
    v24(v11, v22);
    if (v23)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v41;
  [v21 setExpressionFeatures_];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setGraphableVariables_];

  v28 = specialized _arrayConditionalCast<A, B>(_:)(v26);

  if (v28)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionToken, 0x1E69784A0);
    v29 = Array._bridgeToObjectiveC()().super.isa;

    [v21 setTokens_];
  }

  v30 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v31 = *(v4 + v30);
  v32 = v31[2];
  if (v32)
  {
    v33 = (v31 + 4);
    v41 = v31;

    do
    {
      outlined init with copy of WeakObserver(v33, v43);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = v44;
        ObjectType = swift_getObjectType();
        v46 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItemAttributes, 0x1E6978498);
        v47 = &protocol witness table for PKMathRecognitionItemAttributes;
        v45[0] = v21;
        v36 = *(v34 + 24);
        v37 = v21;
        v36(v45, v42, ObjectType, v34);
        swift_unknownObjectRelease();
        outlined destroy of WeakObserver(v43);
        outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s8PaperKit25PKCalculateItemAttributes_pSgMd, &_s8PaperKit25PKCalculateItemAttributes_pSgMR);
      }

      else
      {
        outlined destroy of WeakObserver(v43);
      }

      v33 += 16;
      --v32;
    }

    while (v32);
  }

  else
  {
  }
}

void specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      specialized Set._Variant.insert(_:)(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void CalculateDocumentController.trackResult(for:itemUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  if (CalculateExpression.isActuallyGraphable.getter(v11) || (CalculateExpression.isDeclaration.getter() & 1) != 0)
  {
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(a2, &v29);
    swift_endAccess();
    outlined destroy of StocksKitCurrencyCache.Provider?(&v29, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
    return;
  }

  if ((CalculateExpression.needsEvaluation.getter() & 1) == 0)
  {
    CalculateDocumentController.sendResultForExpression(_:itemUUID:)(a1, a2);
  }

  CalculateExpression.id.getter();
  v14 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForResults;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v17 & 1) == 0))
  {
    v29 = 0;
    v30 = 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(&v29, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
    swift_endAccess();
    (*(v7 + 8))(v13, v6);
LABEL_16:
    CalculateExpression.id.getter();
    swift_weakInit();
    swift_weakAssign();
    v30 = 0;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v29, v9);
    v27 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v27);
    *(&v28 - 4) = v3;
    *(&v28 - 3) = a1;
    *(&v28 - 2) = a2;
    withObservationTracking<A>(_:onChange:)();
    return;
  }

  outlined init with copy of WeakCalculateExpression(*(v15 + 56) + 8 * v16, &v29);
  v30 = 0;
  Strong = swift_weakLoadStrong();
  outlined destroy of StocksKitCurrencyCache.Provider?(&v29, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
  swift_endAccess();
  (*(v7 + 8))(v13, v6);
  if (!Strong)
  {
    goto LABEL_16;
  }

  if (Strong != a1)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, mathLogger);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136380675;
    v24 = CalculateExpression.expression.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v31);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1D38C4000, v20, v21, "Already tracked result for: %{private}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1DA6D0660](v23, -1, -1);
    MEMORY[0x1DA6D0660](v22, -1, -1);
  }
}

uint64_t closure #2 in CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  (*(v10 + 24))(v9, v10);
  CalculateDocumentController.trackResult(for:itemUUID:)(a2, v8);
  return (*(v6 + 8))(v8, v5);
}

void CalculateDocumentController.trackTokens(for:itemUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  if ((CalculateExpression.needsEvaluation.getter() & 1) == 0)
  {
    CalculateDocumentController.updateTokens(expression:itemUUID:)(v13, a1, a2);
  }

  CalculateExpression.id.getter();
  v14 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForTokens;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v17 & 1) == 0))
  {
    v29 = 0;
    v30 = 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(&v29, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
    swift_endAccess();
    (*(v7 + 8))(v12, v6);
LABEL_13:
    CalculateExpression.id.getter();
    swift_weakInit();
    swift_weakAssign();
    v30 = 0;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v29, v9);
    v27 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v27);
    *(&v28 - 4) = v3;
    *(&v28 - 3) = a1;
    *(&v28 - 2) = a2;
    withObservationTracking<A>(_:onChange:)();
    return;
  }

  outlined init with copy of WeakCalculateExpression(*(v15 + 56) + 8 * v16, &v29);
  v30 = 0;
  Strong = swift_weakLoadStrong();
  outlined destroy of StocksKitCurrencyCache.Provider?(&v29, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
  swift_endAccess();
  (*(v7 + 8))(v12, v6);
  if (!Strong)
  {
    goto LABEL_13;
  }

  if (Strong != a1)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, mathLogger);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136380675;
    v24 = CalculateExpression.expression.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v31);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1D38C4000, v20, v21, "Already tracked tokens for: %{private}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1DA6D0660](v23, -1, -1);
    MEMORY[0x1DA6D0660](v22, -1, -1);
  }
}

uint64_t CalculateDocumentController.findMatchingGraphableForOrphanedGraphable(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v66);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v78 = type metadata accessor for UUID();
  v14 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd, &_s8PaperKit19GraphableExpressionVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v79 = &v58 - v19;
  v20 = type metadata accessor for GraphableExpression(0);
  v70 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v64 = v14;
  v24 = *(v22 + 8);
  v25 = Strong;
  ObjectType = swift_getObjectType();
  v27 = *(v24 + 8);
  v74 = ObjectType;
  v76 = v24;
  v28 = v27(ObjectType, v24);
  if (!v28)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v38 = *(v70 + 56);

    return v38(a2, 1, 1, v20);
  }

  v29 = v28;
  v75 = v25;
  v30 = MEMORY[0x1DA6CACA0]();
  v31 = v30;
  if (v30 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v60 = v5;
    v61 = v13;
    v62 = v10;
    v63 = a2;
    v5 = 0;
    v80 = v29;
    v81 = v31 & 0xC000000000000001;
    v69 = v31 & 0xFFFFFFFFFFFFFF8;
    v72 = (v70 + 48);
    v73 = v76 + 64;
    v71 = (v64 + 48);
    while (v81)
    {
      v13 = MEMORY[0x1DA6CE0C0](v5, v31);
      v33 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_28;
      }

LABEL_14:
      v10 = v20;
      v34 = CalculateExpression.expression.getter();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
      CRRegister.wrappedValue.getter();
      if (v34 == v83 && v36 == v84)
      {
      }

      else
      {
        a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((a2 & 1) == 0)
        {

          v20 = v10;
          goto LABEL_7;
        }
      }

      v37 = v79;
      (*(v76 + 64))(v13, v74);
      v20 = v10;
      if ((*v72)(v37, 1, v10) != 1)
      {
        swift_unknownObjectRelease();

        v40 = v68;
        outlined init with take of GraphableExpression(v37, v68);
        v41 = v40;
        v42 = v63;
        outlined init with take of GraphableExpression(v41, v63);
        v43 = *(v70 + 56);
        v44 = v42;
        v45 = 0;
        return v43(v44, v45, 1, v20);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit19GraphableExpressionVSgMd, &_s8PaperKit19GraphableExpressionVSgMR);
      CRRegister.wrappedValue.getter();
      a2 = v77;
      UUID.init(uuidString:)();

      if ((*v71)(a2, 1, v78) != 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(a2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v46 = CalculateExpression.expression.getter();
        v81 = v47;
        v82 = v46;
        v48 = v65;
        CalculateExpression.id.getter();
        v79 = UUID.uuidString.getter();
        v77 = v49;
        (*(v64 + 8))(v48, v78);
        v50 = v10;
        v51 = type metadata accessor for Color(0);
        v52 = *(*(v51 - 8) + 56);
        v53 = v61;
        v52(v61, 1, 1, v51);
        outlined init with copy of Date?(v53, v62, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v83 = 0;
        v84 = 0xE000000000000000;
        v54 = v63;
        CRRegister.init(wrappedValue:)();
        v83 = 0;
        v84 = 0xE000000000000000;
        CRRegister.init(wrappedValue:)();
        v78 = *(v50 + 6);
        v55 = v67;
        v52(v67, 1, 1, v51);
        v56 = v60;
        outlined init with copy of Date?(v55, v60, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v59 = v50;
        v83 = 0;
        v84 = 0xE000000000000000;
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v83 = v82;
        v84 = v81;
        CRRegister.wrappedValue.setter();
        v83 = v79;
        v84 = v77;
        CRRegister.wrappedValue.setter();
        v57 = v62;
        outlined init with copy of Date?(v62, v55, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        outlined init with copy of Date?(v55, v56, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        v83 = 0;
        v84 = 0xE000000000000000;
        CRRegister.wrappedValue.setter();
        swift_unknownObjectRelease();

        outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
        return (*(v70 + 56))(v54, 0, 1, v59);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(a2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_7:
      ++v5;
      v29 = v80;
      if (v33 == i)
      {

        a2 = v63;
        goto LABEL_32;
      }
    }

    if (v5 >= *(v69 + 16))
    {
      goto LABEL_29;
    }

    v13 = *(v31 + 8 * v5 + 32);

    v33 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_32:
  swift_unknownObjectRelease();
  v43 = *(v70 + 56);
  v44 = a2;
  v45 = 1;
  return v43(v44, v45, 1, v20);
}

double CalculateDocumentController.sendResultForExpression(_:itemUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = CalculateExpression.result.getter();
  if (v5)
  {
    v6 = v5;
    if (![v5 isTrivial])
    {
      v13 = [v6 formattedResult];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v14;

      v9 = CalculateExpression.result.getter();
      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = CalculateExpression.result.getter();
  if (v9)
  {
LABEL_5:
    v10 = v9;
    v11 = [v9 unitType];

    v12 = v11 == 16;
    goto LABEL_8;
  }

LABEL_7:
  v12 = 0;
LABEL_8:
  v15 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v16 = *(v3 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;

    do
    {
      outlined init with copy of WeakObserver(v18, v22);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = v23;
        ObjectType = swift_getObjectType();
        (*(v19 + 8))(v7, v8, a2, v12, ObjectType, v19);
        swift_unknownObjectRelease();
      }

      outlined destroy of WeakObserver(v22);
      v18 += 16;
      --v17;
    }

    while (v17);
  }

  return result;
}

Swift::Void __swiftcall CalculateDocumentController.sendExpressionsChanged()()
{
  v1 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      outlined init with copy of WeakObserver(v4, v7);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = v8;
        ObjectType = swift_getObjectType();
        (*(v5 + 16))(ObjectType, v5);
        swift_unknownObjectRelease();
      }

      outlined destroy of WeakObserver(v7);
      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

void (*implicit closure #3 in CalculateDocumentController.trackResult(for:itemUUID:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return partial apply for closure #2 in implicit closure #3 in CalculateDocumentController.trackResult(for:itemUUID:);
}

double closure #1 in CalculateDocumentController.trackTokens(for:itemUUID:)()
{
  CalculateExpression.plain.getter();

  CalculateExpression.graphableVariable.getter();

  return result;
}

void (*implicit closure #2 in CalculateDocumentController.trackTokens(for:itemUUID:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return partial apply for closure #2 in implicit closure #2 in CalculateDocumentController.trackTokens(for:itemUUID:);
}

void closure #2 in implicit closure #3 in CalculateDocumentController.trackResult(for:itemUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v35 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v34 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v25 = v15;
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(a3, v37);
      swift_endAccess();
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMR);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v26 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      swift_weakInit();
      (*(v11 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
      v18 = v28;
      v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 24) = v17;
      (*(v11 + 32))(v20 + v19, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = v31;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = v32;
      v21 = _Block_copy(aBlock);

      v22 = v33;
      static DispatchQoS.unspecified.getter();
      v37[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v23 = v35;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v26;
      MEMORY[0x1DA6CD890](0, v22, v23, v21);
      _Block_release(v21);

      (*(v29 + 8))(v23, v18);
      (*(v34 + 8))(v22, v27);
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in implicit closure #3 in CalculateDocumentController.trackResult(for:itemUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      a4();
    }

    else
    {
    }
  }
}

uint64_t CalculateDocumentController.resultForExpressionWithUUID(_:locale:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    if ((*(v7 + 48))(a1, ObjectType, v7))
    {
      v9 = CalculateExpression.result.getter();
      if (v9)
      {
        v10 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
        v11 = type metadata accessor for Locale();
        v12 = *(v11 - 8);
        v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D4058CF0;
        (*(v12 + 16))(v14 + v13, a2, v11);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v10 setLocales_];

        if (([v10 isTrivial] & 1) == 0)
        {
          v16 = [v10 formattedResult];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_unknownObjectRelease();

          return v17;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeakObserver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WeakObserver(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

double specialized static CalculateDocumentController.cleanupStaleControllers()()
{
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLV_AC27CalculateDocumentControllerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (one-time initialization token for controllers != -1)
  {
LABEL_17:
    swift_once();
  }

  swift_beginAccess();
  v0 = static CalculateDocumentController.controllers;
  v1 = static CalculateDocumentController.controllers + 64;
  v2 = 1 << *(static CalculateDocumentController.controllers + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(static CalculateDocumentController.controllers + 8);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_11:
    while (1)
    {
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = (v6 << 9) | (8 * v8);
      v10 = *(v0[7] + v9);
      v11 = *(v0[6] + v9);
      v12 = v10;
      CalculateDocumentController.cleanupObservers()();
      v13 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
      swift_beginAccess();
      if (*(*&v12[v13] + 16))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          break;
        }
      }

      if (!v4)
      {
        goto LABEL_7;
      }
    }

    swift_unknownObjectRelease();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v11, isUniquelyReferenced_nonNull_native);
  }

  while (1)
  {
LABEL_7:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *&v1[8 * v7];
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_11;
    }
  }

  static CalculateDocumentController.controllers = v16;

  return result;
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined init with take of GraphableExpression(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphableExpression(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void partial apply for closure #1 in CalculateDocumentController.trackResult(for:itemUUID:)()
{
  v0 = CalculateExpression.result.getter();
}

uint64_t objectdestroy_38Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in CalculateDocumentController.init()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CalculateDocumentController.init()();
}

unint64_t lazy protocol witness table accessor for type DrawingIdentifier and conformance DrawingIdentifier()
{
  result = lazy protocol witness table cache variable for type DrawingIdentifier and conformance DrawingIdentifier;
  if (!lazy protocol witness table cache variable for type DrawingIdentifier and conformance DrawingIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DrawingIdentifier and conformance DrawingIdentifier);
  }

  return result;
}

uint64_t UUID.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_25;
      }

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_30;
      }

      v10 = v9;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_27;
      }

      v12 = a1 - v11 + v10;
      MEMORY[0x1DA6C8120]();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_24;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v16;
    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(v15, v18))
    {
      v19 = v15 - v18 + v17;
      MEMORY[0x1DA6C8120]();
      if (!v19)
      {
        goto LABEL_29;
      }

LABEL_21:
      UUID.init(uuid:)();
      return outlined consume of Data._Representation(a1, a2);
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    MEMORY[0x1DA6C8120]();
LABEL_29:
    __break(1u);
LABEL_30:
    result = MEMORY[0x1DA6C8120]();
    __break(1u);
    return result;
  }

  if (v4 != 2)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v13 = type metadata accessor for CRCodingError();
  lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError();
  swift_allocError();
  strcpy(v14, "Invalid UUID.");
  *(v14 + 7) = -4864;
  (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E6995188], v13);
  swift_willThrow();
  return outlined consume of Data._Representation(a1, a2);
}

unint64_t UUID.data()(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = UUID.uuid.getter();
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  UUID.uuid.getter();
  return specialized Data.init(bytes:count:)(&v10, 0x10uLL);
}

uint64_t UUID.asUInt64Hash.getter(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v14[0] = UUID.uuid.getter();
  v14[1] = v1;
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(v14, &v15);
  if (v2[2] < 8uLL)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v3 = v2;
  v4 = swift_retain_n();
  _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAEG_Tt0g5(v4, (v4 + 32), 0, 17);
  v6 = v5;
  v8 = v7;
  v9 = *(v3 + 16);

  if (v9 < 0x10)
  {
    goto LABEL_5;
  }

  _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAEG_Tt0g5(v3, (v3 + 32), 8, 33);
  v11 = v10;
  outlined consume of Data._Representation(v10, v12);
  outlined consume of Data._Representation(v6, v8);
  return v11 ^ v6;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError()
{
  result = lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError;
  if (!lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError)
  {
    type metadata accessor for CRCodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError);
  }

  return result;
}

uint64_t specialized static UUID.< infix(_:_:)(uint64_t a1)
{
  v21 = UUID.uuid.getter();
  LOWORD(v22) = v1;
  BYTE2(v22) = v2;
  BYTE3(v22) = v3;
  BYTE4(v22) = v4;
  BYTE5(v22) = v5;
  BYTE6(v22) = v6;
  HIBYTE(v22) = v7;
  v19 = UUID.uuid.getter();
  LOWORD(v20) = v8;
  BYTE2(v20) = v9;
  BYTE3(v20) = v10;
  BYTE4(v20) = v11;
  BYTE5(v20) = v12;
  BYTE6(v20) = v13;
  HIBYTE(v20) = v14;
  v15 = bswap64(v21);
  v16 = bswap64(v19);
  if (v15 == v16 && (v15 = bswap64(v22), v16 = bswap64(v20), v15 == v16))
  {
    v17 = 0;
  }

  else if (v15 < v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  return v17 >> 31;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t StepperButton.addTarget(_:action:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton);
  outlined init with copy of Any?(a1, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  [v6 addTarget:v13 action:a2 forControlEvents:a3];
  return swift_unknownObjectRelease();
}

char *StepperButton.init(image:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v5 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v6 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageConfiguration;
  *&v1[v6] = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:19.0];
  *&v1[OBJC_IVAR____TtC8PaperKit13StepperButton_image] = a1;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v47 = a1;
  v7 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton;
  v9 = *&v7[OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton];
  v10 = v7;
  [v9 setUserInteractionEnabled_];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = v10;
  v12 = *&v7[v8];
  v13 = v11;
  [v13 addSubview_];
  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D405B630;
  v16 = [*&v7[v8] topAnchor];
  v17 = [v13 topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [*&v7[v8] leadingAnchor];
  v20 = [v13 leadingAnchor];

  v21 = [v19 &selRef:v20 setFindInteractionEnabled:? + 5];
  *(v15 + 40) = v21;
  v22 = [*&v7[v8] bottomAnchor];
  v23 = [v13 bottomAnchor];

  v24 = [v22 &selRef:v23 setFindInteractionEnabled:? + 5];
  *(v15 + 48) = v24;
  v25 = [*&v7[v8] trailingAnchor];
  v26 = [v13 trailingAnchor];

  v27 = [v25 &selRef:v26 setFindInteractionEnabled:? + 5];
  *(v15 + 56) = v27;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = v14;
  [v14 activateConstraints_];

  v30 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageView;
  v31 = *&v13[OBJC_IVAR____TtC8PaperKit13StepperButton_image];
  v32 = *&v13[OBJC_IVAR____TtC8PaperKit13StepperButton_imageConfiguration];
  v33 = *&v13[OBJC_IVAR____TtC8PaperKit13StepperButton_imageView];
  v34 = [v31 imageWithConfiguration_];
  [v33 setImage_];

  [*&v13[v30] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v7[v8] addSubview_];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D405B640;
  v36 = [*&v13[v30] centerXAnchor];
  v37 = [v13 centerXAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v35 + 32) = v38;
  v39 = [*&v13[v30] centerYAnchor];
  v40 = [v13 centerYAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v35 + 40) = v41;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints_];

  StepperButton.updateUI()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D4058CF0;
  v44 = type metadata accessor for UITraitUserInterfaceStyle();
  v45 = MEMORY[0x1E69DC0F8];
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  MEMORY[0x1DA6CDBA0](v43, sel_updateUI);

  swift_unknownObjectRelease();

  return v13;
}

void StepperButton.updateUI()()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  [v2 setEnabled_];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  LODWORD(v2) = objc_msgSendSuper2(&v18, sel_isHighlighted);
  v3 = objc_opt_self();
  v4 = &selRef_tertiarySystemFillColor;
  if (!v2)
  {
    v4 = &selRef_quaternarySystemFillColor;
  }

  v5 = [v3 *v4];
  [v0 setBackgroundColor_];

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = objc_opt_self();
  v9 = v8;
  if (v7 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (v7 == 2)
  {
    v11 = &selRef_systemGrayColor;
  }

  else
  {
    v11 = &selRef_systemGray3Color;
  }

  if (v7 == 2)
  {
    v12 = &selRef_systemGray3Color;
  }

  else
  {
    v12 = &selRef_systemGrayColor;
  }

  v13 = [v8 *v11];
  v14 = [v9 *v12];
  v15 = *&v0[OBJC_IVAR____TtC8PaperKit13StepperButton_imageView];
  v17.receiver = v0;
  v17.super_class = ObjectType;
  if (objc_msgSendSuper2(&v17, sel_isEnabled))
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  [v15 setTintColor_];
  [v15 setOverrideUserInterfaceStyle_];
}

id @objc StepperButton.isSelected.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

void @objc StepperButton.isSelected.setter(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  StepperButton.updateUI()();
}

uint64_t StepperButton.removeTarget(_:action:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton);
  outlined init with copy of Any?(a1, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  [v6 removeTarget:v13 action:a2 forControlEvents:a3];
  return swift_unknownObjectRelease();
}

void specialized StepperButton.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v2 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageConfiguration;
  *(v0 + v3) = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:19.0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CanvasCalculateDocumentIndex.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA6CE840](*&v1);
}

Swift::Int CanvasCalculateDocumentIndex.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA6CE840](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CanvasCalculateDocumentIndex()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA6CE840](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CanvasCalculateDocumentIndex(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1DA6CE840](*&v3);
  return Hasher._finalize()();
}

Swift::Int CalculateDocumentExpressionSolvingBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t CanvasCalculateDocument.graphableExpression(for:)@<X0>(uint64_t a1@<X8>)
{
  return CanvasCalculateDocument.graphableExpression(for:)(a1);
}

{
  v2 = type metadata accessor for GraphableExpression(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t lazy protocol witness table accessor for type CanvasCalculateDocumentIndex and conformance CanvasCalculateDocumentIndex()
{
  result = lazy protocol witness table cache variable for type CanvasCalculateDocumentIndex and conformance CanvasCalculateDocumentIndex;
  if (!lazy protocol witness table cache variable for type CanvasCalculateDocumentIndex and conformance CanvasCalculateDocumentIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasCalculateDocumentIndex and conformance CanvasCalculateDocumentIndex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CalculateDocumentExpressionSolvingBehavior and conformance CalculateDocumentExpressionSolvingBehavior()
{
  result = lazy protocol witness table cache variable for type CalculateDocumentExpressionSolvingBehavior and conformance CalculateDocumentExpressionSolvingBehavior;
  if (!lazy protocol witness table cache variable for type CalculateDocumentExpressionSolvingBehavior and conformance CalculateDocumentExpressionSolvingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalculateDocumentExpressionSolvingBehavior and conformance CalculateDocumentExpressionSolvingBehavior);
  }

  return result;
}

uint64_t AnyCanvasElementView.isEditingCanvasElement.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd, &_s9Coherence9CRKeyPathVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v13);
  if (v17)
  {
    v18 = v17;
    (*((*v16 & *v17) + 0x448))();

    v19 = *(v3 + 56);
    v20 = v19(v15, 0, 1, v2);
  }

  else
  {
    v19 = *(v3 + 56);
    v20 = v19(v15, 1, 1, v2);
  }

  (*((*v16 & *v1) + 0xE8))(v20);
  v19(v11, 0, 1, v2);
  v21 = *(v34 + 48);
  outlined init with copy of CRKeyPath?(v15, v6);
  outlined init with copy of CRKeyPath?(v11, &v6[v21]);
  v22 = *(v3 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    v24 = v3;
    v25 = v33;
    outlined init with copy of CRKeyPath?(v6, v33);
    if (v22(&v6[v21], 1, v2) != 1)
    {
      v26 = *(v3 + 32);
      v27 = v32;
      v26(v32, &v6[v21], v2);
      lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath();
      v28 = v25;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v24 + 8);
      v29(v27, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      v29(v28, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
      return v23 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
    (*(v3 + 8))(v25, v2);
    goto LABEL_9;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  if (v22(&v6[v21], 1, v2) != 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence9CRKeyPathVSg_ADtMd, &_s9Coherence9CRKeyPathVSg_ADtMR);
    v23 = 0;
    return v23 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  v23 = 1;
  return v23 & 1;
}

uint64_t AnyCanvasElementView.weakCanvasElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v15 = 1;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v10, v14, v7);
    WeakTagged_10.tag.getter();
    v19 = v21;
    v20 = v22;
    MEMORY[0x1DA6CB7A0](v7);
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
    WeakTagged_10.init(_:id:)();
    v16 = *(v8 + 8);
    v16(v10, v7);
    v16(v14, v7);
    v15 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
}

uint64_t AnyCanvasElementView.resizeHandles.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D0))();
  if ((~v1 & 6) != 0)
  {
    if ((v1 & 2) == 0)
    {
      return MEMORY[0x1E69E7CD0];
    }

    v2 = &outlined read-only object #1 of static ResizeHandleType.handles(for:);
  }

  else
  {
    v2 = &outlined read-only object #0 of static ResizeHandleType.handles(for:);
  }

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit16ResizeHandleTypeO_SayAFGTt0g5Tf4g_n(v2);
}

BOOL AnyCanvasElementView.hasLiveEditModification.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x298))(v4);
  (*((*v1 & *v0) + 0x2A0))(v5, v2);
  return (static CGAffineTransform.== infix(_:_:)() & 1) == 0;
}

double AnyCanvasElementView.selectionCoordinateSpace.getter@<D0>(_OWORD *a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

void __swiftcall AnyCanvasElementView.boundsTransform()(CGAffineTransform *__return_ptr retstr)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x280))();
  CGAffineTransformMakeTranslation(&v7, -v3, -v4);
  v5 = *&v7.c;
  v6 = *&v7.tx;
  *&retstr->a = *&v7.a;
  *&retstr->c = v5;
  *&retstr->tx = v6;
}

void __swiftcall AnyCanvasElementView.paperBoundsTransform()(CGAffineTransform *__return_ptr retstr)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(&v26);
    v5 = v28;
    v6 = v29;
    AnyCanvasElementView.paperBoundsTransform()(&v24);
    CGAffineTransformMakeScale(&t1, v24.a, v24.a);
    v7 = *&t1.a;
    v8 = *&t1.c;
    v9 = *&t1.tx;
    *&t1.a = v26;
    *&t1.c = v27;
    t1.tx = v5;
    t1.ty = v6;
    *&t2.a = v7;
    *&t2.c = v8;
    *&t2.tx = v9;
    CGAffineTransformConcat(&v21, &t1, &t2);
    v19 = *&v21.a;
    v20 = *&v21.c;
    tx = v21.tx;
    ty = v21.ty;

    v13 = v19;
    v12 = v20;
  }

  else
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
    }

    else
    {
      v15 = MEMORY[0x1E69E7D40];
      v16 = v1;
      v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
      if (v17)
      {
        v18 = v17;
        (*((*v15 & *v17) + 0x858))(&v24);

        v1 = v16;
        if ((v25 & 1) == 0)
        {
          v13 = *&v24.a;
          v12 = *&v24.c;
          tx = v24.tx;
          ty = v24.ty;
          goto LABEL_6;
        }
      }
    }

    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(&v26);
    v13 = v26;
    v12 = v27;
    tx = v28;
    ty = v29;
  }

LABEL_6:
  *&retstr->a = v13;
  *&retstr->c = v12;
  retstr->tx = tx;
  retstr->ty = ty;
}

void __swiftcall AnyCanvasElementView.orientationTransform()(CGAffineTransform *__return_ptr retstr)
{
  AnyCanvasElementView.paperBoundsTransform()(&v10);
  tx = v10.tx;
  ty = v10.ty;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2D0))();
  [v1 bounds];
  CGImagePropertyOrientation.originAlignedTransform(_:)(&v11, v12);
  *&t1.a = *&v10.a;
  *&t1.c = *&v10.c;
  t1.tx = tx;
  t1.ty = ty;
  t2 = v11;
  CGAffineTransformConcat(&v7, &t1, &t2);
  v5 = *&v7.c;
  v6 = *&v7.tx;
  *&retstr->a = *&v7.a;
  *&retstr->c = v5;
  *&retstr->tx = v6;
}

Swift::Void __swiftcall AnyCanvasElementView.didBeginDrawing()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  if (v2)
  {
    v3 = v2;
    (*((*v1 & *v2) + 0x860))();
  }
}

Swift::Void __swiftcall AnyCanvasElementView.didEndDrawing()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  if (v1)
  {
    v2 = v1;
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  }
}

Swift::Bool __swiftcall AnyCanvasElementView.intersects(_:canvasBounds:)(__C::CGRect _, __C::CGRect canvasBounds)
{
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    [v2 bounds];
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
    goto LABEL_5;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x290))(&v22);
  a = v22.a;
  b = v22.b;
  c = v22.c;
  d = v22.d;
  v21 = v22;
  ty = v22.ty;
  tx = v22.tx;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = 1.0;
  v23.size.height = 1.0;
  v24 = CGRectApplyAffineTransform(v23, &v21);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v12 = CGRectIntersectsRect(v24, v27);
  if (v12)
  {
    v21.a = a;
    v21.b = b;
    v21.c = c;
    v21.d = d;
    v21.tx = tx;
    v21.ty = ty;
    CGAffineTransformInvert(&v20, &v21);
    v21 = v20;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectApplyAffineTransform(v25, &v21);
    v13 = 0.0;
    v14 = 0.0;
    v15 = 1.0;
    v16 = 1.0;
LABEL_5:
    LOBYTE(v12) = CGRectIntersectsRect(v26, *&v13);
  }

  return v12;
}

id AnyCanvasElementView.dragInteractionPreviewForLifting(item:session:)()
{
  result = [v0 window];
  if (result)
  {

    return [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView_];
  }

  return result;
}

id AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging] = 0;
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isContextMenuInteractionVisible] = 0;
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField] = 0;
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext] = 0;
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_suppressRoundedCorners] = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected] = 0;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for AnyCanvasElementView();
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a3, a4, a5, a6);
  v14 = [v13 layer];
  v15 = [objc_opt_self() blueColor];
  v16 = [v15 CGColor];

  [v14 setBorderColor_];
  return v13;
}

Swift::Void __swiftcall AnyCanvasElementView.updateFrame()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = specialized static AnyCanvasElementView.convert(_:to:)(Strong, v1, v3, v5, v7);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v0 setFrame_];

  [v0 setNeedsLayout];
}

id AnyCanvasElementView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnyCanvasElementView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void @objc AnyCanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  specialized AnyCanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(v6);

  swift_unknownObjectRelease();
}

void specialized AnyCanvasElementView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isContextMenuInteractionVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_suppressRoundedCorners) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double specialized static AnyCanvasElementView.convert(_:to:)(void *a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    AnyCanvasElementView.paperBoundsTransform()(&v34);
    v31 = *&v34.a;
    v32 = *&v34.c;
    v30 = *&v34.tx;
    v10 = [a1 window];
    v11 = 1.0;
    v12 = 1.0;
    if (v10)
    {
      v13 = v10;
      v14 = [v10 screen];

      [v14 scale];
      v12 = v15;
    }

    v16 = MEMORY[0x1E69E7D40];
    v17 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x90))();
    if (v17)
    {
      v18 = v17;
      v19 = (*((*v16 & *v17) + 0x450))();

      if (v19)
      {
        [v19 zoomScale];
        v11 = v20;
      }
    }

    a5 = v9;
    a4 = v8;
    a3 = v7;
    a2 = v6;
    v22 = v31;
    v21 = v32;
    v23 = v30;
  }

  else
  {
    v21 = xmmword_1D4059310;
    v22 = xmmword_1D4059320;
    v23 = 0uLL;
    v11 = 1.0;
    v12 = 1.0;
  }

  *&v33.a = v22;
  *&v33.c = v21;
  *&v33.tx = v23;
  v35 = CGRectApplyAffineTransform(*&a2, &v33);
  v36.origin.x = CGRect.rounded(scale:)(v11 * v12, v35.origin.x, v35.origin.y, v35.size.width, v35.size.height);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  CGRectGetMinY(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  CGRectGetWidth(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetHeight(v39);
  return MinX;
}

void specialized AnyCanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(char a1)
{
  *(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isContextMenuInteractionVisible) = a1;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    v4 = v2;
    v5 = v3;

    if (v3)
    {
      v5[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_hasDraggingCanvasElement] = *(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging);
      [v5 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t outlined init with copy of CRKeyPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd, &_s9Coherence9CRKeyPathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath()
{
  result = lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath;
  if (!lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath)
  {
    type metadata accessor for CRKeyPath();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath);
  }

  return result;
}

double TextBox.frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double TextBox.frame.setter(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*TextBox.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t TextBox.$frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for TextBox.$frame : TextBox(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t TextBox.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*TextBox.$frame.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

double TextBox.rotation.getter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for TextBox.rotation : TextBox@<D0>(double *a1@<X8>)
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

double key path setter for TextBox.rotation : TextBox(uint64_t *a1)
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double TextBox.rotation.setter(double a1)
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*TextBox.rotation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t TextBox.$rotation.getter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for TextBox.$rotation : TextBox()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for TextBox.$rotation : TextBox(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t TextBox.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TextBox.$rotation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for TextBox(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t TextBox.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextBox(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TextBox.text.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextBox(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TextBox.isFixedWidth.getter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

void key path getter for TextBox.isFixedWidth : TextBox(_BYTE *a1@<X8>)
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  CRRegister.wrappedValue.getter();
  *a1 = v2;
}

double key path setter for TextBox.isFixedWidth : TextBox(char *a1)
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

double TextBox.isFixedWidth.setter(char a1)
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  CRRegister.wrappedValue.setter();
  return result;
}

uint64_t (*TextBox.isFixedWidth.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t TextBox.$isFixedWidth.getter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for TextBox.$isFixedWidth : TextBox()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for TextBox.$isFixedWidth : TextBox(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t TextBox.$isFixedWidth.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TextBox.$isFixedWidth.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for TextBox(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

double TextBox.init()()
{
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  CRRegister.init(wrappedValue:)();
  type metadata accessor for TextBox(0);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:)();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  return result;
}

BOOL TextBox.Partial.merge(delta:)(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v94 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v78 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v78 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v95 = type metadata accessor for TextBox.Partial(0);
  MEMORY[0x1EEE9AC00](v95);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextBox.Partial(v2, v32, type metadata accessor for TextBox.Partial);
  v96 = a1;
  v33 = TextBox.Partial.canMerge(delta:)(a1);
  outlined destroy of TextBox.Partial(v32, type metadata accessor for TextBox.Partial);
  if (!v33)
  {
    return v33;
  }

  v80 = v33;
  v79 = v6;
  v81 = v4;
  outlined init with copy of Date?(v2, v30, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v34 = v2;
  v78 = v23;
  v35 = *(v23 + 48);
  v36 = v35(v30, 1, v22);
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v36 == 1)
  {
    v37 = v21;
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96, v34, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v38 = v34;
  }

  else
  {
    outlined init with copy of Date?(v96, v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if (v35(v27, 1, v22) == 1)
    {
      v37 = v21;
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
      v38 = v34;
    }

    else
    {
      v39 = v78;
      v40 = v82;
      (*(v78 + 32))(v82, v27, v22);
      v38 = v34;
      if (!v35(v34, 1, v22))
      {
        CRRegister.merge(delta:)();
      }

      v37 = v21;
      (*(v39 + 8))(v40, v22);
    }
  }

  v41 = v88;
  v42 = v95;
  v43 = v95[5];
  v44 = v37;
  outlined init with copy of Date?(v38 + v43, v37, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v45 = *(v92 + 48);
  v46 = v45(v37, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v47 = v42[5];
  v88 = v38;
  if (v46 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v96[v47], v38 + v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v48 = v38;
  }

  else
  {
    v49 = v85;
    outlined init with copy of Date?(&v96[v47], v85, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    if (v45(v49, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
      v48 = v88;
    }

    else
    {
      v50 = v92;
      v51 = v83;
      (*(v92 + 32))(v83, v49, v41);
      v52 = v88;
      v53 = v45(v88 + v43, 1, v41);
      v48 = v52;
      if (!v53)
      {
        CRRegister.merge(delta:)();
      }

      (*(v50 + 8))(v51, v41);
    }
  }

  v54 = v95;
  v55 = v95[6];
  v56 = v89;
  outlined init with copy of Date?(v48 + v55, v89, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  v57 = *(v93 + 48);
  v58 = v90;
  v59 = v57(v56, 1, v90);
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  v60 = v54[6];
  if (v59 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v96[v60], v48 + v55, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  }

  else
  {
    v61 = v86;
    outlined init with copy of Date?(&v96[v60], v86, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
    if (v57(v61, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
      v62 = v81;
      v48 = v88;
      goto LABEL_24;
    }

    v63 = v93;
    v64 = v84;
    (*(v93 + 32))(v84, v61, v58);
    v48 = v88;
    if (!v57(v88 + v55, 1, v58))
    {
      CRAttributedString.Partial.merge(delta:)();
    }

    (*(v63 + 8))(v64, v58);
  }

  v62 = v81;
LABEL_24:
  v65 = v95;
  v66 = v95[7];
  v67 = v91;
  outlined init with copy of Date?(v48 + v66, v91, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  v68 = v48;
  v69 = *(v94 + 48);
  v70 = v69(v67, 1, v62);
  outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  v71 = v65[7];
  if (v70 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(&v96[v71], v68 + v66, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    LOBYTE(v33) = v80;
  }

  else
  {
    v72 = v87;
    outlined init with copy of Date?(&v96[v71], v87, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    v73 = v69(v72, 1, v62);
    LOBYTE(v33) = v80;
    if (v73 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    }

    else
    {
      v74 = v62;
      v75 = v94;
      v76 = v79;
      (*(v94 + 32))(v79, v72, v74);
      if (!v69(v88 + v66, 1, v74))
      {
        CRRegister.merge(delta:)();
      }

      (*(v75 + 8))(v76, v74);
    }
  }

  return v33;
}

BOOL TextBox.Partial.canMerge(delta:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v59 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v59 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - v28;
  outlined init with copy of Date?(a1, v25, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v30 = *(v27 + 48);
  if (v30(v25, 1, v26) == 1)
  {
    v22 = v25;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v31 = v70;
    v32 = v71;
    v33 = v69;
    goto LABEL_6;
  }

  (*(v27 + 32))(v29, v25, v26);
  outlined init with copy of Date?(v72, v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if (v30(v22, 1, v26) == 1)
  {
    (*(v27 + 8))(v29, v26);
    goto LABEL_5;
  }

  v51 = CRRegister.canMerge(delta:)();
  v52 = *(v27 + 8);
  v52(v29, v26);
  v52(v22, v26);
  v31 = v70;
  v32 = v71;
  v33 = v69;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v34 = type metadata accessor for TextBox.Partial(0);
  outlined init with copy of Date?(&a1[v34[5]], v17, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v35 = v66;
  v36 = *(v66 + 48);
  if (v36(v17, 1, v18) == 1)
  {
    v33 = v17;
    v37 = v67;
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v39 = v68;
    goto LABEL_11;
  }

  v71 = a1;
  v38 = v61;
  (*(v35 + 32))(v61, v17, v18);
  outlined init with copy of Date?(v72 + v34[5], v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (v36(v33, 1, v18) == 1)
  {
    (*(v35 + 8))(v38, v18);
    v37 = v67;
    a1 = v71;
    goto LABEL_10;
  }

  v53 = CRRegister.canMerge(delta:)();
  v54 = *(v35 + 8);
  v54(v38, v18);
  v54(v33, v18);
  v37 = v67;
  v39 = v68;
  a1 = v71;
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  outlined init with copy of Date?(&a1[v34[6]], v31, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  v40 = v63;
  v41 = *(v63 + 48);
  if (v41(v31, 1, v39) == 1)
  {
    v32 = v31;
    v43 = v64;
    v42 = v65;
  }

  else
  {
    v44 = a1;
    (*(v40 + 32))(v37, v31, v39);
    outlined init with copy of Date?(v72 + v34[6], v32, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
    v45 = v41(v32, 1, v39);
    v46 = v40;
    v43 = v64;
    v42 = v65;
    if (v45 != 1)
    {
      v55 = CRAttributedString.Partial.canMerge(delta:)();
      v56 = *(v46 + 8);
      v56(v37, v39);
      v56(v32, v39);
      a1 = v44;
      if ((v55 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v46 + 8))(v37, v39);
    a1 = v44;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
LABEL_16:
  v47 = v62;
  outlined init with copy of Date?(&a1[v34[7]], v62, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  v48 = *(v43 + 48);
  if (v48(v47, 1, v42) == 1)
  {
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    return 1;
  }

  v49 = v59;
  (*(v43 + 32))(v59, v47, v42);
  v47 = v60;
  outlined init with copy of Date?(v72 + v34[7], v60, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  if (v48(v47, 1, v42) == 1)
  {
    (*(v43 + 8))(v49, v42);
    goto LABEL_19;
  }

  v57 = CRRegister.canMerge(delta:)();
  v58 = *(v43 + 8);
  v58(v49, v42);
  v58(v47, v42);
  return (v57 & 1) != 0;
}

uint64_t TextBox.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  outlined init with copy of Date?(v2, &v25 - v13, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v16 + 8))(v14, v15);
  }

  v17 = type metadata accessor for TextBox.Partial(0);
  outlined init with copy of Date?(v2 + v17[5], v11, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v19 + 8))(v11, v18);
  }

  outlined init with copy of Date?(v2 + v17[6], v8, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  }

  else
  {
    CRAttributedString.Partial.visitReferences(_:)();
    (*(v21 + 8))(v8, v20);
  }

  outlined init with copy of Date?(v2 + v17[7], v5, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v5, 1, v22) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  }

  CRRegister.visitReferences(_:)();
  return (*(v23 + 8))(v5, v22);
}

double TextBox.Partial.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v12 = *(v11 - 8);
  v54 = *(v12 + 56);
  v55 = v11;
  v53 = v12 + 56;
  v54(a2, 1, 1);
  v13 = type metadata accessor for TextBox.Partial(0);
  v14 = v13[5];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v59 = v14;
  v51 = v16 + 56;
  v52 = v17;
  v17(a2 + v14, 1, 1, v15);
  v18 = v13[6];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
  v20 = (*(v19 - 8) + 56);
  v48 = *v20;
  v49 = v18;
  v48(a2 + v18, 1, 1, v19);
  v21 = v13[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v62 = a2;
  v24(a2 + v21, 1, 1, v22);
  v26 = v61;
  dispatch thunk of CRDecoder.keyedContainer()();
  v61 = v26;
  if (v26)
  {

    v27 = v62;
LABEL_14:
    outlined destroy of TextBox.Partial(v27, type metadata accessor for TextBox.Partial);
    return result;
  }

  v42[1] = v20;
  v43 = v15;
  v45 = v19;
  v46 = v25;
  v47 = v24;
  v44 = v21;
  v28 = v57;
  v29 = v58;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
    v30 = v56;
    v31 = v61;
    CRRegister.init(from:)();
    v32 = v31;
    v33 = v59;
    if (v31)
    {
      goto LABEL_13;
    }

    (v54)(v30, 0, 1, v55);
    outlined assign with take of UUID?(v30, v62, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v33 = v59;
    v32 = v61;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(from:)();
    if (v32)
    {
LABEL_13:

      v27 = v62;
      goto LABEL_14;
    }

    v52(v28, 0, 1, v43);
    outlined assign with take of UUID?(v28, v62 + v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  }

  v34 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v35 = v47;
  v36 = v45;
  if (v34)
  {
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    CRAttributedString.Partial.init(from:)();
    if (v32)
    {
      goto LABEL_13;
    }

    v48(v29, 0, 1, v36);
    outlined assign with take of UUID?(v29, v62 + v49, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  }

  v38 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v39 = v44;
  if (v38)
  {
    v40 = v50;
    CRRegister.init(from:)();

    v27 = v62;
    if (v32)
    {
      goto LABEL_14;
    }

    v41 = v62;
    v35(v40, 0, 1, v22);
    outlined assign with take of UUID?(v40, v41 + v39, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  }

  else
  {
  }

  return result;
}

double TextBox.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v49 = &v46 - v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v53 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = v58;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v21)
  {
    v47 = v13;
    v48 = v10;
    v46 = v7;
    v23 = v56;
    v24 = v57;
    v58 = 0;
    outlined init with copy of Date?(v57, v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v18 + 32))(v20, v16, v17);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      v25 = v58;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v18 + 8))(v20, v17);
      if (v25)
      {
        goto LABEL_13;
      }

      v58 = 0;
    }

    v26 = type metadata accessor for TextBox.Partial(0);
    v27 = v24 + v26[5];
    v28 = v48;
    outlined init with copy of Date?(v27, v48, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v29 = v54;
    v30 = v11;
    v31 = (*(v54 + 48))(v28, 1, v11);
    v32 = v23;
    v33 = v55;
    if (v31 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v34 = v47;
      (*(v29 + 32))(v47, v28, v30);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
      v35 = v58;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v29 + 8))(v34, v30);
      if (v35)
      {
        goto LABEL_13;
      }

      v58 = 0;
    }

    v36 = v57;
    v37 = v51;
    outlined init with copy of Date?(v57 + v26[6], v51, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
    v38 = (*(v33 + 48))(v37, 1, v32);
    v40 = v52;
    v39 = v53;
    if (v38 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
      goto LABEL_16;
    }

    v41 = v46;
    (*(v33 + 32))(v46, v37, v32);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Partial and conformance CRAttributedString<A>.Partial, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR, MEMORY[0x1E69952D0]);
    v42 = v58;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v41, v32);
    if (!v42)
    {
      v58 = 0;
LABEL_16:
      v43 = v36 + v26[7];
      v44 = v49;
      v45 = v50;
      outlined init with copy of Date?(v43, v49, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
      if ((*(v39 + 48))(v44, 1, v45) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
      }

      else
      {
        (*(v39 + 32))(v40, v44, v45);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Bool> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR, MEMORY[0x1E6995080]);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v39 + 8))(v40, v45);
      }

      return result;
    }

LABEL_13:
  }

  return result;
}

uint64_t protocol witness for ShapeTextBox.text.getter in conformance TextBox@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ShapeTextBox.text.setter in conformance TextBox(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void protocol witness for ShapeTextBox.textResizeBehavior.getter in conformance TextBox(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  CRRegister.wrappedValue.getter();
  v2 = 2;
  if (!v3)
  {
    v2 = 3;
  }

  *a1 = v2;
}

double protocol witness for ShapeTextBox.textResizeBehavior.setter in conformance TextBox(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
    CRRegister.wrappedValue.setter();
  }

  return result;
}

uint64_t protocol witness for ShapeTextBox.isFixedWidth.getter in conformance TextBox()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for ShapeTextBox.emptyStringAttributes.getter in conformance TextBox@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t TextBox.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 3;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t TextBox.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t TextBox.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](TextBox.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t TextBox.render<A>(in:id:capsule:options:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v1 + 56);
  v5 = *(v1 + 40);
  *(v0 + 16) = *(v1 + 24);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt1g5(v2, v0 + 16);
  _s8PaperKit21ShapeTextBoxRenderingC6render_2in0G5Frame7optionsyx_So12CGContextRefaSo6CGRectVAA0A17RenderableOptionsVt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt3g5(v2, v3, v1, v6, v7, v8, v9);
  v10 = *(v0 + 8);

  return v10();
}

void _s8PaperKit21ShapeTextBoxRenderingC6render_2in0G5Frame7optionsyx_So12CGContextRefaSo6CGRectVAA0A17RenderableOptionsVt9Coherence4CRDTRzAA0cdE0RzlFZAA0C0V_Tt3g5(uint64_t a1, CGContext *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v18 = type metadata accessor for Shape(0);
  (*(v15 + 16))(v17, a1 + *(v18 + 52), v14);
  v19 = CRAttributedString.attributedString.getter();
  v20 = [v19 string];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 == 0xE000000000000000;
  }

  if (v24)
  {

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v15 + 8))(v17, v14);
    if ((v25 & 1) == 0)
    {
      CGContextSaveGState(a2);
      v26 = off_1F4F68418(v18, &protocol witness table for Shape);
      v48.origin.x = a4;
      v48.origin.y = a5;
      v48.size.width = a6;
      v48.size.height = a7;
      MidX = CGRectGetMidX(v48);
      v49.origin.x = a4;
      v49.origin.y = a5;
      v49.size.width = a6;
      v49.size.height = a7;
      MidY = CGRectGetMidY(v49);
      CGAffineTransformMakeRotation(&t1, v26);
      tx = t1.tx;
      ty = t1.ty;
      v40 = *&t1.a;
      v39 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      a = t1.a;
      b = t1.b;
      v44 = a7;
      v43 = a6;
      c = t1.c;
      d = t1.d;
      v42 = a5;
      v41 = a4;
      v35 = t1.tx;
      v36 = t1.ty;
      *&t2.a = v40;
      *&t2.c = v39;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v45, &t1, &t2);
      v37 = v45.tx;
      v38 = v45.ty;
      v40 = *&v45.a;
      v39 = *&v45.c;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v35;
      t1.ty = v36;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v40;
      *&t1.c = v39;
      t1.tx = v37;
      t1.ty = v38;
      CGAffineTransformConcat(&v45, &t1, &t2);
      t1 = v45;
      CGContextConcatCTM(a2, &t1);
      UIGraphicsPushContext(a2);
      specialized draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:)(a1, a3, a2, v41, v42, v43, v44);
      UIGraphicsPopContext();
      CGContextRestoreGState(a2);
    }
  }
}

void _s8PaperKit21ShapeTextBoxRenderingC6render_2in0G5Frame7optionsyx_So12CGContextRefaSo6CGRectVAA0A17RenderableOptionsVt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt3g5(uint64_t a1, CGContext *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v18 = type metadata accessor for TextBox(0);
  (*(v15 + 16))(v17, a1 + *(v18 + 24), v14);
  v19 = CRAttributedString.attributedString.getter();
  v20 = [v19 string];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 == 0xE000000000000000;
  }

  if (v24)
  {

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v15 + 8))(v17, v14);
    if ((v25 & 1) == 0)
    {
      CGContextSaveGState(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
      CRRegister.wrappedValue.getter();
      a = t1.a;
      v48.origin.x = a4;
      v48.origin.y = a5;
      v48.size.width = a6;
      v48.size.height = a7;
      MidX = CGRectGetMidX(v48);
      v49.origin.x = a4;
      v49.origin.y = a5;
      v49.size.width = a6;
      v49.size.height = a7;
      MidY = CGRectGetMidY(v49);
      CGAffineTransformMakeRotation(&t1, a);
      tx = t1.tx;
      ty = t1.ty;
      v40 = *&t1.a;
      v39 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      v31 = t1.a;
      b = t1.b;
      v44 = a7;
      v43 = a6;
      c = t1.c;
      d = t1.d;
      v42 = a5;
      v41 = a4;
      v35 = t1.tx;
      v36 = t1.ty;
      *&t2.a = v40;
      *&t2.c = v39;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v45, &t1, &t2);
      v37 = v45.tx;
      v38 = v45.ty;
      v40 = *&v45.a;
      v39 = *&v45.c;
      t1.a = v31;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v35;
      t1.ty = v36;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v40;
      *&t1.c = v39;
      t1.tx = v37;
      t1.ty = v38;
      CGAffineTransformConcat(&v45, &t1, &t2);
      t1 = v45;
      CGContextConcatCTM(a2, &t1);
      UIGraphicsPushContext(a2);
      specialized draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:)(a1, a3, a2, v41, v42, v43, v44);
      UIGraphicsPopContext();
      CGContextRestoreGState(a2);
    }
  }
}

double _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0C0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v11 = off_1F4F684A8;
  v12 = type metadata accessor for Shape(0);
  v13 = v11();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v12 + 52);
  v55 = v5;
  v21 = *(v5 + 16);
  v21(v10, a1 + v20, v4);
  off_1F4F6C2D8(&v57, v12, &protocol witness table for Shape);
  v54 = v57;
  v22 = (off_1F4F6C2F0)();
  v23 = v22;
  if ((*(a2 + 32) & 1) == 0)
  {
    Width = CGRectGetWidth(*a2) + -48.0;
    if (!v23)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  Width = 1.79769313e308;
  if (v22)
  {
LABEL_5:
    v58.origin.x = v13;
    v58.origin.y = v15;
    v58.size.width = v17;
    v58.size.height = v19;
    Width = CGRectGetWidth(v58);
  }

LABEL_6:
  v25 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  [v26 setTextContainer_];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  v21(v7, v10, v4);
  v28 = type metadata accessor for CRTextStorage(0);
  v29 = objc_allocWithZone(v28);
  v53 = v10;
  v30 = v29;
  v29[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v29[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v21(&v29[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v7, v4);
  v31 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v7, 0);
  *&v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v31;
  v32 = v31;
  [v32 fixAttributesInRange_];

  v56.receiver = v30;
  v56.super_class = v28;
  v33 = objc_msgSendSuper2(&v56, sel_init);
  v34 = *(v55 + 8);
  v34(v7, v4);
  [v27 setTextStorage_];

  v35 = v27;
  [v35 addTextLayoutManager_];
  v36 = [v35 documentRange];

  [v26 ensureLayoutForRange_];
  [v26 usageBoundsForTextContainer];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  [v25 lineFragmentPadding];
  v46 = -v45;
  v59.origin.x = v38;
  v59.origin.y = v40;
  v59.size.width = v42;
  v59.size.height = v44;
  v60 = CGRectInset(v59, v46, 0.0);
  v47 = v60.size.width;
  if (v54)
  {
    v48 = v53;
    if (v54)
    {
      v63.origin.x = v13;
      v63.origin.y = v15;
      v63.size.width = v17;
      v63.size.height = v19;
      MidX = CGRectGetMidX(v63);

      v34(v48, v4);
      return MidX + v47 * -0.5;
    }

    else
    {
      x = v60.origin.x;
      v34(v53, v4);

      return v13 + x;
    }
  }

  else
  {
    v61.origin.x = v13;
    v61.origin.y = v15;
    v61.size.width = v17;
    v61.size.height = v19;
    v50 = CGRectGetMidX(v61) - v47 * 0.5;
    v62.origin.x = v13;
    v62.origin.y = v15;
    v62.size.width = v17;
    v62.size.height = v19;
    CGRectGetMidY(v62);

    v34(v53, v4);
  }

  return v50;
}

void _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for TextBox(0);
  v12 = protocol witness for SignatureProvider.frame.getter in conformance Signature();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(v11 + 24);
  v51 = v4;
  v52 = v5;
  v20 = *(v5 + 16);
  v20(v10, a1 + v19, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  CRRegister.wrappedValue.getter();
  v50 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  CRRegister.wrappedValue.getter();
  v21 = v54;
  if ((*(a2 + 32) & 1) == 0)
  {
    Width = CGRectGetWidth(*a2) + -48.0;
    v23 = v10;
    if (!v21)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  Width = 1.79769313e308;
  v23 = v10;
  if (v54)
  {
LABEL_5:
    v55.origin.x = v12;
    v55.origin.y = v14;
    v55.size.width = v16;
    v55.size.height = v18;
    Width = CGRectGetWidth(v55);
  }

LABEL_6:
  v24 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v48 = v24;
  v25 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  [v25 setTextContainer_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  v27 = v51;
  v20(v7, v23, v51);
  v28 = type metadata accessor for CRTextStorage(0);
  v49 = v23;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v20(&v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v7, v27);
  v31 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v7, 0);
  *&v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v31;
  v32 = v31;
  [v32 fixAttributesInRange_];

  v53.receiver = v30;
  v53.super_class = v29;
  v33 = objc_msgSendSuper2(&v53, sel_init);
  v34 = *(v52 + 8);
  v34(v7, v27);
  [v26 setTextStorage_];

  v35 = v26;
  [v35 addTextLayoutManager_];
  v36 = [v35 documentRange];

  [v25 ensureLayoutForRange_];
  v37 = v48;
  [v25 usageBoundsForTextContainer];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  [v37 lineFragmentPadding];
  v47 = -v46;
  v56.origin.x = v39;
  v56.origin.y = v41;
  v56.size.width = v43;
  v56.size.height = v45;
  CGRectInset(v56, v47, 0.0);
  if (v50)
  {
    v34(v49, v27);
  }

  else
  {
    v57.origin.x = v12;
    v57.origin.y = v14;
    v57.size.width = v16;
    v57.size.height = v18;
    CGRectGetMidX(v57);

    v34(v49, v27);
  }
}

__C::CGRect __swiftcall TextBox.renderFrame(in:)(__C::CGRect_optional *in)
{
  _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt1g5(v1, in);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v28 = v5 - v9 * 0.0;
  v29 = v3 - v7 * 0.0;
  v33.origin.x = v3;
  v33.origin.y = v5;
  v33.size.width = v7;
  v26 = v7;
  v27 = v9;
  v33.size.height = v9;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v3;
  v34.origin.y = v5;
  v34.size.width = v7;
  v34.size.height = v9;
  MidY = CGRectGetMidY(v34);
  CGAffineTransformMakeRotation(&t1, t1.a);
  tx = t1.tx;
  ty = t1.ty;
  v22 = *&t1.c;
  v24 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v18 = t1.tx;
  v19 = t1.ty;
  *&t2.a = v24;
  *&t2.c = v22;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v30, &t1, &t2);
  v20 = v30.tx;
  v21 = v30.ty;
  v23 = *&v30.c;
  v25 = *&v30.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v25;
  *&t1.c = v23;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1.a = v26;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v27;
  t1.tx = v29;
  t1.ty = v28;
  t2 = v30;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = 1.0;
  v35.size.height = 1.0;
  return CGRectApplyAffineTransform(v35, &t1);
}

Swift::Void __swiftcall TextBox.apply(_:)(CGAffineTransform *a1)
{
  ty = a1->ty;
  tx = a1->tx;
  type metadata accessor for TextBox(0);
  v29 = *&a1->c;
  v30 = *&a1->a;
  v2 = protocol witness for SignatureProvider.frame.getter in conformance Signature();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();
  v27 = v4 - v8 * 0.0;
  v28 = v2 - v6 * 0.0;
  v36.origin.x = v2;
  v36.origin.y = v4;
  v36.size.width = v6;
  v25 = v6;
  v26 = v8;
  v36.size.height = v8;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = v2;
  v37.origin.y = v4;
  v37.size.width = v6;
  v37.size.height = v8;
  MidY = CGRectGetMidY(v37);
  CGAffineTransformMakeRotation(&t1, t1.a);
  v11 = t1.tx;
  v12 = t1.ty;
  v21 = *&t1.c;
  v23 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v17 = t1.tx;
  v18 = t1.ty;
  *&t2.a = v23;
  *&t2.c = v21;
  t2.tx = v11;
  t2.ty = v12;
  CGAffineTransformConcat(&v33, &t1, &t2);
  v19 = v33.tx;
  v20 = v33.ty;
  v22 = *&v33.c;
  v24 = *&v33.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v17;
  t1.ty = v18;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = v19;
  t1.ty = v20;
  CGAffineTransformConcat(&v33, &t1, &t2);
  t1.a = v25;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v26;
  t1.tx = v28;
  t1.ty = v27;
  t2 = v33;
  CGAffineTransformConcat(&v33, &t1, &t2);
  t2 = v33;
  *&v33.a = v30;
  *&v33.c = v29;
  v33.tx = tx;
  v33.ty = ty;
  CGAffineTransformConcat(&t1, &t2, &v33);
  specialized CanvasElement.coordinateSpace.setter();
  CRAttributedString<>.apply(_:)(&a1->a);
}

void TextBox.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, uint64_t a2, void *a3, __C::CGRect_optional *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v56 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v63 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  type metadata accessor for CanvasElementPDFAnnotation(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v55 = a8;
    *(v23 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation) = 2;
    v25 = *MEMORY[0x1E69780D8];
    v62 = a3;
    [v24 setType_];
    v26 = a4;
    v64 = TextBox.renderFrame(in:)(a4);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v31 = [v24 page];
    if (v31)
    {
      v32 = v31;
      [v31 boundsForBox_];
      v34 = v33;
      v36 = v35;

      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = width;
      v65.size.height = height;
      MinX = CGRectGetMinX(v65);
      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      v38 = v36 + v34 + v34 - CGRectGetMaxY(v66);
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = width;
      v67.size.height = height;
      v39 = CGRectGetWidth(v67);
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      height = CGRectGetHeight(v68);
      width = v39;
      x = MinX;
      y = v38;
    }

    v40 = v58;
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    v70 = CGRectIntegral(v69);
    [v24 setBounds_];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v19 + 8))(v21, v18);
    [v24 setModificationDate_];

    outlined init with copy of Date?(v56, v16, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
    v42 = v63;
    v43 = (*(v63 + 48))(v16, 1, v40);
    v44 = v55;
    if (v43 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      v45 = v61;
      v46 = v59;
      v47 = v26;
    }

    else
    {
      (*(v42 + 32))(v57, v16, v40);
      v48 = v22;
      v46 = v59;
      v47 = v26;
      if (v22 >> 62)
      {
        if (v22 >> 62 != 1)
        {
          (*(v63 + 8))(v57, v40);
          v45 = v61;
          goto LABEL_11;
        }

        v48 = (v22 & 0x3FFFFFFFFFFFFFFFLL);
      }

      outlined copy of PaperDocument.PDFDocumentUse(v22);
      v49 = type metadata accessor for TextBox(0);
      v50 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);
      v51 = v57;
      v52 = v49;
      v45 = v61;
      specialized CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)(v48, v57, 1, v46, v52, v61, v50, &protocol witness table for TextBox, v44);
      outlined consume of PaperDocument.PDFDocumentUse(v22);
      (*(v63 + 8))(v51, v40);
    }

LABEL_11:
    v53 = type metadata accessor for TextBox(0);
    CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(v47, v9, v46, v60, v45, v53, v44, &protocol witness table for TextBox);
  }
}

double TextBox.hdrHeadroom(in:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return specialized TextBox.hdrHeadroom(in:)();
}

uint64_t TextBox.asyncHdrHeadroom<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](TextBox.asyncHdrHeadroom<A>(in:), 0, 0);
}

uint64_t TextBox.asyncHdrHeadroom<A>(in:)()
{
  type metadata accessor for Capsule();
  swift_getWitnessTable();
  v1.n128_f64[0] = specialized TextBox.hdrHeadroom(in:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance TextBox(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance TextBox(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance TextBox@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 3;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance TextBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance TextBox, 0, 0);
}

double protocol witness for PaperRenderable.hdrHeadroom(in:) in conformance TextBox()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.runs.getter();
  v4 = CRAttributedString.Runs<>.maxHDRHeadroom.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t TextBox.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TextBox.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t TextBox.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v56 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v43 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = type metadata accessor for MergeResult();
  v23 = *(v22 - 8);
  v57 = v22;
  v58 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v26 = *(v13 + 8);
  v26(v21, v12);
  (*(v13 + 16))(v15, v18, v12);
  CRRegister.projectedValue.setter();
  v26(v18, v12);
  MergeResult.merge(_:)();
  v27 = *(v58 + 8);
  v58 += 8;
  v55 = v27;
  v27(v25, v57);
  v53 = type metadata accessor for TextBox(0);
  v28 = v43;
  v29 = v45;
  CRRegister.projectedValue.getter();
  v30 = v44;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v31 = v47;
  v32 = *(v47 + 8);
  v32(v28, v29);
  (*(v31 + 16))(v46, v30, v29);
  CRRegister.projectedValue.setter();
  v32(v30, v29);
  MergeResult.merge(_:)();
  v33 = v57;
  v34 = v55;
  v55(v25, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.merge(_:)();
  MergeResult.merge(_:)();
  v34(v25, v33);
  v35 = v48;
  v36 = v50;
  CRRegister.projectedValue.getter();
  v37 = v49;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v38 = v52;
  v39 = *(v52 + 8);
  v39(v35, v36);
  (*(v38 + 16))(v51, v37, v36);
  CRRegister.projectedValue.setter();
  v39(v37, v36);
  MergeResult.merge(_:)();
  v40 = v57;
  v41 = v55;
  v55(v25, v57);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v41(v25, v40);
}

uint64_t TextBox.actionUndoingDifference(from:)@<X0>(uint64_t a2@<X8>)
{
  v58 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v48 - v26;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v28 = *(v19 + 8);
  v28(v21, v18);
  v28(v24, v18);
  v29 = v51;
  type metadata accessor for TextBox(0);
  v30 = v49;
  CRRegister.projectedValue.getter();
  v31 = v50;
  CRRegister.projectedValue.getter();
  v59 = v17;
  CRRegister.actionUndoingDifference(from:)();
  v32 = *(v52 + 8);
  v32(v31, v11);
  v33 = v30;
  v34 = v53;
  v32(v33, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v35 = v29;
  CRAttributedString.actionUndoingDifference(from:)();
  v36 = v54;
  v37 = v56;
  CRRegister.projectedValue.getter();
  v38 = v55;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v39 = *(v57 + 8);
  v39(v38, v37);
  v39(v36, v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  if ((*(*(v40 - 8) + 48))(v27, 1, v40) == 1 && (v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMR), (*(*(v41 - 8) + 48))(v59, 1, v41) == 1) && (v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GMR), (*(*(v42 - 8) + 48))(v35, 1, v42) == 1) && (v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySb_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySb_GMR), (*(*(v43 - 8) + 48))(v34, 1, v43) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v44 = type metadata accessor for TextBox.MutatingAction(0);
    (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
  }

  else
  {
    v45 = v58;
    outlined init with copy of Date?(v27, v58, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    v46 = type metadata accessor for TextBox.MutatingAction(0);
    outlined init with copy of Date?(v59, v45 + v46[5], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
    outlined init with copy of Date?(v35, v45 + v46[6], &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMR);
    outlined init with copy of Date?(v34, v45 + v46[7], &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
    (*(*(v46 - 1) + 56))(v45, 0, 1, v46);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v59, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
}

uint64_t TextBox.apply(_:)(uint64_t a1)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit7TextBoxV14MutatingActionVSgMd, &_s8PaperKit7TextBoxV14MutatingActionVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for TextBox.MutatingAction(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v38, v18, &_s8PaperKit7TextBoxV14MutatingActionVSgMd, &_s8PaperKit7TextBoxV14MutatingActionVSgMR);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit7TextBoxV14MutatingActionVSgMd, &_s8PaperKit7TextBoxV14MutatingActionVSgMR);
  }

  outlined init with take of TextBox.MutatingAction(v18, v22);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (*(v10 + 16))(v12, v15, v9);
  CRRegister.projectedValue.setter();
  (*(v10 + 8))(v15, v9);
  type metadata accessor for TextBox(0);
  v24 = v30;
  v25 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v26 = v32;
  (*(v32 + 16))(v31, v24, v25);
  CRRegister.projectedValue.setter();
  (*(v26 + 8))(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.apply(_:)();
  v27 = v34;
  v28 = v37;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v29 = v36;
  (*(v36 + 16))(v35, v27, v28);
  CRRegister.projectedValue.setter();
  (*(v29 + 8))(v27, v28);
  return outlined destroy of TextBox.Partial(v22, type metadata accessor for TextBox.MutatingAction);
}

uint64_t TextBox.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  CRRegister.projectedValue.getter();
  v35 = a1;
  CRRegister.projectedValue.getter();
  v19 = CRRegister.hasDelta(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if (v19 & 1) != 0 || (type metadata accessor for TextBox(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v21 = CRRegister.hasDelta(from:)(), v22 = *(v34 + 8), v22(v8, v6), v22(v11, v6), (v21) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR), (CRAttributedString.hasDelta(from:)()) || (v23 = v30, v24 = v33, CRRegister.projectedValue.getter(), v25 = v31, CRRegister.projectedValue.getter(), v26 = CRRegister.hasDelta(from:)(), v27 = *(v32 + 8), v27(v25, v24), v27(v23, v24), (v26))
  {
    v28 = 1;
  }

  else
  {
    v28 = UnknownProperties.hasDelta(from:)();
  }

  return v28 & 1;
}

uint64_t TextBox.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a1;
  v4 = type metadata accessor for UnknownProperties();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v43 = v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v41 = v40 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v40 - v24;
  v40[0] = v2;
  outlined init with copy of TextBox.Partial(v2, a2, type metadata accessor for TextBox);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v26 = *(v20 + 8);
  v26(v22, v19);
  (*(v20 + 16))(v22, v25, v19);
  CRRegister.projectedValue.setter();
  v26(v25, v19);
  v27 = type metadata accessor for TextBox(0);
  CRRegister.projectedValue.getter();
  v28 = v41;
  CRRegister.copy(renamingReferences:)();
  v29 = v42;
  v30 = *(v42 + 8);
  v30(v16, v14);
  (*(v29 + 16))(v16, v28, v14);
  CRRegister.projectedValue.setter();
  v30(v28, v14);
  v32 = v43;
  v31 = v44;
  CRAttributedString.copy(renamingReferences:)();
  (*(v45 + 40))(a2 + *(v27 + 24), v32, v31);
  v34 = v47;
  v33 = v48;
  CRRegister.projectedValue.getter();
  v35 = v46;
  CRRegister.copy(renamingReferences:)();
  v36 = v49;
  v37 = *(v49 + 8);
  v37(v34, v33);
  (*(v36 + 16))(v34, v35, v33);
  CRRegister.projectedValue.setter();
  v37(v35, v33);
  v38 = v50;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v51 + 40))(a2 + *(v27 + 32), v38, v52);
}

uint64_t TextBox.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnknownProperties();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v25 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v41 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v42 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v43 = 0u;
  v44 = 0u;
  CRRegister.init(wrappedValue:)();
  v12 = type metadata accessor for TextBox(0);
  v13 = v12[5];
  *&v43 = 0;
  v38 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v14 = v12[6];
  v15 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:)();
  v16 = v12[7];
  LOBYTE(v43) = 0;
  CRRegister.init(wrappedValue:)();
  v17 = v12[8];
  UnknownProperties.init()();
  v18 = v45;
  CRRegister.init(defaultState:)();
  if (v18)
  {
    return outlined destroy of TextBox.Partial(a1, type metadata accessor for TextBox);
  }

  v45 = v15;
  v27 = v14;
  v26 = v16;
  v19 = v41;
  (*(v39 + 40))(a1, v11, v40);
  v20 = v42;
  CRRegister.init(defaultState:)();
  (*(v19 + 40))(a1 + v13, v20, v36);
  v21 = v37;
  CRAttributedString.init(defaultState:)();
  (*(v33 + 40))(a1 + v27, v21, v34);
  v22 = v35;
  CRRegister.init(defaultState:)();
  (*(v30 + 40))(a1 + v26, v22, v31);
  v23 = v32;
  UnknownProperties.init(defaultState:)();
  return (*(v28 + 40))(a1 + v17, v23, v29);
}

uint64_t TextBox.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  type metadata accessor for TextBox(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v11 = CRRegister.isDefaultState.getter(), (*(v8 + 8))(v10, v7), (v11) && (CRRegister.projectedValue.getter(), v12 = CRRegister.isDefaultState.getter(), (*(v4 + 8))(v6, v3), (v12) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR), (CRAttributedString.isDefaultState.getter()))
  {
    v13 = v17;
    CRRegister.projectedValue.getter();
    v14 = CRRegister.isDefaultState.getter();
    (*(v16 + 8))(v2, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t TextBox.visitReferences(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v2 = *(v1 - 8);
  v15 = v1;
  v16 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.visitReferences(_:)();
  v13 = v15;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v16 + 8))(v4, v13);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t TextBox.newRefs(from:)(uint64_t a1)
{
  v31[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v34 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v31 - v17;
  v37 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v19 = CRRegister.newRefs(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  specialized Set.formUnion<A>(_:)(v19);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v21 = CRRegister.newRefs(from:)();
  v22 = *(v32 + 8);
  v22(v8, v6);
  v22(v11, v6);
  specialized Set.formUnion<A>(_:)(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v23 = CRAttributedString.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v23);
  v24 = v33;
  v25 = v35;
  CRRegister.projectedValue.getter();
  v26 = v34;
  CRRegister.projectedValue.getter();
  v27 = CRRegister.newRefs(from:)();
  v28 = *(v36 + 8);
  v28(v26, v25);
  v28(v24, v25);
  specialized Set.formUnion<A>(_:)(v27);
  v29 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v29);
  return v37;
}

Swift::Bool __swiftcall TextBox.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v17 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  CRRegister.projectedValue.getter();
  v11 = CRRegister.needToFinalizeTimestamps()();
  (*(v8 + 8))(v10, v7);
  v14 = v11 || (type metadata accessor for TextBox(0), CRRegister.projectedValue.getter(), v12 = CRRegister.needToFinalizeTimestamps()(), (*(v4 + 8))(v6, v3), v12) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR), CRAttributedString.needToFinalizeTimestamps()()) || (CRRegister.projectedValue.getter(), v13 = CRRegister.needToFinalizeTimestamps()(), (*(v17 + 8))(v2, v0), v13) || UnknownProperties.needToFinalizeTimestamps()();
  return v14;
}

uint64_t TextBox.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v14 + 16))(v16, v19, v13);
  CRRegister.projectedValue.setter();
  (*(v14 + 8))(v19, v13);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v8 + 16))(v25, v12, v7);
  CRRegister.projectedValue.setter();
  (*(v8 + 8))(v12, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.finalizeTimestamps(_:)();
  v20 = v26;
  v21 = v28;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v22 = v29;
  (*(v29 + 16))(v27, v20, v21);
  CRRegister.projectedValue.setter();
  (*(v22 + 8))(v20, v21);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t TextBox.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  v9 = type metadata accessor for CRCodableVersion();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v68 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v68 - v29;
  v79 = type metadata accessor for TextBox(0);
  v85 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v31 = *(v10 + 104);
  v83 = *MEMORY[0x1E6995288];
  v84 = v10 + 104;
  v82 = v31;
  v31(v27);
  v32 = static CRCodableVersion.== infix(_:_:)();
  v33 = *(v10 + 8);
  v33(v27, v9);
  if (v32)
  {
    return (*(v10 + 32))(v86, v30, v9);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  (*(v81 + 8))(v8, v6);
  v81 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298], MEMORY[0x1E69952A0]);
  v35 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v36 = (v35 & 1) == 0;
  if (v35)
  {
    v37 = v30;
  }

  else
  {
    v37 = v22;
  }

  if (v36)
  {
    v38 = v30;
  }

  else
  {
    v38 = v22;
  }

  v33(v37, v9);
  v39 = *(v10 + 32);
  v40 = v80;
  v39(v80, v38, v9);
  v39(v30, v40, v9);
  v82(v27, v83, v9);
  v41 = static CRCodableVersion.== infix(_:_:)();
  v33(v27, v9);
  if (v41)
  {
    goto LABEL_24;
  }

  v42 = v33;
  v43 = v78;
  v44 = v76;
  CRRegister.projectedValue.getter();
  v80 = (v10 + 8);
  v45 = v39;
  v46 = v42;
  v47 = v74;
  CRRegister.minEncodingVersion.getter();
  (*(v77 + 8))(v44, v43);
  v48 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v49 = (v48 & 1) == 0;
  v50 = (v48 & 1) != 0 ? v30 : v47;
  v51 = v49 ? v30 : v47;
  v52 = v46;
  v39 = v45;
  v52(v50, v9);
  v53 = v75;
  v45(v75, v51, v9);
  v45(v30, v53, v9);
  v82(v27, v83, v9);
  v54 = static CRCodableVersion.== infix(_:_:)();
  v52(v27, v9);
  if (v54)
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v55 = v72;
  CRAttributedString.minEncodingVersion.getter();
  v56 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v57 = (v56 & 1) == 0;
  v58 = (v56 & 1) != 0 ? v30 : v55;
  if (v57)
  {
    v55 = v30;
  }

  v52(v58, v9);
  v59 = v73;
  v45(v73, v55, v9);
  v45(v30, v59, v9);
  v82(v27, v83, v9);
  v60 = static CRCodableVersion.== infix(_:_:)();
  v52(v27, v9);
  if (v60)
  {
LABEL_24:
    v61 = v86;
  }

  else
  {
    v63 = v69;
    v64 = v71;
    CRRegister.projectedValue.getter();
    v65 = v68;
    CRRegister.minEncodingVersion.getter();
    (*(v70 + 8))(v63, v64);
    v66 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v67 = v86;
    if (v66)
    {
      v52(v30, v9);
      v61 = v67;
      v62 = v65;
      return (v39)(v61, v62, v9);
    }

    v52(v65, v9);
    v61 = v67;
  }

  v62 = v30;
  return (v39)(v61, v62, v9);
}

uint64_t TextBox.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v48 = a1;
  v60 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v49 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v48 - v28;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v30 = *(v16 + 8);
  v30(v18, v15);
  v30(v21, v15);
  type metadata accessor for TextBox(0);
  v31 = v50;
  v32 = v52;
  CRRegister.projectedValue.getter();
  v33 = v51;
  CRRegister.projectedValue.getter();
  v61 = v26;
  CRRegister.observableDifference(from:with:)();
  v34 = *(v53 + 8);
  v34(v33, v32);
  v35 = v55;
  v34(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.observableDifference(from:with:)();
  v36 = v56;
  v37 = v58;
  CRRegister.projectedValue.getter();
  v38 = v57;
  CRRegister.projectedValue.getter();
  v39 = v49;
  CRRegister.observableDifference(from:with:)();
  v40 = *(v59 + 8);
  v40(v38, v37);
  v40(v36, v37);
  v41 = type metadata accessor for CRValueObservableDifference();
  v42 = *(*(v41 - 8) + 48);
  if (v42(v29, 1, v41) == 1 && v42(v61, 1, v41) == 1 && (v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GMR), (*(*(v43 - 8) + 48))(v35, 1, v43) == 1) && v42(v39, 1, v41) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v44 = type metadata accessor for TextBox.ObservableDifference(0);
    (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
  }

  else
  {
    v45 = v60;
    outlined init with copy of Date?(v29, v60, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    v46 = type metadata accessor for TextBox.ObservableDifference(0);
    outlined init with copy of Date?(v61, v45 + v46[5], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined init with copy of Date?(v35, v45 + v46[6], &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMR);
    outlined init with copy of Date?(v39, v45 + v46[7], &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
    (*(*(v46 - 1) + 56))(v45, 0, 1, v46);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
}

void TextBox.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v15 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v13 = v3;
    v14 = v6;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v8 + 8))(v10, v7);
    type metadata accessor for TextBox(0);
    v11 = v14;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v16 + 8))(v11, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR, MEMORY[0x1E69952E8]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v12 = v13;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Bool> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR, MEMORY[0x1E6995080]);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v15 + 8))(v12, v1);
    UnknownProperties.encode(to:)();
  }
}

uint64_t TextBox.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v86 = type metadata accessor for UnknownProperties();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v92 = (&v77 - v5);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd, &_sSS_9Coherence7AnyCRDTVtMR);
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v77 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v100 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v77 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v90 = *(v103 - 1);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v77 - v14;
  type metadata accessor for CGRect(0);
  v16 = v15;
  v17 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v107 = 0u;
  v108 = 0u;
  v101 = v16;
  CRRegister.init(wrappedValue:)();
  v18 = type metadata accessor for TextBox(0);
  v19 = v18[5];
  *&v107 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v20 = v18[6];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:)();
  v21 = v18[7];
  LOBYTE(v107) = 0;
  CRRegister.init(wrappedValue:)();
  v22 = v18[8];
  v105 = a2;
  UnknownProperties.init()();
  v23 = v104;
  v24 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v23)
  {
    goto LABEL_2;
  }

  v81 = v17;
  v80 = v20;
  v79 = v21;
  v26 = v103;
  v78 = v22;
  v99 = 0;
  v104 = v24;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v27 = v99;
    CRRegister.init(from:)();
    if (v27)
    {

LABEL_2:

      v25 = v105;
      return outlined destroy of TextBox.Partial(v25, type metadata accessor for TextBox);
    }

    v29 = v19;
    v99 = 0;
    v28 = v105;
    (*(v93 + 40))();
  }

  else
  {
    v28 = v105;
    v29 = v19;
  }

  v30 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v31 = v100;
  if (v30)
  {
    v33 = v98;
    v32 = v99;
    CRRegister.init(from:)();
    if (v32)
    {
      goto LABEL_16;
    }

    v99 = 0;
    (*(v90 + 40))(v28 + v29, v33, v26);
  }

  v34 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v36 = v96;
  v35 = v97;
  v37 = v95;
  if (!v34)
  {
    goto LABEL_14;
  }

  v38 = v99;
  CRAttributedString.init(from:)();
  if (v38)
  {
LABEL_16:

    v25 = v28;
    return outlined destroy of TextBox.Partial(v25, type metadata accessor for TextBox);
  }

  v99 = 0;
  (*(v36 + 40))(v28 + v80, v37, v35);
LABEL_14:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v39 = v89;
    v40 = v99;
    CRRegister.init(from:)();
    if (v40)
    {
      goto LABEL_16;
    }

    v99 = 0;
    (*(v31 + 40))(v28 + v79, v39, v87);
  }

  v42 = v99;
  v43 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
  if (v42)
  {
    goto LABEL_16;
  }

  v99 = 0;
  v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v43);

  *&v107 = v44;
  specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

  specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

  specialized Set._Variant.remove(_:)(1954047348, 0xE400000000000000);

  specialized Set._Variant.remove(_:)(0x5764657869467369, 0xEC00000068746469);

  v45 = v107;
  v46 = v107 + 56;
  v47 = 1 << *(v107 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v107 + 56);
  v50 = (v47 + 63) >> 6;
  v51 = (v88 + 56);

  v52 = 0;
  v103 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v53 = v52;
    if (!v49)
    {
      break;
    }

LABEL_27:
    v54 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v55 = (*(v45 + 48) + ((v52 << 10) | (16 * v54)));
    v57 = *v55;
    v56 = v55[1];

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v59 = v91;
      v102 = *(v91 + 48);
      v60 = v92;
      *v92 = v57;
      v60[1] = v56;
      v61 = v60;

      v62 = v99;
      AnyCRDT.init(from:)();
      v99 = v62;
      if (v62)
      {
LABEL_42:

        swift_bridgeObjectRelease_n();
        v25 = v105;
        return outlined destroy of TextBox.Partial(v25, type metadata accessor for TextBox);
      }

      (*v51)(v61, 0, 1, v59);
      v63 = v82;
      outlined init with take of (String, AnyCRDT)(v61, v82);
      outlined init with take of (String, AnyCRDT)(v63, v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103[2] + 1, 1, v103);
      }

      v64 = v88;
      v66 = v103[2];
      v65 = v103[3];
      v67 = v83;
      if (v66 >= v65 >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v103);
        v64 = v88;
        v103 = v69;
        v67 = v83;
      }

      v68 = v103;
      v103[2] = v66 + 1;
      outlined init with take of (String, AnyCRDT)(v67, v68 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v66);
    }

    else
    {

      v58 = v92;
      (*v51)(v92, 1, 1, v91);
      outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_sSS_9Coherence7AnyCRDTVtSgMd, &_sSS_9Coherence7AnyCRDTVtSgMR);
    }
  }

  while (1)
  {
    v52 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v52 >= v50)
    {
      break;
    }

    v49 = *(v46 + 8 * v52);
    ++v53;
    if (v49)
    {
      goto LABEL_27;
    }
  }

  v70 = v103;
  if (v103[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd, &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMR);
    v71 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v71 = MEMORY[0x1E69E7CC8];
  }

  v72 = v86;
  v73 = v85;
  v74 = v84;
  v75 = v78;
  v109 = v71;
  v76 = v99;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v70, 1, &v109);
  if (v76)
  {

    goto LABEL_2;
  }

  UnknownProperties.init(_:)();

  return (*(v73 + 40))(v105 + v75, v74, v72);
}

uint64_t TextBox.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v69 = a1;
  v73 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v80 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v68 = *(v24 - 8);
  v25 = v68;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v64 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v64 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v75 = &v64 - v34;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v35 = *(v25 + 8);
  v35(v27, v24);
  v36 = v30;
  v37 = v24;
  v35(v36, v24);
  type metadata accessor for TextBox(0);
  v38 = v70;
  CRRegister.projectedValue.getter();
  v39 = v74;
  CRRegister.projectedValue.getter();
  v81 = v23;
  CRRegister.delta(_:from:)();
  v40 = *(v80 + 8);
  v40(v39, v15);
  v41 = v38;
  v42 = v37;
  v43 = v76;
  v74 = v15;
  v40(v41, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.delta(_:from:)();
  v44 = v71;
  v45 = v79;
  CRRegister.projectedValue.getter();
  v46 = v77;
  v47 = v72;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v48 = *(v78 + 8);
  v48(v47, v45);
  v48(v44, v45);
  v49 = v68;
  v50 = v75;
  if ((*(v68 + 48))(v75, 1, v42) == 1 && (*(v80 + 48))(v81, 1, v74) == 1 && (v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR), (*(*(v51 - 8) + 48))(v43, 1, v51) == 1) && (*(v78 + 48))(v46, 1, v79) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v52 = type metadata accessor for TextBox.Partial(0);
    (*(*(v52 - 8) + 56))(v73, 1, 1, v52);
  }

  else
  {
    v53 = v64;
    outlined init with copy of Date?(v50, v64, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v54 = v65;
    outlined init with copy of Date?(v81, v65, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v55 = v66;
    outlined init with copy of Date?(v43, v66, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
    v56 = v67;
    outlined init with copy of Date?(v46, v67, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    v57 = v73;
    (*(v49 + 56))(v73, 1, 1, v42);
    v58 = type metadata accessor for TextBox.Partial(0);
    v59 = v58[5];
    (*(v80 + 56))(v57 + v59, 1, 1, v74);
    v60 = v58[6];
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
    (*(*(v61 - 8) + 56))(v57 + v60, 1, 1, v61);
    v62 = v58[7];
    (*(v78 + 56))(v57 + v62, 1, 1, v79);
    outlined assign with take of UUID?(v53, v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v54, v57 + v59, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    outlined assign with take of UUID?(v55, v57 + v60, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
    outlined assign with take of UUID?(v56, v57 + v62, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v43 = v76;
    v46 = v77;
    (*(*(v58 - 1) + 56))(v57, 0, 1, v58);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
}

BOOL TextBox.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v50 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v62 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  outlined init with copy of Date?(a1, v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    (*(v22 + 32))(v27, v20, v21);
    CRRegister.projectedValue.getter();
    v28 = CRRegister.canMerge(delta:)();
    v29 = *(v22 + 8);
    v29(v24, v21);
    v29(v27, v21);
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = type metadata accessor for TextBox.Partial(0);
  v31 = a1;
  outlined init with copy of Date?(a1 + v30[5], v13, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v32 = v62;
  if ((*(v62 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  }

  else
  {
    v33 = v54;
    (*(v32 + 32))(v54, v13, v14);
    type metadata accessor for TextBox(0);
    v34 = v55;
    CRRegister.projectedValue.getter();
    v35 = CRRegister.canMerge(delta:)();
    v36 = *(v32 + 8);
    v36(v34, v14);
    v36(v33, v14);
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = v58;
  outlined init with copy of Date?(v31 + v30[6], v58, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  v39 = v59;
  v38 = v60;
  if ((*(v59 + 48))(v37, 1, v60) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
    v40 = v61;
  }

  else
  {
    v41 = v53;
    (*(v39 + 32))(v53, v37, v38);
    type metadata accessor for TextBox(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
    v42 = CRAttributedString.canMerge(delta:)();
    (*(v39 + 8))(v41, v38);
    v40 = v61;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  v43 = v56;
  outlined init with copy of Date?(v31 + v30[7], v56, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  v44 = v57;
  if ((*(v40 + 48))(v43, 1, v57) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    return 1;
  }

  v45 = v51;
  (*(v40 + 32))(v51, v43, v44);
  type metadata accessor for TextBox(0);
  v46 = v52;
  CRRegister.projectedValue.getter();
  v47 = CRRegister.canMerge(delta:)();
  v48 = *(v40 + 8);
  v48(v46, v44);
  v48(v45, v44);
  return (v47 & 1) != 0;
}

BOOL TextBox.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v74 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v62 - v35;
  v37 = TextBox.canMerge(delta:)(a1);
  if (v37)
  {
    v63 = v37;
    v64 = a1;
    outlined init with copy of Date?(a1, v26, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    v38 = (*(v28 + 48))(v26, 1, v27);
    v66 = v1;
    if (v38 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      (*(v28 + 32))(v36, v26, v27);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v28 + 16))(v30, v33, v27);
      CRRegister.projectedValue.setter();
      v39 = *(v28 + 8);
      v39(v33, v27);
      v39(v36, v27);
    }

    v40 = v80;
    v41 = type metadata accessor for TextBox.Partial(0);
    v42 = v64;
    v43 = v73;
    outlined init with copy of Date?(v64 + v41[5], v73, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    v44 = v74;
    v45 = (*(v74 + 48))(v43, 1, v18);
    v46 = v76;
    if (v45 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
    }

    else
    {
      v47 = *(v44 + 32);
      v62 = v41;
      v48 = v65;
      v47(v65, v43, v18);
      type metadata accessor for TextBox(0);
      v49 = v67;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v44 + 16))(v68, v49, v18);
      CRRegister.projectedValue.setter();
      v50 = *(v44 + 8);
      v51 = v49;
      v40 = v80;
      v50(v51, v18);
      v52 = v48;
      v41 = v62;
      v50(v52, v18);
    }

    v53 = v75;
    outlined init with copy of Date?(v42 + v41[6], v75, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
    v54 = v77;
    if ((*(v46 + 48))(v53, 1, v77) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
    }

    else
    {
      v55 = v69;
      (*(v46 + 32))(v69, v53, v54);
      type metadata accessor for TextBox(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
      CRAttributedString.merge(delta:)();
      (*(v46 + 8))(v55, v54);
    }

    v56 = v78;
    outlined init with copy of Date?(v42 + v41[7], v78, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    v57 = v79;
    if ((*(v40 + 48))(v56, 1, v79) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
    }

    else
    {
      v58 = v70;
      (*(v40 + 32))(v70, v56, v57);
      type metadata accessor for TextBox(0);
      v59 = v71;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v40 + 16))(v72, v59, v57);
      CRRegister.projectedValue.setter();
      v60 = *(v40 + 8);
      v60(v59, v57);
      v60(v58, v57);
    }

    LOBYTE(v37) = v63;
  }

  return v37;
}

uint64_t protocol witness for CRDT.context.getter in conformance TextBox(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox, &protocol conformance descriptor for TextBox);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance TextBox(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v11 + 8))(v13, v10);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.visitReferences(_:)();
  v14 = v17;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v18 + 8))(v5, v14);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance TextBox(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TextBox.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

void specialized draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:)(uint64_t a1, uint64_t a2, void *a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v37 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v18 = type metadata accessor for Shape(0);
  v19 = *(v14 + 16);
  v19(v16, a1 + *(v18 + 52), v13);
  v20 = type metadata accessor for CRTextStorage(0);
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v19(&v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v16, v13);
  v22 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v16, 0);
  *&v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v22;
  v23 = v22;
  [v23 fixAttributesInRange_];

  v39.receiver = v21;
  v39.super_class = v20;
  v24 = objc_msgSendSuper2(&v39, sel_init);
  (*(v14 + 8))(v16, v13);
  v25 = v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode];
  v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = *(a2 + 1);
  CRTextStorage.darkMode.didset(v25);
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  [v27 setTextStorage_];
  [v27 addTextLayoutManager_];
  [v26 setTextContainer_];
  v28 = [v26 documentRange];
  v29 = [v28 location];

  CGAffineTransformMakeTranslation(&v40, a4, a5);
  v30 = swift_allocObject();
  v31 = *&v40.c;
  *(v30 + 16) = *&v40.a;
  *(v30 + 32) = v31;
  *(v30 + 48) = *&v40.tx;
  v32 = v37;
  *(v30 + 64) = v37;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:);
  *(v33 + 24) = v30;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_31;
  v34 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v35 = v32;

  v36 = [v26 enumerateTextLayoutFragmentsFromLocation:v29 options:4 usingBlock:v34];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  _Block_release(v34);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }
}

{
  v37 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v18 = type metadata accessor for TextBox(0);
  v19 = *(v14 + 16);
  v19(v16, a1 + *(v18 + 24), v13);
  v20 = type metadata accessor for CRTextStorage(0);
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v19(&v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v16, v13);
  v22 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v16, 0);
  *&v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v22;
  v23 = v22;
  [v23 fixAttributesInRange_];

  v39.receiver = v21;
  v39.super_class = v20;
  v24 = objc_msgSendSuper2(&v39, sel_init);
  (*(v14 + 8))(v16, v13);
  v25 = v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode];
  v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = *(a2 + 1);
  CRTextStorage.darkMode.didset(v25);
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  [v27 setTextStorage_];
  [v27 addTextLayoutManager_];
  [v26 setTextContainer_];
  v28 = [v26 documentRange];
  v29 = [v28 location];

  CGAffineTransformMakeTranslation(&v40, a4, a5);
  v30 = swift_allocObject();
  v31 = *&v40.c;
  *(v30 + 16) = *&v40.a;
  *(v30 + 32) = v31;
  *(v30 + 48) = *&v40.tx;
  v32 = v37;
  *(v30 + 64) = v37;
  v33 = swift_allocObject();
  *(v33 + 16) = closure #1 in draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:)partial apply;
  *(v33 + 24) = v30;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_58;
  v34 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v35 = v32;

  v36 = [v26 enumerateTextLayoutFragmentsFromLocation:v29 options:4 usingBlock:v34];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  _Block_release(v34);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }
}

uint64_t specialized static TextBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v37 = a1;
  CRRegister.projectedValue.getter();
  v38 = a2;
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v15 + 8);
  v21(v17, v14);
  v21(v20, v14);
  if (a1 & 1) != 0 && (type metadata accessor for TextBox(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR, MEMORY[0x1E6995090]), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v23 = *(v36 + 8), v23(v10, v8), v23(v13, v8), (v22) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR, MEMORY[0x1E69952F0]), (dispatch thunk of static Equatable.== infix(_:_:)()) && (v24 = v32, v25 = v35, CRRegister.projectedValue.getter(), v26 = v33, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Bool> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR, MEMORY[0x1E6995090]), v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v28 = *(v34 + 8), v28(v26, v25), v28(v24, v25), (v27))
  {
    v29 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t specialized TextBox.indexableTextContent<A>(in:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D4058CF0;
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  v1 = CRAttributedString.attributedString.getter();
  v2 = [v1 string];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;

  return v0;
}

double specialized TextBox.hdrHeadroom(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  CRAttributedString.runs.getter();
  v4 = CRAttributedString.Runs<>.maxHDRHeadroom.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t outlined init with take of TextBox.MutatingAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextBox.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TextBox.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TextBox.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata completion function for TextBox(uint64_t a1)
{
  type metadata accessor for CRRegister<CGRect>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRRegister<CGFloat>(319, &lazy cache variable for type metadata for CRRegister<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E6995070]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CRRegister<CGFloat>(319, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>, lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope, &type metadata for TextAttributeScope, MEMORY[0x1E69952D8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CRRegister<Bool>();
        if (v4 <= 0x3F)
        {
          type metadata accessor for UnknownProperties();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for CRRegister<Bool>()
{
  if (!lazy cache variable for type metadata for CRRegister<Bool>)
  {
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<Bool>);
    }
  }
}

void type metadata completion function for TextBox.ObservableDifference(uint64_t a1)
{
  type metadata accessor for CRValueObservableDifference?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>.ObservableDifference?, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for TextBox.MutatingAction(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>.MutatingAction?, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Bool>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySb_GMd, &_s9Coherence10CRRegisterV14MutatingActionVySb_GMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for TextBox.Partial(uint64_t a1)
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>.Partial?, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Bool>?, &_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void PPKTextFormattingViewController.viewDidAppear(_:)(char a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  v3 = OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer;
  v4 = *&v1[OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer];
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = partial apply for closure #1 in PPKTextFormattingViewController.viewDidAppear(_:);
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v10[3] = &block_descriptor_32;
  v7 = _Block_copy(v10);

  v8 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:0.1];
  _Block_release(v7);
  v9 = *&v1[v3];
  *&v1[v3] = v8;
}

void closure #1 in PPKTextFormattingViewController.viewDidAppear(_:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    [a1 invalidate];
    return;
  }

  v4 = Strong;
  v5 = [v4 presentedViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  if ([v4 isFirstResponder] & 1) != 0 || (objc_msgSend(v6, sel_isFirstResponder))
  {

LABEL_6:
    v7 = [v4 presentedViewController];

    if (v7)
    {

      return;
    }

    if ([v4 isFirstResponder])
    {
      [v4 resignFirstResponder];
      v8 = *&v4[OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder];
      if (v8)
      {
        [v8 becomeFirstResponder];
      }
    }

    goto LABEL_13;
  }

  v9 = [v4 firstResponder];
  v10 = *&v4[OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder];
  *&v4[OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder] = v9;

  [v4 becomeFirstResponder];
LABEL_13:
}

id TextStyleRepresentable.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorVSgMd, &_sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - v6;
  v8 = [objc_allocWithZone(type metadata accessor for PPKTextFormattingViewController()) initWithConfiguration_];
  swift_getWitnessTable();
  type metadata accessor for UIViewControllerRepresentableContext();
  UIViewControllerRepresentableContext.coordinator.getter();
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  type metadata accessor for TextStyleRepresentable.Coordinator(255, v9, v10, v11);
  swift_getWitnessTable();
  UITextFormattingViewController.delegate.setter();
  swift_unknownObjectRetain();
  TextFormattingState.formattingAttributes.getter(v9, v10);
  swift_unknownObjectRelease();
  UITextFormattingViewController.FormattingDescriptor.init(attributes:)();
  v12 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  UITextFormattingViewController.formattingDescriptor.setter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      if ([v8 respondsToSelector_] && objc_msgSend(v8, sel_respondsToSelector_, sel__setInternalDelegate_) && objc_msgSend(v8, sel_respondsToSelector_, sel__setShouldDeferFontPickerPresentationToViewController_))
      {
        [v8 performSelector:sel__setEditResponder_ withObject:v16 withObject:0];
        [v8 performSelector:sel__setInternalDelegate_ withObject:v16 withObject:0];
        [v8 performSelector:sel__setShouldDeferFontPickerPresentationToViewController_ withObject:v14 withObject:0];
      }
    }

    else
    {
      v16 = v14;
    }
  }

  v18[8] = v9;
  v18[9] = v10;
  v18[10] = v3;
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = v8;
  v18[5] = v3;
  withObservationTracking<A>(_:onChange:)();

  return v8;
}

unint64_t TextFormattingState.formattingAttributes.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = (v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = v56 - v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v9 = (*(a2 + 88))(a1, a2);
  v10 = (*(a2 + 112))(a1, a2);
  v11 = (*(a2 + 16))(a1, a2);
  v13 = v12;
  v14 = (*(a2 + 40))(a1, a2);
  v15 = MEMORY[0x1DA6CCED0](v11, v13);

  v16 = objc_opt_self();
  v17 = [v16 fontWithName:v15 size:v14];

  if (v17)
  {
    if (v9)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v17 fontDescriptor];
    v20 = [v19 fontDescriptorWithSymbolicTraits_];

    if (v20)
    {
      v21 = *MEMORY[0x1E69DB648];
      v22 = v20;
      [v17 pointSize];
      v23 = [v16 fontWithDescriptor:v22 size:?];

      v65 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
      *&v64 = v23;
      outlined init with take of Any(&v64, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v8;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v21, isUniquelyReferenced_nonNull_native);

      v25 = v61;
      v26 = v62;
      goto LABEL_9;
    }
  }

  v25 = v61;
  v26 = v8;
LABEL_9:
  v27 = *MEMORY[0x1E69DB650];
  v28 = v60;
  v58 = *(a2 + 184);
  v58(a1, a2);
  outlined init with take of Color(v28, v25);
  v29 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  outlined destroy of Color(v25);
  v59 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
  v65 = v59;
  *&v64 = v29;
  outlined init with take of Any(&v64, v63);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v26;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v27, v30);
  v31 = v62;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v32 setAlignment_];
  v33 = *MEMORY[0x1E69DB688];
  v65 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
  *&v64 = v32;
  outlined init with take of Any(&v64, v63);
  v57 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v31;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v33, v34);
  v35 = v62;
  v36 = (*(a2 + 136))(a1, a2);
  v56[1] = a2 + 184;
  if (v36)
  {
    v37 = *MEMORY[0x1E69DB758];
    v65 = MEMORY[0x1E69E6530];
    *&v64 = 1;
    outlined init with take of Any(&v64, v63);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v37, v38);
    v39 = v62;
    v40 = *MEMORY[0x1E69DB750];
    v41 = v58;
    v58(a1, a2);
    v42 = v61;
    outlined init with take of Color(v28, v61);
    v43 = &off_1E845F000;
    v44 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    outlined destroy of Color(v42);
    v65 = v59;
    *&v64 = v44;
    outlined init with take of Any(&v64, v63);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v39;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v40, v45);
    v35 = v62;
  }

  else
  {
    v41 = v58;
    v43 = 0x1FA9B7000;
  }

  if ((*(a2 + 160))(a1, a2))
  {
    v46 = *MEMORY[0x1E69DB6B8];
    v65 = MEMORY[0x1E69E6530];
    *&v64 = 1;
    outlined init with take of Any(&v64, v63);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v46, v47);
    v48 = v62;
    v49 = *MEMORY[0x1E69DB6B0];
    v50 = v43;
    v51 = v60;
    v41(a1, a2);
    v52 = v61;
    outlined init with take of Color(v51, v61);
    v53 = [objc_allocWithZone(MEMORY[0x1E69DC888]) v50 + 3514];
    outlined destroy of Color(v52);
    v65 = v59;
    *&v64 = v53;
    outlined init with take of Any(&v64, v63);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v49, v54);

    return v62;
  }

  else
  {
  }

  return v35;
}

uint64_t closure #1 in TextStyleRepresentable.observeFormattingState(update:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = a3[2];
  swift_unknownObjectRetain();
  v5(a2, v3);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVySSGMd, &_s8PaperKit9InspectedVySSGMR);
  v6 = v3[5];
  swift_unknownObjectRetain();
  v6(a2, v3);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVySiGMd, &_s8PaperKit9InspectedVySiGMR);
  v7 = v3[23];
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);
  __swift_allocate_boxed_opaque_existential_1(v17);
  swift_unknownObjectRetain();
  v7(a2, v3);
  swift_unknownObjectRelease();
  v8 = v3[8];
  swift_unknownObjectRetain();
  v9 = v8(a2, v3);
  LOBYTE(v8) = v10;
  swift_unknownObjectRelease();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVySo15NSTextAlignmentVGMd, &_s8PaperKit9InspectedVySo15NSTextAlignmentVGMR);
  v17[4] = v9;
  v18 = v8 & 1;
  v11 = v3[11];
  swift_unknownObjectRetain();
  LOWORD(v11) = v11(a2, v3);
  swift_unknownObjectRelease();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVySbGMd, &_s8PaperKit9InspectedVySbGMR);
  v21 = v12;
  v20 = v11 & 0x101;
  v13 = v3[14];
  swift_unknownObjectRetain();
  LOWORD(v11) = v13(a2, v3);
  swift_unknownObjectRelease();
  v23 = v12;
  v22 = v11 & 0x101;
  v14 = v3[20];
  swift_unknownObjectRetain();
  LOWORD(v11) = v14(a2, v3);
  swift_unknownObjectRelease();
  v25 = v12;
  v24 = v11 & 0x101;
  v15 = v3[17];
  swift_unknownObjectRetain();
  LOWORD(v3) = v15(a2, v3);
  swift_unknownObjectRelease();
  v27 = v12;
  v26 = v3 & 0x101;
  return swift_arrayDestroy();
}

double (*implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = type metadata accessor for TextStyleRepresentable(0, a3, a4, a4);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v13, a2, v8);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  (*(v9 + 32))(v10 + 5, v13, v8);
  v11 = a1;
  return partial apply for closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:);
}

double closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-v8];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = type metadata accessor for TextStyleRepresentable(0, a3, a4, v12);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v19, a2, v13);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v11;
  (*(v14 + 32))(v16 + 7, v19, v13);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:), v16);

  return result;
}

uint64_t closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorVSgMd, &_sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorVSgMR);
  v7[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[21] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:), v9, v8);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[19];
    v5 = v0[20];
    v7 = v0[17];
    v6 = v0[18];
    v8 = type metadata accessor for TextStyleRepresentable(0, v6, v4, v2);
    swift_unknownObjectRetain();
    TextFormattingState.formattingAttributes.getter(v6, v4);
    swift_unknownObjectRelease();
    UITextFormattingViewController.FormattingDescriptor.init(attributes:)();
    v9 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    UITextFormattingViewController.formattingDescriptor.setter();
    v10 = *(v8 + 16);
    v0[10] = v10;
    v11 = *(v8 + 24);
    v0[11] = v11;
    v0[12] = v7;
    v0[4] = v10;
    v0[5] = v11;
    v0[6] = v3;
    v0[7] = v7;
    withObservationTracking<A>(_:onChange:)();
  }

  v12 = v0[1];

  return v12();
}

id TextStyleRepresentable.makeCoordinator()(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  v6 = 1.0;
  if (Strong)
  {
    if (AnyCanvas.isHDRActive.getter())
    {
      swift_getKeyPath();
      lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR])
      {
        v6 = *&Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 40];
      }
    }
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 traitCollection];

    v10 = [v9 userInterfaceStyle];
    v11 = v10 == 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  v14 = v12;
  if (v12)
  {
  }

  v15 = objc_allocWithZone(type metadata accessor for TextStyleRepresentable.Coordinator(0, *(a1 + 16), *(a1 + 24), v13));
  return TextStyleRepresentable.Coordinator.init(formattingState:maximumLinearExposure:shouldUseDarkGridInDarkMode:colorPickerShowsGridOnly:)(v3, v4, v11, v14 != 0, v6);
}

id TextStyleRepresentable.Coordinator.__allocating_init(formattingState:maximumLinearExposure:shouldUseDarkGridInDarkMode:colorPickerShowsGridOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a3;
  v11 = objc_allocWithZone(v5);
  return TextStyleRepresentable.Coordinator.init(formattingState:maximumLinearExposure:shouldUseDarkGridInDarkMode:colorPickerShowsGridOnly:)(a1, a2, v7, a4, a5);
}

id TextStyleRepresentable.Coordinator.init(formattingState:maximumLinearExposure:shouldUseDarkGridInDarkMode:colorPickerShowsGridOnly:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v6 = *v5;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = (v5 + direct field offset for TextStyleRepresentable.Coordinator._formattingState);
  *v8 = a1;
  v8[1] = a2;
  *(v5 + direct field offset for TextStyleRepresentable.Coordinator.maximumLinearExposure) = a5;
  *(v5 + direct field offset for TextStyleRepresentable.Coordinator.shouldUseDarkGridInDarkMode) = a3;
  *(v5 + direct field offset for TextStyleRepresentable.Coordinator.colorPickerShowsGridOnly) = a4;
  v9 = type metadata accessor for TextStyleRepresentable.Coordinator(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  v11.receiver = v5;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

void UITextFormattingViewController.ChangeValue.apply<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v64 - v7;
  v8 = type metadata accessor for Color(0);
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v64 - v15;
  v16 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v20, v3, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x1E69DC490])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v23 = (*(a3 + 104))(v68, a2, a3);
LABEL_9:
    *v24 = v22;
    v24[1] = 0;
    v23(v68, 0);
    return;
  }

  v64 = a2;
  if (v21 == *MEMORY[0x1E69DC4A0])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v23 = (*(a3 + 128))(v68, v64, a3);
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x1E69DC4C0])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v23 = (*(a3 + 152))(v68, v64, a3);
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x1E69DC448])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v23 = (*(a3 + 176))(v68, v64, a3);
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x1E69DC498])
  {
    (*(v17 + 96))(v20, v16);
    v25 = *v20;
    v26 = [v25 familyName];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = a3;
    v31 = *(a3 + 32);
    v32 = v64;
    v33 = v31(v68, v64, v30);
    v35 = v34;
    *v34 = v27;
    v34[1] = v29;

    *(v35 + 16) = 0;
    v33(v68, 0);
    [v25 pointSize];
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v36 > -9.22337204e18)
    {
      if (v36 < 9.22337204e18)
      {
        v37 = v36;
        v38 = (v30)[7](v68, v32, v30);
        *v39 = v37;
        *(v39 + 8) = 0;
        v38(v68, 0);
        v40 = [v25 fontDescriptor];
        v41 = [v40 symbolicTraits];

        v42 = (v30)[13](v68, v32, v30);
        *v43 = (v41 & 2) != 0;
        v43[1] = 0;
        v42(v68, 0);
        v44 = (v30)[16](v68, v32, v30);
        *v45 = v41 & 1;
        v45[1] = 0;
        v44(v68, 0);

        return;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v21 == *MEMORY[0x1E69DC4A8])
  {
    (*(v17 + 96))(v20, v16);
    v46 = *v20;
    if ((*v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v46 <= -9.22337204e18)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v46 >= 9.22337204e18)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v47 = v46;
    v48 = (*(a3 + 56))(v68, v64, a3);
LABEL_21:
    *v49 = v47;
    *(v49 + 8) = 0;
    v48(v68, 0);
    return;
  }

  if (v21 != *MEMORY[0x1E69DC4B8])
  {
    if (v21 == *MEMORY[0x1E69DC450])
    {
      (*(v17 + 96))(v20, v16);
      v53 = *v20;
      v54 = UITextFormattingViewControllerTextAlignment.nsTextAlignment.getter(*v20);
      v55 = (*(a3 + 80))(v68, v64, a3);
      *v56 = v54;
      *(v56 + 8) = 0;
      v55(v68, 0);

      return;
    }

    if (v21 == *MEMORY[0x1E69DC468])
    {
      v57 = v64;
      v58 = (*(a3 + 40))(v64, a3);
      if (__OFADD__(v58, 1))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      if (v58 + 1 >= 192)
      {
        v47 = 192;
      }

      else
      {
        v47 = v58 + 1;
      }
    }

    else
    {
      if (v21 != *MEMORY[0x1E69DC460])
      {
        (*(v17 + 8))(v20, v16);
        return;
      }

      v57 = v64;
      v63 = (*(a3 + 40))(v64, a3);
      if (__OFSUB__(v63, 1))
      {
        goto LABEL_47;
      }

      if (v63 - 1 <= 7)
      {
        v47 = 7;
      }

      else
      {
        v47 = v63 - 1;
      }
    }

    v48 = (*(a3 + 56))(v68, v57, a3);
    goto LABEL_21;
  }

  (*(v17 + 96))(v20, v16);
  v50 = *v20;
  v51 = [v50 CGColor];
  v52 = v67;
  Color.init(cgColor:)(v51, v67);

  if ((*(v66 + 48))(v52, 1, v8))
  {

    outlined destroy of Color?(v52);
  }

  else
  {
    outlined init with take of Color(v52, v13);
    v59 = v65;
    outlined init with take of Color(v13, v65);
    outlined init with copy of Color(v59, v10);
    v60 = (*(a3 + 200))(v68, v64, a3);
    v62 = v61;
    outlined assign with take of Color(v10, v61);
    *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR) + 28)) = 0;
    v60(v68, 0);

    outlined destroy of Color(v59);
  }
}

id TextStyleRepresentable.Coordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TextStyleRepresentable.Coordinator(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata instantiation function for TextStyleRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for TextStyleRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TextStyleRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance TextStyleRepresentable<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TextStyleRepresentable.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance TextStyleRepresentable<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TextStyleRepresentable<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance TextStyleRepresentable<A>(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t UITextFormattingViewControllerTextAlignment.nsTextAlignment.getter(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
    v7 = 0;
LABEL_8:

    return v7;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {
      v7 = 2;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        return 2;
      }

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        v7 = 3;
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          return 3;
        }

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
        if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
        {
          v7 = 1;
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            return 1;
          }

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
          if (v25 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v27 != v28)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v7 = 4;
        }
      }
    }

    goto LABEL_8;
  }

  return 0;
}

void one-time initialization function for miniMenu()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D40664F0;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextFormattingViewControllerComponentGroup, 0x1E69DD0C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D405B640;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextFormattingViewControllerComponent, 0x1E69DD0B8);
  v2 = *MEMORY[0x1E69DE5E0];
  v3 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v1 + 32) = v3;
  v4 = *MEMORY[0x1E69DE668];
  v5 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v1 + 40) = v5;
  v6 = static UITextFormattingViewControllerComponentGroup.group(_:)();

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D405B640;
  v8 = *MEMORY[0x1E69DE608];
  v9 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v7 + 32) = v9;
  v10 = *MEMORY[0x1E69DE600];
  v11 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v7 + 40) = v11;
  v12 = static UITextFormattingViewControllerComponentGroup.group(_:)();

  *(v0 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D405CEB0;
  v14 = *MEMORY[0x1E69DE630];
  v15 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v13 + 32) = v15;
  v16 = static UITextFormattingViewControllerComponentGroup.group(_:)();

  *(v0 + 48) = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E69DD0C8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithGroups_];

  static UITextFormattingViewControllerConfiguration.miniMenu = v19;
}

id specialized PPKTextFormattingViewController.viewWillDisappear(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  result = *(v0 + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder);
  if (result)
  {

    return [result becomeFirstResponder];
  }

  return result;
}

uint64_t specialized TextStyleRepresentable.Coordinator.textFormattingViewController(_:didChangeValue:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = swift_unknownObjectRetain();
  UITextFormattingViewController.ChangeValue.apply<A>(to:)(v3, v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t specialized TextStyleRepresentable.Coordinator.textFormattingViewController(_:shouldPresentColorPicker:)(void *a1)
{
  [a1 _setShowsGridOnly_];
  [a1 setSupportsAlpha_];
  [a1 _setShouldUseDarkGridInDarkMode_];
  [a1 setMaxGain_];
  return 1;
}

uint64_t outlined destroy of Color?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Color(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Color(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas()
{
  result = lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas;
  if (!lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas)
  {
    type metadata accessor for AnyCanvas(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(a1, v6, v7, v8, (v1 + 7), v4, v5);
}

double block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1868852853;
    v6 = 0xD000000000000016;
    if (a1 == 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x747865745F6D756ELL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C69636E65507369;
    v2 = 0x6874616D5F6D756ELL;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0x6F7274735F6D756ELL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C61636F6CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageScratchToDeleteEvent.ContentType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageScratchToDeleteEvent.ContentType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys(uint64_t a1)
{
  MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageScratchToDeleteEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageScratchToDeleteEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MagicPaperUsageScratchToDeleteEvent.undoEvent()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 72))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    return result;
  }

  result = outlined init with copy of MagicPaperUsageScratchToDeleteEvent(v1, v9);
  v12 = 1;
  v4 = *(v1 + 56);
  v5 = __OFSUB__(0, v4);
  v6 = -v4;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v6;
  v7 = *(v1 + 64);
  v5 = __OFSUB__(0, v7);
  v8 = -v7;
  if (v5)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = v8;
  return outlined init with take of MagicPaperUsageScratchToDeleteEvent(v9, a1);
}

uint64_t MagicPaperUsageScratchToDeleteEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit05MagicD25UsageScratchToDeleteEventV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit05MagicD25UsageScratchToDeleteEventV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[6] = *v3;
    v10[5] = 9;
    lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void protocol witness for AnalyticsEvent.finalize() in conformance MagicPaperUsageScratchToDeleteEvent()
{
  if ((*(v0 + 73) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    specialized MagicPaperUsageAnalyticsEvent.initMagicPaperUsageAnalyticsEvent(from:)(Strong);

    *(v0 + 73) = 1;
  }
}

unint64_t instantiation function for generic protocol witness table for MagicPaperUsageScratchToDeleteEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent and conformance MagicPaperUsageScratchToDeleteEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.CodingKeys and conformance MagicPaperUsageScratchToDeleteEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageScratchToDeleteEvent.ContentType and conformance MagicPaperUsageScratchToDeleteEvent.ContentType);
  }

  return result;
}

uint64_t specialized MagicPaperUsageScratchToDeleteEvent.ContentType.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t specialized MagicPaperUsageScratchToDeleteEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MagicPaperUsageScratchToDeleteEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void CanvasCollaborationAvatarView.resetAutohideTimer()()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v9[4] = partial apply for closure #1 in CanvasCollaborationAvatarView.resetAutohideTimer();
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v9[3] = &block_descriptor_33;
  v5 = _Block_copy(v9);
  v6 = v0;

  v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:5.0];
  _Block_release(v5);
  v8 = *&v0[v1];
  *&v0[v1] = v7;
}

id CanvasCollaborationAvatarView.init(name:color:boundingSuperview:fetchImage:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted] = 0;
  v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] = 0;
  v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow] = 0;
  v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint] = 0;
  v15 = &v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name];
  *v15 = a1;
  v15[1] = a2;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_color] = a3;
  *&v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_boundingSuperview] = a4;
  v16 = &v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_fetchImage];
  *v16 = a5;
  v16[1] = a6;
  v17 = &v7[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorPoint];
  *v17 = 0;
  v17[1] = 0;
  v34.receiver = v7;
  v34.super_class = ObjectType;
  v18 = a3;
  v19 = a4;

  v20 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v20 setAlpha_];
  v21 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:sel_handleTap_];
  [v22 addGestureRecognizer_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69DCAA0]) initWithTarget:v22 action:sel_handleHoverWithRecognizer_];
  [v22 addGestureRecognizer_];

  v25 = CanvasCollaborationAvatarView.imageView.getter();
  [v22 addSubview_];

  v26 = CanvasCollaborationAvatarView.label.getter();
  [v22 addSubview_];

  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D405B630;
  *(v28 + 32) = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint, &selRef_topAnchor);
  *(v28 + 40) = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint, &selRef_bottomAnchor);
  *(v28 + 48) = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint, &selRef_leadingAnchor);
  *(v28 + 56) = CanvasCollaborationAvatarView.imageViewWidthConstraint.getter();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];

  CanvasCollaborationAvatarView.update(animated:)(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D4058CF0;
  v31 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v32 = MEMORY[0x1E69DC2B0];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  MEMORY[0x1DA6CDBA0](v30, sel_update);

  swift_unknownObjectRelease();

  return v22;
}

id CanvasCollaborationAvatarView.imageView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id CanvasCollaborationAvatarView.label.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() whiteColor];
    [v4 setTextColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id CanvasCollaborationAvatarView.imageViewTopConstraint.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    v7 = CanvasCollaborationAvatarView.imageView.getter();
    v8 = [v7 *a2];

    v9 = [v2 *a2];
    v10 = [v8 constraintEqualToAnchor_];

    v11 = *&v2[v3];
    *&v2[v3] = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

id CanvasCollaborationAvatarView.imageViewWidthConstraint.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint];
  }

  else
  {
    v4 = CanvasCollaborationAvatarView.imageView.getter();
    v5 = [v4 widthAnchor];

    v6 = v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded];
    v7 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v7 lineHeight];
    v9 = v8;

    if (v9 + 6.0 > 30.0)
    {
      v10 = v9 + 6.0;
    }

    else
    {
      v10 = 30.0;
    }

    if (v6 == 1)
    {
      v11 = [v0 traitCollection];
      v12 = [v11 preferredContentSizeCategory];

      LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v13 = 10.0;
      if ((v11 & 1) == 0)
      {
        v13 = 6.0;
      }

      v10 = v10 - v13;
    }

    v14 = [v5 constraintEqualToConstant_];

    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void CanvasCollaborationAvatarView.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CanvasCollaborationAvatarView.didMoveToWindow()()
{
  v1 = [v0 window];
  if (v1)
  {

    if ((v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow] & 1) == 0)
    {
      v2 = CanvasCollaborationAvatarView.adjustedFrame.getter();
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v9 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted;
      v10 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v10 lineHeight];

      v11 = v0[v9];
      v12 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v12 lineHeight];
      v14 = v13;

      v15 = v14 + 6.0;
      v16 = 3.0;
      if (v11)
      {
        v16 = -3.0;
      }

      v17 = 10.0;
      if (v11)
      {
        v17 = -10.0;
      }

      v18 = v15 / v16;
      if (v15 > 30.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v22.origin.x = v2;
      v22.origin.y = v4;
      v22.size.width = v6;
      v22.size.height = v8;
      v23 = CGRectOffset(v22, 0.0, v19);
      [v0 setFrame_];
      v21.a = 1.0;
      v21.b = 0.0;
      v21.c = 0.0;
      v21.d = 1.0;
      v21.tx = 0.0;
      v21.ty = 0.0;
      CGAffineTransformScale(&v20, &v21, 0.5, 0.5);
      v21 = v20;
      [v0 setTransform_];
      [v0 setAlpha_];
      [v0 layoutIfNeeded];
      CanvasCollaborationAvatarView.update(animated:)(1);
    }
  }
}

double CanvasCollaborationAvatarView.adjustedFrame.getter()
{
  CanvasCollaborationAvatarView.contentWidth.getter();
  v2 = v1;
  v3 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v3 lineHeight];

  v4 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorPoint] + v2 * -0.5;
  v5 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_boundingSuperview];
  v6 = [v0 superview];
  [v5 convertPoint:v6 fromView:{v4, 0.0}];
  v8 = v7;

  v9 = [v0 superview];
  [v5 convertPoint:v9 fromView:{v2 + v4, 0.0}];
  v11 = v10;

  [v5 bounds];
  Width = CGRectGetWidth(v15);
  if (v8 < 8.0)
  {
    return v4 + 8.0 - v8;
  }

  v13 = Width + -8.0;
  if (v13 < v11)
  {
    return v4 - vabdd_f64(v13, v11);
  }

  return v4;
}

void CanvasCollaborationAvatarView.update(animated:)(char a1)
{
  v3 = [v1 superview];
  if (v3)
  {

    if ((v1[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview] & 1) == 0)
    {
      CanvasCollaborationAvatarView.updateImage()();
      CanvasCollaborationAvatarView.updateLabelPresence(removeIfHidden:)(0);
      v4 = CanvasCollaborationAvatarView.label.getter();
      v5 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v4 setFont_];

      [v1 setBackgroundColor_];
      if (a1)
      {
        v6 = 0.375;
      }

      else
      {
        v6 = 0.0;
      }

      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      v8 = v1;
      v9 = [v8 layer];
      [v9 setMasksToBounds_];

      v10 = [v8 layer];
      v11 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v11 lineHeight];
      v13 = v12;

      v14 = v13 + 6.0;
      if (v13 + 6.0 <= 30.0)
      {
        v14 = 30.0;
      }

      [v10 setCornerRadius_];

      v15 = *&v8[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name];
      v16 = *&v8[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name + 8];
      v17 = *&v8[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label];
      v18 = MEMORY[0x1DA6CCED0](v15, v16);
      [v17 setText_];

      [v8 layoutIfNeeded];
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v8;
      v29 = partial apply for closure #2 in CanvasCollaborationAvatarView.update(animated:);
      v30 = v20;
      v25 = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v28 = &block_descriptor_24_0;
      v21 = _Block_copy(&v25);
      v22 = v8;

      v23 = swift_allocObject();
      *(v23 + 16) = partial apply for closure #1 in CanvasCollaborationAvatarView.update(animated:);
      *(v23 + 24) = v7;
      v29 = partial apply for closure #2 in closure #1 in StickerDragPreviewContainerView._animateLiftCancellation(alongside:completion:);
      v30 = v23;
      v25 = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v28 = &block_descriptor_30;
      v24 = _Block_copy(&v25);

      [v19 animateWithDuration:0 delay:v21 usingSpringWithDamping:v24 initialSpringVelocity:v6 options:0.0 animations:0.85 completion:0.0];

      _Block_release(v24);
      _Block_release(v21);
    }
  }
}

id closure #2 in CanvasCollaborationAvatarView.removeFromSuperviewAnimated(completion:)(void *a1, double a2, double a3, double a4, double a5)
{
  [a1 setAlpha_];
  [a1 setFrame_];
  v12.a = 1.0;
  v12.b = 0.0;
  v12.c = 0.0;
  v12.d = 1.0;
  v12.tx = 0.0;
  v12.ty = 0.0;
  CGAffineTransformScale(&v11, &v12, 0.5, 0.5);
  v12 = v11;
  return [a1 setTransform_];
}

void CanvasCollaborationAvatarView.contentWidth.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
  if (v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] == 1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v4 = v0[v1];
    v5 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v5 lineHeight];

    if (v4 == 1)
    {
      v6 = [v0 traitCollection];
      v7 = [v6 preferredContentSizeCategory];

      UIContentSizeCategory.isAccessibilityCategory.getter();
    }

    CanvasCollaborationAvatarView.nameWidth.getter();
    if (v0[v1] == 1)
    {
      v8 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
      [v8 lineHeight];
    }

    [*&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_boundingSuperview] frame];
  }

  else
  {
    v9 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v9 lineHeight];
  }
}

double CanvasCollaborationAvatarView.nameWidth.getter()
{
  v1 = MEMORY[0x1DA6CCED0](*(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name), *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_name + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = v3;
  v5 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  *(inited + 40) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 sizeWithAttributes_];
  v8 = v7;

  return ceil(v8);
}

double CanvasCollaborationAvatarView.labelWidth.getter()
{
  CanvasCollaborationAvatarView.contentWidth.getter();
  v2 = v1;
  v3 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
  v4 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) == 1 && ((v5 = [v0 traitCollection], v6 = objc_msgSend(v5, sel_preferredContentSizeCategory), v5, LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter(), v6, (v5 & 1) == 0) ? (v4 = 3.0) : (v4 = 5.0), *(v0 + v3) == 1))
  {
    v7 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v7 lineHeight];
    v9 = v8;

    if (v9 + 6.0 > 30.0)
    {
      v10 = v9 + 6.0;
    }

    else
    {
      v10 = 30.0;
    }

    v11 = [v0 traitCollection];
    v12 = [v11 preferredContentSizeCategory];

    LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v13 = 10.0;
    if ((v11 & 1) == 0)
    {
      v13 = 6.0;
    }

    v14 = v10 - v13;
  }

  else
  {
    v15 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v15 lineHeight];
    v17 = v16;

    if (v17 + 6.0 > 30.0)
    {
      v14 = v17 + 6.0;
    }

    else
    {
      v14 = 30.0;
    }
  }

  v18 = 0.0;
  if (*(v0 + v3) == 1)
  {
    v19 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v19 lineHeight];
    v21 = v20;

    v22 = v21 + 6.0;
    if (v21 + 6.0 <= 30.0)
    {
      v22 = 30.0;
    }

    v23 = v22 * 0.5 * 0.6;
    v18 = 12.0;
    if (v23 > 12.0)
    {
      v18 = v23;
    }
  }

  return v2 - v4 - v14 + -6.0 - v18;
}

id CanvasCollaborationAvatarView.labelWidthConstraint.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = CanvasCollaborationAvatarView.label.getter();
    v8 = [v7 *a2];

    v9 = [v8 constraintEqualToConstant_];
    v10 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void CanvasCollaborationAvatarView.updateImage()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v4 = CanvasCollaborationAvatarView.imageView.getter();
  v29 = [v4 image];

  v5 = v29;
  if (v29)
  {
  }

  else
  {
    v6 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
    v7 = v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded];
    v8 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v8 lineHeight];
    v10 = v9;

    if (v10 + 6.0 > 30.0)
    {
      v11 = v10 + 6.0;
    }

    else
    {
      v11 = 30.0;
    }

    if (v7 == 1)
    {
      v12 = [v0 traitCollection];
      v13 = [v12 preferredContentSizeCategory];

      LOBYTE(v12) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v14 = 10.0;
      if ((v12 & 1) == 0)
      {
        v14 = 6.0;
      }

      v11 = v11 - v14;
    }

    v15 = v0[v6];
    v16 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
    [v16 lineHeight];
    v18 = v17;

    if (v18 + 6.0 > 30.0)
    {
      v19 = v18 + 6.0;
    }

    else
    {
      v19 = 30.0;
    }

    if (v15 == 1)
    {
      v20 = [v0 traitCollection];
      v21 = [v20 preferredContentSizeCategory];

      LOBYTE(v20) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v22 = 6.0;
      if (v20)
      {
        v22 = 10.0;
      }

      v19 = v19 - v22;
    }

    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    *(v26 + 32) = v24;
    *(v26 + 40) = v11;
    *(v26 + 48) = v19;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CanvasCollaborationAvatarView.updateImage(), v26);
  }
}

void CanvasCollaborationAvatarView.updateLabelPresence(removeIfHidden:)(char a1)
{
  if (v1[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] != 1)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    isa = CanvasCollaborationAvatarView.label.getter();
    [isa removeFromSuperview];
    goto LABEL_6;
  }

  v2 = CanvasCollaborationAvatarView.label.getter();
  v17 = [v2 superview];

  v3 = v17;
  if (!v17)
  {
    v4 = CanvasCollaborationAvatarView.labelWidthConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint, &selRef_widthAnchor);
    [v4 setActive_];

    v5 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label;
    [v1 addSubview_];
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D405B630;
    v8 = [*&v1[v5] leadingAnchor];
    v9 = CanvasCollaborationAvatarView.imageView.getter();
    v10 = [v9 trailingAnchor];

    v11 = [v8 constraintEqualToAnchor:v10 constant:6.0];
    *(v7 + 32) = v11;
    v12 = [*&v1[v5] centerYAnchor];
    v13 = [*&v1[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView] centerYAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    v15 = *&v1[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint];
    *(v7 + 40) = v14;
    *(v7 + 48) = v15;
    v16 = v15;
    *(v7 + 56) = CanvasCollaborationAvatarView.labelWidthConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint, &selRef_heightAnchor);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 activateConstraints_];
LABEL_6:
    v3 = isa;
  }
}

void closure #1 in CanvasCollaborationAvatarView.update(animated:)(void *a1)
{
  CanvasCollaborationAvatarView.updateLabelPresence(removeIfHidden:)(1);
  v2 = [a1 window];
  if (v2)
  {

    *(a1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow) = 1;
  }
}

id closure #2 in CanvasCollaborationAvatarView.update(animated:)(void *a1)
{
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  [a1 setTransform_];
  CanvasCollaborationAvatarView.updateFrameAndConstraints()();
  [a1 setAlpha_];
  v2 = CanvasCollaborationAvatarView.label.getter();
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded))
  {
    v4 = 1.0;
  }

  [v2 setAlpha_];

  return [a1 layoutIfNeeded];
}

void CanvasCollaborationAvatarView.updateFrameAndConstraints()()
{
  [v0 setFrame_];
  v1 = CanvasCollaborationAvatarView.imageViewWidthConstraint.getter();
  v2 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
  v3 = v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded];
  v4 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v4 lineHeight];
  v6 = v5;

  if (v6 + 6.0 > 30.0)
  {
    v7 = v6 + 6.0;
  }

  else
  {
    v7 = 30.0;
  }

  if (v3 == 1)
  {
    v8 = [v0 traitCollection];
    v9 = [v8 preferredContentSizeCategory];

    LOBYTE(v8) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v10 = 10.0;
    if ((v8 & 1) == 0)
    {
      v10 = 6.0;
    }

    v7 = v7 - v10;
  }

  [v1 setConstant_];

  v11 = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint, &selRef_leadingAnchor);
  v12 = 0.0;
  v13 = 0.0;
  if (v0[v2] == 1)
  {
    v14 = [v0 traitCollection];
    v15 = [v14 preferredContentSizeCategory];

    LOBYTE(v14) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v13 = 3.0;
    if (v14)
    {
      v13 = 5.0;
    }
  }

  [v11 setConstant_];

  v16 = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint, &selRef_topAnchor);
  if (v0[v2] == 1)
  {
    v17 = [v0 traitCollection];
    v18 = [v17 preferredContentSizeCategory];

    LOBYTE(v17) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v17)
    {
      v12 = 5.0;
    }

    else
    {
      v12 = 3.0;
    }
  }

  [v16 setConstant_];

  v19 = CanvasCollaborationAvatarView.imageViewTopConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint, &selRef_bottomAnchor);
  v20 = 0.0;
  if (v0[v2] == 1)
  {
    v21 = [v0 traitCollection];
    v22 = [v21 preferredContentSizeCategory];

    LOBYTE(v21) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v20 = 3.0;
    if (v21)
    {
      v20 = 5.0;
    }
  }

  [v19 setConstant_];

  v23 = CanvasCollaborationAvatarView.labelWidthConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint, &selRef_widthAnchor);
  v24 = CanvasCollaborationAvatarView.labelWidth.getter();
  if (v24 <= 0.0)
  {
    v24 = 0.0;
  }

  [v23 setConstant_];

  v28 = CanvasCollaborationAvatarView.labelWidthConstraint.getter(&OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint, &selRef_heightAnchor);
  v25 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v25 lineHeight];
  v27 = v26;

  [v28 setConstant_];
}

uint64_t closure #1 in CanvasCollaborationAvatarView.updateImage()(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  *(v6 + 40) = a6;
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasCollaborationAvatarView.updateImage(), v8, v7);
}

uint64_t closure #1 in CanvasCollaborationAvatarView.updateImage()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v7 = (*(Strong + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_fetchImage) + **(Strong + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_fetchImage));
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = closure #1 in CanvasCollaborationAvatarView.updateImage();
    v3.n128_u64[0] = v0[6];
    v4.n128_u64[0] = v0[7];

    return v7(v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

{
  v1 = v0[13];

  if (v1)
  {
    v2 = v0[13];
    v3 = v0[11];
    v4 = CanvasCollaborationAvatarView.imageView.getter();
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
    [v4 setImage_];
  }

  else
  {
    v3 = v0[11];
  }

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in CanvasCollaborationAvatarView.updateImage()(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasCollaborationAvatarView.updateImage(), v4, v3);
}

void closure #1 in CanvasCollaborationAvatarView.resetAutohideTimer()(int a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview] = 1;
  [a2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted;
  v12 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v12 lineHeight];

  v13 = a2[v11];
  v14 = specialized static CanvasCollaborationAvatarView.labelFont.getter();
  [v14 lineHeight];
  v16 = v15;

  v17 = v16 + 6.0;
  v18 = 3.0;
  if (v13)
  {
    v18 = -3.0;
  }

  v19 = 10.0;
  if (v13)
  {
    v19 = -10.0;
  }

  v20 = v17 / v18;
  if (v17 > 30.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  v40 = CGRectOffset(v39, 0.0, v21);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  v26 = swift_allocObject();
  v26[3] = 0;
  v26[4] = 0;
  v26[2] = a2;
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 2) = a2;
  v28[3] = x;
  v28[4] = y;
  v28[5] = width;
  v28[6] = height;
  v37 = partial apply for closure #2 in CanvasCollaborationAvatarView.removeFromSuperviewAnimated(completion:);
  v38 = v28;
  v33 = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v36 = &block_descriptor_9_0;
  v29 = _Block_copy(&v33);
  v30 = a2;

  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in CanvasCollaborationAvatarView.removeFromSuperviewAnimated(completion:);
  *(v31 + 24) = v26;
  v37 = partial apply for closure #2 in StickerDragPreviewContainerView._animateDrop(alongside:completion:);
  v38 = v31;
  v33 = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v36 = &block_descriptor_15_0;
  v32 = _Block_copy(&v33);

  [v27 animateWithDuration:0 delay:v29 usingSpringWithDamping:v32 initialSpringVelocity:0.375 options:0.0 animations:0.85 completion:0.0];

  _Block_release(v32);
  _Block_release(v29);
}

void closure #1 in CanvasCollaborationAvatarView.resetAutocollapseTimer()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) == 1)
  {
    *(a2 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
    CanvasCollaborationAvatarView.update(animated:)(1);
    CanvasCollaborationAvatarView.resetAutohideTimer()();
  }
}

void CanvasCollaborationAvatarView.handleHover(recognizer:)(void *a1)
{
  v2 = [a1 state];
  if (v2 == 3)
  {
    if (*(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) != 1)
    {
      return;
    }

    *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
  }

  else
  {
    if (v2 != 1 || (*(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) & 1) != 0)
    {
      return;
    }

    *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 1;
  }

  CanvasCollaborationAvatarView.update(animated:)(1);

  CanvasCollaborationAvatarView.resetAutohideTimer()();
}

double block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id specialized static CanvasCollaborationAvatarView.labelFont.getter()
{
  v0 = *MEMORY[0x1E69DDD80];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  [v1 pointSize];
  v3 = v2 * 2.99;
  v4 = objc_opt_self();
  [v1 pointSize];
  v5 = [v4 systemFontOfSize_weight_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v7 = [v6 scaledFontForFont:v5 maximumPointSize:v3];

  return v7;
}

id partial apply for closure #1 in CanvasCollaborationAvatarView.removeFromSuperviewAnimated(completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 removeFromSuperview];
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
  if (v2)
  {
    return v2(result);
  }

  return result;
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in CanvasCollaborationAvatarView.updateImage()(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasCollaborationAvatarView.updateImage()(v7, v8, a1, v4, v5, v6);
}

void specialized CanvasCollaborationAvatarView.init(frame:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorIsInverted) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_hasDisplayedInWindow) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isRemovingFromSuperview) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autohideTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___imageViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView____lazy_storage___labelHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized CanvasCollaborationAvatarView.handleTap(_:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded;
  v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] = (v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_isExpanded] & 1) == 0;
  CanvasCollaborationAvatarView.update(animated:)(1);
  CanvasCollaborationAvatarView.resetAutohideTimer()();
  if (v0[v1] == 1)
  {
    v2 = OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer;
    v3 = *&v0[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_autocollapseTimer];
    if (v3)
    {
      [v3 invalidate];
    }

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v10[4] = partial apply for closure #1 in CanvasCollaborationAvatarView.resetAutocollapseTimer();
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
    v10[3] = &block_descriptor_44;
    v6 = _Block_copy(v10);
    v7 = v0;

    v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:2.5];
    _Block_release(v6);
    v9 = *&v0[v2];
    *&v0[v2] = v8;
  }
}

uint64_t CanvasGenerationTool.nameAndPointerDescription.getter()
{
  MEMORY[0x1DA6CD010](60, 0xE100000000000000);
  MEMORY[0x1DA6CD010](0xD000000000000014, 0x80000001D4081A50);
  MEMORY[0x1DA6CD010](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](15913, 0xE200000000000000);
  return 0;
}

Swift::Int PaperMarkupViewController.TouchMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PaperMarkupViewController.TouchMode and conformance PaperMarkupViewController.TouchMode()
{
  result = lazy protocol witness table cache variable for type PaperMarkupViewController.TouchMode and conformance PaperMarkupViewController.TouchMode;
  if (!lazy protocol witness table cache variable for type PaperMarkupViewController.TouchMode and conformance PaperMarkupViewController.TouchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperMarkupViewController.TouchMode and conformance PaperMarkupViewController.TouchMode);
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathV_Sits5NeverOTg503_s8g14Kit26Containerib86ViewC7indices33_C455AB4540897904C8BABCC4579676DBLL2ofSaySiGAA0D7MembersV_tF9Coherence9jk9V_SitAJ13eF19_10VyAA0sdE0VGXEfU_Tf1cn_n(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_SitMd, &_s9Coherence9CRKeyPathV_SitMR);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v40 = v7;
    v34[1] = v1;
    v49 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v48 = v49;
    v9 = a1 + 56;
    v10 = _HashTable.startBucket.getter();
    v11 = 0;
    v41 = v3;
    v38 = v3 + 8;
    v39 = v3 + 16;
    v35 = a1 + 64;
    v36 = v8;
    v37 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 36);
      v46 = v11;
      v47 = v15;
      v16 = *(a1 + 48);
      v17 = a1;
      v18 = v41;
      v19 = v44;
      v20 = v45;
      (*(v41 + 16))(v44, v16 + *(v41 + 72) * v10, v45);
      v21 = *(v43 + 48);
      v22 = v40;
      MEMORY[0x1DA6CB5C0](v20);
      *(v22 + v21) = 0;
      (*(v18 + 8))(v19, v20);
      v23 = v48;
      v49 = v48;
      v25 = *(v48 + 16);
      v24 = *(v48 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v23 = v49;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v48 = v23;
      outlined init with take of Range<AttributedString.Index>(v22, v23 + v26 + *(v42 + 72) * v25, &_s9Coherence9CRKeyPathV_SitMd, &_s9Coherence9CRKeyPathV_SitMR);
      v12 = 1 << *(v17 + 32);
      if (v10 >= v12)
      {
        goto LABEL_22;
      }

      a1 = v17;
      v9 = v37;
      v27 = *(v37 + 8 * v14);
      if ((v27 & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v47 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v28 = v27 & (-2 << (v10 & 0x3F));
      if (v28)
      {
        v12 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v36;
      }

      else
      {
        v29 = v14 << 6;
        v30 = v14 + 1;
        v13 = v36;
        v31 = (v35 + 8 * v14);
        while (v30 < (v12 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v10, v47, 0);
            v12 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v10, v47, 0);
      }

LABEL_4:
      v11 = v46 + 1;
      v10 = v12;
      if (v46 + 1 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 5);
          v17 = *(v13 + 6);
          v18 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v18;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v11;
          *v13 = v16;
          *(v13 + 1) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = (v7 + 32);
    v20[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

uint64_t key path setter for ContainerCanvasElement.drawing : <A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of Date?(a1, &v11 - v8, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMR);
  return (*(v6 + 72))(v9, v5, v6);
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for CRKeyPath();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t ContainerCanvasElementView.subelements.getter()
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x540);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x548);
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  CanvasElementView.canvasElement.getter(v11 - v8);
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = *((v3 & v2) + 0x550);
  swift_getKeyPath();
  Capsule.subscript.getter();

  return (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall ContainerCanvasElementView.enterFormFillingMode()()
{
  v0 = ContainerCanvasElementView.canvas.getter();
  if (v0)
  {
    v14 = v0;
    v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x8C0))();
    if (v1)
    {
      v13 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR);
      v2 = swift_dynamicCastClass();
      if (v2)
      {
        v3 = v2;
        MEMORY[0x1EEE9AC00](v2);
        type metadata accessor for Image(0);
        _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
        swift_getKeyPath();
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v4 = v3 + direct field offset for CanvasElementViewController._formDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v4 + 8);
          ObjectType = swift_getObjectType();
          (*(v5 + 16))(v3, 1, ObjectType, v5);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v7 = v14;
LABEL_20:

        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A16DocumentPageViewCyAA0acD0VGMd, &_s8PaperKit0A16DocumentPageViewCyAA0acD0VGMR);
      if (swift_dynamicCastClass())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v9 = Strong;
          swift_getKeyPath();
          _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v10 = &v9[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v11 = *(v10 + 1);
            v12 = swift_getObjectType();
            (*(v11 + 80))(v9, 1, v12, v11);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v7 = v13;
          goto LABEL_20;
        }

        v7 = v13;
LABEL_14:

        goto LABEL_20;
      }
    }

    v7 = v14;
    goto LABEL_14;
  }
}