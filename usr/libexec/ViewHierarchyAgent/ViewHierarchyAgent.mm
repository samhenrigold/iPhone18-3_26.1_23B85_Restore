uint64_t SystemXPCRequestExecutor.connection.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t SystemXPCRequestExecutor.init(targetConnection:)(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return v6;
}

uint64_t SystemXPCRequestExecutor.deinit()
{

  dispatch thunk of XPCConnection.cancel()();

  return v1;
}

uint64_t SystemXPCRequestExecutor.performRequest(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = v3;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[4] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v5 = type metadata accessor for XPCDictionary();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;
  v4[5] = a3;
  v4[6] = v3;

  return _swift_task_switch(SystemXPCRequestExecutor.performRequest(_:using:), 0);
}

uint64_t SystemXPCRequestExecutor.performRequest(_:using:)()
{
  v17 = v0[14];
  v15 = v0[13];
  v16 = v0[12];
  v18 = v0[11];
  v19 = v0[9];
  v14 = v0[8];
  v13 = v0[7];
  v0[4] = v0;
  XPCDictionary.init()();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("request", 7uLL, 1);
  ViewHierarchyRequest.data.getter(v13, v14);
  XPCDictionary.subscript.setter();
  (*(v16 + 16))(v15, v17, v18);
  v19;
  *(swift_task_alloc() + 16) = v19;
  XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
  v10 = v12[14];
  v7 = v12[13];
  v8 = v12[11];
  v9 = v12[10];
  v5 = v12[9];
  v6 = v12[12];

  v1 = *(v6 + 8);
  v12[15] = v1;
  v12[16] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v7, v8);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("performRequest(_:using:)", 0x18uLL, 1);
  v12[17] = v2._object;

  v11 = swift_task_alloc();
  v12[18] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v3 = swift_task_alloc();
  v12[19] = v3;
  *v3 = v12[4];
  v3[1] = SystemXPCRequestExecutor.performRequest(_:using:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20, 0, 0, v2._countAndFlagsBits, v2._object, partial apply for closure #2 in SystemXPCRequestExecutor.performRequest(_:using:), v11);
}

{
  v4 = *v1;
  *(v4 + 32) = *v1;
  *(v4 + 160) = v0;

  if (v0)
  {
    v2 = SystemXPCRequestExecutor.performRequest(_:using:);
  }

  else
  {

    v2 = SystemXPCRequestExecutor.performRequest(_:using:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v1 = *(v0 + 120);
  *(v0 + 32) = v0;
  v1();

  v2 = *(*(v0 + 32) + 8);

  return v2();
}

{
  v4 = v0[15];
  v5 = v0[14];
  v3 = v0[11];
  v0[4] = v0;

  v4(v5, v3);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t closure #1 in SystemXPCRequestExecutor.performRequest(_:using:)(void *a1, void *a2)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fd", 2uLL, 1);
  fd = [a2 fileDescriptor];
  v6 = String.utf8CString.getter();

  xpc_dictionary_set_fd(a1, (v6 + 32), fd);
  swift_unknownObjectRelease();
}

uint64_t closure #2 in SystemXPCRequestExecutor.performRequest(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v10 = a2;
  v12 = a3;
  v21 = partial apply for closure #1 in closure #2 in SystemXPCRequestExecutor.performRequest(_:using:);
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v16 = *(v20 - 8);
  v17 = v20 - 8;
  v14 = v16;
  v15 = *(v16 + 64);
  v9 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20, v3, v4);
  v19 = &v9 - v9;
  v26 = type metadata accessor for XPCDictionary();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v13, v10, v12);
  v25 = &v9 - v11;
  v30 = v5;
  v29 = v6;
  v28 = v7;
  v27 = *(v6 + 16);

  (*(v23 + 16))(v25, v12, v26);
  (*(v16 + 16))(v19, v13, v20);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  (*(v16 + 32))(v22 + v18, v19, v20);
  dispatch thunk of XPCConnection.send(message:replyHandler:)();

  (*(v23 + 8))(v25, v26);
}

uint64_t closure #1 in closure #2 in SystemXPCRequestExecutor.performRequest(_:using:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v25 = 0;
  v24 = 0;
  v26 = 0;
  v13 = type metadata accessor for XPCError();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13, v2, v3);
  v17 = v12 - v16;
  v26 = v12 - v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  v20 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v19, v4, v5);
  v22 = v12 - v20;
  v25 = v6;
  v24 = v7;
  outlined init with copy of Result<XPCDictionary, XPCError>(v6, v12 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v17, v22, v13);
    v26 = v17;
    lazy protocol witness table accessor for type XPCError and conformance XPCError();
    v12[0] = swift_allocError();
    (*(v14 + 16))(v11, v17, v13);
    v12[1] = &v23;
    v23 = v12[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume<>()(v8);
    v9 = type metadata accessor for XPCDictionary();
    return (*(*(v9 - 8) + 8))(v22);
  }
}

uint64_t protocol witness for RequestExecutor.performRequest(_:using:) in conformance SystemXPCRequestExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for RequestExecutor.performRequest(_:using:) in conformance SystemXPCRequestExecutor;

  return SystemXPCRequestExecutor.performRequest(_:using:)(a1, a2, a3);
}

uint64_t protocol witness for RequestExecutor.performRequest(_:using:) in conformance SystemXPCRequestExecutor()
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_100002334()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in SystemXPCRequestExecutor.performRequest(_:using:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return closure #1 in closure #2 in SystemXPCRequestExecutor.performRequest(_:using:)(a1, v3);
}

uint64_t outlined init with copy of Result<XPCDictionary, XPCError>(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for XPCError();
  }

  else
  {
    v2 = type metadata accessor for XPCDictionary();
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t lazy protocol witness table accessor for type XPCError and conformance XPCError()
{
  v2 = lazy protocol witness table cache variable for type XPCError and conformance XPCError;
  if (!lazy protocol witness table cache variable for type XPCError and conformance XPCError)
  {
    type metadata accessor for XPCError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type XPCError and conformance XPCError);
    return WitnessTable;
  }

  return v2;
}

uint64_t ViewHierarchyAgentError.errorDescription.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid request", 0xFuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Invalid file descriptor received", 0x20uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to connect to TargetHub, another connection already exists", 0x41uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to connect to TargetHub, connection timed out", 0x34uLL, 1)._countAndFlagsBits;
  }
}

BOOL static ViewHierarchyAgentError.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError()
{
  v2 = lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError;
  if (!lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError;
  if (!lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError;
  if (!lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ViewHierarchyAgentError(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewHierarchyAgentError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, logger);
  __swift_project_value_buffer(v1, logger);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchy", 0x1AuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ViewHierarchyAgent", 0x12uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, logger);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t outlined init with copy of RequestExecutor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t CaptureController.temporaryDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory;
  v2 = type metadata accessor for URL();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t CaptureController.init(requestExecutor:)(void *a1)
{
  v71 = a1;
  v95 = 0;
  v57 = partial apply for implicit closure #1 in CaptureController.init(requestExecutor:);
  v58 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v59 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = closure #1 in OSLogArguments.append(_:)partial apply;
  v61 = partial apply for closure #1 in OSLogArguments.append(_:);
  v62 = "Fatal error";
  v63 = "ViewHierarchyAgent/CaptureController.swift";
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v69 = 0;
  v64 = type metadata accessor for Logger();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1, v2);
  v68 = v32 - v67;
  v80 = type metadata accessor for UUID();
  v77 = *(v80 - 8);
  v78 = v80 - 8;
  v70 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v69, v3, v4);
  v79 = v32 - v70;
  v91 = type metadata accessor for URL();
  v88 = *(v91 - 8);
  v89 = v91 - 8;
  v73 = *(v88 + 64);
  v72 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v71, v5, v6);
  v83 = v32 - v72;
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7, v32 - v72, v8);
  v94 = v32 - v74;
  v106 = v9;
  v105 = v10;
  v75 = v110;
  outlined init with copy of RequestExecutor(v9, v110);
  outlined init with take of RequestExecutor(v75, (v90 + 16));
  v85 = &_s7Mercury13XPCConnectionC30withUnsafeUnderlyingConnectionyxxSo13OS_xpc_object_pKXEKlFTj_ptr;
  v11 = objc_opt_self();
  v86 = &SystemXPCRequestExecutor;
  v76 = [v11 defaultManager];
  v84 = [v76 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init()();
  v81 = UUID.uuidString.getter();
  v82 = v12;
  (*(v77 + 8))(v79, v80);
  URL.appendingPathComponent(_:)();
  v13 = v94;

  v93 = *(v88 + 8);
  v92 = v88 + 8;
  v93(v83, v91);

  v87 = &SystemXPCRequestExecutor;
  (*(v88 + 32))(v90 + OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory, v13, v91);
  v109 = 0;
  v98 = [objc_opt_self() v86[10].name];
  (*(v88 + 16))(v13, v87[15].base_meths + v90, v91);
  URL._bridgeToObjectiveC()(v14);
  v97 = v15;
  v93(v94, v91);
  v104 = v109;
  v99 = [v98 createDirectoryAtURL:v97 withIntermediateDirectories:1 attributes:v95 error:&v104];
  v96 = v104;
  v104;
  v16 = v109;
  v109 = v96;

  if (v99)
  {
    __swift_destroy_boxed_opaque_existential_1(v71);
    return v90;
  }

  else
  {
    v41 = v109;
    v43 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = v68;
    v42 = 0;
    swift_errorRetain();
    v103 = v43;
    v19 = logger.unsafeMutableAddressor();
    (*(v65 + 16))(v18, v19, v64);
    swift_errorRetain();
    v46 = 7;
    v47 = swift_allocObject();
    *(v47 + 16) = v43;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();
    v44 = 17;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = 32;
    v20 = swift_allocObject();
    v21 = v47;
    v48 = v20;
    *(v20 + 16) = v57;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v48;
    v52 = v22;
    *(v22 + 16) = v58;
    *(v22 + 24) = v23;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v51 = _allocateUninitializedArray<A>(_:)();
    v53 = v24;

    v25 = v49;
    v26 = v53;
    *v53 = v59;
    v26[1] = v25;

    v27 = v50;
    v28 = v53;
    v53[2] = v60;
    v28[3] = v27;

    v29 = v52;
    v30 = v53;
    v53[4] = v61;
    v30[5] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v55, v56))
    {
      v31 = v42;
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v35 = createStorage<A>(capacity:type:)(0, v33, v33);
      v36 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v37 = &v102;
      v102 = v34;
      v38 = &v108;
      v108 = v35;
      v39 = &v107;
      v107 = v36;
      serialize(_:at:)(2, &v102);
      serialize(_:at:)(1, v37);
      v100 = v59;
      v101 = v49;
      closure #1 in osLogInternal(_:log:type:)(&v100, v37, v38, v39);
      v40 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v100 = v60;
        v101 = v50;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v102, &v108, &v107);
        v32[1] = 0;
        v100 = v61;
        v101 = v52;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v102, &v108, &v107);
        _os_log_impl(&_mh_execute_header, v55, v56, "Failed to remove temporary directory: %s", v34, 0xCu);
        destroyStorage<A>(_:count:)(v35, 0);
        destroyStorage<A>(_:count:)(v36, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v65 + 8))(v68, v64);
    implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t CaptureController.deinit()
{
  v49 = partial apply for implicit closure #1 in CaptureController.deinit;
  v50 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v51 = closure #1 in OSLogArguments.append(_:)partial apply;
  v52 = closure #1 in OSLogArguments.append(_:)partial apply;
  v53 = closure #1 in OSLogArguments.append(_:)partial apply;
  v77 = 0;
  v75 = 0;
  v54 = 0;
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v0, v1);
  v59 = v24 - v58;
  v64 = type metadata accessor for URL();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v60 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64, v2, v3);
  v4 = v24 - v60;
  v65 = v24 - v60;
  v77 = v5;
  v80 = 0;
  v70 = [objc_opt_self() defaultManager];
  (*(v62 + 16))(v4, v61 + OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory, v64);
  URL._bridgeToObjectiveC()(v6);
  v69 = v7;
  v66 = *(v62 + 8);
  v67 = v62 + 8;
  v66(v65, v64);
  v76 = v80;
  v71 = [v70 removeItemAtURL:v69 error:&v76];
  v68 = v76;
  v76;
  v8 = v80;
  v80 = v68;

  if ((v71 & 1) == 0)
  {
    v33 = v80;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = v59;
    v34 = 0;
    swift_errorRetain();
    v75 = v35;
    v11 = logger.unsafeMutableAddressor();
    (*(v56 + 16))(v10, v11, v55);
    swift_errorRetain();
    v38 = 7;
    v39 = swift_allocObject();
    *(v39 + 16) = v35;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    v36 = 17;
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v37 = 32;
    v12 = swift_allocObject();
    v13 = v39;
    v40 = v12;
    *(v12 + 16) = v49;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v40;
    v44 = v14;
    *(v14 + 16) = v50;
    *(v14 + 24) = v15;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v43 = _allocateUninitializedArray<A>(_:)();
    v45 = v16;

    v17 = v41;
    v18 = v45;
    *v45 = v51;
    v18[1] = v17;

    v19 = v42;
    v20 = v45;
    v45[2] = v52;
    v20[3] = v19;

    v21 = v44;
    v22 = v45;
    v45[4] = v53;
    v22[5] = v21;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v47, v48))
    {
      v23 = v34;
      v26 = static UnsafeMutablePointer.allocate(capacity:)();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v27 = createStorage<A>(capacity:type:)(0, v25, v25);
      v28 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v29 = &v74;
      v74 = v26;
      v30 = &v79;
      v79 = v27;
      v31 = &v78;
      v78 = v28;
      serialize(_:at:)(2, &v74);
      serialize(_:at:)(1, v29);
      v72 = v51;
      v73 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v72, v29, v30, v31);
      v32 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v72 = v52;
        v73 = v42;
        closure #1 in osLogInternal(_:log:type:)(&v72, &v74, &v79, &v78);
        v24[1] = 0;
        v72 = v53;
        v73 = v44;
        closure #1 in osLogInternal(_:log:type:)(&v72, &v74, &v79, &v78);
        _os_log_impl(&_mh_execute_header, v47, v48, "Failed to remove temporary directory: %s", v26, 0xCu);
        destroyStorage<A>(_:count:)(v27, 0);
        destroyStorage<A>(_:count:)(v28, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v56 + 8))(v59, v55);
  }

  __swift_destroy_boxed_opaque_existential_1((v61 + 16));
  v66((v61 + OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory), v64);
  return v61;
}

uint64_t CaptureController.performRequest(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = v3;
  v4[14] = a3;
  v4[13] = a2;
  v4[12] = a1;
  v4[9] = v4;
  v4[7] = 0;
  v4[8] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[7] = a1;
  v4[8] = a2;
  v4[10] = a3;
  v4[11] = v3;
  return _swift_task_switch(CaptureController.performRequest(_:using:), 0);
}

uint64_t CaptureController.performRequest(_:using:)()
{
  v1 = v0[15];
  v0[9] = v0;
  outlined init with copy of RequestExecutor(v1 + 16, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v10 = (*(v9 + 8) + **(v9 + 8));
  v2 = swift_task_alloc();
  v7[16] = v2;
  *v2 = v7[9];
  v2[1] = CaptureController.performRequest(_:using:);
  v3 = v7[14];
  v4 = v7[13];
  v5 = v7[12];

  return v10(v5, v4, v3, v8, v9);
}

{
  v4 = *v1;
  *(v4 + 72) = *v1;
  *(v4 + 136) = v0;

  if (v0)
  {
    v2 = CaptureController.performRequest(_:using:);
  }

  else
  {
    v2 = CaptureController.performRequest(_:using:);
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 72) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v0 + 72) + 8);

  return v1();
}

{
  *(v0 + 72) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(*(v3 + 72) + 8);

  return v1();
}

uint64_t CaptureController.createTemporaryFile()@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v36 = 0;
  v35 = 0;
  v10[1] = 0;
  v19 = type metadata accessor for UUID();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1, v2);
  v18 = v10 - v11;
  v31 = type metadata accessor for URL();
  v22 = *(v31 - 8);
  v23 = v31 - 8;
  v13 = v22[8];
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31, v3, v31);
  v24 = v10 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v10 - v12, v4, v5);
  v34 = v10 - v14;
  v36 = v10 - v14;
  v35 = v15;
  v30 = v22[2];
  v29 = v22 + 2;
  v30(v6, v15 + OBJC_IVAR____TtC18ViewHierarchyAgent17CaptureController_temporaryDirectory);
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v21 = v7;
  (*(v16 + 8))(v18, v19);
  URL.appendingPathComponent(_:)();

  v33 = v22[1];
  v32 = v22 + 1;
  v33(v24, v31);
  v27 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v25 = v8;
  v26 = String._bridgeToObjectiveC()();

  [v27 createFileAtPath:v26 contents:0 attributes:?];

  (v30)(v28, v34, v31);
  return (v33)(v34, v31);
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void destroyStorage<A>(_:count:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    UnsafeMutablePointer.deallocate()();
  }
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *specialized _StringGuts._deconstructUTF8<A>(scratch:)(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v3 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v4);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v18 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    specialized Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v5 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v3 = _swift_stdlib_malloc_size(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:)();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)partial apply(_BYTE **a1, uint64_t a2, uint64_t a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply()
{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

void *closure #1 in OSLogArguments.append(_:)partial apply(void *a1, uint64_t a2, uint64_t *a3)
{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

{
  return closure #1 in OSLogArguments.append(_:)(a1, a2, a3, *(v3 + 16));
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t type metadata accessor for CaptureController(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for CaptureController;
  if (!type metadata singleton initialization cache for CaptureController)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t type metadata completion function for CaptureController(uint64_t a1)
{
  updated = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

Swift::Void __swiftcall enterSandbox()()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyAgent", 0x1FuLL, 1);
  String.utf8CString.getter();

  v5 = _set_user_dir_suffix();
  swift_unknownObjectRelease();

  if (v5)
  {
    v4 = confstr(_:)(65537);
    if (v0)
    {
      String.realpath.getter(v4, v0);
      v2 = v1;

      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {

      return;
    }

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unable to read _CS_DARWIN_USER_TEMP_DIR", 0x27uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Could not create temporary directory.", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t confstr(_:)(int a1)
{
  v5 = a1;
  v4[0] = Data.init(repeating:count:)();
  v4[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Data.withUnsafeMutableBytes<A>(_:)();
  outlined destroy of Data(v4);
  return v3;
}

uint64_t String.realpath.getter(uint64_t a1, uint64_t a2)
{
  v9[2] = a1;
  v9[3] = a2;

  v7 = String.utf8CString.getter();

  v8 = realpath_DARWIN_EXTSN((v7 + 32), 0);
  swift_unknownObjectRelease();

  if (!v8)
  {
    return 0;
  }

  v4 = String.init(cString:)();
  v5 = v2;

  v9[0] = v4;
  v9[1] = v5;
  UnsafeMutablePointer.deallocate()();
  outlined destroy of String?(v9);
  return v4;
}

int64_t closure #1 in confstr(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int64_t *a4@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      v8 = a2 - a1;
    }

    else
    {
      __break(1u);
    }

    if (v8 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v4 = UnsafeMutableBufferPointer.baseAddress.getter();
  result = confstr(a3, v4, 0x400uLL);
  if (result <= 0)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    if (a1)
    {
      if (a2)
      {
        v7 = a2 - a1;
      }

      else
      {
        __break(1u);
      }

      if (v7 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    result = UnsafeMutableBufferPointer.baseAddress.getter();
    if (result)
    {
      result = String.init(cString:)();
      *a4 = result;
      a4[1] = v6;
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
    }
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t ViewHierarchyRequest.data.getter(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v15 = "Fatal error";
  v16 = "Unexpectedly found nil while unwrapping an Optional value";
  v17 = "ViewHierarchyAgent/ViewHierarchyRequest.swift";
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v20 = type metadata accessor for String.Encoding();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v6 - v23;
  v27 = __chkstk_darwin(v19, v18, v2);
  v28 = v3;
  v13 = v19;
  v14 = v18;
  v10 = v18;
  v9 = v19;

  v25 = v9;
  v26 = v10;
  static String.Encoding.utf8.getter();
  default argument 1 of String.data(using:allowLossyConversion:)();
  v11 = String.data(using:allowLossyConversion:)();
  v12 = v4;
  (*(v21 + 8))(v24, v20);
  if ((v12 & 0xF000000000000000) == 0xF000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v11;
    v8 = v12;
  }

  v6[1] = v8;
  v6[0] = v7;

  return v6[0];
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewHierarchyRequest(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewHierarchyRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

void *ViewHierarchyAgent.systemListenerQueue.getter()
{
  v2 = *(v0 + 16);
  v2;
  return v2;
}

void *ViewHierarchyAgent.remoteListenerQueue.getter()
{
  v2 = *(v0 + 24);
  v2;
  return v2;
}

void *ViewHierarchyAgent.targetHubListenerQueue.getter()
{
  v2 = *(v0 + 32);
  v2;
  return v2;
}

uint64_t ViewHierarchyAgent.systemListener.getter()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t ViewHierarchyAgent.remoteListener.getter()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t ViewHierarchyAgent.targetHubListener.getter()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t ViewHierarchyAgent.captureControllers.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 88);

  swift_endAccess();
  return v2;
}

uint64_t ViewHierarchyAgent.captureControllers.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 88) = a1;

  swift_endAccess();
}

uint64_t ViewHierarchyAgent.pendingConnections.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 96);

  swift_endAccess();
  return v2;
}

uint64_t ViewHierarchyAgent.pendingConnections.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 96) = a1;

  swift_endAccess();
}

void static ViewHierarchyAgent.main()()
{
  enterSandbox()();
  ViewHierarchyAgent.shared.unsafeMutableAddressor();

  ViewHierarchyAgent.run()();
}

uint64_t *ViewHierarchyAgent.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static ViewHierarchyAgent.shared;
}

Swift::Void __swiftcall ViewHierarchyAgent.run()()
{
  ViewHierarchyAgent.startSystemListener()();
  ViewHierarchyAgent.startRemoteListener()();
  ViewHierarchyAgent.startTargetHubListener()();
  dispatch_main();
}

void *one-time initialization function for shared()
{
  type metadata accessor for ViewHierarchyAgent();
  result = ViewHierarchyAgent.__allocating_init()();
  static ViewHierarchyAgent.shared = result;
  return result;
}

uint64_t static ViewHierarchyAgent.shared.getter()
{
  v1 = *ViewHierarchyAgent.shared.unsafeMutableAddressor();

  return v1;
}

void *ViewHierarchyAgent.().init()()
{
  v62 = 0;
  v48 = 0;
  v28 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v1, v2);
  v38 = &v28 - v28;
  v29 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48, v3, v4);
  v37 = &v28 - v29;
  v30 = (*(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48, v5, v6);
  v36 = &v28 - v30;
  v62 = v0;
  v34 = type metadata accessor for OS_dispatch_queue();
  v32 = 19;
  v55 = 1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SystemListenerQueue", 0x13uLL, 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v38);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v32;
  v9 = v55;
  v61[2] = v7;
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RemoteListenerQueue", v8, v9 & 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v38);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v55;
  v61[3] = v10;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TargetHubListenerQueue", 0x16uLL, v11 & 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v38);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = v61;
  v61[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32V_18ViewHierarchyAgent17CaptureControllerCtMd, &_ss5Int32V_18ViewHierarchyAgent17CaptureControllerCtMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  type metadata accessor for CaptureController(v48);
  v40 = &type metadata for Int32;
  v41 = &protocol witness table for Int32;
  v13[11] = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32V_ScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGtMd, &_ss5Int32V_ScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGtMR);
  v42 = _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  v13[12] = Dictionary.init(dictionaryLiteral:)();
  v50 = type metadata accessor for SystemXPCListenerConnection();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyAgent.xpc", 0x23uLL, v55 & 1);
  countAndFlagsBits = v14._countAndFlagsBits;
  object = v14._object;
  v44 = v61[2];
  v44;
  v15 = static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)();
  v16 = v61;
  v46 = v15;
  v47 = v17;

  v18 = v47;
  v16[5] = v46;
  v16[6] = v18;
  type metadata accessor for RemoteXPCListenerConnection();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyAgent.remote", 0x26uLL, v55 & 1);
  v49 = v19._countAndFlagsBits;
  v52 = v19._object;
  v51 = v61[3];
  v51;
  v53 = static RemoteXPCConnection.remoteServiceListenerConnection(serviceName:targetQueue:)();
  v54 = v20;

  v21 = v54;
  v22 = v55;
  v23 = v61;
  v61[7] = v53;
  v23[8] = v21;
  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyTargetHub.xpc", 0x27uLL, v22 & 1);
  v56 = v24._countAndFlagsBits;
  v58 = v24._object;
  v57 = v61[4];
  v57;
  v59 = static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)();
  v60 = v25;

  v26 = v60;
  result = v61;
  v61[9] = v59;
  result[10] = v26;
  return result;
}

Swift::Void __swiftcall ViewHierarchyAgent.startSystemListener()()
{
  v42 = 0;
  v50 = 0;
  v26 = 0;
  v39 = type metadata accessor for Logger();
  v27 = v39;
  v28 = *(v39 - 8);
  v38 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  __chkstk_darwin(v39 - 8, v39, v0);
  v36 = &v10 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v36;
  v50 = v1;
  v35 = *(v1 + 40);
  v2 = v35;
  v33 = *(v1 + 48);

  v32 = *v2;

  dispatch thunk of XPCListenerConnection.setPeerConnectionHandler(_:)();
  v3 = v34;

  v37 = *(v3 + 40);

  dispatch thunk of XPCConnection.activate()();
  v4 = v36;

  v5 = logger.unsafeMutableAddressor();
  (*(v38 + 16))(v4, v5, v39);
  v44 = Logger.logObject.getter();
  v40 = v44;
  v43 = static os_log_type_t.info.getter();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v6 = v26;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = 0;
    v18 = createStorage<A>(capacity:type:)(0, v14, v14);
    v16 = v18;
    v19 = createStorage<A>(capacity:type:)(v15, &type metadata for Any + 8, &type metadata for Any + 8);
    v49 = v17;
    v48 = v18;
    v47 = v19;
    v20 = 0;
    v21 = &v49;
    serialize(_:at:)(0, &v49);
    serialize(_:at:)(v20, v21);
    v46 = v45;
    v22 = &v10;
    __chkstk_darwin(&v10, v7, v8);
    v23 = &v10 - 6;
    *(&v10 - 4) = v9;
    *(&v10 - 3) = &v48;
    *(&v10 - 2) = &v47;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v25 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v40, v41, "Started SystemXPC listener", v13, 2u);
      v11 = 0;
      destroyStorage<A>(_:count:)(v16, 0);
      destroyStorage<A>(_:count:)(v19, v11);
      UnsafeMutablePointer.deallocate()();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v29 + 8))(v31, v27);
}

Swift::Void __swiftcall ViewHierarchyAgent.startRemoteListener()()
{
  v42 = 0;
  v50 = 0;
  v26 = 0;
  v39 = type metadata accessor for Logger();
  v27 = v39;
  v28 = *(v39 - 8);
  v38 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  __chkstk_darwin(v39 - 8, v39, v0);
  v36 = &v10 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v36;
  v50 = v1;
  v35 = *(v1 + 56);
  v2 = v35;
  v33 = *(v1 + 64);

  v32 = *v2;

  dispatch thunk of XPCListenerConnection.setPeerConnectionHandler(_:)();
  v3 = v34;

  v37 = *(v3 + 56);

  dispatch thunk of XPCConnection.activate()();
  v4 = v36;

  v5 = logger.unsafeMutableAddressor();
  (*(v38 + 16))(v4, v5, v39);
  v44 = Logger.logObject.getter();
  v40 = v44;
  v43 = static os_log_type_t.info.getter();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v6 = v26;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = 0;
    v18 = createStorage<A>(capacity:type:)(0, v14, v14);
    v16 = v18;
    v19 = createStorage<A>(capacity:type:)(v15, &type metadata for Any + 8, &type metadata for Any + 8);
    v49 = v17;
    v48 = v18;
    v47 = v19;
    v20 = 0;
    v21 = &v49;
    serialize(_:at:)(0, &v49);
    serialize(_:at:)(v20, v21);
    v46 = v45;
    v22 = &v10;
    __chkstk_darwin(&v10, v7, v8);
    v23 = &v10 - 6;
    *(&v10 - 4) = v9;
    *(&v10 - 3) = &v48;
    *(&v10 - 2) = &v47;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v25 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v40, v41, "Started RemoteXPC listener", v13, 2u);
      v11 = 0;
      destroyStorage<A>(_:count:)(v16, 0);
      destroyStorage<A>(_:count:)(v19, v11);
      UnsafeMutablePointer.deallocate()();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v29 + 8))(v31, v27);
}

Swift::Void __swiftcall ViewHierarchyAgent.startTargetHubListener()()
{
  v42 = 0;
  v50 = 0;
  v26 = 0;
  v39 = type metadata accessor for Logger();
  v27 = v39;
  v28 = *(v39 - 8);
  v38 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  __chkstk_darwin(v39 - 8, v39, v0);
  v36 = &v10 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v36;
  v50 = v1;
  v35 = *(v1 + 72);
  v2 = v35;
  v33 = *(v1 + 80);

  v32 = *v2;

  dispatch thunk of XPCListenerConnection.setPeerConnectionHandler(_:)();
  v3 = v34;

  v37 = *(v3 + 72);

  dispatch thunk of XPCConnection.activate()();
  v4 = v36;

  v5 = logger.unsafeMutableAddressor();
  (*(v38 + 16))(v4, v5, v39);
  v44 = Logger.logObject.getter();
  v40 = v44;
  v43 = static os_log_type_t.info.getter();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v6 = v26;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = 0;
    v18 = createStorage<A>(capacity:type:)(0, v14, v14);
    v16 = v18;
    v19 = createStorage<A>(capacity:type:)(v15, &type metadata for Any + 8, &type metadata for Any + 8);
    v49 = v17;
    v48 = v18;
    v47 = v19;
    v20 = 0;
    v21 = &v49;
    serialize(_:at:)(0, &v49);
    serialize(_:at:)(v20, v21);
    v46 = v45;
    v22 = &v10;
    __chkstk_darwin(&v10, v7, v8);
    v23 = &v10 - 6;
    *(&v10 - 4) = v9;
    *(&v10 - 3) = &v48;
    *(&v10 - 2) = &v47;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v25 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v40, v41, "Started Targethub listener", v13, 2u);
      v11 = 0;
      destroyStorage<A>(_:count:)(v16, 0);
      destroyStorage<A>(_:count:)(v19, v11);
      UnsafeMutablePointer.deallocate()();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v29 + 8))(v31, v27);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  v2 = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_dispatch_queue);
    return ObjCClassMetadata;
  }

  return v2;
}

void *closure #1 in ViewHierarchyAgent.startSystemListener()(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = partial apply for closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener();
  v22 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  v16 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (&v9 - v16);
  v22 = __chkstk_darwin(v15, v2, v3);
  v21 = v4;
  outlined init with copy of Result<XPCPeerConnection, XPCError>(v22, (&v9 - v16));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined destroy of Result<XPCPeerConnection, XPCError>(v18);
  }

  v6 = *v18;
  v12 = v6;
  v10 = v18[1];
  v19 = v6;
  v20 = v10;
  v9 = *v6;

  v7 = swift_allocObject();
  v8 = v10;
  v11 = v7;
  v7[2] = v14;
  v7[3] = v6;
  v7[4] = v8;
  dispatch thunk of XPCPeerConnection.setEventHandler(_:)();

  dispatch thunk of XPCConnection.activate()();
}

uint64_t closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v59 = partial apply for implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener();
  v60 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v61 = closure #1 in OSLogArguments.append(_:)partial apply;
  v62 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v100 = 0;
  v99 = 0;
  v97 = 0;
  v98 = 0;
  v102 = 0;
  v64 = 0;
  v101 = 0;
  v70 = 0;
  v65 = type metadata accessor for Logger();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v4, v5);
  v69 = v33 - v68;
  v71 = type metadata accessor for XPCError();
  v73 = *(v71 - 8);
  v72 = v71 - 8;
  v74 = v73;
  v75 = *(v73 + 64);
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v70, v6, v7);
  v77 = v33 - v76;
  v78 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8, v33 - v76, v10);
  v79 = v33 - v78;
  v102 = v33 - v78;
  v80 = type metadata accessor for XPCDictionary();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80, v11, v12);
  v84 = v33 - v83;
  v101 = v33 - v83;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  v89 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v88, v13, v86);
  v91 = v33 - v89;
  v100 = v14;
  v99 = v15;
  v97 = v16;
  v98 = v17;
  outlined init with copy of Result<XPCDictionary, XPCError>(v14, v33 - v89);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v69;
    v42 = v74;
    v45 = *(v73 + 32);
    v44 = v73 + 32;
    v45(v79, v91, v71);
    v102 = v79;
    v20 = logger.unsafeMutableAddressor();
    (*(v66 + 16))(v19, v20, v65);
    (*(v73 + 16))(v77, v79, v71);
    v43 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v48 = 7;
    v49 = swift_allocObject();
    v45((v49 + v43), v77, v71);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v46 = 17;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v47 = 32;
    v21 = swift_allocObject();
    v22 = v49;
    v50 = v21;
    *(v21 + 16) = v59;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v50;
    v54 = v23;
    *(v23 + 16) = v60;
    *(v23 + 24) = v24;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v53 = _allocateUninitializedArray<A>(_:)();
    v55 = v25;

    v26 = v51;
    v27 = v55;
    *v55 = v61;
    v27[1] = v26;

    v28 = v52;
    v29 = v55;
    v55[2] = v62;
    v29[3] = v28;

    v30 = v54;
    v31 = v55;
    v55[4] = v63;
    v31[5] = v30;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v57, v58))
    {
      v32 = v64;
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v36 = createStorage<A>(capacity:type:)(0, v34, v34);
      v37 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v38 = &v96;
      v96 = v35;
      v39 = &v95;
      v95 = v36;
      v40 = &v94;
      v94 = v37;
      serialize(_:at:)(2, &v96);
      serialize(_:at:)(1, v38);
      v92 = v61;
      v93 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v92, v38, v39, v40);
      v41 = v32;
      if (v32)
      {

        __break(1u);
      }

      else
      {
        v92 = v62;
        v93 = v52;
        closure #1 in osLogInternal(_:log:type:)(&v92, &v96, &v95, &v94);
        v33[1] = 0;
        v92 = v63;
        v93 = v54;
        closure #1 in osLogInternal(_:log:type:)(&v92, &v96, &v95, &v94);
        _os_log_impl(&_mh_execute_header, v57, v58, "SystemXPCPeerConnection received an error: %s", v35, 0xCu);
        destroyStorage<A>(_:count:)(v36, 0);
        destroyStorage<A>(_:count:)(v37, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v66 + 8))(v69, v65);
    return (*(v73 + 8))(v79, v71);
  }

  else
  {
    (*(v81 + 32))(v84, v91, v80);
    v101 = v84;

    ViewHierarchyAgent.handleMessage(_:from:)(v84, v86, v87);

    return (*(v81 + 8))(v84, v80);
  }
}

uint64_t ViewHierarchyAgent.handleMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v161 = a3;
  v164 = a2;
  v160 = a1;
  v144 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v141 = 0;
  v176 = 0;
  v175 = 0;
  v165 = 0;
  v142 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Mercury13XPCDictionaryVSgMd, &_s7Mercury13XPCDictionaryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v4, v5);
  v143 = &v52 - v142;
  v145 = type metadata accessor for Logger();
  v146 = *(v145 - 8);
  v147 = v146;
  v148 = *(v146 + 64);
  v7 = __chkstk_darwin(v144, v145, v6);
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = &v52 - v150;
  __chkstk_darwin(v7, &v52 - v150, v8);
  v151 = &v52 - v150;
  v152 = type metadata accessor for XPCDictionary();
  v153 = *(v152 - 8);
  v154 = v153;
  v156 = *(v153 + 64);
  v155 = v156;
  __chkstk_darwin(v152 - 8, v152, v9);
  v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  v157 = &v52 - v158;
  v187 = &v52 - v158;
  __chkstk_darwin(&v52 - v158, v10, v11);
  v159 = &v52 - v158;
  v162 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v164, v12, v161);
  v163 = &v52 - v162;
  v186 = v14;
  v184 = v13;
  v185 = v15;
  v183 = v3;

  if (v164)
  {
    v138 = v164;
    v139 = v161;
    v133 = v161;
    v134 = v164;
    v181 = v164;
    v182 = v161;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("action", 6uLL, 1)._object;
    v136 = XPCDictionary.subscript.getter();
    v137 = v16;
    if (v16)
    {
      v131 = v136;
      v132 = v137;
      v129 = v137;
      v128 = v136;
      v175 = v136;
      v176 = v137;

      v174 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("performRequest", 0xEuLL, 1);
      v172 = v128;
      v173 = v129;
      v130 = static String.== infix(_:_:)();
      outlined destroy of String(&v174);
      if (v130)
      {

        v125 = 0;
        v17 = type metadata accessor for TaskPriority();
        (*(*(v17 - 8) + 56))(v163, 1);

        (*(v154 + 16))(v159, v160, v152);
        v124 = (*(v154 + 80) + 56) & ~*(v154 + 80);
        v18 = swift_allocObject();
        v19 = v140;
        v20 = v134;
        v21 = v133;
        v22 = v124;
        v23 = v154;
        v24 = v159;
        v25 = v152;
        v26 = v125;
        v126 = v18;
        v18[2] = v125;
        v18[3] = v26;
        v18[4] = v19;
        v18[5] = v20;
        v18[6] = v21;
        (*(v23 + 32))(v18 + v22, v24, v25);
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(v125, v125, v163, &async function pointer to partial apply for closure #1 in ViewHierarchyAgent.handleMessage(_:from:), v126, &type metadata for () + 8);

        v127 = v141;
      }

      else
      {

        v171 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("finish", 6uLL, 1);
        v170[1] = v128;
        v170[2] = v129;
        v123 = static String.== infix(_:_:)();
        outlined destroy of String(&v171);
        if (v123)
        {
          v27 = v141;

          ViewHierarchyAgent.finish(_:)();
          v121 = v27;
          v122 = v27;
          if (v27)
          {
            v56 = v122;
            v55 = 0;
            swift_errorRetain();
            v165 = v56;
            XPCDictionary.createReply()();
            if ((*(v154 + 48))(v143, 1, v152) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            (*(v154 + 32))(v157, v143, v152);
            v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("error", 5uLL, 1);
            swift_getErrorValue();
            Error.localizedDescription.getter();
            XPCDictionary.subscript.setter();

            (*(v154 + 16))(v159, v157, v152);
            dispatch thunk of XPCConnection.send(message:)();
            v54 = *(v154 + 8);
            v53 = v154 + 8;
            v54(v159, v152);

            v54(v157, v152);

            v120 = v55;
          }

          else
          {
            v120 = 0;
          }

          v127 = v120;
        }

        else
        {

          dispatch thunk of XPCConnection.cancel()();
          v28 = v151;

          v29 = logger.unsafeMutableAddressor();
          (*(v147 + 16))(v28, v29, v145);

          v103 = 32;
          v107 = 32;
          v108 = 7;
          v30 = swift_allocObject();
          v31 = v129;
          v109 = v30;
          *(v30 + 16) = v128;
          *(v30 + 24) = v31;
          v119 = Logger.logObject.getter();
          v101 = v119;
          v118 = static os_log_type_t.error.getter();
          v102 = v118;
          v104 = 17;
          v112 = swift_allocObject();
          v105 = v112;
          *(v112 + 16) = v103;
          v113 = swift_allocObject();
          v106 = v113;
          *(v113 + 16) = 8;
          v32 = swift_allocObject();
          v33 = v109;
          v110 = v32;
          *(v32 + 16) = partial apply for implicit closure #2 in ViewHierarchyAgent.handleMessage(_:from:);
          *(v32 + 24) = v33;
          v34 = swift_allocObject();
          v35 = v110;
          v116 = v34;
          v111 = v34;
          *(v34 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
          *(v34 + 24) = v35;
          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v114 = _allocateUninitializedArray<A>(_:)();
          v115 = v36;

          v37 = v112;
          v38 = v115;
          *v115 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
          v38[1] = v37;

          v39 = v113;
          v40 = v115;
          v115[2] = closure #1 in OSLogArguments.append(_:)partial apply;
          v40[3] = v39;

          v41 = v115;
          v42 = v116;
          v115[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
          v41[5] = v42;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v119, v118))
          {
            v43 = v141;
            v94 = static UnsafeMutablePointer.allocate(capacity:)();
            v91 = v94;
            v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v95 = createStorage<A>(capacity:type:)(0, v92, v92);
            v93 = v95;
            v97 = 1;
            v96 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
            v170[0] = v94;
            v169 = v95;
            v168 = v96;
            v98 = v170;
            serialize(_:at:)(2, v170);
            serialize(_:at:)(v97, v98);
            v166 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
            v167 = v105;
            closure #1 in osLogInternal(_:log:type:)(&v166, v98, &v169, &v168);
            v99 = v43;
            v100 = v43;
            if (v43)
            {
              v89 = 0;

              __break(1u);
            }

            else
            {
              v166 = closure #1 in OSLogArguments.append(_:)partial apply;
              v167 = v106;
              closure #1 in osLogInternal(_:log:type:)(&v166, v170, &v169, &v168);
              v87 = 0;
              v88 = 0;
              v166 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
              v167 = v111;
              closure #1 in osLogInternal(_:log:type:)(&v166, v170, &v169, &v168);
              v85 = 0;
              v86 = 0;
              _os_log_impl(&_mh_execute_header, v101, v102, "Failed to handle message with action %s", v91, 0xCu);
              destroyStorage<A>(_:count:)(v93, 0);
              destroyStorage<A>(_:count:)(v96, 1);
              UnsafeMutablePointer.deallocate()();

              v90 = v85;
            }
          }

          else
          {
            v44 = v141;

            v90 = v44;
          }

          v84 = v90;

          (*(v147 + 8))(v151, v145);
          v127 = v84;
        }
      }

      v82 = v127;

      return v82;
    }

    else
    {

      v80 = XPCDictionary.underlyingConnection.getter();
      v81 = v45;
      if (v80)
      {
        v79 = v80;
        v78 = v80;
        dispatch thunk of XPCConnection.cancel()();
      }

      v46 = v149;
      v47 = logger.unsafeMutableAddressor();
      (*(v147 + 16))(v46, v47, v145);
      v76 = Logger.logObject.getter();
      v73 = v76;
      v75 = static os_log_type_t.error.getter();
      v74 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v77 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v76, v75))
      {
        v48 = v141;
        v64 = static UnsafeMutablePointer.allocate(capacity:)();
        v60 = v64;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v62 = 0;
        v65 = createStorage<A>(capacity:type:)(0, v61, v61);
        v63 = v65;
        v66 = createStorage<A>(capacity:type:)(v62, &type metadata for Any + 8, &type metadata for Any + 8);
        v180 = v64;
        v179 = v65;
        v178 = v66;
        v67 = 0;
        v68 = &v180;
        serialize(_:at:)(0, &v180);
        serialize(_:at:)(v67, v68);
        v177 = v77;
        v69 = &v52;
        __chkstk_darwin(&v52, v49, v50);
        v70 = &v52 - 3;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v72 = v48;
        if (v48)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v73, v74, "Failed to handle message without action", v60, 2u);
          v58 = 0;
          destroyStorage<A>(_:count:)(v63, 0);
          destroyStorage<A>(_:count:)(v66, v58);
          UnsafeMutablePointer.deallocate()();

          v59 = v72;
        }
      }

      else
      {

        v59 = v141;
      }

      v57 = v59;

      (*(v147 + 8))(v149, v145);

      return v57;
    }
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("A message received over an XPC connection should have an underlying connection", 0x4EuLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return v83;
}

uint64_t implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener()()
{
  type metadata accessor for XPCError();
  lazy protocol witness table accessor for type XPCError and conformance XPCError();
  return Error.localizedDescription.getter();
}

uint64_t closure #1 in ViewHierarchyAgent.startRemoteListener()(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v83 = a2;
  v61 = partial apply for implicit closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener();
  v62 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v64 = closure #1 in OSLogArguments.append(_:)partial apply;
  v65 = closure #1 in OSLogArguments.append(_:)partial apply;
  v66 = partial apply for closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener();
  v96 = 0;
  v95 = 0;
  v97 = 0;
  v67 = 0;
  v88 = 0;
  v89 = 0;
  v68 = 0;
  v69 = type metadata accessor for Logger();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v2, v3);
  v73 = v31 - v72;
  v74 = type metadata accessor for XPCError();
  v76 = *(v74 - 8);
  v75 = v74 - 8;
  v77 = v76;
  v78 = *(v76 + 64);
  v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74, v4, v5);
  v80 = v31 - v79;
  v81 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31 - v79, v7, v8);
  v82 = v31 - v81;
  v97 = v31 - v81;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  v85 = (*(*(v86 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v84, v9, v10);
  v87 = v31 - v85;
  v96 = v11;
  v95 = v12;
  outlined init with copy of Result<XPCPeerConnection, XPCError>(v11, (v31 - v85));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v73;
    v40 = v77;
    v43 = *(v76 + 32);
    v42 = v76 + 32;
    v43(v82, v87, v74);
    v97 = v82;
    v18 = logger.unsafeMutableAddressor();
    (*(v70 + 16))(v17, v18, v69);
    (*(v76 + 16))(v80, v82, v74);
    v41 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v46 = 7;
    v47 = swift_allocObject();
    v43((v47 + v41), v80, v74);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v44 = 17;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = 32;
    v19 = swift_allocObject();
    v20 = v47;
    v48 = v19;
    *(v19 + 16) = v61;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v48;
    v52 = v21;
    *(v21 + 16) = v62;
    *(v21 + 24) = v22;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v51 = _allocateUninitializedArray<A>(_:)();
    v53 = v23;

    v24 = v49;
    v25 = v53;
    *v53 = v63;
    v25[1] = v24;

    v26 = v50;
    v27 = v53;
    v53[2] = v64;
    v27[3] = v26;

    v28 = v52;
    v29 = v53;
    v53[4] = v65;
    v29[5] = v28;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v55, v56))
    {
      v30 = v67;
      v33 = static UnsafeMutablePointer.allocate(capacity:)();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v34 = createStorage<A>(capacity:type:)(0, v32, v32);
      v35 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v36 = &v94;
      v94 = v33;
      v37 = &v93;
      v93 = v34;
      v38 = &v92;
      v92 = v35;
      serialize(_:at:)(2, &v94);
      serialize(_:at:)(1, v36);
      v90 = v63;
      v91 = v49;
      closure #1 in osLogInternal(_:log:type:)(&v90, v36, v37, v38);
      v39 = v30;
      if (v30)
      {

        __break(1u);
      }

      else
      {
        v90 = v64;
        v91 = v50;
        closure #1 in osLogInternal(_:log:type:)(&v90, &v94, &v93, &v92);
        v31[0] = 0;
        v90 = v65;
        v91 = v52;
        closure #1 in osLogInternal(_:log:type:)(&v90, &v94, &v93, &v92);
        _os_log_impl(&_mh_execute_header, v55, v56, "%s", v33, 0xCu);
        destroyStorage<A>(_:count:)(v34, 0);
        destroyStorage<A>(_:count:)(v35, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v70 + 8))(v73, v69);
    return (*(v76 + 8))(v82, v74);
  }

  else
  {
    v13 = *v87;
    v60 = v13;
    v58 = *(v87 + 1);
    v88 = v13;
    v89 = v58;
    v57 = *v13;

    v14 = swift_allocObject();
    v15 = v58;
    v59 = v14;
    v14[2] = v83;
    v14[3] = v13;
    v14[4] = v15;
    dispatch thunk of XPCPeerConnection.setEventHandler(_:)();

    dispatch thunk of XPCConnection.activate()();
  }
}

uint64_t closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v59 = partial apply for implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener();
  v60 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v61 = closure #1 in OSLogArguments.append(_:)partial apply;
  v62 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v100 = 0;
  v99 = 0;
  v97 = 0;
  v98 = 0;
  v102 = 0;
  v64 = 0;
  v101 = 0;
  v70 = 0;
  v65 = type metadata accessor for Logger();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v4, v5);
  v69 = v33 - v68;
  v71 = type metadata accessor for XPCError();
  v73 = *(v71 - 8);
  v72 = v71 - 8;
  v74 = v73;
  v75 = *(v73 + 64);
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v70, v6, v7);
  v77 = v33 - v76;
  v78 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8, v33 - v76, v10);
  v79 = v33 - v78;
  v102 = v33 - v78;
  v80 = type metadata accessor for XPCDictionary();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80, v11, v12);
  v84 = v33 - v83;
  v101 = v33 - v83;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  v89 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v88, v13, v86);
  v91 = v33 - v89;
  v100 = v14;
  v99 = v15;
  v97 = v16;
  v98 = v17;
  outlined init with copy of Result<XPCDictionary, XPCError>(v14, v33 - v89);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v69;
    v42 = v74;
    v45 = *(v73 + 32);
    v44 = v73 + 32;
    v45(v79, v91, v71);
    v102 = v79;
    v20 = logger.unsafeMutableAddressor();
    (*(v66 + 16))(v19, v20, v65);
    (*(v73 + 16))(v77, v79, v71);
    v43 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v48 = 7;
    v49 = swift_allocObject();
    v45((v49 + v43), v77, v71);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v46 = 17;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v47 = 32;
    v21 = swift_allocObject();
    v22 = v49;
    v50 = v21;
    *(v21 + 16) = v59;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v50;
    v54 = v23;
    *(v23 + 16) = v60;
    *(v23 + 24) = v24;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v53 = _allocateUninitializedArray<A>(_:)();
    v55 = v25;

    v26 = v51;
    v27 = v55;
    *v55 = v61;
    v27[1] = v26;

    v28 = v52;
    v29 = v55;
    v55[2] = v62;
    v29[3] = v28;

    v30 = v54;
    v31 = v55;
    v55[4] = v63;
    v31[5] = v30;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v57, v58))
    {
      v32 = v64;
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v36 = createStorage<A>(capacity:type:)(0, v34, v34);
      v37 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v38 = &v96;
      v96 = v35;
      v39 = &v95;
      v95 = v36;
      v40 = &v94;
      v94 = v37;
      serialize(_:at:)(2, &v96);
      serialize(_:at:)(1, v38);
      v92 = v61;
      v93 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v92, v38, v39, v40);
      v41 = v32;
      if (v32)
      {

        __break(1u);
      }

      else
      {
        v92 = v62;
        v93 = v52;
        closure #1 in osLogInternal(_:log:type:)(&v92, &v96, &v95, &v94);
        v33[1] = 0;
        v92 = v63;
        v93 = v54;
        closure #1 in osLogInternal(_:log:type:)(&v92, &v96, &v95, &v94);
        _os_log_impl(&_mh_execute_header, v57, v58, "RemoteXPCPeerConnection received an error: %s", v35, 0xCu);
        destroyStorage<A>(_:count:)(v36, 0);
        destroyStorage<A>(_:count:)(v37, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v66 + 8))(v69, v65);
    return (*(v73 + 8))(v79, v71);
  }

  else
  {
    (*(v81 + 32))(v84, v91, v80);
    v101 = v84;

    ViewHierarchyAgent.handleMessage(_:from:)(v84, v86, v87);

    return (*(v81 + 8))(v84, v80);
  }
}

uint64_t implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()()
{
  type metadata accessor for XPCError();
  lazy protocol witness table accessor for type XPCError and conformance XPCError();
  return Error.localizedDescription.getter();
}

uint64_t implicit closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()()
{
  type metadata accessor for XPCError();
  lazy protocol witness table accessor for type XPCError and conformance XPCError();
  return Error.localizedDescription.getter();
}

void *closure #1 in ViewHierarchyAgent.startTargetHubListener()(uint64_t a1, uint64_t a2)
{
  v139 = a1;
  v138 = a2;
  v109 = closure #1 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v110 = partial apply for implicit closure #3 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v111 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  v112 = closure #1 in OSLogArguments.append(_:)partial apply;
  v113 = closure #1 in OSLogArguments.append(_:)partial apply;
  v114 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v115 = partial apply for closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v116 = partial apply for implicit closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v117 = thunk for @escaping @callee_guaranteed () -> (@unowned Int32)partial apply;
  v118 = closure #1 in OSLogArguments.append(_:)partial apply;
  v119 = closure #1 in OSLogArguments.append(_:)partial apply;
  v120 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v121 = "Fatal error";
  v122 = "ViewHierarchyAgent/ViewHierarchyAgent.swift";
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v158 = 0;
  v159 = 0;
  v157 = 0;
  v123 = 0;
  v155 = 0;
  v124 = type metadata accessor for Logger();
  v125 = *(v124 - 8);
  v126 = v124 - 8;
  v127 = (*(v125 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v124, v2, v3);
  v128 = &v49 - v127;
  v129 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v49 - v127, v5, v6);
  v130 = &v49 - v129;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMR);
  v131 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7, v8, v9);
  v132 = &v49 - v131;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  v134 = *(v133 - 8);
  v135 = v133 - 8;
  v136 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133, v10, v11);
  v137 = &v49 - v136;
  v162 = &v49 - v136;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  v140 = (*(*(v141 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v139, v12, v13);
  v142 = (&v49 - v140);
  v161 = v14;
  v160 = v15;
  outlined init with copy of Result<XPCPeerConnection, XPCError>(v14, (&v49 - v140));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined destroy of Result<XPCPeerConnection, XPCError>(v142);
  }

  v107 = *v142;
  v17 = v142[1];
  v158 = v107;
  v159 = v17;

  type metadata accessor for SystemXPCPeerConnection();
  v108 = swift_dynamicCastClass();
  if (v108)
  {
    v106 = v108;
  }

  else
  {

    v106 = 0;
  }

  v105 = v106;
  if (v106)
  {
    v104 = v105;
    v18 = v123;
    v102 = v105;
    v157 = v105;
    result = dispatch thunk of XPCConnection.withUnsafeUnderlyingConnection<A>(_:)();
    v103 = v18;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      v99 = v156;
      v155 = v156;
      v100 = &v154;
      v154 = v156;
      v101 = &v153;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMd, &_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMR);
      Dictionary.removeValue(forKey:)();
      swift_endAccess();
      if ((*(v134 + 48))(v132, 1, v133) == 1)
      {
        outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(v132);
        dispatch thunk of XPCConnection.cancel()();
        v19 = v130;
        v20 = logger.unsafeMutableAddressor();
        (*(v125 + 16))(v19, v20, v124);
        v88 = 7;
        v89 = swift_allocObject();
        *(v89 + 16) = v99;
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.error.getter();
        v86 = 17;
        v91 = swift_allocObject();
        *(v91 + 16) = 0;
        v92 = swift_allocObject();
        *(v92 + 16) = 4;
        v87 = 32;
        v21 = swift_allocObject();
        v22 = v89;
        v90 = v21;
        *(v21 + 16) = v110;
        *(v21 + 24) = v22;
        v23 = swift_allocObject();
        v24 = v90;
        v94 = v23;
        *(v23 + 16) = v111;
        *(v23 + 24) = v24;
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v93 = _allocateUninitializedArray<A>(_:)();
        v95 = v25;

        v26 = v91;
        v27 = v95;
        *v95 = v112;
        v27[1] = v26;

        v28 = v92;
        v29 = v95;
        v95[2] = v113;
        v29[3] = v28;

        v30 = v94;
        v31 = v95;
        v95[4] = v114;
        v31[5] = v30;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v97, v98))
        {
          v48 = v103;
          v54 = static UnsafeMutablePointer.allocate(capacity:)();
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v53 = 0;
          v55 = createStorage<A>(capacity:type:)(0, v52, v52);
          v56 = createStorage<A>(capacity:type:)(v53, &type metadata for Any + 8, &type metadata for Any + 8);
          v57 = &v152;
          v152 = v54;
          v58 = &v151;
          v151 = v55;
          v59 = &v150;
          v150 = v56;
          serialize(_:at:)(0, &v152);
          serialize(_:at:)(1, v57);
          v148 = v112;
          v149 = v91;
          closure #1 in osLogInternal(_:log:type:)(&v148, v57, v58, v59);
          v60 = v48;
          if (v48)
          {

            __break(1u);
          }

          else
          {
            v148 = v113;
            v149 = v92;
            closure #1 in osLogInternal(_:log:type:)(&v148, &v152, &v151, &v150);
            v51 = 0;
            v148 = v114;
            v149 = v94;
            closure #1 in osLogInternal(_:log:type:)(&v148, &v152, &v151, &v150);
            _os_log_impl(&_mh_execute_header, v97, v98, "Received XPC connection from pid %d which we were not expecting", v54, 8u);
            v50 = 0;
            destroyStorage<A>(_:count:)(v55, 0);
            destroyStorage<A>(_:count:)(v56, v50);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        (*(v125 + 8))(v130, v124);
      }

      else
      {
        (*(v134 + 32))(v137, v132, v133);

        v75 = 7;
        v32 = swift_allocObject();
        v33 = v99;
        v72 = v32;
        *(v32 + 16) = v138;
        *(v32 + 24) = v33;
        dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

        dispatch thunk of XPCConnection.activate()();

        v147[1] = v102;
        CheckedContinuation.resume(returning:)();
        v34 = v128;
        v35 = logger.unsafeMutableAddressor();
        (*(v125 + 16))(v34, v35, v124);
        v76 = swift_allocObject();
        *(v76 + 16) = v99;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        v73 = 17;
        v78 = swift_allocObject();
        *(v78 + 16) = 0;
        v79 = swift_allocObject();
        *(v79 + 16) = 4;
        v74 = 32;
        v36 = swift_allocObject();
        v37 = v76;
        v77 = v36;
        *(v36 + 16) = v116;
        *(v36 + 24) = v37;
        v38 = swift_allocObject();
        v39 = v77;
        v81 = v38;
        *(v38 + 16) = v117;
        *(v38 + 24) = v39;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v80 = _allocateUninitializedArray<A>(_:)();
        v82 = v40;

        v41 = v78;
        v42 = v82;
        *v82 = v118;
        v42[1] = v41;

        v43 = v79;
        v44 = v82;
        v82[2] = v119;
        v44[3] = v43;

        v45 = v81;
        v46 = v82;
        v82[4] = v120;
        v46[5] = v45;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v84, v85))
        {
          v47 = v103;
          v65 = static UnsafeMutablePointer.allocate(capacity:)();
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v64 = 0;
          v66 = createStorage<A>(capacity:type:)(0, v63, v63);
          v67 = createStorage<A>(capacity:type:)(v64, &type metadata for Any + 8, &type metadata for Any + 8);
          v68 = v147;
          v147[0] = v65;
          v69 = &v146;
          v146 = v66;
          v70 = &v145;
          v145 = v67;
          serialize(_:at:)(0, v147);
          serialize(_:at:)(1, v68);
          v143 = v118;
          v144 = v78;
          closure #1 in osLogInternal(_:log:type:)(&v143, v68, v69, v70);
          v71 = v47;
          if (v47)
          {

            __break(1u);
          }

          else
          {
            v143 = v119;
            v144 = v79;
            closure #1 in osLogInternal(_:log:type:)(&v143, v147, &v146, &v145);
            v62 = 0;
            v143 = v120;
            v144 = v81;
            closure #1 in osLogInternal(_:log:type:)(&v143, v147, &v146, &v145);
            _os_log_impl(&_mh_execute_header, v84, v85, "Established XPC connection to TargetBub on pid %d", v65, 8u);
            v61 = 0;
            destroyStorage<A>(_:count:)(v66, 0);
            destroyStorage<A>(_:count:)(v67, v61);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        (*(v125 + 8))(v128, v124);
        (*(v134 + 8))(v137, v133);
      }
    }
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Peer should be a SystemXPCConnection", 0x24uLL, 1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ViewHierarchyAgent.startTargetHubListener()@<X0>(_xpc_connection_s *a1@<X0>, _DWORD *a2@<X8>)
{
  result = xpc_connection_get_pid(a1);
  *a2 = result;
  return result;
}

uint64_t closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener()(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v72 = a1;
  v70 = a2;
  v71 = a3;
  v57 = partial apply for implicit closure #1 in closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener();
  v58 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v59 = closure #1 in OSLogArguments.append(_:)partial apply;
  v60 = closure #1 in OSLogArguments.append(_:)partial apply;
  v61 = closure #1 in OSLogArguments.append(_:)partial apply;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v62 = 0;
  v68 = 0;
  v63 = type metadata accessor for Logger();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63, v3, v4);
  v67 = v29 - v66;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  v69 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68, v5, v6);
  v83 = v29 - v69;
  v73 = type metadata accessor for XPCError();
  v75 = *(v73 - 8);
  v74 = v73 - 8;
  v76 = v75;
  v78 = *(v75 + 64);
  v77 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v72, v83, v71);
  v79 = v29 - v77;
  v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v7, v8, v9);
  v81 = v29 - v80;
  v94 = v29 - v80;
  v93 = v10;
  v92 = v11;
  v91 = v12;
  outlined init with copy of Result<XPCDictionary, XPCError>(v10, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return outlined destroy of Result<XPCDictionary, XPCError>(v83);
  }

  v40 = v76;
  v43 = *(v75 + 32);
  v42 = v75 + 32;
  v43(v81, v83, v73);
  v38 = &v90;
  v90 = v71;
  v39 = &v89;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMd, &_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMR);
  Dictionary.removeValue(forKey:)();
  v15 = v67;
  swift_endAccess();

  v16 = logger.unsafeMutableAddressor();
  (*(v64 + 16))(v15, v16, v63);
  (*(v75 + 16))(v79, v81, v73);
  v41 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v46 = 7;
  v47 = swift_allocObject();
  v43((v47 + v41), v79, v73);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v44 = 17;
  v49 = swift_allocObject();
  *(v49 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v45 = 32;
  v17 = swift_allocObject();
  v18 = v47;
  v48 = v17;
  *(v17 + 16) = v57;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v48;
  v52 = v19;
  *(v19 + 16) = v58;
  *(v19 + 24) = v20;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v51 = _allocateUninitializedArray<A>(_:)();
  v53 = v21;

  v22 = v49;
  v23 = v53;
  *v53 = v59;
  v23[1] = v22;

  v24 = v50;
  v25 = v53;
  v53[2] = v60;
  v25[3] = v24;

  v26 = v52;
  v27 = v53;
  v53[4] = v61;
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v55, v56))
  {
    v28 = v62;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = createStorage<A>(capacity:type:)(0, v30, v30);
    v33 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = &v88;
    v88 = v31;
    v35 = &v87;
    v87 = v32;
    v36 = &v86;
    v86 = v33;
    serialize(_:at:)(2, &v88);
    serialize(_:at:)(1, v34);
    v84 = v59;
    v85 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v84, v34, v35, v36);
    v37 = v28;
    if (v28)
    {

      __break(1u);
    }

    else
    {
      v84 = v60;
      v85 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v88, &v87, &v86);
      v29[0] = 0;
      v84 = v61;
      v85 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v88, &v87, &v86);
      _os_log_impl(&_mh_execute_header, v55, v56, "TargetHubXPCPeerConnection received an error: %s", v31, 0xCu);
      destroyStorage<A>(_:count:)(v32, 0);
      destroyStorage<A>(_:count:)(v33, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  (*(v64 + 8))(v67, v63);
  return (*(v75 + 8))(v81, v73);
}

uint64_t implicit closure #1 in closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener()()
{
  type metadata accessor for XPCError();
  lazy protocol witness table accessor for type XPCError and conformance XPCError();
  return Error.localizedDescription.getter();
}

uint64_t closure #1 in ViewHierarchyAgent.handleMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a7;
  v7[12] = a5;
  v7[7] = v7;
  v7[8] = 0;
  v7[5] = 0;
  v7[6] = 0;
  v7[9] = 0;
  v7[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Mercury13XPCDictionaryVSgMd, &_s7Mercury13XPCDictionaryVSgMR);
  v7[14] = swift_task_alloc();
  v9 = type metadata accessor for XPCDictionary();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[8] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[9] = a7;
  v10 = swift_task_alloc();
  *(v12 + 152) = v10;
  *v10 = *(v12 + 56);
  v10[1] = closure #1 in ViewHierarchyAgent.handleMessage(_:from:);

  return ViewHierarchyAgent.performRequest(connection:message:)(a5, a6, a7);
}

uint64_t closure #1 in ViewHierarchyAgent.handleMessage(_:from:)()
{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in ViewHierarchyAgent.handleMessage(_:from:), 0);
  }

  else
  {

    v2 = *(*(v4 + 56) + 8);

    return v2();
  }
}

{
  v9 = v0[20];
  v10 = v0[16];
  v12 = v0[15];
  v11 = v0[14];
  v0[7] = v0;
  swift_errorRetain();
  v0[10] = v9;
  XPCDictionary.createReply()();
  if ((*(v10 + 48))(v11, 1, v12) == 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v8[18];
  v5 = v8[17];
  v6 = v8[15];
  v3 = v8[16];
  (*(v3 + 32))();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("error", 5uLL, 1);
  swift_getErrorValue();
  Error.localizedDescription.getter();
  XPCDictionary.subscript.setter();

  (*(v3 + 16))(v4, v5, v6);
  dispatch thunk of XPCConnection.send(message:)();
  v7 = *(v3 + 8);
  v7(v4, v6);

  v7(v5, v6);

  v2 = *(v8[7] + 8);

  return v2();
}

uint64_t ViewHierarchyAgent.performRequest(connection:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = v3;
  *(v4 + 144) = a3;
  *(v4 + 136) = a1;
  *(v4 + 96) = v4;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 344) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 360) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Mercury13XPCDictionaryVSgMd, &_s7Mercury13XPCDictionaryVSgMR);
  *(v4 + 160) = swift_task_alloc();
  v5 = type metadata accessor for XPCDictionary();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v4 + 200) = v6;
  v8 = *(v6 - 8);
  *(v4 + 208) = v8;
  *(v4 + 216) = *(v8 + 64);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;

  return _swift_task_switch(ViewHierarchyAgent.performRequest(connection:message:), 0);
}

uint64_t ViewHierarchyAgent.performRequest(connection:message:)()
{
  *(v0 + 96) = v0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pid", 3uLL, 1);
  lazy protocol witness table accessor for type Int32 and conformance Int32();
  XPCDictionary.subscript.getter();
  v8 = *(v0 + 348);
  if ((*(v0 + 352) & 1) != 0 || (*(v7 + 344) = v8, , String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("request", 7uLL, 1), v1 = XPCDictionary.subscript.getter(), *(v7 + 280) = v1, (*(v7 + 288) = v2) == 0))
  {

    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v6 = *(*(v7 + 96) + 8);

    return v6();
  }

  else
  {
    *(v7 + 80) = v1;
    *(v7 + 88) = v2;

    v3 = swift_task_alloc();
    *(v7 + 296) = v3;
    *v3 = *(v7 + 96);
    v3[1] = ViewHierarchyAgent.performRequest(connection:message:);

    return ViewHierarchyAgent.captureController(for:)(v8);
  }
}

{
  v1 = v0[38];
  v0[12] = v0;
  v0[15] = v1;

  type metadata accessor for SystemXPCConnection();
  if (swift_dynamicCastClass())
  {

    v2 = *(v28 + 312);
    result = XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
    if (v2)
    {
      return result;
    }

    v21 = *(v28 + 356);
    *(v28 + 360) = v21;
    if (v21 > 0)
    {
      v18 = *(v28 + 272);
      v17 = *(v28 + 264);
      v16 = *(v28 + 200);
      v15 = *(v28 + 208);
      type metadata accessor for NSFileHandle();
      isa = NSFileHandle.__allocating_init(fileDescriptor:closeOnDealloc:)(v21, 1).super.isa;
      isa;
      *(v28 + 128) = isa;
      (*(v15 + 56))(v17, 1, 1, v16);
      outlined init with take of URL?(v17, v18);
      v20 = isa;
      goto LABEL_9;
    }

    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  else
  {

    v4 = *(v28 + 312);
    v24 = *(v28 + 248);
    v26 = *(v28 + 240);
    v23 = *(v28 + 200);
    v22 = *(v28 + 208);
    CaptureController.createTemporaryFile()(v24);
    type metadata accessor for NSFileHandle();
    v25 = *(v22 + 16);
    v25(v26, v24, v23);
    v27 = @nonobjc NSFileHandle.__allocating_init(forWritingTo:)(v26);
    if (!v4)
    {
      v12 = *(v28 + 272);
      v11 = *(v28 + 264);
      v14 = *(v28 + 248);
      v13 = *(v28 + 200);
      v10 = *(v28 + 208);
      v27;
      *(v28 + 128) = v27;
      v25(v11, v14, v13);
      (*(v10 + 56))(v11, 0, 1, v13);
      outlined init with take of URL?(v11, v12);
      (*(v10 + 8))(v14, v13);
      v20 = v27;
LABEL_9:
      *(v28 + 320) = v20;
      v9 = *(v28 + 288);

      v6 = swift_task_alloc();
      *(v28 + 328) = v6;
      *v6 = *(v28 + 96);
      v6[1] = ViewHierarchyAgent.performRequest(connection:message:);
      v7 = *(v28 + 280);

      return CaptureController.performRequest(_:using:)(v7, v9, v20);
    }

    (*(*(v28 + 208) + 8))(*(v28 + 248), *(v28 + 200));
  }

  v8 = *(*(v28 + 96) + 8);

  return v8();
}

{
  v4 = *v1;
  *(v4 + 96) = *v1;
  *(v4 + 336) = v0;

  if (v0)
  {
    v2 = ViewHierarchyAgent.performRequest(connection:message:);
  }

  else
  {

    v2 = ViewHierarchyAgent.performRequest(connection:message:);
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 96) = v0;

  v1 = *(*(v0 + 96) + 8);

  return v1();
}

{
  v1 = *(v0 + 320);
  v4 = *(v0 + 272);
  *(v0 + 96) = v0;

  outlined destroy of URL?(v4);

  v2 = *(*(v0 + 96) + 8);

  return v2();
}

uint64_t ViewHierarchyAgent.performRequest(connection:message:)(uint64_t a1)
{
  v5 = *v2;
  v5[12] = *v2;
  v5[38] = a1;
  v5[39] = v1;

  if (v1)
  {
    v3 = ViewHierarchyAgent.performRequest(connection:message:);
  }

  else
  {
    v3 = ViewHierarchyAgent.performRequest(connection:message:);
  }

  return _swift_task_switch(v3, 0);
}

{
  v22 = v1[22];
  v24 = v1[21];
  v23 = v1[20];
  v1[12] = v1;
  XPCDictionary.createReply()();
  if ((*(v22 + 48))(v23, 1, v24) == 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  (*(*(v21 + 176) + 32))(*(v21 + 192), *(v21 + 160), *(v21 + 168));

  type metadata accessor for RemoteXPCPeerConnection();
  if (swift_dynamicCastClass())
  {

    v20 = *(v21 + 256);
    v19 = *(v21 + 200);
    v18 = *(v21 + 208);
    outlined init with copy of URL?(*(v21 + 272), v20);
    if ((*(v18 + 48))(v20, 1, v19) == 1)
    {
      outlined destroy of URL?(*(v21 + 256));
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Should have a temporary file!", 0x1DuLL, 1);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v16 = *(v21 + 232);
    v12 = *(v21 + 224);
    v17 = *(v21 + 200);
    v10 = *(v21 + 208);
    v13 = *(v10 + 32);
    (v13)(v16, *(v21 + 256));
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ft", 2uLL, 1);
    URL.path.getter();
    (*(v10 + 16))(v12, v16, v17);
    v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v14 = swift_allocObject();
    v13(v14 + v11, v12, v17);
    *(v21 + 48) = partial apply for closure #2 in ViewHierarchyAgent.performRequest(connection:message:);
    *(v21 + 56) = v14;
    *(v21 + 16) = _NSConcreteStackBlock;
    *(v21 + 24) = 1107296256;
    *(v21 + 28) = 0;
    *(v21 + 32) = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    *(v21 + 40) = &block_descriptor;
    v15 = _Block_copy((v21 + 16));

    String.utf8CString.getter();

    xpc_file_transfer_create_with_path();
    swift_unknownObjectRelease();
    _Block_release(v15);

    XPCDictionary.subscript.setter();
    (*(v10 + 8))(v16, v17);
  }

  else
  {
  }

  v7 = *(v21 + 272);
  v8 = *(v21 + 192);
  v9 = *(v21 + 184);
  v5 = *(v21 + 168);
  v4 = *(v21 + 176);

  (*(v4 + 16))(v9, v8, v5);
  dispatch thunk of XPCConnection.send(message:)();
  v6 = *(v4 + 8);
  v6(v9, v5);

  v6(v8, v5);
  outlined destroy of URL?(v7);

  v3 = *(*(v21 + 96) + 8);

  return v3();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a1;
  v48 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v49 = a6;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATu;
  v54 = 0;
  v67 = a6;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58, v6, v7);
  v59 = &v16 - v55;

  v65 = v57;
  v66 = v58;
  outlined init with copy of TaskPriority?(v56, v59);
  v60 = type metadata accessor for TaskPriority();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  if ((*(v61 + 48))(v59, 1) == 1)
  {
    outlined destroy of TaskPriority?(v59);
    v46 = 0;
  }

  else
  {
    v45 = TaskPriority.rawValue.getter();
    (*(v61 + 8))(v59, v60);
    v46 = v45;
  }

  v42 = v46 | 0x1C00;
  v44 = *(v58 + 16);
  v43 = *(v58 + 24);
  swift_unknownObjectRetain();

  if (v44)
  {
    v40 = v44;
    v41 = v43;
    v34 = v43;
    v35 = v44;
    swift_getObjectType();
    v36 = dispatch thunk of Actor.unownedExecutor.getter();
    v37 = v8;
    swift_unknownObjectRelease();
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v32 = v39;
  v33 = v38;

  if (v48)
  {
    v30 = v47;
    v31 = v48;
    v9 = v54;
    v27 = v48;
    v28 = String.utf8CString.getter();

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v28 + 32, &v65, v49, &v63);
    if (v9)
    {
      __break(1u);
    }

    v26 = v63;

    v29 = v26;
  }

  else
  {
    v29 = 0;
  }

  v25 = v29;
  if (v29)
  {
    v19 = v25;
    v18 = v25;
    outlined destroy of TaskPriority?(v56);

    v20 = v18;
  }

  else
  {

    outlined destroy of TaskPriority?(v56);
    v21 = v65;
    v22 = v66;

    v10 = swift_allocObject();
    v11 = v21;
    v12 = v22;
    v13 = v33;
    v14 = v32;
    v23 = v10;
    v10[2] = v49;
    v10[3] = v11;
    v10[4] = v12;
    v24 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v33;
      v64[3] = v32;
      v24 = v64;
    }

    v20 = swift_task_create();
  }

  v17 = v20;

  return v17;
}

void ViewHierarchyAgent.finish(_:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pid", 3uLL, 1);
  lazy protocol witness table accessor for type Int32 and conformance Int32();
  XPCDictionary.subscript.getter();

  if (v2)
  {
    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    swift_allocError();
    *v0 = 0;
    swift_willThrow();
  }

  else
  {
    ViewHierarchyAgent.finish(_:)(v1);
  }
}

uint64_t ViewHierarchyAgent.captureController(for:)(int a1)
{
  *(v2 + 128) = v1;
  *(v2 + 180) = a1;
  *(v2 + 80) = v2;
  *(v2 + 168) = 0;
  *(v2 + 88) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  *(v2 + 168) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(ViewHierarchyAgent.captureController(for:), 0);
}

uint64_t ViewHierarchyAgent.captureController(for:)()
{
  v6 = *(v0 + 180);
  *(v0 + 80) = v0;
  swift_beginAccess();
  *(v0 + 172) = v6;
  *(v0 + 136) = type metadata accessor for CaptureController(0);
  Dictionary.subscript.getter();
  v7 = *(v0 + 96);
  if (v7)
  {
    *(v5 + 120) = v7;
    swift_endAccess();
    v1 = *(*(v5 + 80) + 8);

    return v1(v7);
  }

  else
  {
    swift_endAccess();
    v3 = swift_task_alloc();
    *(v5 + 144) = v3;
    *v3 = *(v5 + 80);
    v3[1] = ViewHierarchyAgent.captureController(for:);
    v4 = *(v5 + 180);

    return ViewHierarchyAgent.establishTargetHubConnection(to:)(v4);
  }
}

{
  v9 = v0;
  v3 = *(v0 + 160);
  v6 = *(v0 + 152);
  v5 = *(v0 + 180);
  *(v0 + 80) = v0;
  *(v0 + 64) = v6;
  *(v0 + 72) = v3;
  v4 = type metadata accessor for SystemXPCRequestExecutor();

  v8[3] = v4;
  v8[4] = &protocol witness table for SystemXPCRequestExecutor;
  v8[0] = SystemXPCRequestExecutor.__allocating_init(targetConnection:)(v6, v3);
  v7 = CaptureController.__allocating_init(requestExecutor:)(v8);
  *(v0 + 104) = v7;

  *(v0 + 112) = v7;
  *(v0 + 176) = v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMd, &_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMR);
  Dictionary.subscript.setter();
  swift_endAccess();

  v1 = *(*(v0 + 80) + 8);

  return v1(v7);
}

uint64_t ViewHierarchyAgent.captureController(for:)(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v7[10] = *v3;
  v7[19] = a1;
  v7[20] = a2;

  if (v2)
  {
    v5 = *(v7[10] + 8);

    return v5(v4);
  }

  else
  {

    return _swift_task_switch(ViewHierarchyAgent.captureController(for:), 0);
  }
}

uint64_t closure #1 in ViewHierarchyAgent.performRequest(connection:message:)@<X0>(void *a1@<X0>, unsigned int *a2@<X8>)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fd", 2uLL, 1);
  v4 = String.utf8CString.getter();

  v6 = xpc_dictionary_dup_fd(a1, (v4 + 32));
  swift_unknownObjectRelease();

  result = v6;
  *a2 = v6;
  return result;
}

id @nonobjc NSFileHandle.__allocating_init(forWritingTo:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v9 = [ObjCClassFromMetadata fileHandleForWritingToURL:v8 error:v10];
  0;

  if (v9)
  {

    v2 = type metadata accessor for URL();
    (*(*(v2 - 8) + 8))(a1);
    return v9;
  }

  else
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 8))(a1);
    return v5;
  }
}

uint64_t closure #2 in ViewHierarchyAgent.performRequest(connection:message:)(unsigned int a1, uint64_t a2)
{
  v62 = a1;
  v64 = a2;
  v51 = partial apply for implicit closure #1 in closure #2 in ViewHierarchyAgent.performRequest(connection:message:);
  v52 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v53 = closure #1 in OSLogArguments.append(_:)partial apply;
  v54 = closure #1 in OSLogArguments.append(_:)partial apply;
  v55 = closure #1 in OSLogArguments.append(_:)partial apply;
  v79 = 0;
  v78 = 0;
  v76 = 0;
  v56 = 0;
  v57 = type metadata accessor for Logger();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0, v2, v3);
  v61 = v26 - v60;
  v67 = type metadata accessor for URL();
  v65 = *(v67 - 8);
  v66 = v67 - 8;
  v63 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v62, v64, v4);
  v6 = v26 - v63;
  v68 = v26 - v63;
  v79 = v5;
  v78 = v7;
  v82 = 0;
  v71 = [objc_opt_self() defaultManager];
  (*(v65 + 16))(v6, v64, v67);
  URL._bridgeToObjectiveC()(v8);
  v70 = v9;
  (*(v65 + 8))(v68, v67);
  v77 = v82;
  v72 = [v71 removeItemAtURL:v70 error:&v77];
  v69 = v77;
  v77;
  v10 = v82;
  v82 = v69;

  result = v72;
  if ((v72 & 1) == 0)
  {
    v35 = v82;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = v61;
    v36 = 0;
    swift_errorRetain();
    v76 = v37;
    v13 = logger.unsafeMutableAddressor();
    (*(v58 + 16))(v12, v13, v57);
    swift_errorRetain();
    v40 = 7;
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.fault.getter();
    v38 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v14 = swift_allocObject();
    v15 = v41;
    v42 = v14;
    *(v14 + 16) = v51;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v42;
    v46 = v16;
    *(v16 + 16) = v52;
    *(v16 + 24) = v17;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v45 = _allocateUninitializedArray<A>(_:)();
    v47 = v18;

    v19 = v43;
    v20 = v47;
    *v47 = v53;
    v20[1] = v19;

    v21 = v44;
    v22 = v47;
    v47[2] = v54;
    v22[3] = v21;

    v23 = v46;
    v24 = v47;
    v47[4] = v55;
    v24[5] = v23;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v49, v50))
    {
      v25 = v36;
      v28 = static UnsafeMutablePointer.allocate(capacity:)();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v29 = createStorage<A>(capacity:type:)(0, v27, v27);
      v30 = createStorage<A>(capacity:type:)(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v31 = &v75;
      v75 = v28;
      v32 = &v81;
      v81 = v29;
      v33 = &v80;
      v80 = v30;
      serialize(_:at:)(2, &v75);
      serialize(_:at:)(1, v31);
      v73 = v53;
      v74 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v73, v31, v32, v33);
      v34 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v73 = v54;
        v74 = v44;
        closure #1 in osLogInternal(_:log:type:)(&v73, &v75, &v81, &v80);
        v26[1] = 0;
        v73 = v55;
        v74 = v46;
        closure #1 in osLogInternal(_:log:type:)(&v73, &v75, &v81, &v80);
        _os_log_impl(&_mh_execute_header, v49, v50, "Failed to remove temporary file: %s", v28, 0xCu);
        destroyStorage<A>(_:count:)(v29, 0);
        destroyStorage<A>(_:count:)(v30, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v58 + 8))(v61, v57);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

Swift::Void __swiftcall ViewHierarchyAgent.finish(_:)(Swift::Int32 a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMd, &_sSDys5Int32V18ViewHierarchyAgent17CaptureControllerCGMR);
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

uint64_t ViewHierarchyAgent.establishTargetHubConnection(to:)(int a1)
{
  *(v2 + 72) = v1;
  *(v2 + 128) = a1;
  *(v2 + 48) = v2;
  *(v2 + 120) = 0;
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 120) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(ViewHierarchyAgent.establishTargetHubConnection(to:), 0);
}

uint64_t ViewHierarchyAgent.establishTargetHubConnection(to:)()
{
  v10 = *(v0 + 72);
  v11 = *(v0 + 128);
  *(v0 + 48) = v0;
  *(v0 + 16) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v0 + 24) = v1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.dt.ViewHierarchyTargetHub.Notification.", 0x31uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  *(v0 + 124) = v11;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  outlined destroy of DefaultStringInterpolation(v0 + 16);
  v8 = String.init(stringInterpolation:)();
  *(v0 + 80) = v4;
  *(v0 + 32) = v8;
  *(v0 + 40) = v4;

  v9 = String.utf8CString.getter();

  notify_post((v9 + 32));
  swift_unknownObjectRelease();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("establishTargetHubConnection(to:)", 0x21uLL, 1);
  *(v0 + 88) = v5._object;

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  v6 = swift_task_alloc();
  *(v12 + 104) = v6;
  type metadata accessor for SystemXPCPeerConnection();
  *v6 = *(v12 + 48);
  v6[1] = ViewHierarchyAgent.establishTargetHubConnection(to:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12 + 64, 0, 0, v5._countAndFlagsBits, v5._object, partial apply for closure #1 in ViewHierarchyAgent.establishTargetHubConnection(to:), v13);
}

{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 112) = v0;

  if (v0)
  {
    v2 = ViewHierarchyAgent.establishTargetHubConnection(to:);
  }

  else
  {

    v2 = ViewHierarchyAgent.establishTargetHubConnection(to:);
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 48) = v0;
  v3 = *(v0 + 64);

  v1 = *(*(v0 + 48) + 8);

  return v1(v3, &protocol witness table for SystemXPCPeerConnection);
}

{
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t ViewHierarchyAgent.setPendingConnection(_:for:)(uint64_t a1, unsigned int a2)
{
  v36 = a1;
  v40 = a2;
  v35 = 0;
  v30 = &async function pointer to partial apply for closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:);
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v31 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3, v4, v5);
  v32 = v25 - v31;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v33 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44, v6, v7);
  v34 = v25 - v33;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v36, v40, v8);
  v38 = v25 - v37;
  v39 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v9, v11, v25 - v37);
  v43 = v25 - v39;
  v51 = v12;
  v50 = v13;
  v49 = v2;
  swift_beginAccess();
  v48[1] = v40;
  Dictionary.subscript.getter();
  if ((*(v41 + 48))(v43, 1, v44) == 0)
  {
    (*(v41 + 16))(v34, v43, v44);
    outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(v43);
    swift_endAccess();
    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    v14 = swift_allocError();
    *v15 = 2;
    v46 = v14;
    CheckedContinuation.resume(throwing:)();
    (*(v41 + 8))(v34, v44);
  }

  else
  {
    outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(v43);
    swift_endAccess();
  }

  (*(v41 + 16))(v38, v36, v44);
  v16 = *(v41 + 56);
  v26 = 1;
  v16(v38, 0);
  v25[1] = v48;
  v48[0] = v40;
  v25[2] = &v47;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMd, &_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMR);
  Dictionary.subscript.setter();
  swift_endAccess();
  v27 = 0;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v32, v26);

  v18 = swift_allocObject();
  v19 = v29;
  v20 = v40;
  v21 = v27;
  v22 = v30;
  v23 = v32;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v28 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ(v21, v21, v23, v22, v18, &type metadata for () + 8);
  outlined destroy of TaskPriority?(v32);
}

uint64_t closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 120) = a5;
  *(v5 + 64) = a4;
  *(v5 + 40) = v5;
  *(v5 + 48) = 0;
  *(v5 + 112) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGSgMR);
  *(v5 + 72) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 48) = a4;
  *(v5 + 112) = a5;
  v7 = swift_task_alloc();
  *(v11 + 104) = v7;
  *v7 = *(v11 + 40);
  v7[1] = closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:);

  return static Task<>.sleep(nanoseconds:)(5000000000);
}

uint64_t closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)()
{
  v4 = *v1;
  *(*v1 + 40) = *v1;

  if (v0)
  {

    v2 = *(*(v4 + 40) + 8);

    return v2();
  }

  else
  {

    return _swift_task_switch(closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:), 0);
  }
}

{
  v10 = *(v0 + 88);
  v12 = *(v0 + 80);
  v11 = *(v0 + 72);
  v1 = *(v0 + 120);
  *(v0 + 40) = v0;
  *(v0 + 116) = v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMd, &_sSDys5Int32VScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGGMR);
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  if ((*(v10 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(v9[9]);
  }

  else
  {
    v7 = v9[12];
    v8 = v9[10];
    v6 = v9[11];
    (*(v6 + 32))(v7, v9[9]);
    lazy protocol witness table accessor for type ViewHierarchyAgentError and conformance ViewHierarchyAgentError();
    v2 = swift_allocError();
    *v3 = 3;
    v9[7] = v2;
    CheckedContinuation.resume(throwing:)();
    (*(v6 + 8))(v7, v8);
  }

  v4 = *(v9[5] + 8);

  return v4();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v41 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v42 = a6;
  v43 = "Fatal error";
  v44 = "Unexpectedly found nil while unwrapping an Optional value";
  v45 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v46 = 0;
  v59 = a6;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50, v6, v7);
  v51 = &v12 - v47;

  v57 = v49;
  v58 = v50;
  outlined init with copy of TaskPriority?(v48, v51);
  v52 = type metadata accessor for TaskPriority();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  if ((*(v53 + 48))(v51, 1) == 1)
  {
    outlined destroy of TaskPriority?(v51);
    v39 = 0;
  }

  else
  {
    v38 = TaskPriority.rawValue.getter();
    (*(v53 + 8))(v51, v52);
    v39 = v38;
  }

  v35 = v39 | 0x1000;
  v37 = *(v50 + 16);
  v36 = *(v50 + 24);
  swift_unknownObjectRetain();

  if (v37)
  {
    v33 = v37;
    v34 = v36;
    v27 = v36;
    v28 = v37;
    swift_getObjectType();
    v29 = dispatch thunk of Actor.unownedExecutor.getter();
    v30 = v8;
    swift_unknownObjectRelease();
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v25 = v32;
  v26 = v31;
  if (v41)
  {
    v23 = v40;
    v24 = v41;
    v9 = v46;
    v21 = String.utf8CString.getter();
    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZBoSRys4Int8VGXEfU_(v21 + 32, &v55);
    if (v9)
    {
      __break(1u);
    }

    v20 = v55;

    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v19 = v22;
  if (v22)
  {
    v14 = v19;
    v15 = v19;
  }

  else
  {

    v16 = v57;
    v17 = v58;

    v18 = 0;
    if (v26 != 0 || v25 != 0)
    {
      v56[0] = 0;
      v56[1] = 0;
      v56[2] = v26;
      v56[3] = v25;
      v18 = v56;
    }

    v15 = swift_task_create();
  }

  v12 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  Task.init(_:)();
  v13 = v10;

  return v13;
}

uint64_t ViewHierarchyAgent.deinit()
{

  outlined destroy of [Int32 : CaptureController]((v0 + 88));
  outlined destroy of [Int32 : CheckedContinuation<SystemXPCPeerConnection, Error>]((v0 + 96));
  return v2;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t (**a1)(uint64_t, uint64_t, uint64_t))
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for OS_dispatch_queue.Attributes();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    type metadata accessor for OS_dispatch_queue.Attributes();
    return v2;
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  __chkstk_darwin(0, a2, a3);
  v23 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = __chkstk_darwin(v23, &v18, v9);
    v16 = v29;
    v17 = v11;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in serialize<A>(_:at:), &v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1, a2, a3);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_100014C40()
{
  v4 = type metadata accessor for XPCDictionary();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ViewHierarchyAgent.handleMessage(_:from:)(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for XPCDictionary() - 8);
  v12 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = partial apply for closure #1 in ViewHierarchyAgent.handleMessage(_:from:);

  return closure #1 in ViewHierarchyAgent.handleMessage(_:from:)(a1, v7, v8, v9, v10, v11, v1 + v12);
}

uint64_t partial apply for closure #1 in ViewHierarchyAgent.handleMessage(_:from:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSFileHandle()
{
  v2 = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSFileHandle);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined init with take of URL?(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of URL?(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10001536C()
{
  v2 = *(type metadata accessor for URL() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in ViewHierarchyAgent.performRequest(connection:message:)(unsigned int a1)
{
  v2 = type metadata accessor for URL();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return closure #2 in ViewHierarchyAgent.performRequest(connection:message:)(a1, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t outlined destroy of CheckedContinuation<SystemXPCPeerConnection, Error>?(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMd, &_sScCy7Mercury23SystemXPCPeerConnectionCs5Error_pGMR);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100015600()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:);

  return closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)(a1, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in ViewHierarchyAgent.setPendingConnection(_:for:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_64(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_64TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_64TQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *outlined init with copy of Result<XPCPeerConnection, XPCError>(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for XPCError();
    (*(*(v3 - 8) + 16))(a2, a1);
  }

  else
  {
    v5 = *a1;

    v2 = a1[1];
    *a2 = v5;
    a2[1] = v2;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *outlined destroy of Result<XPCPeerConnection, XPCError>(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMd, &_ss6ResultOy7Mercury17XPCPeerConnection_pAC8XPCErrorVGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for XPCError();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t outlined destroy of Result<XPCDictionary, XPCError>(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMd, &_ss6ResultOy7Mercury13XPCDictionaryVAC8XPCErrorVGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for XPCError();
  }

  else
  {
    v1 = type metadata accessor for XPCDictionary();
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_100016790()
{
  v2 = *(type metadata accessor for XPCError() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener()()
{
  type metadata accessor for XPCError();

  return implicit closure #1 in closure #2 in closure #1 in ViewHierarchyAgent.startTargetHubListener()();
}

uint64_t sub_1000169F0()
{
  v2 = *(type metadata accessor for XPCError() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()()
{
  type metadata accessor for XPCError();

  return implicit closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()();
}

uint64_t sub_100016C20()
{

  return swift_deallocObject();
}

uint64_t sub_100016C78()
{
  v2 = *(type metadata accessor for XPCError() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()()
{
  type metadata accessor for XPCError();

  return implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startRemoteListener()();
}

uint64_t sub_100016EA8()
{

  return swift_deallocObject();
}

uint64_t sub_100016F00()
{
  v2 = *(type metadata accessor for XPCError() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener()()
{
  type metadata accessor for XPCError();

  return implicit closure #1 in closure #1 in closure #1 in ViewHierarchyAgent.startSystemListener()();
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  v2 = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t XPCDictionary.subscript.setter()
{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

uint64_t XPCDictionary.subscript.getter()
{
  return XPCDictionary.subscript.getter();
}

{
  return XPCDictionary.subscript.getter();
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return _assertionFailure(_:_:file:line:flags:)();
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}