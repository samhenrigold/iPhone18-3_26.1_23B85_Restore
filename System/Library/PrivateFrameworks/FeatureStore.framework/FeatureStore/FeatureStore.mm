uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x223DD4390);
}

void OUTLINED_FUNCTION_11_3()
{

  JUMPOUT(0x223DD4390);
}

void static FeatureStoreService.insert<A>(taskId:interactionId:item:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_9_1();
  v95 = v22;
  v24 = v23;
  v90 = v25;
  v91 = v26;
  v28 = v27;
  v30 = v29;
  v96 = v31;
  v33 = v32;
  v93 = a21;
  v94 = a22;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0();
  v85 = v35;
  v86 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v38 = v37 - v36;
  OUTLINED_FUNCTION_0_0();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_11_1();
  v88 = v43;
  v89 = v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v78 - v45;
  v47 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2();
  v60 = v52 - v51;
  v56 = Logger.service.unsafeMutableAddressor(v53, v54, v55);
  v84 = v49;
  v57 = *(v49 + 16);
  v87 = v47;
  v57(v60, v56, v47);
  v97 = v40;
  v58 = *(v40 + 16);
  v92 = v28;
  v82 = v58;
  v58(v46, v28, v24);

  v83 = v60;
  v59 = Logger.logObject.getter();
  LODWORD(v60) = static os_log_type_t.debug.getter();

  v61 = v33;

  if (os_log_type_enabled(v59, v60))
  {
    OUTLINED_FUNCTION_6_1();
    v62 = swift_slowAlloc();
    v80 = OUTLINED_FUNCTION_14_0();
    v99[0] = v80;
    *v62 = 136315650;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v63 = String.init<A>(describing:)();
    v81 = v38;
    v64 = v63;
    v79 = v60;
    v60 = v24;
    v66 = v65;
    (*(v97 + 8))(v46, v60);
    v38 = v81;
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v99);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v61, v99);
    *(v62 + 22) = 2080;
    v24 = v60;
    *(v62 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v30, v99);
    _os_log_impl(&dword_223066000, v59, v79, "Will submit insertion task of type %s with taskId: %s,  interactionId: %s", v62, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    (*(v84 + 8))(v83, v87);
  }

  else
  {

    (*(v84 + 8))(v83, v87);
    (*(v97 + 8))(v46, v24);
  }

  v68 = v61;
  v69 = v89;
  v82(v89, v92, v24);
  v70 = v97;
  v71 = (*(v97 + 80) + 80) & ~*(v97 + 80);
  v72 = swift_allocObject();
  v73 = v24;
  v74 = v72;
  v76 = v93;
  v75 = v94;
  *(v72 + 2) = v73;
  *(v72 + 3) = v76;
  *(v72 + 4) = v75;
  *(v72 + 5) = v60;
  v77 = v96;
  *(v72 + 6) = v95;
  *(v72 + 7) = v68;
  *(v72 + 8) = v77;
  *(v72 + 9) = v30;
  (*(v70 + 32))(&v72[v71], v69);

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v38, partial apply for closure #1 in static FeatureStoreService.insert<A>(taskId:interactionId:item:completion:), v74, v90, v91);

  (*(v85 + 8))(v38, v86);
  OUTLINED_FUNCTION_8_1();
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return type metadata accessor for FeatureStoreService();
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  outlined init with take of InstrumentationStreamsProviderProtocol((v0 + 136), v0 + 96);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v1);

  return MEMORY[0x282137798](v1, v2);
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x223DD4390);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(v9, a3, v10 - 8);
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_7()
{

  JUMPOUT(0x223DD3460);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000026;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000026;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_beginAccess();
}

uint64_t static LogSignpost.begin(logger:_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v46 = a2;
  v47 = a3;
  v45 = a4;
  v43 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v44 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  (*(v17 + 16))(v21, a1, v15);
  v28 = v14;
  v29 = v47;
  OSSignposter.init(logger:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v42 = v23;
  if ((v45 & 1) == 0)
  {
    v33 = v46;
    if (v46)
    {
      v34 = v28;
LABEL_9:
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_223066000, v30, v31, v36, v33, "", v35, 2u);
      v37 = v35;
      v28 = v34;
      MEMORY[0x223DD4390](v37, -1, -1);
      v29 = v47;
      v23 = v42;
LABEL_10:

      v38 = v43;
      (*(v8 + 16))(v12, v28, v43);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v39 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v8 + 8))(v28, v38);
      *a5 = v46;
      *(a5 + 8) = v29;
      *(a5 + 16) = v45;
      *(a5 + 24) = v39;
      v40 = type metadata accessor for LogSignpost(0);
      return (*(v23 + 32))(a5 + *(v40 + 24), v27, v44);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v46 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v46 & 0xFFFFF800) != 0xD800)
  {
    if (v46 >> 16 <= 0x10)
    {
      v34 = v28;
      v33 = &v48;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for LogSignpost(uint64_t a1)
{
  result = type metadata singleton initialization cache for LogSignpost;
  if (!type metadata singleton initialization cache for LogSignpost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static FeatureStoreService.isInternalBuild.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  v1 = static FeatureStoreService.overriddenInternalBuildValue;
  if (static FeatureStoreService.overriddenInternalBuildValue == 2)
  {
    v1 = [objc_opt_self() isRunningOnInternalBuild];
  }

  return v1 & 1;
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return type metadata accessor for StreamQuery(0);
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t partial apply for closure #2 in static FeatureStoreService.performInsert(qos:insertBlock:completion:)()
{
  v1 = *(type metadata accessor for LogSignpost(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + v2);
  v4 = *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8));
  LogSignpost.end()();
  result = v3();
  if (v4)
  {
    return v4(result);
  }

  return result;
}

uint64_t closure #1 in static FeatureStoreService.performInsert(qos:insertBlock:completion:)(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for LogSignpost(0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  default argument 0 of static LogSignpost.begin(logger:_:)(v8, v13, v14, v15);
  static LogSignpost.begin(logger:_:)(v8, "Insert", 6, 2u, v12);
  v16 = (*(v4 + 8))(v8, v2);
  a1(v16);
  LogSignpost.end()();
  return outlined destroy of LogSignpost(v12);
}

uint64_t default argument 0 of static LogSignpost.begin(logger:_:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = Logger.signpost.unsafeMutableAddressor(a2, a3, a4);
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_1();
  v8 = *(v7 + 16);

  return v8(a1, v5, v6);
}

Swift::Void __swiftcall LogSignpost.end()()
{
  v1 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_0();
  v21 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  type metadata accessor for LogSignpost(0);
  v14 = *v0;
  v15 = *(v0 + 16);
  v16 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v13, v7);
    return;
  }

  if ((v15 & 1) == 0)
  {
    if (v14)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v21 + 88))(v6, v1) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v6, v1);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_223066000, v16, v20, v19, v14, v17, v18, 2u);
      MEMORY[0x223DD4390](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v14 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v14 & 0xFFFFF800) != 0xD800)
  {
    if (v14 >> 16 <= 0x10)
    {
      v14 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t Logger.accessor.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static FeatureStoreService.performInsert(qos:insertBlock:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v54 = a2;
  v60 = a5;
  v57 = a1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0();
  v58 = v8;
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v56 = v10 - v9;
  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = type metadata accessor for LogSignpost(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  result = static FeatureStoreService.isInternalBuild.getter(v25);
  if ((result & 1) == 0)
  {
    if (!a4)
    {
      return result;
    }

    v47 = a4;
    return v47();
  }

  v53 = a4;
  v29 = static FeatureStoreService.isSupportedUser.getter(result);
  if (v29)
  {
    v32 = swift_allocObject();
    v33 = v54;
    *(v32 + 2) = v55;
    *(v32 + 3) = v33;
    *(v32 + 4) = a3;

    default argument 0 of static LogSignpost.begin(logger:_:)(v19, v34, v35, v36);
    static LogSignpost.begin(logger:_:)(v19, "QueueLatency", 12, 2u, v27);
    (*(v13 + 8))(v19, v11);
    if (one-time initialization token for fsCaptureQueue != -1)
    {
      OUTLINED_FUNCTION_2_4(&one-time initialization token for fsCaptureQueue);
    }

    outlined init with copy of LogSignpost(v27, v24);
    v37 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v38 = (v22 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    outlined init with take of LogSignpost(v24, v39 + v37);
    v40 = (v39 + v38);
    *v40 = partial apply for closure #1 in static FeatureStoreService.performInsert(qos:insertBlock:completion:);
    v40[1] = v32;
    v41 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
    v42 = v53;
    v43 = v60;
    *v41 = v53;
    v41[1] = v43;
    aBlock[4] = partial apply for closure #2 in static FeatureStoreService.performInsert(qos:insertBlock:completion:);
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v44 = _Block_copy(aBlock);
    v61 = MEMORY[0x277D84F90];

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v42, v43);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    v45 = v56;
    v46 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DD3730](0, v57, v45, v44);
    _Block_release(v44);

    (*(v58 + 8))(v45, v46);
    outlined destroy of LogSignpost(v27);
  }

  v48 = Logger.service.unsafeMutableAddressor(v29, v30, v31);
  (*(v13 + 16))(v17, v48, v11);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_223066000, v49, v50, "Skipping insertion as process does not run with a supported user", v51, 2u);
    MEMORY[0x223DD4390](v51, -1, -1);
  }

  result = (*(v13 + 8))(v17, v11);
  v47 = v53;
  if (v53)
  {
    return v47();
  }

  return result;
}

uint64_t sub_223069934()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22306996C()
{
  v1 = (type metadata accessor for LogSignpost(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_9_0();
  (*(v7 + 8))(v5 + v6);

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t static FeatureStoreService.isSupportedUser.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0(a1);
  if (static FeatureStoreService.overrideSupportedUserCheck)
  {
    return 1;
  }

  else
  {
    return [objc_opt_self() isSupportedUser];
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void static FeatureStoreService.insertSync<A>(taskId:interactionId:item:)()
{
  OUTLINED_FUNCTION_9_1();
  v88 = v0;
  v89 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v86 = v8;
  v10 = v9;
  v93 = v11;
  v12 = type metadata accessor for LogSignpost(0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_2();
  v92 = v14 - v13;
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_1();
  v83 = v25 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v84 = &v78 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v78 - v31;
  v35 = Logger.service.unsafeMutableAddressor(v30, v33, v34);
  v36 = *(v23 + 16);
  v81 = v35;
  v82 = v23 + 16;
  v85 = v21;
  v80 = v36;
  (v36)(v32);
  v37 = *(v16 + 16);
  v91 = v5;
  v37(v20, v5, v3);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v87 = v7;

  v40 = os_log_type_enabled(v38, v39);
  v90 = v10;
  if (v40)
  {
    OUTLINED_FUNCTION_6_1();
    v41 = swift_slowAlloc();
    v79 = OUTLINED_FUNCTION_14_0();
    v95 = v79;
    *v41 = 136315650;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    String.init<A>(describing:)();
    v42 = v20;
    v43 = v3;
    (*(v16 + 8))(v42, v3);
    v44 = OUTLINED_FUNCTION_7_2();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v46);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v10, &v95);
    *(v41 + 22) = 2080;
    v48 = v86;
    v49 = v87;
    *(v41 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v95);
    _os_log_impl(&dword_223066000, v38, v39, "Inserting item of type %s with taskId: %s,  interactionId: %s", v41, 0x20u);
    v39 = v79;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    v50 = OUTLINED_FUNCTION_13_0();
    v51 = v85;
    v39(v50, v85);
    v52 = v48;
  }

  else
  {

    v53 = OUTLINED_FUNCTION_13_0();
    v54 = v85;
    v39(v53, v85);
    (*(v16 + 8))(v20, v3);
    v43 = v3;
    v52 = v86;
    v49 = v87;
    v51 = v54;
  }

  inserted = FeatureStoreService.signpostInsertSync.unsafeMutableAddressor();
  v56 = *inserted;
  v57 = inserted[1];
  v58 = *(inserted + 16);
  v59 = v84;
  default argument 0 of static LogSignpost.begin(logger:_:)(v84, inserted, v60, v61);
  static LogSignpost.begin(logger:_:)(v59, v56, v57, v58, v92);
  v39(v59, v51);
  v62 = static JSONCoder.encode(codable:)(v91, v43, v88, v89);
  if (v63 >> 60 == 15)
  {
    v89 = v43;
    v64 = v83;
    v80(v83, v81, v51);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_223066000, v65, v66, "Could not encode the item. Skipping insertion.", v67, 2u);
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
    }

    v39(v64, v51);
  }

  else
  {
    v68 = v63;
    v69 = v62;
    v95 = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v70 = String.init<A>(describing:)();
    static FeatureStoreService.streamIdentifierFor(typeName:taskId:)(v70, v71, v93, v90);

    static accessorFor(streamIdentifier:) in AccessorProvider #1 in static FeatureStoreService.insert(streamIdentifier:interactionId:featureData:)();
    v73 = v72;
    type metadata accessor for FeatureStoreBiomeEvent();

    v89 = v69;
    outlined copy of Data._Representation(v69, v68);
    v74 = default argument 2 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v75 = default argument 3 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v76 = FeatureStoreBiomeEvent.__allocating_init(interactionId:featureData:dataVersion:timestamp:)(v52, v49, v69, v68, v74, v75);
    (*(*v73 + 112))();

    outlined consume of Data?(v89, v68);
  }

  v77 = v92;
  $defer #1 <A>() in static FeatureStoreService.insertSync<A>(taskId:interactionId:item:)();
  outlined destroy of LogSignpost(v77);
  OUTLINED_FUNCTION_8_1();
}

id FeatureStoreStreamAccessor.insert(feature:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_streamSource);
  (*((*MEMORY[0x277D85000] & *a1) + 0x78))();

  return [v3 sendEvent:a1 timestamp:?];
}

uint64_t static FeatureStoreService.streamIdentifierFor(typeName:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a4 && (a3 || a4 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    MEMORY[0x223DD3460](a3, a4);
    MEMORY[0x223DD3460](95, 0xE100000000000000);

    return a1;
  }

  else
  {
  }

  return v4;
}

void partial apply for closure #1 in static FeatureStoreService.insert<A>(taskId:interactionId:item:completion:)()
{
  static FeatureStoreService.insertSync<A>(taskId:interactionId:item:)();
}

{
  partial apply for closure #1 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)();
}

uint64_t static JSONCoder.encode(codable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v5 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v6;
}

uint64_t OUTLINED_FUNCTION_7_4()
{
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return static FeatureStoreService.insert<A>(taskId:interactionId:item:)(0, 0xE000000000000000, v4, v3, v5, v2, v1, v0);
}

uint64_t outlined init with copy of LogSignpost(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogSignpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of LogSignpost(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogSignpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined destroy of LogSignpost(uint64_t a1)
{
  v2 = type metadata accessor for LogSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000026;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_beginAccess();
}

uint64_t static FeatureStoreService.insertAwait<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = static FeatureStoreService.insertAwait<A>(interactionId:item:);

  return static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)(0, 0xE000000000000000, a1, a2, a3, a4, a5, a6);
}

uint64_t static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), 0, 0);
}

uint64_t static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = *(v0 + 56);
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  *(v8 + 48) = v7;
  *(v8 + 56) = v6;
  *(v8 + 64) = v5;
  *(v8 + 72) = v4;
  *(v8 + 80) = v1;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:);

  return MEMORY[0x2822007B8]();
}

{

  return MEMORY[0x2822009F8](static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), 0, 0);
}

{
  return (*(v0 + 8))();
}

void closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_9_1();
  v23 = v22;
  v121 = v25;
  v122 = v24;
  v27 = v26;
  v29 = v28;
  v107 = v30;
  v32 = v31;
  v34 = v33;
  v112 = a21;
  v113 = a22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  OUTLINED_FUNCTION_0();
  v118 = v36;
  v119 = v35;
  v114 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v115 = &v99[-v38];
  v116 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0();
  v120 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2();
  v117 = v42 - v41;
  OUTLINED_FUNCTION_0_0();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_11_1();
  v109 = v47;
  v110 = v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v99[-v49];
  v51 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2();
  v57 = v56 - v55;
  v61 = Logger.service.unsafeMutableAddressor(v58, v59, v60);
  v106 = v53;
  v62 = *(v53 + 16);
  v108 = v51;
  v62(v57, v61, v51);
  v63 = *(v44 + 16);
  v111 = v32;
  v105 = v63;
  v63(v50, v32, v23);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v64, v65))
  {
    OUTLINED_FUNCTION_6_1();
    v66 = swift_slowAlloc();
    v104 = v34;
    v67 = v66;
    v102 = OUTLINED_FUNCTION_14_0();
    v124[0] = v102;
    *v67 = 136315650;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v68 = String.init<A>(describing:)();
    v101 = v64;
    v69 = v68;
    v100 = v65;
    v70 = v107;
    v103 = v44 + 16;
    v71 = v29;
    v72 = v27;
    v74 = v73;
    v75 = OUTLINED_FUNCTION_10_1();
    v76(v75);
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v74, v124);
    v27 = v72;
    v29 = v71;

    *(v67 + 4) = v77;
    *(v67 + 12) = 2080;
    *(v67 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v124);
    *(v67 + 22) = 2080;
    *(v67 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v27, v124);
    v78 = v101;
    _os_log_impl(&dword_223066000, v101, v100, "Will submit insertion task of type %s with taskId: %s,  interactionId: %s", v67, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    v34 = v104;
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    v79 = OUTLINED_FUNCTION_12_1();
    v80(v79);
  }

  else
  {

    v81 = OUTLINED_FUNCTION_12_1();
    v82(v81);
    v83 = OUTLINED_FUNCTION_10_1();
    v84(v83);
    v70 = v107;
  }

  v85 = v117;
  static DispatchQoS.userInitiated.getter();
  v86 = v110;
  v105(v110, v111, v23);
  v87 = (*(v44 + 80) + 80) & ~*(v44 + 80);
  v88 = swift_allocObject();
  v89 = v23;
  v90 = v88;
  v92 = v112;
  v91 = v113;
  *(v88 + 2) = v89;
  *(v88 + 3) = v92;
  v93 = v121;
  *(v88 + 4) = v91;
  *(v88 + 5) = v93;
  *(v88 + 6) = v70;
  *(v88 + 7) = v29;
  *(v88 + 8) = v122;
  *(v88 + 9) = v27;
  (*(v44 + 32))(&v88[v87], v86);
  v95 = v118;
  v94 = v119;
  v96 = v115;
  (*(v118 + 16))(v115, v34, v119);
  v97 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v98 = swift_allocObject();
  (*(v95 + 32))(v98 + v97, v96, v94);

  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v85, partial apply for closure #1 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), v90, partial apply for implicit closure #5 in implicit closure #4 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), v98);

  (*(v120 + 8))(v85, v116);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_22306B450()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{

  return static FeatureStoreService.insert<A>(taskId:interactionId:item:)(a1, v7, v6, v5, v2, v4, v3, v1);
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t FeatureStoreBiomeEvent.serialize()()
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23_0();
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_2();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  type metadata accessor for FeatureStoreBiomeEvent();
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent(&lazy protocol witness table cache variable for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent, &protocol conformance descriptor for FeatureStoreBiomeEvent);
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  return OUTLINED_FUNCTION_16();
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

void $defer #1 <A>() in static FeatureStoreService.insertSync<A>(taskId:interactionId:item:)()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0;
  v3 = v2;
  v40 = v4;
  v6 = v5;
  v39 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  LogSignpost.end()();
  v26 = Logger.service.unsafeMutableAddressor(v23, v24, v25);
  (*(v18 + 16))(v22, v26, v16);
  (*(v11 + 16))(v15, v9, v1);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_6_1();
    v37 = v28;
    v29 = swift_slowAlloc();
    v41 = OUTLINED_FUNCTION_14_0();
    *v29 = 136315650;
    swift_getDynamicType();
    swift_getMetatypeMetadata();
    v36 = v3;
    v30 = String.init<A>(describing:)();
    v38 = v16;
    v32 = v31;
    (*(v11 + 8))(v15, v1);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v41);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v6, &v41);
    *(v29 + 22) = 2080;
    *(v29 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v36, &v41);
    _os_log_impl(&dword_223066000, v27, v37, "Inserted item of type %s with taskId: %s,  interactionId: %s", v29, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    (*(v18 + 8))(v22, v38);
  }

  else
  {

    v34 = OUTLINED_FUNCTION_7_2();
    v35(v34);
    (*(v11 + 8))(v15, v1);
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

double default argument 3 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)()
{
  v0 = type metadata accessor for Date();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v8 = v7;
  (*(v2 + 8))(v6, v0);
  return v8;
}

id FeatureStoreBiomeEvent.__allocating_init(interactionId:featureData:dataVersion:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, double a6)
{
  v8 = a5;
  v13 = objc_allocWithZone(v6);
  return FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)(a1, a2, a3, a4, v8, a6);
}

id FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21();
  v70 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v68 = &v65 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v65 - v25;
  v27 = &v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId];
  *v27 = a1;
  v27[1] = a2;
  *&v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion] = a5;
  v28 = &v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData];
  *v28 = a3;
  v28[1] = a4;
  *&v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_timestamp] = a6;
  if (a5)
  {
    v29 = OUTLINED_FUNCTION_15();
    outlined copy of Data._Representation(v29, v30);
    v31 = Logger.accessor.unsafeMutableAddressor();
    v32 = *(v16 + 16);
    v66 = v31;
    v67 = v32;
    v69 = v14;
    (v32)(v24);
    v33 = OUTLINED_FUNCTION_15();
    outlined copy of Data._Representation(v33, v34);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      v38 = v37;
      v39 = 0;
      switch(a4 >> 62)
      {
        case 1uLL:
          LODWORD(v39) = HIDWORD(a3) - a3;
          if (__OFSUB__(HIDWORD(a3), a3))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            JUMPOUT(0x22306C3F4);
          }

          v39 = v39;
LABEL_12:
          *(v37 + 4) = v39;
          outlined consume of Data._Representation(a3, a4);
          _os_log_impl(&dword_223066000, v35, v36, "Data size in bytes: %ld", v38, 0xCu);
          OUTLINED_FUNCTION_9();
          MEMORY[0x223DD4390]();
          break;
        case 2uLL:
          v47 = *(a3 + 16);
          v46 = *(a3 + 24);
          v48 = __OFSUB__(v46, v47);
          v39 = v46 - v47;
          if (!v48)
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        case 3uLL:
          goto LABEL_12;
        default:
          v39 = BYTE6(a4);
          goto LABEL_12;
      }
    }

    else
    {
      v44 = OUTLINED_FUNCTION_15();
      outlined consume of Data._Representation(v44, v45);
    }

    v49 = *(v16 + 8);
    v50 = v69;
    v49(v24, v69);
    v51 = OUTLINED_FUNCTION_15();
    v52 = MEMORY[0x223DD2FD0](v51);
    if (static FeatureStoreBiomeEvent.maximumSizeBeforeCompression.getter() >= v52)
    {
      v67(v70, v66, v50);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_223066000, v57, v58, "No compression is needed.", v59, 2u);
        OUTLINED_FUNCTION_9();
        MEMORY[0x223DD4390]();
      }

      v49(v70, v50);
      v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy] = 0;
    }

    else
    {
      v53 = v68;
      v67(v68, v66, v50);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_223066000, v54, v55, "Compression is needed.", v56, 2u);
        v50 = v69;
        OUTLINED_FUNCTION_9();
        MEMORY[0x223DD4390]();
      }

      v49(v53, v50);
      v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy] = 1;
    }
  }

  else
  {
    v7[OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy] = 0;
    outlined copy of Data._Representation(a3, a4);
    v40 = Logger.accessor.unsafeMutableAddressor();
    (*(v16 + 16))(v26, v40, v14);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_223066000, v41, v42, "No compression is needed", v43, 2u);
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
    }

    (*(v16 + 8))(v26, v14);
  }

  v60 = type metadata accessor for FeatureStoreBiomeEvent();
  v71.receiver = v7;
  v71.super_class = v60;
  v61 = objc_msgSendSuper2(&v71, sel_init);
  v62 = OUTLINED_FUNCTION_15();
  outlined consume of Data._Representation(v62, v63);
  return v61;
}

unint64_t OUTLINED_FUNCTION_19_0()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;
  v5 = *(v3 - 224);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v1, (v3 - 104));
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1)
{

  return Logger.logObject.getter();
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

uint64_t static FeatureStoreBiomeEvent.maximumSizeBeforeCompression.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = MEMORY[0x223DD33D0](0xD000000000000028, 0x8000000223093AB0);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
    v4 = [v0 standardUserDefaults];
    v5 = MEMORY[0x223DD33D0](0xD000000000000028, 0x8000000223093AB0);
    v6 = [v4 integerForKey_];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
    return 700000;
  }

  return v6;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_task_alloc();
}

void FeatureStoreBiomeEvent.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_26();
  v84 = v2;
  v3 = v1;
  v5 = v4;
  v88 = *MEMORY[0x277D85DE8];
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v82 = v7;
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21();
  v81 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - v10;
  v12 = type metadata accessor for LogSignpost(0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore0dE10BiomeEventC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore0dE10BiomeEventC10CodingKeysOGMR);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v86) = 0;
  v22 = v84;
  v23 = KeyedEncodingContainer.encode(_:forKey:)();
  if (v22)
  {
    (*(v18 + 8))(v21, v16);
  }

  else
  {
    v80 = v11;
    v25 = v82;
    v24 = v83;
    v84 = v15;
    v26 = v18;
    (*((*MEMORY[0x277D85000] & *v3) + 0x90))(v23);
    LOBYTE(v86) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy;
    LOBYTE(v86) = *(v3 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy);
    v85 = 3;
    lazy protocol witness table accessor for type CompressionPolicy and conformance CompressionPolicy();
    v28 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    v78 = v21;
    v79 = v16;
    v31 = *(v3 + v27);
    v32 = 0;
    v33 = v3;
    v34 = v80;
    switch(v31)
    {
      case 1:
        goto LABEL_8;
      case 2:
        v32 = 1;
        goto LABEL_8;
      case 3:
        v32 = 2;
        goto LABEL_8;
      case 4:
        v32 = 3;
LABEL_8:
        default argument 0 of static LogSignpost.begin(logger:_:)(v80, v28, v29, v30);
        static LogSignpost.begin(logger:_:)(v34, "BiomeEncodeCompress", 19, 2u, v84);
        v39 = *(v25 + 8);
        v80 = (v25 + 8);
        v77 = v39;
        v39(v34, v24);
        v40 = v33;
        v41 = (v33 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v86 = 0;
        v43 = [(objc_class *)isa compressedDataUsingAlgorithm:v32 error:&v86];

        v44 = v86;
        if (v43)
        {
          v76 = v41;
          v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v46;

          v47 = Logger.accessor.unsafeMutableAddressor();
          v48 = v81;
          (*(v25 + 16))(v81, v47, v24);
          v49 = v40;
          v35 = v45;
          v50 = v49;
          v51 = OUTLINED_FUNCTION_19();
          outlined copy of Data._Representation(v51, v52);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v53, v54))
          {
            LODWORD(v82) = v54;
            v55 = swift_slowAlloc();
            *v55 = 134218240;
            v56 = *v76;
            v57 = v76[1];
            v58 = v84;
            v59 = v55;
            v60 = 0;
            switch(v57 >> 62)
            {
              case 1uLL:
                LODWORD(v60) = HIDWORD(v56) - v56;
                if (__OFSUB__(HIDWORD(v56), v56))
                {
                  __break(1u);
LABEL_27:
                  __break(1u);
LABEL_28:
                  __break(1u);
LABEL_29:
                  __break(1u);
                }

                v60 = v60;
LABEL_17:
                *(v55 + 4) = v60;

                *(v59 + 12) = 2048;
                v68 = 0;
                switch(v36 >> 62)
                {
                  case 1uLL:
                    LODWORD(v68) = HIDWORD(v35) - v35;
                    if (__OFSUB__(HIDWORD(v35), v35))
                    {
                      goto LABEL_28;
                    }

                    v68 = v68;
LABEL_22:
                    *(v59 + 14) = v68;
                    v71 = OUTLINED_FUNCTION_19();
                    outlined consume of Data._Representation(v71, v72);
                    _os_log_impl(&dword_223066000, v53, v82, "Compressed data of size %ld to a data of size %ld", v59, 0x16u);
                    OUTLINED_FUNCTION_9();
                    MEMORY[0x223DD4390]();
                    break;
                  case 2uLL:
                    v70 = v35[2];
                    v69 = v35[3];
                    v67 = __OFSUB__(v69, v70);
                    v68 = v69 - v70;
                    if (!v67)
                    {
                      goto LABEL_22;
                    }

                    goto LABEL_29;
                  case 3uLL:
                    goto LABEL_22;
                  default:
                    v68 = BYTE6(v36);
                    goto LABEL_22;
                }

                break;
              case 2uLL:
                v66 = v56 + 16;
                v65 = *(v56 + 16);
                v64 = *(v66 + 8);
                v67 = __OFSUB__(v64, v65);
                v60 = v64 - v65;
                if (!v67)
                {
                  goto LABEL_17;
                }

                goto LABEL_27;
              case 3uLL:
                goto LABEL_17;
              default:
                v60 = BYTE6(v57);
                goto LABEL_17;
            }
          }

          else
          {
            v62 = OUTLINED_FUNCTION_19();
            outlined consume of Data._Representation(v62, v63);

            v53 = v50;
            v58 = v84;
          }

          v77(v48, v83);
          LogSignpost.end()();
          outlined destroy of LogSignpost(v58);
LABEL_24:
          v86 = v35;
          v87 = v36;
          v85 = 1;
          lazy protocol witness table accessor for type Data and conformance Data();
          v74 = v78;
          v73 = v79;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          outlined consume of Data._Representation(v86, v87);
          (*(v26 + 8))(v74, v73);
        }

        else
        {
          v61 = v44;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          outlined destroy of LogSignpost(v84);
          (*(v26 + 8))(v78, v79);
        }

        break;
      default:
        v35 = *(v33 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData);
        v36 = *(v33 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData + 8);
        v37 = OUTLINED_FUNCTION_19();
        outlined copy of Data._Representation(v37, v38);
        goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_24();
}

void OUTLINED_FUNCTION_25_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys);
  }

  return result;
}

uint64_t FeatureStoreBiomeEvent.dataVersion.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion;
  OUTLINED_FUNCTION_27_0(a1);
  return *(v1 + v2);
}

uint64_t lazy protocol witness table accessor for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeatureStoreBiomeEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t FeatureStoreBiomeEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7463617265746E69;
  switch(a1)
  {
    case 1:
      result = 0x65727574616566;
      break;
    case 2:
      result = 0x7372655661746164;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy and conformance CompressionPolicy()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy;
  if (!lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy;
  if (!lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy;
  if (!lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy and conformance CompressionPolicy);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureStoreBiomeEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x22306D408);
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

uint64_t getEnumTagSinglePayload for FeatureStoreBiomeEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

double FeatureStoreBiomeEvent.timestamp.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_timestamp;
  OUTLINED_FUNCTION_27_0(a1);
  return *(v1 + v2);
}

void CompressionPolicy.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_26();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO14ZlibCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO14ZlibCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v76 = v32;
  v77 = v31;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11();
  v75 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO14LzmaCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO14LzmaCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v73 = v36;
  v74 = v35;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_11();
  v72 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO13Lz4CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO13Lz4CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v70 = v40;
  v71 = v39;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_11();
  v69 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO15LzfseCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO15LzfseCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v67 = v44;
  v68 = v43;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_11();
  v66 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO23DoNotCompressCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO23DoNotCompressCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v64 = v48;
  v65 = v47;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v49);
  v51 = &v63 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedEncodingContainerVy12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v54 = v53;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v55);
  v57 = &v63 - v56;
  v58 = *v26;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v59 = (v54 + 8);
  switch(v58)
  {
    case 1:
      a13 = 1;
      lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys();
      v60 = v66;
      OUTLINED_FUNCTION_8(&unk_283669530, &a13);
      v62 = v67;
      v61 = v68;
      goto LABEL_7;
    case 2:
      a14 = 2;
      lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys();
      v60 = v69;
      OUTLINED_FUNCTION_8(&unk_283669550, &a14);
      v62 = v70;
      v61 = v71;
      goto LABEL_7;
    case 3:
      a15 = 3;
      lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys();
      v60 = v72;
      OUTLINED_FUNCTION_8(&unk_283669570, &a15);
      v62 = v73;
      v61 = v74;
      goto LABEL_7;
    case 4:
      a16 = 4;
      lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys();
      v60 = v75;
      OUTLINED_FUNCTION_8(&unk_283669590, &a16);
      v62 = v76;
      v61 = v77;
LABEL_7:
      (*(v62 + 8))(v60, v61);
      break;
    default:
      lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v64 + 8))(v51, v65);
      break;
  }

  (*v59)(v57, v52);
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys);
  }

  return result;
}

uint64_t CompressionPolicy.CodingKeys.stringValue.getter(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_17_0();
  switch(v3)
  {
    case 1:
      result = 0x6573667A6CLL;
      break;
    case 2:
      result = 3439212;
      break;
    case 3:
      result = 1634564716;
      break;
    case 4:
      result = 1651076218;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompressionPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x22306DC84);
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

uint64_t getEnumTagSinglePayload for CompressionPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

__n128 OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a27, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a28)
{
  *(v29 - 144) = a1;
  *(v29 - 128) = a1;
  result = a28;
  *v28 = a28.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return static FeatureStoreService.insert<A>(interactionId:item:)(v4, v3, v5, v2, v1, v0);
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t interactionForInjection<A>(taskId:interactionId:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v110 = a4;
  v107 = a3;
  v118 = a2;
  v115 = a1;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0_0();
  v116 = v13;
  v117 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v114 = v14 - v15;
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v16);
  v112 = &v103 - v17;
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v18);
  v109 = &v103 - v19;
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v103 - v21;
  OUTLINED_FUNCTION_0_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  v106 = (v26 - v27);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v28);
  v108 = &v103 - v29;
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x28223BE20](v30);
  v111 = &v103 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_4_1();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v103 - v37;
  type metadata accessor for FeatureStoreService();
  v39 = static FeatureStoreService.interactionIdForInjection()();
  if (v40)
  {
    v41 = v40;
    v103 = v24;
    v104 = v22;
    v113 = a8;
    v42 = v39;
    type metadata accessor for StreamQuery(0);
    v43 = a5;
    v44 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v44);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_223092B00;
    v105 = v42;
    *(v45 + 32) = v42;
    *(v45 + 40) = v41;

    v46 = a6;
    v47 = a7;
    v48 = v118;

    v49 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:taskId:)(v38, v35, v45, v115, v48);
    v51 = static FeatureStoreService.retrieve<A>(query:)(v49, v43, v46, v47);
    v114 = v46;

    v120[0] = v51;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v52 = Collection.isEmpty.getter();
    a5 = v43;
    if (v52)
    {

      Logger.service.unsafeMutableAddressor(v53, v54, v55);
      OUTLINED_FUNCTION_28();
      v56 = v112;
      v57(v112);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v119 = v43;
        v120[0] = v61;
        *v60 = 136315394;
        swift_getMetatypeMetadata();
        v62 = String.init<A>(describing:)();
        v64 = v63;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v120);

        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_32();
        *(v60 + 14) = v64;
        OUTLINED_FUNCTION_30(&dword_223066000, v65, v66, "No injection available for type:%s injectInteractionId:%s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_1();

        (*(v46 + 8))(v112, v43);
LABEL_7:
        v50 = 1;
        a8 = v113;
        return __swift_storeEnumTagSinglePayload(a8, v50, 1, a5);
      }

LABEL_15:

      (*(v46 + 8))(v56, v43);
      goto LABEL_7;
    }

    v68 = v41;
    v69 = static InjectionCursor.getNextAndIncrement<A>(forType:taskId:interactionId:)(v43);
    if (v69 >= MEMORY[0x223DD3510](v51, v43))
    {

      Logger.service.unsafeMutableAddressor(v91, v92, v93);
      OUTLINED_FUNCTION_28();
      v56 = v109;
      v94(v109);

      v58 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v119 = v43;
        v120[0] = v97;
        *v96 = 136315394;
        swift_getMetatypeMetadata();
        v98 = String.init<A>(describing:)();
        v100 = v99;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v120);

        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_32();
        *(v96 + 14) = v100;
        OUTLINED_FUNCTION_30(&dword_223066000, v101, v102, "Used up all injection values for type: %s injectInteractionId:%s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_1();

        (*(v46 + 8))(v109, v43);
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    v70 = v111;
    Array.subscript.getter();

    v74 = Logger.service.unsafeMutableAddressor(v71, v72, v73);
    v75 = v116;
    (*(v116 + 16))(v104, v74, v117);
    v76 = v103;
    v77 = v108;
    v115 = *(v103 + 16);
    v115(v108, v70, v43);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();

    LODWORD(v118) = v79;
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v119 = v43;
      v120[0] = v114;
      *v80 = 136316162;
      swift_getMetatypeMetadata();
      v81 = String.init<A>(describing:)();
      v83 = v82;
      v84 = v77;
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v120);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v68, v120);
      OUTLINED_FUNCTION_32();
      *(v80 + 14) = v83;
      *(v80 + 22) = 2080;
      *(v80 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v110, v120);
      *(v80 + 32) = 2080;
      v115(v106, v84, v43);
      v86 = String.init<A>(describing:)();
      v88 = v87;
      v89 = v103;
      (*(v103 + 8))(v84, v43);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v120);
      OUTLINED_FUNCTION_32();
      *(v80 + 34) = v86;
      *(v80 + 42) = 2048;
      *(v80 + 44) = v69;
      _os_log_impl(&dword_223066000, v78, v118, "=== Injecting Value ===\ntype:%s\ninjectInteractionId:%s\ninteractionId:%s\nvalue: %s\nvalueIndex: %ld", v80, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_11_2();

      (*(v75 + 8))(v104, v117);
      v90 = v89;
    }

    else
    {

      (*(v76 + 8))(v77, v43);
      (*(v75 + 8))(v104, v117);
      v90 = v76;
    }

    a8 = v113;
    (*(v90 + 32))(v113, v111, v43);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a8, v50, 1, a5);
}

uint64_t static FeatureStoreService.interactionIdForInjection()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000013, 0x8000000223093ED0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = MEMORY[0x223DD33D0](0xD00000000000001CLL, 0x8000000223093EF0);
  v4 = [v2 stringForKey_];

  if (!v4)
  {

    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x223DD33D0](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t runSimulatableTask<A, B>(interactionId:input:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a4;
  v32 = a8;
  v30 = a5;
  v33 = a9;
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_0();
  v27 = v18;
  v28 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v26 - v19;
  v21 = type metadata accessor for FeatureStoreService();
  v29 = a3;
  v22 = v32;
  v32 = v21;
  static FeatureStoreService.insert<A>(interactionId:item:)(a1, a2, a3, a6, v22, a10);
  interactionForInjection<A>(taskId:interactionId:)(0, 0xE000000000000000, a1, a2, a7, a11, a12, v20);

  if (__swift_getEnumTagSinglePayload(v20, 1, a7) != 1)
  {
    v23 = v33;
    (*(*(a7 - 8) + 32))(v33, v20, a7);
    return static FeatureStoreService.insert<A>(interactionId:item:)(a1, a2, v23, a7, a11, a12);
  }

  v23 = v33;
  v24 = v34;
  v31(v29);
  if (!v24)
  {
    if (__swift_getEnumTagSinglePayload(v20, 1, a7) != 1)
    {
      (*(v27 + 8))(v20, v28);
    }

    return static FeatureStoreService.insert<A>(interactionId:item:)(a1, a2, v23, a7, a11, a12);
  }

  result = __swift_getEnumTagSinglePayload(v20, 1, a7);
  if (result != 1)
  {
    return (*(v27 + 8))(v20, v28);
  }

  return result;
}

uint64_t static FeatureStoreService.insertAwait<A>(interactionId:item:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = static FeatureStoreService.insertAwait<A>(interactionId:item:);

  return MEMORY[0x2822007B8]();
}

{

  return MEMORY[0x2822009F8](static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), 0, 0);
}

uint64_t static FeatureStoreService.runReplayableOperation<A, B>(interactionId:input:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_6_2();
  *(v11 + 96) = a10;
  *(v11 + 104) = a11;
  *(v11 + 80) = a9;
  OUTLINED_FUNCTION_5_1(v12, v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_0_0();
  *(v11 + 112) = v20;
  *(v11 + 120) = OUTLINED_FUNCTION_25_0();
  v21 = type metadata accessor for Optional();
  *(v11 + 128) = v21;
  OUTLINED_FUNCTION_17(v21);
  *(v11 + 136) = v22;
  *(v11 + 144) = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13_1();
  return OUTLINED_FUNCTION_31(v23, v24, v25);
}

void OUTLINED_FUNCTION_23_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t static FeatureStoreService.runReplayableOperation<A, B>(interactionId:input:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_27_1();
  *(v15 + 152) = OUTLINED_FUNCTION_8_2();
  static FeatureStoreService.insert<A>(interactionId:item:)(v14, v21, v20, v19, v17, v13);
  v22 = OUTLINED_FUNCTION_4_3();
  interactionForInjection<A>(taskId:interactionId:)(v22, v23, v24, v25, v18, v16, a9, v26);

  OUTLINED_FUNCTION_22_0();
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_26_0();
    v29(v28);
    OUTLINED_FUNCTION_0_3();
    v51 = v30;
    v31 = swift_task_alloc();
    *(v15 + 160) = v31;
    *v31 = v15;
    OUTLINED_FUNCTION_14_1(v31);
    OUTLINED_FUNCTION_7_3();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, v51, a10, a11, a12);
  }

  else
  {
    v41 = OUTLINED_FUNCTION_1_4();
    v42(v41, v12, v18);
    OUTLINED_FUNCTION_18_0();

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_3();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_27_1();
  v14 = OUTLINED_FUNCTION_1_4();
  v15(v14, v12, v13);
  OUTLINED_FUNCTION_18_0();

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_32()
{
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = result;
  v8[3] = a2;
  return result;
}

void runSimulatableTask<A, B>(taskId:interactionId:input:task:)()
{
  v1 = v0[3];
  (*(v0[16] + 32))(v0[2], v0[17], v0[11]);
  OUTLINED_FUNCTION_10_2(v1);

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_29();

  __asm { BRAA            X1, X16 }
}

{
  v20 = v0[14];
  v21 = v0[15];
  v1 = v0[12];
  v19 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v0[21] = type metadata accessor for FeatureStoreService();
  v7 = OUTLINED_FUNCTION_21_0();
  static FeatureStoreService.insert<A>(taskId:interactionId:item:)(v7, v8, v6, v5, v4, v3, v1, v19);
  v9 = OUTLINED_FUNCTION_21_0();
  interactionForInjection<A>(taskId:interactionId:)(v9, v10, v6, v5, v2, v20, v21, v11);
  OUTLINED_FUNCTION_22_0();
  if (!v12)
  {
    v16 = v0[3];
    (*(v0[16] + 32))(v0[2], v0[20], v0[11]);
    OUTLINED_FUNCTION_10_2(v16);

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_29();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[19] + 8))(v0[20], v0[18]);
  OUTLINED_FUNCTION_0_3();
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = runSimulatableTask<A, B>(taskId:interactionId:input:task:);
  OUTLINED_FUNCTION_29();

  __asm { BRAA            X2, X16 }
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return type metadata accessor for Logger();
}

uint64_t sub_22306F40C()
{

  OUTLINED_FUNCTION_2_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22306F448()
{

  OUTLINED_FUNCTION_2_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22306F484()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22306F4C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22306F558()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_22306F628()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for InteractionWrapper(255, v1, v8, v9);
  OUTLINED_FUNCTION_15_0();
  v10 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v13 = (v7 + *(v11 + 80) + 8) & ~*(v11 + 80);
  (*(v4 + 8))(v0 + v5, v2);

  (*(v12 + 8))(v0 + v13, v10);
  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x223DD39B0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t sub_22306F798()
{
  v1 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22306F854()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22306F88C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22306F8CC()
{

  OUTLINED_FUNCTION_3_5();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22306F900()
{
  OUTLINED_FUNCTION_3_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22306F96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignposter();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_22306F9F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignposter();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22306FA74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22306FAB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_223072330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *FSFStringFromSourceType(uint64_t a1)
{
  if (a1)
  {
    return @"SELF";
  }

  else
  {
    return @"FEATURE_STORE";
  }
}

uint64_t FSFSourceTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"FEATURE_STORE"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"SELF"])
  {
    v2 = 1;
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

void FSFSwitchToMobile()
{
  v0 = geteuid();
  v1 = getpwnam("mobile");
  if (v1)
  {
    pw_uid = v1->pw_uid;
  }

  else
  {
    pw_uid = 501;
  }

  if (pw_uid != v0)
  {
    if (seteuid(pw_uid))
    {
      NSLog(&cfstr_SeteuidToMobil.isa);
    }
  }
}

uint64_t AceObjectFeatureWrapper.serialize()()
{
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  v10 = [*(v0 + 16) dictionary];
  if (!v10)
  {
    v16 = Logger.accessor.unsafeMutableAddressor();
    (*(v3 + 16))(v9, v16, v1);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_2(&dword_223066000, v19, v20, "AceObject dictionary is nil.");
      OUTLINED_FUNCTION_1();
    }

    (*(v3 + 8))(v9, v1);
    return 0;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v33[0] = 0;
  v13 = [v12 dataWithJSONObject:v11 options:0 error:v33];
  v14 = v33[0];
  if (!v13)
  {
    v21 = v14;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = Logger.accessor.unsafeMutableAddressor();
    (*(v3 + 16))(v7, v23, v1);
    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v22;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_223066000, v25, v26, "Serialization failed. Error: %@", v27, 0xCu);
      outlined destroy of NSObject?(v28);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }

    (*(v3 + 8))(v7, v1);
    return 0;
  }

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v15;
}

Class @objc AceObjectFeatureWrapper.serialize()(uint64_t a1)
{

  v1 = AceObjectFeatureWrapper.serialize()();
  v3 = v2;

  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v1, v3);
  }

  return isa;
}

uint64_t static AceObjectFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a3;
  v46[4] = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v44[-v16];
  v18 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v46[0] = 0;
  v20 = [v18 JSONObjectWithData:isa options:0 error:v46];

  if (v20)
  {
    v21 = v46[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if ((swift_dynamicCast() & 1) != 0 && (v22 = *(v6 + 144), v23 = objc_allocWithZone(swift_getObjCClassFromMetadata()), v24 = Dictionary._bridgeToObjectiveC()().super.isa, , v25 = [v23 initWithDictionary_], v24, v25))
    {
      type metadata accessor for AceObjectFeatureWrapper(0, v22, v26, v27);

      AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a4, a5, v45, v25);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      v29 = Logger.accessor.unsafeMutableAddressor();
      (*(v11 + 16))(v17, v29, v9);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_223066000, v30, v31, "Could not create AceObject.", v32, 2u);
        OUTLINED_FUNCTION_1();
      }

      (*(v11 + 8))(v17, v9);
    }
  }

  else
  {
    v33 = v46[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v35 = Logger.accessor.unsafeMutableAddressor();
    (*(v11 + 16))(v15, v35, v9);
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = v9;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v34;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_223066000, v37, v38, "Deserialization failed. Error: %@", v40, 0xCu);
      outlined destroy of NSObject?(v41);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }

    (*(v11 + 8))(v15, v39);
  }

  return 0;
}

id @objc static AceObjectFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getObjCClassMetadata();
  v15 = static AceObjectFeatureWrapper.deserialize(_:dataVersion:interactionId:)(v9, v11, a4, v12, v14);

  outlined consume of Data._Representation(v9, v11);

  return v15;
}

Swift::String_optional __swiftcall AceObjectFeatureWrapper.json()()
{
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v9 = (*(*v0 + 120))(v8);
  if (v10 >> 60 == 15)
  {
    v11 = Logger.accessor.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v11, v1);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_2(&dword_223066000, v14, v15, "Json fetch failed.");
      OUTLINED_FUNCTION_1();
    }

    (*(v3 + 8))(v6, v1);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = v9;
    v19 = v10;
    static String.Encoding.utf8.getter();
    v16 = String.init(data:encoding:)();
    v17 = v20;
    outlined consume of Data?(v18, v19);
  }

  v21 = v16;
  v22 = v17;
  result.value._object = v22;
  result.value._countAndFlagsBits = v21;
  return result;
}

id @objc AceObjectFeatureWrapper.json()(uint64_t a1)
{

  v1 = AceObjectFeatureWrapper.json()();

  if (v1.value._object)
  {
    v2 = MEMORY[0x223DD33D0](v1.value._countAndFlagsBits, v1.value._object);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t AceObjectFeatureWrapper.__deallocating_deinit()
{
  v0 = BaseFeatureWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 44, 7);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

id @objc BaseFeatureWrapper.interactionId.getter(uint64_t a1)
{
  v1 = (a1 + *(*a1 + 96));
  v2 = *v1;
  v3 = v1[1];

  v4 = MEMORY[0x223DD33D0](v2, v3);

  return v4;
}

uint64_t BaseFeatureWrapper.interactionId.getter()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 96));

  return v2;
}

uint64_t BaseFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  BaseFeatureWrapper.init(interactionId:dataVersion:feature:)(a1, a2);
  return v6;
}

uint64_t BaseFeatureWrapper.init(interactionId:dataVersion:feature:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 96));
  *v3 = a1;
  v3[1] = a2;
  OUTLINED_FUNCTION_0_1();
  *(v2 + *(v4 + 104)) = v5;
  OUTLINED_FUNCTION_0_1();
  (*(*(*(v7 + 80) - 8) + 32))(v2 + *(v6 + 88), v8);
  return v2;
}

id @objc static BaseFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a3;
  v7 = a5;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined consume of Data._Representation(v8, v10);

  return 0;
}

Swift::String_optional __swiftcall BaseFeatureWrapper.json()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t BaseFeatureWrapper.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  OUTLINED_FUNCTION_0_1();

  return v0;
}

uint64_t BaseFeatureWrapper.__deallocating_deinit()
{
  BaseFeatureWrapper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata completion function for BaseFeatureWrapper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

NSDataCompressionAlgorithm_optional __swiftcall CompressionPolicy.compressionAlgorithm()()
{
  v1 = *v0;
  v2 = 1;
  switch(*v0)
  {
    case 1:
      v1 = NSDataCompressionAlgorithmLZFSE;
      v2 = 0;
      break;
    case 2:
      v2 = 0;
      v1 = NSDataCompressionAlgorithmLZ4;
      break;
    case 3:
      v2 = 0;
      v1 = NSDataCompressionAlgorithmLZMA;
      break;
    case 4:
      v2 = 0;
      v1 = NSDataCompressionAlgorithmZlib;
      break;
    default:
      break;
  }

  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t CompressionPolicy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_17_0();
  v7 = a1 == v5 && a2 == v6;
  if (v7 || (OUTLINED_FUNCTION_10(v5, v6) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v9 = a1 == 0x6573667A6CLL && a2 == 0xE500000000000000;
    if (v9 || (OUTLINED_FUNCTION_10(0x6573667A6CLL, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = a1 == 3439212 && a2 == 0xE300000000000000;
      if (v10 || (OUTLINED_FUNCTION_10(3439212, 0xE300000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = a1 == 1634564716 && a2 == 0xE400000000000000;
        if (v11 || (OUTLINED_FUNCTION_10(1634564716, 0xE400000000000000) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1651076218 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_10(1651076218, 0xE400000000000000);

          if (v13)
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

Swift::Int CompressionPolicy.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DD3B40](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompressionPolicy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = CompressionPolicy.CodingKeys.init(stringValue:)(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.CodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.CodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.DoNotCompressCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.DoNotCompressCodingKeys()
{
  lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompressionPolicy.Lz4CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = CompressionPolicy.Lz4CodingKeys.init(stringValue:)(a1);
  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.Lz4CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys();
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v1);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.Lz4CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys();
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.LzfseCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys();
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v1);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.LzfseCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys();
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.LzmaCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys();
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v1);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.LzmaCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys();
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompressionPolicy.ZlibCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys();
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v1);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompressionPolicy.ZlibCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys();
  v1 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v1);
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys;
  if (!lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys);
  }

  return result;
}

Swift::Int CompressionPolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DD3B40](v1);
  return Hasher._finalize()();
}

void CompressionPolicy.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_26();
  a25 = v28;
  a26 = v29;
  v100 = v26;
  v31 = v30;
  v96 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO14ZlibCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO14ZlibCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v93 = v33;
  v94 = v34;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v99 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO14LzmaCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO14LzmaCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v91 = v37;
  v92 = v38;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_11();
  v98 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO13Lz4CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO13Lz4CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v89 = v42;
  v90 = v41;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_11();
  v95 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO15LzfseCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO15LzfseCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v87 = v46;
  v88 = v45;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v47);
  v49 = &v81 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO23DoNotCompressCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO23DoNotCompressCodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v86 = v51;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_23_0();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLOGMR);
  OUTLINED_FUNCTION_0();
  v97 = v54;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v55);
  v57 = &v81 - v56;
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  lazy protocol witness table accessor for type CompressionPolicy.CodingKeys and conformance CompressionPolicy.CodingKeys();
  v58 = v100;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v58)
  {
    goto LABEL_10;
  }

  v84 = v50;
  v85 = v27;
  v100 = v49;
  v59 = v98;
  v60 = v99;
  v61 = v57;
  v62 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLO_Tt1g5(v62, 0);
  if (v64 == v65 >> 1)
  {
    v67 = v97;
LABEL_9:
    v76 = type metadata accessor for DecodingError();
    swift_allocError();
    v78 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v78 = &type metadata for CompressionPolicy;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v61, v53);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v31);
LABEL_11:
    OUTLINED_FUNCTION_24();
    return;
  }

  if (v64 < (v65 >> 1))
  {
    v82 = *(v63 + v64);
    v68 = specialized ArraySlice.subscript.getter(v64 + 1, v65 >> 1, started, v63, v64, v65);
    v70 = v69;
    v72 = v71;
    swift_unknownObjectRelease();
    v83 = v68;
    if (v70 == v72 >> 1)
    {
      v73 = v96;
      v74 = v97;
      switch(v82)
      {
        case 1:
          a13 = 1;
          lazy protocol witness table accessor for type CompressionPolicy.LzfseCodingKeys and conformance CompressionPolicy.LzfseCodingKeys();
          v59 = v100;
          OUTLINED_FUNCTION_4(&unk_283669530, &a13);
          swift_unknownObjectRelease();
          v80 = v87;
          v79 = v88;
          goto LABEL_16;
        case 2:
          a14 = 2;
          lazy protocol witness table accessor for type CompressionPolicy.Lz4CodingKeys and conformance CompressionPolicy.Lz4CodingKeys();
          v59 = v95;
          OUTLINED_FUNCTION_4(&unk_283669550, &a14);
          swift_unknownObjectRelease();
          v80 = v89;
          v79 = v90;
          goto LABEL_16;
        case 3:
          a15 = 3;
          lazy protocol witness table accessor for type CompressionPolicy.LzmaCodingKeys and conformance CompressionPolicy.LzmaCodingKeys();
          OUTLINED_FUNCTION_4(&unk_283669570, &a15);
          swift_unknownObjectRelease();
          v79 = v91;
          v80 = v92;
LABEL_16:
          (*(v80 + 8))(v59, v79);
          break;
        case 4:
          a16 = 4;
          lazy protocol witness table accessor for type CompressionPolicy.ZlibCodingKeys and conformance CompressionPolicy.ZlibCodingKeys();
          v68 = v57;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          (*(v94 + 8))(v60, v93);
          break;
        default:
          a12 = 0;
          lazy protocol witness table accessor for type CompressionPolicy.DoNotCompressCodingKeys and conformance CompressionPolicy.DoNotCompressCodingKeys();
          v75 = v85;
          OUTLINED_FUNCTION_4(&unk_283669510, &a12);
          swift_unknownObjectRelease();
          (*(v86 + 8))(v75, v84);
          break;
      }

      (*(v74 + 8))(v68, v53);
      *v73 = v82;
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_11;
    }

    v67 = v97;
    v61 = v57;
    goto LABEL_9;
  }

  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompressionPolicy.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x223DD3B40](v2);
  return Hasher._finalize()();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t FeatureStoreBiomeEvent.featureData.getter()
{
  v0 = OUTLINED_FUNCTION_12_0();
  outlined copy of Data._Representation(v0, v1);
  return OUTLINED_FUNCTION_12_0();
}

uint64_t FeatureStoreBiomeEvent.timestamp.setter(double a1)
{
  v3 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_timestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FeatureStoreBiomeEvent.dataVersion.setter(int a1)
{
  v3 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for FeatureStoreBiomeEvent.dataVersion : FeatureStoreBiomeEvent@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t static FeatureStoreBiomeEvent.event(with:dataVersion:)(uint64_t a1, uint64_t a2, int a3)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23_0();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent(&lazy protocol witness table cache variable for type FeatureStoreBiomeEvent and conformance FeatureStoreBiomeEvent, &protocol conformance descriptor for FeatureStoreBiomeEvent);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v5 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion;
  swift_beginAccess();
  *(v7 + v5) = a3;
  return v7;
}

FeatureStore::FeatureStoreBiomeEvent::CodingKeys_optional __swiftcall FeatureStoreBiomeEvent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FeatureStoreBiomeEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0xED000064496E6F69;
  v3 = 0x7463617265746E69;
  v4 = a1;
  v5 = 0x7463617265746E69;
  v6 = 0xED000064496E6F69;
  switch(v4)
  {
    case 1:
      v6 = 0xE700000000000000;
      v5 = 0x65727574616566;
      break;
    case 2:
      v5 = 0x7372655661746164;
      v6 = 0xEB000000006E6F69;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v6 = 0x8000000223093AE0;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE700000000000000;
      v3 = 0x65727574616566;
      break;
    case 2:
      v3 = 0x7372655661746164;
      v2 = 0xEB000000006E6F69;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v2 = 0x8000000223093AE0;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

FeatureStore::FeatureStoreBiomeEvent::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance FeatureStoreBiomeEvent.CodingKeys@<W0>(Swift::String *a1@<X0>, FeatureStore::FeatureStoreBiomeEvent::CodingKeys_optional *a2@<X8>)
{
  result.value = FeatureStoreBiomeEvent.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FeatureStoreBiomeEvent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = FeatureStoreBiomeEvent.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

FeatureStore::FeatureStoreBiomeEvent::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance FeatureStoreBiomeEvent.CodingKeys@<W0>(uint64_t a1@<X0>, FeatureStore::FeatureStoreBiomeEvent::CodingKeys_optional *a2@<X8>)
{
  result.value = FeatureStoreBiomeEvent.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FeatureStoreBiomeEvent.CodingKeys()
{
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE718](v0);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FeatureStoreBiomeEvent.CodingKeys()
{
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys();
  v0 = OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE720](v0);
}

void FeatureStoreBiomeEvent.init(from:)()
{
  OUTLINED_FUNCTION_26();
  v62 = v1;
  v64 = v0;
  v4 = v3;
  v67[2] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v61 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = type metadata accessor for LogSignpost(0);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12FeatureStore0dE10BiomeEventC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy12FeatureStore0dE10BiomeEventC10CodingKeysOGMR);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  v17 = v58 - v16;
  v18 = v4[3];
  v63 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v18);
  lazy protocol witness table accessor for type FeatureStoreBiomeEvent.CodingKeys and conformance FeatureStoreBiomeEvent.CodingKeys();
  v19 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
LABEL_4:
    type metadata accessor for FeatureStoreBiomeEvent();
    OUTLINED_FUNCTION_5();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v60 = v10;
    v62 = v2;
    v20 = v14;
    LOBYTE(v67[0]) = 0;
    OUTLINED_FUNCTION_22();
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v64;
    v23 = &v64[OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId];
    *v23 = v21;
    v23[1] = v24;
    LOBYTE(v67[0]) = 2;
    OUTLINED_FUNCTION_22();
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v25 & 0x100000000) != 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    *&v22[OBJC_IVAR___FSFFeatureStoreBiomeEvent_dataVersion] = v26;
    v66 = 3;
    lazy protocol witness table accessor for type CompressionPolicy and conformance CompressionPolicy();
    OUTLINED_FUNCTION_13();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v67[0];
    if (LOBYTE(v67[0]) == 5)
    {
      v27 = 0;
    }

    v28 = OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy;
    v22[OBJC_IVAR___FSFFeatureStoreBiomeEvent_compressionPolicy] = v27;
    v66 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_13();
    v29 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = 0;
    v33 = v67[0];
    v58[1] = 0;
    v59 = v67[1];
    v34 = v22[v28];
    v35 = v62;
    switch(v34)
    {
      case 1:
        goto LABEL_16;
      case 2:
        v32 = 1;
        goto LABEL_16;
      case 3:
        v32 = 2;
        goto LABEL_16;
      case 4:
        v32 = 3;
LABEL_16:
        v58[0] = v12;
        v38 = v60;
        default argument 0 of static LogSignpost.begin(logger:_:)(v60, v29, v30, v31);
        static LogSignpost.begin(logger:_:)(v38, "BiomeDecodeDecompress", 21, 2u, v35);
        (*(v61 + 8))(v38, v5);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v67[0] = 0;
        v40 = [(objc_class *)isa decompressedDataUsingAlgorithm:v32 error:v67];

        v41 = v67[0];
        v42 = v35;
        if (!v40)
        {
          v53 = v41;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v54 = OUTLINED_FUNCTION_16();
          outlined consume of Data._Representation(v54, v55);
          outlined destroy of LogSignpost(v42);
          v56 = OUTLINED_FUNCTION_20();
          v57(v56, v58[0]);
          __swift_destroy_boxed_opaque_existential_1(v63);

          goto LABEL_4;
        }

        v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = v64;
        v47 = &v64[OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData];
        *v47 = v43;
        v47[1] = v45;
        v22 = v46;
        LogSignpost.end()();
        v48 = OUTLINED_FUNCTION_16();
        outlined consume of Data._Representation(v48, v49);
        outlined destroy of LogSignpost(v42);
        v50 = OUTLINED_FUNCTION_20();
        v51(v50, v58[0]);
LABEL_18:
        *&v22[OBJC_IVAR___FSFFeatureStoreBiomeEvent_timestamp] = 0x7FF0000000000000;
        v52 = type metadata accessor for FeatureStoreBiomeEvent();
        v65.receiver = v22;
        v65.super_class = v52;
        objc_msgSendSuper2(&v65, sel_init);
        __swift_destroy_boxed_opaque_existential_1(v63);
        break;
      default:
        (*(v20 + 8))(v17, v12);
        v36 = &v22[OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData];
        v37 = v59;
        *v36 = v33;
        v36[1] = v37;
        goto LABEL_18;
    }
  }

  OUTLINED_FUNCTION_24();
}

id FeatureStoreBiomeEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureStoreBiomeEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStoreBiomeEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance FeatureStoreBiomeEvent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 216))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC12FeatureStore17CompressionPolicyO10CodingKeys33_6E4DA4487853CCBD20194769027D9644LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t NSCodingFeatureWrapper.serialize()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v1 setOutputFormat_];
  v2 = *(v0 + 16);
  v3 = MEMORY[0x223DD33D0](1953460082, 0xE400000000000000);
  [v1 encodeObject:v2 forKey:v3];

  [v1 finishEncoding];
  v4 = [v1 encodedData];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

Class @objc NSCodingFeatureWrapper.serialize()(uint64_t a1)
{

  v1 = NSCodingFeatureWrapper.serialize()();
  v3 = v2;

  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v1, v3);
  }

  return isa;
}

uint64_t static NSCodingFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  type metadata accessor for NSKeyedUnarchiver();
  v15 = *(v5 + 144);
  v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v19 = v10;
  v20 = v26;
  if (v18)
  {
    type metadata accessor for NSCodingFeatureWrapper(0, v15, v16, v17);

    AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a4, v20, a3, v18);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    v22 = Logger.accessor.unsafeMutableAddressor();
    (*(v19 + 16))(v14, v22, v8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_223066000, v23, v24, "Deserialization failed. Returned nil object.", v25, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v19 + 8))(v14, v8);
  }

  return 0;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

id @objc static NSCodingFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getObjCClassMetadata();
  v15 = static NSCodingFeatureWrapper.deserialize(_:dataVersion:interactionId:)(v9, v11, a4, v12, v14);

  outlined consume of Data._Representation(v9, v11);

  return v15;
}

Swift::String_optional __swiftcall NSCodingFeatureWrapper.json()()
{
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v9 = (*(*v0 + 120))(v8);
  if (v10 >> 60 == 15)
  {
    v11 = Logger.accessor.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v11, v1);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_223066000, v12, v13, "Json fetch failed.", v14, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v3 + 8))(v6, v1);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = v9;
    v18 = v10;
    static String.Encoding.utf8.getter();
    v15 = String.init(data:encoding:)();
    v16 = v19;
    outlined consume of Data?(v17, v18);
  }

  v20 = v15;
  v21 = v16;
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

id @objc NSCodingFeatureWrapper.json()(uint64_t a1)
{

  v1 = NSCodingFeatureWrapper.json()();

  if (v1.value._object)
  {
    v2 = MEMORY[0x223DD33D0](v1.value._countAndFlagsBits, v1.value._object);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PBCodableFeatureWrapper.serialize()()
{
  v1 = [*(v0 + 16) data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Class @objc PBCodableFeatureWrapper.serialize()(uint64_t a1)
{

  v1 = PBCodableFeatureWrapper.serialize()();
  v3 = v2;

  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v1, v3);
  }

  return isa;
}

uint64_t static PBCodableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = *(v7 + 144);
  objc_allocWithZone(swift_getObjCClassFromMetadata());
  outlined copy of Data._Representation(a1, a2);
  v19 = @nonobjc PBCodable.init(data:)(a1, a2);
  if (v19)
  {
    v22 = v19;
    type metadata accessor for PBCodableFeatureWrapper(0, v18, v20, v21);

    AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a4, a5, a3, v22);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    Logger.accessor.unsafeMutableAddressor();
    v24 = OUTLINED_FUNCTION_1_1();
    v25(v24);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      OUTLINED_FUNCTION_2_2(&dword_223066000, v29, v30, "Serialization failed");
      MEMORY[0x223DD4390](v28, -1, -1);
    }

    (*(v13 + 8))(v17, v5);
  }

  return 0;
}

id @objc static PBCodableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getObjCClassMetadata();
  v15 = static PBCodableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(v9, v11, a4, v12, v14);

  outlined consume of Data._Representation(v9, v11);

  return v15;
}

Swift::String_optional __swiftcall PBCodableFeatureWrapper.json()()
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2();
  v8 = (*(*v0 + 120))();
  if (v9 >> 60 == 15)
  {
    Logger.accessor.unsafeMutableAddressor();
    v10 = OUTLINED_FUNCTION_1_1();
    v11(v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_2_2(&dword_223066000, v15, v16, "Json fetch failed.");
      MEMORY[0x223DD4390](v14, -1, -1);
    }

    (*(v2 + 8))(v6);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = v8;
    v20 = v9;
    static String.Encoding.utf8.getter();
    v17 = String.init(data:encoding:)();
    v18 = v21;
    outlined consume of Data?(v19, v20);
  }

  v22 = v17;
  v23 = v18;
  result.value._object = v23;
  result.value._countAndFlagsBits = v22;
  return result;
}

id @objc PBCodableFeatureWrapper.json()(uint64_t a1)
{

  v1 = PBCodableFeatureWrapper.json()();

  if (v1.value._object)
  {
    v2 = MEMORY[0x223DD33D0](v1.value._countAndFlagsBits, v1.value._object);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id @nonobjc PBCodable.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

Class @objc SerializableFeatureWrapper.serialize()(uint64_t a1)
{

  v1 = SerializableFeatureWrapper.serialize()();
  v3 = v2;

  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v1, v3);
  }

  return isa;
}

uint64_t static SerializableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v26 = a4;
  v27 = a3;
  v30 = a1;
  v31 = a2;
  v6 = *(v5 + 144);
  v25 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v29 = v5;
  v12 = *(v5 + 152);
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - v20;
  (*(v12 + 24))(v30, v31, v6, v12);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v6);
    (*(v15 + 32))(v21, v11, v6);
    type metadata accessor for SerializableFeatureWrapper(0, v6, v12, v22);
    (*(v15 + 16))(v19, v21, v6);

    SerializableFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)();
    (*(v15 + 8))(v21, v6);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v6);
    (*(v8 + 8))(v11, v25);
  }

  return 0;
}

uint64_t SerializableFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)()
{
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  return SerializableFeatureWrapper.init(interactionId:dataVersion:feature:)();
}

id @objc static SerializableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  swift_getObjCClassMetadata();
  v15 = static SerializableFeatureWrapper.deserialize(_:dataVersion:interactionId:)(v9, v11, a4, v12, v14);

  outlined consume of Data._Representation(v9, v11);

  return v15;
}

uint64_t SerializableFeatureWrapper.init(interactionId:dataVersion:feature:)()
{
  OUTLINED_FUNCTION_1_2();
  v4 = *(*v1 + 144);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  (*(v6 + 16))(&v12 - v8, v9, v4);
  v10 = BaseFeatureWrapper.init(interactionId:dataVersion:feature:)(v3, v2);
  (*(v6 + 8))(v0, v4);
  return v10;
}

uint64_t SerializableFeatureWrapper.__deallocating_deinit()
{
  v0 = BaseFeatureWrapper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id INIntent.fsf_serialize()()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = INSJSONEncodedIntent();
  if (result)
  {
    v5 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v6 = String.data(using:allowLossyConversion:)();

    (*(v1 + 8))(v3, v0);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static INIntent.fsf_deserialize(from:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = INIntentCreate();

  return v1;
}

id protocol witness for static Serializable.fsf_deserialize(from:) in conformance INIntent@<X0>(void *a1@<X8>)
{
  result = static INIntent.fsf_deserialize(from:)();
  *a1 = result;
  return result;
}

id INIntentResponse.fsf_serialize()()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = INSJSONEncodedIntentResponse();
  if (result)
  {
    v5 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v6 = String.data(using:allowLossyConversion:)();

    (*(v1 + 8))(v3, v0);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static INIntentResponse.fsf_deserialize(from:)()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = INIntentResponseCreate();

  return v1;
}

id protocol witness for static Serializable.fsf_deserialize(from:) in conformance INIntentResponse@<X0>(void *a1@<X8>)
{
  result = static INIntentResponse.fsf_deserialize(from:)();
  *a1 = result;
  return result;
}

uint64_t static JSONCoder.decode(data:)@<X0>(uint64_t a3@<X2>, void *a5@<X8>)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return __swift_storeEnumTagSinglePayload(a5, 0, 1, a3);
}

uint64_t static NSCodingCoder.encode(codable:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  [v2 setOutputFormat_];
  [v2 encodeObject:a1 forKey:*MEMORY[0x277CCA308]];
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t static NSCodingCoder.decode(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  type metadata accessor for NSKeyedUnarchiver();
  result = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!result)
  {
    v9 = Logger.accessor.unsafeMutableAddressor();
    (*(v4 + 16))(v7, v9, v3);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_223066000, v10, v11, "Decoding failed, unexpectedly returns . Returning nil object", v12, 2u);
      MEMORY[0x223DD4390](v12, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  return result;
}

uint64_t protocol witness for static Coder.decode(data:) in conformance NSCodingCoder<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static NSCodingCoder.decode(data:)(a1, a2, *(a3 + 16));
  *a4 = result;
  return result;
}

uint64_t static PBCodableCoder.encode(codable:)(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id static PBCodableCoder.decode(data:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  outlined copy of Data._Representation(a1, a2);
  v10 = @nonobjc PBCodable.init(data:)(a1, a2);
  if (!v10)
  {
    v11 = Logger.accessor.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v11, v5);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_223066000, v12, v13, "Serialization failed", v14, 2u);
      MEMORY[0x223DD4390](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

id protocol witness for static Coder.decode(data:) in conformance PBCodableCoder<A>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = static PBCodableCoder.decode(data:)(a1, a2, *(a3 + 16));
  *a4 = result;
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static FeatureStoreService.logger);
  v1 = __swift_project_value_buffer(v0, static FeatureStoreService.logger);
  Logger.service.unsafeMutableAddressor(v1, v2, v3);
  OUTLINED_FUNCTION_9_0();
  v5 = *(v4 + 16);

  return v5(v1);
}

uint64_t one-time initialization function for signposter()
{
  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v7, static FeatureStoreService.signposter);
  __swift_project_value_buffer(v7, static FeatureStoreService.signposter);
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for logger);
  }

  v8 = __swift_project_value_buffer(v0, static FeatureStoreService.logger);
  (*(v2 + 16))(v6, v8, v0);
  return OSSignposter.init(logger:)();
}

uint64_t FeatureStoreService.logger.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);

  return __swift_project_value_buffer(v6, a3);
}

uint64_t static FeatureStoreService.logger.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  __swift_project_value_buffer(v8, a3);
  OUTLINED_FUNCTION_9_0();
  v10 = *(v9 + 16);

  return v10(a5);
}

uint64_t static FeatureStoreService.qos.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x223DD33D0](0xD000000000000014, 0x8000000223093C80);
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = v4 == 0x74696E4972657375 && v6 == 0xED00006465746169;
    if (v7 || (OUTLINED_FUNCTION_6_0(0x74696E4972657375, 0xED00006465746169) & 1) != 0)
    {

      return static DispatchQoS.userInitiated.getter();
    }

    v9 = v4 == 0x65746E4972657375 && v6 == 0xEF65766974636172;
    if (v9 || (OUTLINED_FUNCTION_6_0(0x65746E4972657375, 0xEF65766974636172) & 1) != 0)
    {

      return MEMORY[0x2821FF020](v10);
    }

    v11 = v4 == 0x7974696C697475 && v6 == 0xE700000000000000;
    if (v11 || (OUTLINED_FUNCTION_6_0(0x7974696C697475, 0xE700000000000000) & 1) != 0)
    {

      return MEMORY[0x2821FF030](v12);
    }

    if (v4 != 0x756F72676B636162 || v6 != 0xEA0000000000646ELL)
    {
      OUTLINED_FUNCTION_6_0(0x756F72676B636162, 0xEA0000000000646ELL);
    }
  }

  return MEMORY[0x2821FF008](v3);
}

uint64_t one-time initialization function for fsCaptureQueue()
{
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_2();
  type metadata accessor for OS_dispatch_queue();
  type metadata accessor for FeatureStoreService();
  static FeatureStoreService.qos.getter();
  (*(v3 + 104))(v7, *MEMORY[0x277D85268], v1);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static FeatureStoreService.fsCaptureQueue = result;
  return result;
}

uint64_t *FeatureStoreService.fsCaptureQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for fsCaptureQueue != -1)
  {
    OUTLINED_FUNCTION_2_4(&one-time initialization token for fsCaptureQueue);
  }

  return &static FeatureStoreService.fsCaptureQueue;
}

id static FeatureStoreService.fsCaptureQueue.getter()
{
  if (one-time initialization token for fsCaptureQueue != -1)
  {
    OUTLINED_FUNCTION_2_4(&one-time initialization token for fsCaptureQueue);
  }

  v0 = static FeatureStoreService.fsCaptureQueue;

  return v0;
}

uint64_t static FeatureStoreService.overriddenInternalBuildValue.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_10_0(a1);
  static FeatureStoreService.overriddenInternalBuildValue = v1;
  return result;
}

uint64_t static FeatureStoreService.overrideSupportedUserCheck.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_10_0(a1);
  static FeatureStoreService.overrideSupportedUserCheck = v1;
  return result;
}

uint64_t static FeatureStoreService.performRetrieve<A>(retrieveBlock:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = type metadata accessor for LogSignpost(0);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  if ((static FeatureStoreService.isInternalBuild.getter(v20) & 1) == 0)
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v26 = 0xD000000000000018;
    *(v26 + 8) = 0x8000000223093CA0;
    *(v26 + 16) = 3;
    return swift_willThrow();
  }

  v21 = [objc_opt_self() isSupportedUser];
  if (!v21)
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v27 = 0xD000000000000040;
    *(v27 + 8) = 0x8000000223093CC0;
    *(v27 + 16) = 0;
    return swift_willThrow();
  }

  default argument 0 of static LogSignpost.begin(logger:_:)(v15, v21, v22, v23);
  static LogSignpost.begin(logger:_:)(v15, "Retrieve", 8, 2u, v19);
  v24 = (*(v11 + 8))(v15, v9);
  a1(v24);
  if (!v3)
  {
    (*(v28 + 32))(a3, v8, a2);
  }

  LogSignpost.end()();
  return outlined destroy of LogSignpost(v19);
}

uint64_t static FeatureStoreService.deleteStream(identifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FeatureStoreStreamAccessor(0);

  v4 = FeatureStoreStreamAccessor.__allocating_init(identifier:)(a1, a2);
  (*(*v4 + 136))(v4);
}

id FeatureStoreService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureStoreService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStoreService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeatureStoreService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStoreService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

unint64_t lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError()
{
  result = lazy protocol witness table cache variable for type FeatureStoreError and conformance FeatureStoreError;
  if (!lazy protocol witness table cache variable for type FeatureStoreError and conformance FeatureStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreError and conformance FeatureStoreError);
  }

  return result;
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t static FeatureStoreService.insertAceObject<A>(interactionId:item:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_5();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a3;
  v12[4] = a1;
  v12[5] = a2;
  v13 = a3;

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v11, partial apply for closure #1 in static FeatureStoreService.insertAceObject<A>(interactionId:item:), v12, 0, 0);

  return (*(v9 + 8))(v11, v8);
}

uint64_t partial apply for closure #1 in static FeatureStoreService.insertAceObject<A>(interactionId:item:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_getObjectType();
  swift_getMetatypeMetadata();
  v5 = String.init<A>(describing:)();
  v7 = v6;
  type metadata accessor for AceObjectStreamAccessor(0, v1, v8, v9);
  v10 = AceObjectStreamAccessor.__allocating_init(identifier:)(v5, v7);
  v12 = v2;
  (*(*v10 + 104))(v3, v4, &v12);
}

uint64_t static FeatureStoreService.retrieveAceObject<A>(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:)(a1, a2, a3, a4);
  if (!v5)
  {
    v14[5] = v7;
    MEMORY[0x28223BE20](v7);
    v14[2] = a2;
    type metadata accessor for InteractionWrapper(255, a2, v8, v9);
    v10 = type metadata accessor for Array();
    OUTLINED_FUNCTION_0_2();
    WitnessTable = swift_getWitnessTable();
    v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FeatureStoreService.retrieveAceObject<A>(query:), v14, v10, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  }

  return v4;
}

unint64_t static FeatureStoreService.retrieve<A>(interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_3(v5);
  OUTLINED_FUNCTION_1_3(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_2_5();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_223092B00;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v16 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v5, v14, v15);
  v17 = v7;
  v20 = static FeatureStoreService.retrieveAceObject<A>(query:)(v16, a3, v18, v19);

  if (!v6)
  {
    v24 = v20;
    type metadata accessor for Array();
    OUTLINED_FUNCTION_0_2();
    swift_getWitnessTable();
    Collection.first.getter();
    v17 = v26;

    if (!v17)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v24 = 0xD000000000000028;
      v25 = 0x8000000223093DA0;
      MEMORY[0x223DD3460](a1, a2);
      v22 = v24;
      v17 = v25;
      lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      swift_allocError();
      *v23 = v22;
      *(v23 + 8) = v17;
      *(v23 + 16) = 0;
      swift_willThrow();
    }
  }

  return v17;
}

{
  return static FeatureStoreService.retrieveAceObject<A>(interactionId:)(a1, a2, a3);
}

{
  v6 = v4;
  v7 = v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_3(v5);
  OUTLINED_FUNCTION_1_3(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_2_5();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_223092B00;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v16 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v5, v14, v15);
  v17 = v7;
  v18 = static FeatureStoreService.retrieveNSCoding<A>(query:)(v16, a3);

  if (!v6)
  {
    v22 = v18;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    v17 = v24;

    if (!v17)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v22 = 0xD000000000000028;
      v23 = 0x8000000223093DA0;
      MEMORY[0x223DD3460](a1, a2);
      v20 = v22;
      v17 = v23;
      lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      swift_allocError();
      *v21 = v20;
      *(v21 + 8) = v17;
      *(v21 + 16) = 0;
      swift_willThrow();
    }
  }

  return v17;
}

uint64_t static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InteractionWrapper(255, a2, a3, a4);
  v5 = type metadata accessor for Array();
  result = static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(partial apply for closure #1 in static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:), v5, &v7);
  if (!v4)
  {
    return v7;
  }

  return result;
}

id partial apply for closure #1 in static FeatureStoreService.retrieveAceObject<A>(query:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static FeatureStoreService.retrieveWithInteractionWrapper<A>(interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_3(v3);
  OUTLINED_FUNCTION_1_3(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_2_5();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_223092B00;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v3, v10, v11);
  v15 = static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:)(v12, a3, v13, v14);

  return v15;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_3(v3);
  OUTLINED_FUNCTION_1_3(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_2_5();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_223092B00;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v3, v10, v11);
  v15 = static FeatureStoreService.retrieveNSCodingWithInteractionWrapper<A>(query:)(v12, a3, v13, v14);

  return v15;
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieveAceObjectWithInteractionWrapper<A>(query:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  type metadata accessor for AceObjectStreamAccessor(0, v4, v9, v10);
  v11 = AceObjectStreamAccessor.__allocating_init(identifier:)(v6, v8);
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xA0);
  v13 = *(v12() + 16);

  if (v13 != 1)
  {
    goto LABEL_6;
  }

  v15 = (v12)(v14);
  if (!v15[2])
  {

LABEL_6:
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v20 = 0xD000000000000075;
    *(v20 + 8) = 0x8000000223093DD0;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  v16 = v15[4];
  v17 = v15[5];

  v18 = (*(*v11 + 136))(v16, v17);

  if (!v2)
  {
    *a1 = v18;
  }

  return result;
}

void static accessorFor(streamIdentifier:) in AccessorProvider #1 in static FeatureStoreService.insert(streamIdentifier:interactionId:featureData:)()
{
  OUTLINED_FUNCTION_9_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  if (_MergedGlobals != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = OUTLINED_FUNCTION_7_2();
  if (specialized Dictionary.subscript.getter(v14, v15, v16))
  {
    v17 = swift_endAccess();
    v20 = Logger.service.unsafeMutableAddressor(v17, v18, v19);
    (*(v6 + 16))(v13, v20, v4);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_1();
      v24 = swift_slowAlloc();
      v44 = v24;
      *v23 = 136315138;
      v25 = OUTLINED_FUNCTION_7_2();
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v27);
      _os_log_impl(&dword_223066000, v21, v22, "Using cached accessor for streamIdentifier: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
    }

    (*(v6 + 8))(v13, v4);
  }

  else
  {
    v28 = swift_endAccess();
    v31 = Logger.service.unsafeMutableAddressor(v28, v29, v30);
    (*(v6 + 16))(v10, v31, v4);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_1();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315138;
      v36 = OUTLINED_FUNCTION_7_2();
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v38);
      _os_log_impl(&dword_223066000, v32, v33, "Initializing accessor for streamIdentifier: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
    }

    (*(v6 + 8))(v10, v4);
    type metadata accessor for FeatureStoreStreamAccessor(0);

    v39 = OUTLINED_FUNCTION_7_2();
    v41 = FeatureStoreStreamAccessor.__allocating_init(identifier:)(v39, v40);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = qword_280B57D88;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v3, v1, isUniquelyReferenced_nonNull_native);
    qword_280B57D88 = v43;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t static FeatureStoreService.retrieve<A>(interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_4_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  type metadata accessor for StreamQuery(0);
  v17 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
  v18 = variable initialization expression of StreamQuery.interactionIds();
  v19 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v16, v13, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_223092B00;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  v21 = *((*MEMORY[0x277D85000] & *v19) + 0xA8);

  v21(v20);
  v22 = static FeatureStoreService.retrieve<A>(query:)(v19, a3, a4, a5);

  return v22;
}

uint64_t static FeatureStoreService.retrieve<A>(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)(a1, a2, a3, a4);
  if (!v5)
  {
    v16[7] = v9;
    MEMORY[0x28223BE20](v9);
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    type metadata accessor for InteractionWrapper(255, a2, v10, v11);
    v12 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FeatureStoreService.retrieve<A>(query:), v16, v12, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);
  }

  return v4;
}

uint64_t static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InteractionWrapper(255, a2, a3, a4);
  v5 = type metadata accessor for Array();
  result = static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(partial apply for closure #1 in static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:), v5, &v7);
  if (!v4)
  {
    return v7;
  }

  return result;
}

uint64_t closure #1 in static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)@<X0>(void *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v74 = a3;
  v75 = a4;
  v72 = a5;
  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v73 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  v79 = a2;
  v76 = a2;
  swift_getMetatypeMetadata();
  v18 = String.init<A>(describing:)();
  v20 = v19;
  v22 = Logger.service.unsafeMutableAddressor(v18, v19, v21);
  v23 = *(v11 + 16);
  v69 = v22;
  v70 = v11 + 16;
  v68 = v23;
  (v23)(v17);

  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v77 = v11;
  v78 = v9;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v67 = v5;
    v29 = v28;
    v30 = v18;
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_1();
    v32 = swift_slowAlloc();
    v79 = v32;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v20, &v79);
    *(v29 + 12) = 2112;
    *(v29 + 14) = v24;
    *v31 = v24;
    v33 = v24;
    _os_log_impl(&dword_223066000, v25, v26, "Retrieving items of type %s) with query: %@", v29, 0x16u);
    outlined destroy of NSObject?(v31);
    v18 = v30;
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();
    v6 = v67;
    OUTLINED_FUNCTION_9();
    MEMORY[0x223DD4390]();

    v71 = *(v77 + 8);
    v71(v17, v78);
  }

  else
  {

    v71 = *(v11 + 8);
    v71(v17, v9);
  }

  type metadata accessor for FeatureStoreStreamAccessor(0);
  v34 = (*((*MEMORY[0x277D85000] & *v24) + 0xB8))();
  v36 = static FeatureStoreService.streamIdentifierFor(typeName:taskId:)(v18, v20, v34, v35);
  v38 = v37;

  v39 = FeatureStoreStreamAccessor.__allocating_init(identifier:)(v36, v38);
  v40 = (*(*v39 + 120))(v24);
  if (v6)
  {
  }

  else
  {
    v66 = v18;
    v67 = &v65;
    v79 = v40;
    MEMORY[0x28223BE20](v40);
    v42 = v76;
    v44 = v74;
    v43 = v75;
    *(&v65 - 4) = v76;
    *(&v65 - 3) = v44;
    *(&v65 - 2) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore0aB10BiomeEventCGMd, &_sSay12FeatureStore0aB10BiomeEventCGMR);
    v47 = type metadata accessor for InteractionWrapper(0, v42, v45, v46);
    lazy protocol witness table accessor for type [FeatureStoreBiomeEvent] and conformance [A]();
    v48 = Sequence.compactMap<A>(_:)();
    v76 = v47;

    v49 = v78;
    v68(v73, v69, v78);

    v50 = v24;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v75 = v50;

    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_6_1();
      v53 = v48;
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v79 = v74;
      *v54 = 134218498;
      *(v54 + 4) = MEMORY[0x223DD3510](v53, v76);

      v76 = v51;
      *(v54 + 12) = 2080;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v20, &v79);
      LODWORD(v70) = v52;
      v56 = v55;

      *(v54 + 14) = v56;
      *(v54 + 22) = 2080;
      (*((*MEMORY[0x277D85000] & *v75) + 0xA0))(v57);
      v58 = MEMORY[0x223DD34D0]();
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v79);

      *(v54 + 24) = v61;
      v62 = v76;
      _os_log_impl(&dword_223066000, v76, v70, "Retrieved %ld item(s) of type %s) with query: %s", v54, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();
      v48 = v53;
      OUTLINED_FUNCTION_9();
      MEMORY[0x223DD4390]();

      v63 = v78;
      v64 = v73;
    }

    else
    {

      v64 = v73;
      v63 = v49;
    }

    result = (v71)(v64, v63);
    *v72 = v48;
  }

  return result;
}

uint64_t closure #1 in closure #1 in static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37[2] = a3;
  v37[3] = a4;
  v37[0] = a5;
  v7 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = (v37 - v11);
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v37 - v20;
  v22 = *a1;
  static JSONCoder.decode(data:)(a2, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, a2) == 1)
  {
    (*(v9 + 8))(v12, v7);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v38 = 0x6420746F6E6E6163;
    v39 = 0xEF203A65646F6365;
    v23 = Data.description.getter();
    MEMORY[0x223DD3460](v23);

    v24 = v38;
    v25 = v39;
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v26 = v24;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v21, v12, a2);
    v28 = *(v22 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId);
    v29 = *(v22 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId + 8);
    v30 = *((*MEMORY[0x277D85000] & *v22) + 0x78);

    v32 = v30(v31);
    (*(v14 + 16))(v18, v21, a2);
    v33 = v37[0];
    InteractionWrapper.init(interactionId:timestamp:feature:)(v28, v29, v18, a2, v37[0], v32);
    (*(v14 + 8))(v21, a2);
    v36 = type metadata accessor for InteractionWrapper(0, a2, v34, v35);
    return __swift_storeEnumTagSinglePayload(v33, 0, 1, v36);
  }
}

uint64_t one-time initialization function for cache()
{
  type metadata accessor for FeatureStoreStreamAccessor(0);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_280B57D88 = result;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieve<A>(query:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v7 = *(v4 + 16);
  v8 = type metadata accessor for InteractionWrapper(0, v7, a3, a4);
  return (*(*(v7 - 8) + 16))(a2, a1 + *(v8 + 32), v7);
}

unint64_t lazy protocol witness table accessor for type [FeatureStoreBiomeEvent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [FeatureStoreBiomeEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [FeatureStoreBiomeEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12FeatureStore0aB10BiomeEventCGMd, &_sSay12FeatureStore0aB10BiomeEventCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FeatureStoreBiomeEvent] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS12FeatureStore0cD14StreamAccessorCGMd, &_ss17_NativeDictionaryVySS12FeatureStore0cD14StreamAccessorCGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v20);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, ",+");
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v20);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t static FeatureStoreService.insertNSCoding<A>(interactionId:item:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_5();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a3;
  v14[4] = a1;
  v14[5] = a2;
  v15 = a3;

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v13, partial apply for closure #1 in static FeatureStoreService.insertNSCoding<A>(interactionId:item:), v14, 0, 0);

  return (*(v10 + 8))(v13, v4);
}

uint64_t closure #1 in static FeatureStoreService.insertNSCoding<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static NSCodingCoder.encode(codable:)(a1);
  if (v14 >> 60 == 15)
  {
    v16 = Logger.service.unsafeMutableAddressor(v13, v14, v15);
    (*(v9 + 16))(v12, v16, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_223066000, v17, v18, "Could not encode the item. Skipping insertion.", v19, 2u);
      MEMORY[0x223DD4390](v19, -1, -1);
    }

    return (*(v9 + 8))(v12, v4);
  }

  else
  {
    v21 = v13;
    v22 = v14;
    v30[1] = swift_getObjectType();
    swift_getMetatypeMetadata();
    v23 = String.init<A>(describing:)();
    v25 = v24;
    type metadata accessor for FeatureStoreStreamAccessor(0);
    v26 = FeatureStoreStreamAccessor.__allocating_init(identifier:)(v23, v25);
    type metadata accessor for FeatureStoreBiomeEvent();

    outlined copy of Data?(v21, v22);
    v27 = default argument 2 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v28 = default argument 3 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v29 = FeatureStoreBiomeEvent.__allocating_init(interactionId:featureData:dataVersion:timestamp:)(a2, a3, v21, v22, v27, v28);
    (*(*v26 + 112))();

    return outlined consume of Data?(v21, v22);
  }
}

uint64_t static FeatureStoreService.retrieveNSCoding<A>(query:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Array();
  result = OUTLINED_FUNCTION_4_2(v3, v4, v3, v5, v6, v7, v8, v9, v11);
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t closure #1 in static FeatureStoreService.retrieveNSCoding<A>(query:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  type metadata accessor for FeatureStoreStreamAccessor(0);
  v9 = FeatureStoreStreamAccessor.__allocating_init(identifier:)(v6, v8);
  v10 = (*(*v9 + 120))(a1);
  if (v3)
  {
  }

  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore0aB10BiomeEventCGMd, &_sSay12FeatureStore0aB10BiomeEventCGMR);
  lazy protocol witness table accessor for type [FeatureStoreBiomeEvent] and conformance [A]();
  v12 = Sequence.compactMap<A>(_:)();

  *a3 = v12;
  return result;
}

uint64_t static FeatureStoreService.retrieveNSCodingWithInteractionWrapper<A>(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InteractionWrapper(255, a2, a3, a4);
  v5 = type metadata accessor for Array();
  result = OUTLINED_FUNCTION_4_2(v5, v6, v5, v7, v8, v9, v10, v11, v13);
  if (!v4)
  {
    return v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieveNSCodingWithInteractionWrapper<A>(query:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  type metadata accessor for FeatureStoreNSCodingAccessor(0, v4, v9, v10);
  v11 = AceObjectStreamAccessor.__allocating_init(identifier:)(v6, v8);
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xA0);
  v13 = *(v12() + 16);

  if (v13 != 1)
  {
    goto LABEL_6;
  }

  v15 = (v12)(v14);
  if (!v15[2])
  {

LABEL_6:
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v20 = 0xD000000000000075;
    *(v20 + 8) = 0x8000000223093DD0;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  v16 = v15[4];
  v17 = v15[5];

  v18 = (*(*v11 + 136))(v16, v17);

  if (!v2)
  {
    *a1 = v18;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static FeatureStoreService.retrieveNSCoding<A>(query:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSCodingCoder.decode(data:)(*(*a1 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData), *(*a1 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData + 8), *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t static FeatureStoreService.insertCoding(interactionId:item:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return static FeatureStoreService.insertNSCoding<A>(interactionId:item:)(a1, a2, a3, ObjectType);
}

uint64_t static FeatureStoreService.insertPBCodable(interactionId:item:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for PBCodable();

  return static FeatureStoreService.insert<A>(interactionId:item:completion:)(a1, a2, a3, 0, 0, v6);
}

unint64_t type metadata accessor for PBCodable()
{
  result = lazy cache variable for type metadata for PBCodable;
  if (!lazy cache variable for type metadata for PBCodable)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PBCodable);
  }

  return result;
}

uint64_t @objc static FeatureStoreService.insertCoding(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t, id))
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a4;
  a5(v7, v9, v10);
}

uint64_t static FeatureStoreService.insertAwait<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](static FeatureStoreService.insertAwait<A>(interactionId:item:), 0, 0);
}

uint64_t closure #1 in static FeatureStoreService.insertAwait<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v20 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v10);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v10);
  static FeatureStoreService.insert<A>(interactionId:item:completion:)(a3, a4, a5, partial apply for implicit closure #5 in implicit closure #4 in closure #1 in static FeatureStoreService.insertAwait<A>(taskId:interactionId:item:), v17, v20);
}

uint64_t static FeatureStoreService.insert<A>(interactionId:item:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6)
{
  v12 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a3;
  v18[4] = a1;
  v18[5] = a2;
  v19 = a3;

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v17, partial apply for closure #1 in static FeatureStoreService.insert<A>(interactionId:item:completion:), v18, a4, a5);

  return (*(v14 + 8))(v17, v12);
}

uint64_t closure #1 in static FeatureStoreService.insert<A>(interactionId:item:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static PBCodableCoder.encode(codable:)(a1);
  if (v14 >> 60 == 15)
  {
    v16 = Logger.service.unsafeMutableAddressor(v13, v14, v15);
    (*(v9 + 16))(v12, v16, v7);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_223066000, v17, v18, "Could not encode the item. Skipping insertion.", v19, 2u);
      MEMORY[0x223DD4390](v19, -1, -1);
    }

    return (*(v9 + 8))(v12, v7);
  }

  else
  {
    v21 = v13;
    v22 = v14;
    v30[1] = swift_getObjectType();
    swift_getMetatypeMetadata();
    v23 = String.init<A>(describing:)();
    v25 = v24;
    type metadata accessor for FeatureStoreStreamAccessor(0);
    v26 = FeatureStoreStreamAccessor.__allocating_init(identifier:)(v23, v25);
    type metadata accessor for FeatureStoreBiomeEvent();

    outlined copy of Data?(v21, v22);
    v27 = default argument 2 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v28 = default argument 3 of FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)();
    v29 = FeatureStoreBiomeEvent.__allocating_init(interactionId:featureData:dataVersion:timestamp:)(a2, a3, v21, v22, v27, v28);
    (*(*v26 + 112))();

    return outlined consume of Data?(v21, v22);
  }
}

uint64_t static FeatureStoreService.retrieve<A>(query:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Array();
  result = static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(partial apply for closure #1 in static FeatureStoreService.retrieve<A>(query:), v3, &v5);
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t closure #1 in static FeatureStoreService.retrieve<A>(query:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  type metadata accessor for FeatureStoreStreamAccessor(0);
  v9 = FeatureStoreStreamAccessor.__allocating_init(identifier:)(v6, v8);
  v10 = (*(*v9 + 120))(a1);
  if (v3)
  {
  }

  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore0aB10BiomeEventCGMd, &_sSay12FeatureStore0aB10BiomeEventCGMR);
  lazy protocol witness table accessor for type [FeatureStoreBiomeEvent] and conformance [A]();
  v12 = Sequence.compactMap<A>(_:)();

  *a3 = v12;
  return result;
}

id partial apply for closure #1 in closure #1 in static FeatureStoreService.retrieve<A>(query:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = static PBCodableCoder.decode(data:)(*(*a1 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData), *(*a1 + OBJC_IVAR___FSFFeatureStoreBiomeEvent_featureData + 8), *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t static FeatureStoreService.insertSerializable<A>(interactionId:item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v25 = a5;
  v8 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  (*(v15 + 16))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v21 = v25;
  *(v20 + 16) = a4;
  *(v20 + 24) = v21;
  (*(v15 + 32))(v20 + v19, &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v22 = (v20 + ((v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v26;
  v22[1] = a2;

  default argument 0 of static FeatureStoreService.performInsert(qos:insertBlock:completion:)();
  static FeatureStoreService.performInsert(qos:insertBlock:completion:)(v13, partial apply for closure #1 in static FeatureStoreService.insertSerializable<A>(interactionId:item:), v20, 0, 0);

  return (*(v10 + 8))(v13, v8);
}

uint64_t partial apply for closure #1 in static FeatureStoreService.insertSerializable<A>(interactionId:item:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_0_0();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v10 = String.init<A>(describing:)();
  v12 = v11;
  type metadata accessor for SerializableStreamAccessor(0, v2, v3, v13);
  v14 = AceObjectStreamAccessor.__allocating_init(identifier:)(v10, v12);
  (*(*v14 + 104))(v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieveSerializable<A>(interactionId:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_getMetatypeMetadata();
  v5 = String.init<A>(describing:)();
  v7 = v6;
  type metadata accessor for SerializableStreamAccessor(0, v1, v2, v8);
  v9 = AceObjectStreamAccessor.__allocating_init(identifier:)(v5, v7);
  (*(*v9 + 128))(v3, v4);
}

uint64_t static FeatureStoreService.retrieveWithInteractionWrapper<A>(interactionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  type metadata accessor for StreamQuery(0);
  v14 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_223092B00;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v16 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v13, v11, v15);
  v18 = static FeatureStoreService.retrieveSerializableWithInteractionWrapper<A>(query:)(v16, a3, a4, v17);

  return v18;
}

uint64_t static FeatureStoreService.retrieveSerializableWithInteractionWrapper<A>(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InteractionWrapper(255, a2, a3, a4);
  v5 = type metadata accessor for Array();
  result = static FeatureStoreService.performRetrieve<A>(retrieveBlock:)(partial apply for closure #1 in static FeatureStoreService.retrieveSerializableWithInteractionWrapper<A>(query:), v5, &v7);
  if (!v4)
  {
    return v7;
  }

  return result;
}

uint64_t partial apply for closure #1 in static FeatureStoreService.retrieveSerializableWithInteractionWrapper<A>(query:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_getMetatypeMetadata();
  v7 = String.init<A>(describing:)();
  v9 = v8;
  type metadata accessor for SerializableStreamAccessor(0, v4, v5, v10);
  v11 = AceObjectStreamAccessor.__allocating_init(identifier:)(v7, v9);
  v12 = *((*MEMORY[0x277D85000] & *v6) + 0xA0);
  v13 = *(v12() + 16);

  if (v13 != 1)
  {
    goto LABEL_6;
  }

  v15 = (v12)(v14);
  if (!v15[2])
  {

LABEL_6:
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    swift_allocError();
    *v20 = 0xD000000000000075;
    *(v20 + 8) = 0x8000000223093DD0;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  v16 = v15[4];
  v17 = v15[5];

  v18 = (*(*v11 + 136))(v16, v17);

  if (!v2)
  {
    *a1 = v18;
  }

  return result;
}

uint64_t runSimulatableTask<A, B>(interactionId:input:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_6_2();
  *(v11 + 96) = a10;
  *(v11 + 104) = a11;
  *(v11 + 80) = a9;
  OUTLINED_FUNCTION_5_1(v12, v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_0_0();
  *(v11 + 112) = v20;
  *(v11 + 120) = OUTLINED_FUNCTION_25_0();
  v21 = type metadata accessor for Optional();
  *(v11 + 128) = v21;
  OUTLINED_FUNCTION_17(v21);
  *(v11 + 136) = v22;
  *(v11 + 144) = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13_1();
  return OUTLINED_FUNCTION_31(v23, v24, v25);
}

uint64_t runSimulatableTask<A, B>(interactionId:input:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_27_1();
  *(v14 + 152) = OUTLINED_FUNCTION_8_2();
  v20 = OUTLINED_FUNCTION_4_3();
  static FeatureStoreService.insert<A>(taskId:interactionId:item:)(v20, v21, v22, v23, v19, v18, v16, v13);
  v24 = OUTLINED_FUNCTION_4_3();
  interactionForInjection<A>(taskId:interactionId:)(v24, v25, v26, v27, v17, v15, a9, v28);
  OUTLINED_FUNCTION_22_0();
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_26_0();
    v31(v30);
    OUTLINED_FUNCTION_0_3();
    v53 = v32;
    v33 = swift_task_alloc();
    *(v14 + 160) = v33;
    *v33 = v14;
    OUTLINED_FUNCTION_14_1(v33);
    OUTLINED_FUNCTION_7_3();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41, v53, a10, a11, a12);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_1_4();
    v44(v43, v12, v17);
    OUTLINED_FUNCTION_9_2();

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_3();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }
}

{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_27_1();
  v14 = OUTLINED_FUNCTION_1_4();
  v15(v14, v12, v13);
  OUTLINED_FUNCTION_9_2();

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t runSimulatableTask<A, B>(interactionId:input:task:)()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t runSimulatableTask<A, B>(taskId:interactionId:input:task:)()
{
  OUTLINED_FUNCTION_6_2();
  *(v0 + 112) = v20;
  *(v0 + 120) = v21;
  *(v0 + 96) = v19;
  *(v0 + 80) = v17;
  *(v0 + 88) = v18;
  OUTLINED_FUNCTION_5_1(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_0();
  *(v0 + 128) = v9;
  *(v0 + 136) = OUTLINED_FUNCTION_25_0();
  v10 = type metadata accessor for Optional();
  *(v0 + 144) = v10;
  OUTLINED_FUNCTION_17(v10);
  *(v0 + 152) = v11;
  *(v0 + 160) = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_6_2();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t one-time initialization function for lock()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, "0+");
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_280B57D98 = result;
  return result;
}

uint64_t one-time initialization function for cursors()
{
  result = Dictionary.init(dictionaryLiteral:)();
  qword_280B57DA8 = result;
  return result;
}

uint64_t static InjectionCursor.getNextAndIncrement<A>(forType:taskId:interactionId:)(uint64_t a1)
{
  if (_MergedGlobals_0 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_280B57D98;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v3, &v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t closure #1 in static InjectionCursor.getNextAndIncrement<A>(forType:taskId:interactionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  swift_getMetatypeMetadata();
  v45 = String.init<A>(describing:)();
  v46 = v15;

  MEMORY[0x223DD3460](58, 0xE100000000000000);

  MEMORY[0x223DD3460](a2, a3);

  MEMORY[0x223DD3460](58, 0xE100000000000000);

  v16 = OUTLINED_FUNCTION_21_0();
  MEMORY[0x223DD3460](v16);

  v18 = v45;
  v17 = v46;
  if (qword_280B57DA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_280B57DA8;
  if (*(qword_280B57DA8 + 16) && (v20 = OUTLINED_FUNCTION_21_0(), v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21), (v23 & 1) != 0))
  {
    v24 = *(*(v19 + 56) + 8 * v22);
  }

  else
  {
    v24 = -1;
  }

  result = swift_endAccess();
  v26 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = qword_280B57DA8;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v18, v17, isUniquelyReferenced_nonNull_native);
    qword_280B57DA8 = v44;
    v28 = swift_endAccess();
    v31 = Logger.service.unsafeMutableAddressor(v28, v29, v30);
    (*(v11 + 16))(v14, v31, v9);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v9;
      v36 = a5;
      v37 = v35;
      v45 = v35;
      *v34 = 134218242;
      *(v34 + 4) = v26;
      *(v34 + 12) = 2080;
      v38 = OUTLINED_FUNCTION_21_0();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v40);

      *(v34 + 14) = v41;
      __swift_destroy_boxed_opaque_existential_1(v37);
      a5 = v36;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();

      result = (*(v11 + 8))(v14, v43);
    }

    else
    {

      result = (*(v11 + 8))(v14, v9);
    }

    *a5 = v26;
  }

  return result;
}

uint64_t static FeatureStoreService.runReplayableOperation<A, B>(interactionId:input:_:)()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_12();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_13_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_6_2();

  v1 = *(v0 + 8);

  return v1();
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

Swift::Int FeatureStoreService.EventStreamState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DD3B40](a1 & 1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for timers()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (MEMORY[0x223DD39B0](MEMORY[0x277D84F90]))
    {
      result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x277D84F90]);
    }

    else
    {
      result = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    result = MEMORY[0x277D84FA0];
  }

  static FeatureStoreService.timers = result;
  return result;
}

uint64_t *FeatureStoreService.timers.unsafeMutableAddressor()
{
  if (one-time initialization token for timers != -1)
  {
    OUTLINED_FUNCTION_1_5(&one-time initialization token for timers);
  }

  return &static FeatureStoreService.timers;
}

uint64_t static FeatureStoreService.timers.getter()
{
  if (one-time initialization token for timers != -1)
  {
    OUTLINED_FUNCTION_1_5(&one-time initialization token for timers);
  }

  swift_beginAccess();
}

uint64_t static FeatureStoreService.timers.setter(uint64_t a1)
{
  if (one-time initialization token for timers != -1)
  {
    OUTLINED_FUNCTION_1_5(&one-time initialization token for timers);
  }

  swift_beginAccess();
  static FeatureStoreService.timers = a1;
}

uint64_t (*static FeatureStoreService.timers.modify(uint64_t a1))()
{
  if (one-time initialization token for timers != -1)
  {
    OUTLINED_FUNCTION_1_5(&one-time initialization token for timers);
  }

  swift_beginAccess();
  return FeatureStoreBiomeEvent.timestamp.modify;
}

uint64_t static FeatureStoreService.streamEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  OUTLINED_FUNCTION_8_3(v6);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  default argument 1 of AsyncStream.init(_:bufferingPolicy:_:)(&v10[-v8]);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

void closure #1 in static FeatureStoreService.streamEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_8_3(v36);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  (*(v32 + 16))(v35, v29, v30);
  v44 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 4) = v27;
  *(v45 + 5) = v25;
  *(v45 + 6) = v23;
  (*(v32 + 32))(&v45[v44], v35, v30);
  v46 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v39, &async function pointer to partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>(), v45);
  v47 = swift_allocObject();
  v47[2] = v27;
  v47[3] = v25;
  v47[4] = v23;
  v47[5] = v46;
  AsyncStream.Continuation.onTermination.setter();
  OUTLINED_FUNCTION_8_1();
}

uint64_t closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>()()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_26_1();
  v6 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v0[8] = v6;
  OUTLINED_FUNCTION_17(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_25_0();
  v0[11] = type metadata accessor for InteractionWrapper(255, v2, v8, v9);
  OUTLINED_FUNCTION_26_1();
  v10 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_3(v10);
  v0[12] = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_26_1();
  v11 = type metadata accessor for AsyncStream();
  v0[13] = v11;
  OUTLINED_FUNCTION_17(v11);
  v0[14] = v12;
  v0[15] = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_26_1();
  v13 = type metadata accessor for AsyncStream.Iterator();
  v0[16] = v13;
  OUTLINED_FUNCTION_17(v13);
  v0[17] = v14;
  v0[18] = OUTLINED_FUNCTION_25_0();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>(), 0, 0);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[5];
  type metadata accessor for FeatureStoreService();
  v5 = OUTLINED_FUNCTION_14_2();
  static FeatureStoreService.streamWithInteractionWrapperEvents<A>()(v5, v6, v4, v7);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[19] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_3_3(v8);

  return MEMORY[0x2822003E8](v10);
}

{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>(), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[12];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    OUTLINED_FUNCTION_23();

    return v3();
  }

  else
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    (*(v0[6] + 16))(v0[7], v2 + *(v1 + 32), v0[3]);
    (*(*(v1 - 8) + 8))(v2, v1);
    type metadata accessor for AsyncStream.Continuation();
    AsyncStream.Continuation.yield(_:)();
    (*(v6 + 8))(v5, v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[19] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_3_3(v8);

    return MEMORY[0x2822003E8](v10);
  }
}

uint64_t static FeatureStoreService.streamWithInteractionWrapperEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InteractionWrapper(255, a1, a3, a4);
  v5 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  OUTLINED_FUNCTION_8_3(v5);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_2();
  swift_checkMetadataState();
  default argument 1 of AsyncStream.init(_:bufferingPolicy:_:)(v4);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Any?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void closure #2 in closure #1 in static FeatureStoreService.streamEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_1();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  type metadata accessor for AsyncStream.Continuation.Termination();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_2();
  v34 = OUTLINED_FUNCTION_17_1();
  v35(v34);
  v36 = OUTLINED_FUNCTION_14_2();
  v38 = v37(v36);
  if (v38 == *MEMORY[0x277D85738])
  {
    Logger.service.unsafeMutableAddressor(v38, v39, v40);
    OUTLINED_FUNCTION_4_4();
    v41(v22);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_22_1(v44);
      OUTLINED_FUNCTION_12_2(&dword_223066000, v45, v43, "Stream finished.");
      OUTLINED_FUNCTION_11_3();
    }

    (*(v27 + 8))(v22, v25);
  }

  else
  {
    v46 = v38;
    v47 = *MEMORY[0x277D85740];
    Logger.service.unsafeMutableAddressor(v38, v39, v40);
    OUTLINED_FUNCTION_4_4();
    if (v46 == v47)
    {
      v48(v32);
      v49 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_29_0();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_22_1(v51);
        OUTLINED_FUNCTION_12_2(&dword_223066000, v52, v47, "Stream cancelled.");
        OUTLINED_FUNCTION_11_3();
      }

      (*(v27 + 8))(v32, v25);
    }

    else
    {
      v48(v21);
      v53 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_29_0();
      if (os_log_type_enabled(v53, v54))
      {
        *OUTLINED_FUNCTION_20_1() = 0;
        OUTLINED_FUNCTION_31_0(&dword_223066000, v55, v56, "Unknown termination condition!");
        OUTLINED_FUNCTION_1();
      }

      (*(v27 + 8))(v21, v25);
      v57 = OUTLINED_FUNCTION_14_2();
      v58(v57);
    }
  }

  MEMORY[0x223DD3630](v20, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  OUTLINED_FUNCTION_8_1();
}

uint64_t default argument 1 of AsyncStream.init(_:bufferingPolicy:_:)@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85778];
  v4 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

void closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()()
{
  OUTLINED_FUNCTION_9_1();
  v53 = v0;
  v54 = v1;
  v52 = v2;
  v50 = v3;
  v55 = v4;
  type metadata accessor for InteractionWrapper(255, v2, v2, v0);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_0();
  v48 = v6;
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, "t*");
  OUTLINED_FUNCTION_8_3(v8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v46 = &v43 - v20;
  static Date.now.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  type metadata accessor for NSTimer();
  v22 = [objc_opt_self() mainRunLoop];
  type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of Any?(v11, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, "t*");
  v56 = v27;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v28 = ConnectablePublisher.autoconnect()();
  v45 = v28;

  v56 = v28;
  v29 = v14;
  (*(v14 + 16))(v19, v21, v12);
  v30 = v48;
  v31 = v49;
  (*(v48 + 16))(v51, v55, v49);
  v32 = *(v14 + 80);
  v44 = v14;
  v33 = (v32 + 40) & ~v32;
  v34 = (v16 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (*(v30 + 80) + v35 + 8) & ~*(v30 + 80);
  v37 = swift_allocObject();
  v38 = v53;
  *(v37 + 2) = v52;
  *(v37 + 3) = v38;
  *(v37 + 4) = v54;
  (*(v29 + 32))(&v37[v33], v19, v12);
  v39 = v51;
  *&v37[v34] = v50;
  *&v37[v35] = v47;
  (*(v30 + 32))(&v37[v36], v39, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>();
  v40 = Publisher<>.sink(receiveValue:)();

  v41 = swift_allocObject();
  v42 = v53;
  v41[2] = v52;
  v41[3] = v42;
  v41[4] = v54;
  v41[5] = v40;
  AsyncStream.Continuation.onTermination.setter();
  (*(v44 + 8))(v46, v12);

  OUTLINED_FUNCTION_8_1();
}

unint64_t lazy protocol witness table accessor for type FeatureStoreService.EventStreamState and conformance FeatureStoreService.EventStreamState()
{
  result = lazy protocol witness table cache variable for type FeatureStoreService.EventStreamState and conformance FeatureStoreService.EventStreamState;
  if (!lazy protocol witness table cache variable for type FeatureStoreService.EventStreamState and conformance FeatureStoreService.EventStreamState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureStoreService.EventStreamState and conformance FeatureStoreService.EventStreamState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureStoreService.EventStreamState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FeatureStoreService.EventStreamState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t type metadata accessor for NSTimer()
{
  result = lazy cache variable for type metadata for NSTimer;
  if (!lazy cache variable for type metadata for NSTimer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTimer);
  }

  return result;
}

void closure #1 in closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()()
{
  OUTLINED_FUNCTION_9_1();
  v84 = v2;
  v85 = v3;
  v82 = v4;
  v83 = v5;
  v7 = v6;
  v80 = v6;
  v81 = v8;
  v86 = v9;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v78 = v10;
  MEMORY[0x28223BE20](v11);
  type metadata accessor for InteractionWrapper(255, v7, v12, v13);
  v14 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  OUTLINED_FUNCTION_0();
  v77 = v15;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_2();
  v17 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  v76 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v68 - v23;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_0();
  v74 = v24;
  v73 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0();
  v71 = v25;
  v27 = MEMORY[0x28223BE20](v26);
  v72 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v68 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = OUTLINED_FUNCTION_8_3(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v33);
  v35 = &v68 - v34;
  v79 = type metadata accessor for StreamQuery(0);
  v36 = type metadata accessor for Date();
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  OUTLINED_FUNCTION_25();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v36);
  v43 = variable initialization expression of StreamQuery.interactionIds();
  v44 = StreamQuery.__allocating_init(startDate:endDate:interactionIds:)(v35, v0, v43);
  (*(*(v36 - 8) + 16))(v35, v81, v36);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
  (*((*MEMORY[0x277D85000] & *v44) + 0x78))(v35);
  v45 = static FeatureStoreService.retrieveWithInteractionWrapper<A>(query:)(v44, v80, v83, v85);
  v81 = v22;
  v70 = v44;
  v82 = v1;
  v83 = v14;
  v69 = v45;
  v87[4] = v45;
  v46 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x223DD3490](v87, v46, WitnessTable);
  v87[3] = v87[0];
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  swift_beginAccess();
  v48 = type metadata accessor for EnumeratedSequence.Iterator();
  v49 = (v71 + 32);
  v50 = v75;
  v51 = (v76 + 32);
  v78 = (v77 + 8);
  v79 = (v76 + 16);
  v85 = (v76 + 8);
  v52 = v74;
  v53 = v73;
  v54 = v72;
  v80 = (v76 + 32);
  while (1)
  {
    EnumeratedSequence.Iterator.next()();
    (*v49)(v30, v54, v53);
    if (__swift_getEnumTagSinglePayload(v30, 1, v52) == 1)
    {
      break;
    }

    v55 = *v30;
    (*v51)(v50, &v30[*(v52 + 48)], v17);
    if (v55 >= *(v86 + 16))
    {
      (*v79)(v81, v50, v17);
      type metadata accessor for AsyncStream.Continuation();
      v56 = v49;
      v57 = v48;
      v58 = v30;
      v59 = v54;
      v60 = v53;
      v61 = v52;
      v62 = v17;
      v63 = v50;
      v64 = v82;
      AsyncStream.Continuation.yield(_:)();
      v65 = v64;
      v50 = v63;
      v17 = v62;
      v52 = v61;
      v53 = v60;
      v54 = v59;
      v30 = v58;
      v48 = v57;
      v49 = v56;
      v51 = v80;
      (*v78)(v65, v83);
    }

    (*v85)(v50, v17);
  }

  v66 = MEMORY[0x223DD3510](v69, v17);

  v67 = v86;
  swift_beginAccess();
  *(v67 + 16) = v66;
  OUTLINED_FUNCTION_8_1();
}

void partial apply for closure #1 in closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_17(v2);
  type metadata accessor for InteractionWrapper(255, v1, v3, v4);
  OUTLINED_FUNCTION_15_0();
  v5 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_8_3(v5);

  closure #1 in closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()();
}

unint64_t lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>()
{
  result = lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>;
  if (!lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>);
  }

  return result;
}

void closure #2 in closure #1 in static FeatureStoreService.streamWithInteractionWrapperEvents<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_1();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  type metadata accessor for InteractionWrapper(255, v22, v33, v34);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for AsyncStream.Continuation.Termination();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_2();
  v36 = OUTLINED_FUNCTION_17_1();
  v37(v36);
  v38 = OUTLINED_FUNCTION_14_2();
  v40 = v39(v38);
  if (v40 == *MEMORY[0x277D85738])
  {
    Logger.service.unsafeMutableAddressor(v40, v41, v42);
    OUTLINED_FUNCTION_4_4();
    v43(v21);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_22_1(v46);
      OUTLINED_FUNCTION_12_2(&dword_223066000, v47, v45, "Stream finished.");
      OUTLINED_FUNCTION_11_3();
    }

    (*(v27 + 8))(v21, v25);
  }

  else
  {
    v48 = v40;
    v49 = *MEMORY[0x277D85740];
    Logger.service.unsafeMutableAddressor(v40, v41, v42);
    OUTLINED_FUNCTION_4_4();
    if (v48 == v49)
    {
      v50(v32);
      v51 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_29_0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_22_1(v53);
        OUTLINED_FUNCTION_12_2(&dword_223066000, v54, v49, "Stream cancelled.");
        OUTLINED_FUNCTION_11_3();
      }

      (*(v27 + 8))(v32, v25);
    }

    else
    {
      v50(v20);
      v55 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_29_0();
      if (os_log_type_enabled(v55, v56))
      {
        *OUTLINED_FUNCTION_20_1() = 0;
        OUTLINED_FUNCTION_31_0(&dword_223066000, v57, v58, "Unknown termination condition!");
        OUTLINED_FUNCTION_1();
      }

      (*(v27 + 8))(v20, v25);
      v59 = OUTLINED_FUNCTION_14_2();
      v60(v59);
    }
  }

  AnyCancellable.cancel()();
  OUTLINED_FUNCTION_8_1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_23();

  return v3();
}

uint64_t partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>()()
{
  v1 = type metadata accessor for AsyncStream.Continuation();
  OUTLINED_FUNCTION_8_3(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = partial apply for closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>();

  return closure #1 in closure #1 in static FeatureStoreService.streamEvents<A>()();
}

{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_23();

  return v3();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_3(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_25()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_3(v1);

  return v4(v3);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(unint64_t a1)
{
  v1 = a1;
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = specialized Array.count.getter(v1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = v1;
    v17 = v1 & 0xC000000000000001;
    v15 = v1 + 32;
    while (1)
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v3, v17 == 0, v1);
      if (v17)
      {
        result = MEMORY[0x223DD38A0](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      v1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_31_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t AceObjectStreamAccessor.insert(interactionId:feature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v14[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for AceObjectFeatureWrapper(0, *(*v5 + 144), a3, a4);

  swift_unknownObjectRetain();
  v9 = AceObjectFeatureWrapper.__allocating_init(interactionId:dataVersion:feature:)(a1, a2, 0, a3);
  v10 = v5[2];
  v14[0] = 0;
  if ([v10 insert:v9 error:v14])
  {
    v11 = v14[0];
  }

  else
  {
    v12 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t AceObjectStreamAccessor.retrieve(interactionId:)()
{
  v2 = *v0;
  v3 = (*(*v0 + 112))();
  if (v1)
  {
    return v0;
  }

  v6 = v3;
  result = type metadata accessor for AceObjectFeatureWrapper(0, *(v2 + 144), v4, v5);
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_1_6();
    outlined copy of Data._Representation(v8, v9);

    v10 = OUTLINED_FUNCTION_1_6();
    v12 = v11(v10);
    v13 = OUTLINED_FUNCTION_1_6();
    outlined consume of Data._Representation(v13, v14);
    if (v12)
    {
      v0 = *(v12 + 16);
      swift_unknownObjectRetain();
    }

    else
    {
      v0 = 0x8000000223093F30;
      lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
      v15 = swift_allocError();
      OUTLINED_FUNCTION_0_4(v15, v16);
    }

    return v0;
  }

  __break(1u);
  return result;
}

uint64_t AceObjectStreamAccessor.retrieve(interactionId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = (*(*v2 + 120))();
  if (!v3)
  {
    v19[1] = v7;
    MEMORY[0x28223BE20](v7);
    v16 = *(v6 + 144);
    v17 = a1;
    v18 = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v11 = type metadata accessor for InteractionWrapper(0, v16, v9, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    v13 = lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]();
    v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in AceObjectStreamAccessor.retrieve(interactionId:), &v15, v8, v11, v12, v13, MEMORY[0x277D84950], v19);
  }

  return v2;
}

uint64_t partial apply for closure #1 in AceObjectStreamAccessor.retrieve(interactionId:)(double *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = a1[2];
  v11 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = type metadata accessor for AceObjectFeatureWrapper(0, v7, a3, a4);
  if ((*(v13 + 128))(v11, v12, 0, v8, v9))
  {

    swift_unknownObjectRetain();
    v14 = OUTLINED_FUNCTION_1_6();
    InteractionWrapper.init(interactionId:timestamp:feature:)(v14, v15, v16, v7, v17, v10);
  }

  else
  {
    lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    v19 = swift_allocError();
    result = OUTLINED_FUNCTION_0_4(v19, v20);
    *a2 = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [InteractionWrapper<Data>] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [InteractionWrapper<Data>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [InteractionWrapper<Data>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, _sSay12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [InteractionWrapper<Data>] and conformance [A]);
  }

  return result;
}

uint64_t AceObjectStreamAccessor.__deallocating_deinit()
{
  v0 = BaseStreamAccessor.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t vtable thunk for BaseStreamAccessor.retrieve(interactionId:) dispatching to AceObjectStreamAccessor.retrieve(interactionId:)@<X0>(uint64_t *a1@<X8>)
{
  result = AceObjectStreamAccessor.retrieve(interactionId:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t BaseStreamAccessor.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BaseStreamAccessor.init(identifier:)(a1, a2);
  return v4;
}

id BaseStreamAccessor.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  objc_allocWithZone(FSFCurareInteractionStream);

  result = @nonobjc FSFCurareInteractionStream.init(streamId:sourceType:)(a1, a2, 0);
  if (result)
  {
    v7 = result;

    *(v3 + 16) = v7;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BaseStreamAccessor.insert(interactionId:feature:)()
{
  OUTLINED_FUNCTION_0_5();
  _StringGuts.grow(_:)(47);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x223DD3460](v0);

  OUTLINED_FUNCTION_1_7();
  v1 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v1);
  *v2 = 0xD00000000000002CLL;
  *(v2 + 8) = 0x8000000223093F60;
  *(v2 + 16) = 1;
  return swift_willThrow();
}

uint64_t BaseStreamAccessor.retrieveSerializedInteractions(interactionId:)(uint64_t a1, uint64_t a2)
{
  v5 = 0xD000000000000014;
  v6 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223092B00;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v9 = [v6 retrieve_];

  v10 = "is not overridden for class ";
  if (v9)
  {
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v11 + 16))
    {

      AnyHashable.init<A>(_:)();
      specialized Dictionary.subscript.getter(v11, &v16, v15);

      outlined destroy of AnyHashable(v15);
      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
        if (swift_dynamicCast())
        {
          return a1;
        }
      }

      else
      {
        outlined destroy of Any?(&v16);
      }

      v10 = "Item does not exist!";
      v5 = 0xD000000000000018;
    }

    else
    {
    }
  }

  v13 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v13);
  *v14 = v5;
  *(v14 + 8) = v10 | 0x8000000000000000;
  *(v14 + 16) = 0;
  return swift_willThrow();
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    outlined init with copy of Any(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *BaseStreamAccessor.retrieveSerializedInteractions(interactionId:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223092B00;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v8 = [v5 retrieveWithInteractionWrapper_];

  if (!v8 || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25FSFFeatureStoreBiomeEventCGMd, &_sSaySo25FSFFeatureStoreBiomeEventCGMR), v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v8, v9 = specialized Dictionary.subscript.getter(a1, a2, v5), , !v9))
  {
    v34 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
    OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v34);
    *v35 = 0xD000000000000014;
    *(v35 + 8) = 0x8000000223093F90;
    *(v35 + 16) = 0;
    swift_willThrow();
    return v5;
  }

  v10 = specialized Array.count.getter(v9);
  if (!v10)
  {

    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v42 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v5 = v42;
    v37 = v9 & 0xC000000000000001;
    v38 = v11;
    v14 = v9;
    do
    {
      if (v37)
      {
        v15 = MEMORY[0x223DD38A0](v13, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 interactionId];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      [v16 timestamp];
      v22 = v21;
      v23 = [v16 featureData];
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v39[0] = v24;
      v39[1] = v26;
      InteractionWrapper.init(interactionId:timestamp:feature:)(v18, v20, v39, MEMORY[0x277CC9318], v40, v22);

      v27 = v40[0];
      v28 = v40[1];
      v29 = v40[2];
      v30 = v41;
      v42 = v5;
      v32 = v5[2];
      v31 = v5[3];
      if (v32 >= v31 >> 1)
      {
        v36 = v41;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v30 = v36;
        v5 = v42;
      }

      ++v13;
      v5[2] = v32 + 1;
      v33 = &v5[5 * v32];
      v33[4] = v27;
      v33[5] = v28;
      v33[6] = v29;
      *(v33 + 7) = v30;
      v9 = v14;
    }

    while (v38 != v13);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t BaseStreamAccessor.retrieve(interactionId:)()
{
  OUTLINED_FUNCTION_0_5();
  _StringGuts.grow(_:)(54);
  MEMORY[0x223DD3460](0xD000000000000033, 0x8000000223093FD0);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x223DD3460](v0);

  OUTLINED_FUNCTION_1_7();
  v1 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  v2 = OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v1);
  return OUTLINED_FUNCTION_3_4(v2, v3);
}

{
  OUTLINED_FUNCTION_0_5();
  _StringGuts.grow(_:)(74);
  MEMORY[0x223DD3460](0xD000000000000047, 0x8000000223094010);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x223DD3460](v0);

  OUTLINED_FUNCTION_1_7();
  v1 = lazy protocol witness table accessor for type FeatureStoreError and conformance FeatureStoreError();
  v2 = OUTLINED_FUNCTION_2_3(&type metadata for FeatureStoreError, v1);
  return OUTLINED_FUNCTION_3_4(v2, v3);
}

uint64_t BaseStreamAccessor.__deallocating_deinit()
{
  BaseStreamAccessor.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id @nonobjc FSFCurareInteractionStream.init(streamId:sourceType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = MEMORY[0x223DD33D0](a1);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithStreamId:v5 sourceType:a3];

  return v6;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x223DD3830](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy12FeatureStore18InteractionWrapperVy10Foundation4DataVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12FeatureStore18InteractionWrapperVy10Foundation4DataVGMd, &_s12FeatureStore18InteractionWrapperVy10Foundation4DataVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDys11AnyHashableVypGGMd, &_ss23_ContiguousArrayStorageCySDys11AnyHashableVypGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t FeatureStoreStreamAccessor.stream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_stream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMd, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeatureStoreStreamAccessor.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FeatureStoreStreamAccessor.init(identifier:)(a1, a2);
  return v4;
}

uint64_t FeatureStoreStreamAccessor.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMd, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = [objc_opt_self() biomeStoreConfig];
  *(v2 + 16) = v10;
  type metadata accessor for FeatureStoreBiomeEvent();
  v11 = v10;
  Streams.StoreStream.init(_:storeConfig:)();
  v12 = OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_stream;
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_stream, v9, v4);
  (*(v6 + 16))(v9, v2 + v12, v4);
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(v13, v14, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR, v15);
  v16 = StoreStreamProtocol.source()();
  (*(v6 + 8))(v9, v4);
  *(v3 + OBJC_IVAR____TtC12FeatureStore26FeatureStoreStreamAccessor_streamSource) = v16;
  return v3;
}

uint64_t FeatureStoreStreamAccessor.retrieve(query:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11BiomePubSub10PublishersO6FilterVy_So12BMStoreEventCGMd, &_s11BiomePubSub10PublishersO6FilterVy_So12BMStoreEventCGMR);
  OUTLINED_FUNCTION_0();
  v32 = v2;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11BiomePubSub21BookmarkablePublisherVySo12BMStoreEventCGMd, &_s11BiomePubSub21BookmarkablePublisherVySo12BMStoreEventCGMR);
  OUTLINED_FUNCTION_0();
  v30 = v12;
  v31 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v14);
  (*((*v17 & *a1) + 0x88))(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMd, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR);
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(v19, v20, &_s12BiomeStreams0B0O11StoreStreamVy_07FeatureC00ecA5EventCGMR, v21);
  StoreStreamProtocol.publisher(startDate:endDate:maxEvents:lastN:reversed:)();
  outlined destroy of Date?(v9);
  outlined destroy of Date?(v11);
  OUTLINED_FUNCTION_3_5();
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x277D84F90];
  v23 = (v22 + 16);
  OUTLINED_FUNCTION_3_5();
  *(swift_allocObject() + 16) = a1;
  lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(&lazy protocol witness table cache variable for type BookmarkablePublisher<BMStoreEvent<FeatureStoreBiomeEvent>> and conformance BookmarkablePublisher<A>, &_s11BiomePubSub21BookmarkablePublisherVySo12BMStoreEventCGMd, &_s11BiomePubSub21BookmarkablePublisherVySo12BMStoreEventCGMR, MEMORY[0x277CF1760]);
  v24 = a1;
  v25 = v30;
  PublisherProtocol.filter(isIncluded:)();

  lazy protocol witness table accessor for type Streams.StoreStream<FeatureStoreBiomeEvent> and conformance Streams.StoreStream<A>(&lazy protocol witness table cache variable for type Publishers.Filter<BMStoreEvent<FeatureStoreBiomeEvent>> and conformance Publishers.Filter<A>, &_s11BiomePubSub10PublishersO6FilterVy_So12BMStoreEventCGMd, &_s11BiomePubSub10PublishersO6FilterVy_So12BMStoreEventCGMR, MEMORY[0x277CF1740]);

  v26 = v32;

  (*(v33 + 8))(v5, v26);
  (*(v31 + 8))(v16, v25);
  swift_beginAccess();
  v27 = *v23;

  return v27;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in FeatureStoreStreamAccessor.retrieve(query:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *((*MEMORY[0x277D85000] & *a2) + 0xA0);
  v12 = *(v11(v8) + 16);

  if (!v12)
  {
    return 1;
  }

  v14 = v11(v13);
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v14);
  v16 = [a1 eventBody];
  if (v16)
  {
    v17 = v16;
    v18 = *&v16[OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId];
    v19 = *&v16[OBJC_IVAR___FSFFeatureStoreBiomeEvent_interactionId + 8];

    LOBYTE(v18) = specialized Set.contains(_:)(v18, v19, v15);

    return v18 & 1;
  }

  else
  {

    v21 = Logger.accessor.unsafeMutableAddressor();
    (*(v6 + 16))(v10, v21, v4);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v30[7] = [v22 error];
      type metadata accessor for BMStoreError();
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_223066000, v23, v24, "EventBody is nil. Store error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    (*(v6 + 8))(v10, v4);
    return 0;
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x223DD3650](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}