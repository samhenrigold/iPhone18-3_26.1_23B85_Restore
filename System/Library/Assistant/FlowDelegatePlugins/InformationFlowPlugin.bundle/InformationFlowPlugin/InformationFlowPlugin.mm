uint64_t NavigateToShimFlow.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v4 = type metadata accessor for MessagePayload.ClientAction();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t variable initialization expression of NavigateToShimFlow.exitValue@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for NavigateToShimFlow.ExitValue(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t key path setter for NavigateToShimFlow.exitValue : NavigateToShimFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NavigateToShimFlow.ExitValue(a1, v6);
  return (*(**a2 + 104))(v6);
}

uint64_t NavigateToShimFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue;
  swift_beginAccess();
  return outlined init with copy of NavigateToShimFlow.ExitValue(v1 + v3, a1);
}

uint64_t outlined init with copy of NavigateToShimFlow.ExitValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NavigateToShimFlow.exitValue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue;
  swift_beginAccess();
  outlined assign with take of NavigateToShimFlow.ExitValue(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of NavigateToShimFlow.ExitValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NavigateToShimFlow.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue) = 0;
  type metadata accessor for NavigateToShimFlow.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v4 = type metadata accessor for MessagePayload.ClientAction();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t NavigateToShimFlow.init(with:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue) = 0;
  type metadata accessor for NavigateToShimFlow.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v4 = type metadata accessor for MessagePayload.ClientAction();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t NavigateToShimFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigateToShimFlow(0);
  lazy protocol witness table accessor for type NavigateToShimFlow and conformance NavigateToShimFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t type metadata accessor for NavigateToShimFlow.ExitValue(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigateToShimFlow and conformance NavigateToShimFlow()
{
  result = lazy protocol witness table cache variable for type NavigateToShimFlow and conformance NavigateToShimFlow;
  if (!lazy protocol witness table cache variable for type NavigateToShimFlow and conformance NavigateToShimFlow)
  {
    type metadata accessor for NavigateToShimFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigateToShimFlow and conformance NavigateToShimFlow);
  }

  return result;
}

uint64_t NavigateToShimFlow.execute()(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  v2[29] = swift_task_alloc();
  v3 = type metadata accessor for Parse.DirectInvocation();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v4 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v5 = type metadata accessor for TypedValue();
  v2[36] = v5;
  v2[37] = *(v5 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v6 = type metadata accessor for MessagePayload.ClientAction();
  v2[41] = v6;
  v2[42] = *(v6 - 8);
  v2[43] = swift_task_alloc();

  return _swift_task_switch(NavigateToShimFlow.execute(), 0, 0);
}

uint64_t NavigateToShimFlow.execute()()
{
  v69 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v6 = *(v0 + 328);
    v7 = *(v0 + 216);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v68 = v9;
    *v8 = 136315138;
    (*(v5 + 16))(v4, v7 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action, v6);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v68);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "NavigateToShimFlow makeDirectInvocation started with action: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v13 = objc_allocWithZone(SKIDirectInvocationPayload);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithIdentifier:v14];

  v16 = MessagePayload.ClientAction.shimParameters.getter();
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E45686372616573, 0xEC00000079746974), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = 0;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v68 = v23;
    *v22 = 136315138;
    *(v0 + 200) = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOGSgMd, &_sSay16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOGSgMR);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v68);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v20, v21, "NavigateToShim shimEntity: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  v67 = v15;
  if (v19)
  {
    if (*(v19 + 16))
    {
      v28 = *(v0 + 272);
      v27 = *(v0 + 280);
      v29 = *(v0 + 264);
      (*(v28 + 16))(v27, v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v29);

      if ((*(v28 + 88))(v27, v29) == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
      {
        v30 = *(v0 + 312);
        v31 = *(v0 + 320);
        v32 = *(v0 + 288);
        v33 = *(v0 + 296);
        v34 = *(v0 + 280);
        (*(*(v0 + 272) + 96))(v34, *(v0 + 264));
        (*(v33 + 32))(v31, v34, v32);
        v35 = *(v33 + 16);
        v35(v30, v31, v32);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 312);
        if (v38)
        {
          v41 = *(v0 + 296);
          v40 = *(v0 + 304);
          v42 = *(v0 + 288);
          v43 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v68 = v66;
          *v43 = 136315138;
          v35(v40, v39, v42);
          v44 = String.init<A>(describing:)();
          v46 = v45;
          v47 = *(v41 + 8);
          v47(v39, v42);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v68);

          *(v43 + 4) = v48;
          _os_log_impl(&dword_0, v36, v37, "NavigateToShim shimEntity is resolvedValue: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v66);
        }

        else
        {
          v49 = *(v0 + 288);
          v50 = *(v0 + 296);

          v47 = *(v50 + 8);
          v47(v39, v49);
        }

        static SearchEntityDataExtrator.extract(from:)(*(v0 + 320), (v0 + 152));
        v51 = *(v0 + 320);
        v52 = *(v0 + 288);
        if (*(v0 + 176))
        {
          outlined init with take of Any((v0 + 152), (v0 + 120));
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_B8690;
          *(v0 + 184) = 0xD000000000000011;
          *(v0 + 192) = 0x80000000000BD8D0;
          AnyHashable.init<A>(_:)();
          outlined init with copy of Any(v0 + 120, inited + 72);
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of Any?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v67 setUserData:isa];

          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
          v47(v51, v52);
        }

        else
        {
          v47(*(v0 + 320), *(v0 + 288));
          outlined destroy of Any?(v0 + 152, &_sypSgMd, &_sypSgMR);
        }

        v15 = v67;
      }

      else
      {
        (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
      }
    }

    else
    {
    }
  }

  v55 = [v15 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = [v15 userData];
  if (v56)
  {
    v57 = v56;
    v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v58);
  }

  v60 = *(v0 + 248);
  v59 = *(v0 + 256);
  v61 = *(v0 + 232);
  v62 = *(v0 + 240);
  v63 = *(v0 + 216);
  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v60 + 16))(v61, v59, v62);
  swift_storeEnumTagMultiPayload();
  (*(*v63 + 104))(v61);
  static ExecuteResponse.complete()();

  (*(v60 + 8))(v59, v62);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t static SearchEntityDataExtrator.extract(from:)@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  v161 = a2;
  v146 = type metadata accessor for TypeIdentifier();
  __chkstk_darwin(v146);
  v145 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for TypedValue.PrimitiveValue.FileValue();
  v165 = *(v154 - 1);
  __chkstk_darwin(v154);
  v160 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TypedValue.PrimitiveValue();
  v157 = *(v5 - 8);
  v158 = v5;
  __chkstk_darwin(v5);
  v147 = (&v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TypedValue.EntityValue();
  v8 = *(v7 - 8);
  v155 = v7;
  v156 = v8;
  v9 = __chkstk_darwin(v7);
  v159 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v144 = &v142 - v11;
  v149 = type metadata accessor for TypedValue.CollectionValue();
  v151 = *(v149 - 8);
  v12 = __chkstk_darwin(v149);
  v143 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v148 = &v142 - v15;
  __chkstk_darwin(v14);
  v150 = &v142 - v16;
  v17 = type metadata accessor for TypedValue();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v152 = (&v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v23 = &v142 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v142 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v142 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = (&v142 - v31);
  __chkstk_darwin(v30);
  v34 = &v142 - v33;
  v35 = *(v18 + 16);
  v153 = a1;
  v35(&v142 - v33, a1, v17);
  v163 = *(v18 + 88);
  v36 = v163(v34, v17);
  v162 = v17;
  v164 = v18;
  if (v36 == enum case for TypedValue.primitive(_:))
  {
    v35(v23, v34, v17);
    (*(v18 + 96))(v23, v17);
    v37 = swift_projectBox();
    v39 = v157;
    v38 = v158;
    v40 = v34;
    if ((*(v157 + 88))(v37, v158) == enum case for TypedValue.PrimitiveValue.file(_:))
    {
      v41 = v147;
      (*(v39 + 16))(v147, v37, v38);
      (*(v39 + 96))(v41, v38);
      v42 = v154;
      (*(v165 + 4))(v160, v41, v154);
      v43 = TypedValue.PrimitiveValue.FileValue.file.getter();
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.information);
      v45 = v43;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v166[0] = v49;
        *v48 = 136315138;
        v50 = [v45 filename];
        v51 = v34;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v166);
        v40 = v51;

        *(v48 + 4) = v55;
        v42 = v154;
        _os_log_impl(&dword_0, v46, v47, "NavigateToShimFlow Loading data for file: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
      }

      v56 = v161;
      v57 = v162;
      v58 = [v45 data];
      v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v59, v61);
      v56[1]._object = &type metadata for String;

      *v56 = v62;
      (*(v165 + 1))(v160, v42);

      v63 = v164;
      return (*(v63 + 8))(v40, v57);
    }

    v165 = v35;
    v160 = v34;

    v57 = v162;
    v63 = v164;
LABEL_20:
    if (one-time initialization token for information != -1)
    {
LABEL_37:
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Logger.information);
    v105 = v152;
    v165(v152, v153, v57);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    v108 = os_log_type_enabled(v106, v107);
    v40 = v160;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v166[0] = v110;
      *v109 = 136315138;
      TypedValue.typeIdentifier.getter();
      v111 = String.init<A>(describing:)();
      v113 = v112;
      (*(v63 + 8))(v105, v57);
      v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, v166);

      *(v109 + 4) = v114;
      _os_log_impl(&dword_0, v106, v107, "NavigateToShimFlow: recieved unexpected type: %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v110);
    }

    else
    {

      (*(v63 + 8))(v105, v57);
    }

    v115 = v161;
    *v161 = 0u;
    v115[1] = 0u;
    return (*(v63 + 8))(v40, v57);
  }

  v165 = v35;
  v160 = v34;
  v64 = enum case for TypedValue.entity(_:);
  if (v36 == enum case for TypedValue.entity(_:))
  {
    v57 = v162;
    v165(v26, v160, v162);
    (*(v164 + 96))(v26, v57);
    v65 = swift_projectBox();
    v67 = v155;
    v66 = v156;
    (*(v156 + 16))(v159, v65, v155);
    v68.super.isa = TypedValue.EntityValue.extractINFile()().super.isa;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.information);
    v70 = v68.super.isa;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v166[0] = v74;
      *v73 = 136315138;
      v75 = [(objc_class *)v70 filename];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v166);
      v67 = v155;
      v57 = v162;

      *(v73 + 4) = v79;
      v66 = v156;
      _os_log_impl(&dword_0, v71, v72, "NavigateToShimFlow Loading data for file: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
    }

    v80 = v161;
    v81 = [(objc_class *)v70 data];
    v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    v85 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v82, v84);
    v80[1]._object = &type metadata for String;

    *v80 = v85;
    (*(v66 + 8))(v159, v67);

    v63 = v164;
    v40 = v160;
    return (*(v63 + 8))(v40, v57);
  }

  v57 = v162;
  v63 = v164;
  if (v36 != enum case for TypedValue.collection(_:))
  {
    goto LABEL_20;
  }

  v165(v32, v160, v162);
  v86 = *(v63 + 96);
  v157 = v63 + 96;
  v154 = v86;
  (v86)(v32, v57);
  v159 = *v32;
  v87 = swift_projectBox();
  v88 = v150;
  v89 = *(v151 + 16);
  v90 = v149;
  v89(v150, v87, v149);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  v92 = __swift_project_value_buffer(v91, static Logger.information);
  v89(v148, v88, v90);
  v153 = v92;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v145 = v95;
    v152 = swift_slowAlloc();
    v166[0] = v152;
    *v95 = 136315138;
    LODWORD(v146) = v94;
    v147 = v93;
    v96 = v148;
    v97 = v149;
    v89(v143, v148, v149);
    v98 = String.init<A>(describing:)();
    v100 = v99;
    v158 = *(v151 + 8);
    v158(v96, v97);
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v166);

    v102 = v145;
    *(v145 + 4) = v101;
    v103 = v147;
    _os_log_impl(&dword_0, v147, v146, "NavigateToShimFlow collectionValue %s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v152);
  }

  else
  {

    v158 = *(v151 + 8);
    v158(v148, v90);
  }

  v57 = v162;
  v117 = TypedValue.CollectionValue.values.getter();
  v118 = *(v117 + 16);
  if (v118)
  {
    v119 = 0;
    while (1)
    {
      if (v119 >= *(v117 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v165(v29, v117 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v119, v57);
      if (v163(v29, v57) == v64)
      {
        break;
      }

      ++v119;
      (*(v63 + 8))(v29, v57);
      if (v118 == v119)
      {
        goto LABEL_32;
      }
    }

    (v154)(v29, v57);
    v121 = swift_projectBox();
    v123 = v155;
    v122 = v156;
    (*(v156 + 16))(v144, v121, v155);

    v124.super.isa = TypedValue.EntityValue.extractINFile()().super.isa;
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v166[0] = v128;
      *v127 = 136315138;
      v129 = [(objc_class *)v124.super.isa filename];
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;

      v133 = v130;
      v122 = v156;
      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v132, v166);

      *(v127 + 4) = v134;
      _os_log_impl(&dword_0, v125, v126, "NavigateToShimFlow Loading data for file: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v128);
    }

    v136 = v160;
    v135 = v161;
    v137 = [(objc_class *)v124.super.isa data];
    v138 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v141 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v138, v140);
    v135[1]._object = &type metadata for String;

    *v135 = v141;
    (*(v122 + 8))(v144, v123);
    v158(v150, v149);

    v63 = v164;
    v40 = v136;
  }

  else
  {
LABEL_32:
    v158(v150, v149);

    v120 = v161;
    *v161 = 0u;
    v120[1] = 0u;

    v40 = v160;
  }

  return (*(v63 + 8))(v40, v57);
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v27);
        outlined init with copy of Any(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        outlined init with copy of AnyHashable(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        outlined init with copy of Any(v25 + 8, v20);
        outlined destroy of Any?(v24, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
        v21 = v18;
        outlined init with take of Any(v20, v22);
        v13 = v21;
        outlined init with take of Any(v22, v23);
        outlined init with take of Any(v23, &v21);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          result = outlined init with take of Any(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = outlined init with take of Any(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      outlined destroy of Any?(v24, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t NavigateToShimFlow.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v2 = type metadata accessor for MessagePayload.ClientAction();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of NavigateToShimFlow.ExitValue(v0 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue);
  return v0;
}

uint64_t NavigateToShimFlow.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action;
  v2 = type metadata accessor for MessagePayload.ClientAction();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of NavigateToShimFlow.ExitValue(v0 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for Flow.execute() in conformance NavigateToShimFlow(uint64_t a1)
{
  v6 = (*(**v1 + 144) + **(**v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance NavigateToShimFlow()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

INFile __swiftcall TypedValue.EntityValue.extractINFile()()
{
  v0 = type metadata accessor for TypedValue.PrimitiveValue();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TypedValue.PrimitiveValue.FileValue();
  v66 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = type metadata accessor for TypedValue();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = TypedValue.EntityValue.properties.getter();
  if (*(v16 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697265707865, 0xEE00656C69466563);
    if (v18)
    {
      v62 = v8;
      v63 = v4;
      v19 = *(v10 + 16);
      v19(v15, *(v16 + 56) + *(v10 + 72) * v17, v9);

      v64 = v15;
      v19(v13, v15, v9);
      v20 = v10;
      if ((*(v10 + 88))(v13, v9) == enum case for TypedValue.primitive(_:))
      {
        (*(v10 + 96))(v13, v9);
        v21 = swift_projectBox();
        (*(v1 + 16))(v3, v21, v0);
        if ((*(v1 + 88))(v3, v0) == enum case for TypedValue.PrimitiveValue.file(_:))
        {
          (*(v1 + 96))(v3, v0);
          v22 = v66;
          v24 = v62;
          v23 = v63;
          (*(v66 + 32))(v62, v3, v63);

          v25 = v64;
          if (one-time initialization token for information != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static Logger.information);
          v27 = v65;
          (*(v22 + 16))(v65, v24, v23);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v59 = v30;
            v61 = swift_slowAlloc();
            v67 = v61;
            *v30 = 136315138;
            v60 = v28;
            v31 = TypedValue.PrimitiveValue.FileValue.file.getter();
            v32 = [v31 description];
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v29;
            v33 = v23;
            v34 = v24;
            v35 = v25;
            v36 = v27;
            v38 = v37;

            v39 = *(v22 + 8);
            v40 = v36;
            v25 = v35;
            v24 = v34;
            v23 = v33;
            v39(v40, v33);

            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v38, &v67);

            v42 = v59;
            v43 = v60;
            *(v59 + 1) = v41;
            _os_log_impl(&dword_0, v43, v58, "NavigateToShimFlow File Value: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v61);
          }

          else
          {

            v39 = *(v22 + 8);
            v39(v27, v23);
          }

          v55 = TypedValue.PrimitiveValue.FileValue.file.getter();
          v39(v24, v23);
          (*(v20 + 8))(v25, v9);
          return v55;
        }

        (*(v1 + 8))(v3, v0);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }

      v50 = v64;
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.information);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_0, v52, v53, "NavigateToShimFlow No INFile found", v54, 2u);
      }

      v55 = [objc_allocWithZone(INFile) init];
      (*(v20 + 8))(v50, v9);
      return v55;
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.information);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "NavigateToShimFlow No experienceFile found", v47, 2u);
  }

  v48 = objc_allocWithZone(INFile);

  return [v48 init];
}

Swift::String_optional __swiftcall INFile.extractBase64DataForFile()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = [v2 filename];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v20);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "NavigateToShimFlow Loading data for file: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v12 = [v2 data];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v13, v15);
  countAndFlagsBits = v16._countAndFlagsBits;
  object = v16._object;
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

double variable initialization expression of InformationRoutingFlow.interactionStream@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t default argument 4 of WebSearchPunchoutFlow.init(query:renderPegasusFlow:state:outputPublisher:responseGenerator:informationViewFactory:searchURLProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ResponseFactory;
  *a1 = result;
  return result;
}

uint64_t default argument 1 of InformationViewFactory.init(deviceState:commonCATs:)()
{
  v0 = type metadata accessor for CATOption();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  return CATWrapper.__allocating_init(options:globals:)();
}

double default argument 2 of InformationRoutingFlow.init(result:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v2 = type metadata accessor for KnowledgeFallbackHelper(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for KnowledgeFallbackHelper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of CurrentDevice.siriLocale.getter();

  v4 = v2[5];
  v5 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v5 - 8) + 56))(boxed_opaque_existential_1 + v4, 1, 1, v5);
  result = 0.0;
  *(boxed_opaque_existential_1 + v2[6]) = xmmword_B86A0;
  *(boxed_opaque_existential_1 + v2[7]) = xmmword_B86A0;
  return result;
}

uint64_t default argument 5 of RenderPegasusFlow.init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:)()
{
  v0 = type metadata accessor for CATOption();
  __chkstk_darwin(v0 - 8);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v1 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v2 = swift_allocObject();
  v3 = [objc_opt_self() sharedPreferences];
  v4 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v5 = PommesServerFallbackPreferences.init(_:)();
  v2[11] = v4;
  v2[12] = &protocol witness table for PommesServerFallbackPreferences;
  v2[8] = v5;
  outlined init with take of SiriSuggestionsBroker(v8, (v2 + 3));
  v2[2] = v1;
  static Device.current.getter();
  type metadata accessor for PegasusPatternFlowFactory();
  v6 = swift_allocObject();
  outlined init with copy of OutputPublisherAsync(v9, v6 + 16);
  outlined init with copy of OutputPublisherAsync(v8, v6 + 56);
  *(v6 + 96) = v2;
  static PatternFlowProvidingHelper.unwrap(_:with:)(v10, v9, (v6 + 104));
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  outlined destroy of Any?(v10, &_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  return v6;
}

uint64_t default argument 2 of RenderComponentFlowFactory.init(outputPublisher:informationViewFactory:dialogStateManager:)()
{
  type metadata accessor for PommesSearch();
  static PommesSearch.UserDefaultsSuiteName.getter();
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  return PommesDialogStateManager.init(suiteName:)();
}

uint64_t variable initialization expression of ShimOverrideFlow.exitValue@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for ShimOverrideFlow.ExitValue(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t default argument 2 of PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PommesSearchClient();
  swift_allocObject();
  result = PommesSearchClient.init()();
  if (result)
  {
    v4 = &protocol witness table for PommesSearchClient;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v2;
  a1[4] = v4;
  return result;
}

uint64_t default argument 2 of PegasusFlowEventLogger.logGenericFlowStepEvent(stateType:parameterName:statusReason:statusReasonDescription:taskType:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for SiriKitReliabilityCodes.normal(_:);
  v3 = type metadata accessor for SiriKitReliabilityCodes();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t default argument 0 of InformationRootFlow.init(flowEntryPoints:)()
{
  if (one-time initialization token for kFlowEntryPoints != -1)
  {
    swift_once();
  }
}

uint64_t default argument 3 of TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t default argument 0 of KnowledgeFallbackHelper.init(locale:)()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();
}

uint64_t variable initialization expression of PushOffQueryFlow.nlContextUpdate@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of InformationViewFactory.serverFallbackPreferences@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedPreferences];
  v3 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  result = PommesServerFallbackPreferences.init(_:)();
  a1[3] = v3;
  a1[4] = &protocol witness table for PommesServerFallbackPreferences;
  *a1 = result;
  return result;
}

uint64_t default argument 3 of RenderPegasusFlow.init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:)()
{
  type metadata accessor for ExperienceSelector();

  return swift_allocObject();
}

uint64_t default argument 2 of TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a1(0);
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return a3();
}

uint64_t default argument 4 of RenderPegasusFlow.init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:)()
{
  v0 = type metadata accessor for CATOption();
  __chkstk_darwin(v0 - 8);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v1 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v2 = swift_allocObject();
  v3 = [objc_opt_self() sharedPreferences];
  v4 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v5 = PommesServerFallbackPreferences.init(_:)();
  v2[11] = v4;
  v2[12] = &protocol witness table for PommesServerFallbackPreferences;
  v2[8] = v5;
  outlined init with take of SiriSuggestionsBroker(v9, (v2 + 3));
  v2[2] = v1;
  type metadata accessor for PommesSearch();
  static PommesSearch.UserDefaultsSuiteName.getter();
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v6 = PommesDialogStateManager.init(suiteName:)();
  type metadata accessor for RenderComponentFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v10, v7 + 16);
  *(v7 + 56) = v2;
  *(v7 + 64) = v6;
  return v7;
}

void *default argument 1 of RenderComponentFlowFactory.init(outputPublisher:informationViewFactory:dialogStateManager:)()
{
  v0 = type metadata accessor for CATOption();
  __chkstk_darwin(v0 - 8);
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v1 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v2 = swift_allocObject();
  v3 = [objc_opt_self() sharedPreferences];
  v4 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v5 = PommesServerFallbackPreferences.init(_:)();
  v2[11] = v4;
  v2[12] = &protocol witness table for PommesServerFallbackPreferences;
  v2[8] = v5;
  outlined init with take of SiriSuggestionsBroker(v7, (v2 + 3));
  v2[2] = v1;
  return v2;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
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

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined destroy of NavigateToShimFlow.ExitValue(uint64_t a1)
{
  v2 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with take of SiriSuggestionsBroker(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of OutputPublisherAsync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t type metadata completion function for NavigateToShimFlow(uint64_t a1)
{
  result = type metadata accessor for MessagePayload.ClientAction();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NavigateToShimFlow.ExitValue(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for NavigateToShimFlow.ExitValue(uint64_t a1)
{
  type metadata accessor for Parse.DirectInvocation();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Error?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Error?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Error?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Error?);
    }
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

void type metadata accessor for FLOWSchemaFLOWInformationPluginEventType(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEs8SendablepTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v4, &v13, &_sSS_Se_SEs8SendableptMd, &_sSS_Se_SEs8SendableptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Decodable & Encodable & Sendable(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryOSiGMd, &_ss18_DictionaryStorageCy21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryOSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *outlined init with take of Decodable & Encodable & Sendable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined init with copy of (String, Decodable & Encodable & Sendable)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t key path getter for CommandThrottle.throttling : CommandThrottle@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t CommandThrottle.throttling.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_82A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result & 1;
  return result;
}

uint64_t CommandThrottle.throttling.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*CommandThrottle.throttling.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CommandThrottle.throttling.modify;
}

void CommandThrottle.throttling.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for CommandThrottle.$throttling : CommandThrottle(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 120))(v6);
}

uint64_t CommandThrottle.$throttling.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CommandThrottle.$throttling.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CommandThrottle.$throttling.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC21InformationFlowPlugin15CommandThrottle__throttling;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return CommandThrottle.$throttling.modify;
}

void CommandThrottle.$throttling.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void CommandThrottle.throttle(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v31[1] = a2;
  v32 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  isa = v4[-1].isa;
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v33 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v31 - v14;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSThread, NSThread_ptr);
  v16 = objc_opt_self();
  v17 = [v16 currentThread];
  v18 = [v16 mainThread];
  LOBYTE(v16) = static NSObject.== infix(_:_:)();

  if ((v16 & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.information);
    v37 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v20))
    {
      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "CommandThrottle action called from background thread.";
    goto LABEL_11;
  }

  if (((*(*v3 + 88))() & 1) == 0)
  {
    v25 = (*(*v3 + 96))(1);
    v32(v25);
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v32 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v26 = *(v33 + 8);
    v26(v13, v10);
    v27 = v26;
    aBlock[4] = partial apply for closure #1 in CommandThrottle.throttle(_:);
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v29 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v32;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v28);

    (*(isa + 1))(v6, v29);
    (*(v34 + 8))(v9, v35);
    v27(v15, v10);
    return;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.information);
  v37 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "CommandThrottle action dropped due to throttling state.";
LABEL_11:
    _os_log_impl(&dword_0, v37, v20, v22, v21, 2u);
  }

LABEL_12:
  v24 = v37;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t CommandThrottle.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin15CommandThrottle__throttling;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CommandThrottle.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin15CommandThrottle__throttling;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t CommandThrottle.__allocating_init()()
{
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  return v0;
}

uint64_t CommandThrottle.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC21InformationFlowPlugin15CommandThrottle__throttling;
  v7[15] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CommandThrottle@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CommandThrottle(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for NSThread(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t type metadata accessor for CommandThrottle(uint64_t a1)
{
  result = type metadata singleton initialization cache for CommandThrottle;
  if (!type metadata singleton initialization cache for CommandThrottle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CommandThrottle(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SiriInformationDataModels.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriInformationDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000000000BD9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000000000BD9C0 == a2)
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
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int DisableConfirmRequestsConfirmationStrategy.ConfirmationError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SiriInformationDataModels.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedEncodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v2[2])
  {
    LOBYTE(v23) = 1;
    lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v14 = v2[1];
    v23 = *v2;
    v24 = v14;
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload();
    v15 = v22;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v6, v15);
  }

  else
  {
    LOBYTE(v23) = 0;
    lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v2[1];
    v23 = *v2;
    v24 = v16;
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload();
    v17 = v20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v9, v17);
  }

  return (*(v11 + 8))(v13, v10);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload);
  }

  return result;
}

double SiriInformationDataModels.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized SiriInformationDataModels.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t _s21InformationFlowPlugin41DisableConfirmRequestsConfirmationPayloadV10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOs0I3KeyAAsAGP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0x6C6562614C6F6ELL;
  }

  else
  {
    return 0x6C6562614C736579;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KnowledgeFallbackConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KnowledgeFallbackConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriInformationDataModels.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriInformationDataModels.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KnowledgeFallbackConfirmationPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnowledgeFallbackConfirmationPayload.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v15, v16, v17);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  v18 = v20[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v18)
  {
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t KnowledgeFallbackConfirmationPayload.init(from:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  result = specialized KnowledgeFallbackConfirmationPayload.init(from:)(a1, a2, a3, a4, a5);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance KnowledgeFallbackConfirmationPayload@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = specialized KnowledgeFallbackConfirmationPayload.init(from:)(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t specialized SiriInformationDataModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO44DisableConfirmRequestsConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO39KnowledgeFallbackConfirmationCodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26[-v7];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMd, &_ss22KeyedDecodingContainerVy21InformationFlowPlugin04SiriD10DataModelsO10CodingKeys33_31FC87288C5E257105EACCB6210EDC53LLOGMR);
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v26[-v10];
  v12 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type SiriInformationDataModels.CodingKeys and conformance SiriInformationDataModels.CodingKeys();
  v13 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  v32 = v9;
  v14 = v30;
  v15 = KeyedDecodingContainer.allKeys.getter();
  if (*(v15 + 16) != 1)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v23 = &type metadata for SiriInformationDataModels;
    v24 = v31;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, enum case for DecodingError.typeMismatch(_:), v21);
    swift_willThrow();
    (*(v32 + 8))(v11, v24);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  v16 = v31;
  v27 = *(v15 + 32);
  if (v27)
  {
    LOBYTE(v33) = 1;
    lazy protocol witness table accessor for type SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys and conformance SiriInformationDataModels.DisableConfirmRequestsConfirmationCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload and conformance DisableConfirmRequestsConfirmationPayload();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v5, v3);
    (*(v32 + 8))(v11, v16);
    swift_unknownObjectRelease();
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v14 = v30;
  }

  else
  {
    LOBYTE(v33) = 0;
    lazy protocol witness table accessor for type SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys and conformance SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload and conformance KnowledgeFallbackConfirmationPayload();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 8))(v8, v6);
    (*(v32 + 8))(v11, v16);
    swift_unknownObjectRelease();
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v37);
  *v14 = v17;
  *(v14 + 8) = v18;
  *(v14 + 16) = v19;
  *(v14 + 24) = v20;
  *(v14 + 32) = v27;
  return result;
}

unint64_t lazy protocol witness table accessor for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationPayload.CodingKeys and conformance KnowledgeFallbackConfirmationPayload.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationPayload.CodingKeys and conformance DisableConfirmRequestsConfirmationPayload.CodingKeys);
  }

  return result;
}

uint64_t specialized KnowledgeFallbackConfirmationPayload.init(from:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

unint64_t lazy protocol witness table accessor for type SiriInformationDataModels and conformance SiriInformationDataModels()
{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels;
  if (!lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriInformationDataModels and conformance SiriInformationDataModels);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriInformationDataModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriInformationDataModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for KnowledgeFallbackConfirmationPayload(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for KnowledgeFallbackConfirmationPayload(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisableConfirmRequestsConfirmationPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DisableConfirmRequestsConfirmationPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriInformationDataModels.KnowledgeFallbackConfirmationCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t Parse.DirectInvocation.get<A>(protoMessage:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v9 - 8);
  v10 = Parse.DirectInvocation.userData.getter();
  if (v10)
  {
    v11 = v10;
    if (*(v10 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v13 & 1) != 0))
    {
      outlined init with copy of Any(*(v11 + 56) + 32 * v12, v23);

      if (swift_dynamicCast())
      {
        v15 = v25;
        v14 = v26;
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        outlined copy of Data._Representation(v25, v26);
        BinaryDecodingOptions.init()();
        Message.init(serializedData:extensions:partial:options:)();
        outlined consume of Data._Representation(v15, v14);
        v22 = 0;
        return (*(*(a3 - 8) + 56))(a5, v22, 1, a3);
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.information);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v23[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v23);
    _os_log_impl(&dword_0, v17, v18, "Parse.DirectInvocation: No '%s' key found in DI Payload.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  v22 = 1;
  return (*(*(a3 - 8) + 56))(a5, v22, 1, a3);
}

id SAUIVisualResponseShowNextSnippet.init(from:)(uint64_t a1, unint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(SAUIVisualResponseSnippet) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v7 setModelData:isa];

  v9 = v7;
  UUID.init()();
  UUID.uuidString.getter();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v11 = String._bridgeToObjectiveC()();

  [v9 setAceId:v11];

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setVisualResponse:v9];
  UUID.init()();
  UUID.uuidString.getter();
  v10(v6, v3);
  v13 = String._bridgeToObjectiveC()();

  [v12 setAceId:v13];
  outlined consume of Data._Representation(a1, v16);

  return v12;
}

unint64_t InformationRoutingFlow.Invocations.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000003DLL;
  v2 = 0xD000000000000045;
  if (a1 != 3)
  {
    v2 = 0xD000000000000041;
  }

  if (a1 == 2)
  {
    v2 = 0xD00000000000003ELL;
  }

  if (a1)
  {
    v1 = 0xD000000000000040;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InformationRoutingFlow.Invocations(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = InformationRoutingFlow.Invocations.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == InformationRoutingFlow.Invocations.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InformationRoutingFlow.Invocations()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InformationRoutingFlow.Invocations.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InformationRoutingFlow.Invocations(uint64_t a1)
{
  InformationRoutingFlow.Invocations.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InformationRoutingFlow.Invocations(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  InformationRoutingFlow.Invocations.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InformationRoutingFlow.Invocations@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized InformationRoutingFlow.Invocations.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InformationRoutingFlow.Invocations@<X0>(unint64_t *a1@<X8>)
{
  result = InformationRoutingFlow.Invocations.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for InformationRoutingFlow.state : InformationRoutingFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of InformationRoutingFlow.State(a1, v6, type metadata accessor for InformationRoutingFlow.State);
  return (*(**a2 + 200))(v6);
}

uint64_t InformationRoutingFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state;
  swift_beginAccess();
  return outlined init with copy of InformationRoutingFlow.State(v1 + v3, a1, type metadata accessor for InformationRoutingFlow.State);
}

uint64_t InformationRoutingFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state;
  swift_beginAccess();
  outlined assign with take of InformationRoutingFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t InformationRoutingFlow.knowledgeFallbackHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper;
  swift_beginAccess();
  return outlined init with copy of OutputPublisherAsync(v1 + v3, a1);
}

uint64_t InformationRoutingFlow.knowledgeFallbackHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of SiriSuggestionsBroker(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t InformationRoutingFlow.__allocating_init(result:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a2;
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = specialized InformationRoutingFlow.__allocating_init(result:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(a1, v5, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v13;
}

uint64_t InformationRoutingFlow.__allocating_init(input:outputPublisher:interactionStream:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a4;
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  __chkstk_darwin(v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = specialized InformationRoutingFlow.__allocating_init(input:outputPublisher:interactionStream:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(a1, a2, a3, v7, v15, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  return v17;
}

uint64_t InformationRoutingFlow.execute()(uint64_t a1)
{
  v2[156] = v1;
  v2[155] = a1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2[157] = v3;
  v2[158] = *(v3 + 64);
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v2[161] = type metadata accessor for KnowledgeFallbackHelper(0);
  v2[162] = swift_task_alloc();
  type metadata accessor for Input();
  v2[163] = swift_task_alloc();
  v4 = type metadata accessor for PluginAction();
  v2[164] = v4;
  v2[165] = *(v4 - 8);
  v2[166] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
  v2[167] = swift_task_alloc();
  v5 = type metadata accessor for NLRouterParse.InputCandidate();
  v2[168] = v5;
  v2[169] = *(v5 - 8);
  v2[170] = swift_task_alloc();
  v6 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v2[171] = v6;
  v2[172] = *(v6 - 8);
  v2[173] = swift_task_alloc();
  v7 = type metadata accessor for Parse();
  v2[174] = v7;
  v2[175] = *(v7 - 8);
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();
  v8 = type metadata accessor for AjaxMetadata();
  v2[178] = v8;
  v2[179] = *(v8 - 8);
  v2[180] = swift_task_alloc();
  v9 = type metadata accessor for GenAIPartner();
  v2[181] = v9;
  v2[182] = *(v9 - 8);
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  v2[188] = v10;
  v11 = *(v10 - 8);
  v2[189] = v11;
  v2[190] = *(v11 + 64);
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v2[196] = swift_task_alloc();
  v12 = type metadata accessor for PommesEngagement();
  v2[197] = v12;
  v2[198] = *(v12 - 8);
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v13 = type metadata accessor for Parse.DirectInvocation();
  v2[201] = v13;
  v2[202] = *(v13 - 8);
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v14 = type metadata accessor for MessagePayload.ClientAction();
  v2[211] = v14;
  v2[212] = *(v14 - 8);
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v2[215] = swift_task_alloc();
  v2[216] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v2[217] = swift_task_alloc();
  v15 = type metadata accessor for ActivityType();
  v2[218] = v15;
  v2[219] = *(v15 - 8);
  v2[220] = swift_task_alloc();
  v16 = type metadata accessor for PerformanceUtil.Ticket();
  v2[221] = v16;
  v2[222] = *(v16 - 8);
  v2[223] = swift_task_alloc();
  v2[224] = swift_task_alloc();
  v17 = type metadata accessor for PommesSystemAppChecking();
  v2[225] = v17;
  v2[226] = *(v17 - 8);
  v2[227] = swift_task_alloc();
  v18 = type metadata accessor for Date();
  v2[228] = v18;
  v2[229] = *(v18 - 8);
  v2[230] = swift_task_alloc();
  v2[231] = type metadata accessor for PegasusExperience(0);
  v2[232] = swift_task_alloc();
  type metadata accessor for CATOption();
  v2[233] = swift_task_alloc();
  v19 = type metadata accessor for Parse.PegasusResult();
  v2[234] = v19;
  v2[235] = *(v19 - 8);
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = type metadata accessor for InformationRoutingFlow.State(0);
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();

  return _swift_task_switch(InformationRoutingFlow.execute(), 0, 0);
}

uint64_t InformationRoutingFlow.execute()()
{
  v425 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0 + 992;
  v2 = v0 + 1120;
  v392 = v0 + 1128;
  v396 = v0 + 896;
  v3 = v0 + 1160;
  v402 = v0 + 1216;
  v407 = v0 + 1208;
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.information);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "InformationRoutingFlow.execute", v7, 2u);
  }

  v8 = (v0 + 1024);
  v9 = (v0 + 1056);
  v420 = v0;
  v10 = *(v0 + 1248);

  (*(*v10 + 192))();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(*(v0 + 1880) + 32))(*(v0 + 1896), *(v0 + 1920), *(v0 + 1872));
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&dword_0, v108, v109, "InformationRoutingFlow: renderPegasus", v110, 2u);
      }

      v111 = *(v420 + 1896);
      v112 = *(v420 + 1888);
      v113 = *(v420 + 1880);
      v385 = v113;
      v388 = v111;
      v114 = *(v420 + 1872);
      v381 = v114;
      v393 = *(v420 + 1856);
      v115 = *(v420 + 1840);
      v116 = *(v420 + 1832);
      v364 = *(v420 + 1848);
      v366 = *(v420 + 1824);
      v398 = *(v420 + 1816);
      v404 = *(v420 + 1800);
      v410 = *(v420 + 1792);
      v415 = *(v420 + 1808);
      v373 = *(v420 + 1784);
      v376 = *(v420 + 1776);
      v379 = *(v420 + 1768);
      v367 = *(v420 + 1752);
      v368 = *(v420 + 1744);
      v369 = *(v420 + 1760);
      v370 = *(v420 + 1736);
      v117 = *(v420 + 1248);

      (*(v113 + 16))(v112, v111, v114);
      outlined init with copy of OutputPublisherAsync(v117 + 16, v420 + 616);
      v119 = *(v117 + 96);
      v118 = *(v117 + 104);
      outlined init with copy of OutputPublisherAsync(v117 + 56, v420 + 456);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      static Device.current.getter();
      type metadata accessor for CommonCATs(0);
      static CATOption.defaultMode.getter();
      v120 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for InformationViewFactory();
      v121 = swift_allocObject();
      v122 = [objc_opt_self() sharedPreferences];
      v123 = type metadata accessor for PommesServerFallbackPreferences();
      swift_allocObject();
      v124 = PommesServerFallbackPreferences.init(_:)();
      v121[11] = v123;
      v121[12] = &protocol witness table for PommesServerFallbackPreferences;
      v121[8] = v124;
      outlined init with take of SiriSuggestionsBroker((v420 + 376), (v121 + 3));
      v121[2] = v120;
      type metadata accessor for PommesSearch();
      static PommesSearch.UserDefaultsSuiteName.getter();
      type metadata accessor for PommesDialogStateManager();
      swift_allocObject();
      v125 = PommesDialogStateManager.init(suiteName:)();
      type metadata accessor for RenderComponentFlowFactory();
      v126 = swift_allocObject();
      outlined init with take of SiriSuggestionsBroker((v420 + 416), v126 + 16);
      *(v126 + 56) = v121;
      *(v126 + 64) = v125;
      v127 = v126;
      default argument 5 of RenderPegasusFlow.init(pommesResponse:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:appChecking:responseProducerType:)();
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v128 = swift_task_alloc();
      *(v128 + 16) = v118;
      *(v128 + 24) = v112;
      Date.init()();
      v360 = v128;
      v361 = v364;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v116 + 8))(v115, v366);

      outlined init with copy of OutputPublisherAsync(v420 + 616, v420 + 336);
      static SiriKitEventSender.current.getter();
      type metadata accessor for PegasusFlowEventLogger();
      v129 = swift_allocObject();
      *(v129 + 16) = 0;
      outlined init with take of SiriSuggestionsBroker((v420 + 296), v129 + 24);
      *(v129 + 64) = 0x54746E6572727543;
      *(v129 + 72) = 0xEB000000006B7361;
      *(v129 + 80) = 2;
      outlined init with copy of OutputPublisherAsync(v420 + 456, v420 + 256);
      v363 = default argument 7 of RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)();
      PommesSystemAppChecking.init()();
      v365 = type metadata accessor for AppResolutionStrategyHelpers();
      type metadata accessor for RenderPegasusFlow(0);
      v130 = swift_allocObject();
      *(v420 + 240) = v404;
      *(v420 + 248) = &protocol witness table for PommesSystemAppChecking;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v420 + 216));
      (*(v415 + 16))(boxed_opaque_existential_1, v398, v404);
      *(v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_rrEntities) = _swiftEmptyArrayStorage;
      outlined init with copy of InformationRoutingFlow.State(v393, v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience, type metadata accessor for PegasusExperience);
      *(v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse) = 0;
      outlined init with copy of OutputPublisherAsync(v420 + 336, v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher);
      *(v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_informationViewFactory) = v119;
      *(v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_renderComponentFlowFactory) = v127;
      v132 = OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger;
      *(v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger) = v129;
      v133 = v132;
      v362 = v132;

      Date.init()();
      PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
      v134 = *(v130 + v133);
      (*(v367 + 104))(v369, enum case for ActivityType.start(_:), v368);
      v135 = enum case for SiriKitReliabilityCodes.normal(_:);
      v136 = type metadata accessor for SiriKitReliabilityCodes();
      v137 = *(v136 - 8);
      (*(v137 + 104))(v370, v135, v136);
      (*(v137 + 56))(v370, 0, 1, v136);
      v138 = *(*v134 + 120);

      v138(v369, 0x6C7070615F746F6ELL, 0xEE00656C62616369, v370, 0xD000000000000018, 0x80000000000BDE10, 0x54746E6572727543, 0xEB000000006B7361, 190, 2, 2, partial apply for closure #1 in RenderPegasusFlow.init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:), v360, v361);

      outlined destroy of Any?(v370, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      (*(v367 + 8))(v369, v368);
      static PerformanceUtil.shared.getter();
      dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

      Date.init()();
      PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
      v139 = *(**(v130 + v362) + 152);

      v139(v140);

      static PerformanceUtil.shared.getter();
      dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

      v11 = v420;

      v141 = *(v376 + 8);
      v141(v373, v379);
      v141(v410, v379);
      (*(v415 + 8))(v398, v404);
      __swift_destroy_boxed_opaque_existential_0Tm((v420 + 336));
      outlined destroy of PegasusExperience(v393, type metadata accessor for PegasusExperience);
      __swift_destroy_boxed_opaque_existential_0Tm((v420 + 456));
      __swift_destroy_boxed_opaque_existential_0Tm((v420 + 616));
      *(v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pegasusPatternFlowFactory) = v363;
      outlined init with take of SiriSuggestionsBroker((v420 + 256), v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_aceServiceInvoker);
      outlined init with take of SiriSuggestionsBroker((v420 + 216), v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking);
      v142 = (v130 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType);
      *v142 = v365;
      v142[1] = &protocol witness table for AppResolutionStrategyHelpers;
      v143 = *(v385 + 8);
      v143(v112, v381);
      *(v420 + 1232) = v130;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type RenderPegasusFlow and conformance RenderPegasusFlow, type metadata accessor for RenderPegasusFlow, &protocol conformance descriptor for RenderPegasusFlow);
      static ExecuteResponse.complete<A>(next:)();
      v143(v388, v381);

      goto LABEL_100;
    case 2u:
      v83 = *(v0 + 1920);
      v84 = *(v420 + 1728);
      v85 = *v83;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMd, &_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMR);
      outlined init with take of GenAIPartner?(v83 + *(v86 + 48), v84, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v87, v88, "InformationRoutingFlow: runPommesRequestFlow", v89, 2u);
      }

      v90 = *(v420 + 1728);
      v91 = *(v420 + 1720);
      v92 = *(v420 + 1248);

      outlined init with copy of (String, Decodable & Encodable & Sendable)(v90, v91, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      outlined init with copy of OutputPublisherAsync(v92 + 16, v420 + 776);
      type metadata accessor for RunPommesRequestFlow(0);
      v93 = swift_allocObject();
      *(v93 + 16) = v85;
      outlined init with take of GenAIPartner?(v91, v93 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      outlined init with take of SiriSuggestionsBroker((v420 + 776), v93 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher);
      v94 = v93 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
      *v94 = 0u;
      *(v94 + 16) = 0u;
      *(v94 + 32) = 0;
      *(v94 + 40) = 2;
      *(v420 + 1192) = v93;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type RunPommesRequestFlow and conformance RunPommesRequestFlow, type metadata accessor for RunPommesRequestFlow, &protocol conformance descriptor for RunPommesRequestFlow);
      static ExecuteResponse.complete<A>(next:)();
      outlined destroy of Any?(v90, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      goto LABEL_88;
    case 3u:
      v11 = v0;
      (*(*(v0 + 1616) + 32))(*(v0 + 1656), *(v0 + 1920), *(v0 + 1608));
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_0, v98, v99, "InformationRoutingFlow: directInvocation", v100, 2u);
      }

      v101 = *(v420 + 1656);
      v102 = *(v420 + 1616);
      v103 = *(v420 + 1608);
      v104 = *(v420 + 1240);

      specialized FlowTrampolining.makeResponse(for:)(v101, closure #1 in FlowTrampolining.makeResponse(for:)partial apply, closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)specialized partial apply, v104);
      goto LABEL_35;
    case 4u:
      (*(*(v0 + 1616) + 32))(*(v0 + 1648), *(v0 + 1920), *(v0 + 1608));
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_0, v48, v49, "InformationRoutingFlow: TapEngagement DI", v50, 2u);
      }

      v51 = *(v0 + 1664);
      v52 = *(v0 + 1648);
      v53 = *(v0 + 1616);
      v54 = *(v0 + 1608);
      v55 = *(v0 + 1600);
      v56 = *(v0 + 1592);
      v57 = *(v0 + 1584);
      v58 = *(v0 + 1576);

      (*(v53 + 16))(v51, v52, v54);
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      PommesEngagement.init()();
      type metadata accessor for PatternExecutor();
      v59 = swift_allocObject();
      type metadata accessor for TapEngagementHandlingFlow(0);
      v60 = swift_allocObject();
      (*(v57 + 16))(v56, v55, v58);
      v61 = specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(v51, &v421, v56, v59, v60);
      (*(v57 + 8))(v55, v58);
      if (v61)
      {
        v62 = *(v420 + 1648);
        v63 = *(v420 + 1616);
        v64 = *(v420 + 1608);
        *(v420 + 1144) = v61;
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow, type metadata accessor for TapEngagementHandlingFlow, &protocol conformance descriptor for TapEngagementHandlingFlow);
        Flow.eraseToAnyFlow()();
        static ExecuteResponse.complete(next:)();

        (*(v63 + 8))(v62, v64);
        v11 = v420;
      }

      else
      {
        v259 = Logger.logObject.getter();
        v260 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v259, v260))
        {
          v261 = swift_slowAlloc();
          *v261 = 0;
          _os_log_impl(&dword_0, v259, v260, "InformationRoutingFlow: Failed to build TapEngagement Handling flow.", v261, 2u);
        }

        v11 = v420;
        v262 = *(v420 + 1648);
        v263 = *(v420 + 1616);
        v264 = *(v420 + 1608);

        static ExecuteResponse.complete()();
        (*(v263 + 8))(v262, v264);
      }

      goto LABEL_100;
    case 5u:
      (*(*(v0 + 1616) + 32))(*(v0 + 1640), *(v0 + 1920), *(v0 + 1608));
      v144 = Parse.DirectInvocation.userData.getter();
      if (!v144)
      {
        goto LABEL_78;
      }

      v145 = v144;
      if (*(v144 + 16))
      {
        v146 = specialized __RawDictionaryStorage.find<A>(_:)(0x7972657571, 0xE500000000000000);
        if (v147)
        {
          outlined init with copy of Any(*(v145 + 56) + 32 * v146, v0 + 928);

          outlined init with copy of Any(v0 + 928, v0 + 960);
          v148 = String.init<A>(describing:)();
          v150 = v149;

          v151 = Logger.logObject.getter();
          v152 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            *&v421 = v154;
            *v153 = 136315138;
            *(v153 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, &v421);
            _os_log_impl(&dword_0, v151, v152, "InformationRoutingFlow: WebSearchHandoff DI for query: %s", v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v154);
          }

          static OutputPublisherFactory.makeOutputPublisherAsync()();
          static Device.current.getter();
          type metadata accessor for CommonCATs(0);
          static CATOption.defaultMode.getter();
          v155 = CATWrapper.__allocating_init(options:globals:)();
          type metadata accessor for InformationViewFactory();
          v156 = swift_allocObject();
          v157 = [objc_opt_self() sharedPreferences];
          v158 = type metadata accessor for PommesServerFallbackPreferences();
          swift_allocObject();
          v159 = PommesServerFallbackPreferences.init(_:)();
          v156[11] = v158;
          v156[12] = &protocol witness table for PommesServerFallbackPreferences;
          v156[8] = v159;
          outlined init with take of SiriSuggestionsBroker((v420 + 816), (v156 + 3));
          v156[2] = v155;
          type metadata accessor for PommesSearch();
          static PommesSearch.UserDefaultsSuiteName.getter();
          type metadata accessor for PommesDialogStateManager();
          swift_allocObject();
          v160 = PommesDialogStateManager.init(suiteName:)();
          type metadata accessor for RenderComponentFlowFactory();
          v161 = swift_allocObject();
          outlined init with take of SiriSuggestionsBroker((v420 + 856), v161 + 16);
          *(v161 + 56) = v156;
          *(v161 + 64) = v160;
          v162 = type metadata accessor for PommesSearchClient();
          swift_allocObject();
          v163 = PommesSearchClient.init()();
          if (v163)
          {
            v164 = &protocol witness table for PommesSearchClient;
          }

          else
          {
            v162 = 0;
            v164 = 0;
            *(&v421 + 1) = 0;
            v422 = 0;
          }

          v343 = *(v420 + 1640);
          v344 = *(v420 + 1616);
          v345 = *(v420 + 1608);
          *&v421 = v163;
          v423 = v162;
          v424 = v164;
          type metadata accessor for PushOffQueryFlow(0);
          swift_allocObject();
          v346 = specialized PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(v148, v150, v161, &v421);

          *(v420 + 1136) = v346;
          lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type PushOffQueryFlow and conformance PushOffQueryFlow, type metadata accessor for PushOffQueryFlow, &protocol conformance descriptor for PushOffQueryFlow);
          v11 = v420;
          static ExecuteResponse.complete<A>(next:)();
          __swift_destroy_boxed_opaque_existential_0Tm((v420 + 928));
          (*(v344 + 8))(v343, v345);

          goto LABEL_100;
        }
      }

LABEL_78:
      v249 = Logger.logObject.getter();
      v250 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v249, v250))
      {
        v251 = swift_slowAlloc();
        *v251 = 0;
        _os_log_impl(&dword_0, v249, v250, "InformationRoutingFlow: WebSearchHandoff DI had no query", v251, 2u);
      }

      v252 = *(v420 + 1840);
      v253 = *(v420 + 1832);
      v254 = *(v420 + 1824);
      v417 = *(v420 + 1640);
      v255 = *(v420 + 1616);
      v256 = *(v420 + 1608);
      v257 = *(v420 + 1248);

      *(v420 + 1120) = v257;
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v258 = swift_task_alloc();
      v258[2] = v2;
      v258[3] = 0xD000000000000037;
      v258[4] = 0x80000000000BDB90;
      Date.init()();
      type metadata accessor for ExecuteResponse();
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v253 + 8))(v252, v254);
      v11 = v420;
      goto LABEL_99;
    case 6u:
      v184 = v0;
      v185 = *(v0 + 1920);
      v186 = *(v0 + 1568);
      v187 = *(v0 + 1560);
      v188 = v185[1];
      v406 = *v185;
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMR);
      outlined init with take of GenAIPartner?(v185 + *(v189 + 48), v186, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v186, v187, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);

      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.debug.getter();

      v192 = os_log_type_enabled(v190, v191);
      v193 = *(v420 + 1560);
      v411 = v188;
      if (v192)
      {
        v194 = *(v420 + 1552);
        v195 = swift_slowAlloc();
        *&v421 = swift_slowAlloc();
        *v195 = 136315394;
        *(v195 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v188, &v421);
        *(v195 + 12) = 2080;
        outlined init with copy of (String, Decodable & Encodable & Sendable)(v193, v194, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        v196 = String.init<A>(describing:)();
        v198 = v197;
        outlined destroy of Any?(v193, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v198, &v421);

        *(v195 + 14) = v199;
        _os_log_impl(&dword_0, v190, v191, "InformationRoutingFlow: knowledge fallback for query: %s, genAIPartner: %s", v195, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        outlined destroy of Any?(v193, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      }

      v235 = (**(v420 + 1248) + 256);
      v236 = *v235;
      v237 = (*v235)(v1);
      v239 = *(v238 + 24);
      v240 = *(v238 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v238, v239);
      LOBYTE(v239) = (*(v240 + 8))(v239, v240);
      v237(v1, 0);
      v241 = *(v420 + 1568);
      v11 = v420;
      if ((v239 & 1) == 0)
      {

        static ExecuteResponse.complete()();
        outlined destroy of Any?(v241, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        goto LABEL_100;
      }

      v242 = v184[193];
      v243 = v184[182];
      v244 = v184[181];
      v389 = *(v184[179] + 56);
      v389(v184[187], 1, 1, v184[178]);
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v241, v242, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      v245 = *(v243 + 48);
      if (v245(v242, 1, v244) == 1)
      {
        outlined destroy of Any?(v184[193], &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        v246 = v184;
        v247 = v406;
        v248 = v411;
LABEL_114:
        v310 = Logger.logObject.getter();
        v311 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v310, v311))
        {
          v312 = swift_slowAlloc();
          *v312 = 0;
          _os_log_impl(&dword_0, v310, v311, "Knowledge fallback: falling back with an implicit request (do not request a specific partner)", v312, 2u);
        }

        v313 = v246[187];
        v314 = v246[186];
        v315 = v246[178];

        v316 = swift_task_alloc();
        *(v316 + 16) = v247;
        *(v316 + 24) = v248;
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type AjaxMetadata and conformance AjaxMetadata, &type metadata accessor for AjaxMetadata, &protocol conformance descriptor for AjaxMetadata);
        static Buildable.withBuilder(_:)();

        outlined destroy of Any?(v313, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        v389(v314, 0, 1, v315);
        outlined init with take of GenAIPartner?(v314, v313, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        goto LABEL_117;
      }

      v382 = *(v184[182] + 32);
      v382(v184[184], v184[193], v184[181]);
      v291 = v236(v396);
      v293 = *(v292 + 24);
      v294 = *(v292 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v292, v293);
      v295 = (*(v294 + 112))(v293, v294);
      v297 = v296;
      v291(v396, 0);
      if (v297)
      {
        v248 = v411;
        if (v295 == 0xD000000000000018 && 0x80000000000BDB70 == v297 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v298 = v420;
          v299 = *(v420 + 1536);
          v300 = *(v420 + 1456);
          v301 = *(v420 + 1448);
          (*(v300 + 104))(v299, enum case for GenAIPartner.chatGPT(_:), v301);
          (*(v300 + 56))(v299, 0, 1, v301);
          goto LABEL_110;
        }
      }

      else
      {
        v248 = v411;
      }

      v298 = v420;
      (*(*(v420 + 1456) + 56))(*(v420 + 1536), 1, 1, *(v420 + 1448));
LABEL_110:

      v302 = v298[192];
      v303 = v298[181];
      v304 = v245(v302, 1, v303);
      v305 = v298[184];
      v246 = v298;
      if (v304 == 1)
      {
        v306 = v298[182];
        outlined destroy of Any?(v302, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        (*(v306 + 8))(v305, v303);
        v247 = v406;
        goto LABEL_114;
      }

      v382(v298[183], v302, v303);
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type GenAIPartner and conformance GenAIPartner, &type metadata accessor for GenAIPartner, &protocol conformance descriptor for GenAIPartner);
      v247 = v406;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v307 = v298[184];
        v308 = v298[181];
        v309 = *(v298[182] + 8);
        v309(v298[183], v308);
        v309(v307, v308);
        goto LABEL_114;
      }

      v347 = Logger.logObject.getter();
      v348 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v347, v348))
      {
        v349 = swift_slowAlloc();
        *v349 = 0;
        _os_log_impl(&dword_0, v347, v348, "Knowledge fallback: user requested a GenAI partner other than the current/default. Falling back with an explicit request for the mentioned partner.", v349, 2u);
      }

      v350 = v298[187];
      v351 = *(v420 + 1488);
      v352 = *(v420 + 1472);
      v419 = v352;
      v353 = *(v420 + 1464);
      v354 = *(v420 + 1456);
      v355 = *(v420 + 1448);
      v356 = *(v420 + 1424);

      v357 = swift_task_alloc();
      v357[2] = v406;
      v357[3] = v411;
      v357[4] = v352;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type AjaxMetadata and conformance AjaxMetadata, &type metadata accessor for AjaxMetadata, &protocol conformance descriptor for AjaxMetadata);
      static Buildable.withBuilder(_:)();

      v358 = *(v354 + 8);
      v358(v353, v355);
      outlined destroy of Any?(v350, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
      v389(v351, 0, 1, v356);
      v359 = v351;
      v246 = v420;
      outlined init with take of GenAIPartner?(v359, v350, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
      v358(v419, v355);
LABEL_117:
      v317 = v246[185];
      v318 = v246[179];
      v319 = v246[178];
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v246[187], v317, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
      if ((*(v318 + 48))(v317, 1, v319) == 1)
      {
        v320 = *(v420 + 1840);
        v321 = *(v420 + 1832);
        v322 = *(v420 + 1824);
        v323 = *(v420 + 1568);
        v324 = *(v420 + 1496);
        v325 = *(v420 + 1480);
        v326 = *(v420 + 1248);

        outlined destroy of Any?(v325, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        *(v420 + 1128) = v326;
        type metadata accessor for PerformanceUtil();
        static PerformanceUtil.shared.getter();
        v327 = swift_task_alloc();
        v327[2] = v392;
        v327[3] = 0xD000000000000031;
        v327[4] = 0x80000000000BDB30;
        Date.init()();
        type metadata accessor for ExecuteResponse();
        dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

        v328 = v320;
        v11 = v420;
        (*(v321 + 8))(v328, v322);

        outlined destroy of Any?(v324, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        outlined destroy of Any?(v323, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      }

      else
      {
        v418 = v246[196];
        v401 = v246[187];
        v329 = v246[185];
        v330 = v246[180];
        v331 = v246[179];
        v332 = v246[178];
        v333 = v246[177];
        v383 = v246[176];
        v334 = *(v420 + 1400);
        v374 = v333;
        v377 = *(v420 + 1392);
        v335 = *(v420 + 1384);
        v336 = *(v420 + 1376);
        v337 = *(v420 + 1368);
        v338 = *(v420 + 1360);
        v339 = *(v420 + 1352);
        v372 = *(v420 + 1344);
        v340 = *(v420 + 1336);
        v391 = *(v420 + 1320);
        v395 = *(v420 + 1312);
        v386 = *(v420 + 1328);
        v341 = v332;
        (*(v331 + 32))(v330, v329, v332);
        (*(v331 + 16))(v335, v330, v341);
        (*(v336 + 104))(v335, enum case for NLRoutingDecisionMessage.RoutingDecision.ajax(_:), v337);
        *v338 = v406;
        v338[1] = v411;
        (*(v339 + 104))(v338, enum case for NLRouterParse.InputCandidate.text(_:), v372);
        v342 = type metadata accessor for USOParse();
        (*(*(v342 - 8) + 56))(v340, 1, 1, v342);
        NLRouterParse.init(nlRoutingDecision:input:usoParse:pommesResponse:)();
        (*(v334 + 104))(v374, enum case for Parse.nlRouter(_:), v377);
        (*(v334 + 16))(v383, v374, v377);
        Input.init(parse:)();
        PluginAction.init(flowHandlerId:input:)();
        static ExecuteResponse.redirect(nextPluginAction:)();
        (*(v391 + 8))(v386, v395);
        (*(v334 + 8))(v374, v377);
        v11 = v420;
        (*(v331 + 8))(v330, v341);
        outlined destroy of Any?(v401, &_s16SiriMessageTypes12AjaxMetadataVSgMd, &_s16SiriMessageTypes12AjaxMetadataVSgMR);
        outlined destroy of Any?(v418, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      }

      goto LABEL_100;
    case 7u:
      v11 = v0;
      outlined init with take of SiriSuggestionsBroker(*(v0 + 1920), v0 + 16);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_0, v105, v106, "InformationRoutingFlow: completeToNextFlow", v107, 2u);
      }

      __swift_project_boxed_opaque_existential_1((v420 + 16), *(v420 + 40));
      static ExecuteResponse.complete<A>(next:)();
      __swift_destroy_boxed_opaque_existential_0Tm((v420 + 16));
      goto LABEL_100;
    case 8u:
      (*(*(v0 + 1616) + 32))(*(v0 + 1624), *(v0 + 1920), *(v0 + 1608));
      v220 = Logger.logObject.getter();
      v221 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        *v222 = 0;
        _os_log_impl(&dword_0, v220, v221, "InformationRoutingFlow: webSearchPunchout", v222, 2u);
      }

      v223 = Parse.DirectInvocation.userData.getter();
      if (v223)
      {
        v224 = v223;
        if (*(v223 + 16) && (v225 = specialized __RawDictionaryStorage.find<A>(_:)(0x7972657571, 0xE500000000000000), (v226 & 1) != 0))
        {
          outlined init with copy of Any(*(v224 + 56) + 32 * v225, v9);

          if (*(v420 + 1080))
          {
            if (swift_dynamicCast())
            {
              v227 = *(v420 + 1912);
              v101 = *(v420 + 1624);
              v102 = *(v420 + 1616);
              v103 = *(v420 + 1608);
              v228 = *(v420 + 1248);
              v229 = *(v420 + 1112);
              *v227 = *(v420 + 1104);
              v227[1] = v229;
              v227[2] = 0;
              swift_storeEnumTagMultiPayload();
              v11 = v420;
              (*(*v228 + 200))(v227);
              static ExecuteResponse.ongoing(requireInput:)();
LABEL_35:
              (*(v102 + 8))(v101, v103);
              goto LABEL_100;
            }

LABEL_96:
            v281 = Logger.logObject.getter();
            v282 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v281, v282))
            {
              v283 = swift_slowAlloc();
              *v283 = 0;
              _os_log_impl(&dword_0, v281, v282, "WebSearchPunchout DirectInvocation missing query", v283, 2u);
            }

            v284 = *(v420 + 1840);
            v285 = *(v420 + 1832);
            v286 = *(v420 + 1824);
            v417 = *(v420 + 1624);
            v255 = *(v420 + 1616);
            v256 = *(v420 + 1608);
            v287 = *(v420 + 1248);

            *(v420 + 1216) = v287;
            type metadata accessor for PerformanceUtil();
            static PerformanceUtil.shared.getter();
            v288 = swift_task_alloc();
            v288[2] = v402;
            v288[3] = 0xD000000000000040;
            v288[4] = 0x80000000000BDA40;
            Date.init()();
            type metadata accessor for ExecuteResponse();
            dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

            (*(v285 + 8))(v284, v286);
            v11 = v420;
LABEL_99:

            (*(v255 + 8))(v417, v256);
            goto LABEL_100;
          }
        }

        else
        {
          *v9 = 0u;
          v9[1] = 0u;
        }
      }

      else
      {
        *v9 = 0u;
        v9[1] = 0u;
      }

      outlined destroy of Any?(v9, &_sypSgMd, &_sypSgMR);
      goto LABEL_96;
    case 9u:
      v74 = *(v0 + 1920);
      v75 = *v74;
      v76 = v74[1];
      v77 = v74[2];
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_0, v78, v79, "InformationRoutingFlow: doWebSearchPunchout", v80, 2u);
      }

      if (v77)
      {
        v81 = type metadata accessor for RenderPegasusFlow(0);
        v82 = lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type RenderPegasusFlow and conformance RenderPegasusFlow, type metadata accessor for RenderPegasusFlow, &protocol conformance descriptor for RenderPegasusFlow);
      }

      else
      {
        v81 = 0;
        v82 = 0;
      }

      v265 = *(v420 + 1248);
      outlined init with copy of OutputPublisherAsync(v265 + 16, v420 + 656);
      v266 = *(v265 + 96);
      v267 = type metadata accessor for ResponseFactory();
      swift_allocObject();

      v268 = ResponseFactory.init()();
      *(v420 + 720) = v267;
      *(v420 + 728) = &protocol witness table for ResponseFactory;
      *(v420 + 696) = v268;
      *(v420 + 760) = &type metadata for SafariSearchURLProvider;
      *(v420 + 768) = &protocol witness table for SafariSearchURLProvider;
      type metadata accessor for WebSearchPunchoutFlow();
      v269 = swift_allocObject();
      *(v269 + 112) = v75;
      *(v269 + 120) = v76;
      *(v269 + 128) = v77;
      *(v269 + 136) = 0;
      *(v269 + 144) = 0;
      *(v269 + 152) = v81;
      *(v269 + 160) = v82;
      *(v269 + 104) = 0;
      outlined init with take of SiriSuggestionsBroker((v420 + 656), v269 + 16);
      outlined init with take of SiriSuggestionsBroker((v420 + 696), v269 + 56);
      *(v269 + 96) = v266;
      outlined init with take of SiriSuggestionsBroker((v420 + 736), v269 + 168);
      *(v420 + 1184) = v269;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow, type metadata accessor for WebSearchPunchoutFlow, &protocol conformance descriptor for WebSearchPunchoutFlow);
      static ExecuteResponse.complete<A>(next:)();

LABEL_88:
      v11 = v420;

      goto LABEL_100;
    case 0xAu:
      (*(*(v0 + 1616) + 32))(*(v0 + 1632), *(v0 + 1920), *(v0 + 1608));
      v200 = Logger.logObject.getter();
      v201 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v200, v201))
      {
        v202 = swift_slowAlloc();
        *v202 = 0;
        _os_log_impl(&dword_0, v200, v201, "InformationRoutingFlow: knowledgeConfirmation", v202, 2u);
      }

      v203 = Parse.DirectInvocation.userData.getter();
      if (!v203)
      {
        *v8 = 0u;
        v8[1] = 0u;
        goto LABEL_90;
      }

      v204 = v203;
      if (!*(v203 + 16) || (v205 = specialized __RawDictionaryStorage.find<A>(_:)(0x7972657571, 0xE500000000000000), (v206 & 1) == 0))
      {
        *v8 = 0u;
        v8[1] = 0u;

        goto LABEL_90;
      }

      outlined init with copy of Any(*(v204 + 56) + 32 * v205, v8);

      if (!*(v420 + 1048))
      {
LABEL_90:
        outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
        goto LABEL_91;
      }

      if (swift_dynamicCast())
      {
        v207 = *(v420 + 1616);
        v412 = *(v420 + 1608);
        v416 = *(v420 + 1632);
        v208 = *(v420 + 1296);
        v209 = *(v420 + 1288);
        v210 = *(v420 + 1248);
        v400 = *(v420 + 1088);
        v211 = *(v420 + 1096);
        outlined init with copy of OutputPublisherAsync(v210 + 56, v420 + 496);
        v212 = type metadata accessor for ResponseFactory();
        swift_allocObject();
        v213 = ResponseFactory.init()();
        type metadata accessor for CommonCATs(0);
        static CATOption.defaultMode.getter();
        v214 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentDevice.getter();

        dispatch thunk of CurrentDevice.siriLocale.getter();

        v215 = v209[5];
        v216 = type metadata accessor for GenerativeModelsAvailability();
        (*(*(v216 - 8) + 56))(v208 + v215, 1, 1, v216);
        *(v208 + v209[6]) = xmmword_B86A0;
        *(v208 + v209[7]) = xmmword_B86A0;
        type metadata accessor for KnowledgeFallbackConfirmationStrategy();
        v217 = swift_allocObject();
        *(v217 + 56) = v212;
        *(v217 + 64) = &protocol witness table for ResponseFactory;
        *(v217 + 32) = v213;
        *(v420 + 560) = v209;
        *(v420 + 568) = &protocol witness table for KnowledgeFallbackHelper;
        v218 = __swift_allocate_boxed_opaque_existential_1((v420 + 536));
        outlined init with take of KnowledgeFallbackHelper(v208, v218, type metadata accessor for KnowledgeFallbackHelper);
        *(v217 + 16) = 0;
        *(v217 + 24) = 0;
        outlined init with take of SiriSuggestionsBroker((v420 + 496), v217 + 72);
        *(v217 + 112) = v214;
        outlined init with take of SiriSuggestionsBroker((v420 + 536), v217 + 120);
        outlined init with copy of OutputPublisherAsync(v210 + 16, v420 + 576);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMR);
        swift_allocObject();
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy and conformance KnowledgeFallbackConfirmationStrategy, type metadata accessor for KnowledgeFallbackConfirmationStrategy, &protocol conformance descriptor for KnowledgeFallbackConfirmationStrategy);
        *(v420 + 1200) = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
        v219 = swift_allocObject();
        v219[2] = v210;
        v219[3] = v400;
        v219[4] = v211;
        lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), KnowledgeConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMR, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);

        v11 = v420;
        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        (*(v207 + 8))(v416, v412);
        goto LABEL_100;
      }

LABEL_91:
      v270 = Logger.logObject.getter();
      v271 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v270, v271))
      {
        v272 = swift_slowAlloc();
        *v272 = 0;
        _os_log_impl(&dword_0, v270, v271, "KnowledgeConfirmation DirectInvocation missing query", v272, 2u);
      }

      v273 = *(v420 + 1840);
      v274 = *(v420 + 1832);
      v275 = *(v420 + 1824);
      v276 = *(v420 + 1632);
      v277 = *(v420 + 1616);
      v278 = *(v420 + 1608);
      v279 = *(v420 + 1248);

      *(v420 + 1208) = v279;
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v280 = swift_task_alloc();
      v280[2] = v407;
      v280[3] = 0xD000000000000045;
      v280[4] = 0x80000000000BDAE0;
      Date.init()();
      type metadata accessor for ExecuteResponse();
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v274 + 8))(v273, v275);
      v11 = v420;

      (*(v277 + 8))(v276, v278);
LABEL_100:

      v289 = *(v11 + 8);

      return v289();
    case 0xBu:
      v24 = *(v0 + 1920);
      v25 = *(v0 + 1528);
      v26 = *(v0 + 1280);
      v397 = v24[1];
      v403 = *v24;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF00b11InformationD017PommesCandidateIdOSg06pommesjK0SSSg014sessionRequestK0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF00b11InformationD017PommesCandidateIdOSg06pommesjK0SSSg014sessionRequestK0tMR);
      v28 = v27[16];
      v29 = (v24 + v27[20]);
      v30 = v29[1];
      v409 = *v29;
      outlined init with take of GenAIPartner?(v24 + v27[12], v25, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      outlined init with take of GenAIPartner?(v24 + v28, v26, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "InformationRoutingFlow: disableConfirmRequestsConfirmation", v33, 2u);
      }

      v414 = *(v420 + 1528);
      v34 = *(v420 + 1288);
      v35 = *(v420 + 1280);
      v375 = *(v420 + 1552);
      v378 = *(v420 + 1272);
      v387 = *(v420 + 1264);
      v390 = *(v420 + 1520);
      v380 = *(v420 + 1256);
      v384 = *(v420 + 1512);
      v36 = *(v420 + 1248);

      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.currentRequest.getter();

      CurrentRequest.executionRequestId.getter();

      v371 = v35;
      dispatch thunk of KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackAlwaysPromptShown(requestId:pommesCandidateId:sessionRequestId:)();

      v37 = type metadata accessor for ResponseFactory();
      swift_allocObject();
      v38 = ResponseFactory.init()();
      *(v420 + 80) = v37;
      *(v420 + 88) = &protocol witness table for ResponseFactory;
      *(v420 + 56) = v38;
      static AceService.currentAsync.getter();
      type metadata accessor for CommonCATs(0);
      static CATOption.defaultMode.getter();
      v39 = CATWrapper.__allocating_init(options:globals:)();
      static SiriEnvironment.default.getter();
      SiriEnvironment.currentDevice.getter();

      *(v420 + 160) = v34;
      *(v420 + 168) = &protocol witness table for KnowledgeFallbackHelper;
      v40 = __swift_allocate_boxed_opaque_existential_1((v420 + 136));
      dispatch thunk of CurrentDevice.siriLocale.getter();

      v41 = v34[5];
      v42 = type metadata accessor for GenerativeModelsAvailability();
      (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
      *(v40 + v34[6]) = xmmword_B86A0;
      *(v40 + v34[7]) = xmmword_B86A0;
      type metadata accessor for DisableConfirmRequestsConfirmationStrategy();
      v43 = swift_allocObject();
      outlined init with take of SiriSuggestionsBroker((v420 + 56), v43 + 16);
      outlined init with take of SiriSuggestionsBroker((v420 + 96), v43 + 56);
      *(v43 + 96) = v39;
      outlined init with take of SiriSuggestionsBroker((v420 + 136), v43 + 104);
      outlined init with copy of OutputPublisherAsync(v36 + 16, v420 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin022DisableConfirmRequestsF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin022DisableConfirmRequestsF16ResponseProviderVGMR);
      swift_allocObject();
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy, type metadata accessor for DisableConfirmRequestsConfirmationStrategy, &protocol conformance descriptor for DisableConfirmRequestsConfirmationStrategy);
      *(v420 + 1224) = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v414, v375, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v35, v378, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v44 = (*(v384 + 80) + 40) & ~*(v384 + 80);
      v45 = (v390 + *(v380 + 80) + v44) & ~*(v380 + 80);
      v46 = swift_allocObject();
      v46[2] = v36;
      v46[3] = v403;
      v46[4] = v397;
      outlined init with take of GenAIPartner?(v375, v46 + v44, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      outlined init with take of GenAIPartner?(v378, v46 + v45, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v47 = (v46 + ((v387 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v47 = v409;
      v47[1] = v30;
      lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin022DisableConfirmRequestsF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin022DisableConfirmRequestsF16ResponseProviderVGMR, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);

      v11 = v420;
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      outlined destroy of Any?(v371, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      outlined destroy of Any?(v414, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
      goto LABEL_100;
    case 0xCu:
      v65 = *(*(v0 + 1696) + 32);
      v65(*(v0 + 1712), *(v0 + 1920), *(v0 + 1688));
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_0, v66, v67, "rewritting client action to direct invocation", v68, 2u);
      }

      v69 = *(v0 + 1712);
      v70 = *(v0 + 1704);
      v71 = *(v0 + 1696);
      v72 = *(v0 + 1688);

      (*(v71 + 16))(v70, v69, v72);
      type metadata accessor for NavigateToShimFlow(0);
      v73 = swift_allocObject();
      *(v73 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_exitValue) = 0;
      type metadata accessor for NavigateToShimFlow.ExitValue(0);
      swift_storeEnumTagMultiPayload();
      v65(v73 + OBJC_IVAR____TtC21InformationFlowPlugin18NavigateToShimFlow_action, v70, v72);
      *(v0 + 1176) = v73;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type NavigateToShimFlow and conformance NavigateToShimFlow, type metadata accessor for NavigateToShimFlow, &protocol conformance descriptor for NavigateToShimFlow);

      v11 = v0;
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      (*(v71 + 8))(v69, v72);
      goto LABEL_100;
    case 0xDu:
      v165 = v0;
      v166 = *(v0 + 1680);
      v167 = *(v0 + 1672);
      v168 = *(v420 + 1616);
      v169 = *(v420 + 1608);
      v405 = *(v168 + 32);
      v405(*(v420 + 1680), *(v420 + 1920), v169);
      v170 = *(v168 + 16);
      v170(v167, v166, v169);
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.debug.getter();
      v173 = os_log_type_enabled(v171, v172);
      v174 = *(v420 + 1672);
      v175 = *(v420 + 1616);
      v176 = *(v420 + 1608);
      if (v173)
      {
        v177 = swift_slowAlloc();
        v399 = v170;
        v178 = swift_slowAlloc();
        *&v421 = v178;
        *v177 = 136315138;
        v394 = Parse.DirectInvocation.identifier.getter();
        v180 = v179;
        v181 = *(v175 + 8);
        v181(v174, v176);
        v182 = v181;
        v165 = v420;
        v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v394, v180, &v421);

        *(v177 + 4) = v183;
        _os_log_impl(&dword_0, v171, v172, "rewritting directInvocation to pegasus %s", v177, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v178);
        v170 = v399;
      }

      else
      {

        v230 = *(v175 + 8);
        v230(v174, v176);
        v182 = v230;
      }

      v231 = *(v165 + 1680);
      v232 = *(v420 + 1664);
      v233 = *(v420 + 1608);
      v170(v232, v231, v233);
      type metadata accessor for ShimOverrideFlow(0);
      v234 = swift_allocObject();
      *(v234 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue) = 0;
      type metadata accessor for ShimOverrideFlow.ExitValue(0);
      swift_storeEnumTagMultiPayload();
      v405(v234 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse, v232, v233);
      *(v420 + 1168) = v234;
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type ShimOverrideFlow and conformance ShimOverrideFlow, type metadata accessor for ShimOverrideFlow, &protocol conformance descriptor for ShimOverrideFlow);

      v11 = v420;
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      v182(v231, v233);
      goto LABEL_100;
    case 0xEu:
      v11 = v0;
      v18 = *(v0 + 1840);
      v408 = *(v0 + 1832);
      v413 = *(v0 + 1824);
      v19 = *(v0 + 1248);
      v20 = **(v0 + 1920);
      _StringGuts.grow(_:)(26);

      *&v421 = 0xD000000000000018;
      *(&v421 + 1) = 0x80000000000BDBD0;
      *(v0 + 1152) = v20;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v21._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v21);

      v22 = v421;
      *(v0 + 1160) = v19;
      type metadata accessor for PerformanceUtil();
      static PerformanceUtil.shared.getter();
      v23 = swift_task_alloc();
      *(v23 + 16) = v3;
      *(v23 + 24) = v22;
      Date.init()();
      type metadata accessor for ExecuteResponse();
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v408 + 8))(v18, v413);

      goto LABEL_100;
    case 0xFu:
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_0, v95, v96, "InformationRoutingFlow: complete", v97, 2u);
      }

      v11 = v420;

      static ExecuteResponse.complete()();
      goto LABEL_100;
    default:
      v11 = v0;
      v12 = *(v0 + 1920);
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v15, v16, "InformationRoutingFlow: renderPommes", v17, 2u);
      }

      if (InformationRoutingFlow.shouldPromptLocation(with:locationGuardFlowResult:)(v13, v14))
      {
        InformationRoutingFlow.renderGuardFlow(_:)(v13);
      }

      else
      {
        InformationRoutingFlow.renderPommesFlow(_:)(v13, *(v420 + 1240));
      }

      goto LABEL_100;
  }
}

uint64_t closure #1 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v47 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v47);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for NavigateToShimFlow.ExitValue(0);
  __chkstk_darwin(v16);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of InformationRoutingFlow.State(a1, v18, type metadata accessor for NavigateToShimFlow.ExitValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.information);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48 = v19;
      v49 = v24;
      *v23 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v49);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "NavigateToShimFlow failed with error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    *v15 = v19;
    swift_storeEnumTagMultiPayload();
    v28 = v15;
    v29 = *(*a2 + 200);
    swift_errorRetain();
    v29(v28);
  }

  else
  {
    (*(v5 + 32))(v13, v18, v4);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.information);
    v46 = *(v5 + 16);
    v46(v11, v13, v4);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v45 = a2;
      v35 = v34;
      v43 = swift_slowAlloc();
      v49 = v43;
      *v35 = 136315138;
      v46(v8, v11, v4);
      v41 = String.init<A>(describing:)();
      v44 = v15;
      v37 = v36;
      v38 = *(v5 + 8);
      v42 = v33;
      v38(v11, v4);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v37, &v49);
      v15 = v44;

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v32, v42, "rewritten request: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);

      a2 = v45;
    }

    else
    {

      v38 = *(v5 + 8);
      v38(v11, v4);
    }

    v46(v15, v13, v4);
    swift_storeEnumTagMultiPayload();
    (*(*a2 + 200))(v15);
    return (v38)(v13, v4);
  }
}

uint64_t closure #2 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Parse.PegasusResult();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v47 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v47);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  __chkstk_darwin(v16);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of InformationRoutingFlow.State(a1, v18, type metadata accessor for ShimOverrideFlow.ExitValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.information);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48 = v19;
      v49 = v24;
      *v23 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v49);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "NavigateToShim failed with error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    *v15 = v19;
    swift_storeEnumTagMultiPayload();
    v28 = v15;
    v29 = *(*a2 + 200);
    swift_errorRetain();
    v29(v28);
  }

  else
  {
    (*(v5 + 32))(v13, v18, v4);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.information);
    v46 = *(v5 + 16);
    v46(v11, v13, v4);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v45 = a2;
      v35 = v34;
      v43 = swift_slowAlloc();
      v49 = v43;
      *v35 = 136315138;
      v46(v8, v11, v4);
      v41 = String.init<A>(describing:)();
      v44 = v15;
      v37 = v36;
      v38 = *(v5 + 8);
      v42 = v33;
      v38(v11, v4);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v37, &v49);
      v15 = v44;

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v32, v42, "rewritten pegasus request: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);

      a2 = v45;
    }

    else
    {

      v38 = *(v5 + 8);
      v38(v11, v4);
    }

    v46(v15, v13, v4);
    swift_storeEnumTagMultiPayload();
    (*(*a2 + 200))(v15);
    return (v38)(v13, v4);
  }
}

uint64_t specialized FlowTrampolining.makeResponse(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v6 = v4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v29 = a1;
  Date.init()();
  v24 = v28;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0CSgMd, _s11SiriKitFlow03AnyC0CSgMR);
  v23 = a2;
  LOBYTE(v22) = 2;
  v20 = "makeResponse(for:)";
  v21 = 18;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v13 = *(v10 + 8);
  v13(v12, v9);
  if (v30)
  {

    static ExecuteResponse.complete(next:)();
  }

  else
  {
    v26 = a4;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.information);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Unable to locate flow for direct invocation parse/experience. Returning error flow.", v18, 2u);
    }

    v30 = v6;
    v19 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v19);
    v22 = &v30;
    Date.init()();
    v24 = &v20;
    v25 = type metadata accessor for ExecuteResponse();
    v23 = v27;
    LOBYTE(v22) = 2;
    v20 = "makeResponse(forErrorMessage:)";
    v21 = 30;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    return (v13)(v12, v9);
  }
}

uint64_t closure #3 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12AjaxMetadataV0D5QueryOSgMd, &_s16SiriMessageTypes12AjaxMetadataV0D5QueryOSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes18PrescribedAjaxToolOSgMd, &_s16SiriMessageTypes18PrescribedAjaxToolOSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  swift_getKeyPath();
  v12 = enum case for PrescribedAjaxTool.generateKnowledgeResponseIntentTool(_:);
  v13 = type metadata accessor for PrescribedAjaxTool();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  Builder.subscript.setter();
  swift_getKeyPath();
  type metadata accessor for AjaxMetadata.AjaxQuery.ExplicitQuery();
  v21 = a2;
  v22 = a3;
  v23 = v20;
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type AjaxMetadata.AjaxQuery.ExplicitQuery and conformance AjaxMetadata.AjaxQuery.ExplicitQuery, &type metadata accessor for AjaxMetadata.AjaxQuery.ExplicitQuery, &protocol conformance descriptor for AjaxMetadata.AjaxQuery.ExplicitQuery);
  static Buildable.withBuilder(_:)();
  v15 = enum case for AjaxMetadata.AjaxQuery.explicit(_:);
  v16 = type metadata accessor for AjaxMetadata.AjaxQuery();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v8, v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  return Builder.subscript.setter();
}

uint64_t closure #1 in closure #3 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = v13 - v8;
  swift_getKeyPath();
  v13[0] = a2;
  v13[1] = a3;

  Builder.subscript.setter();
  swift_getKeyPath();
  v10 = type metadata accessor for GenAIPartner();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a4, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  return Builder.subscript.setter();
}

uint64_t closure #4 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12AjaxMetadataV0D5QueryOSgMd, &_s16SiriMessageTypes12AjaxMetadataV0D5QueryOSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes18PrescribedAjaxToolOSgMd, &_s16SiriMessageTypes18PrescribedAjaxToolOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-v9];
  swift_getKeyPath();
  v11 = enum case for PrescribedAjaxTool.generateKnowledgeResponseIntentTool(_:);
  v12 = type metadata accessor for PrescribedAjaxTool();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  Builder.subscript.setter();
  swift_getKeyPath();
  type metadata accessor for AjaxMetadata.AjaxQuery.ImplicitQuery();
  v19 = a2;
  v20 = a3;
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type AjaxMetadata.AjaxQuery.ImplicitQuery and conformance AjaxMetadata.AjaxQuery.ImplicitQuery, &type metadata accessor for AjaxMetadata.AjaxQuery.ImplicitQuery, &protocol conformance descriptor for AjaxMetadata.AjaxQuery.ImplicitQuery);
  static Buildable.withBuilder(_:)();
  v14 = enum case for AjaxMetadata.AjaxQuery.implicit(_:);
  v15 = type metadata accessor for AjaxMetadata.AjaxQuery();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v7, v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  return Builder.subscript.setter();
}

uint64_t closure #1 in closure #4 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  return Builder.subscript.setter();
}

uint64_t closure #5 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v11);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a3;
  v13[1] = a4;
  v13[2] = 0;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for PommesCandidateId();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);

  specialized InformationRoutingFlow.knowledgeFallbackConfirmationCompletion(exitValue:yesStateFn:noState:disableConfirmRequestsStateFn:isEnablement:pommesCandidateId:sessionRequestId:)(a1, v13, 0, 0, 0, v10, 0, 0, a2, a3, a4);
  outlined destroy of Any?(v10, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  return outlined destroy of PegasusExperience(v13, type metadata accessor for InformationRoutingFlow.State);
}

uint64_t closure #6 in InformationRoutingFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v15);
  v17 = (&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMR) + 48);
  *v17 = a3;
  v17[1] = a4;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a5, v17 + v18, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  swift_storeEnumTagMultiPayload();

  InformationRoutingFlow.disableConfirmRequestsConfirmationCompletion(exitValue:continueState:pommesCandidateId:sessionRequestId:)(a1, v17, a6, a7, a8);
  return outlined destroy of PegasusExperience(v17, type metadata accessor for InformationRoutingFlow.State);
}

uint64_t InformationRoutingFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InformationRoutingFlow(0);
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type InformationRoutingFlow and conformance InformationRoutingFlow, type metadata accessor for InformationRoutingFlow, &protocol conformance descriptor for InformationRoutingFlow);
  return Flow.deferToExecuteAsync(_:)();
}

void InformationRoutingFlow.renderGuardFlow(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.information);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "InformationRoutingFlow: location guard flow", v7, 2u);
  }

  specialized InformationRoutingFlow.needsPreciseLocation(with:)();
  type metadata accessor for SiriLocationAccessGuardFlow();
  lazy protocol witness table accessor for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy();
  v8 = a1;
  v11 = SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:strategy:)();
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v8;
  v9[4] = v11;
  v10 = v8;

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in InformationRoutingFlow.renderGuardFlow(_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  v9 = *a1;
  dispatch thunk of SiriLocationAccessGuardFlow.failureReason.getter();
  (*(*a2 + 304))(v9, a3, v8);
  return outlined destroy of Any?(v8, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
}

unint64_t InformationRoutingFlow.handleGuardFlowResult(with:pommesResponse:failureReason:)(int a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v85 = a2;
  v7 = type metadata accessor for LocationAccessFailureReason();
  v86 = *(v7 - 8);
  __chkstk_darwin(v7);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow27LocationAccessFailureReasonOSg_ADtMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSg_ADtMR);
  __chkstk_darwin(v78);
  v84 = &v72 - v9;
  v80 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v80);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v83 = &v72 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v72 - v19;
  __chkstk_darwin(v18);
  v22 = &v72 - v21;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v81 = v7;
  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.information);
  v79 = a3;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a3, v22, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v77 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v76 = v15;
  v82 = a1;
  if (v27)
  {
    v73 = v11;
    v74 = v4;
    v28 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = GuardFlowResult.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v87);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v22, v20, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    v32 = v86;
    v33 = v81;
    if ((*(v86 + 48))(v20, 1, v81) == 1)
    {
      outlined destroy of Any?(v20, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
      v34 = 0xE400000000000000;
      v35 = 1701736302;
    }

    else
    {
      v35 = LocationAccessFailureReason.debugDescription.getter();
      v34 = v36;
      (*(v32 + 8))(v20, v33);
    }

    outlined destroy of Any?(v22, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v87);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_0, v25, v26, "InformationRoutingFlow: location guard flow completed with %s and failureReason=%s", v28, 0x16u);
    swift_arrayDestroy();

    v11 = v73;
    v4 = v74;
  }

  else
  {

    outlined destroy of Any?(v22, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  }

  v38 = v83;
  v39 = v84;
  v40 = v86;
  if ((v82 & 1) == 0)
  {
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMd, &_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMR) + 48);
    v46 = v85;
    *v11 = v85;
    v47 = type metadata accessor for IdentifiedUser();
    (*(*(v47 - 8) + 56))(&v11[v45], 1, 1, v47);
    swift_storeEnumTagMultiPayload();
    v48 = *(*v4 + 200);
    v49 = v46;
    return v48(v11);
  }

  v41 = v81;
  (*(v86 + 104))(v83, enum case for LocationAccessFailureReason.insufficientPrecisionAuthorized(_:), v81);
  (*(v40 + 56))(v38, 0, 1, v41);
  v42 = *(v78 + 48);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v79, v39, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v38, v39 + v42, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v43 = *(v40 + 48);
  if (v43(v39, 1, v41) != 1)
  {
    v50 = v76;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v39, v76, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    if (v43(v39 + v42, 1, v41) != 1)
    {
      v51 = v39 + v42;
      v52 = v75;
      (*(v40 + 32))(v75, v51, v41);
      lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type LocationAccessFailureReason and conformance LocationAccessFailureReason, &type metadata accessor for LocationAccessFailureReason, &protocol conformance descriptor for LocationAccessFailureReason);
      v82 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *(v40 + 8);
      v53(v52, v41);
      outlined destroy of Any?(v38, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
      v53(v50, v41);
      outlined destroy of Any?(v39, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
      v44 = v85;
      if ((v82 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    outlined destroy of Any?(v38, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    (*(v40 + 8))(v50, v41);
LABEL_16:
    outlined destroy of Any?(v39, &_s11SiriKitFlow27LocationAccessFailureReasonOSg_ADtMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSg_ADtMR);
    v44 = v85;
    goto LABEL_22;
  }

  outlined destroy of Any?(v38, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  if (v43(v39 + v42, 1, v41) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of Any?(v39, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v44 = v85;
LABEL_18:
  if (specialized InformationRoutingFlow.needsPreciseLocation(with:)())
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "InformationRoutingFlow: Location guard flow was partially successful because location enabled but precise location disabled. Re-run Pommes request.", v56, 2u);
    }

    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMd, &_s21SiriInformationSearch14PommesResponseC_0A7KitFlow14IdentifiedUserVSgtMR) + 48);
    *v11 = v44;
    v58 = type metadata accessor for IdentifiedUser();
    (*(*(v58 - 8) + 56))(&v11[v57], 1, 1, v58);
LABEL_31:
    swift_storeEnumTagMultiPayload();
    v48 = *(*v4 + 200);
    v66 = v44;
    return v48(v11);
  }

LABEL_22:
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (result >> 62)
  {
    v67 = result;
    v68 = _CocoaArrayWrapper.endIndex.getter();
    result = v67;
    if (v68)
    {
      goto LABEL_24;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_34;
  }

LABEL_24:
  if ((result & 0xC000000000000001) != 0)
  {
    v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v60 = *(result + 32);
  }

  v61 = v60;

  type metadata accessor for GenericExperience();
  v62 = swift_dynamicCastClass();

  if (v62)
  {
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_0, v63, v64, "InformationRoutingFlow: Location guard flow failed with server driven experience. Rendering PommesResponse.", v65, 2u);
    }

    *v11 = v44;
    v11[8] = 1;
    goto LABEL_31;
  }

LABEL_35:
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_0, v69, v70, "InformationRoutingFlow: Location denied. Used default GuardFlow error response.", v71, 2u);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*v4 + 200))(v11);
}

unint64_t PommesResponse.isServerDrivenExperience.getter(uint64_t a1)
{
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v5 = result;
  v6 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v2 = *(result + 32);
LABEL_6:
    v3 = v2;

    type metadata accessor for GenericExperience();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
LABEL_11:
      v7 = v4 != 0;

      return v7;
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t InformationRoutingFlow.shouldPromptLocation(with:locationGuardFlowResult:)(uint64_t a1, int a2)
{
  v5 = type metadata accessor for PommesSearchReason();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = __chkstk_darwin(v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v42 - v8;
  v53 = type metadata accessor for PommesRenderOptions.PromptType();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53 - 8);
  v50 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v2 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled);
  v42 = a1;
  v11 = dispatch thunk of PommesResponse.experiences.getter();
  v12 = v11;
  v47 = a2;
  if (v11 >> 62)
  {
LABEL_30:
    v54 = v12 & 0xFFFFFFFFFFFFFF8;
    v56 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v54 = v11 & 0xFFFFFFFFFFFFFF8;
    v56 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = 0;
  v55 = v12 & 0xC000000000000001;
  v52 = enum case for PommesRenderOptions.PromptType.shareDeviceLocation(_:);
  v14 = (v9 + 104);
  v15 = (v9 + 8);
  v49 = enum case for PommesRenderOptions.PromptType.sharePreciseDeviceLocation(_:);
  v51 = v12;
  v16 = v50;
  do
  {
    v9 = v13;
    if (v56 == v13)
    {
      break;
    }

    if (v55)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v54 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(v12 + 8 * v13 + 32);
    }

    v18 = v17;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v19 = v9;
    v20 = dispatch thunk of Experience.renderOptions.getter();
    v21 = PommesRenderOptions.promptTypes.getter();

    v22 = *v14;
    v23 = v53;
    (*v14)(v16, v52, v53);
    LOBYTE(v20) = specialized Sequence<>.contains(_:)(v16, v21);

    v24 = *v15;
    (*v15)(v16, v23);
    if (v20)
    {

      v9 = v19;
      break;
    }

    v25 = dispatch thunk of Experience.renderOptions.getter();
    v26 = PommesRenderOptions.promptTypes.getter();

    v22(v16, v49, v23);
    LOBYTE(v25) = specialized Sequence<>.contains(_:)(v16, v26);

    v24(v16, v23);
    v9 = v19;
    v13 = v19 + 1;
    v12 = v51;
  }

  while ((v25 & 1) == 0);

  dispatch thunk of PommesResponse.searchReason.getter();
  v28 = v43;
  v27 = v44;
  v29 = v45;
  (*(v44 + 104))(v43, enum case for PommesSearchReason.runPommesRequest(_:), v45);
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason, &type metadata accessor for PommesSearchReason, &protocol conformance descriptor for PommesSearchReason);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v30 = 0;
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  v32 = v46;
  v31 = v47;
  v33 = *(v27 + 8);
  v33(v28, v29);
  v33(v48, v29);

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.information);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v56 != v9;
    v38 = swift_slowAlloc();
    *v38 = 67109888;
    *(v38 + 4) = v32;
    *(v38 + 8) = 1024;
    *(v38 + 10) = v37;
    *(v38 + 14) = 1024;
    *(v38 + 16) = v30 & 1;
    *(v38 + 20) = 1024;
    *(v38 + 22) = v31 == 2;
    _os_log_impl(&dword_0, v35, v36, "InformationRoutingFlow: shouldPromptLocation? enabled=%{BOOL}d && containsPrompt=%{BOOL}d && !isRunPommesRequest=%{BOOL}d && !hasGuardFlowResult=%{BOOL}d", v38, 0x1Au);
  }

  if (v56 == v9)
  {
    v39 = 0;
  }

  else
  {
    v39 = v32;
  }

  v40 = v39 & v30;
  if (v31 == 2)
  {
    return v40;
  }

  else
  {
    return 0;
  }
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for PommesRenderOptions.PromptType();
    ++v2;
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType, &type metadata accessor for PommesRenderOptions.PromptType, &protocol conformance descriptor for PommesRenderOptions.PromptType);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t InformationRoutingFlow.renderPommesFlow(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v187 = a2;
  v178 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v178);
  v177 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for KnowledgeFallbackHelper(0);
  __chkstk_darwin(v182);
  v181 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  __chkstk_darwin(v7 - 8);
  v183 = &v176 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  __chkstk_darwin(v9 - 8);
  v196 = &v176 - v10;
  v195 = type metadata accessor for ActivityType();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for PerformanceUtil.Ticket();
  v198 = *(v199 - 8);
  v12 = __chkstk_darwin(v199);
  v197 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  object = &v176 - v14;
  v207 = type metadata accessor for Date();
  v15 = *(v207 - 1);
  __chkstk_darwin(v207);
  countAndFlagsBits = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for PegasusExperience(0);
  __chkstk_darwin(v191);
  v206 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for PommesSystemAppChecking();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = (&v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for CATOption();
  __chkstk_darwin(v19 - 8);
  v21 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    v200 = __swift_project_value_buffer(v22, static Logger.information);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "InformationRoutingFlow: pommesResponse", v25, 2u);
    }

    v26 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    swift_beginAccess();
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v3 + v26, &v218, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    static CurareDonation.donateCurareResponseUsedMarker(from:into:)();
    outlined destroy of Any?(&v218, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v3 + 16, &v218);
    v190 = *(v3 + 96);
    v201 = v3;
    outlined init with copy of OutputPublisherAsync(v3 + 56, &v215);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    static Device.current.getter();
    v27 = type metadata accessor for CommonCATs(0);
    static CATOption.defaultMode.getter();
    v180 = v21;
    v179 = v27;
    v28 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v29 = swift_allocObject();
    v30 = [objc_opt_self() sharedPreferences];
    v31 = type metadata accessor for PommesServerFallbackPreferences();
    swift_allocObject();
    v32 = PommesServerFallbackPreferences.init(_:)();
    v29[11] = v31;
    v29[12] = &protocol witness table for PommesServerFallbackPreferences;
    v29[8] = v32;
    outlined init with take of SiriSuggestionsBroker(&v213, (v29 + 3));
    v29[2] = v28;
    type metadata accessor for PommesSearch();
    static PommesSearch.UserDefaultsSuiteName.getter();
    type metadata accessor for PommesDialogStateManager();
    swift_allocObject();
    v33 = PommesDialogStateManager.init(suiteName:)();
    type metadata accessor for RenderComponentFlowFactory();
    v34 = swift_allocObject();
    v208 = v34;
    outlined init with take of SiriSuggestionsBroker(&v214, v34 + 16);
    *(v34 + 56) = v29;
    *(v34 + 64) = v33;
    v186 = default argument 5 of RenderPegasusFlow.init(pommesResponse:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:appChecking:responseProducerType:)();
    v35 = v202;
    PommesSystemAppChecking.init()();
    v192 = type metadata accessor for AppResolutionStrategyHelpers();
    v189 = type metadata accessor for PerformanceUtil();
    v36 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v36);
    v37 = countAndFlagsBits;
    Date.init()();
    v174 = &v172;
    v175 = v191;
    v173 = partial apply for closure #1 in RenderPegasusFlow.init(pommesResponse:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:appChecking:responseProducerType:);
    LOBYTE(v172) = 2;
    v38 = v206;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
    v185 = 0;

    (*(v15 + 1))(v37, v207);
    outlined init with copy of OutputPublisherAsync(&v218, &v214);
    static SiriKitEventSender.current.getter();
    type metadata accessor for PegasusFlowEventLogger();
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    outlined init with copy of OutputPublisherAsync(&v213, v39 + 24);
    v40 = a1;
    v41 = PommesResponse.metadataDomainName.getter();
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(&v213);
    *(v39 + 64) = v41;
    *(v39 + 72) = v43;
    *(v39 + 80) = 1;
    outlined init with copy of OutputPublisherAsync(&v215, &v213);
    v191 = default argument 7 of RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)();
    v184 = type metadata accessor for RenderPegasusFlow(0);
    v44 = swift_allocObject();
    v45 = v204;
    v211 = v204;
    v212 = &protocol witness table for PommesSystemAppChecking;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v210);
    (v203[2])(boxed_opaque_existential_1, v35, v45);
    *(v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_rrEntities) = _swiftEmptyArrayStorage;
    outlined init with copy of InformationRoutingFlow.State(v38, v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_experience, type metadata accessor for PegasusExperience);
    *(v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pommesResponse) = a1;
    outlined init with copy of OutputPublisherAsync(&v214, v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher);
    *(v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_informationViewFactory) = v190;
    *(v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_renderComponentFlowFactory) = v208;
    v47 = OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger;
    *(v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_flowTaskLogger) = v39;
    v48 = v47;
    v188 = v47;
    swift_retain_n();
    v207 = v40;

    Date.init()();
    LOBYTE(v175) = 2;
    v174 = (&stru_B8 + 6);
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v49 = *(v44 + v48);
    v50 = v194;
    v15 = v193;
    v51 = v195;
    (*(v194 + 104))(v193, enum case for ActivityType.start(_:), v195);
    v190 = "hecking:responseProducerType:)";
    v52 = enum case for SiriKitReliabilityCodes.normal(_:);
    v53 = type metadata accessor for SiriKitReliabilityCodes();
    v54 = *(v53 - 8);
    v55 = v196;
    (*(v54 + 104))(v196, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = *(*v49 + 120);

    v56(v15, 0x6C7070615F746F6ELL, 0xEE00656C62616369, v55, 0xD000000000000018, v190 | 0x8000000000000000, 0x54746E6572727543, 0xEB000000006B7361);

    outlined destroy of Any?(v55, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v50 + 8))(v15, v51);
    static PerformanceUtil.shared.getter();
    v57 = object;
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    LOBYTE(v175) = 2;
    v174 = (&stru_B8 + 6);
    v58 = v197;
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v59 = *(**(v44 + v188) + 152);

    v59(v60);

    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    v61 = *(v198 + 8);
    v62 = v199;
    v61(v58, v199);
    v61(v57, v62);
    __swift_destroy_boxed_opaque_existential_0Tm(&v214);
    outlined destroy of PegasusExperience(v206, type metadata accessor for PegasusExperience);
    *(v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_pegasusPatternFlowFactory) = v191;
    outlined init with take of SiriSuggestionsBroker(&v213, v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_aceServiceInvoker);
    outlined init with take of SiriSuggestionsBroker(&v210, v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_appChecking);
    v63 = (v44 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_responseProducerType);
    *v63 = v192;
    v63[1] = &protocol witness table for AppResolutionStrategyHelpers;

    v64 = dispatch thunk of PommesResponse.experiences.getter();
    v65 = v64;
    v3 = v64 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
    v206 = v44;
    if (!v3)
    {
      break;
    }

    v66 = 0;
    object = (v65 & 0xC000000000000001);
    v21 = (v65 & 0xFFFFFFFFFFFFFF8);
    a1 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (object)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v66 >= *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_64;
        }

        v67 = *(v65 + 8 * v66 + 32);
      }

      v68 = v67;
      v69 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      v70 = dispatch thunk of Experience.associatedEntities.getter();

      v71 = *(v70 + 16);
      v15 = a1[2];
      v72 = &v15[v71];
      if (__OFADD__(v15, v71))
      {
        goto LABEL_65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v72 <= a1[3] >> 1)
      {
        if (*(v70 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v15 <= v72)
        {
          v74 = &v15[v71];
        }

        else
        {
          v74 = v15;
        }

        a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v74, 1, a1);
        if (*(v70 + 16))
        {
LABEL_23:
          v15 = a1[2];
          v75 = (a1[3] >> 1) - v15;
          type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
          if (v75 < v71)
          {
            goto LABEL_67;
          }

          swift_arrayInitWithCopy();

          if (v71)
          {
            v76 = a1[2];
            v77 = __OFADD__(v76, v71);
            v78 = v76 + v71;
            if (v77)
            {
              goto LABEL_68;
            }

            a1[2] = v78;
          }

          goto LABEL_9;
        }
      }

      if (v71)
      {
        goto LABEL_66;
      }

LABEL_9:
      ++v66;
      if (v69 == v3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_29:

  v79 = v185;
  RenderPegasusFlow.addReferenceResolutionEntities(from:)(a1);
  if (v79)
  {

    swift_errorRetain();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v214 = v83;
      *v82 = 136315138;
      *&v213 = v79;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v84 = String.init<A>(describing:)();
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v214);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_0, v80, v81, "Could not add RR entities from POMMES response: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
    }
  }

  else
  {
  }

  (v203[1])(v202, v204);
  __swift_destroy_boxed_opaque_existential_0Tm(&v215);
  __swift_destroy_boxed_opaque_existential_0Tm(&v218);
  v87 = (*v201 + 256);
  v88 = *v87;
  v89 = (*v87)(&v218);
  v91 = *(v90 + 24);
  v92 = *(v90 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v93 = v207;
  v94 = (*(v92 + 72))(v207, v91, v92);
  v89(&v218, 0);
  if (v94)
  {
    v95 = PommesResponse.albusMultiturnRewrite.getter();
    if (v96)
    {
      v97 = v96;
      object = v95;
      if (PommesResponse.isRelatedQuestion.getter())
      {
        v98 = v93;
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          *&v215 = v102;
          *v101 = 136315138;
          *&v218 = PommesResponse.albusMultiturnRewrite.getter();
          *(&v218 + 1) = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v104 = String.init<A>(describing:)();
          v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v215);

          *(v101 + 4) = v106;
          _os_log_impl(&dword_0, v99, v100, "SuggestionRequestType is .relatedQuestion and Albus Multiturn Rewrite available. Using that for knowledge fallback: %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v102);
        }

        v107 = object;
        v108 = v97;
        goto LABEL_45;
      }
    }

    v110 = v93;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&v218 = v114;
      *v113 = 136315138;
      v115 = PommesResponse.searchRequestUtterance.getter();
      v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, &v218);

      *(v113 + 4) = v117;
      _os_log_impl(&dword_0, v111, v112, "Using the raw utterance for knowledge fallback: %s", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v114);
    }

    v107 = PommesResponse.searchRequestUtterance.getter();
LABEL_45:
    v118 = UtteranceNormalizer.normalize(_:preserveCase:)(*&v107, 1);
    countAndFlagsBits = v118._countAndFlagsBits;
    object = v118._object;

    v119 = v88(&v218);
    v121 = *(v120 + 24);
    v122 = *(v120 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
    v123 = (*(v122 + 16))(v121, v122);
    v119(&v218, 0);
    v208 = type metadata accessor for GenerativeAssistantProvider.LLMProvider();
    v124 = *(v208 - 8);
    __chkstk_darwin(v208);
    v126 = &v176 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for GenerativeAssistantProvider();
    static GenerativeAssistantProvider.shared.getter();
    dispatch thunk of GenerativeAssistantProvider.llm()();

    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    static KnowledgeFallbackInstrumentationUtil.genAIAgent(for:)();
    if (v123 > 2u)
    {
      v153 = v206;
      if (v123 == 3)
      {

        v154 = Logger.logObject.getter();
        v155 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_0, v154, v155, "Skipping knowledge fallback", v156, 2u);
        }

        *&v218 = v153;
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type RenderPegasusFlow and conformance RenderPegasusFlow, type metadata accessor for RenderPegasusFlow, &protocol conformance descriptor for RenderPegasusFlow);
        static ExecuteResponse.complete<A>(next:)();
        v124[1](v126, v208);
      }

      else
      {
        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v166, v167))
        {
          v169 = swift_slowAlloc();
          *v169 = 0;
          _os_log_impl(&dword_0, v166, v167, "Showing region unavailability dialog", v169, 2u);
        }

        outlined init with copy of OutputPublisherAsync((v201 + 2), &v218);
        v170 = swift_allocObject();
        v171 = object;
        *(v170 + 16) = countAndFlagsBits;
        *(v170 + 24) = v171;
        type metadata accessor for SimpleOutputFlowAsync();
        swift_allocObject();
        *&v218 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
        static ExecuteResponse.complete<A>(next:)();

        return (v124[1])(v126, v208);
      }
    }

    else
    {
      v204 = v126;
      if (v123 >= 2u)
      {
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&dword_0, v157, v158, "Invoking knowledge fallback without confirmation due to user opt-in", v159, 2u);
        }

        v160 = v201;
        PommesResponse.requestId.getter();
        v161 = v183;
        PommesResponse.pommesCandidateId.getter();
        PommesResponse.requestId.getter();
        LOBYTE(v218) = 0;
        dispatch thunk of KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackOffered(requestId:pommesCandidateId:sessionRequestId:isPresented:offeredAgent:)();

        outlined destroy of Any?(v161, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
        v162 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMR) + 48);
        v163 = v177;
        v164 = object;
        *v177 = countAndFlagsBits;
        *(v163 + 1) = v164;
        v165 = type metadata accessor for GenAIPartner();
        (*(*(v165 - 8) + 56))(&v163[v162], 1, 1, v165);
        swift_storeEnumTagMultiPayload();
        (*(*v160 + 200))(v163);
        static ExecuteResponse.ongoing(requireInput:)();

        return (v124[1])(v204, v208);
      }

      else
      {
        v202 = v124;
        v203 = &v176;
        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 67109120;
          *(v129 + 4) = v123 == 0;
          _os_log_impl(&dword_0, v127, v128, "Invoking knowledge fallback confirmation. Enablement: %{BOOL}d", v129, 8u);
        }

        v130 = v201;
        PommesResponse.requestId.getter();
        v131 = v183;
        PommesResponse.pommesCandidateId.getter();
        PommesResponse.requestId.getter();
        LOBYTE(v218) = 0;
        dispatch thunk of KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackOffered(requestId:pommesCandidateId:sessionRequestId:isPresented:offeredAgent:)();

        v132 = outlined destroy of Any?(v131, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
        v133 = *(*v130 + 240);
        v133(&v218, v132);
        v134 = v219;
        v135 = v220;
        __swift_project_boxed_opaque_existential_1(&v218, v219);
        (*(v135 + 64))(v134, v135);
        v136 = __swift_destroy_boxed_opaque_existential_0Tm(&v218);
        if (v123)
        {
          v133(&v218, v136);
          v137 = v219;
          v138 = v220;
          __swift_project_boxed_opaque_existential_1(&v218, v219);
          (*(v138 + 48))(v137, v138);
          __swift_destroy_boxed_opaque_existential_0Tm(&v218);
        }

        LODWORD(v200) = v123 == 0;
        v139 = v207;
        v199 = PommesResponse.asrRecognition.getter();
        outlined init with copy of OutputPublisherAsync((v130 + 7), &v218);
        v140 = type metadata accessor for ResponseFactory();
        swift_allocObject();
        v141 = ResponseFactory.init()();
        static CATOption.defaultMode.getter();
        v142 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentDevice.getter();

        v143 = v181;
        dispatch thunk of CurrentDevice.siriLocale.getter();

        v144 = v182;
        v145 = *(v182 + 20);
        v146 = type metadata accessor for GenerativeModelsAvailability();
        (*(*(v146 - 8) + 56))(v143 + v145, 1, 1, v146);
        *(v143 + *(v144 + 24)) = xmmword_B86A0;
        *(v143 + *(v144 + 28)) = xmmword_B86A0;
        type metadata accessor for KnowledgeFallbackConfirmationStrategy();
        v147 = swift_allocObject();
        *(v147 + 56) = v140;
        *(v147 + 64) = &protocol witness table for ResponseFactory;
        *(v147 + 32) = v141;
        v216 = v144;
        v217 = &protocol witness table for KnowledgeFallbackHelper;
        v148 = __swift_allocate_boxed_opaque_existential_1(&v215);
        outlined init with take of KnowledgeFallbackHelper(v143, v148, type metadata accessor for KnowledgeFallbackHelper);
        *(v147 + 16) = v199;
        LOBYTE(v141) = v200;
        *(v147 + 24) = v200;
        outlined init with take of SiriSuggestionsBroker(&v218, v147 + 72);
        *(v147 + 112) = v142;
        outlined init with take of SiriSuggestionsBroker(&v215, v147 + 120);
        outlined init with copy of OutputPublisherAsync((v130 + 2), &v218);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMR);
        swift_allocObject();
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type KnowledgeFallbackConfirmationStrategy and conformance KnowledgeFallbackConfirmationStrategy, type metadata accessor for KnowledgeFallbackConfirmationStrategy, &protocol conformance descriptor for KnowledgeFallbackConfirmationStrategy);
        *&v218 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
        v149 = swift_allocObject();
        v150 = countAndFlagsBits;
        *(v149 + 16) = v130;
        *(v149 + 24) = v150;
        v151 = v206;
        *(v149 + 32) = object;
        *(v149 + 40) = v151;
        *(v149 + 48) = v139;
        *(v149 + 56) = v141;
        lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), KnowledgeConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyyt011InformationC6Plugin09KnowledgeF16ResponseProviderVGMR, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);
        v152 = v139;

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        return v202[1](v204, v208);
      }
    }
  }

  else
  {
    *&v218 = v206;
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type RenderPegasusFlow and conformance RenderPegasusFlow, type metadata accessor for RenderPegasusFlow, &protocol conformance descriptor for RenderPegasusFlow);
    static ExecuteResponse.complete<A>(next:)();
  }
}

uint64_t closure #2 in InformationRoutingFlow.renderPommesFlow(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return RegionUnavailabilityOutputGenerator.generateOutput()(a1, a2, a3);
}

uint64_t closure #1 in InformationRoutingFlow.renderPommesFlow(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v28[-1] - v15;
  v17 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v17);
  v19 = (&v28[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a3;
  v19[1] = a4;
  v19[2] = a5;
  swift_storeEnumTagMultiPayload();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a6;
  swift_bridgeObjectRetain_n();

  v21 = a6;
  PommesResponse.pommesCandidateId.getter();
  v22 = PommesResponse.requestId.getter();
  specialized InformationRoutingFlow.knowledgeFallbackConfirmationCompletion(exitValue:yesStateFn:noState:disableConfirmRequestsStateFn:isEnablement:pommesCandidateId:sessionRequestId:)(a1, v19, partial apply for closure #2 in closure #1 in InformationRoutingFlow.renderPommesFlow(_:), v20, v7, v16, v22, v23, a2, a3, a4);

  outlined destroy of Any?(v16, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  result = outlined destroy of PegasusExperience(v19, type metadata accessor for InformationRoutingFlow.State);
  if ((v7 & 1) == 0)
  {
    (*(*a2 + 240))(v28, result);
    v25 = v29;
    v26 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v26 + 56))(v25, v26);
    return __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  return result;
}

uint64_t closure #2 in closure #1 in InformationRoutingFlow.renderPommesFlow(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF00b11InformationD017PommesCandidateIdOSg06pommesjK0SSSg014sessionRequestK0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF00b11InformationD017PommesCandidateIdOSg06pommesjK0SSSg014sessionRequestK0tMR);
  v9 = *(v8 + 48);
  v10 = (a4 + *(v8 + 80));
  *a4 = a2;
  a4[1] = a3;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, a4 + v9, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);

  PommesResponse.pommesCandidateId.getter();
  *v10 = PommesResponse.requestId.getter();
  v10[1] = v11;
  type metadata accessor for InformationRoutingFlow.State(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t InformationRoutingFlow.disableConfirmRequestsConfirmationCompletion(exitValue:continueState:pommesCandidateId:sessionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v62 = a3;
  v56 = a2;
  v58 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v58);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy011InformationC6Plugin50DisableConfirmRequestsConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin50DisableConfirmRequestsConfirmationResponseProviderVGMR);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.information);
  v59 = *(v9 + 16);
  v60 = a1;
  v59(v14, a1, v8);
  v57 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v55 = a5;
    v20 = v19;
    v53 = swift_slowAlloc();
    v65[0] = v53;
    *v20 = 136315138;
    lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptResult<DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin50DisableConfirmRequestsConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin50DisableConfirmRequestsConfirmationResponseProviderVGMR, &protocol conformance descriptor for PromptResult<A>);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v12;
    v23 = v22;
    v24 = *(v9 + 8);
    v24(v14, v8);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v65);
    v12 = v54;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v17, v18, "disable confirm requests confirmation: disableConfirmRequestsConfirmationCompletion %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  else
  {

    v24 = *(v9 + 8);
    v24(v14, v8);
  }

  v59(v12, v60, v8);
  v26 = (*(v9 + 88))(v12, v8);
  if (v26 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v9 + 96))(v12, v8);
    v27 = *v12;
    if (v27 != 2)
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = os_log_type_enabled(v28, v29);
      if (v27)
      {
        if (v30)
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_0, v28, v29, "User kept confirmation prompts on", v31, 2u);
        }

        v32 = v61;
        outlined init with copy of InformationRoutingFlow.State(v56, v61, type metadata accessor for InformationRoutingFlow.State);
        v33 = v64;
        v34 = (*(*v64 + 200))(v32);
        (*(*v33 + 240))(v65, v34);
        v35 = v66;
        v36 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        (*(v36 + 88))(v35, v36);
        __swift_destroy_boxed_opaque_existential_0Tm(v65);
      }

      else
      {
        if (v30)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_0, v28, v29, "User turned off confirmation prompts", v42, 2u);
        }

        v43 = v61;
        outlined init with copy of InformationRoutingFlow.State(v56, v61, type metadata accessor for InformationRoutingFlow.State);
        v44 = v64;
        v45 = (*(*v64 + 200))(v43);
        (*(*v44 + 240))(v65, v45);
        v46 = v66;
        v47 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        (*(v47 + 96))(0, v46, v47);
        __swift_destroy_boxed_opaque_existential_0Tm(v65);
      }

      goto LABEL_19;
    }

LABEL_18:
    v40 = v61;
    swift_storeEnumTagMultiPayload();
    (*(*v64 + 200))(v40);
    goto LABEL_19;
  }

  if (v26 == enum case for PromptResult.error<A>(_:))
  {
    v24(v12, v8);
    goto LABEL_14;
  }

  if (v26 == enum case for PromptResult.cancelled<A>(_:))
  {
    goto LABEL_18;
  }

  if (v26 == enum case for PromptResult.unanswered<A>(_:))
  {
LABEL_14:
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "Disable Confirm Requests confirmation was unanswered or errored out", v39, 2u);
    }

    goto LABEL_18;
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_0, v48, v49, "Disable Confirm Requests confirmation got unhandled response type", v50, 2u);
  }

  v51 = v61;
  swift_storeEnumTagMultiPayload();
  (*(*v64 + 200))(v51);
  v24(v12, v8);
LABEL_19:
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.executionRequestId.getter();

  dispatch thunk of KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackAlwaysPromptConfirmationOutcome(requestId:pommesCandidateId:sessionRequestId:outcome:)();
}

char *InformationRoutingFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  outlined destroy of PegasusExperience(v0 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper));
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_utteranceNormalizer;
  v2 = type metadata accessor for UtteranceNormalizer();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InformationRoutingFlow.__deallocating_deinit()
{
  InformationRoutingFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance InformationRoutingFlow(uint64_t a1)
{
  v6 = (*(**v1 + 280) + **(**v1 + 280));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t protocol witness for FlowEntryPoint.flowFor(input:) in conformance InformationRoutingEntryPoint(uint64_t a1)
{
  v2 = specialized InformationRoutingEntryPoint.flowFor(input:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  outlined init with copy of OutputPublisherAsync(*a1 + 16, v9);
  v6 = *(v5 + 96);
  type metadata accessor for ErrorFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v9, v7 + 16);
  *(v7 + 56) = v6;

  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

{
  v5 = *a1;
  outlined init with copy of OutputPublisherAsync(*a1 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_outputPublisher, v9);
  v6 = *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_informationViewFactory);
  type metadata accessor for ErrorFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v9, v7 + 16);
  *(v7 + 56) = v6;

  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

{
  v5 = *a1;
  outlined init with copy of OutputPublisherAsync(*a1 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_outputPublisher, v9);
  v6 = *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_informationViewFactory);
  type metadata accessor for ErrorFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v9, v7 + 16);
  *(v7 + 56) = v6;

  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

{
  v5 = *a1;
  outlined init with copy of OutputPublisherAsync(*a1 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_outputPublisher, v9);
  v6 = *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin17RenderPegasusFlow_informationViewFactory);
  type metadata accessor for ErrorFlowFactory();
  v7 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(v9, v7 + 16);
  *(v7 + 56) = v6;

  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

uint64_t specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMd, &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v41 = *(Context - 8);
  __chkstk_darwin(Context);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMd, &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v42 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  v17 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PommesEngagement();
  v48 = v19;
  v49 = &protocol witness table for PommesEngagement;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
  (*(*(v19 - 8) + 32))(boxed_opaque_existential_1, a3, v19);
  v45 = type metadata accessor for PatternExecutor();
  v46 = &protocol witness table for PatternExecutor;
  *&v44 = a4;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.information);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "TapEngagementHandlingFlow: Received Direct invocation", v25, 2u);
  }

  specialized Parse.DirectInvocation.get<A>(protoMessage:)(0xD000000000000011, 0x80000000000BE1A0, v16);
  v26 = v42;
  if ((*(v17 + 48))(v16, 1, v42) == 1)
  {
    outlined destroy of Any?(v16, &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMd, &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMR);
  }

  else
  {
    v38 = v22;
    v27 = a1;
    v28 = *(v17 + 32);
    v29 = v40;
    v28(v40, v16, v26);
    specialized Parse.DirectInvocation.get<A>(protoMessage:)(0x4373757361676570, 0xEE00747865746E6FLL, v11);
    if ((*(v41 + 48))(v11, 1, Context) != 1)
    {
      v34 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v34 - 8) + 8))(v27, v34);
      v35 = *(v41 + 32);
      v36 = v39;
      v35(v39, v11, Context);
      v28((a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_engagementContext), v29, v26);
      v35((a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pegasusContext), v36, Context);
      outlined init with take of SiriSuggestionsBroker(v43, a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_outputPublisherAsync);
      outlined init with take of SiriSuggestionsBroker(&v47, a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pommesEngagement);
      outlined init with take of SiriSuggestionsBroker(&v44, a5 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_patternExecutor);
      return a5;
    }

    (*(v17 + 8))(v29, v26);
    outlined destroy of Any?(v11, &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMd, &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMR);
    a1 = v27;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "TapEngagementHandlingFlow: Unable to retrieve EngagementContext from DI Payload.", v32, 2u);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  v33 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v33 - 8) + 8))(a1, v33);
  __swift_destroy_boxed_opaque_existential_0Tm(&v44);
  __swift_destroy_boxed_opaque_existential_0Tm(&v47);
  type metadata accessor for TapEngagementHandlingFlow(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t specialized InformationRoutingFlow.__allocating_init(input:outputPublisher:interactionStream:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v241 = a5;
  v235 = a4;
  v238 = a3;
  v240 = a2;
  v222 = type metadata accessor for MessagePayload.ClientAction();
  v225 = *(v222 - 8);
  v11 = __chkstk_darwin(v222);
  v219 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v220 = &v213 - v13;
  v227 = type metadata accessor for IFClientActionParse();
  v224 = *(v227 - 8);
  v14 = __chkstk_darwin(v227);
  v221 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v226 = &v213 - v16;
  v17 = type metadata accessor for Parse.DirectInvocation();
  v232 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v216 = &v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v217 = &v213 - v21;
  v22 = __chkstk_darwin(v20);
  v218 = &v213 - v23;
  v24 = __chkstk_darwin(v22);
  v223 = &v213 - v25;
  v26 = __chkstk_darwin(v24);
  v231 = &v213 - v27;
  __chkstk_darwin(v26);
  v29 = &v213 - v28;
  v30 = type metadata accessor for CATOption();
  __chkstk_darwin(v30 - 8);
  v234 = &v213 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v233);
  v236 = (&v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v230 = type metadata accessor for Parse.PegasusResult();
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v228 = &v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Parse();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v213 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v41 = &v213 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = (&v213 - v43);
  v45 = __chkstk_darwin(v42);
  v47 = &v213 - v46;
  v251[3] = a7;
  v251[4] = a8;
  v48 = v45;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v251);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, v241, a7);
  v239 = a1;
  Input.parse.getter();
  v50 = *(v35 + 88);
  v241 = v48;
  v51 = v50(v47, v48);
  v237 = v47;
  if (v51 == enum case for Parse.directInvocation(_:))
  {
    v52 = v241;
    (*(v35 + 16))(v41, v47, v241);
    (*(v35 + 96))(v41, v52);
    v53 = v232;
    v54 = *(v232 + 16);
    v54(v29, v41, v17);
    v55 = Parse.DirectInvocation.identifier.getter();
    v230 = v35;
    v57 = v17;
    v215 = v41;
    if (v55 == 0xD00000000000003DLL && 0x80000000000BD690 == v56)
    {

LABEL_8:
      v76 = v53;
      v77 = v236;
      v214 = v29;
      v54(v236, v29, v57);
      swift_storeEnumTagMultiPayload();
      v78 = v240;
      outlined init with copy of OutputPublisherAsync(v240, &v249);
      v79 = v238;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      outlined init with copy of OutputPublisherAsync(v251, &v246);
      static AceService.currentAsync.getter();
      static Device.current.getter();
      type metadata accessor for CommonCATs(0);
      static CATOption.defaultMode.getter();
      v80 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for InformationViewFactory();
      v81 = swift_allocObject();
      v82 = [objc_opt_self() sharedPreferences];
      v83 = v57;
      v84 = type metadata accessor for PommesServerFallbackPreferences();
      swift_allocObject();
      v85 = PommesServerFallbackPreferences.init(_:)();
      v81[11] = v84;
      v81[12] = &protocol witness table for PommesServerFallbackPreferences;
      v81[8] = v85;
      outlined init with take of SiriSuggestionsBroker(v242, (v81 + 3));
      v81[2] = v80;
      type metadata accessor for ExperienceSelector();
      v86 = swift_allocObject();
      type metadata accessor for InformationRoutingFlow(0);
      v71 = swift_allocObject();
      v87 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
      *v87 = 0u;
      *(v87 + 16) = 0u;
      *(v87 + 32) = 0;
      outlined init with copy of InformationRoutingFlow.State(v77, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
      outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
      outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
      *(v71 + 96) = v81;
      *(v71 + 104) = v86;
      swift_beginAccess();
      outlined assign with copy of CurareInteractionStream?(v248, v87);
      swift_endAccess();
      *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
      outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
      UtteranceNormalizer.init(locale:)();
      type metadata accessor for AnalyticsComponentIdGenerator();
      swift_allocObject();
      AnalyticsComponentIdGenerator.init()();
      type metadata accessor for KnowledgeFallbackInstrumentationUtil();
      swift_allocObject();
      v88 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
      outlined destroy of Any?(v79, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      v89 = type metadata accessor for Input();
      (*(*(v89 - 8) + 8))(v239, v89);
      __swift_destroy_boxed_opaque_existential_0Tm(&v243);
      __swift_destroy_boxed_opaque_existential_0Tm(&v246);
      outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(&v249);
      outlined destroy of PegasusExperience(v77, type metadata accessor for InformationRoutingFlow.State);
      v90 = *(v76 + 8);
      v90(v214, v83);
      __swift_destroy_boxed_opaque_existential_0Tm(v251);
      *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v88;
      v90(v215, v83);
LABEL_21:
      v58 = v230;
LABEL_34:
      v47 = v237;
      goto LABEL_35;
    }

    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v75)
    {
      goto LABEL_8;
    }

    v105 = v53 + 8;
    v106 = *(v53 + 8);
    v106(v29, v57);
    v54(v231, v41, v57);
    v107 = Parse.DirectInvocation.identifier.getter();
    v229 = v106;
    if (v107 == 0xD000000000000040 && 0x80000000000BD6D0 == v108)
    {
    }

    else
    {
      v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v120 & 1) == 0)
      {
        v106(v231, v57);
        v54(v223, v41, v57);
        if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003ELL && 0x80000000000BD650 == v137)
        {
        }

        else
        {
          v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v161 & 1) == 0)
          {
            v106(v223, v57);
            v54(v218, v41, v57);
            if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000045 && 0x80000000000BD720 == v174)
            {
            }

            else
            {
              v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v175 & 1) == 0)
              {
                v106(v218, v57);
                v54(v217, v41, v57);
                if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000041 && 0x80000000000BD770 == v187)
                {
                }

                else
                {
                  v188 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v188 & 1) == 0)
                  {
                    v106(v217, v57);
                    v200 = v216;
                    (*(v53 + 32))(v216, v41, v57);
                    v201 = v236;
                    v54(v236, v200, v57);
                    swift_storeEnumTagMultiPayload();
                    v202 = v240;
                    outlined init with copy of OutputPublisherAsync(v240, &v249);
                    v233 = v105;
                    v232 = v57;
                    v203 = v238;
                    outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    outlined init with copy of OutputPublisherAsync(v251, &v246);
                    static AceService.currentAsync.getter();
                    static Device.current.getter();
                    type metadata accessor for CommonCATs(0);
                    static CATOption.defaultMode.getter();
                    v204 = CATWrapper.__allocating_init(options:globals:)();
                    type metadata accessor for InformationViewFactory();
                    v205 = swift_allocObject();
                    v206 = [objc_opt_self() sharedPreferences];
                    v207 = type metadata accessor for PommesServerFallbackPreferences();
                    swift_allocObject();
                    v208 = PommesServerFallbackPreferences.init(_:)();
                    v205[11] = v207;
                    v205[12] = &protocol witness table for PommesServerFallbackPreferences;
                    v205[8] = v208;
                    outlined init with take of SiriSuggestionsBroker(v242, (v205 + 3));
                    v205[2] = v204;
                    type metadata accessor for ExperienceSelector();
                    v209 = swift_allocObject();
                    type metadata accessor for InformationRoutingFlow(0);
                    v71 = swift_allocObject();
                    v210 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
                    *v210 = 0u;
                    *(v210 + 16) = 0u;
                    *(v210 + 32) = 0;
                    outlined init with copy of InformationRoutingFlow.State(v201, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
                    outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
                    outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
                    *(v71 + 96) = v205;
                    *(v71 + 104) = v209;
                    swift_beginAccess();
                    outlined assign with copy of CurareInteractionStream?(v248, v210);
                    swift_endAccess();
                    *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
                    outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
                    UtteranceNormalizer.init(locale:)();
                    type metadata accessor for AnalyticsComponentIdGenerator();
                    swift_allocObject();
                    AnalyticsComponentIdGenerator.init()();
                    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
                    swift_allocObject();
                    v211 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
                    outlined destroy of Any?(v203, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    __swift_destroy_boxed_opaque_existential_0Tm(v202);
                    v212 = type metadata accessor for Input();
                    (*(*(v212 - 8) + 8))(v239, v212);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v243);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v246);
                    outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v249);
                    outlined destroy of PegasusExperience(v201, type metadata accessor for InformationRoutingFlow.State);
                    v229(v200, v232);
                    __swift_destroy_boxed_opaque_existential_0Tm(v251);
                    *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v211;
                    goto LABEL_21;
                  }
                }

                v189 = v236;
                v54(v236, v217, v57);
                swift_storeEnumTagMultiPayload();
                v190 = v240;
                outlined init with copy of OutputPublisherAsync(v240, &v249);
                v123 = v57;
                v191 = v238;
                outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                outlined init with copy of OutputPublisherAsync(v251, &v246);
                static AceService.currentAsync.getter();
                static Device.current.getter();
                type metadata accessor for CommonCATs(0);
                static CATOption.defaultMode.getter();
                v192 = CATWrapper.__allocating_init(options:globals:)();
                type metadata accessor for InformationViewFactory();
                v193 = swift_allocObject();
                v194 = [objc_opt_self() sharedPreferences];
                v195 = type metadata accessor for PommesServerFallbackPreferences();
                swift_allocObject();
                v196 = PommesServerFallbackPreferences.init(_:)();
                v193[11] = v195;
                v193[12] = &protocol witness table for PommesServerFallbackPreferences;
                v193[8] = v196;
                outlined init with take of SiriSuggestionsBroker(v242, (v193 + 3));
                v193[2] = v192;
                type metadata accessor for ExperienceSelector();
                v197 = swift_allocObject();
                type metadata accessor for InformationRoutingFlow(0);
                v71 = swift_allocObject();
                v198 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
                *v198 = 0u;
                *(v198 + 16) = 0u;
                *(v198 + 32) = 0;
                outlined init with copy of InformationRoutingFlow.State(v189, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
                outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
                outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
                *(v71 + 96) = v193;
                *(v71 + 104) = v197;
                swift_beginAccess();
                outlined assign with copy of CurareInteractionStream?(v248, v198);
                swift_endAccess();
                *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
                outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
                UtteranceNormalizer.init(locale:)();
                type metadata accessor for AnalyticsComponentIdGenerator();
                swift_allocObject();
                AnalyticsComponentIdGenerator.init()();
                type metadata accessor for KnowledgeFallbackInstrumentationUtil();
                swift_allocObject();
                v132 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
                outlined destroy of Any?(v191, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                __swift_destroy_boxed_opaque_existential_0Tm(v190);
                v199 = type metadata accessor for Input();
                (*(*(v199 - 8) + 8))(v239, v199);
                __swift_destroy_boxed_opaque_existential_0Tm(&v243);
                __swift_destroy_boxed_opaque_existential_0Tm(&v246);
                outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                __swift_destroy_boxed_opaque_existential_0Tm(&v249);
                outlined destroy of PegasusExperience(v189, type metadata accessor for InformationRoutingFlow.State);
                v134 = &v244;
                goto LABEL_20;
              }
            }

            v176 = v236;
            v54(v236, v218, v57);
            swift_storeEnumTagMultiPayload();
            v177 = v240;
            outlined init with copy of OutputPublisherAsync(v240, &v249);
            v123 = v57;
            v178 = v238;
            outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            outlined init with copy of OutputPublisherAsync(v251, &v246);
            static AceService.currentAsync.getter();
            static Device.current.getter();
            type metadata accessor for CommonCATs(0);
            static CATOption.defaultMode.getter();
            v179 = CATWrapper.__allocating_init(options:globals:)();
            type metadata accessor for InformationViewFactory();
            v180 = swift_allocObject();
            v181 = [objc_opt_self() sharedPreferences];
            v182 = type metadata accessor for PommesServerFallbackPreferences();
            swift_allocObject();
            v183 = PommesServerFallbackPreferences.init(_:)();
            v180[11] = v182;
            v180[12] = &protocol witness table for PommesServerFallbackPreferences;
            v180[8] = v183;
            outlined init with take of SiriSuggestionsBroker(v242, (v180 + 3));
            v180[2] = v179;
            type metadata accessor for ExperienceSelector();
            v184 = swift_allocObject();
            type metadata accessor for InformationRoutingFlow(0);
            v71 = swift_allocObject();
            v185 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
            *v185 = 0u;
            *(v185 + 16) = 0u;
            *(v185 + 32) = 0;
            outlined init with copy of InformationRoutingFlow.State(v176, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
            outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
            outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
            *(v71 + 96) = v180;
            *(v71 + 104) = v184;
            swift_beginAccess();
            outlined assign with copy of CurareInteractionStream?(v248, v185);
            swift_endAccess();
            *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
            outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
            UtteranceNormalizer.init(locale:)();
            type metadata accessor for AnalyticsComponentIdGenerator();
            swift_allocObject();
            AnalyticsComponentIdGenerator.init()();
            type metadata accessor for KnowledgeFallbackInstrumentationUtil();
            swift_allocObject();
            v132 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
            outlined destroy of Any?(v178, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            __swift_destroy_boxed_opaque_existential_0Tm(v177);
            v186 = type metadata accessor for Input();
            (*(*(v186 - 8) + 8))(v239, v186);
            __swift_destroy_boxed_opaque_existential_0Tm(&v243);
            __swift_destroy_boxed_opaque_existential_0Tm(&v246);
            outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            __swift_destroy_boxed_opaque_existential_0Tm(&v249);
            outlined destroy of PegasusExperience(v176, type metadata accessor for InformationRoutingFlow.State);
            v134 = &v245;
LABEL_20:
            v135 = v229;
            v229(*(v134 - 32), v123);
            __swift_destroy_boxed_opaque_existential_0Tm(v251);
            *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v132;
            v135(v215, v123);
            goto LABEL_21;
          }
        }

        v162 = v236;
        v54(v236, v223, v57);
        swift_storeEnumTagMultiPayload();
        v163 = v240;
        outlined init with copy of OutputPublisherAsync(v240, &v249);
        v123 = v57;
        v164 = v238;
        outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        outlined init with copy of OutputPublisherAsync(v251, &v246);
        static AceService.currentAsync.getter();
        static Device.current.getter();
        type metadata accessor for CommonCATs(0);
        static CATOption.defaultMode.getter();
        v165 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for InformationViewFactory();
        v166 = swift_allocObject();
        v167 = [objc_opt_self() sharedPreferences];
        v168 = type metadata accessor for PommesServerFallbackPreferences();
        swift_allocObject();
        v169 = PommesServerFallbackPreferences.init(_:)();
        v166[11] = v168;
        v166[12] = &protocol witness table for PommesServerFallbackPreferences;
        v166[8] = v169;
        outlined init with take of SiriSuggestionsBroker(v242, (v166 + 3));
        v166[2] = v165;
        type metadata accessor for ExperienceSelector();
        v170 = swift_allocObject();
        type metadata accessor for InformationRoutingFlow(0);
        v71 = swift_allocObject();
        v171 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
        *v171 = 0u;
        *(v171 + 16) = 0u;
        *(v171 + 32) = 0;
        outlined init with copy of InformationRoutingFlow.State(v162, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
        outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
        outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
        *(v71 + 96) = v166;
        *(v71 + 104) = v170;
        swift_beginAccess();
        outlined assign with copy of CurareInteractionStream?(v248, v171);
        swift_endAccess();
        *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
        outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
        UtteranceNormalizer.init(locale:)();
        type metadata accessor for AnalyticsComponentIdGenerator();
        swift_allocObject();
        AnalyticsComponentIdGenerator.init()();
        type metadata accessor for KnowledgeFallbackInstrumentationUtil();
        swift_allocObject();
        v132 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
        outlined destroy of Any?(v164, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(v163);
        v172 = type metadata accessor for Input();
        (*(*(v172 - 8) + 8))(v239, v172);
        __swift_destroy_boxed_opaque_existential_0Tm(&v243);
        __swift_destroy_boxed_opaque_existential_0Tm(&v246);
        outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(&v249);
        outlined destroy of PegasusExperience(v162, type metadata accessor for InformationRoutingFlow.State);
        v134 = &v247;
        goto LABEL_20;
      }
    }

    v121 = v236;
    v54(v236, v231, v57);
    swift_storeEnumTagMultiPayload();
    v122 = v240;
    outlined init with copy of OutputPublisherAsync(v240, &v249);
    v123 = v57;
    v124 = v238;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v251, &v246);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs(0);
    static CATOption.defaultMode.getter();
    v125 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v126 = swift_allocObject();
    v127 = [objc_opt_self() sharedPreferences];
    v128 = type metadata accessor for PommesServerFallbackPreferences();
    swift_allocObject();
    v129 = PommesServerFallbackPreferences.init(_:)();
    v126[11] = v128;
    v126[12] = &protocol witness table for PommesServerFallbackPreferences;
    v126[8] = v129;
    outlined init with take of SiriSuggestionsBroker(v242, (v126 + 3));
    v126[2] = v125;
    type metadata accessor for ExperienceSelector();
    v130 = swift_allocObject();
    type metadata accessor for InformationRoutingFlow(0);
    v71 = swift_allocObject();
    v131 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v131 = 0u;
    *(v131 + 16) = 0u;
    *(v131 + 32) = 0;
    outlined init with copy of InformationRoutingFlow.State(v121, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
    outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
    *(v71 + 96) = v126;
    *(v71 + 104) = v130;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v248, v131);
    swift_endAccess();
    *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
    outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    type metadata accessor for AnalyticsComponentIdGenerator();
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    swift_allocObject();
    v132 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v124, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v122);
    v133 = type metadata accessor for Input();
    (*(*(v133 - 8) + 8))(v239, v133);
    __swift_destroy_boxed_opaque_existential_0Tm(&v243);
    __swift_destroy_boxed_opaque_existential_0Tm(&v246);
    outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v249);
    outlined destroy of PegasusExperience(v121, type metadata accessor for InformationRoutingFlow.State);
    v134 = &v250;
    goto LABEL_20;
  }

  if (v51 == enum case for Parse.pegasusResults(_:))
  {
    v58 = v35;
    v59 = v241;
    (*(v35 + 16))(v44, v47, v241);
    (*(v35 + 96))(v44, v59);
    v60 = v229;
    v61 = v228;
    v62 = v230;
    (*(v229 + 4))(v228, v44, v230);
    v63 = v236;
    v60[2](v236, v61, v62);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of OutputPublisherAsync(v240, &v249);
    v64 = v238;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v251, &v246);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs(0);
    static CATOption.defaultMode.getter();
    v65 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v66 = swift_allocObject();
    v67 = [objc_opt_self() sharedPreferences];
    v68 = type metadata accessor for PommesServerFallbackPreferences();
    swift_allocObject();
    v69 = PommesServerFallbackPreferences.init(_:)();
    v66[11] = v68;
    v66[12] = &protocol witness table for PommesServerFallbackPreferences;
    v66[8] = v69;
    outlined init with take of SiriSuggestionsBroker(v242, (v66 + 3));
    v66[2] = v65;
    type metadata accessor for ExperienceSelector();
    v70 = swift_allocObject();
    type metadata accessor for InformationRoutingFlow(0);
    v71 = swift_allocObject();
    v72 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v72 = 0u;
    *(v72 + 16) = 0u;
    *(v72 + 32) = 0;
    outlined init with copy of InformationRoutingFlow.State(v63, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
    outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
    *(v71 + 96) = v66;
    *(v71 + 104) = v70;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v248, v72);
    swift_endAccess();
    *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
    outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    type metadata accessor for AnalyticsComponentIdGenerator();
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    swift_allocObject();
    v73 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v64, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v240);
    v74 = type metadata accessor for Input();
    (*(*(v74 - 8) + 8))(v239, v74);
    __swift_destroy_boxed_opaque_existential_0Tm(&v243);
    __swift_destroy_boxed_opaque_existential_0Tm(&v246);
    outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v249);
    outlined destroy of PegasusExperience(v63, type metadata accessor for InformationRoutingFlow.State);
    (v60[1])(v61, v62);
LABEL_33:
    __swift_destroy_boxed_opaque_existential_0Tm(v251);
    *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v73;
    goto LABEL_34;
  }

  if (v51 == enum case for Parse.pommesResponse(_:))
  {
    v58 = v35;
    v91 = v241;
    (*(v35 + 16))(v44, v47, v241);
    (*(v35 + 96))(v44, v91);
    v92 = *v44;
    v93 = v236;
    *v236 = *v44;
    *(v93 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    v94 = v240;
    outlined init with copy of OutputPublisherAsync(v240, &v249);
    v95 = v238;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v251, &v246);
    v96 = v92;
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs(0);
    static CATOption.defaultMode.getter();
    v97 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v98 = swift_allocObject();
    v99 = [objc_opt_self() sharedPreferences];
    v100 = type metadata accessor for PommesServerFallbackPreferences();
    swift_allocObject();
    v101 = PommesServerFallbackPreferences.init(_:)();
    v98[11] = v100;
    v98[12] = &protocol witness table for PommesServerFallbackPreferences;
    v98[8] = v101;
    outlined init with take of SiriSuggestionsBroker(v242, (v98 + 3));
    v98[2] = v97;
    type metadata accessor for ExperienceSelector();
    v102 = swift_allocObject();
    type metadata accessor for InformationRoutingFlow(0);
    v71 = swift_allocObject();
    v103 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v103 = 0u;
    *(v103 + 16) = 0u;
    *(v103 + 32) = 0;
    outlined init with copy of InformationRoutingFlow.State(v93, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
    outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
    *(v71 + 96) = v98;
    *(v71 + 104) = v102;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v248, v103);
    swift_endAccess();
    *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
    outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    type metadata accessor for AnalyticsComponentIdGenerator();
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    swift_allocObject();
    v73 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();

    outlined destroy of Any?(v95, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
    v104 = type metadata accessor for Input();
    (*(*(v104 - 8) + 8))(v239, v104);
    __swift_destroy_boxed_opaque_existential_0Tm(&v243);
    __swift_destroy_boxed_opaque_existential_0Tm(&v246);
    outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v249);
    outlined destroy of PegasusExperience(v93, type metadata accessor for InformationRoutingFlow.State);
    goto LABEL_33;
  }

  if (v51 == enum case for Parse.ifClientAction(_:))
  {
    v109 = v47;
    v110 = v241;
    (*(v35 + 16))(v38, v109, v241);
    (*(v35 + 96))(v38, v110);
    v111 = v224;
    v112 = v226;
    v113 = v227;
    (*(v224 + 32))(v226, v38, v227);
    v114 = v220;
    IFClientActionParse.clientAction.getter();
    v115 = MessagePayload.ClientAction.toolId.getter();
    v117 = v116;
    v118 = v225 + 8;
    v232 = *(v225 + 8);
    (v232)(v114, v222);
    if (v115 == 0x657461676976616ELL && v117 == 0xEB000000006F745FLL)
    {

      v119 = v221;
    }

    else
    {
      v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v119 = v221;
      if ((v138 & 1) == 0)
      {
        outlined destroy of Any?(v238, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(v240);
        v173 = type metadata accessor for Input();
        (*(*(v173 - 8) + 8))(v239, v173);
        (*(v111 + 8))(v112, v113);
        __swift_destroy_boxed_opaque_existential_0Tm(v251);
        v71 = 0;
        v58 = v35;
        goto LABEL_34;
      }
    }

    v225 = v118;
    v58 = v35;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v139 = type metadata accessor for Logger();
    __swift_project_value_buffer(v139, static Logger.information);
    (*(v111 + 16))(v119, v112, v113);
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v249 = v143;
      *v142 = 136315138;
      v144 = v219;
      IFClientActionParse.clientAction.getter();
      v145 = MessagePayload.ClientAction.toolId.getter();
      v147 = v146;
      (v232)(v144, v222);
      (*(v111 + 8))(v119, v227);
      v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, &v249);

      *(v142 + 4) = v148;
      _os_log_impl(&dword_0, v140, v141, "%s shim tool found", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v143);
    }

    else
    {

      (*(v111 + 8))(v119, v113);
    }

    v149 = v236;
    IFClientActionParse.clientAction.getter();
    swift_storeEnumTagMultiPayload();
    v150 = v240;
    outlined init with copy of OutputPublisherAsync(v240, &v249);
    v151 = v238;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v238, v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v251, &v246);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs(0);
    static CATOption.defaultMode.getter();
    v152 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v153 = swift_allocObject();
    v154 = [objc_opt_self() sharedPreferences];
    v155 = type metadata accessor for PommesServerFallbackPreferences();
    swift_allocObject();
    v156 = PommesServerFallbackPreferences.init(_:)();
    v153[11] = v155;
    v153[12] = &protocol witness table for PommesServerFallbackPreferences;
    v153[8] = v156;
    outlined init with take of SiriSuggestionsBroker(v242, (v153 + 3));
    v153[2] = v152;
    type metadata accessor for ExperienceSelector();
    v157 = swift_allocObject();
    type metadata accessor for InformationRoutingFlow(0);
    v71 = swift_allocObject();
    v158 = v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v158 = 0u;
    *(v158 + 16) = 0u;
    *(v158 + 32) = 0;
    outlined init with copy of InformationRoutingFlow.State(v149, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v243, v71 + 56);
    outlined init with copy of OutputPublisherAsync(&v249, v71 + 16);
    *(v71 + 96) = v153;
    *(v71 + 104) = v157;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v248, v158);
    swift_endAccess();
    *(v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v235 & 1;
    outlined init with copy of OutputPublisherAsync(&v246, v71 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    type metadata accessor for AnalyticsComponentIdGenerator();
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    swift_allocObject();
    v73 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v151, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v150);
    v159 = type metadata accessor for Input();
    (*(*(v159 - 8) + 8))(v239, v159);
    __swift_destroy_boxed_opaque_existential_0Tm(&v243);
    __swift_destroy_boxed_opaque_existential_0Tm(&v246);
    outlined destroy of Any?(v248, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v249);
    outlined destroy of PegasusExperience(v149, type metadata accessor for InformationRoutingFlow.State);
    (*(v224 + 8))(v226, v227);
    goto LABEL_33;
  }

  outlined destroy of Any?(v238, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v240);
  v136 = type metadata accessor for Input();
  (*(*(v136 - 8) + 8))(v239, v136);
  __swift_destroy_boxed_opaque_existential_0Tm(v251);
  v71 = 0;
  v58 = v35;
LABEL_35:
  (*(v58 + 8))(v47, v241);
  return v71;
}

uint64_t specialized InformationRoutingFlow.__allocating_init(result:isSiriLocationServicesPromptingEnabled:knowledgeFallbackHelper:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CATOption();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33[3] = a5;
  v33[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v16 = type metadata accessor for Parse.PegasusResult();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14, a1, v16);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of OutputPublisherAsync(v33, v32);
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v19 = swift_allocObject();
  v20 = [objc_opt_self() sharedPreferences];
  v21 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v22 = PommesServerFallbackPreferences.init(_:)();
  v19[11] = v21;
  v19[12] = &protocol witness table for PommesServerFallbackPreferences;
  v19[8] = v22;
  outlined init with take of SiriSuggestionsBroker(v29, (v19 + 3));
  v19[2] = v18;
  type metadata accessor for ExperienceSelector();
  v23 = swift_allocObject();
  type metadata accessor for PommesResponse();
  static PommesResponse.makeDefaultInteractionStream()();
  type metadata accessor for InformationRoutingFlow(0);
  v24 = swift_allocObject();
  v25 = v24 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  outlined init with copy of InformationRoutingFlow.State(v14, v24 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
  outlined init with copy of OutputPublisherAsync(v31, v24 + 56);
  outlined init with copy of OutputPublisherAsync(v30, v24 + 16);
  *(v24 + 96) = v19;
  *(v24 + 104) = v23;
  swift_beginAccess();
  outlined assign with copy of CurareInteractionStream?(v29, v25);
  swift_endAccess();
  *(v24 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = a2;
  outlined init with copy of OutputPublisherAsync(v32, v24 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
  UtteranceNormalizer.init(locale:)();
  type metadata accessor for AnalyticsComponentIdGenerator();
  swift_allocObject();
  AnalyticsComponentIdGenerator.init()();
  type metadata accessor for KnowledgeFallbackInstrumentationUtil();
  swift_allocObject();
  v26 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
  (*(v17 + 8))(a1, v16);
  outlined destroy of Any?(v29, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  outlined destroy of PegasusExperience(v14, type metadata accessor for InformationRoutingFlow.State);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  *(v24 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v26;
  return v24;
}

unint64_t specialized InformationRoutingFlow.Invocations.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InformationRoutingFlow.Invocations.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined assign with take of InformationRoutingFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InformationRoutingFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t sub_1A554()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);

  v9 = type metadata accessor for GenAIPartner();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = type metadata accessor for PommesCandidateId();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return _swift_deallocObject(v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t partial apply for closure #6 in InformationRoutingFlow.execute()(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return closure #6 in InformationRoutingFlow.execute()(a1, v8, v9, v10, v1 + v4, v1 + v7, v12, v13);
}

uint64_t partial apply for specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)()
{
  return specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A918()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t specialized InformationRoutingFlow.needsPreciseLocation(with:)()
{
  v0 = type metadata accessor for PommesRenderOptions.PromptType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = dispatch thunk of PommesResponse.experiences.getter();
  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; v4 = v19)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = v4 + 32;
    v28 = enum case for PommesRenderOptions.PromptType.sharePreciseDeviceLocation(_:);
    v27 = (v1 + 104);
    v25 = v4;
    v26 = (v1 + 8);
    v23 = v4 & 0xC000000000000001;
    v24 = i;
    v21 = v4 + 32;
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_16;
        }

        v4 = *(v9 + 8 * v6);
      }

      v10 = v4;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v12 = dispatch thunk of Experience.renderOptions.getter();
      v13 = PommesRenderOptions.promptTypes.getter();

      (*v27)(v3, v28, v0);
      v14 = 0;
      v15 = *(v13 + 16);
      while (v15 != v14)
      {
        v16 = v14 + 1;
        lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType, &type metadata accessor for PommesRenderOptions.PromptType, &protocol conformance descriptor for PommesRenderOptions.PromptType);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        v14 = v16;
        if (v17)
        {

          (*v26)(v3, v0);
          v18 = 1;
          goto LABEL_19;
        }
      }

      v4 = (*v26)(v3, v0);
      v7 = v23;
      v9 = v21;
      v8 = v22;
      if (v6 == v24)
      {
        v18 = 0;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v19 = v4;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  v18 = 0;
LABEL_19:

  return v18;
}

uint64_t outlined init with take of GenAIPartner?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of InformationRoutingFlow.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PegasusExperience(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized InformationRoutingFlow.knowledgeFallbackConfirmationCompletion(exitValue:yesStateFn:noState:disableConfirmRequestsStateFn:isEnablement:pommesCandidateId:sessionRequestId:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v101 = a8;
  v106 = a6;
  v96 = a5;
  v94 = a3;
  v92 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
  __chkstk_darwin(v14 - 8);
  v93 = &v89 - v15;
  v99 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v99);
  v105 = (&v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
  __chkstk_darwin(v17 - 8);
  v104 = &v89 - v18;
  v19 = type metadata accessor for KnowledgeConfirmationResponseProvider(0);
  __chkstk_darwin(v19 - 8);
  v98 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy011InformationC6Plugin37KnowledgeConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin37KnowledgeConfirmationResponseProviderVGMR);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v103 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v89 - v25;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v27 = a9;
  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Logger.information);
  v30 = *(v22 + 16);
  v102 = a1;
  v100 = v30;
  v30(v26, a1, v21);
  v97 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  v33 = os_log_type_enabled(v31, v32);
  v91 = a4;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v95 = a7;
    v35 = v34;
    v36 = swift_slowAlloc();
    v90 = a9;
    v37 = v36;
    v107[0] = v36;
    *v35 = 136315138;
    lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(&lazy protocol witness table cache variable for type PromptResult<KnowledgeConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin37KnowledgeConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOy011InformationC6Plugin37KnowledgeConfirmationResponseProviderVGMR, &protocol conformance descriptor for PromptResult<A>);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v89 = v22;
    v41 = *(v22 + 8);
    v41(v26, v21);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v107);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_0, v31, v32, "knowledge fallback: knowledgeFallbackConfirmationCompletion %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v27 = v90;

    a7 = v95;

    v43 = v89;
  }

  else
  {

    v44 = v22;
    v41 = *(v22 + 8);
    v41(v26, v21);
    v43 = v44;
  }

  v45 = v103;
  v100(v103, v102, v21);
  v46 = (*(v43 + 88))(v45, v21);
  v47 = v104;
  if (v46 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v43 + 96))(v45, v21);
    v48 = v98;
    outlined init with take of KnowledgeFallbackHelper(v45, v98, type metadata accessor for KnowledgeConfirmationResponseProvider);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v48, v47, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMd, &_s21InformationFlowPlugin29KnowledgeConfirmationResponseOSgMR);
    v49 = type metadata accessor for KnowledgeConfirmationResponse(0);
    if ((*(*(v49 - 8) + 48))(v47, 1, v49) == 1)
    {
      goto LABEL_17;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMd, &_s16SiriMessageTypes12GenAIPartnerOSg03genE0_Sb6didTaptMR);
    v51 = (*(*(v50 - 8) + 48))(v47, 2, v50);
    if (v51)
    {
      if (v51 == 1)
      {
        v52 = v105;
        outlined init with copy of InformationRoutingFlow.State(v92, v105, type metadata accessor for InformationRoutingFlow.State);
        v53 = (*(*v27 + 200))(v52);
        if (v96)
        {
          (*(*v27 + 240))(v107, v53);
          v54 = v108;
          v55 = v109;
          __swift_project_boxed_opaque_existential_1(v107, v108);
          (*(v55 + 24))(v54, v55);
        }

        else
        {
          (*(*v27 + 240))(v107, v53);
          v83 = v108;
          v84 = v109;
          __swift_project_boxed_opaque_existential_1(v107, v108);
          (*(v84 + 32))(v83, v84);
        }

        outlined destroy of PegasusExperience(v48, type metadata accessor for KnowledgeConfirmationResponseProvider);
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        goto LABEL_36;
      }

LABEL_17:
      (*(*v27 + 240))(v107);
      v60 = v108;
      v61 = v109;
      __swift_project_boxed_opaque_existential_1(v107, v108);
      (*(v61 + 32))(v60, v61);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
      v62 = v105;
      swift_storeEnumTagMultiPayload();
      (*(*v27 + 200))(v62);
      outlined destroy of PegasusExperience(v48, type metadata accessor for KnowledgeConfirmationResponseProvider);
      goto LABEL_36;
    }

    v95 = a7;
    v70 = *(v47 + *(v50 + 48));
    v71 = v93;
    v72 = outlined init with take of GenAIPartner?(v47, v93, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    if ((v96 & 1) == 0)
    {
      (*(*v27 + 240))(v107, v72);
      v73 = v108;
      v74 = v109;
      __swift_project_boxed_opaque_existential_1(v107, v108);
      (*(v74 + 40))(v73, v74);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
    }

    if (v94 && v70 && (v96 & 1) == 0)
    {
      v75 = *(*v27 + 240);
      v76 = v91;

      v75(v107, v77);
      v78 = v108;
      v79 = v109;
      __swift_project_boxed_opaque_existential_1(v107, v108);
      LOBYTE(v78) = (*(v79 + 80))(v78, v79);
      __swift_destroy_boxed_opaque_existential_0Tm(v107);
      if (v78)
      {
        v80 = v105;
        v81 = v94;
        v94(v71);
        (*(*v27 + 200))(v80);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GenAIPartner?) -> (@out InformationRoutingFlow.State))?(v81, v76);
        v82 = v71;
LABEL_35:
        outlined destroy of Any?(v82, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
        outlined destroy of PegasusExperience(v48, type metadata accessor for KnowledgeConfirmationResponseProvider);
        goto LABEL_36;
      }

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GenAIPartner?) -> (@out InformationRoutingFlow.State))?(v94, v76);
    }

    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMd, &_sSS5query_16SiriMessageTypes12GenAIPartnerOSg03genF0tMR) + 48);
    v86 = v105;
    *v105 = a10;
    v86[1] = a11;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v71, v86 + v85, &_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    swift_storeEnumTagMultiPayload();
    v87 = *(*v27 + 200);

    v87(v86);
    v82 = v71;
    goto LABEL_35;
  }

  if (v46 == enum case for PromptResult.error<A>(_:))
  {
    v41(v45, v21);
LABEL_14:
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "Knowledge fallback confirmation prompt was unanswered or errored out", v58, 2u);
    }

    v59 = v105;
    swift_storeEnumTagMultiPayload();
    (*(*v27 + 200))(v59);
    goto LABEL_36;
  }

  if (v46 == enum case for PromptResult.cancelled<A>(_:))
  {
    (*(*v27 + 240))(v107);
    v63 = v108;
    v64 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    (*(v64 + 32))(v63, v64);
    __swift_destroy_boxed_opaque_existential_0Tm(v107);
    v65 = v105;
    swift_storeEnumTagMultiPayload();
    (*(*v27 + 200))(v65);
    goto LABEL_36;
  }

  if (v46 == enum case for PromptResult.unanswered<A>(_:))
  {
    goto LABEL_14;
  }

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_0, v66, v67, "Knowledge fallback confirmation prompt got unhandled response type", v68, 2u);
  }

  v69 = v105;
  swift_storeEnumTagMultiPayload();
  (*(*v27 + 200))(v69);
  v41(v45, v21);
LABEL_36:
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.executionRequestId.getter();

  dispatch thunk of KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackConfirmationOutcome(requestId:pommesCandidateId:sessionRequestId:outcome:)();
}

uint64_t specialized InformationRoutingEntryPoint.flowFor(input:)(uint64_t a1)
{
  v2 = type metadata accessor for KnowledgeFallbackHelper(0);
  v3 = (v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  v9 = type metadata accessor for Input();
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for PommesResponse();
  static PommesResponse.makeDefaultInteractionStream()();
  v13 = [objc_opt_self() isSiriLocationServicesPromptingEnabled];
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  v14 = v3[7];
  v15 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v15 - 8) + 56))(&v8[v14], 1, 1, v15);
  *&v8[v3[8]] = xmmword_B86A0;
  *&v8[v3[9]] = xmmword_B86A0;
  outlined init with copy of InformationRoutingFlow.State(v8, v6, type metadata accessor for KnowledgeFallbackHelper);
  v16 = _s21InformationFlowPlugin0a7RoutingB0C5input15outputPublisher17interactionStream38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperACSg0k3KitB05InputV_AJ06OutputG5Async_p0kA6Search017CurareInteractionI0_pSgSbAA09KnowledgeqR9Providing_ptcfCTf4nnnnen_nAA0zqR0V_Tt4g5(v11, v20, v19, v13, v6);
  outlined destroy of PegasusExperience(v8, type metadata accessor for KnowledgeFallbackHelper);
  if (!v16)
  {
    return 0;
  }

  v20[0] = v16;
  type metadata accessor for InformationRoutingFlow(0);
  lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy and conformance DisableConfirmRequestsConfirmationStrategy(&lazy protocol witness table cache variable for type InformationRoutingFlow and conformance InformationRoutingFlow, type metadata accessor for InformationRoutingFlow, &protocol conformance descriptor for InformationRoutingFlow);
  v17 = Flow.eraseToAnyFlow()();

  return v17;
}

unint64_t lazy protocol witness table accessor for type InformationRoutingFlow.Invocations and conformance InformationRoutingFlow.Invocations()
{
  result = lazy protocol witness table cache variable for type InformationRoutingFlow.Invocations and conformance InformationRoutingFlow.Invocations;
  if (!lazy protocol witness table cache variable for type InformationRoutingFlow.Invocations and conformance InformationRoutingFlow.Invocations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InformationRoutingFlow.Invocations and conformance InformationRoutingFlow.Invocations);
  }

  return result;
}

uint64_t type metadata completion function for InformationRoutingFlow(uint64_t a1)
{
  result = type metadata accessor for InformationRoutingFlow.State(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UtteranceNormalizer();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata completion function for InformationRoutingFlow.State(uint64_t a1)
{
  type metadata accessor for (PommesResponse, GuardFlowResult?)(319, &lazy cache variable for type metadata for (PommesResponse, GuardFlowResult?), &_s11SiriKitFlow05GuardC6ResultOSgMd, &_s11SiriKitFlow05GuardC6ResultOSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Parse.PegasusResult();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (PommesResponse, GuardFlowResult?)(319, &lazy cache variable for type metadata for (PommesResponse, IdentifiedUser?), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Parse.DirectInvocation();
        if (v4 <= 0x3F)
        {
          type metadata accessor for (query: String, genAIPartner: GenAIPartner?)(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Flow();
            if (v6 <= 0x3F)
            {
              type metadata accessor for (String, RenderPegasusFlow?)(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for (query: String, genAIPartner: GenAIPartner?, pommesCandidateId: PommesCandidateId?, sessionRequestId: String?)(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for MessagePayload.ClientAction();
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Error?(319);
                    if (v10 <= 0x3F)
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

void type metadata accessor for (PommesResponse, GuardFlowResult?)(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for PommesResponse();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (query: String, genAIPartner: GenAIPartner?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (query: String, genAIPartner: GenAIPartner?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (query: String, genAIPartner: GenAIPartner?));
    }
  }
}

unint64_t type metadata accessor for Flow()
{
  result = lazy cache variable for type metadata for Flow;
  if (!lazy cache variable for type metadata for Flow)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Flow);
  }

  return result;
}

void type metadata accessor for (String, RenderPegasusFlow?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (String, RenderPegasusFlow?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21InformationFlowPlugin013RenderPegasusB0CSgMd, &_s21InformationFlowPlugin013RenderPegasusB0CSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, RenderPegasusFlow?));
    }
  }
}

void type metadata accessor for (query: String, genAIPartner: GenAIPartner?, pommesCandidateId: PommesCandidateId?, sessionRequestId: String?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (query: String, genAIPartner: GenAIPartner?, pommesCandidateId: PommesCandidateId?, sessionRequestId: String?))
  {
    __chkstk_darwin(a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes12GenAIPartnerOSgMd, &_s16SiriMessageTypes12GenAIPartnerOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (query: String, genAIPartner: GenAIPartner?, pommesCandidateId: PommesCandidateId?, sessionRequestId: String?));
    }
  }
}

uint64_t getEnumTagSinglePayload for InformationRoutingFlow.Invocations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InformationRoutingFlow.Invocations(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy()
{
  result = lazy protocol witness table cache variable for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy;
  if (!lazy protocol witness table cache variable for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OverrideGuardFlowStrategy and conformance OverrideGuardFlowStrategy);
  }

  return result;
}

uint64_t sub_1C6D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C744()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #2 in InformationRoutingFlow.renderPommesFlow(_:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #2 in InformationRoutingFlow.renderPommesFlow(_:)(a1, v5, v4);
}

uint64_t sub_1C828()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1C88C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t outlined init with take of KnowledgeFallbackHelper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GenAIPartner?) -> (@out InformationRoutingFlow.State))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), DisableConfirmRequestsConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1CA00@<X0>(uint64_t *a1@<X8>)
{
  result = AjaxMetadata.AjaxQuery.ExplicitQuery.rewrittenUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA6C@<X0>(uint64_t *a1@<X8>)
{
  result = AjaxMetadata.AjaxQuery.ImplicitQuery.rewrittenUtterance.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t outlined assign with copy of CurareInteractionStream?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SuggestionsEntryPoint.__allocating_init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InformationFlowPlugin24SuggestionsIntentDonator_pGMd, &_ss23_ContiguousArrayStorageCy21InformationFlowPlugin24SuggestionsIntentDonator_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_B95F0;
  v2 = type metadata accessor for CoreSuggestionsIntentDonator();
  v3 = swift_allocObject();
  *(v3 + 16) = closure #1 in SuggestionsEntryPoint.init();
  *(v3 + 24) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = &protocol witness table for CoreSuggestionsIntentDonator;
  *(v1 + 32) = v3;
  v4 = type metadata accessor for CarPlaySuggestionsIntentDonator();
  v5 = swift_allocObject();
  *(v5 + 16) = closure #1 in SuggestionsEntryPoint.init();
  *(v5 + 24) = 0;
  *(v1 + 96) = v4;
  *(v1 + 104) = &protocol witness table for CarPlaySuggestionsIntentDonator;
  *(v1 + 72) = v5;
  v12[3] = &type metadata for UnionSuggestionsIntentDonator;
  v12[4] = &protocol witness table for UnionSuggestionsIntentDonator;
  v12[0] = v1;
  outlined init with copy of OutputPublisherAsync(v12, v11);
  v10[3] = type metadata accessor for DefaultBiomeDonator();
  v10[4] = &protocol witness table for DefaultBiomeDonator;
  v10[0] = swift_allocObject();
  outlined init with copy of OutputPublisherAsync(v11, v9);
  outlined init with copy of OutputPublisherAsync(v10, v8);
  v6 = (*(v0 + 112))(v9, v8, closure #1 in SuggestionsEntryPoint.init(suggestionsDonator:biomeDonator:localeProvider:), 0, closure #2 in SuggestionsEntryPoint.init(), 0);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v6;
}

uint64_t closure #2 in SuggestionsEntryPoint.init()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 languageCode];

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t DefaultBiomeDonator.donate(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  v8 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in DefaultBiomeDonator.donate(_:), v7);
}

uint64_t closure #1 in DefaultBiomeDonator.donate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in DefaultBiomeDonator.donate(_:), 0, 0);
}

uint64_t closure #1 in DefaultBiomeDonator.donate(_:)()
{
  v1 = specialized DefaultBiomeDonator.removeUtterances(_:)(*(v0 + 24));
  v2 = [objc_allocWithZone(INInteraction) initWithIntent:v1 response:0];

  v3 = objc_opt_self();
  *(v0 + 16) = 0;
  v4 = [v3 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v0 + 16];
  v5 = *(v0 + 16);
  if (v4)
  {
    v42 = v2;
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v11;

    v12 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v13 = [v12 Intent];
    swift_unknownObjectRelease();
    v41 = [v13 source];

    Date.init()();
    v14 = type metadata accessor for Date();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v6, 0, 1, v14);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v8 + 8))(v7, v9);
    v16 = [v10 _className];
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    v17 = [*(v0 + 24) verb];
    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();

      v17 = v18;
    }

    v40 = v17;
    v19 = *(v0 + 56);
    type metadata accessor for NSNumber();
    outlined copy of Data._Representation(v44, v43);
    v20.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    isa = 0;
    if ((*(v15 + 48))(v19, 1, v14) != 1)
    {
      v22 = *(v0 + 56);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v15 + 8))(v22, v14);
    }

    v23 = objc_allocWithZone(BMAppIntent);
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();

    v26 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v44, v43);
    v27 = String._bridgeToObjectiveC()();
    LODWORD(v39) = 1;
    LODWORD(v38) = 4;
    v28 = [v23 initWithAbsoluteTimestamp:isa bundleID:v24 sourceID:v25 intentClass:v16 intentVerb:v40 intentType:2 handlingStatus:v38 interaction:v26 itemID:v27 donatedBySiri:v20.super.super.isa interactionDirection:v39 groupIdentifier:0];

    [v41 sendEvent:v28];
    outlined consume of Data._Representation(v44, v43);
  }

  else
  {
    v29 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.information);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&dword_0, v31, v32, "Unable to donate to biome: %@", v33, 0xCu);
      outlined destroy of Any?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }
  }

  v36 = *(v0 + 8);

  return v36();
}