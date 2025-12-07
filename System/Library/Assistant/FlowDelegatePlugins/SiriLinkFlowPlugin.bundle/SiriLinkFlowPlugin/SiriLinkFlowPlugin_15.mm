__n128 LNValue.toDisambiguationItem(locale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = v3;
  v8 = [v4 displayRepresentation];
  if (v8)
  {
    v9 = v8;
    LNDisplayRepresentation.toDisambiguationItemComponent(locale:)(a1, a2, v24);

    v10 = v26;
    v11 = v27;
    v23 = v25;
    v12 = v24[0];
    v13 = v24[1];
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.voiceCommands);
    v15 = v4;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_48();
      v19 = OUTLINED_FUNCTION_23_15();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_0, v16, v17, "Link LNDisplayRepresentation was nil for %@", v18, 0xCu);
      outlined destroy of NSObject?(v19);
      OUTLINED_FUNCTION_15_0(v19);
      OUTLINED_FUNCTION_15_0(v18);
    }

    v12 = 0;
    v10 = 0;
    v23 = 0u;
    v11 = _swiftEmptyArrayStorage;
    v13 = 0xE000000000000000;
  }

  v21 = v4;
  a3->n128_u64[0] = v12;
  a3->n128_u64[1] = v13;
  result = v23;
  a3[1] = v23;
  a3[2].n128_u64[0] = v10;
  a3[2].n128_u64[1] = v11;
  a3[3].n128_u64[0] = v21;
  return result;
}

void LNDisplayRepresentation.toDisambiguationItemComponent(locale:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = [v3 title];
  v8 = String._bridgeToObjectiveC()();
  v9 = &off_2B4000;
  v10 = [v7 localizedStringForLocaleIdentifier:v8];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v12;

  v13 = [v3 subtitle];
  if (v13)
  {
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 localizedStringForLocaleIdentifier:v15];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v18;
    v47 = v17;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v19 = [v3 image];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = [v21 systemName];
      if (!v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String._bridgeToObjectiveC()();
      }

      v23 = [objc_opt_self() systemImageNamed:v22];

      goto LABEL_12;
    }
  }

  v24 = [v3 image];
  if (v24)
  {
    v20 = v24;
    v23 = [v24 inImage];
LABEL_12:

    v25 = v23;
    goto LABEL_14;
  }

  v23 = 0;
LABEL_14:
  v26 = outlined bridged method (pb) of @objc LNDisplayRepresentation.synonyms.getter(v3);
  if (!v26)
  {
LABEL_26:

LABEL_27:
    *a3 = v11;
    a3[1] = v48;
    a3[2] = v47;
    a3[3] = v46;
    a3[4] = v23;
    a3[5] = _swiftEmptyArrayStorage;
    return;
  }

  v27 = v26;
  v28 = specialized Array.count.getter(v26);
  if (!v28)
  {

    goto LABEL_26;
  }

  v29 = v28;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v50 = v29;
    v51 = v27;
    v44 = v23;
    v45 = a3;
    v30 = 0;
    v49 = v27 & 0xC000000000000001;
    do
    {
      if (v49)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v27 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = a1;
      v34 = a2;
      v35 = String._bridgeToObjectiveC()();
      v36 = v9;
      v37 = [v32 v9[327]];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v42 = _swiftEmptyArrayStorage[2];
      v41 = _swiftEmptyArrayStorage[3];
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
      }

      ++v30;
      _swiftEmptyArrayStorage[2] = v42 + 1;
      v43 = &_swiftEmptyArrayStorage[2 * v42];
      v43[4] = v38;
      v43[5] = v40;
      a2 = v34;
      a1 = v33;
      v9 = v36;
      v27 = v51;
    }

    while (v50 != v30);

    v23 = v44;

    a3 = v45;
    goto LABEL_27;
  }

  __break(1u);
}

id LNLinkEnumerationValueType.__allocating_init(enumerationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithEnumerationIdentifier:v4];

  return v5;
}

__n128 LNEnumCaseMetadata.toDisambiguationItem(valueType:locale:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = [v5 displayRepresentation];
  LNDisplayRepresentation.toDisambiguationItemComponent(locale:)(a2, a3, v23);
  v20 = v23[1];
  v21 = v23[0];
  v11 = v24;
  v12 = v25;

  v13 = [v5 identifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v22[3] = &type metadata for String;
  v22[0] = v14;
  v22[1] = v16;
  v17 = objc_allocWithZone(LNValue);
  v18 = @nonobjc LNValue.init(_:valueType:)(v22, a1);
  result = v20;
  *a4 = v21;
  *(a4 + 16) = v20;
  *(a4 + 32) = v11;
  *(a4 + 40) = v12;
  *(a4 + 48) = v18;
  return result;
}

uint64_t outlined bridged method (pb) of @objc LNDisplayRepresentation.synonyms.getter(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNStaticDeferredLocalizedString, LNStaticDeferredLocalizedString_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized LNNeedsValueRequest.toDisambiguationItems(bundleIdentifier:actionParameterMetadata:selectedValues:locale:metadataProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v104 = a6;
  v15 = a9;
  __chkstk_darwin(a1);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v18;
  (*(v18 + 16))(v17, v19, a9);
  v20 = &off_2B4000;
  v21 = [a3 valueType];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v103 = v17;
  if (v22)
  {
    v100 = v21;
    if (!a4)
    {
      v45 = v22;
      v53 = (*(a10 + 16))(a1, a2, a9);
      v96 = a9;
      v54 = specialized Array.count.getter(v53);
      v15 = 0;
      v98 = v53 & 0xC000000000000001;
      v99 = v54;
      v97 = v53 & 0xFFFFFFFFFFFFFF8;
      while (v99 != v15)
      {
        if (v98)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v97 + 16))
          {
            goto LABEL_57;
          }

          v55 = *(v53 + 8 * v15 + 32);
        }

        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v101 = v55;
        v56 = [v55 identifier];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a3 = v58;

        v59 = [v45 enumerationIdentifier];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        if (v57 == v20 && a3 == v61)
        {

LABEL_44:

          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNLinkEnumerationValueType, LNLinkEnumerationValueType_ptr);
          v76 = [v45 enumerationIdentifier];
          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v78;

          v81 = LNLinkEnumerationValueType.__allocating_init(enumerationIdentifier:)(v77, v79, v80);
          v82 = v101;
          v83 = [v101 cases];
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNEnumCaseMetadata, LNEnumCaseMetadata_ptr);
          v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v85 = specialized Array.count.getter(v84);
          if (!v85)
          {

            v26 = _swiftEmptyArrayStorage;
            goto LABEL_18;
          }

          v86 = v85;
          v105 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85 & ~(v85 >> 63), 0);
          if ((v86 & 0x8000000000000000) == 0)
          {
            v87 = 0;
            v26 = v105;
            do
            {
              if ((v84 & 0xC000000000000001) != 0)
              {
                v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v88 = *(v84 + 8 * v87 + 32);
              }

              v89 = v88;
              LNEnumCaseMetadata.toDisambiguationItem(valueType:locale:)(v81, a5, v104, &v106);

              v105 = v26;
              v91 = v26[2];
              v90 = v26[3];
              if (v91 >= v90 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v90 > 1, v91 + 1, 1);
                v26 = v105;
              }

              ++v87;
              v26[2] = v91 + 1;
              v92 = &v26[7 * v91];
              v93 = v106;
              v94 = v107;
              v95 = v108;
              v92[10] = v109;
              *(v92 + 3) = v94;
              *(v92 + 4) = v95;
              *(v92 + 2) = v93;
            }

            while (v86 != v87);

            v44 = v101;
            goto LABEL_17;
          }

          __break(1u);
LABEL_61:
          swift_once();
LABEL_41:
          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, static Logger.voiceCommands);
          v65 = v100;
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v68 = os_log_type_enabled(v66, v67);
          v15 = v96;
          if (v68)
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v106.n128_u64[0] = v70;
            *v69 = 136315138;
            v71 = [v45 enumerationIdentifier];
            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v73;

            v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v106);

            *(v69 + 4) = v75;
            _os_log_impl(&dword_0, v66, v67, "Could not find LNEnumMetadata for identifier: %s", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v70);
          }

          else
          {
          }

          goto LABEL_25;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {
          goto LABEL_44;
        }

        ++v15;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        goto LABEL_61;
      }

      goto LABEL_41;
    }

    v23 = specialized Array.count.getter(a4);
    if (!v23)
    {

LABEL_25:
      v26 = _swiftEmptyArrayStorage;
LABEL_26:
      v40 = v102;
      goto LABEL_27;
    }

    v24 = v23;
    v96 = a9;
    v105 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = 0;
      v26 = v105;
      do
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v27 = *(a4 + 8 * v25 + 32);
        }

        v28 = v27;
        LNValue.toDisambiguationItem(locale:)(a5, v104, &v106);

        v105 = v26;
        v30 = v26[2];
        v29 = v26[3];
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
          v26 = v105;
        }

        ++v25;
        v26[2] = v30 + 1;
        v31 = &v26[7 * v30];
        v32 = v106;
        v33 = v107;
        v34 = v108;
        v31[10] = v109;
        *(v31 + 3) = v33;
        *(v31 + 4) = v34;
        *(v31 + 2) = v32;
      }

      while (v24 != v25);
      v44 = v100;
LABEL_17:

LABEL_18:
      v15 = v96;
      goto LABEL_26;
    }

    __break(1u);
    swift_once();
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.voiceCommands);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v40 = v102;
    v50 = v100;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v47, v48, "Could not create [ShortcutsLinkDisambiguationItem] for LNNeedsValueRequest", v51, 2u);
    }
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_58:
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.voiceCommands);
    v36 = a3;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v102;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = [v36 v20[325]];
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&dword_0, v37, v38, "Can only create disambiguations for LNLinkEnumerationValueType, not %@", v41, 0xCu);
      outlined destroy of NSObject?(v42);
    }
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_27:
  (*(v40 + 8))(v103, v15);
  return v26;
}

void *OUTLINED_FUNCTION_2_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(a1, a2, a3, a4, v9, 0xD000000000000043, a7, v10, a9);
}

__n128 OUTLINED_FUNCTION_4_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  *(v14 + 16) = v15;
  v17 = v14 + 56 * v16;
  result = a11;
  *(v17 + 80) = a14;
  *(v17 + 48) = a12;
  *(v17 + 64) = a13;
  *(v17 + 32) = a11;
  return result;
}

double OUTLINED_FUNCTION_21_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11)
{

  *&result = LNValue.toDisambiguationItem(locale:)(v12, v11, &a11).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_18()
{

  return type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
}

uint64_t OUTLINED_FUNCTION_23_15()
{

  return swift_slowAlloc();
}

uint64_t SiriWorkflowRunner.__allocating_init(workflowRunnerInput:deviceState:aceServiceInvoker:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_27_17();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_20_4();
  SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)(v5, v6, a3);
  return v4;
}

void *SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)(void *__src, __int128 *a2, void *a3)
{
  v4 = v3;
  v3[2] = 0;
  v3[3] = 0;
  memcpy(v3 + 9, __src, 0x41uLL);
  outlined init with copy of SiriWorkflowRunnerInput(__src, v12);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = SiriWorkflowRunnerInput.toWFSiriWorkflowRunnerClient(deviceState:aceServiceInvoker:dialogState:)(a2, a3, static WFDialogState.shared);
  v4[7] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFSiriWorkflowRunnerClient, WFSiriWorkflowRunnerClient_ptr);
  v4[8] = &protocol witness table for WFSiriWorkflowRunnerClient;
  v4[4] = v8;
  swift_beginAccess();
  outlined init with copy of DeviceState((v4 + 4), v12);
  v9 = objc_allocWithZone(type metadata accessor for SiriStateObserver());
  v10 = SiriStateObserver.init(runnerClient:)(v12);
  outlined destroy of SiriWorkflowRunnerInput(__src);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v4[18] = v10;
  outlined init with take of Output(a2, (v4 + 19));
  return v4;
}

uint64_t SiriWorkflowRunner.__allocating_init(runnerClient:siriStateObserver:deviceState:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  OUTLINED_FUNCTION_27_17();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_20_4();
  SiriWorkflowRunner.init(runnerClient:siriStateObserver:deviceState:)(v5, v6, a3);
  return v4;
}

uint64_t SiriWorkflowRunner.init(runnerClient:siriStateObserver:deviceState:)(void *a1, void *a2, __int128 *a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  outlined init with copy of DeviceState(a1, v4 + 32);
  if (!a2)
  {
    outlined init with copy of DeviceState(a1, v10);
    v8 = objc_allocWithZone(type metadata accessor for SiriStateObserver());
    a2 = SiriStateObserver.init(runnerClient:)(v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v4 + 144) = a2;
  outlined init with take of Output(a3, v4 + 152);
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = -1;
  return v4;
}

uint64_t SiriWorkflowRunner.startExecution()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV15BufferingPolicyOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v3 = v2;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_35_15();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v7))
  {
    v8 = OUTLINED_FUNCTION_52();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#SiriWorkflowRunner creating async stream", v8, 2u);
    OUTLINED_FUNCTION_15_0(v8);
  }

  type metadata accessor for SiriWorkflowRunnerEvent(0);
  (*(v3 + 104))(v0, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in SiriWorkflowRunner.startExecution()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - v6;
  v8 = *(v5 + 16);
  v8(&v20[-1] - v6, a1, v4);
  v9 = type metadata accessor for AnonymousSiriWorkflowRunnerClientDelegate(0);
  v10 = objc_allocWithZone(v9);
  v8(&v10[OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation], v7, v4);
  v23.receiver = v10;
  v23.super_class = v9;
  v11 = objc_msgSendSuper2(&v23, "init");
  (*(v5 + 8))(v7, v4);
  SiriWorkflowRunner.buildSiriStateObserver()();
  swift_beginAccess();
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 32, v12);
  v14 = *(v13 + 16);
  v15 = v11;
  v14(v11, v12, v13);
  swift_endAccess();
  outlined init with copy of DeviceState(a2 + 32, v20);
  v16 = v21;
  v17 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v17 + 64))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  *(swift_allocObject() + 16) = v15;
  return AsyncStream.Continuation.onTermination.setter();
}

objc_class *AnonymousSiriWorkflowRunnerClientDelegate.__allocating_init(continuation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v5 - 8) + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  objc_msgSendSuper2(&v9, "init");
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  return v1;
}

void SiriWorkflowRunner.buildSiriStateObserver()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v1[2];
  v1[2] = v8;
  v10 = v8;

  v11 = v1[18];
  objc_allocWithZone(AFNotifyObserver);
  v12 = v11;
  v13 = @nonobjc AFNotifyObserver.init(name:options:queue:delegate:)(0xD000000000000023, 0x8000000000234350, 1, v8, v11);
  v14 = v1[3];
  v1[3] = v13;
}

void closure #1 in closure #1 in SiriWorkflowRunner.startExecution()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "continuation.onTermination called", v2, 2u);
  }
}

Swift::Void __swiftcall SiriWorkflowRunner.continueRunningOnAppLaunch()()
{
  v1 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#SiriWorkflowRunner continueRunningOnAppLaunch", v5, 2u);
    OUTLINED_FUNCTION_15_0(v5);
  }

  (*(&stru_68.reloff + (swift_isaMask & **(v1 + 144))))();
}

Swift::Bool __swiftcall SiriWorkflowRunner.isLastStep()()
{
  swift_beginAccess();
  outlined init with copy of DeviceState(v0 + 32, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = SiriRunnerClient.isLastStep()();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1;
}

uint64_t SiriWorkflowRunner.pauseShortcut()()
{
  *(v1 + 152) = v0;
  return _swift_task_switch(SiriWorkflowRunner.pauseShortcut());
}

{
  v1 = v0[19];
  swift_beginAccess();
  outlined init with copy of DeviceState((v1 + 4), (v0 + 11));
  v2 = v0[14];
  v3 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v2);
  v4 = (*(v3 + 72))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  memcpy(v0 + 2, v1 + 9, 0x41uLL);
  v5 = static WFPausedShortcutConverter.toUserData(pausedShortcutData:runnerInput:)(v4, v0 + 2);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  v7 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD00000000000003FLL, 0x8000000000230CA0, v6);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v9 = v8;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v9, v7);
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v10 = DeviceState.asInvocationContext.getter();
  [v10 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v11 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v10 payload:v7];
  v12 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v13 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v14 = String._bridgeToObjectiveC()();
  [v13 setBundleId:v14];

  [v12 setRequestedApp:v13];
  [v11 setAppSelectionState:v12];

  v15 = v0[1];

  return v15(v11);
}

uint64_t SiriWorkflowRunner.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  outlined consume of SiriWorkflowRunnerInput?(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  return v0;
}

uint64_t SiriWorkflowRunner.__deallocating_deinit()
{
  SiriWorkflowRunner.deinit();
  OUTLINED_FUNCTION_27_17();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SiriWorkflowRunning.pauseShortcut() in conformance SiriWorkflowRunner()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for LocationProviding.getCurrentLocation() in conformance LocationProvider;

  return SiriWorkflowRunner.pauseShortcut()();
}

uint64_t AnonymousSiriWorkflowRunnerClientDelegate.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

char *AnonymousSiriWorkflowRunnerClientDelegate.init(continuation:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v5 - 8) + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "init");
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  return v1;
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:didFinishRunningWorkflowWithOutput:error:cancelled:)()
{
  OUTLINED_FUNCTION_40_0();
  v22 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3_40();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_29_17();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v14))
  {
    v15 = OUTLINED_FUNCTION_52();
    *v15 = 0;
    OUTLINED_FUNCTION_26_19();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_15_0(v15);
  }

  *v0 = v6;
  *(v0 + 8) = v4;
  *(v0 + 16) = v22 & 1;
  swift_storeEnumTagMultiPayload();
  v21 = v6;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_33_9();
  AsyncStream.Continuation.yield(_:)();
  (*(v10 + 8))(v1, v8);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:performSiriRequest:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v3 = v2;
  v35 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_30_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_29_17();
  v12 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_50_0();
  v33 = v14 - v15;
  __chkstk_darwin(v16);
  v34 = v31 - v17;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.voiceCommands);
  v19 = v6;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v31[1] = v3;
    v25 = v24;
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v19;
    v26 = v19;
    OUTLINED_FUNCTION_46(&dword_0, v27, v28, "#AnonymousSiriWorkflowRunnerClientDelegate request=%@");
    outlined destroy of Any?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0(v25);
    v29 = v23;
    v9 = v32;
    OUTLINED_FUNCTION_15_0(v29);
  }

  static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)();
  if (__swift_getEnumTagSinglePayload(v1, 1, v12) == 1)
  {
    outlined destroy of Any?(v1, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  }

  else
  {
    v30 = v34;
    outlined init with take of SiriWorkflowRunnerEvent(v1, v34);
    outlined init with copy of SiriWorkflowRunnerEvent(v30, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v0, v7);
    outlined destroy of SiriWorkflowRunnerEvent(v30);
  }

  OUTLINED_FUNCTION_42();
}

void static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for URL();
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_50_0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = (&v109 - v21);
  v23 = objc_opt_self();
  v24 = OUTLINED_FUNCTION_23_16(v23);
  if (v24)
  {
    v25 = [v24 utterance];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    OUTLINED_FUNCTION_26_1();
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = v1;
    *v22 = v26;
    v22[1] = v28;
    v22[2] = partial apply for closure #1 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[3] = v29;
    OUTLINED_FUNCTION_20_4();
LABEL_3:
    swift_storeEnumTagMultiPayload();
LABEL_11:
    outlined init with take of SiriWorkflowRunnerEvent(v22, v7);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);

    OUTLINED_FUNCTION_42();
    return;
  }

  v110 = v3;
  v30 = objc_opt_self();
  v31 = OUTLINED_FUNCTION_23_16(v30);
  if (v31)
  {
    v32 = v31;
    v33 = [v31 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 32))(v19, v14, v8);
    v34 = [v32 bundleIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v48 = v110;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMd, &_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMR);
    v50 = (v19 + *(v49 + 48));
    v51 = (v19 + *(v49 + 64));
    *v50 = v36;
    v50[1] = v38;
    OUTLINED_FUNCTION_26_1();
    v52 = swift_allocObject();
    *(v52 + 16) = v48;
    *(v52 + 24) = v1;
    *v51 = partial apply for closure #2 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v51[1] = v52;
    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriWorkflowRunnerEvent(v19, v22);
    goto LABEL_11;
  }

  v39 = objc_opt_self();
  v40 = OUTLINED_FUNCTION_23_16(v39);
  if (v40)
  {
    v41 = v40;
    v42 = [v40 userActivity];
    v43 = [v41 bundleIdentifier];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    OUTLINED_FUNCTION_26_1();
    v47 = swift_allocObject();
    *(v47 + 16) = v110;
    *(v47 + 24) = v1;
    *v22 = v42;
    v22[1] = v44;
    v22[2] = v46;
    v22[3] = partial apply for closure #3 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[4] = v47;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  v53 = objc_opt_self();
  v54 = OUTLINED_FUNCTION_23_16(v53);
  v55 = v110;
  if (v54)
  {
    v56 = [v54 intent];
    OUTLINED_FUNCTION_26_1();
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = v1;
    *v22 = v56;
    v22[1] = partial apply for closure #4 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[2] = v57;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  v58 = objc_opt_self();
  v59 = OUTLINED_FUNCTION_23_16(v58);
  if (v59)
  {
    v60 = [v59 dialogRequest];
    OUTLINED_FUNCTION_26_1();
    v61 = swift_allocObject();
    *(v61 + 16) = v55;
    *(v61 + 24) = v1;
    *v22 = v60;
    v22[1] = partial apply for closure #5 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[2] = v61;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  v62 = objc_opt_self();
  v63 = OUTLINED_FUNCTION_23_16(v62);
  if (v63)
  {
    v64 = [v63 interaction];
    OUTLINED_FUNCTION_26_1();
    v65 = swift_allocObject();
    *(v65 + 16) = v55;
    *(v65 + 24) = v1;
    *v22 = v64;
    v22[1] = partial apply for closure #6 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[2] = v65;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  v66 = objc_opt_self();
  v67 = OUTLINED_FUNCTION_23_16(v66);
  if (v67)
  {
    v68 = [v67 bundleIdentifier];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    OUTLINED_FUNCTION_26_1();
    v72 = swift_allocObject();
    *(v72 + 16) = v55;
    *(v72 + 24) = v1;
    *v22 = v69;
    v22[1] = v71;
    v22[2] = partial apply for closure #7 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[3] = v72;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  v73 = objc_opt_self();
  v74 = OUTLINED_FUNCTION_23_16(v73);
  if (v74)
  {
    v75 = v74;
    v76 = [v74 action];
    v77 = [v75 bundleIdentifier];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    LOBYTE(v75) = [v75 showWhenRun];
    OUTLINED_FUNCTION_26_1();
    v81 = swift_allocObject();
    *(v81 + 16) = v55;
    *(v81 + 24) = v1;
    *v22 = v76;
    v22[1] = v78;
    v22[2] = v80;
    *(v22 + 24) = v75;
    v22[4] = partial apply for closure #8 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[5] = v81;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  v82 = objc_opt_self();
  if (OUTLINED_FUNCTION_23_16(v82))
  {
    OUTLINED_FUNCTION_26_1();
    v83 = swift_allocObject();
    *(v83 + 16) = v55;
    *(v83 + 24) = v1;
    *v22 = partial apply for closure #9 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[1] = v83;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  v84 = objc_opt_self();
  v85 = OUTLINED_FUNCTION_23_16(v84);
  if (v85)
  {
    v86 = [v85 bundleIdentifier];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    OUTLINED_FUNCTION_26_1();
    v90 = swift_allocObject();
    *(v90 + 16) = v55;
    *(v90 + 24) = v1;
    *v22 = v87;
    v22[1] = v89;
    v22[2] = partial apply for closure #10 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[3] = v90;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  v91 = objc_opt_self();
  v92 = OUTLINED_FUNCTION_23_16(v91);
  if (v92)
  {
    v93 = [v92 needsPreciseLocation];
    OUTLINED_FUNCTION_26_1();
    v94 = swift_allocObject();
    *(v94 + 16) = v110;
    *(v94 + 24) = v1;
    *v22 = v93;
    v22[1] = partial apply for closure #11 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v22[2] = v94;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v95 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v95, static Logger.voiceCommands);
  v96 = v5;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v99 = 138412290;
    *(v99 + 4) = v96;
    *v100 = v96;
    v101 = v96;
    OUTLINED_FUNCTION_46(&dword_0, v102, v103, "#AnonymousSiriWorkflowRunnerClientDelegate unknown request=%@");
    outlined destroy of Any?(v100, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0(v100);
    OUTLINED_FUNCTION_15_0(v99);
  }

  OUTLINED_FUNCTION_42();

  __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:didStartActionWithIdentifier:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_35_15();
  v32 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_50_0();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = (&v30 - v14);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v16, static Logger.voiceCommands);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v7;
    v20 = v4;
    v21 = v19;
    v22 = swift_slowAlloc();
    v31 = v5;
    v23 = v22;
    v33 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v2, &v33);
    OUTLINED_FUNCTION_26_19();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v5 = v31;
    OUTLINED_FUNCTION_15_0(v23);
    v29 = v21;
    v4 = v20;
    v7 = v30;
    OUTLINED_FUNCTION_15_0(v29);
  }

  *v15 = v4;
  v15[1] = v2;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SiriWorkflowRunnerEvent(v15, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v0, v5);
  outlined destroy of SiriWorkflowRunnerEvent(v15);
  OUTLINED_FUNCTION_42();
}

void closure #1 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(uint64_t a1, void (*a2)(void))
{
  v4 = objc_allocWithZone(WFSiriSpeakTextResponse);
  swift_errorRetain();
  v5 = @nonobjc WFSiriSpeakTextResponse.init(error:)(a1);
  a2();
}

void closure #2 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, Class *a5)
{
  v7 = objc_allocWithZone(*a5);
  swift_errorRetain();
  v8 = @nonobjc WFSiriSpeakTextResponse.init(error:)(a2);
  a3();
}

void closure #5 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_allocWithZone(WFSiriDialogResponse) initWithDialogResponse:a1];
  a2();
}

void closure #4 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, Class *a5, SEL *a6)
{
  v10 = objc_allocWithZone(*a5);
  v11 = a1;
  swift_errorRetain();
  v12 = @nonobjc WFSiriKitIntentResponse.init(interaction:andError:)(a1, a2, a6);
  a3();
}

void closure #9 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(char a1, void (*a2)(void))
{
  v3 = [objc_allocWithZone(WFSiriPunchOutResponse) initWithShouldPunchOut:a1 & 1];
  a2();
}

void closure #10 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v5 = a1;
  objc_allocWithZone(WFSiriAppProtectionResponse);
  swift_errorRetain();
  v6 = @nonobjc WFSiriAppProtectionResponse.init(didUnlock:andError:)(v5, a2);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.voiceCommands);
  v18 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    v12 = v18;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v19);

    *(v10 + 4) = v17;
    *(v10 + 12) = 1024;
    LODWORD(v17) = [v12 didUnlock];

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v8, v9, "#AnonymousSiriWorkflowRunnerClientDelegate setting WFSiriAppProtectionResponse=%s; didUnlock=%{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
  }

  a3(v18);
}

void closure #11 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(char a1, uint64_t a2, void (*a3)(void))
{
  v6 = objc_allocWithZone(WFSiriLocationAuthorizationResponse);
  if (a2)
  {
    swift_errorRetain();
    v7 = @nonobjc WFSiriSpeakTextResponse.init(error:)(a2);
  }

  else
  {
    v7 = [v6 initWithDidAuthorize:a1 & 1];
  }

  v8 = one-time initialization token for voiceCommands;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.voiceCommands);
  swift_errorRetain();
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = a1;
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = v11;
    v16 = [v15 description];
    v25 = a3;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v26);

    *(v14 + 4) = v20;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v24 & 1;
    *(v14 + 18) = 2080;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v14 + 20) = v23;
    a3 = v25;
    _os_log_impl(&dword_0, v12, v13, "#AnonymousSiriWorkflowRunnerClientDelegate setting WFSiriLocationAuthorizationResponse=%s; didAuthorize=%{BOOL}d; error=%s", v14, 0x1Cu);
    swift_arrayDestroy();
  }

  a3(v11);
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:executeLinkAction:inApplication:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_14_25(v8, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_13_23(v10, v28);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v11, static Logger.voiceCommands);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v13))
  {
    v14 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_5_28(v14);
    OUTLINED_FUNCTION_26(&dword_0, v15, v16, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request executeLinkAction, this method is being deprecated.");
    OUTLINED_FUNCTION_6_30();
  }

  v17 = OUTLINED_FUNCTION_7_29();
  v18(v17);
  if (v3)
  {
    OUTLINED_FUNCTION_26_1();
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_20_17(v20);
  OUTLINED_FUNCTION_36_12(v21);
  OUTLINED_FUNCTION_32_16();
  v22 = v5;
  OUTLINED_FUNCTION_11_25();
  v23 = OUTLINED_FUNCTION_25_13();
  v24(v23);
  v25 = OUTLINED_FUNCTION_24_19();
  v26(v25);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:speakTextWithUtterance:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v4 = v3;
  v19 = v6;
  v20 = v5;
  v8 = v7;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3_40();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_31_14();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v16))
  {
    v17 = OUTLINED_FUNCTION_52();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v0, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request speakTextWithUtterance", v17, 2u);
    OUTLINED_FUNCTION_15_0(v17);
  }

  OUTLINED_FUNCTION_26_1();
  v18 = swift_allocObject();
  *(v18 + 16) = v19;
  *(v18 + 24) = v4;
  *v1 = v20;
  v1[1] = v8;
  v1[2] = partial apply for closure #1 in AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:speakTextWithUtterance:completionHandler:);
  v1[3] = v18;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v12 + 8))(v2, v10);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:open:withBundleIdentifier:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v28 = v7;
  v29 = v8;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_15();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_29_17();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v16))
  {
    v17 = OUTLINED_FUNCTION_52();
    *v17 = 0;
    OUTLINED_FUNCTION_26_19();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_15_0(v17);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMd, &_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMR);
  v24 = (v0 + *(v23 + 48));
  v25 = (v0 + *(v23 + 64));
  type metadata accessor for URL();
  OUTLINED_FUNCTION_7();
  (*(v26 + 16))(v0, v28);
  *v24 = v29;
  v24[1] = v6;
  OUTLINED_FUNCTION_26_1();
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = v30;
  *v25 = partial apply for closure #1 in AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:open:withBundleIdentifier:completionHandler:);
  v25[1] = v27;
  swift_storeEnumTagMultiPayload();

  _sSo14LNActionOutputCSgs5Error_pSgIeggg_SgWOy_0(v4, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_33_9();
  AsyncStream.Continuation.yield(_:)();
  (*(v12 + 8))(v1, v10);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:handle:withBundleIdentifier:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v8 = v7;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v12 = (v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_14_25(v14, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_13_23(v16, v34);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v17, static Logger.voiceCommands);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v19))
  {
    v20 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_5_28(v20);
    OUTLINED_FUNCTION_26(&dword_0, v21, v22, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request handle userActivity");
    OUTLINED_FUNCTION_6_30();
  }

  v23 = OUTLINED_FUNCTION_7_29();
  v24(v23);
  if (v3)
  {
    OUTLINED_FUNCTION_26_1();
    v25 = swift_allocObject();
    *(v25 + 16) = v3;
    *(v25 + 24) = v1;
    v26 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  }

  else
  {
    v26 = specialized thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @guaranteed Error?) -> ();
    v25 = 0;
  }

  OUTLINED_FUNCTION_26_1();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  *v12 = v8;
  v12[1] = v35;
  v12[2] = v5;
  v12[3] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ());
  v12[4] = v27;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v28 = v8;
  OUTLINED_FUNCTION_11_25();
  v29 = OUTLINED_FUNCTION_25_13();
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_19();
  v32(v31);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:execute:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v34 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_15();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_30_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v36 = v15;
  v37 = v14;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v16);
  v35 = &v32 - v17;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v20))
  {
    v21 = OUTLINED_FUNCTION_52();
    v33 = v2;
    v22 = v6;
    v23 = v4;
    v24 = v8;
    v25 = v21;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request execute intent", v21, 2u);
    v26 = v25;
    v8 = v24;
    v4 = v23;
    v6 = v22;
    v2 = v33;
    OUTLINED_FUNCTION_15_0(v26);
  }

  (*(v12 + 16))(v2, v34 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation, v10);
  if (v6)
  {
    OUTLINED_FUNCTION_26_1();
    v27 = swift_allocObject();
    *(v27 + 16) = v6;
    *(v27 + 24) = v4;
    v28 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed INInteraction?, @guaranteed Error?) -> ();
  }

  else
  {
    v28 = specialized thunk for @escaping @callee_guaranteed (@in_guaranteed LNActionOutput?, @guaranteed Error?) -> ();
    v27 = 0;
  }

  OUTLINED_FUNCTION_26_1();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  *v1 = v8;
  v1[1] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed INInteraction?, @in_guaranteed Error?) -> (@out ());
  v1[2] = v29;
  swift_storeEnumTagMultiPayload();
  _sSo14LNActionOutputCSgs5Error_pSgIeggg_SgWOy_0(v6, v4);
  v30 = v8;
  v31 = v35;
  AsyncStream.Continuation.yield(_:)();
  (*(v12 + 8))(v2, v10);
  (*(v36 + 8))(v31, v37);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:show:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v19 = v3;
  v5 = v4;
  v20 = v6;
  v8 = v7;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3_40();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_31_14();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v16))
  {
    v17 = OUTLINED_FUNCTION_52();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v0, v19, v17, 2u);
    OUTLINED_FUNCTION_15_0(v17);
  }

  *v1 = v8;
  v1[1] = v20;
  v1[2] = v5;
  swift_storeEnumTagMultiPayload();
  v18 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v12 + 8))(v2, v10);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:openApp:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v19 = v9;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3_40();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v13 = v12;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_31_14();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v17))
  {
    v18 = OUTLINED_FUNCTION_52();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v0, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request openApp", v18, 2u);
    OUTLINED_FUNCTION_15_0(v18);
  }

  *v1 = v19;
  v1[1] = v8;
  v1[2] = v6;
  v1[3] = v4;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v13 + 8))(v2, v11);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:executeLinkAction:inApplication:withNameOverride:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_14_25(v8, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_13_23(v10, v28);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v11, static Logger.voiceCommands);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v13))
  {
    v14 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_5_28(v14);
    OUTLINED_FUNCTION_26(&dword_0, v15, v16, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request executeLinkAction with name override");
    OUTLINED_FUNCTION_6_30();
  }

  v17 = OUTLINED_FUNCTION_7_29();
  v18(v17);
  if (v3)
  {
    OUTLINED_FUNCTION_26_1();
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_20_17(v20);
  OUTLINED_FUNCTION_36_12(v21);
  OUTLINED_FUNCTION_32_16();
  v22 = v5;
  OUTLINED_FUNCTION_11_25();
  v23 = OUTLINED_FUNCTION_25_13();
  v24(v23);
  v25 = OUTLINED_FUNCTION_24_19();
  v26(v25);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:punchOutRequestedWithCompletionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v3 = v2;
  v5 = v4;
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3_40();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_30_14();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v11, static Logger.voiceCommands);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v13))
  {
    v14 = OUTLINED_FUNCTION_52();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request punchOutRequested", v14, 2u);
    OUTLINED_FUNCTION_15_0(v14);
  }

  *v0 = v5;
  v0[1] = v3;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v9 + 8))(v1, v7);
  OUTLINED_FUNCTION_42();
}

id @nonobjc WFSiriKitIntentResponse.init(interaction:andError:)(void *a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  if (a2)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 *a3];

  return v8;
}

id @nonobjc WFSiriAppProtectionResponse.init(didUnlock:andError:)(char a1, uint64_t a2)
{
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithDidUnlock:a1 & 1 andError:v4];

  return v5;
}

id @nonobjc WFSiriSpeakTextResponse.init(error:)(uint64_t a1)
{
  if (a1)
  {
    v2 = _convertErrorToNSError(_:)();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithError:v2];

  return v3;
}

void *outlined consume of SiriWorkflowRunnerInput?(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  if (a9 != 255)
  {
    return outlined consume of SiriWorkflowRunnerInput(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t outlined init with copy of SiriWorkflowRunnerEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SiriWorkflowRunnerEvent(uint64_t a1)
{
  v2 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_171970()
{

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v0);
}

uint64_t sub_171AD0()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v1);
}

uint64_t partial apply for closure #1 in AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:open:withBundleIdentifier:completionHandler:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t _sSo14LNActionOutputCSgs5Error_pSgIeggg_SgWOy_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ())(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed LNActionOutput?, @in_guaranteed Error?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

void type metadata completion function for SiriWorkflowRunnerEvent(uint64_t a1)
{
  type metadata accessor for (action: LNAction, bundleId: String, showWhenRun: Bool, completionHandler: ())(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (utterance: String, completionHandler: ())(319, &lazy cache variable for type metadata for (utterance: String, completionHandler: ()), &type metadata for String, "utterance completionHandler ");
    if (v2 <= 0x3F)
    {
      type metadata accessor for (url: URL, bundleId: String?, completionHandler: ())(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (userActivity: NSUserActivity, bundleId: String, completionHandler: ())(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for (intent: INIntent, completionHandler: ())(319, &lazy cache variable for type metadata for (intent: INIntent, completionHandler: ()), &lazy cache variable for type metadata for INIntent, INIntent_ptr, "intent completionHandler ");
          if (v5 <= 0x3F)
          {
            type metadata accessor for (intent: INIntent, completionHandler: ())(319, &lazy cache variable for type metadata for (dialogRequest: WFDialogRequest, completionHandler: ()), &lazy cache variable for type metadata for WFDialogRequest, WFDialogRequest_ptr, "dialogRequest completionHandler ");
            if (v6 <= 0x3F)
            {
              type metadata accessor for (intent: INIntent, completionHandler: ())(319, &lazy cache variable for type metadata for (interaction: INInteraction, completionHandler: ()), &lazy cache variable for type metadata for INInteraction, INInteraction_ptr, "interaction completionHandler ");
              if (v7 <= 0x3F)
              {
                type metadata accessor for (utterance: String, completionHandler: ())(319, &lazy cache variable for type metadata for (bundleIdentifier: String, completionHandler: ()), &type metadata for String, "bundleIdentifier completionHandler ");
                if (v8 <= 0x3F)
                {
                  type metadata accessor for (output: WFContentCollection?, error: Error?, cancelled: Bool)(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for (completionHandler: ())();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for (utterance: String, completionHandler: ())(319, &lazy cache variable for type metadata for (bundleId: String, completionHandler: ()), &type metadata for String, "bundleId completionHandler ");
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for (utterance: String, completionHandler: ())(319, &lazy cache variable for type metadata for (needsPreciseLocation: Bool, completionHandler: ()), &type metadata for Bool, "needsPreciseLocation completionHandler ");
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for (actionID: String)();
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (action: LNAction, bundleId: String, showWhenRun: Bool, completionHandler: ())(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (action: LNAction, bundleId: String, showWhenRun: Bool, completionHandler: ()))
  {
    __chkstk_darwin(0);
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (action: LNAction, bundleId: String, showWhenRun: Bool, completionHandler: ()));
    }
  }
}

void type metadata accessor for (url: URL, bundleId: String?, completionHandler: ())(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (url: URL, bundleId: String?, completionHandler: ()))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (url: URL, bundleId: String?, completionHandler: ()));
    }
  }
}

void type metadata accessor for (userActivity: NSUserActivity, bundleId: String, completionHandler: ())(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (userActivity: NSUserActivity, bundleId: String, completionHandler: ()))
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for NSUserActivity, NSUserActivity_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (userActivity: NSUserActivity, bundleId: String, completionHandler: ()));
    }
  }
}

void type metadata accessor for (intent: INIntent, completionHandler: ())(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for NSError(255, a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (output: WFContentCollection?, error: Error?, cancelled: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (output: WFContentCollection?, error: Error?, cancelled: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo19WFContentCollectionCSgMd, &_sSo19WFContentCollectionCSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (output: WFContentCollection?, error: Error?, cancelled: Bool));
    }
  }
}

void type metadata accessor for (completionHandler: ())()
{
  if (!lazy cache variable for type metadata for (completionHandler: ()))
  {
    v0 = type metadata accessor for ()();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (completionHandler: ()));
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata accessor for (utterance: String, completionHandler: ())(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    OUTLINED_FUNCTION_20_4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *type metadata accessor for (actionID: String)()
{
  result = lazy cache variable for type metadata for (actionID: String);
  if (!lazy cache variable for type metadata for (actionID: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (actionID: String));
  }

  return result;
}

void type metadata completion function for AnonymousSiriWorkflowRunnerClientDelegate(uint64_t a1)
{
  type metadata accessor for AsyncStream<SiriWorkflowRunnerEvent>.Continuation(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<SiriWorkflowRunnerEvent>.Continuation(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<SiriWorkflowRunnerEvent>.Continuation)
  {
    type metadata accessor for SiriWorkflowRunnerEvent(255);
    v1 = type metadata accessor for AsyncStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<SiriWorkflowRunnerEvent>.Continuation);
    }
  }
}

uint64_t sub_172430()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_17247C()
{

  return _swift_deallocObject(v0);
}

_WORD *OUTLINED_FUNCTION_5_28(_WORD *result)
{
  *(v2 - 136) = v1;
  *result = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_30()
{
}

uint64_t OUTLINED_FUNCTION_11_25()
{

  return AsyncStream.Continuation.yield(_:)();
}

uint64_t OUTLINED_FUNCTION_20_17(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  v7 = *(v6 - 96);
  *v5 = v3;
  *(v5 + 8) = v7;
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_16(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

double OUTLINED_FUNCTION_32_16()
{
  _sSo14LNActionOutputCSgs5Error_pSgIeggg_SgWOy_0(v0, v1);

  return result;
}

uint64_t OUTLINED_FUNCTION_36_12(uint64_t a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  return swift_storeEnumTagMultiPayload();
}

Swift::Bool __swiftcall AppInstallInfoProvider.isShortcutsAppInstalled()()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  v1 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(0xD000000000000013, 0x800000000022F740, 0);
  v3 = v1;
  if (!v1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "#SiriLinkFlowPlugin cannot find application record for Shortcuts", v5, 2u);
    }

    goto LABEL_14;
  }

  v6 = [v1 applicationState];
  v7 = [v6 isInstalled];

  if ((v7 & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "#SiriLinkFlowPlugin Shortcuts app is not installed on device", v12, 2u);
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

uint64_t UsoVoiceCommandsCustomTask.getArguments()()
{
  v2 = v1;
  v3 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    goto LABEL_74;
  }

LABEL_2:
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *&v76[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = (*(*v3 + 104))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v76);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v12 = (*(*v3 + 112))(v11);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v76);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_0, v5, v6, "Attempting to convert USOGraph for verb: %s bundleId: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (!*(v3 + 16))
  {
    type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v64 = 0xD000000000000016;
    v64[1] = 0x80000000002343C0;
    OUTLINED_FUNCTION_21_2();
    (*(v65 + 104))();
    return swift_willThrow();
  }

  v3 = UsoTask.arguments.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v72 = Dictionary.init(dictionaryLiteral:)();
  v15 = 0;
  v16 = v3 + 64;
  v68 = v3 + 64;
  v69 = v3;
  v17 = 1 << *(v3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v3 + 64);
  v20 = (v17 + 63) >> 6;
  v66 = v2;
  v67 = v20;
  if (!v19)
  {
LABEL_8:
    while (1)
    {
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        return v72;
      }

      v19 = *(v16 + 8 * v21);
      ++v15;
      if (v19)
      {
        v15 = v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  while (1)
  {
LABEL_12:
    v70 = v19;
    v71 = v15;
    v22 = __clz(__rbit64(v19)) | (v15 << 6);
    v23 = (*(v69 + 48) + 16 * v22);
    v73 = *v23;
    v75 = v23[1];
    v24 = *(*(v69 + 56) + 8 * v22);
    if (v24 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        goto LABEL_48;
      }

LABEL_14:
      if (v3 >= 1)
      {

        v2 = 0;
        v25 = _swiftEmptyArrayStorage;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v26 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
          if (v27)
          {
            v28 = v26;
            v29 = v27;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_41();
              v25 = v41;
            }

            v30 = v25[2];
            if (v30 >= v25[3] >> 1)
            {
              OUTLINED_FUNCTION_2_46();
              v25 = v42;
            }

            v25[2] = v30 + 1;
            v31 = &v25[2 * v30];
            v31[4] = v28;
            v31[5] = v29;
          }

          if (dispatch thunk of UsoValue.getAsEntity()())
          {
            v32 = UsoEntity.attributes.getter();

            if (*(v32 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(0x6156676E69727473, 0xEB0000000065756CLL), (v34 & 1) != 0))
            {
              v35 = *(*(v32 + 56) + 8 * v33);

              if (v35 >> 62)
              {
                if (!_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_45:

                  goto LABEL_41;
                }
              }

              else if (!*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_45;
              }

              if ((v35 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_70;
                }
              }

              v36 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
              if (v37)
              {
                v38 = v37;
                v74 = v36;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_3_41();
                  v25 = v43;
                }

                v39 = v25[2];
                if (v39 >= v25[3] >> 1)
                {
                  OUTLINED_FUNCTION_2_46();
                  v25 = v44;
                }

                v25[2] = v39 + 1;
                v40 = &v25[2 * v39];
                v40[4] = v74;
                v40[5] = v38;
                goto LABEL_41;
              }
            }

            else
            {
            }
          }

LABEL_41:
          if (v3 == ++v2)
          {

            v2 = v66;
            goto LABEL_49;
          }
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
      goto LABEL_2;
    }

    v3 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_48:

    v25 = _swiftEmptyArrayStorage;
LABEL_49:
    v3 = v25[2];
    if (v3)
    {
      v77 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
      v45 = v77;
      v46 = v25 + 5;
      do
      {

        swift_dynamicCast();
        v77 = v45;
        v48 = v45[2];
        v47 = v45[3];
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
          v45 = v77;
        }

        v45[2] = v48 + 1;
        outlined init with take of Any(v76, &v45[4 * v48 + 4]);
        v46 += 2;
        --v3;
      }

      while (v3);
    }

    else
    {

      v45 = _swiftEmptyArrayStorage;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v76[0] = v72;
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v75);
    v52 = *(v72 + 16);
    v53 = (v51 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_71;
    }

    v3 = v50;
    v55 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSayypGGMd, &_ss17_NativeDictionaryVySSSayypGGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v54))
    {
      break;
    }

    v16 = v68;
LABEL_61:
    v58 = *&v76[0];
    v72 = *&v76[0];
    if (v55)
    {
      *(*(*&v76[0] + 56) + 8 * v3) = v45;
    }

    else
    {
      *(*&v76[0] + 8 * (v3 >> 6) + 64) |= 1 << v3;
      v59 = (v58[6] + 16 * v3);
      *v59 = v73;
      v59[1] = v75;
      *(v58[7] + 8 * v3) = v45;
      v60 = v58[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_73;
      }

      v58[2] = v62;
    }

    v15 = v71;
    v19 = (v70 - 1) & v70;
    v20 = v67;
    if (!v19)
    {
      goto LABEL_8;
    }
  }

  v56 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v75);
  v16 = v68;
  if ((v55 & 1) == (v57 & 1))
  {
    v3 = v56;
    goto LABEL_61;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t UsoVoiceCommandsCustomTask.verb.getter()
{
  if (*(v0 + 16))
  {
    return UsoTask.verbString.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t UsoVoiceCommandsCustomTask.bundleId.getter()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  UsoTask.baseEntityAsString.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v1;
}

unint64_t UsoVoiceCommandsCustomTask.bundleIdWithCustomIntentTypePrefix.getter()
{
  v1._countAndFlagsBits = (*(*v0 + 112))();
  String.append(_:)(v1);

  return 0xD000000000000017;
}

uint64_t UsoVoiceCommandsCustomTask.fullyQualifiedIntentWithBundleId.getter()
{
  v8 = (*(*v0 + 120))();

  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);

  v3 = (*(*v0 + 104))(v2);
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return v8;
}

uint64_t one-time initialization function for customIntentTransformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.customIntentTransformer);
  __swift_project_value_buffer(v0, static Transformer<>.customIntentTransformer);
  type metadata accessor for UsoTask();
  type metadata accessor for INIntent();
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.customIntentTransformer);
  __swift_project_value_buffer(v0, static Transformer<>.customIntentTransformer);
  type metadata accessor for UsoVoiceCommandsCustomTask();
  type metadata accessor for INIntent();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.customIntentTransformer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  type metadata accessor for UsoVoiceCommandsCustomTask();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = one-time initialization token for customIntentTransformer;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMR);
  __swift_project_value_buffer(v8, static Transformer<>.customIntentTransformer);
  v9 = Transformer.transform.getter();
  v12 = v6;
  v9(&v11, &v12);

  if (!v3)
  {
    *a2 = v11;
  }

  return result;
}

uint64_t Transformer<>.customIntentTransformer.unsafeMutableAddressor()
{
  if (one-time initialization token for customIntentTransformer != -1)
  {
    OUTLINED_FUNCTION_1_52(&one-time initialization token for customIntentTransformer);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.customIntentTransformer);
}

{
  if (one-time initialization token for customIntentTransformer != -1)
  {
    OUTLINED_FUNCTION_0_33(&one-time initialization token for customIntentTransformer);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.customIntentTransformer);
}

uint64_t static Transformer<>.customIntentTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for customIntentTransformer != -1)
  {
    OUTLINED_FUNCTION_0_33(&one-time initialization token for customIntentTransformer);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMR);
  __swift_project_value_buffer(v2, static Transformer<>.customIntentTransformer);
  OUTLINED_FUNCTION_21_2();
  v4 = *(v3 + 16);

  return v4(a1);
}

{
  if (one-time initialization token for customIntentTransformer != -1)
  {
    OUTLINED_FUNCTION_1_52(&one-time initialization token for customIntentTransformer);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMR);
  __swift_project_value_buffer(v2, static Transformer<>.customIntentTransformer);
  OUTLINED_FUNCTION_21_2();
  v4 = *(v3 + 16);

  return v4(a1);
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.customIntentTransformer(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = (*(**a1 + 96))();
  v6 = v2;
  if (v2)
  {
    return;
  }

  v7 = v5;
  v238 = a2;
  v239 = *(*v4 + 128);
  v240 = v4;
  v239();
  v8 = String._bridgeToObjectiveC()();

  v9 = INIntentCreate();

  v10 = Dictionary.init(dictionaryLiteral:)();
  v11 = v10;
  v12 = v7 + 64;
  v13 = 1 << *(v7 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v7 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10;
  v244 = v9;
  v241 = v7;
  v242 = v7 + 64;
  v243 = v16;
LABEL_5:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v257 = v11;
        if (v15)
        {
          goto LABEL_10;
        }

        do
        {
          v18 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
            goto LABEL_246;
          }

          if (v18 >= v16)
          {

            swift_isUniquelyReferenced_nonNull_native();
            *&v269 = _swiftEmptyDictionarySingleton;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, 0x6574656D61726170, 0xEA00000000007372);
            if (one-time initialization token for voiceCommands == -1)
            {
LABEL_227:
              v210 = type metadata accessor for Logger();
              __swift_project_value_buffer(v210, static Logger.voiceCommands);

              v211 = Logger.logObject.getter();
              v212 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v211, v212))
              {
                v213 = swift_slowAlloc();
                v214 = swift_slowAlloc();
                *&v269 = v214;
                *v213 = 136315138;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
                v215 = Dictionary.description.getter();
                v217 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v215, v216, &v269);
                v9 = v244;

                *(v213 + 4) = v217;
                _os_log_impl(&dword_0, v211, v212, "Creating custom intent with parameters converted from custom USOGraph: %s", v213, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v214);
              }

              v218 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              *&v269 = 0;
              v220 = [v218 dataWithJSONObject:isa options:1 error:&v269];

              v221 = v269;
              if (v220)
              {
                v222 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v224 = v223;

                v239();
                v225 = String._bridgeToObjectiveC()();

                v226 = Data._bridgeToObjectiveC()().super.isa;
                v227 = INIntentCreate();

                if (v227)
                {
                  v228 = *(*v240 + 112);
                  v229 = v228();
                  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v229, v230, v227, &selRef__setLaunchId_);
                  v231 = [v227 _metadata];
                  if (v231)
                  {
                    v232 = v231;
                    v233 = v228();
                    outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v233, v234, v232, &selRef_setLaunchId_);

                    outlined consume of Data._Representation(v222, v224);
                  }

                  else
                  {

                    outlined consume of Data._Representation(v222, v224);
                  }

                  *v238 = v227;
                }

                else
                {
                  v236 = type metadata accessor for TransformationError();
                  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
                  swift_allocError();
                  *v237 = 0xD000000000000030;
                  v237[1] = 0x8000000000234440;
                  (*(*(v236 - 8) + 104))(v237, enum case for TransformationError.cannotTransform(_:), v236);
                  swift_willThrow();

                  outlined consume of Data._Representation(v222, v224);
                }
              }

              else
              {
                v235 = v221;
                _convertNSErrorToError(_:)();

                swift_willThrow();
              }

              return;
            }

LABEL_246:
            swift_once();
            goto LABEL_227;
          }

          v15 = *(v12 + 8 * v18);
          ++v6;
        }

        while (!v15);
        v6 = v18;
LABEL_10:
        v246 = (v15 - 1) & v15;
        v19 = __clz(__rbit64(v15)) | (v6 << 6);
        v20 = (*(v7 + 48) + 16 * v19);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(*(v7 + 56) + 8 * v19);

        v245 = v6;
        if (!v9)
        {
          v54 = 0;
          goto LABEL_38;
        }

        v24 = [v9 _codableDescription];
        v259 = v21;
        v25 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(v21, v22, v24);

        if (!v25)
        {
          v54 = 0;
LABEL_37:
          v21 = v259;
LABEL_38:

          v55 = static Transformer<>.convertAllOtherParams(attribute:parameter:values:)(v54, v21, v22, v23);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          specialized LazyMapSequence.makeIterator()(v55, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v274);
          v9 = v274[1];
          v57 = v274[3];
          v58 = v274[4];
          v249 = v274[5];
          v252 = v274[0];
          v59 = (v274[2] + 64) >> 6;

          v260 = v257;
          while (1)
          {
            if (v58)
            {
              v255 = isUniquelyReferenced_nonNull_native;
              v60 = v58;
              v61 = v57;
              goto LABEL_46;
            }

            v62 = v57;
            do
            {
              v61 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                __break(1u);
                goto LABEL_238;
              }

              if (v61 >= v59)
              {
                goto LABEL_60;
              }

              v60 = *(v9 + v61);
              ++v62;
            }

            while (!v60);
            v255 = isUniquelyReferenced_nonNull_native;
LABEL_46:
            v63 = __clz(__rbit64(v60)) | (v61 << 6);
            v64 = (*(v252 + 48) + 16 * v63);
            v66 = *v64;
            v65 = v64[1];
            outlined init with copy of Any(*(v252 + 56) + 32 * v63, &v263);
            *&v266 = v66;
            *(&v266 + 1) = v65;
            outlined init with take of Any(&v263, &v267);
            v67 = v266;

            if (!*(&v67 + 1))
            {
LABEL_60:
              v271 = 0u;
              v269 = 0u;
              v270 = 0u;
LABEL_61:
              v12 = v242;
              v16 = v243;
              v6 = v245;
              v15 = v246;
              v17 = v260;

              outlined consume of Set<String>.Iterator._Variant(v252);

              v11 = v260;
              v9 = v244;
              v7 = v241;
              goto LABEL_5;
            }

            v263 = v67;
            v264 = v267;
            v265 = v268;
            v249(&v269, &v263);
            outlined destroy of Siri_Nlu_External_UserDialogAct?(&v263, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
            v68 = *(&v269 + 1);
            if (!*(&v269 + 1))
            {
              goto LABEL_61;
            }

            v69 = v269;
            outlined init with take of Any(&v270, &v266);
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v68);
            v72 = v260[2];
            v73 = (v70 & 1) == 0;
            v74 = v72 + v73;
            if (__OFADD__(v72, v73))
            {
              goto LABEL_241;
            }

            v75 = v70;
            if (v260[3] >= v74)
            {
              if (v255)
              {
                if (v70)
                {
                  goto LABEL_56;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
                _NativeDictionary.copy()();
                if (v75)
                {
                  goto LABEL_56;
                }
              }

LABEL_52:
              v257[(v71 >> 6) + 8] |= 1 << v71;
              v78 = (v257[6] + 16 * v71);
              *v78 = v69;
              v78[1] = v68;
              outlined init with take of Any(&v266, (v257[7] + 32 * v71));
              v79 = v257[2];
              v51 = __OFADD__(v79, 1);
              v80 = v79 + 1;
              if (!v51)
              {
                v260 = v257;
                v257[2] = v80;
                goto LABEL_57;
              }

              goto LABEL_242;
            }

            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, v255 & 1);
            v76 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v68);
            if ((v75 & 1) != (v77 & 1))
            {
              goto LABEL_258;
            }

            v71 = v76;
            if ((v75 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_56:

            v260 = v257;
            v81 = (v257[7] + 32 * v71);
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            outlined init with take of Any(&v266, v81);
LABEL_57:
            v58 = (v60 - 1) & v60;
            isUniquelyReferenced_nonNull_native = 1;
            v57 = v61;
          }
        }

        objc_opt_self();
        v247 = v25;
        if (swift_dynamicCastObjCClass())
        {

          v26 = static Transformer<>.convertCustomObject(attribute:parameter:values:)(v25, v259, v22, v23);

          v27 = swift_isUniquelyReferenced_nonNull_native();
          v262 = v17;
          specialized LazyMapSequence.makeIterator()(v26, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v272);
          v9 = v272[1];
          v28 = v272[3];
          v29 = v272[4];
          v248 = v272[5];
          v251 = v272[0];
          v30 = (v272[2] + 64) >> 6;

          v258 = v17;
          while (1)
          {
            if (v29)
            {
              v254 = v27;
              v31 = v29;
              v32 = v28;
            }

            else
            {
              v33 = v28;
              do
              {
                v32 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_239;
                }

                if (v32 >= v30)
                {
                  goto LABEL_62;
                }

                v31 = *(v9 + v32);
                ++v33;
              }

              while (!v31);
              v254 = v27;
            }

            v34 = __clz(__rbit64(v31)) | (v32 << 6);
            v35 = (*(v251 + 48) + 16 * v34);
            v37 = *v35;
            v36 = v35[1];
            outlined init with copy of Any(*(v251 + 56) + 32 * v34, &v263);
            *&v266 = v37;
            *(&v266 + 1) = v36;
            outlined init with take of Any(&v263, &v267);
            v38 = v266;

            if (!*(&v38 + 1))
            {
LABEL_62:
              v271 = 0u;
              v269 = 0u;
              v270 = 0u;
LABEL_63:
              v7 = v241;
              v16 = v243;
              v15 = v246;
              v11 = v258;

              outlined consume of Set<String>.Iterator._Variant(v251);

              v17 = v258;
LABEL_89:
              v9 = v244;
              v6 = v245;
              v12 = v242;
              goto LABEL_5;
            }

            v263 = v38;
            v264 = v267;
            v265 = v268;
            v248(&v269, &v263);
            outlined destroy of Siri_Nlu_External_UserDialogAct?(&v263, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
            v39 = *(&v269 + 1);
            if (!*(&v269 + 1))
            {
              goto LABEL_63;
            }

            v40 = v269;
            outlined init with take of Any(&v270, &v266);
            v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v39);
            v43 = v258[2];
            v44 = (v41 & 1) == 0;
            v45 = v43 + v44;
            if (__OFADD__(v43, v44))
            {
              goto LABEL_243;
            }

            v46 = v41;
            if (v258[3] >= v45)
            {
              if (v254)
              {
                if (v41)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
                _NativeDictionary.copy()();
                if (v46)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, v254 & 1);
              v47 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v39);
              if ((v46 & 1) != (v48 & 1))
              {
                goto LABEL_258;
              }

              v42 = v47;
              if (v46)
              {
LABEL_31:

                v258 = v262;
                v53 = (v262[7] + 32 * v42);
                __swift_destroy_boxed_opaque_existential_1Tm(v53);
                outlined init with take of Any(&v266, v53);
                goto LABEL_32;
              }
            }

            v262[(v42 >> 6) + 8] |= 1 << v42;
            v49 = (v262[6] + 16 * v42);
            *v49 = v40;
            v49[1] = v39;
            outlined init with take of Any(&v266, (v262[7] + 32 * v42));
            v50 = v262[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_244;
            }

            v258 = v262;
            v262[2] = v52;
LABEL_32:
            v29 = (v31 - 1) & v31;
            v27 = 1;
            v28 = v32;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v82 = static Transformer<>.convertEnum(attribute:parameter:values:)(v25, v259, v22, v23);

          v83 = swift_isUniquelyReferenced_nonNull_native();
          specialized LazyMapSequence.makeIterator()(v82, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v273);
          v9 = v273[1];
          v84 = v273[3];
          v85 = v273[4];
          v250 = v273[5];
          v253 = v273[0];
          v86 = (v273[2] + 64) >> 6;

          v261 = v257;
          if (!v85)
          {
            goto LABEL_67;
          }

          while (2)
          {
            v256 = v83;
            v87 = v85;
            v88 = v84;
LABEL_72:
            v90 = __clz(__rbit64(v87)) | (v88 << 6);
            v91 = (*(v253 + 48) + 16 * v90);
            v93 = *v91;
            v92 = v91[1];
            outlined init with copy of Any(*(v253 + 56) + 32 * v90, &v263);
            *&v266 = v93;
            *(&v266 + 1) = v92;
            outlined init with take of Any(&v263, &v267);
            v94 = v266;

            if (!*(&v94 + 1))
            {
LABEL_87:
              v271 = 0u;
              v269 = 0u;
              v270 = 0u;
LABEL_88:
              v7 = v241;
              v16 = v243;
              v15 = v246;
              v17 = v261;

              outlined consume of Set<String>.Iterator._Variant(v253);

              v11 = v261;
              goto LABEL_89;
            }

            v263 = v94;
            v264 = v267;
            v265 = v268;
            v250(&v269, &v263);
            outlined destroy of Siri_Nlu_External_UserDialogAct?(&v263, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
            v95 = *(&v269 + 1);
            if (!*(&v269 + 1))
            {
              goto LABEL_88;
            }

            v96 = v269;
            outlined init with take of Any(&v270, &v266);
            v98 = specialized __RawDictionaryStorage.find<A>(_:)(v96, v95);
            v99 = v261[2];
            v100 = (v97 & 1) == 0;
            v101 = v99 + v100;
            if (__OFADD__(v99, v100))
            {
              goto LABEL_245;
            }

            v102 = v97;
            if (v261[3] >= v101)
            {
              if (v256)
              {
                if ((v97 & 1) == 0)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
                _NativeDictionary.copy()();
                if ((v102 & 1) == 0)
                {
                  goto LABEL_78;
                }
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v101, v256 & 1);
              v103 = specialized __RawDictionaryStorage.find<A>(_:)(v96, v95);
              if ((v102 & 1) != (v104 & 1))
              {
                goto LABEL_258;
              }

              v98 = v103;
              if ((v102 & 1) == 0)
              {
LABEL_78:
                v257[(v98 >> 6) + 8] |= 1 << v98;
                v105 = (v257[6] + 16 * v98);
                *v105 = v96;
                v105[1] = v95;
                outlined init with take of Any(&v266, (v257[7] + 32 * v98));
                v106 = v257[2];
                v51 = __OFADD__(v106, 1);
                v107 = v106 + 1;
                if (v51)
                {
                  __break(1u);
                  goto LABEL_248;
                }

                v261 = v257;
                v257[2] = v107;
                goto LABEL_83;
              }
            }

            v261 = v257;
            v108 = (v257[7] + 32 * v98);
            __swift_destroy_boxed_opaque_existential_1Tm(v108);
            outlined init with take of Any(&v266, v108);
LABEL_83:
            v85 = (v87 - 1) & v87;
            v83 = 1;
            v84 = v88;
            if (v85)
            {
              continue;
            }

            break;
          }

LABEL_67:
          v89 = v84;
          do
          {
            v88 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              goto LABEL_240;
            }

            if (v88 >= v86)
            {
              goto LABEL_87;
            }

            v87 = *(v9 + v88);
            ++v89;
          }

          while (!v87);
          v256 = v83;
          goto LABEL_72;
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          v54 = v25;
          goto LABEL_37;
        }

        if (!*(v23 + 16) || (outlined init with copy of Any(v23 + 32, &v269), (swift_dynamicCast() & 1) == 0))
        {

          v16 = v243;
          v15 = v246;
          v11 = v257;
          continue;
        }

        break;
      }

      v109 = v266;
      if ([v25 valueType] != &dword_18 + 3)
      {
        v127 = String.lowercased()();

        v128 = v127._countAndFlagsBits == 97 && v127._object == 0xE100000000000000;
        if (v128 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v129 = v6;

          *(&v270 + 1) = &type metadata for Int;
          *&v269 = 1;
          outlined init with take of Any(&v269, &v266);
          v130 = swift_isUniquelyReferenced_nonNull_native();
          *&v263 = v257;
          v131 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
          v133 = v257[2];
          v134 = (v132 & 1) == 0;
          v135 = v133 + v134;
          if (!__OFADD__(v133, v134))
          {
            v123 = v131;
            v136 = v132;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v130, v135))
            {
              v137 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
              v12 = v242;
              if ((v136 & 1) != (v138 & 1))
              {
                goto LABEL_258;
              }

              v123 = v137;
            }

            else
            {
              v12 = v242;
            }

            v6 = v129;
            v11 = v263;
            if ((v136 & 1) == 0)
            {
              *(v263 + 8 * (v123 >> 6) + 64) |= 1 << v123;
              v143 = (v11[6] + 16 * v123);
              *v143 = v259;
              v143[1] = v22;
              outlined init with take of Any(&v266, (v11[7] + 32 * v123));
              v144 = v11[2];
              v51 = __OFADD__(v144, 1);
              v141 = v144 + 1;
              if (!v51)
              {
LABEL_122:
                v11[2] = v141;

                goto LABEL_123;
              }

LABEL_251:
              __break(1u);
            }

            goto LABEL_120;
          }

LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v145 = v127._countAndFlagsBits == 6647407 && v127._object == 0xE300000000000000;
        if (v145 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v146 = v6;

          *(&v270 + 1) = &type metadata for Int;
          *&v269 = 1;
          outlined init with take of Any(&v269, &v266);
          v147 = swift_isUniquelyReferenced_nonNull_native();
          *&v263 = v257;
          v148 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
          v150 = v257[2];
          v151 = (v149 & 1) == 0;
          v152 = v150 + v151;
          if (__OFADD__(v150, v151))
          {
            __break(1u);
          }

          else
          {
            v123 = v148;
            v153 = v149;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v147, v152))
            {
              v154 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
              v12 = v242;
              if ((v153 & 1) != (v155 & 1))
              {
                goto LABEL_258;
              }

              v123 = v154;
            }

            else
            {
              v12 = v242;
            }

            v6 = v146;
            v11 = v263;
            if (v153)
            {
              goto LABEL_120;
            }

            *(v263 + 8 * (v123 >> 6) + 64) |= 1 << v123;
            v156 = (v11[6] + 16 * v123);
            *v156 = v259;
            v156[1] = v22;
            outlined init with take of Any(&v266, (v11[7] + 32 * v123));
            v157 = v11[2];
            v51 = __OFADD__(v157, 1);
            v141 = v157 + 1;
            if (!v51)
            {
              goto LABEL_122;
            }
          }

          __break(1u);
          goto LABEL_254;
        }

        v158 = v127._countAndFlagsBits == 7305076 && v127._object == 0xE300000000000000;
        if (v158 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v159 = v6;

          *(&v270 + 1) = &type metadata for Int;
          *&v269 = 2;
          outlined init with take of Any(&v269, &v266);
          v160 = swift_isUniquelyReferenced_nonNull_native();
          *&v263 = v257;
          v161 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
          v163 = v257[2];
          v164 = (v162 & 1) == 0;
          v165 = v163 + v164;
          if (!__OFADD__(v163, v164))
          {
            v166 = v161;
            v167 = v162;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v160, v165))
            {
              v169 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
              v12 = v242;
              if ((v167 & 1) != (v170 & 1))
              {
                goto LABEL_258;
              }

              v166 = v169;
            }

            else
            {
              v12 = v242;
            }

            v6 = v159;
            v11 = v263;
            if (v167)
            {
              v171 = (*(v263 + 56) + 32 * v166);
              __swift_destroy_boxed_opaque_existential_1Tm(v171);
              outlined init with take of Any(&v266, v171);
            }

            else
            {
              specialized _NativeDictionary._insert(at:key:value:)(v166, v259, v22, &v266, v263, v168);
            }

            v15 = v246;
            v17 = v11;
            v7 = v241;
            v16 = v243;
            continue;
          }

LABEL_254:
          __break(1u);
          goto LABEL_255;
        }

        v172 = v127._countAndFlagsBits == 0x6565726874 && v127._object == 0xE500000000000000;
        if (v172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          *(&v270 + 1) = &type metadata for Int;
          *&v269 = 3;
          outlined init with take of Any(&v269, &v266);
          v173 = swift_isUniquelyReferenced_nonNull_native();
          *&v263 = v257;
          v174 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
          v176 = v257[2];
          v177 = (v175 & 1) == 0;
          v178 = v176 + v177;
          if (__OFADD__(v176, v177))
          {
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
            goto LABEL_258;
          }
        }

        else
        {
          v185 = v127._countAndFlagsBits == 1920298854 && v127._object == 0xE400000000000000;
          if (v185 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            *(&v270 + 1) = &type metadata for Int;
            *&v269 = 4;
            outlined init with take of Any(&v269, &v266);
            v173 = swift_isUniquelyReferenced_nonNull_native();
            *&v263 = v257;
            v174 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
            v186 = v257[2];
            v187 = (v175 & 1) == 0;
            v178 = v186 + v187;
            if (__OFADD__(v186, v187))
            {
              goto LABEL_256;
            }
          }

          else
          {
            v188 = v127._countAndFlagsBits == 1702259046 && v127._object == 0xE400000000000000;
            if (v188 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              *(&v270 + 1) = &type metadata for Int;
              *&v269 = 5;
              outlined init with take of Any(&v269, &v266);
              v173 = swift_isUniquelyReferenced_nonNull_native();
              *&v263 = v257;
              v174 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
              v189 = v257[2];
              v190 = (v175 & 1) == 0;
              v178 = v189 + v190;
              if (__OFADD__(v189, v190))
              {
                goto LABEL_257;
              }
            }

            else
            {
              v191 = v127._countAndFlagsBits == 7891315 && v127._object == 0xE300000000000000;
              if (v191 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                *(&v270 + 1) = &type metadata for Int;
                *&v269 = 6;
                outlined init with take of Any(&v269, &v266);
                v173 = swift_isUniquelyReferenced_nonNull_native();
                *&v263 = v257;
                v174 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
                v192 = v257[2];
                v193 = (v175 & 1) == 0;
                v178 = v192 + v193;
                if (__OFADD__(v192, v193))
                {
                  goto LABEL_259;
                }
              }

              else
              {
                v194 = v127._countAndFlagsBits == 0x6E65766573 && v127._object == 0xE500000000000000;
                if (v194 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  *(&v270 + 1) = &type metadata for Int;
                  *&v269 = 7;
                  outlined init with take of Any(&v269, &v266);
                  v173 = swift_isUniquelyReferenced_nonNull_native();
                  *&v263 = v257;
                  v174 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
                  v195 = v257[2];
                  v196 = (v175 & 1) == 0;
                  v178 = v195 + v196;
                  if (__OFADD__(v195, v196))
                  {
                    goto LABEL_260;
                  }
                }

                else
                {
                  v197 = v127._countAndFlagsBits == 0x7468676965 && v127._object == 0xE500000000000000;
                  if (v197 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    *(&v270 + 1) = &type metadata for Int;
                    *&v269 = 8;
                    outlined init with take of Any(&v269, &v266);
                    v173 = swift_isUniquelyReferenced_nonNull_native();
                    *&v263 = v257;
                    v174 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
                    v198 = v257[2];
                    v199 = (v175 & 1) == 0;
                    v178 = v198 + v199;
                    if (__OFADD__(v198, v199))
                    {
                      goto LABEL_261;
                    }
                  }

                  else
                  {
                    v200 = v127._countAndFlagsBits == 1701734766 && v127._object == 0xE400000000000000;
                    if (!v200 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      if (v127._countAndFlagsBits == 7234932 && v127._object == 0xE300000000000000)
                      {
                      }

                      else
                      {
                        v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if ((v204 & 1) == 0)
                        {
                          if (one-time initialization token for voiceCommands != -1)
                          {
                            swift_once();
                          }

                          v205 = type metadata accessor for Logger();
                          __swift_project_value_buffer(v205, static Logger.voiceCommands);
                          v206 = Logger.logObject.getter();
                          v207 = static os_log_type_t.error.getter();
                          if (os_log_type_enabled(v206, v207))
                          {
                            v208 = swift_slowAlloc();
                            *v208 = 0;
                            _os_log_impl(&dword_0, v206, v207, "Rudimentary conversion of #s 1-10 are supported, Custom NL models will do the conversion in the future", v208, 2u);
                          }

                          v209 = static Transformer<>.convertAllOtherParams(attribute:parameter:values:)(v25, v259, v22, v23);

                          v11 = specialized Dictionary.merging(_:uniquingKeysWith:)(v209, v257);

                          goto LABEL_164;
                        }
                      }

                      *(&v270 + 1) = &type metadata for Int;
                      *&v269 = 10;
                      outlined init with take of Any(&v269, &v266);
                      swift_isUniquelyReferenced_nonNull_native();
                      *&v263 = v257;
                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v266, v259, v22);

                      v11 = v263;
LABEL_164:
                      v17 = v11;
                      v9 = v244;
                      v6 = v245;
                      v7 = v241;
                      v12 = v242;
                      v16 = v243;
                      v15 = v246;
                      continue;
                    }

                    *(&v270 + 1) = &type metadata for Int;
                    *&v269 = 9;
                    outlined init with take of Any(&v269, &v266);
                    v173 = swift_isUniquelyReferenced_nonNull_native();
                    *&v263 = v257;
                    v174 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
                    v201 = v257[2];
                    v202 = (v175 & 1) == 0;
                    v178 = v201 + v202;
                    if (__OFADD__(v201, v202))
                    {
                      goto LABEL_262;
                    }
                  }
                }
              }
            }
          }
        }

        v179 = v174;
        v180 = v175;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v173, v178))
        {
          v182 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
          if ((v180 & 1) != (v183 & 1))
          {
            goto LABEL_258;
          }

          v179 = v182;
        }

        v11 = v263;
        if (v180)
        {
          v184 = (*(v263 + 56) + 32 * v179);
          __swift_destroy_boxed_opaque_existential_1Tm(v184);
          outlined init with take of Any(&v266, v184);
        }

        else
        {
          specialized _NativeDictionary._insert(at:key:value:)(v179, v259, v22, &v266, v263, v181);
        }

        goto LABEL_164;
      }

      break;
    }

    v110 = v6;

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    __swift_project_value_buffer(v111, static Logger.voiceCommands);
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "Location resolution not currently supported with Custom NL", v114, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_216850;
    *(v115 + 32) = 1701667182;
    *(v115 + 40) = 0xE400000000000000;
    *(v115 + 48) = v109;
    v116 = Dictionary.init(dictionaryLiteral:)();
    *(&v270 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    *&v269 = v116;
    outlined init with take of Any(&v269, &v266);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    *&v263 = v257;
    v118 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
    v120 = v257[2];
    v121 = (v119 & 1) == 0;
    v122 = v120 + v121;
    if (__OFADD__(v120, v121))
    {
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    v123 = v118;
    v124 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v117, v122))
    {
      v12 = v242;
LABEL_114:
      v6 = v110;
      v11 = v263;
      if ((v124 & 1) == 0)
      {
        *(v263 + 8 * (v123 >> 6) + 64) |= 1 << v123;
        v139 = (v11[6] + 16 * v123);
        *v139 = v259;
        v139[1] = v22;
        outlined init with take of Any(&v266, (v11[7] + 32 * v123));
        v140 = v11[2];
        v51 = __OFADD__(v140, 1);
        v141 = v140 + 1;
        if (!v51)
        {
          goto LABEL_122;
        }

        goto LABEL_250;
      }

LABEL_120:
      v142 = (v11[7] + 32 * v123);
      __swift_destroy_boxed_opaque_existential_1Tm(v142);
      outlined init with take of Any(&v266, v142);

LABEL_123:
      v7 = v241;
      v16 = v243;
      v15 = v246;
      v17 = v11;
      continue;
    }

    break;
  }

  v125 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v22);
  v12 = v242;
  if ((v124 & 1) == (v126 & 1))
  {
    v123 = v125;
    goto LABEL_114;
  }

LABEL_258:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
}

uint64_t static Transformer<>.convertCustomObject(attribute:parameter:values:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = Dictionary.init(dictionaryLiteral:)();
  if (a1)
  {
    if ([a1 valueType] == &stru_B8.size + 1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        specialized Collection.first.getter(a4, &v25);
        if (v26)
        {
          outlined init with take of Any(&v25, v27);
          v9 = a1;
          if (INCodableAttribute.supportsMultipleValues.getter())
          {
            v22 = a2;
            v10 = *(a4 + 16);
            if (v10)
            {
              v11 = a4 + 32;
              v12 = _swiftEmptyArrayStorage;
              do
              {
                outlined init with copy of Any(v11, &v25);
                if (swift_dynamicCast())
                {
                  v13 = v24[0];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSSgtGMd, &_ss23_ContiguousArrayStorageCySS_SSSgtGMR);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_216850;
                  strcpy((inited + 32), "displayString");
                  *(inited + 46) = -4864;
                  *(inited + 48) = v13;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v15 = Dictionary.init(dictionaryLiteral:)();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v12 = v17;
                  }

                  v16 = v12[2];
                  if (v16 >= v12[3] >> 1)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v12 = v18;
                  }

                  v12[2] = v16 + 1;
                  v12[v16 + 4] = v15;
                }

                v11 += 32;
                --v10;
              }

              while (v10);
            }

            else
            {
              v12 = _swiftEmptyArrayStorage;
            }

            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SSgGGMd, &_sSaySDyS2SSgGGMR);
            *&v25 = v12;
            outlined init with take of Any(&v25, v24);

            swift_isUniquelyReferenced_nonNull_native();
            v23 = v8;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v22, a3);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
            v19 = swift_initStackObject();
            *(v19 + 16) = xmmword_216850;
            strcpy((v19 + 32), "displayString");
            *(v19 + 46) = -4864;
            outlined init with copy of Any(v27, v19 + 48);

            v20 = Dictionary.init(dictionaryLiteral:)();
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
            *&v25 = v20;
            outlined init with take of Any(&v25, v24);
            swift_isUniquelyReferenced_nonNull_native();
            v23 = v8;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a2, a3);
          }

          v8 = v23;
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
        }

        else
        {
          outlined destroy of Siri_Nlu_External_UserDialogAct?(&v25, &_sypSgMd, &_sypSgMR);
        }
      }
    }
  }

  return v8;
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t static Transformer<>.convertEnum(attribute:parameter:values:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = &type metadata for Any;
  v9 = Dictionary.init(dictionaryLiteral:)();
  if (!a1)
  {
    return v9;
  }

  if ([a1 valueType] != &stru_20.vmsize + 1)
  {
    return v9;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return v9;
  }

  v11 = v10;
  v12 = a1;
  v42 = v11;
  if ((INCodableAttribute.supportsMultipleValues.getter() & 1) == 0)
  {
    specialized Collection.first.getter(a4, &v46);
    if (!*(&v47 + 1))
    {

      outlined destroy of Siri_Nlu_External_UserDialogAct?(&v46, &_sypSgMd, &_sypSgMR);
      return v9;
    }

    if (swift_dynamicCast())
    {
      v46 = v43[0];
      *&v43[0] = 32;
      *(&v43[0] + 1) = 0xE100000000000000;
      v44 = 0;
      v45 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v29 = String.lowercased()();

      v30 = outlined bridged method (mbnn) of @objc INCodableEnumAttribute.value(withName:)(v29._countAndFlagsBits, v29._object, v11);
      if (v30)
      {
        v31 = v30;
        v32 = outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(v30);
        if (v33)
        {
          *(&v47 + 1) = &type metadata for String;
          *&v46 = v32;
          *(&v46 + 1) = v33;
          outlined init with take of Any(&v46, v43);

          swift_isUniquelyReferenced_nonNull_native();
          v44 = v9;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, a2, a3);

LABEL_25:

          return v44;
        }

        v46 = 0u;
        v47 = 0u;

        outlined destroy of Siri_Nlu_External_UserDialogAct?(&v46, &_sypSgMd, &_sypSgMR);
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
        if (v35)
        {
          v36 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v9;
          v38 = *(v9 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38);
          v9 = v44;

          outlined init with take of Any((*(v44 + 56) + 32 * v36), v43);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          memset(v43, 0, sizeof(v43));
        }

        outlined destroy of Siri_Nlu_External_UserDialogAct?(v43, &_sypSgMd, &_sypSgMR);
      }
    }

    return v9;
  }

  v39 = v12;
  v40 = v9;
  v41 = a3;
  v13 = *(a4 + 16);
  if (!v13)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_24:
    *(&v47 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    *&v46 = v15;
    outlined init with take of Any(&v46, v43);

    swift_isUniquelyReferenced_nonNull_native();
    v44 = v40;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, a2, v41);

    goto LABEL_25;
  }

  v14 = a4 + 32;
  v15 = _swiftEmptyArrayStorage;
  v16 = v11;
  while (1)
  {
    outlined init with copy of Any(v14, &v46);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_16:
    v14 += 32;
    if (!--v13)
    {
      goto LABEL_24;
    }
  }

  v17 = v8;
  v46 = v43[0];
  *&v43[0] = 32;
  *(&v43[0] + 1) = 0xE100000000000000;
  v44 = 0;
  v45 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = String.lowercased()();

  v19 = outlined bridged method (mbgnn) of @objc INCodableEnumAttribute.value(withName:)(v18._countAndFlagsBits, v18._object, v16);
  if (!v19)
  {

    goto LABEL_16;
  }

  v20 = v19;
  result = outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(v19);
  if (v22)
  {
    v23 = result;
    v24 = v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v27;
    }

    v25 = v15[2];
    if (v25 >= v15[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v28;
    }

    v15[2] = v25 + 1;
    v26 = &v15[2 * v25];
    v26[4] = v23;
    v26[5] = v24;
    v8 = v17;
    v16 = v42;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t static Transformer<>.convertAllOtherParams(attribute:parameter:values:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = Dictionary.init(dictionaryLiteral:)();
  if (a1)
  {
    v9 = a1;
    if (INCodableAttribute.supportsMultipleValues.getter())
    {
      v22 = v9;
      v10 = *(a4 + 16);
      if (v10)
      {
        v11 = a4 + 32;
        v12 = _swiftEmptyArrayStorage;
        do
        {
          outlined init with copy of Any(v11, &v25);
          if (swift_dynamicCast())
          {
            v13 = v24[0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v12 = v15;
            }

            v14 = v12[2];
            if (v14 >= v12[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v12 = v16;
            }

            v12[2] = v14 + 1;
            *&v12[2 * v14 + 4] = v13;
          }

          v11 += 32;
          --v10;
        }

        while (v10);
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      *&v25 = v12;
      outlined init with take of Any(&v25, v24);

      swift_isUniquelyReferenced_nonNull_native();
      v23 = v8;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a2, a3);

      goto LABEL_25;
    }
  }

  specialized Collection.first.getter(a4, &v25);
  if (v26)
  {
    if (swift_dynamicCast())
    {
      v26 = &type metadata for String;
      v25 = v24[0];
      outlined init with take of Any(&v25, v24);

      swift_isUniquelyReferenced_nonNull_native();
      v23 = v8;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a2, a3);
LABEL_25:

      return v23;
    }
  }

  else
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(&v25, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.voiceCommands);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Not all parameter types are supported in custom NL -> INIntent conversion.", v20, 2u);
  }

  return v8;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      outlined init with take of Any(v22, v34);
    }

    else
    {
      outlined init with copy of Any(v22, v34);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for INIntent()
{
  result = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntent);
  }

  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any(a4, a1);

  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v34);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v35;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      outlined consume of Set<String>.Iterator._Variant(v30);
    }

    v8 = v28;
    outlined init with take of Any(&v29, v27);
    v9 = *a5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
        _NativeDictionary.copy()();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a4 & 1);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        outlined init with copy of Any(v27, v26);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);

        v19 = (v18[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        outlined init with take of Any(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    outlined init with take of Any(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id outlined bridged method (mbnn) of @objc INCodableEnumAttribute.value(withName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 valueWithName:v4];

  return v5;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void specialized LazyMapSequence.Iterator.next()(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v10, v17);
    *&v18 = v13;
    *(&v18 + 1) = v12;
    outlined init with take of Any(v17, &v19);

    v14 = *(&v18 + 1);
    v15 = v18;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v14)
    {
      v16 = v1[5];
      *&v17[0] = v15;
      *(&v17[0] + 1) = v14;
      v17[1] = v19;
      v17[2] = v20;
      v16(v17);
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_52(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_46()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void OUTLINED_FUNCTION_3_41()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t WorkflowWatchSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowWatchSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = [objc_allocWithZone(SAAppsLaunchApp) init];
  v0[8] = v7;
  outlined bridged method (mbgnn) of @objc SAAppsLaunchApp.launchId.setter(v3, v2, v7);
  v8 = v7;
  v0[9] = specialized WorkflowWatchSnippetProvider.makeItemGroup(command:title:appBundleId:)(v8, v6, v4, v3, v2, v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v9 = swift_allocObject();
  v0[10] = v9;
  *(v9 + 16) = xmmword_216840;
  v10 = [v5 okButton];
  v11 = [v10 title];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v15 = [v5 cancelButton];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 title];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = v0[7];
  *(v9 + 48) = v16;
  *(v9 + 56) = v19;
  v25 = (*(*v20 + 168) + **(*v20 + 168));
  v21 = swift_task_alloc();
  v0[11] = v21;
  *v21 = v0;
  v21[1] = WorkflowWatchSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:);
  v22 = v0[6];
  v23 = v0[5];

  return v25(v9, v23, v22);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  v1 = *(v0 + 96);
  if (v1)
  {
    result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.denyText.getter(*(v0 + 96));
    if (v3)
    {
      v4 = OUTLINED_FUNCTION_3_42();
      result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.denyCommands.getter(v4);
      if (result)
      {
        v5 = OUTLINED_FUNCTION_4_45();

        result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.confirmText.getter(v1);
        if (v6)
        {
          v7 = OUTLINED_FUNCTION_3_42();
          result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.confirmCommands.getter(v7);
          if (result)
          {
            v8 = *(v0 + 72);
            v9 = OUTLINED_FUNCTION_4_45();

            result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v8);
            v27 = result;
            if (result)
            {
              v10 = v9;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              OUTLINED_FUNCTION_2_47();
              if (v12)
              {
                v23 = OUTLINED_FUNCTION_1_53(v11);
                OUTLINED_FUNCTION_11_26(v23, v24);
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (v27)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
                v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
              }

              else
              {
                v13.super.isa = 0;
              }

              v14 = *(v0 + 72);
              [v14 setTemplateItems:v13.super.isa];

              result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v14);
              v28 = result;
              if (result)
              {

                v15 = v5;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                OUTLINED_FUNCTION_2_47();
                if (v12)
                {
                  v25 = OUTLINED_FUNCTION_1_53(v16);
                  OUTLINED_FUNCTION_11_26(v25, v26);
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                if (v28)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
                  v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v17.super.isa = 0;
                }

                [*(v0 + 72) setTemplateItems:v17.super.isa];

                goto LABEL_20;
              }

LABEL_28:
              __break(1u);
              return result;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_20:
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = OUTLINED_FUNCTION_64(v20);
  *(v21 + 16) = xmmword_216010;
  *(v21 + 32) = v18;

  OUTLINED_FUNCTION_6_6();

  return v22(v21);
}

uint64_t WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  type metadata accessor for CATOption();
  v1[11] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  v1 = v0[5];
  v2 = [v1 interaction];
  v3 = [v2 intent];
  v0[12] = v3;

  v4 = [v1 interaction];
  v5 = [v4 intentResponse];
  v0[13] = v5;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);

  return WorkflowWatchSnippetProvider.makeIntentSnippet(intent:intentResponse:shortcutName:)(v3, v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 80);
    type metadata accessor for RunVoiceCommandCATs(0);
    static CATOption.defaultMode.getter();
    v3 = CATWrapper.__allocating_init(options:globals:)();
    *(v0 + 128) = v3;
    type metadata accessor for CATButtonLabelTemplating();
    inited = swift_initStackObject();
    *(v0 + 136) = inited;
    *(inited + 16) = v3;
    v5 = [v1 verb];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v0 + 144) = v8;
    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);

    return CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)(v2 + 16, v6, v8);
  }

  else
  {
    v11 = *(v0 + 96);

    OUTLINED_FUNCTION_6_6();

    return v12(_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  v1 = *(v0 + 176);
  if (v1)
  {
    result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.denyText.getter(*(v0 + 176));
    if (v3)
    {
      v4 = OUTLINED_FUNCTION_3_42();
      result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.denyCommands.getter(v4);
      if (result)
      {
        v5 = OUTLINED_FUNCTION_4_45();

        result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.confirmText.getter(v1);
        if (v6)
        {
          v7 = OUTLINED_FUNCTION_3_42();
          result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.confirmCommands.getter(v7);
          if (result)
          {
            v8 = *(v0 + 120);
            v9 = OUTLINED_FUNCTION_4_45();

            result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v8);
            v24 = result;
            if (result)
            {
              v10 = v9;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              OUTLINED_FUNCTION_2_47();
              if (v12)
              {
                OUTLINED_FUNCTION_1_53(v11);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (v24)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
                v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
              }

              else
              {
                v13.super.isa = 0;
              }

              v17 = *(v0 + 120);
              [v17 setTemplateItems:{v13.super.isa, v24}];

              result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v17);
              v25 = result;
              if (result)
              {

                v18 = v5;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                OUTLINED_FUNCTION_2_47();
                if (v12)
                {
                  OUTLINED_FUNCTION_1_53(v19);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                if (v25)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
                  v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v20.super.isa = 0;
                }

                v14 = *(v0 + 120);
                v16 = *(v0 + 96);
                v15 = *(v0 + 104);
                [v14 setTemplateItems:{v20.super.isa, v25}];

                goto LABEL_20;
              }

LABEL_28:
              __break(1u);
              return result;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  v14 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);

LABEL_20:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = OUTLINED_FUNCTION_64(v21);
  *(v22 + 16) = xmmword_216010;
  *(v22 + 32) = v14;

  OUTLINED_FUNCTION_6_6();

  return v23(v22);
}

uint64_t WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  v3[20] = a1;

  v10 = (*(*v4 + 168) + **(*v4 + 168));
  v6 = swift_task_alloc();
  v3[21] = v6;
  *v6 = v5;
  v6[1] = WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);
  v7 = v3[9];
  v8 = v3[8];

  return v10(a1, v8, v7);
}

uint64_t WorkflowWatchSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a4;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowWatchSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)()
{
  v1 = WorkflowWatchSnippetProvider.cardSectionsFromDetailedSelectionItems(disambiguationItems:appBundleId:)(v0[2], v0[3], v0[4]);
  v2 = [objc_allocWithZone(SASTItemGroup) init];

  if (v1 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v3 = v1;
  }

  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v3, v2);
  v4 = v2;
  [v4 setCanUseServerTTS:1];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_64(v5);
  *(v6 + 16) = xmmword_216010;
  *(v6 + 32) = v4;

  OUTLINED_FUNCTION_6_6();

  return v7(v6);
}

void *WorkflowWatchSnippetProvider.cardSectionsFromDetailedSelectionItems(disambiguationItems:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v23 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (a1 + 80);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v12 = *v6;
      *&v16 = *(v6 - 6);
      *(&v16 + 1) = v7;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = v12;
      v13 = v10;

      v14 = v12;

      closure #1 in WorkflowWatchSnippetProvider.cardSectionsFromDetailedSelectionItems(disambiguationItems:appBundleId:)(&v16, &v22);
      v15 = v19;

      v6 += 7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
    return v23;
  }

  return result;
}

void closure #1 in WorkflowWatchSnippetProvider.cardSectionsFromDetailedSelectionItems(disambiguationItems:appBundleId:)(__int128 *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v24 = *a1;
  v25 = v2;
  v26 = a1[2];
  v27 = *(a1 + 6);
  v3 = [objc_allocWithZone(SAUIDecoratedText) init];
  v4 = specialized DisambiguationItemProtocol.toDisplayString()();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v4, v5, v3);
  v6 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  v20 = v26;
  v7 = static SLFDisambiguationItemConverter.toDirectInvocationPayload(title:)(v24, *(&v24 + 1));
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v8 = DeviceState.asInvocationContext.getter();
  [v8 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v9 = objc_opt_self();
  v21 = v7;
  v10 = [v9 runSiriKitExecutorCommandWithContext:v8 payload:v7];
  v11 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v12 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setBundleId:v13];

  [v11 setRequestedApp:v12];
  [v10 setAppSelectionState:v11];

  v14 = [v9 wrapCommandInStartLocalRequest:v10];
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = v14;
  v16 = v14;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v15, v6);
  v17 = [objc_allocWithZone(SASTColumnDataListItem) init];
  [v17 setTitle:v3];
  [v17 setAction:v6];
  if (v20)
  {
    v18 = v20;
    v19 = static OutputUtils.buildNanoImage(from:)(v18);
    [v17 setImageResource:v19];
  }

  *a2 = v17;
}

uint64_t WorkflowWatchSnippetProvider.makeIntentSnippet(intent:intentResponse:shortcutName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowWatchSnippetProvider.makeIntentSnippet(intent:intentResponse:shortcutName:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#WorkflowWatchSnippetProvider building intents snippet", v4, 2u);
  }

  v5 = *(v0 + 24);

  if (v5)
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = outlined bridged method (pb) of @objc INIntent.launchId.getter(v6);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = *(v0 + 32);
      v13 = *(v0 + 16);
      type metadata accessor for App();

      App.__allocating_init(appIdentifier:)();
      type metadata accessor for SAIntentGroupLaunchAppWithIntent();
      v14 = v7;
      v15 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();

      static LocaleUtils.siriLanguageCode()();
      v16 = String._bridgeToObjectiveC()();

      v17 = [v13 _titleForLanguage:v16];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = v15;
      v22 = specialized WorkflowWatchSnippetProvider.makeItemGroup(command:title:appBundleId:)(v21, v18, v20, v10, v11, v12);

      goto LABEL_10;
    }
  }

  v22 = 0;
LABEL_10:
  OUTLINED_FUNCTION_6_6();

  return v23(v22);
}

id WorkflowWatchSnippetProvider.makeBodyText(intentTitle:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SAUIDecoratedText) init];
  outlined bridged method (mbgnn) of @objc SAUIDecoratedText.text.setter(a1, a2, v4);
  v5 = [objc_allocWithZone(SASTLineDetailItem) init];
  [v5 setTitle:v4];

  return v5;
}

id WorkflowWatchSnippetProvider.getButtonItemForLabel(label:commands:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_allocWithZone(SAUIDecoratedText) init];
  v5 = OUTLINED_FUNCTION_9_26();
  outlined bridged method (mbgnn) of @objc SAUIDecoratedText.text.setter(v5, v6, v7);
  v8 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  outlined bridged method (mbgnn) of @objc SASTCommandTemplateAction.commands.setter(a3, v8);
  v9 = [objc_allocWithZone(SASTButtonItem) init];
  [v9 setDecoratedLabel:v3];
  [v9 setCentered:1];
  [v9 setAction:v8];

  return v9;
}

void outlined bridged method (mbgnn) of @objc SAUIDecoratedText.text.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setText:v4];
}

void outlined bridged method (mbgnn) of @objc SASTApplicationBannerItem.bundleId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setBundleId:v4];
}

void outlined bridged method (mbgnn) of @objc SASTCommandTemplateAction.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setCommands:isa];
}

id specialized WorkflowWatchSnippetProvider.makeItemGroup(command:title:appBundleId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized WorkflowWatchSnippetProvider.makeApplicationBanner(appBundleId:command:)(a4, a5, a1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v9 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  v8 = *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (v9 >= v8 >> 1)
  {
    OUTLINED_FUNCTION_11_26(v8 > 1, v9 + 1);
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  WorkflowWatchSnippetProvider.makeBodyText(intentTitle:)(a2, a3);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v11 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  v10 = *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (v11 >= v10 >> 1)
  {
    OUTLINED_FUNCTION_11_26(v10 > 1, v11 + 1);
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v12 = [objc_allocWithZone(SASTItemGroup) init];
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(_swiftEmptyArrayStorage, v12);
  return v12;
}

void *specialized WorkflowWatchSnippetProvider.makeApplicationBanner(appBundleId:command:)(uint64_t a1, uint64_t a2, void *a3)
{
  [objc_allocWithZone(SASTApplicationBannerItem) init];
  v5 = OUTLINED_FUNCTION_9_26();
  outlined bridged method (mbgnn) of @objc SASTApplicationBannerItem.bundleId.setter(v5, v6, v7);
  v8 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_64(v9);
  *(v10 + 16) = xmmword_216010;
  *(v10 + 32) = a3;
  v11 = a3;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v10, v8);
  [v3 setAction:v8];

  return v3;
}

id OUTLINED_FUNCTION_4_45()
{

  return WorkflowWatchSnippetProvider.getButtonItemForLabel(label:commands:)(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_11_26(uint64_t a1, uint64_t a2)
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin20InputCompletionStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void DescribeCustomIntentItemCatTemplater.makeTemplate(item:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static DialogHelper.globals.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v9 = Dictionary.init(dictionaryLiteral:)();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = 0xD000000000000028;
  v14[5] = 0x800000000022E9B0;
  aBlock[4] = partial apply for closure #1 in DescribeCustomIntentItemCatTemplater.makeTemplate(item:_:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_7;
  v15 = _Block_copy(aBlock);

  [v10 execute:v7 catId:v11 parameters:isa globals:v13 completion:v15];
  _Block_release(v15);
}

uint64_t closure #1 in DescribeCustomIntentItemCatTemplater.makeTemplate(item:_:)(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v9);
  v11 = (&v22 - v10);
  v12 = type metadata accessor for TemplatingResult();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v11);
    return outlined destroy of String?(v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {

    v17 = [a1 print];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = a3;
    v19 = v18;

    v20 = [a1 speak];
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    TemplatingResult.init(dialogId:print:speak:)(v23, v19, v21, v15);
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    v22(v11);
    outlined destroy of String?(v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return (*(v13 + 8))(v15, v12);
  }
}

double DescribeCustomIntentItemViewBuilder.makeViews(withTemplate:)(uint64_t a1)
{
  v1 = dispatch thunk of ViewFactory.makeSummaryView(templateResult:snippets:listenAfterSpeaking:canUseServerTTS:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_216010;
  *(v2 + 32) = v1;
  return result;
}

uint64_t DescribeCustomIntentItemOutputProvider.__allocating_init(item:templating:viewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  __chkstk_darwin(v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = a5(a1, a2, a3, v15, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v17;
}

uint64_t DescribeCustomIntentItemOutputProvider.makeOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[12];
  v6 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v5);
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v2;
  v10 = *(v6 + 8);

  v10(v7, v8, partial apply for closure #1 in DescribeCustomIntentItemOutputProvider.makeOutput(_:), v9, v5, v6);
}

uint64_t closure #1 in DescribeCustomIntentItemOutputProvider.makeOutput(_:)(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for AceOutput();
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TemplatingResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v15);
  v17 = (&v24 - v16);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v24 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v28 = *v17;
    v31 = 1;
    swift_errorRetain();
    a2(&v28);
  }

  else
  {
    v24 = v12;
    v25 = v11;
    (*(v12 + 32))(v14, v17, v11);
    v18 = a4[7];
    v19 = a4[8];
    __swift_project_boxed_opaque_existential_1(a4 + 4, v18);
    if ((*(v19 + 8))(v14, v18, v19) >> 62)
    {
      type metadata accessor for SABaseCommand();
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SABaseCommand();
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    AceOutput.init(commands:flowActivity:)();
    v20 = v26;
    *(&v29 + 1) = v26;
    v30 = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    v22 = v27;
    (*(v27 + 16))(boxed_opaque_existential_1, v10, v20);
    v31 = 0;
    a2(&v28);
    (*(v22 + 8))(v10, v20);
    (*(v24 + 8))(v14, v25);
  }

  return outlined destroy of String?(&v28, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

void *specialized DescribeCustomIntentItemOutputProvider.__allocating_init(item:templating:viewBuilder:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  __chkstk_darwin(a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DescribeCustomIntentItemOutputProvider();
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a4, a6);
  v17 = specialized DescribeCustomIntentItemOutputProvider.init(item:templating:viewBuilder:)(a1, a2, a3, v15, v16, a6, a7);
  (*(v13 + 8))(a4, a6);
  return v17;
}

uint64_t sub_179538()
{

  return _swift_deallocObject(v0);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized DescribeCustomIntentItemOutputProvider.init(item:templating:viewBuilder:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  a5[7] = a6;
  a5[8] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 4);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[2] = a1;
  a5[3] = a2;
  outlined init with take of AceServiceInvokerAsync(a3, (a5 + 9));
  return a5;
}

uint64_t sub_179630()
{

  return _swift_deallocObject(v0);
}

uint64_t ActionPerformedVisual.init(appBundleId:prompt:viewData:deviceState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  v15 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(a7, 2);
  v17 = v16;

  result = __swift_destroy_boxed_opaque_existential_1Tm(a7);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = v15;
  a8[3] = v17;
  a8[4] = a3;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  return result;
}

uint64_t ActionPerformedVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[39] = v2;
  v1[40] = v0;
  v3 = type metadata accessor for SeparatorStyle();
  v1[41] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[42] = v4;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  type metadata accessor for Separators();
  v1[45] = swift_task_alloc();
  v5 = type metadata accessor for ComponentWrapper();
  v1[46] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[47] = v6;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v7 = type metadata accessor for CustomCanvas();
  v1[50] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[51] = v8;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return _swift_task_switch(ActionPerformedVisual.response.getter);
}

{
  v1 = *(v0 + 320);
  v2 = v1[5];
  if (v2)
  {
    v3 = v1[4];
    v4 = one-time initialization token for encoder;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_1_17(&one-time initialization token for encoder);
    }

    *(v0 + 104) = v3;
    *(v0 + 112) = v2;
    *(v0 + 184) = 5;
    lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v6 = *(v0 + 432);
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    v67 = *(v0 + 384);
    v9 = *(v0 + 376);
    v64 = *(v0 + 392);
    v65 = *(v0 + 368);
    v10 = *(v0 + 352);
    v11 = *(v0 + 336);
    v12 = *(v0 + 344);
    v13 = *(v0 + 328);
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_6_31(v14, v15, v16, v17, v18, v19);
    *(v0 + 256) = v8;
    *(v0 + 264) = &protocol witness table for CustomCanvas;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
    (*(v7 + 16))(boxed_opaque_existential_1, v6, v8);
    v21 = *(v11 + 104);
    v21(v10, enum case for SeparatorStyle.edgeToEdge(_:), v13);
    v21(v12, enum case for SeparatorStyle.standard(_:), v13);
    Separators.init(top:bottom:)();
    ComponentWrapper.init(_:separators:)();
    v22 = v65;
    v66 = *(v9 + 16);
    v66(v67, v64, v22);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = v23;
    v24 = v23[2];
    if (v24 >= v23[3] >> 1)
    {
      OUTLINED_FUNCTION_5_29();
      v5 = v58;
    }

    v25 = *(v0 + 432);
    v26 = *(v0 + 400);
    v27 = *(v0 + 408);
    v28 = *(v0 + 392);
    v63 = *(v0 + 384);
    v30 = *(v0 + 368);
    v29 = *(v0 + 376);

    v31 = *(v29 + 8);
    v31(v28, v30);
    (*(v27 + 8))(v25, v26);
    *(v0 + 296) = v30;
    *(v0 + 304) = &protocol witness table for ComponentWrapper;
    v32 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
    v66(v32, v63, v30);
    v5[2] = v24 + 1;
    outlined init with take of AceServiceInvokerAsync((v0 + 272), &v5[5 * v24 + 4]);
    v31(v63, v30);
    v1 = *(v0 + 320);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v33 = v1[6];
  v34 = v1[7];
  v35 = *v1;
  v36 = v1[1];
  v38 = v1[2];
  v37 = v1[3];
  outlined copy of Data._Representation(v33, v34);
  v39 = one-time initialization token for encoder;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_1_17(&one-time initialization token for encoder);
  }

  *(v0 + 16) = v33;
  *(v0 + 24) = v34;
  *(v0 + 32) = v35;
  *(v0 + 40) = v36;
  *(v0 + 48) = v38;
  *(v0 + 56) = v37;
  *(v0 + 96) = 0;
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v41 = *(v0 + 416);
  v40 = *(v0 + 424);
  v42 = *(v0 + 400);
  v43 = *(v0 + 408);
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_6_31(v44, v45, v46, v47, v48, v49);
  v62 = *(v43 + 16);
  v62(v41, v40, v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = v59;
  }

  v50 = v5[2];
  if (v50 >= v5[3] >> 1)
  {
    OUTLINED_FUNCTION_5_29();
    v5 = v60;
  }

  v61 = *(v0 + 424);
  v52 = *(v0 + 408);
  v51 = *(v0 + 416);
  v53 = *(v0 + 400);
  *(v0 + 216) = v53;
  *(v0 + 224) = &protocol witness table for CustomCanvas;
  v54 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  v62(v54, v51, v53);
  v5[2] = v50 + 1;
  outlined init with take of AceServiceInvokerAsync((v0 + 192), &v5[5 * v50 + 4]);
  v55 = *(v52 + 8);
  v55(v51, v53);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  outlined consume of Data._Representation(v33, v34);

  v55(v61, v53);

  OUTLINED_FUNCTION_6_0();

  return v56();
}

uint64_t ActionPerformedVisual.data.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for Response();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_0(v1);
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = DisambiguationVisual.data.getter;

  return ActionPerformedVisual.response.getter();
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

uint64_t getEnumTagSinglePayload for ActionPerformedVisual(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for ActionPerformedVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_5_29()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_6_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
}

_BYTE *storeEnumTagSinglePayload for CustomIntentFlowErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x17A238);
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

uint64_t INCodableAttribute.supportsMultipleValues.getter()
{
  result = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(v0);
  if (result)
  {
    specialized Dictionary.subscript.getter(result, &v3, 0xD000000000000027, 0x8000000000234590);

    if (v4)
    {
      if (swift_dynamicCast())
      {
        return v2 == 1;
      }
    }

    else
    {
      outlined destroy of Any?(&v3);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LNValueType.getLNValue(usoParse:parameterMetadata:locale:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[109] = v0;
  v1[108] = v2;
  v1[107] = v3;
  v1[106] = v4;
  v5 = type metadata accessor for PersonNameComponents();
  v1[110] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[111] = v6;
  v1[112] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v1[113] = OUTLINED_FUNCTION_27();
  v1[114] = swift_task_alloc();
  v8 = type metadata accessor for PlaceDescriptorEntity();
  v1[115] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[116] = v9;
  v1[117] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for PlaceDescriptor();
  v1[118] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[119] = v11;
  v1[120] = OUTLINED_FUNCTION_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  OUTLINED_FUNCTION_14(v12);
  v1[121] = OUTLINED_FUNCTION_27();
  v1[122] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v13);
  v1[123] = OUTLINED_FUNCTION_27();
  v1[124] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v1[125] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[126] = v15;
  v1[127] = OUTLINED_FUNCTION_27();
  v1[128] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v1[129] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[130] = v17;
  v1[131] = OUTLINED_FUNCTION_28();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14(v18);
  v1[132] = OUTLINED_FUNCTION_27();
  v1[133] = swift_task_alloc();
  v19 = type metadata accessor for Calendar.RecurrenceRule();
  v1[134] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[135] = v20;
  v1[136] = OUTLINED_FUNCTION_28();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
  OUTLINED_FUNCTION_14(v21);
  v1[137] = OUTLINED_FUNCTION_27();
  v1[138] = swift_task_alloc();
  v22 = type metadata accessor for DateInterval();
  v1[139] = v22;
  OUTLINED_FUNCTION_5_0(v22);
  v1[140] = v23;
  v1[141] = OUTLINED_FUNCTION_28();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  OUTLINED_FUNCTION_14(v24);
  v1[142] = OUTLINED_FUNCTION_27();
  v1[143] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_14(v25);
  v1[144] = OUTLINED_FUNCTION_27();
  v1[145] = swift_task_alloc();
  v26 = type metadata accessor for Date();
  v1[146] = v26;
  OUTLINED_FUNCTION_5_0(v26);
  v1[147] = v27;
  v1[148] = OUTLINED_FUNCTION_28();
  v28 = type metadata accessor for DateComponents();
  v1[149] = v28;
  OUTLINED_FUNCTION_5_0(v28);
  v1[150] = v29;
  v1[151] = OUTLINED_FUNCTION_27();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v30 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(0);
  v1[154] = v30;
  OUTLINED_FUNCTION_14(v30);
  v1[155] = OUTLINED_FUNCTION_27();
  v1[156] = swift_task_alloc();
  v31 = type metadata accessor for TimeZone();
  v1[157] = v31;
  OUTLINED_FUNCTION_5_0(v31);
  v1[158] = v32;
  v1[159] = OUTLINED_FUNCTION_27();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v33 = type metadata accessor for Calendar();
  v1[164] = v33;
  OUTLINED_FUNCTION_5_0(v33);
  v1[165] = v34;
  v1[166] = OUTLINED_FUNCTION_27();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v35);
  v1[170] = OUTLINED_FUNCTION_27();
  v1[171] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v36);
  v1[172] = OUTLINED_FUNCTION_28();
  v37 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1[173] = v37;
  OUTLINED_FUNCTION_5_0(v37);
  v1[174] = v38;
  v1[175] = OUTLINED_FUNCTION_27();
  v1[176] = swift_task_alloc();
  v39 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1[177] = v39;
  OUTLINED_FUNCTION_5_0(v39);
  v1[178] = v40;
  v1[179] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v41);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1456) = v4;
  *(v2 + 1464) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1488) = v4;
  *(v2 + 1496) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v5[189] = v0;

  v9 = OUTLINED_FUNCTION_37_11();
  v10(v9);
  if (v0)
  {
    (*(v3 + 8))(v0, v1);
  }

  else
  {
    (*(v3 + 8))(0, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 42);
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 37);
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1528) = v0;

  (*(v2[165] + 8))(v2[166], v2[164]);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 1544) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v20 = v0;
  v1 = v0[125];
  v2 = v0[124];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v1);
  v4 = v0[160];
  v5 = v0[158];
  v6 = v0[157];
  if (EnumTagSinglePayload == 1)
  {
    (*(v5 + 8))(v0[160], v0[157]);
    outlined destroy of String?(v2, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
    v7 = 0;
  }

  else
  {
    v8 = v0[128];
    v9 = v0[126];
    (*(v9 + 32))(v8, v2, v1);
    v7 = static InputUtils.getPlacemark(_:)();
    (*(v9 + 8))(v8, v1);
    (*(v5 + 8))(v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  OUTLINED_FUNCTION_12_26();
  if (v7)
  {
    v10 = v0[109];
    v19[3] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for CLPlacemark, CLPlacemark_ptr);
    v19[0] = v7;
    v11 = objc_allocWithZone(LNValue);
    v18 = @nonobjc LNValue.init(_:valueType:)(v19, v10);
    v12 = OUTLINED_FUNCTION_9_3();
    v13(v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_3();
    v15(v14);
    v18 = 0;
  }

  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_6_6();

  return v16(v18);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 1560) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v6 = v5;
  *(v8 + 1592) = v7;
  *(v8 + 1600) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

void LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(uint64_t a1)
{
  v215 = v1;
  v3 = *(v1 + 1416);
  v4 = *(v1 + 1408);
  v5 = *(v1 + 1392);
  v6 = *(v1 + 1384);
  v7 = *(v1 + 1376);
  USOParse.userParse.getter();
  v8 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v9 = *(v5 + 8);
  v9(v4, v6);
  specialized Collection.first.getter(v8, v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v3) == 1)
  {
    outlined destroy of String?(*(v1 + 1376), &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v13, v14, "#ShortcutsLinkPromptForFlowStrategy: missing UDA");
    }

    goto LABEL_7;
  }

  (*(*(v1 + 1424) + 32))(*(v1 + 1432), *(v1 + 1376), *(v1 + 1416));
  USOParse.userParse.getter();
  v17 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v18 = OUTLINED_FUNCTION_9_3();
  (v9)(v18);
  isa = v17[2].isa;

  if (isa >= 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);
    v17 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v21))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v22, v23, "#ShortcutsLinkPromptForFlowStrategy: more than one task found in UDA");
    }
  }

  v25 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(*(v1 + 872));
  v27 = v26;
  if (!v24)
  {
    v34 = OUTLINED_FUNCTION_9_3();
    outlined consume of VoiceCommandIntentValueType(v34, v35, 0);
LABEL_21:
    OUTLINED_FUNCTION_39_15();
    Siri_Nlu_External_UserDialogAct.stringValue.getter(v36);
    if (v27)
    {
LABEL_22:
      v37 = OUTLINED_FUNCTION_5_30();
      v38(v37);
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_3_43();
      OUTLINED_FUNCTION_14_26();

      OUTLINED_FUNCTION_28_12();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_12_26();
    if (v47)
    {
      v48 = *(v1 + 872);
      v214 = &type metadata for String;
      v212 = v46;
      v213 = v47;
LABEL_32:
      v49 = objc_allocWithZone(LNValue);
      @nonobjc LNValue.init(_:valueType:)(&v212, v48);
      v50 = OUTLINED_FUNCTION_9_3();
      v51(v50);
    }

    else
    {
LABEL_76:
      v119 = OUTLINED_FUNCTION_9_3();
      v120(v119);
    }

LABEL_7:
    OUTLINED_FUNCTION_2_48();
    OUTLINED_FUNCTION_3_43();
    OUTLINED_FUNCTION_14_26();

    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_28_12();

    __asm { BRAA            X2, X16 }
  }

  if (v24 == 1)
  {
    v28 = Siri_Nlu_External_UserDialogAct.measurementValue(locale:)(*(v1 + 864));
    v31 = v30;
    if (v30 != -1)
    {
      v32 = v28;
      v33 = v29;
      ParsedMeasurement.toLNValue(unitType:parameterMetadata:valueType:)(v25, *(v1 + 856), *(v1 + 872), v28, v29, v30 & 1);
      outlined consume of ParsedMeasurement?(v32, v33, v31);
    }

LABEL_33:
    v52 = OUTLINED_FUNCTION_5_30();
    v53(v52);
    goto LABEL_7;
  }

  switch(v25)
  {
    case 1uLL:
      OUTLINED_FUNCTION_39_15();
      Siri_Nlu_External_UserDialogAct.stringValue.getter(v75);
      if (v27)
      {
        goto LABEL_22;
      }

      if (v76)
      {
        v77 = *(v1 + 872);
        v78 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
        swift_bridgeObjectRetain_n();
        v79._countAndFlagsBits = OUTLINED_FUNCTION_22_4();
        v214 = v78;
        v212 = NSAttributedString.__allocating_init(string:)(v79).super.isa;
        objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)(&v212, v77);
        OUTLINED_FUNCTION_1_18();
        swift_bridgeObjectRelease_n();
      }

      goto LABEL_33;
    case 2uLL:
      Siri_Nlu_External_UserDialogAct.BOOLValue.getter();
      OUTLINED_FUNCTION_12_26();
      if (v86 == 2)
      {
        goto LABEL_76;
      }

      v48 = *(v1 + 872);
      v214 = &type metadata for Bool;
      LOBYTE(v212) = v85 & 1;
      goto LABEL_32;
    case 3uLL:
      v65 = Siri_Nlu_External_UserDialogAct.currencyValue(locale:)(*(v1 + 864));
      OUTLINED_FUNCTION_12_26();
      if (!v66)
      {
        goto LABEL_76;
      }

      v48 = *(v1 + 872);
      v67 = &lazy cache variable for type metadata for INCurrencyAmount;
      v68 = INCurrencyAmount_ptr;
      goto LABEL_88;
    case 4uLL:
      *(v1 + 560) = type metadata accessor for DateTimeResolver();
      *(v1 + 568) = &protocol witness table for DateTimeResolver;
      __swift_allocate_boxed_opaque_existential_1((v1 + 536));
      DateTimeResolver.init()();
      static AceService.currentAsync.getter();
      v102 = type metadata accessor for LocationProvider();
      v103 = OUTLINED_FUNCTION_50_8(v102);
      OUTLINED_FUNCTION_11_27(v103);
      outlined init with take of AceServiceInvokerAsync((v1 + 616), v103 + 24);
      *(v1 + 600) = v102;
      *(v1 + 608) = &protocol witness table for LocationProvider;
      *(v1 + 576) = v103;
      static Calendar.current.getter();
      static TimeZone.current.getter();
      if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
      {
        goto LABEL_100;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (!*(v1 + 808))
      {
        OUTLINED_FUNCTION_53_5();
        OUTLINED_FUNCTION_8_28();
        v168();
        v169 = OUTLINED_FUNCTION_7_30();
        v170(v169);
        outlined destroy of String?(v1 + 784, &_sypSgMd, &_sypSgMR);
        goto LABEL_105;
      }

      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      if ((swift_dynamicCast() & 1) == 0 || (v123 = *(v1 + 840), dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter(), OUTLINED_FUNCTION_1_18(), , !v123) || (v124 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter(), , !v124))
      {
LABEL_100:
        OUTLINED_FUNCTION_53_5();
        OUTLINED_FUNCTION_8_28();
        v144();
        v145 = OUTLINED_FUNCTION_7_30();
        v146(v145);
LABEL_105:
        __swift_storeEnumTagSinglePayload(*(v1 + 1368), 1, 1, *(v1 + 1168));
        v171 = *(v1 + 1168);
        v172 = OUTLINED_FUNCTION_62_8();
        __swift_destroy_boxed_opaque_existential_1Tm(v172);
        v173 = OUTLINED_FUNCTION_22_4();
        outlined init with copy of PersonNameComponents?(v173, v174, v175, v176);
        v177 = OUTLINED_FUNCTION_14_12();
        __swift_getEnumTagSinglePayload(v177, v178, v171);
        OUTLINED_FUNCTION_23_17();
        v111 = *(v1 + 1368);
        if (v179 == 1)
        {
          v113 = &_s10Foundation4DateVSgMd;
          v114 = &_s10Foundation4DateVSgMR;
          goto LABEL_107;
        }

        v181 = *(v1 + 1168);
        OUTLINED_FUNCTION_22_19();
        v182 = OUTLINED_FUNCTION_56_5();
        v183(v182);
        *(v1 + 776) = v181;
        __swift_allocate_boxed_opaque_existential_1((v1 + 752));
        OUTLINED_FUNCTION_34_15();
        v184();
        v185 = objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)((v1 + 752), v2);
        v186 = OUTLINED_FUNCTION_42_11();
        v187(v186);
        v113 = &_s10Foundation4DateVSgMd;
        v114 = &_s10Foundation4DateVSgMR;
LABEL_109:
        v180 = v111;
        goto LABEL_114;
      }

      OUTLINED_FUNCTION_52_8(*(v1 + 1304));
      v125 = *(v1 + 1248);
      *(v1 + 1440) = OUTLINED_FUNCTION_59_8();

      outlined init with copy of DeviceState(v1 + 536, v125);
      outlined init with copy of DeviceState(v1 + 576, v125 + 40);
      v126 = *(v1 + 864);
      type metadata accessor for Locale();
      OUTLINED_FUNCTION_4_11();
      (*(v127 + 16))(v125 + v126, v9);
      v128 = OUTLINED_FUNCTION_48_10();
      v129(v128);
      v130 = OUTLINED_FUNCTION_57_6();
      v131(v130);
      v132 = swift_task_alloc();
      *(v1 + 1448) = v132;
      *v132 = v1;
      v132[1] = LNValueType.getLNValue(usoParse:parameterMetadata:locale:);
LABEL_96:
      OUTLINED_FUNCTION_28_12();

      Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
      return;
    case 5uLL:
      *(v1 + 440) = type metadata accessor for DateTimeResolver();
      *(v1 + 448) = &protocol witness table for DateTimeResolver;
      __swift_allocate_boxed_opaque_existential_1((v1 + 416));
      DateTimeResolver.init()();
      static AceService.currentAsync.getter();
      v107 = type metadata accessor for LocationProvider();
      v108 = OUTLINED_FUNCTION_50_8(v107);
      OUTLINED_FUNCTION_11_27(v108);
      outlined init with take of AceServiceInvokerAsync((v1 + 496), v108 + 24);
      *(v1 + 480) = v107;
      *(v1 + 488) = &protocol witness table for LocationProvider;
      *(v1 + 456) = v108;
      static Calendar.current.getter();
      static TimeZone.current.getter();
      if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
      {
        goto LABEL_101;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (*(v1 + 744))
      {
        type metadata accessor for UsoTask_execute_common_VoiceCommand();
        if (swift_dynamicCast())
        {
          v133 = *(v1 + 832);
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_1_18();

          if (v133)
          {
            v134 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter();

            if (v134)
            {
              OUTLINED_FUNCTION_52_8(*(v1 + 1296));
              v135 = *(v1 + 1240);
              *(v1 + 1472) = OUTLINED_FUNCTION_59_8();

              outlined init with copy of DeviceState(v1 + 416, v135);
              outlined init with copy of DeviceState(v1 + 456, v135 + 40);
              v136 = *(v107 + 24);
              type metadata accessor for Locale();
              OUTLINED_FUNCTION_4_11();
              (*(v137 + 16))(v135 + v136, v9);
              v138 = OUTLINED_FUNCTION_48_10();
              v139(v138);
              v140 = OUTLINED_FUNCTION_57_6();
              v141(v140);
              v142 = swift_task_alloc();
              *(v1 + 1480) = v142;
              *v142 = v1;
              v142[1] = LNValueType.getLNValue(usoParse:parameterMetadata:locale:);
              goto LABEL_96;
            }
          }
        }

LABEL_101:
        OUTLINED_FUNCTION_53_5();
        OUTLINED_FUNCTION_8_28();
        v147();
        v148 = OUTLINED_FUNCTION_7_30();
        v149(v148);
      }

      else
      {
        OUTLINED_FUNCTION_53_5();
        OUTLINED_FUNCTION_8_28();
        v188();
        v189 = OUTLINED_FUNCTION_7_30();
        v190(v189);
        outlined destroy of String?(v1 + 720, &_sypSgMd, &_sypSgMR);
      }

      v191 = *(v1 + 1192);
      v192 = *(v1 + 1152);
      v193 = OUTLINED_FUNCTION_14_12();
      __swift_storeEnumTagSinglePayload(v193, v194, 1, v191);
      v195 = OUTLINED_FUNCTION_61_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v195);
      v196 = OUTLINED_FUNCTION_9_3();
      outlined init with copy of PersonNameComponents?(v196, v197, v198, v199);
      __swift_getEnumTagSinglePayload(v192, 1, v191);
      OUTLINED_FUNCTION_23_17();
      if (v200 == 1)
      {
        v180 = *(v1 + 1160);
        v113 = &_s10Foundation14DateComponentsVSgMd;
        v114 = &_s10Foundation14DateComponentsVSgMR;
      }

      else
      {
        v201 = *(v1 + 1208);
        v202 = *(v1 + 1200);
        v203 = *(v1 + 1192);
        v204 = *(v1 + 1160);
        OUTLINED_FUNCTION_22_19();
        v205(v201);
        *(v1 + 712) = v203;
        __swift_allocate_boxed_opaque_existential_1((v1 + 688));
        OUTLINED_FUNCTION_54_9();
        v206();
        v207 = objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)((v1 + 688), v2);
        (*(v202 + 8))(v201, v203);
        v113 = &_s10Foundation14DateComponentsVSgMd;
        v114 = &_s10Foundation14DateComponentsVSgMR;
        v180 = v204;
      }

      goto LABEL_114;
    case 6uLL:
      *(v1 + 320) = type metadata accessor for DateTimeResolver();
      *(v1 + 328) = &protocol witness table for DateTimeResolver;
      __swift_allocate_boxed_opaque_existential_1((v1 + 296));
      DateTimeResolver.init()();
      static AceService.currentAsync.getter();
      v87 = type metadata accessor for LocationProvider();
      v88 = OUTLINED_FUNCTION_50_8(v87);
      OUTLINED_FUNCTION_11_27(v88);
      outlined init with take of AceServiceInvokerAsync((v1 + 376), v88 + 24);
      *(v1 + 360) = v87;
      *(v1 + 368) = &protocol witness table for LocationProvider;
      *(v1 + 336) = v88;
      static Calendar.current.getter();
      static TimeZone.current.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v1 + 1504) = v89;
      *v89 = v90;
      OUTLINED_FUNCTION_58_7(v89);
      OUTLINED_FUNCTION_28_12();

      Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)();
      return;
    case 7uLL:
      OUTLINED_FUNCTION_39_15();
      v116 = Siri_Nlu_External_UserDialogAct.durationValue()();
      if (v27)
      {
        goto LABEL_22;
      }

      if (v118)
      {
        goto LABEL_76;
      }

      v161 = v116;
      v162 = v117;
      v163 = *(v1 + 872);
      v164 = type metadata accessor for LNCodableValue();
      *(v1 + 816) = v161;
      *(v1 + 824) = v162;
      v214 = v164;
      v212 = LNCodableValue.init<A>(_:)();
      v165 = objc_allocWithZone(LNValue);
      @nonobjc LNValue.init(_:valueType:)(&v212, v163);
      v166 = OUTLINED_FUNCTION_9_3();
      v167(v166);
      goto LABEL_7;
    case 8uLL:
      static Calendar.current.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v1 + 1520) = v72;
      *v72 = v73;
      OUTLINED_FUNCTION_58_7(v72);
      OUTLINED_FUNCTION_28_12();

      Siri_Nlu_External_UserDialogAct.recurrenceRuleValue(calendar:)();
      return;
    case 9uLL:
      OUTLINED_FUNCTION_39_15();
      Siri_Nlu_External_UserDialogAct.doubleValue.getter();
      if (v27)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_26();
      if (v115)
      {
        goto LABEL_76;
      }

      v48 = *(v1 + 872);
      v71 = &type metadata for Double;
      goto LABEL_73;
    case 0xAuLL:
      OUTLINED_FUNCTION_39_15();
      v61 = Siri_Nlu_External_UserDialogAct.entityValue.getter();
      if (v27)
      {
        goto LABEL_22;
      }

      if (v62)
      {
        v214 = &type metadata for String;
        v212 = v61;
        v213 = v62;
        objc_opt_self();
        OUTLINED_FUNCTION_1_18();

        v63 = [v17 stringValueType];
        v64 = objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)(&v212, v63);
        OUTLINED_FUNCTION_1_18();
      }

      goto LABEL_33;
    case 0xBuLL:
      OUTLINED_FUNCTION_39_15();
      Siri_Nlu_External_UserDialogAct.intValue.getter();
      if (v27)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_26();
      if (v70)
      {
        goto LABEL_76;
      }

      v48 = *(v1 + 872);
      v71 = &type metadata for Int64;
LABEL_73:
      v214 = v71;
      v212 = v69;
      goto LABEL_32;
    case 0xCuLL:
      v104 = *(v1 + 864);
      v105 = type metadata accessor for ContactResolver();
      swift_allocObject();
      v106 = ContactResolver.init()();
      *(v1 + 40) = v105;
      *(v1 + 48) = &protocol witness table for ContactResolver;
      *(v1 + 16) = v106;
      v65 = Siri_Nlu_External_UserDialogAct.personValue(contactResolver:locale:)(v1 + 16, v104);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
      OUTLINED_FUNCTION_12_26();
      if (!v65)
      {
        goto LABEL_76;
      }

      v48 = *(v1 + 872);
      v67 = &lazy cache variable for type metadata for INPerson;
      v68 = INPerson_ptr;
LABEL_88:
      v214 = type metadata accessor for NSError(0, v67, v68);
      v212 = v65;
      goto LABEL_32;
    case 0xDuLL:
      Siri_Nlu_External_UserDialogAct.personNameComponentsValue()(*(v1 + 912));
      outlined init with copy of PersonNameComponents?(*(v1 + 912), *(v1 + 904), &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      OUTLINED_FUNCTION_6_14();
      if (v58)
      {
        OUTLINED_FUNCTION_10_34();
        outlined destroy of String?(*(v1 + 912), &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v59 = OUTLINED_FUNCTION_7_30();
        v60(v59);
      }

      else
      {
        v150 = *(v1 + 896);
        v151 = *(v1 + 872);
        (*(*(v1 + 888) + 32))(v150, *(v1 + 904), *(v1 + 880));
        closure #7 in LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(v150, v151, &type metadata accessor for PersonNameComponents, &type metadata accessor for LNCodableValue, &LNCodableValue.init(_:), &v212);
        v152 = OUTLINED_FUNCTION_22_4();
        v153(v152);
        OUTLINED_FUNCTION_10_34();
        outlined destroy of String?(*(v1 + 912), &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v210 = OUTLINED_FUNCTION_7_30();
        v211(v210);
      }

      goto LABEL_7;
    case 0xEuLL:
      *(v1 + 200) = type metadata accessor for LocationResolver();
      *(v1 + 208) = &protocol witness table for LocationResolver;
      __swift_allocate_boxed_opaque_existential_1((v1 + 176));
      LocationResolver.init()();
      static AceService.currentAsync.getter();
      v80 = type metadata accessor for LocationProvider();
      v81 = OUTLINED_FUNCTION_50_8(v80);
      OUTLINED_FUNCTION_11_27(v81);
      outlined init with take of AceServiceInvokerAsync((v1 + 256), v81 + 24);
      *(v1 + 240) = v80;
      *(v1 + 248) = &protocol witness table for LocationProvider;
      *(v1 + 216) = v81;
      static TimeZone.current.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v1 + 1536) = v82;
      *v82 = v83;
      OUTLINED_FUNCTION_58_7(v82);
      goto LABEL_53;
    case 0xFuLL:
      *(v1 + 80) = type metadata accessor for LocationResolver();
      *(v1 + 88) = &protocol witness table for LocationResolver;
      __swift_allocate_boxed_opaque_existential_1((v1 + 56));
      LocationResolver.init()();
      static AceService.currentAsync.getter();
      v54 = type metadata accessor for LocationProvider();
      v55 = OUTLINED_FUNCTION_50_8(v54);
      OUTLINED_FUNCTION_11_27(v55);
      outlined init with take of AceServiceInvokerAsync((v1 + 136), v55 + 24);
      *(v1 + 120) = v54;
      *(v1 + 128) = &protocol witness table for LocationProvider;
      *(v1 + 96) = v55;
      static TimeZone.current.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v1 + 1552) = v56;
      *v56 = v57;
      OUTLINED_FUNCTION_58_7(v56);
LABEL_53:
      OUTLINED_FUNCTION_28_12();

      Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)();
      return;
    case 0x10uLL:
      goto LABEL_21;
    case 0x11uLL:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, static Logger.voiceCommands);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      v95 = os_log_type_enabled(v93, v94);
      v96 = *(v1 + 1432);
      v97 = *(v1 + 1424);
      v98 = *(v1 + 1416);
      if (v95)
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_0, v93, v94, "#ShortcutsLinkPromptForFlowStrategy creating prompt for unsupported type", v99, 2u);

        v100 = OUTLINED_FUNCTION_9_3();
        outlined consume of VoiceCommandIntentValueType(v100, v101, 2);
      }

      else
      {
      }

      (*(v97 + 8))(v96, v98);
      goto LABEL_7;
    case 0x12uLL:
      Siri_Nlu_External_UserDialogAct.urlValue.getter(*(v1 + 1064));
      v109 = *(v1 + 1056);
      v110 = *(v1 + 1032);
      outlined init with copy of PersonNameComponents?(*(v1 + 1064), v109, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      __swift_getEnumTagSinglePayload(v109, 1, v110);
      OUTLINED_FUNCTION_23_17();
      v111 = *(v1 + 1064);
      if (v112 == 1)
      {
        v113 = &_s10Foundation3URLVSgMd;
        v114 = &_s10Foundation3URLVSgMR;
LABEL_107:
        v180 = v111;
LABEL_114:
        outlined destroy of String?(v180, v113, v114);
        v208 = OUTLINED_FUNCTION_15_25();
        v209(v208);
        goto LABEL_7;
      }

      v154 = *(v1 + 1032);
      OUTLINED_FUNCTION_22_19();
      v155 = OUTLINED_FUNCTION_56_5();
      v156(v155);
      *(v1 + 680) = v154;
      __swift_allocate_boxed_opaque_existential_1((v1 + 656));
      OUTLINED_FUNCTION_34_15();
      v157();
      v158 = objc_allocWithZone(LNValue);
      @nonobjc LNValue.init(_:valueType:)((v1 + 656), v2);
      v159 = OUTLINED_FUNCTION_42_11();
      v160(v159);
      v113 = &_s10Foundation3URLVSgMd;
      v114 = &_s10Foundation3URLVSgMR;
      goto LABEL_109;
    default:
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      *(v1 + 1568) = v41;
      if (!v41)
      {
        v121 = OUTLINED_FUNCTION_5_30();
        v122(v121);
        goto LABEL_7;
      }

      v42 = v41;
      v43 = *(v1 + 872);
      *(v1 + 1576) = [v42 memberValueType];
      v44 = swift_task_alloc();
      *(v1 + 1584) = v44;
      *v44 = v1;
      v44[1] = LNValueType.getLNValue(usoParse:parameterMetadata:locale:);
      OUTLINED_FUNCTION_28_12();

      LNValueType.getLNValue(usoParse:parameterMetadata:locale:)();
      return;
  }
}

uint64_t LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_51_10();
  v50 = v47[182];
  v51 = v47[180];
  OUTLINED_FUNCTION_41_12();
  v52 = v47[163];
  v53 = v47[158];
  v54 = v47[157];
  v92 = v47[156];
  v93 = v55;
  if (v50)
  {
    a37 = v46;
    a38 = v47[163];
    v56 = v47[153];
    a39 = v47[157];
    a40 = v48;
    v57 = v47[152];
    v58 = v47[150];
    v59 = v47[149];

    dispatch thunk of DateTime.dateComponents.getter();

    (*(v58 + 32))(v56, v57, v59);
    Calendar.date(from:)();

    (*(v58 + 8))(v56, v59);
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v92);
    (*(v53 + 8))(a38, a39);
    (*(v49 + 8))(a37, a40);
  }

  else
  {
    v60 = v47[146];

    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v92);
    (*(v53 + 8))(v52, v54);
    v61 = OUTLINED_FUNCTION_17_27();
    v62(v61);
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v60);
  }

  v63 = v47[146];
  v64 = OUTLINED_FUNCTION_62_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  v65 = OUTLINED_FUNCTION_22_4();
  outlined init with copy of PersonNameComponents?(v65, v66, v67, v68);
  v69 = OUTLINED_FUNCTION_14_12();
  __swift_getEnumTagSinglePayload(v69, v70, v63);
  OUTLINED_FUNCTION_23_17();
  v71 = v47[171];
  if (v72 == 1)
  {
    outlined destroy of String?(v47[171], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v73 = OUTLINED_FUNCTION_15_25();
    v74(v73);
    v94 = 0;
  }

  else
  {
    v75 = v47[146];
    OUTLINED_FUNCTION_22_19();
    v76 = OUTLINED_FUNCTION_56_5();
    v77(v76);
    v47[97] = v75;
    __swift_allocate_boxed_opaque_existential_1(v47 + 94);
    OUTLINED_FUNCTION_34_15();
    v78();
    objc_allocWithZone(LNValue);
    v94 = @nonobjc LNValue.init(_:valueType:)(v47 + 94, v51);
    v79 = OUTLINED_FUNCTION_42_11();
    v80(v79);
    outlined destroy of String?(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v81 = OUTLINED_FUNCTION_15_25();
    v82(v81);
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_4_46();

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_44_13();

  return v85(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v92, v94, a43, a44, a45, a46);
}

{
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_51_10();
  v47 = v46[168];
  v48 = v46[165];
  v49 = v46[164];
  v50 = v46[162];
  v51 = v46[158];
  v52 = v46[157];
  v53 = v46[155];
  if (v46[186])
  {

    dispatch thunk of DateTime.dateComponents.getter();

    v54 = 0;
  }

  else
  {

    v54 = 1;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v53);
  (*(v51 + 8))(v50, v52);
  v56 = *(v48 + 8);
  v55 = (v48 + 8);
  v56(v47, v49);
  v57 = v46[149];
  v58 = v46[145];
  v59 = v46[144];
  __swift_storeEnumTagSinglePayload(v58, v54, 1, v57);
  v60 = OUTLINED_FUNCTION_61_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  outlined init with copy of PersonNameComponents?(v58, v59, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  __swift_getEnumTagSinglePayload(v59, 1, v57);
  OUTLINED_FUNCTION_23_17();
  if (v61 == 1)
  {
    outlined destroy of String?(v46[145], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v62 = OUTLINED_FUNCTION_15_25();
    v63(v62);
    v81 = 0;
  }

  else
  {
    v64 = v46[151];
    v65 = v46[150];
    v66 = v46[149];
    v67 = v46[145];
    OUTLINED_FUNCTION_22_19();
    v68(v64);
    v46[89] = v66;
    __swift_allocate_boxed_opaque_existential_1(v46 + 86);
    OUTLINED_FUNCTION_54_9();
    v69();
    objc_allocWithZone(LNValue);
    v81 = @nonobjc LNValue.init(_:valueType:)(v46 + 86, v55);
    (*(v65 + 8))(v64, v66);
    outlined destroy of String?(v67, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v70 = OUTLINED_FUNCTION_15_25();
    v71(v70);
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_4_46();

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_44_13();

  return v74(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v81, a43, a44, a45, a46);
}

{
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_51_10();
  v47 = v46[125];
  v48 = v46[123];
  OUTLINED_FUNCTION_6_14();
  if (v49)
  {
    v50 = v46[118];
    (*(v46[158] + 8))(v46[159], v46[157]);
    outlined destroy of String?(v48, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
    v51 = OUTLINED_FUNCTION_14_12();
    __swift_storeEnumTagSinglePayload(v51, v52, 1, v50);
  }

  else
  {
    (*(v46[126] + 32))(v46[127], v48, v47);
    if (static InputUtils.getPlacemark(_:)())
    {
      PlaceDescriptor.init(placemark:)();
      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    __swift_storeEnumTagSinglePayload(v46[122], v53, 1, v46[118]);
    v54 = OUTLINED_FUNCTION_17_27();
    v55(v54);
    v56 = OUTLINED_FUNCTION_16_29();
    v57(v56);
  }

  v58 = v46[118];
  __swift_destroy_boxed_opaque_existential_1Tm(v46 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v46 + 7);
  v59 = OUTLINED_FUNCTION_22_4();
  outlined init with copy of PersonNameComponents?(v59, v60, v61, v62);
  v63 = OUTLINED_FUNCTION_14_12();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, v64, v58);
  v66 = v46[179];
  v67 = v46[178];
  v68 = v46[122];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of String?(v46[122], &_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
    v69 = OUTLINED_FUNCTION_22_4();
    v70(v69);
    v88 = 0;
  }

  else
  {
    v71 = v46[120];
    a41 = v46[177];
    v72 = v46[119];
    v73 = v46[118];
    v74 = v46[117];
    v75 = v46[116];
    v76 = v46[115];
    v77 = OUTLINED_FUNCTION_56_5();
    v78(v77);
    a40 = v66;
    PlaceDescriptor.convertToEntity()();
    lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity();
    v88 = SystemIntentValueConvertibleEntity.asValue.getter();
    (*(v75 + 8))(v74, v76);
    (*(v72 + 8))(v71, v73);
    outlined destroy of String?(v68, &_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
    (*(v67 + 8))(v66, a41);
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_4_46();

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_44_13();

  return v81(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v88, a43, a44, a45, a46);
}

{
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_51_10();
  if (*(v46 + 1592))
  {
    v47 = [*(v46 + 1568) memberValueType];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_12_26();
      v48 = *(v46 + 872);

      v49 = OUTLINED_FUNCTION_9_3();
      v50(v49);
      v69 = *(v46 + 1592);
    }

    else
    {
      v53 = *(v46 + 1592);
      v54 = *(v46 + 872);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_216010;
      *(v55 + 32) = v53;
      v56 = v53;
      v57 = [v56 valueType];
      objc_allocWithZone(LNValue);
      v69 = @nonobjc LNValue.init(_:memberValueType:)(v55, v57);

      v58 = OUTLINED_FUNCTION_9_3();
      v59(v58);
    }
  }

  else
  {

    v51 = OUTLINED_FUNCTION_5_30();
    v52(v51);
    v69 = 0;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_4_46();

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_44_13();

  return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v69, a43, a44, a45, a46);
}

uint64_t LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = *(v48 + 1248);

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v49);
  v65 = *(v48 + 1464);
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_41_12();
  OUTLINED_FUNCTION_8_28();
  v50();
  v51 = OUTLINED_FUNCTION_17_27();
  v52(v51);
  v53 = OUTLINED_FUNCTION_16_29();
  v54(v53);
  v55 = OUTLINED_FUNCTION_62_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v65, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = *(v48 + 1240);

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v49);
  v65 = *(v48 + 1496);
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_8_28();
  v50();
  v51 = OUTLINED_FUNCTION_17_27();
  v52(v51);
  v53 = OUTLINED_FUNCTION_16_29();
  v54(v53);
  v55 = OUTLINED_FUNCTION_61_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v65, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  outlined init with copy of PersonNameComponents?(v48[143], v48[142], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  OUTLINED_FUNCTION_6_14();
  if (v49)
  {
    OUTLINED_FUNCTION_10_34();
    outlined destroy of String?(v48[143], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v50 = OUTLINED_FUNCTION_7_30();
    v51(v50);
    v79 = 0;
  }

  else
  {
    v52 = v48[189];
    (*(v48[140] + 32))(v48[141], v48[142], v48[139]);
    v53 = OUTLINED_FUNCTION_22_4();
    closure #7 in LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(v53, v54, v55, v56, v57, v58);
    if (v52)
    {
      OUTLINED_FUNCTION_24_20();

      return v62(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
    }

    v68 = v48[143];
    (*(v48[140] + 8))(v48[141], v48[139]);
    outlined destroy of String?(v68, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v69 = OUTLINED_FUNCTION_22_4();
    v70(v69);
    v79 = a43;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_25_14();

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_24_20();

  return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v79, a43, a44, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_8_28();
  v49();
  v50 = OUTLINED_FUNCTION_7_30();
  v51(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 22);
  v61 = v48[193];
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v61, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_8_28();
  v49();
  v50 = OUTLINED_FUNCTION_7_30();
  v51(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 7);
  v61 = v48[195];
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v61, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = OUTLINED_FUNCTION_5_30();
  v50(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 42);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 37);
  v60 = v48[189];
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v60, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = OUTLINED_FUNCTION_5_30();
  v50(v49);
  v60 = *(v48 + 1528);
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v60, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_10_34();

  v49 = OUTLINED_FUNCTION_7_30();
  v50(v49);
  v60 = *(v48 + 1600);
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v60, a45, a46, a47, a48);
}

void LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56)
{
  OUTLINED_FUNCTION_26_20();
  a55 = v57;
  a56 = v58;
  OUTLINED_FUNCTION_33_10();
  a54 = v56;
  outlined init with copy of PersonNameComponents?(v56[138], v56[137], &_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
  OUTLINED_FUNCTION_6_14();
  if (v59)
  {
    OUTLINED_FUNCTION_10_34();
    outlined destroy of String?(v56[138], &_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
    v60 = OUTLINED_FUNCTION_7_30();
    v61(v60);
    v77 = 0;
  }

  else
  {
    v62 = v56[191];
    v63 = v56[136];
    v64 = v56[109];
    (*(v56[135] + 32))(v63, v56[137], v56[134]);
    closure #7 in LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(v63, v64, &type metadata accessor for Calendar.RecurrenceRule, &type metadata accessor for LNRecurrenceRuleBridge, &LNRecurrenceRuleBridge.init(rule:), &a43);
    v65 = OUTLINED_FUNCTION_16_29();
    v66(v65);
    if (v62)
    {
      OUTLINED_FUNCTION_24_20();
      return;
    }

    OUTLINED_FUNCTION_10_34();
    outlined destroy of String?(v56[138], &_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
    v67 = OUTLINED_FUNCTION_7_30();
    v68(v67);
    v77 = a43;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_25_14();

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_24_20();

  v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v77, a43, a44, a45, a46, a47, a48);
}

NSAttributedString __swiftcall NSAttributedString.__allocating_init(string:)(Swift::String string)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  return v3;
}

id closure #7 in LNValueType.getLNValue(usoParse:parameterMetadata:locale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(char *)@<X5>, uint64_t *a6@<X8>)
{
  v11 = a3(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - v13;
  v15 = a4(0);
  (*(v12 + 16))(v14, a1, v11);
  v16 = a5(v14);
  v19[3] = v15;
  v19[0] = v16;
  v17 = objc_allocWithZone(LNValue);
  result = @nonobjc LNValue.init(_:valueType:)(v19, a2);
  *a6 = result;
  return result;
}

id @nonobjc LNValue.init(_:valueType:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:_bridgeAnythingToObjectiveC<A>(_:)() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

id @nonobjc LNValue.init(_:memberValueType:)(uint64_t a1, void *a2)
{
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithValues:isa memberValueType:a2];

  return v5;
}

unint64_t lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity()
{
  result = lazy protocol witness table cache variable for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity;
  if (!lazy protocol witness table cache variable for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity)
  {
    type metadata accessor for PlaceDescriptorEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity);
  }

  return result;
}

uint64_t outlined init with copy of PersonNameComponents?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_11();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_54()
{
  v3 = v0[127];
  *(v1 - 176) = v0[128];
  *(v1 - 168) = v3;
  v4 = v0[123];
  *(v1 - 160) = v0[124];
  *(v1 - 152) = v4;
  v5 = v0[121];
  *(v1 - 144) = v0[122];
  *(v1 - 136) = v5;
  v6 = v0[117];
  *(v1 - 128) = v0[120];
  *(v1 - 120) = v6;
  v7 = v0[113];
  *(v1 - 112) = v0[114];
  *(v1 - 104) = v7;
  *(v1 - 96) = v0[112];
}

uint64_t OUTLINED_FUNCTION_4_46()
{
  v3 = v0[124];
  *(v1 - 168) = v0[127];
  *(v1 - 160) = v3;
  v4 = v0[122];
  *(v1 - 152) = v0[123];
  *(v1 - 144) = v4;
  v5 = v0[120];
  *(v1 - 136) = v0[121];
  *(v1 - 128) = v5;
  v6 = v0[114];
  *(v1 - 120) = v0[117];
  *(v1 - 112) = v6;
  v7 = v0[112];
  *(v1 - 104) = v0[113];
  *(v1 - 96) = v7;
}

uint64_t OUTLINED_FUNCTION_14_26()
{
  v3 = v0[122];
  *(v1 - 192) = v0[123];
  *(v1 - 184) = v3;
  v4 = v0[120];
  *(v1 - 176) = v0[121];
  *(v1 - 168) = v4;
  v5 = v0[114];
  *(v1 - 160) = v0[117];
  *(v1 - 152) = v5;
  v6 = v0[112];
  *(v1 - 144) = v0[113];
  *(v1 - 136) = v6;
}

uint64_t OUTLINED_FUNCTION_25_14()
{
  v3 = v0[123];
  *(v1 - 176) = v0[124];
  *(v1 - 168) = v3;
  v4 = v0[121];
  *(v1 - 160) = v0[122];
  *(v1 - 152) = v4;
  v5 = v0[117];
  *(v1 - 144) = v0[120];
  *(v1 - 136) = v5;
  v6 = v0[113];
  *(v1 - 128) = v0[114];
  *(v1 - 120) = v6;
  *(v1 - 112) = v0[112];
}

uint64_t OUTLINED_FUNCTION_50_8(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_52_8(uint64_t a1@<X8>)
{
  *(v3 - 128) = a1;
  v4 = *(v2 + 1256);
  *(v3 - 144) = v1;
  *(v3 - 136) = v4;
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return UsoEntity_common_DateTime.toDateTime(recurrencePattern:)();
}

uint64_t static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:));
}

uint64_t static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_allocWithZone(SAUISnippetDisplayConfigurationRequest) init];
  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v5 = v0;
  v5[1] = static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:);

  return AceServiceInvokerAsync.submit<A>(_:)(v4, v2, v6, v3);
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0[11];
    v5 = v0[6];
    v4 = v0[7];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSnippetEnvironment, LNSnippetEnvironment_ptr);
    v6 = v3;
    v7 = static LNSnippetEnvironment.make(from:localeIdentifier:)(v2, v5, v4);
    v8 = v6;
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);
    v8 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v8, v10);
    v6 = v0[11];
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v8, v10, "#LNSnippetEnvironment for deviceState got  nil environment", v12, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    v7 = 0;
  }

  v13 = v0[1];

  return v13(v7);
}

{
  v12 = v0;

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Hit error while trying to fetch snippet display config from UI layer %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:);
  }

  else
  {

    v4 = static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:);
  }

  return _swift_task_switch(v4);
}

id CodableEnvironment.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CodableEnvironment.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_1_55();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  OUTLINED_FUNCTION_7_1();
  __chkstk_darwin(v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    v9 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v20 = v9;
    if (v9)
    {
      v22 = OUTLINED_FUNCTION_3_44();
      v23(v22);
      OUTLINED_FUNCTION_6_32();
      goto LABEL_8;
    }

    type metadata accessor for CodableEnvironment.Error(0, a2, v10, v11);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_6_32();
    v7 = OUTLINED_FUNCTION_3_44();
    v8(v7);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.voiceCommands);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v13, v14, "Failed to decode Environment; creating an empty Environment instead. Error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v20;
}

uint64_t CodableEnvironment.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CodableEnvironment.CodingKeys(255, a3, a3, a4);
  OUTLINED_FUNCTION_1_55();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  OUTLINED_FUNCTION_7_1();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = objc_opt_self();
  v24[0] = a2;
  type metadata accessor for Optional();
  v13 = Optional._bridgeToObjectiveC()();
  v24[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v24];
  swift_unknownObjectRelease();
  v15 = v24[0];
  if (v14)
  {
    v22 = v8;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v24[0] = v16;
    v24[1] = v18;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v11, v6);
    return OUTLINED_FUNCTION_6_32();
  }

  else
  {
    v20 = v15;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

BOOL CodableEnvironment.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableEnvironment.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableEnvironment<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableEnvironment.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance CodableEnvironment<A>.CodingKeys@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = CodableEnvironment.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

id protocol witness for Decodable.init(from:) in conformance CodableEnvironment<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = CodableEnvironment.init(from:)(a1, *(a2 + 16), a4, a5);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata instantiation function for CodableEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CodableEnvironment(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CodableEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CodableEnvironment.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x180CD0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return outlined consume of Data._Representation(v1, v0);
}

void InstallVoiceShortcutFlow.__allocating_init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)()
{
  OUTLINED_FUNCTION_40_0();
  swift_allocObject();
  InstallVoiceShortcutFlow.init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)();
  OUTLINED_FUNCTION_42();
}

void InstallVoiceShortcutFlow.init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for CATOption();
  __chkstk_darwin(v18 - 8);
  OUTLINED_FUNCTION_3();
  *(v1 + 136) = v17;
  outlined init with copy of DeviceState(v15, v1 + 16);
  outlined init with copy of DeviceState(v13, v1 + 96);
  outlined init with copy of DeviceState(v11, v1 + 152);
  outlined init with copy of DeviceState(v9, v1 + 56);
  if (v7)
  {
    OUTLINED_FUNCTION_19_17();
  }

  else
  {
    outlined init with copy of DeviceState(v15, v20);
    type metadata accessor for InstallShortcutCATs(0);

    static CATOption.defaultMode.getter();
    v19 = CATWrapper.__allocating_init(options:globals:)();

    OUTLINED_FUNCTION_19_17();
    type metadata accessor for InstallShortcutViewFactory();
    v7 = swift_allocObject();
    outlined init with take of AceServiceInvokerAsync(v20, v7 + 16);
    *(v7 + 56) = v19;
  }

  *(v1 + 144) = v7;
  outlined init with take of AceServiceInvokerAsync(v5, v1 + 192);
  outlined init with take of AceServiceInvokerAsync(v3, v1 + 232);
  OUTLINED_FUNCTION_42();
}

void InstallVoiceShortcutFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v2 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);
  (*(v4 + 16))(v8, v1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_48();
    v21 = OUTLINED_FUNCTION_85();
    *v12 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type Input and conformance Input, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = OUTLINED_FUNCTION_48_2();
    v17(v16);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "InstallVoiceShortcutFlow.on %s", v12, 0xCu);
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_15_0(v12);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_48_2();
    v20(v19);
  }

  OUTLINED_FUNCTION_42();
}

uint64_t InstallVoiceShortcutFlow.execute(completion:)(uint64_t a1)
{
  type metadata accessor for InstallVoiceShortcutFlow();
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type InstallVoiceShortcutFlow and conformance InstallVoiceShortcutFlow, v1, type metadata accessor for InstallVoiceShortcutFlow, &protocol conformance descriptor for InstallVoiceShortcutFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t InstallVoiceShortcutFlow.execute()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(InstallVoiceShortcutFlow.execute());
}

uint64_t InstallVoiceShortcutFlow.execute()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v0[5] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "InstallVoiceShortcutFlow.execute", v4, 2u);
    OUTLINED_FUNCTION_15_0(v4);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v6))
  {
    v7 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v7);
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_17();
  }

  v13 = v0[4];

  v14 = v13[17];
  v0[6] = v14;
  v17 = (*(*v13 + 208) + **(*v13 + 208));
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = InstallVoiceShortcutFlow.execute();

  return v17(v14);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = InstallVoiceShortcutFlow.execute();
  }

  else
  {
    v5 = InstallVoiceShortcutFlow.execute();
  }

  return _swift_task_switch(v5);
}

{
  v17 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_85();
    v16 = v4;
    OUTLINED_FUNCTION_22_20(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v16);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_15_0(v4);
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_18_4();
  (*(v13 + 224))();
  static ExecuteResponse.complete(next:)();

  OUTLINED_FUNCTION_6_0();

  return v14();
}

uint64_t InstallVoiceShortcutFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v8);
    _os_log_impl(&dword_0, v6, v7, "InstallVoiceShortcutFlow shortcut installed, running shortcut", v4, 2u);
    OUTLINED_FUNCTION_17();
  }

  v9 = *(v5 + 48);

  OUTLINED_FUNCTION_18_4();
  (*(v10 + 216))(v9);
  static ExecuteResponse.complete(next:)();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t InstallVoiceShortcutFlow.installShortcut(invocationData:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(InstallVoiceShortcutFlow.installShortcut(invocationData:));
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *(v1 + 120) = v0;

  return _swift_task_switch(InstallVoiceShortcutFlow.installShortcut(invocationData:));
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = InstallVoiceShortcutFlow.installShortcut(invocationData:);
  }

  else
  {
    v2 = InstallVoiceShortcutFlow.installShortcut(invocationData:);
  }

  return _swift_task_switch(v2);
}

{
  v19 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_85();
    v18 = v4;
    OUTLINED_FUNCTION_22_20(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v18);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_15_0(v4);
    OUTLINED_FUNCTION_17();
  }

  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];
  swift_willThrow();
  (*(v14 + 8))(v13, v15);

  OUTLINED_FUNCTION_6_0();

  return v16();
}

void InstallVoiceShortcutFlow.installShortcut(invocationData:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  (*(**(v0 + 24) + 136))();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of URL?(*(v0 + 40));
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
    *(v0 + 72) = (*(*v3 + 128))(v4);
    *(v0 + 80) = v5;
    if (v5)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v6 = type metadata accessor for Logger();
      *(v0 + 88) = __swift_project_value_buffer(v6, static Logger.voiceCommands);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_48();
        v28 = OUTLINED_FUNCTION_85();
        *v9 = 136315138;
        v10 = OUTLINED_FUNCTION_48_2();
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
        _os_log_impl(&dword_0, v7, v8, "InstallVoiceShortcutFlow checking if shortcut already installed %s", v9, 0xCu);
        OUTLINED_FUNCTION_29_10();
        OUTLINED_FUNCTION_15_0(v9);
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 152), *(*(v0 + 32) + 176));
      v13 = swift_task_alloc();
      *(v0 + 96) = v13;
      *v13 = v0;
      v13[1] = InstallVoiceShortcutFlow.installShortcut(invocationData:);
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_21_18();

      __asm { BRAA            X4, X16 }
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 24);
    v20 = OUTLINED_FUNCTION_48();
    v28 = OUTLINED_FUNCTION_85();
    *v20 = 136315138;
    v21 = (*(*v19 + 104))();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v28);

    *(v20 + 4) = v23;
    _os_log_impl(&dword_0, v17, v18, "InstallVoiceShortcutInvocationData incomplete, unable to install shortcut : %s", v20, 0xCu);
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_15_0(v20);
  }

  type metadata accessor for CommandFailure();
  swift_allocObject();
  v24 = CommandFailure.init(errorCode:reason:)();
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type CommandFailure and conformance CommandFailure, 255, &type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  swift_allocError();
  *v25 = v24;
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_18();

  __asm { BRAA            X1, X16 }
}

{
  if (*(v0 + 120) == 1)
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v2))
    {
      v3 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v3);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_17();
    }

    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);

    (*(v10 + 8))(v9, v11);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_18();

    __asm { BRAA            X1, X16 }
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = OUTLINED_FUNCTION_48();
    v22 = OUTLINED_FUNCTION_85();
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v22);
    _os_log_impl(&dword_0, v14, v15, "InstallVoiceShortcutFlow shortcut not perviously installed, attempting to install : %s", v18, 0xCu);
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_15_0(v18);
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 152), *(*(v0 + 32) + 176));
  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  *v19 = v0;
  v19[1] = InstallVoiceShortcutFlow.installShortcut(invocationData:);
  OUTLINED_FUNCTION_21_18();

  __asm { BRAA            X5, X16 }
}

uint64_t InstallVoiceShortcutFlow.installShortcut(invocationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v6))
  {
    v7 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v7);
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_17();
  }

  v14 = v4[7];
  v13 = v4[8];
  v15 = v4[6];

  (*(v14 + 8))(v13, v15);

  OUTLINED_FUNCTION_6_0();

  return v16();
}

void InstallVoiceShortcutFlow.makeRunShortcutFlow(invocationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_40_0();
  v14 = v13;
  v15 = type metadata accessor for CATOption();
  __chkstk_darwin(v15 - 8);
  OUTLINED_FUNCTION_3();
  v16 = (*(*v14 + 128))();
  if (v17)
  {
    v72[0] = v16;
    v72[1] = v17;
    v73 = 0;
    memset(v71, 0, sizeof(v71));
    outlined init with copy of DeviceState(v12 + 96, v70);
    outlined init with copy of DeviceState(v12 + 16, v69);
    outlined init with copy of DeviceState(v12 + 56, v68);
    outlined init with copy of DeviceState(v12 + 192, v65);
    outlined init with copy of DeviceState(v12 + 232, v62);
    v18 = one-time initialization token for shared;

    if (v18 != -1)
    {
      swift_once();
    }

    v61 = static WFDialogState.shared;
    type metadata accessor for RunCustomIntentCATs(0);

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v60 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v59 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v57 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v55 = CATWrapper.__allocating_init(options:globals:)();
    v58 = type metadata accessor for WorkflowRunnerFlow(0);
    v19 = objc_allocWithZone(v58);
    v21 = v66;
    v20 = v67;
    __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    v56 = &v55;
    OUTLINED_FUNCTION_13_1();
    __chkstk_darwin(v22);
    OUTLINED_FUNCTION_3();
    v25 = v24 - v23;
    (*(v26 + 16))(v24 - v23);
    v27 = v63;
    v28 = v64;
    __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    OUTLINED_FUNCTION_13_1();
    __chkstk_darwin(v29);
    OUTLINED_FUNCTION_3();
    v32 = v31 - v30;
    (*(v33 + 16))(v31 - v30);
    specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(v72, v71, v61, v70, v69, v68, v60, v59, v57, v55, closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow, 0, v25, v52, v32, v53, v19, &type metadata for DefaultLinkHandlingFlowFactory, v21, v27, &type metadata for DefaultTCCTemplatesCATWrapper, &protocol witness table for DefaultLinkHandlingFlowFactory, v20, v28, &protocol witness table for DefaultTCCTemplatesCATWrapper, v54, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v63);
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    v71[0] = v35;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, 255, type metadata accessor for WorkflowRunnerFlow, &protocol conformance descriptor for WorkflowRunnerFlow);
    Flow.eraseToAnyFlow()();

    OUTLINED_FUNCTION_42();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.voiceCommands);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_48();
      v40 = OUTLINED_FUNCTION_85();
      v72[0] = v40;
      *v39 = 136315138;
      v41 = (*(*v14 + 104))();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v72);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_0, v37, v38, "InstallVoiceShortcutInvocationData incomplete, unable to runShortcut : %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_15_0(v40);
      OUTLINED_FUNCTION_15_0(v39);
    }

    OUTLINED_FUNCTION_42();

    v44(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
  }
}

uint64_t InstallVoiceShortcutFlow.makeErrorFlow()()
{
  outlined init with copy of DeviceState(v0 + 56, v3);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v3[0] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v1 = Flow.eraseToAnyFlow()();

  return v1;
}

uint64_t closure #1 in InstallVoiceShortcutFlow.makeErrorFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in InstallVoiceShortcutFlow.makeErrorFlow());
}

uint64_t closure #1 in InstallVoiceShortcutFlow.makeErrorFlow()()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_18_4();
  v3 = *(v2 + 104);
  v1[3] = type metadata accessor for AceOutput();
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = closure #1 in InstallVoiceShortcutFlow.makeErrorFlow();

  return v7(boxed_opaque_existential_1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

void *InstallVoiceShortcutFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  return v0;
}

uint64_t InstallVoiceShortcutFlow.__deallocating_deinit()
{
  InstallVoiceShortcutFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance InstallVoiceShortcutFlow(uint64_t a1)
{
  v6 = (*(**v1 + 200) + **(**v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in InstallVoiceShortcutFlow.makeErrorFlow()()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in InstallVoiceShortcutFlow.makeErrorFlow()(v3, v0);
}

uint64_t OUTLINED_FUNCTION_19_17()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return __swift_destroy_boxed_opaque_existential_1Tm(v0);
}

uint64_t OUTLINED_FUNCTION_22_20(float a1)
{
  *v1 = a1;
  *(v2 + 16) = v3;

  return swift_errorRetain();
}

uint64_t SuggestionsCATs.cancel(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v9 = OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  v12 = OUTLINED_FUNCTION_46_0(v11);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v12);
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v3 = OUTLINED_FUNCTION_28_13(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v10, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v14, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = OUTLINED_FUNCTION_22_3();
  v19 = OUTLINED_FUNCTION_19_18(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_11_28(v19);
  OUTLINED_FUNCTION_87();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v7);
  }

  else
  {
    OUTLINED_FUNCTION_26_21();

    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_87();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t SuggestionsCATs.close(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v9 = OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  v12 = OUTLINED_FUNCTION_46_0(v11);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v12);
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v3 = OUTLINED_FUNCTION_28_13(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v10, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v14, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = OUTLINED_FUNCTION_22_3();
  v19 = OUTLINED_FUNCTION_19_18(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_18_26(v19);
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_87();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t SuggestionsCATs.create(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v9 = OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_48_0(v9);
  v11 = OUTLINED_FUNCTION_47_0(v10);
  v12 = OUTLINED_FUNCTION_46_0(v11);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v12);
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v3 = OUTLINED_FUNCTION_28_13(v2);
  *(v3 + 16) = xmmword_216FA0;
  v4 = OUTLINED_FUNCTION_20_3(v3, "coldStartSuggestion");
  v5 = OUTLINED_FUNCTION_2_6(v4, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v10, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v14, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  v16 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v16, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = OUTLINED_FUNCTION_22_3();
  v19 = OUTLINED_FUNCTION_19_18(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_11_28(v19);
  OUTLINED_FUNCTION_87();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28);
}