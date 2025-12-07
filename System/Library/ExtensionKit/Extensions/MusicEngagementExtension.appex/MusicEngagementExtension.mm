unint64_t lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError()
{
  result = lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError;
  if (!lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError;
  if (!lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExtensionError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtensionError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExtensionError()
{
  v1 = *v0;
  v2 = 0xD00000000000001FLL;
  if (v1 == 4)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000025;
  if (v1 == 1)
  {
    v4 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000024;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for ExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t one-time initialization function for decoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

void one-time initialization function for groupDefaults()
{
  UnifiedMessages.groupDefaultsSuiteName.unsafeMutableAddressor();
  v0 = objc_allocWithZone(NSUserDefaults);

  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    static MusicEngagementExtension.groupDefaults = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MusicEngagementExtension.performRequest(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin();
  v9 = v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  outlined init with copy of Any(a1, v14);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  outlined init with take of Any(v14, (v12 + 32));
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  *(v12 + 80) = v4;
  *(v12 + 88) = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:), v12);
}

uint64_t closure #1 in static MusicEngagementExtension.performRequest(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a6;
  v8[35] = a8;
  v8[32] = a4;
  v8[33] = a5;
  type metadata accessor for String.Encoding();
  v8[36] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[37] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in static MusicEngagementExtension.performRequest(with:completion:), v10, v9);
}

uint64_t closure #1 in static MusicEngagementExtension.performRequest(with:completion:)()
{
  v49 = v0;
  v1 = *(v0 + 256);
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v3 = [v2 isValidJSONObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_0Tm(*(v0 + 256), v1[3]);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    *(v0 + 248) = 0;
    v5 = [v2 dataWithJSONObject:v4 options:0 error:v0 + 248];
    swift_unknownObjectRelease();
    v6 = *(v0 + 248);
    if (v5)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      static String.Encoding.utf8.getter();
      result = String.init(data:encoding:)();
      if (!v11)
      {
        __break(1u);
        return result;
      }

      v12 = result;
      v13 = v11;

      if (one-time initialization token for engagementExtension != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.engagementExtension);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v48 = v18;
        *v17 = 136315138;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v48);

        *(v17 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "􀕹 Received request: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
      }

      else
      {
      }

      if (one-time initialization token for decoder != -1)
      {
        swift_once();
      }

      lazy protocol witness table accessor for type ODJRequest and conformance ODJRequest();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v32 = *(v0 + 224);
      v33 = *(v0 + 232);
      v34 = *(v0 + 240);
      static MusicEngagementExtension.parseRequest(request:completion:)(v32, v34, (v0 + 160));
      v45 = *(v0 + 264);
      outlined consume of JSONPayloadRequest?(v32, v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004F2400;
      strcpy((inited + 32), "json-payload");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      outlined init with copy of Any(v0 + 160, inited + 48);
      v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of TaskPriority?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *(v0 + 192) = v47;
      v45(v0 + 192, 0);
      outlined consume of Data._Representation(v7, v9);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 160));
      v30 = v0 + 192;
    }

    else
    {
      v31 = v6;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for engagementExtension != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.engagementExtension);
      swift_errorRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        swift_errorRetain();
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v40;
        *v39 = v40;
        _os_log_impl(&_mh_execute_header, v36, v37, "􀕹 Failed to import JSON payload: %@", v38, 0xCu);
        outlined destroy of TaskPriority?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      v41 = *(v0 + 264);

      lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      *(v0 + 128) = 0u;
      *(v0 + 144) = 0u;
      v42 = swift_allocError();
      *v43 = 0;
      v41(v0 + 128, v42);

      v30 = v0 + 128;
    }
  }

  else
  {

    if (one-time initialization token for engagementExtension != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.engagementExtension);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      swift_allocError();
      *v25 = 2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "􀕹 %@", v23, 0xCu);
      outlined destroy of TaskPriority?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v27 = *(v0 + 264);

    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    v28 = swift_allocError();
    *v29 = 2;
    v27(v0 + 96, v28);

    v30 = v0 + 96;
  }

  outlined destroy of TaskPriority?(v30, &_sypSgMd, &_sypSgMR);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t static MusicEngagementExtension.parseRequest(request:completion:)@<X0>(char a1@<W0>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  if ((a3 - 1) < 2)
  {
    if (one-time initialization token for engagementExtension != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.engagementExtension);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = 4;
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a1)
  {
    if (one-time initialization token for engagementExtension != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.engagementExtension);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = 3;
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_6;
    }

LABEL_5:
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    swift_allocError();
    *v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "􀕹 %@", v8, 0xCu);
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

LABEL_6:

    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    swift_allocError();
    *v12 = v7;
    return swift_willThrow();
  }

  if (one-time initialization token for engagementExtension != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.engagementExtension);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573556863746566, 0xED00006F666E4972, v31);
    _os_log_impl(&_mh_execute_header, v17, v18, "􀕹 Command: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  v21 = specialized static MusicEngagementExtension.fetchUserInfo()();
  v23 = v22;
  v25 = v24;
  v27 = v26 & 1;
  v29 = v28 & 0x101;
  v31[3] = &type metadata for JSONPayloadResponse;
  v31[4] = lazy protocol witness table accessor for type JSONPayloadResponse and conformance JSONPayloadResponse();
  v30 = swift_allocObject();
  v31[0] = v30;
  *(v30 + 16) = v21;
  *(v30 + 24) = v27;
  *(v30 + 32) = v23;
  *(v30 + 42) = v25;
  *(v30 + 40) = v29;
  static MusicEngagementExtension.makeJSON(object:)(v31, x8_0);
  return __swift_destroy_boxed_opaque_existential_0Tm(v31);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
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

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
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

void thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned NSError?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  outlined init with copy of TaskPriority?(a1, v11, &_sypSgMd, &_sypSgMR);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v6 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  if (a2)
  {
LABEL_3:
    a2 = _convertErrorToNSError(_:)();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

void static MusicEngagementExtension.makeJSON(object:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
    goto LABEL_4;
  }

  v13 = v4;
  v14 = v5;
  v15 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v31[0] = 0;
  v17 = [v15 JSONObjectWithData:isa options:0 error:v31];

  v18 = v31[0];
  if (!v17)
  {
    v28 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v13, v14);
LABEL_4:
    if (one-time initialization token for engagementExtension != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.engagementExtension);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      swift_allocError();
      *v11 = 1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "􀕹 %@", v9, 0xCu);
      outlined destroy of TaskPriority?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    swift_willThrow();
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (one-time initialization token for engagementExtension != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.engagementExtension);
  outlined init with copy of Any(a2, v31);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 136315138;
    outlined init with copy of Any(v31, &v29);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v30);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "􀕹 Response: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    outlined consume of Data._Representation(v13, v14);
  }

  else
  {
    outlined consume of Data._Representation(v13, v14);

    __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }
}

id DeviceCapabilitiesObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t one-time initialization function for engagementExtension()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.engagementExtension);
  __swift_project_value_buffer(v0, static Logger.engagementExtension);
  return static Logger.music(_:)(0xD000000000000018, 0x80000001004F23F0);
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
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore9AnyActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore9AnyActionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC7ElementOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC7ElementOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore23ApplicationCapabilitiesV4TabsV13Configuration33_3C92A9FA31E0FE3D8D536795352BB0D1LLVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore23ApplicationCapabilitiesV4TabsV13Configuration33_3C92A9FA31E0FE3D8D536795352BB0D1LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore14PlaylistCoversO5CoverV14RepresentationVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore14PlaylistCoversO5CoverV14RepresentationVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatV3hue_AE10saturationAE10brightnessAE5alphatGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4TextVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4TextVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd, &_ss23_ContiguousArrayStorageCySo7CGPointVGMR);
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
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd_0, &_ss23_ContiguousArrayStorageCySnySiGGMR_0);
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
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore14PlaylistCoversO0dE2UIE12CarouselItemVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore14PlaylistCoversO0dE2UIE12CarouselItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI12SymbolButtonC16setConfiguration_9animation7updatesyAE0J0V_AE9AnimationVSgSayAE6UpdateVGtF10TransitionL_VGMd, &_ss23_ContiguousArrayStorageCy11MusicCoreUI12SymbolButtonC16setConfiguration_9animation7updatesyAE0J0V_AE9AnimationVSgSayAE6UpdateVGtF10TransitionL_VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI14AnimationGroup33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC8AnimatorVGMd, &_ss23_ContiguousArrayStorageCy11MusicCoreUI14AnimationGroup33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC8AnimatorVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_0, &_ss23_ContiguousArrayStorageCyypGMR_0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17ShaderFallbackKit6VertexVGMd, &_ss23_ContiguousArrayStorageCy17ShaderFallbackKit6VertexVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10CAMeshFaceVGMd, &_ss23_ContiguousArrayStorageCySo10CAMeshFaceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CAMeshVertexVGMd, &_ss23_ContiguousArrayStorageCySo12CAMeshVertexVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
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
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D0C4WordVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C4WordVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D0C8SyllableVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8SyllableVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D14OptionsManagerC6OptionOGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D14OptionsManagerC6OptionOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX06SyncedD8LineViewC015SBS_TextContentG0C0iG0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO8MetadataV0F0VGMd, &_ss23_ContiguousArrayStorageCy7LyricsX06SyncedD8LineViewC015SBS_TextContentG0C0iG0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO8MetadataV0F0VGMR);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
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

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void specialized static MusicEngagementExtension.main()()
{
  if (one-time initialization token for engagementExtension != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.engagementExtension);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "􀕹 Initializing extension", v2, 2u);
  }
}

uint64_t sub_1000057F4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000058D8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocObject();
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in static MusicEngagementExtension.performRequest(with:completion:)(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t sub_100005BB4()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type ODJRequest and conformance ODJRequest()
{
  result = lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest;
  if (!lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest);
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

uint64_t outlined consume of JSONPayloadRequest?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    return outlined consume of JSONRequest?(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of JSONRequest?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t specialized UnifiedMessages.MLI.State.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnifiedMessages.MLI.State.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized static MusicEngagementExtension.mliState.getter()
{
  UnifiedMessages.groupDefaultsSuiteName.unsafeMutableAddressor();
  v0 = objc_allocWithZone(NSUserDefaults);

  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  UnifiedMessages.MLI.userDefaultsKey.unsafeMutableAddressor();

  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 stringForKey:v4];

  if (!v5)
  {

    return 1;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v11._countAndFlagsBits = v6;
  v11._object = v8;
  v9 = specialized UnifiedMessages.MLI.State.init(rawValue:)(v11);

  result = v9;
  if (v9 == 4)
  {
    return 1;
  }

  return result;
}

id specialized static MusicEngagementExtension.fetchUserInfo()()
{
  if (one-time initialization token for groupDefaults != -1)
  {
    swift_once();
  }

  v0 = static MusicEngagementExtension.groupDefaults;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    outlined destroy of TaskPriority?(&v13, &_sypSgMd, &_sypSgMR);
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5 ^ 1;
  }

  else
  {
    outlined destroy of TaskPriority?(&v13, &_sypSgMd, &_sypSgMR);
    v6 = 0;
    v7 = 1;
  }

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v9 = result;
    [result isCloudLibraryEnabled];

    specialized static MusicEngagementExtension.mliState.getter();
    LOBYTE(v13) = v7;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
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
      outlined init with copy of TaskPriority?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type JSONPayloadResponse and conformance JSONPayloadResponse()
{
  result = lazy protocol witness table cache variable for type JSONPayloadResponse and conformance JSONPayloadResponse;
  if (!lazy protocol witness table cache variable for type JSONPayloadResponse and conformance JSONPayloadResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadResponse and conformance JSONPayloadResponse);
  }

  return result;
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

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_24MusicEngagementExtension11JSONRequestVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_24MusicEngagementExtension18JSONPayloadRequestVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ODJRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for ODJRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ODJRequest.CodingKeys(uint64_t a1@<X8>)
{
  strcpy(a1, "json-payload");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ODJRequest.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance ODJRequest.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JSONPayloadRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSONPayloadRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSONPayloadRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ODJRequest@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ODJRequest.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ODJRequest.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ODJRequest.CodingKeys@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t JSONPayloadResponse.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24MusicEngagementExtension19JSONPayloadResponseV10CodingKeys019_11708B28C4D39BDD71L12D37E95CC8083LLOGMd, &_ss22KeyedEncodingContainerVy24MusicEngagementExtension19JSONPayloadResponseV10CodingKeys019_11708B28C4D39BDD71L12D37E95CC8083LLOGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = v15;
  v20 = BYTE2(a5);
  v19 = a5;
  lazy protocol witness table accessor for type Response and conformance Response();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t Response.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24MusicEngagementExtension8ResponseV10CodingKeys019_11708B28C4D39BDD71K12D37E95CC8083LLOGMd, &_ss22KeyedEncodingContainerVy24MusicEngagementExtension8ResponseV10CodingKeys019_11708B28C4D39BDD71K12D37E95CC8083LLOGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Response.CodingKeys and conformance Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = v15;
  v20 = BYTE2(a5);
  v19 = a5;
  lazy protocol witness table accessor for type UserInfo and conformance UserInfo();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t UserInfo.encode(to:)(void *a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5)
{
  v14 = a5;
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24MusicEngagementExtension8UserInfoV10CodingKeys019_11708B28C4D39BDD71L12D37E95CC8083LLOGMd, &_ss22KeyedEncodingContainerVy24MusicEngagementExtension8UserInfoV10CodingKeys019_11708B28C4D39BDD71L12D37E95CC8083LLOGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v18 = 1;
    v11 = BYTE2(v14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v11;
    v15 = 3;
    lazy protocol witness table accessor for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance JSONRequest.CodingKeys()
{
  if (*v0)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x646E616D6D6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JSONRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSONRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSONRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance JSONRequest@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized JSONRequest.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JSONPayloadResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSONPayloadResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSONPayloadResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JSONPayloadRequest.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Response.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6573556863746566 && a2 == 0xED00006F666E4972)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Response.CodingKeys and conformance Response.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Response.CodingKeys and conformance Response.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance UserInfo.CodingKeys()
{
  v1 = 0x6574617453696C6DLL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserInfo.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized UserInfo.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance UserInfo(void *a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return UserInfo.encode(to:)(a1, *v1, *(v1 + 8), *(v1 + 16), v2 | (*(v1 + 26) << 16) | *(v1 + 24));
}

void *specialized ODJRequest.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24MusicEngagementExtension10ODJRequestV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy24MusicEngagementExtension10ODJRequestV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    lazy protocol witness table accessor for type JSONPayloadRequest and conformance JSONPayloadRequest();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONPayloadRequest and conformance JSONPayloadRequest()
{
  result = lazy protocol witness table cache variable for type JSONPayloadRequest and conformance JSONPayloadRequest;
  if (!lazy protocol witness table cache variable for type JSONPayloadRequest and conformance JSONPayloadRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadRequest and conformance JSONPayloadRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadResponse.CodingKeys and conformance JSONPayloadResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Response and conformance Response()
{
  result = lazy protocol witness table cache variable for type Response and conformance Response;
  if (!lazy protocol witness table cache variable for type Response and conformance Response)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Response and conformance Response);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONPayloadResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 27))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONPayloadResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONPayloadRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONPayloadRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *specialized JSONPayloadRequest.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24MusicEngagementExtension18JSONPayloadRequestV10CodingKeys019_11708B28C4D39BDD71L12D37E95CC8083LLOGMd, &_ss22KeyedDecodingContainerVy24MusicEngagementExtension18JSONPayloadRequestV10CodingKeys019_11708B28C4D39BDD71L12D37E95CC8083LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    lazy protocol witness table accessor for type JSONRequest and conformance JSONRequest();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayloadRequest.CodingKeys and conformance JSONPayloadRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONRequest and conformance JSONRequest()
{
  result = lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest;
  if (!lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Response.CodingKeys and conformance Response.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Response.CodingKeys and conformance Response.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserInfo and conformance UserInfo()
{
  result = lazy protocol witness table cache variable for type UserInfo and conformance UserInfo;
  if (!lazy protocol witness table cache variable for type UserInfo and conformance UserInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserInfo and conformance UserInfo);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 27))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UserInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for JSONRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t specialized JSONRequest.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24MusicEngagementExtension11JSONRequestV10CodingKeys019_11708B28C4D39BDD71K12D37E95CC8083LLOGMd, &_ss22KeyedDecodingContainerVy24MusicEngagementExtension11JSONRequestV10CodingKeys019_11708B28C4D39BDD71K12D37E95CC8083LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    lazy protocol witness table accessor for type JSONRequest.Command and conformance JSONRequest.Command();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONRequest.Command and conformance JSONRequest.Command()
{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserInfo.CodingKeys and conformance UserInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State()
{
  result = lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State;
  if (!lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State;
  if (!lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State;
  if (!lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for JSONRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JSONRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for JSONPayloadResponse.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for JSONPayloadResponse.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t specialized UserInfo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x80000001004C4160 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004C4180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004C41A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617453696C6DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id one-time initialization function for module()
{
  result = closure #1 in variable initialization expression of static NSBundle.module();
  static NSBundle.module = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static NSBundle.module();
  static NSBundle.module = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static NSBundle.module();
  static NSBundle.module = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static NSBundle.module();
  static NSBundle.module = result;
  return result;
}

id closure #1 in variable initialization expression of static NSBundle.module()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  __chkstk_darwin();
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v50 - v5;
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  v56 = specialized _arrayForceCast<A, B>(_:)(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMR);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v58 = *(v3 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004F2EB0;
  v60 = v13;
  v53 = v14;
  v15 = v14 + v13;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = [v17 resourceURL];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 0;
  }

  else
  {
    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 1;
  }

  v59 = v19;
  v19(v20, v21, 1, v0);
  v22 = v1;
  outlined init with take of URL?(v12, v15);
  type metadata accessor for BundleFinder();
  v23 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
  v24 = [v23 resourceURL];

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v55;
  v51 = v22;
  v27 = v10;
  v28 = v10;
  v29 = v59;
  v59(v27, v25, 1, v0);
  v30 = v58;
  outlined init with take of URL?(v28, v15 + v58);
  v31 = [v16 mainBundle];
  v32 = [v31 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = (v22 + 7);
  v29(v15 + 2 * v30, 0, 1, v0);
  v61 = v56;
  specialized Array.append<A>(contentsOf:)(v53);
  v33 = v61;
  v34 = v61[2];
  if (v34)
  {
    v35 = 0;
    v36 = v60 + v61;
    v60 = (v51 + 6);
    v56 = (v51 + 1);
    v51 += 4;
    v52 = "AC12BundleFinder";
    v53 = v34;
    while (v35 < v33[2])
    {
      outlined init with copy of TaskPriority?(v36, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v37 = *v60;
      if ((*v60)(v6, 1, v0) == 1)
      {
        outlined destroy of URL?(v6);
        v38 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v56)(v6, v0);
        v38 = 0;
      }

      v59(v8, v38, 1, v0);
      outlined init with copy of TaskPriority?(v8, v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v37(v26, 1, v0) == 1)
      {
        outlined destroy of URL?(v8);
      }

      else
      {
        v39 = v33;
        v40 = v8;
        v41 = v6;
        v42 = v54;
        (*v51)(v54, v26, v0);
        v43 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v44);
        v46 = v45;
        v47 = [v43 initWithURL:v45];

        v26 = v55;
        v48 = v42;
        v6 = v41;
        v8 = v40;
        v33 = v39;
        v34 = v53;
        (*v56)(v48, v0);
        outlined destroy of URL?(v8);
        if (v47)
        {

          return v47;
        }
      }

      ++v35;
      v36 += v58;
      if (v34 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0) - 8);
  __chkstk_darwin();
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v50 - v5;
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  v56 = _ss15_arrayForceCastySayq_GSayxGr0_lF10Foundation3URLV_AFSgTg5_0(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_0, &_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMR_0);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v58 = *(v3 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004F2EB0;
  v60 = v13;
  v53 = v14;
  v15 = v14 + v13;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = [v17 resourceURL];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 0;
  }

  else
  {
    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 1;
  }

  v59 = v19;
  v19(v20, v21, 1, v0);
  v22 = v1;
  _s10Foundation3URLVSgWOb_0(v12, v15);
  type metadata accessor for BundleFinder();
  v23 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
  v24 = [v23 resourceURL];

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v55;
  v51 = v22;
  v27 = v10;
  v28 = v10;
  v29 = v59;
  v59(v27, v25, 1, v0);
  v30 = v58;
  _s10Foundation3URLVSgWOb_0(v28, v15 + v58);
  v31 = [v16 mainBundle];
  v32 = [v31 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = (v22 + 7);
  v29(v15 + 2 * v30, 0, 1, v0);
  v61 = v56;
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation3URLVSg_SayAHGTg5_0(v53);
  v33 = v61;
  v34 = v61[2];
  if (v34)
  {
    v35 = 0;
    v36 = v60 + v61;
    v60 = (v51 + 6);
    v56 = (v51 + 1);
    v51 += 4;
    v52 = "1F9AD12BundleFinder";
    v53 = v34;
    while (v35 < v33[2])
    {
      outlined init with copy of TaskPriority?(v36, v6, &_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
      v37 = *v60;
      if ((*v60)(v6, 1, v0) == 1)
      {
        _s10Foundation3URLVSgWOh_0(v6);
        v38 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v56)(v6, v0);
        v38 = 0;
      }

      v59(v8, v38, 1, v0);
      outlined init with copy of TaskPriority?(v8, v26, &_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
      if (v37(v26, 1, v0) == 1)
      {
        _s10Foundation3URLVSgWOh_0(v8);
      }

      else
      {
        v39 = v33;
        v40 = v8;
        v41 = v6;
        v42 = v54;
        (*v51)(v54, v26, v0);
        v43 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v44);
        v46 = v45;
        v47 = [v43 initWithURL:v45];

        v26 = v55;
        v48 = v42;
        v6 = v41;
        v8 = v40;
        v33 = v39;
        v34 = v53;
        (*v56)(v48, v0);
        _s10Foundation3URLVSgWOh_0(v8);
        if (v47)
        {

          return v47;
        }
      }

      ++v35;
      v36 += v58;
      if (v34 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_1, &_s10Foundation3URLVSgMR_1) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = _ss15_arrayForceCastySayq_GSayxGr0_lF10Foundation3URLV_AFSgTg5_1(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_1, &_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMR_1);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004F2EB0;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  _s10Foundation3URLVSgWOb_1(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  _s10Foundation3URLVSgWOb_1(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation3URLVSg_SayAHGTg5_1(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "319BF3FEA1012BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      _s10Foundation3URLVSgWOc_0(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        _s10Foundation3URLVSgWOh_1(v6);
        v36 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      _s10Foundation3URLVSgWOc_0(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        _s10Foundation3URLVSgWOh_1(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        _s10Foundation3URLVSgWOh_1(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3, &_s10Foundation3URLVSgMR_3) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = _ss15_arrayForceCastySayq_GSayxGr0_lF10Foundation3URLV_AFSgTg5_2(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_2, &_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMR_2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004F2EB0;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  _s10Foundation3URLVSgWOb_3(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  _s10Foundation3URLVSgWOb_3(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation3URLVSg_SayAHGTg5_2(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "F0E546A8DF70B34912BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      _s10Foundation3URLVSgWOc_1(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        _s10Foundation3URLVSgWOh_3(v6);
        v36 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      _s10Foundation3URLVSgWOc_1(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        _s10Foundation3URLVSgWOh_3(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        _s10Foundation3URLVSgWOh_3(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double variable initialization expression of AnyAction.displayConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1004F2EC0;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

unint64_t variable initialization expression of ArtworkVideoReportingController.signpostsForIndex(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v5 = specialized Dictionary.init(dictionaryLiteral:)(v4, a1, &type metadata for ComponentRenderEventSignposts, a2);

  return v5;
}

uint64_t variable initialization expression of MetricsReportingController.componentRenderEventSampler(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() standardUserDefaults];
  return v2;
}

id variable initialization expression of MetricsReportingController.carFocusedMetricsController()
{
  v0 = objc_allocWithZone(SSMetricsController);

  return [v0 init];
}

uint64_t variable initialization expression of MetricsReportingController.carMetricsReporter()
{
  type metadata accessor for CarNowPlayingMetrics.Reporter();

  return swift_allocObject();
}

double variable initialization expression of ApplicationCapabilities.ratingWarning@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

id variable initialization expression of ApplicationCapabilities.subscriptionStatus()
{
  v0 = [objc_opt_self() sharedController];
  v1 = [v0 musicSubscriptionStatus];

  return v1;
}

uint64_t variable initialization expression of ApplicationCapabilities.Controller.storeBag()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  return v1;
}

id variable initialization expression of BackgroundRefreshController.cloudClient()
{
  v0 = objc_allocWithZone(ICCloudClient);

  return [v0 init];
}

uint64_t variable initialization expression of BagProvider.durableObservers()
{
  v0 = type metadata accessor for BagProvider.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

uint64_t variable initialization expression of BagProvider.logger()
{
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.musicBag;

  return Logger.init(_:)();
}

id variable initialization expression of BagProvider.retry()
{
  v0 = objc_allocWithZone(type metadata accessor for BagProvider.Retry());

  return [v0 init];
}

uint64_t variable initialization expression of Gliss.Coordinator.queuedItem@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of Gliss.Transition.animations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata1();

  return static Array._allocateUninitialized(_:)();
}

uint64_t variable initialization expression of Gliss.Transition.completions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata2();

  return static Array._allocateUninitialized(_:)();
}

double variable initialization expression of Gliss.Transition.gestureState@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver._hasDisregardedBanner()
{
  v4 = 2;
  v3[0] = 0xD000000000000014;
  v3[1] = 0x80000001004C53B0;
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = lazy protocol witness table accessor for type String and conformance String();
  UserDefault.init(wrappedValue:defaults:key:)(&v4, v0, v3, &type metadata for String, &type metadata for Bool, v1, &v5);
  return v5;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver.capabilitiesController()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

void *variable initialization expression of MusicLibrary.ActionableStateController.itemStateSubscriptions()
{
  if (!(_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
}

id variable initialization expression of Library.Menu.Request.librarySource()
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id variable initialization expression of ApplicationCapabilities.hasNetworkConnectivity()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v1 = result;
    v2 = [result hasProperNetworkConditionsToShowCloudMedia];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of PlaybackController.nowPlayingPresentationDescriptor@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of PlaybackTimeObserver.durationSnapshot@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  return result;
}

id variable initialization expression of Player._path()
{
  v0 = [objc_opt_self() systemRoute];
  v1 = [v0 isDeviceRoute];
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = v2;
    if (one-time initialization token for systemMusic != -1)
    {
      swift_once();
    }

    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 systemMusicPathWithRoute:v0 playerID:v4];
  }

  else
  {
    v5 = [v2 pathWithRoute:v0 bundleID:0 playerID:0];
  }

  return v5;
}

uint64_t variable initialization expression of Player.nowPlayingConfiguration()
{
  if (one-time initialization token for emptyNowPlayingItem != -1)
  {
    swift_once();
  }

  v0 = static MPPropertySet.emptyNowPlayingItem;
  v1 = static MPPropertySet.emptyNowPlayingItem;
  return v0;
}

uint64_t variable initialization expression of ApplicationCapabilities.Controller.lock()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  return UnfairLock.init()();
}

id variable initialization expression of Player.NowPlayingConfiguration.itemProperties()
{
  if (one-time initialization token for emptyNowPlayingItem != -1)
  {
    swift_once();
  }

  v1 = static MPPropertySet.emptyNowPlayingItem;

  return v1;
}

uint64_t variable initialization expression of MusicItemState._playabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v3 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of MusicItemState._previewCapabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v3 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:);
  v5 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id variable initialization expression of PlaylistCovers.ArtworkDataSource.cache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

double variable initialization expression of PresentationSource.position@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 40) = xmmword_1004F2ED0;
  return result;
}

uint64_t variable initialization expression of RequestResponse.Controller.enqueuedRevisionCompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();

  return static Array._allocateUninitialized(_:)();
}

unint64_t variable initialization expression of RequestResponse.Controller.revisionIDCompletionsMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();
  v7 = type metadata accessor for Array();
  swift_getTupleTypeMetadata2();
  v8 = static Array._allocateUninitialized(_:)();
  v9 = specialized Dictionary.init(dictionaryLiteral:)(v8, &type metadata for Int, v7, &protocol witness table for Int);

  return v9;
}

double variable initialization expression of GroupActivitiesManager._reaction@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of Actions.MetricsReportingContext.page@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ExplicitRestrictionsController.symbol()
{
  if (one-time initialization token for symbols != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t variable initialization expression of OptimisticValue.transaction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for OptimisticValue.Transaction(0, a1, a3, a4);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance NSTextAlignment@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance PresentationSource.PresentingViewControllerOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance MPCPlaybackIntentOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance MPCPlaybackIntentOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MTKTextureLoaderOption@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance CGGradientDrawingOptions(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for MPCPlayerRequestErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);

  return Error<>._domain.getter(a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for MPCPlayerRequestErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);

  return Error<>._code.getter(a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for MPCPlayerRequestErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MPCPlaybackIntentOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for MPCPlayerEnqueueErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for MPCPlayerEnqueueErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for MPCPlayerEnqueueErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for MPCPlayerEnqueueErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for MPCPlayerRequestErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for MPCPlayerRequestErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for MPCPlayerRequestErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for MPCPlayerRequestErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for MPCErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for MPCErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for MPCErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for MPCErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for MPCMusicBehaviorErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for MPCMusicBehaviorErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for MPCMusicBehaviorErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for MPCMusicBehaviorErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for MPCPlayerEnqueueErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, &protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName(uint64_t a1)
{
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName, &protocol conformance descriptor for NSNotificationName);
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName, &protocol conformance descriptor for NSNotificationName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance ICURLBagKey(uint64_t a1)
{
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type ICURLBagKey and conformance ICURLBagKey, type metadata accessor for ICURLBagKey, &protocol conformance descriptor for ICURLBagKey);
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type ICURLBagKey and conformance ICURLBagKey, type metadata accessor for ICURLBagKey, &protocol conformance descriptor for ICURLBagKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance ICPrivacyIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type ICPrivacyIdentifier and conformance ICPrivacyIdentifier, type metadata accessor for ICPrivacyIdentifier, &protocol conformance descriptor for ICPrivacyIdentifier);
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type ICPrivacyIdentifier and conformance ICPrivacyIdentifier, type metadata accessor for ICPrivacyIdentifier, &protocol conformance descriptor for ICPrivacyIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for MPCPlayerEnqueueErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);

  return Error<>._domain.getter(a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for MPCPlayerEnqueueErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);

  return Error<>._code.getter(a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for MPCPlayerEnqueueErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for MPCPlayerEnqueueErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for MPCPlayerRequestErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for MPCErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);

  return Error<>._domain.getter(a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for MPCErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);

  return Error<>._code.getter(a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for MPCErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for MPCErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for MPCMusicBehaviorErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);

  return Error<>._domain.getter(a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for MPCMusicBehaviorErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);

  return Error<>._code.getter(a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for MPCMusicBehaviorErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for MPCMusicBehaviorErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName(uint64_t a1)
{
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName, &protocol conformance descriptor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MSVAutoBugCaptureDomain(uint64_t a1)
{
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type MSVAutoBugCaptureDomain and conformance MSVAutoBugCaptureDomain, type metadata accessor for MSVAutoBugCaptureDomain, &protocol conformance descriptor for MSVAutoBugCaptureDomain);
  lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(&lazy protocol witness table cache variable for type MSVAutoBugCaptureDomain and conformance MSVAutoBugCaptureDomain, type metadata accessor for MSVAutoBugCaptureDomain, &protocol conformance descriptor for MSVAutoBugCaptureDomain);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance UIApplicationOpenExternalURLOptionsKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIApplicationOpenExternalURLOptionsKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n10Foundation4UUIDV_So22UIViewPropertyAnimatorCTt0g5(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So22UIViewPropertyAnimatorCtMd, &_s10Foundation4UUIDV_So22UIViewPropertyAnimatorCtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo22UIViewPropertyAnimatorCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo22UIViewPropertyAnimatorCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of TaskPriority?(v9, v5, &_s10Foundation4UUIDV_So22UIViewPropertyAnimatorCtMd, &_s10Foundation4UUIDV_So22UIViewPropertyAnimatorCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t type metadata accessor for BundleFinder()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DSPSplitComplex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DSPSplitComplex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MPCPlayerItemDurationSnapshot(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MPCPlayerItemDurationSnapshot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolButton.Update.AnimationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SymbolButton.Update.AnimationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
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

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MPMediaLibraryFilteringOptions and conformance MPMediaLibraryFilteringOptions(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DSPComplex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DSPComplex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void type metadata accessor for CIQRCodeErrorCorrectionLevel(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t ActionDeclaring.init(context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v23 - v15;
  v24 = a1;
  outlined init with copy of Any(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
    (*(v12 + 16))(v14, v16, AssociatedTypeWitness);
    v19 = v25;
    (*(a3 + 24))(v14, a2, a3);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    (*(v12 + 8))(v16, AssociatedTypeWitness);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v18(v11, 1, 1, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    (*(v9 + 8))(v11, v8);
    v21 = v25;
  }

  return (*(*(a2 - 8) + 56))(v21, v20, 1, a2);
}

__n128 AnyAction.init(identifier:contexts:resolver:logs:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X3>)
{
  specialized AnyAction.init(identifier:contexts:resolver:logs:)(a2, a3, a4, a5, v10);
  v6 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v6;
  *(a1 + 128) = v10[8];
  v7 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v7;
  v8 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v8;
  result = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t AnyAction.canPerform.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  __break(1u);
  return result;
}

uint64_t implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:)(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:), v3, v2);
}

uint64_t implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:)()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:);

  return v6(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:);
  }

  else
  {
    v5 = implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:);
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:)(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:), v3, v2);
}

uint64_t implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:)()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:);

  return v6(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:);
  }

  else
  {
    v5 = implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void *AnyAction.submenu.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t AnyAction.execute()()
{
  v1[21] = v0;
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(AnyAction.execute(), v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = AnyAction.execute();
  }

  else
  {
    v5 = AnyAction.execute();
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = AnyAction.execute();
  }

  else
  {
    v5 = AnyAction.execute();
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(*(v0 + 168) + 128);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v17 = v0;

  v1 = v0[26];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.actions);
  outlined init with copy of AnyAction(v2, (v0 + 2));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of AnyAction(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

{
  v17 = v0;

  v1 = v0[28];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.actions);
  outlined init with copy of AnyAction(v2, (v0 + 2));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  outlined destroy of AnyAction(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

void AnyAction.execute()()
{
  v31 = v0;
  v1 = *(v0[21] + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1();
  if (v3 == 1)
  {
    v4 = *(v0[21] + 96);
    if (v4)
    {
      v29 = (v4 + *v4);
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = AnyAction.execute();

      v29();
      return;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v6 = v2;
  v7 = v3;

  v8 = outlined consume of ActionCondition.Result(v6, v7);
  v9 = (v1)(v8);
  if (v10 == 1)
  {
    lazy protocol witness table accessor for type AnyAction.Error and conformance AnyAction.Error();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    lazy protocol witness table accessor for type AnyAction.Error and conformance AnyAction.Error();
    v11 = swift_allocError();
    *v15 = v13;
    v15[1] = v14;
  }

  swift_willThrow();
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v16 = v0[21];
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.actions);
  outlined init with copy of AnyAction(v16, (v0 + 2));
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  outlined destroy of AnyAction(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[21];
    v21 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v21 = 136446466;
    v22 = ActionType.rawValue.getter(*v20);
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v0[20] = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(describing:)();
    v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v26, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to perform action %{public}s with error %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v28 = v0[1];

  v28();
}

{
  v1 = *(*(v0 + 168) + 112);
  if (v1)
  {
    v3 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = AnyAction.execute();

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t Logger.actions.unsafeMutableAddressor()
{
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.actions);
}

uint64_t one-time initialization function for actions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.actions);
  __swift_project_value_buffer(v0, static Logger.actions);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.actions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.actions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_0(v11, 0, 0, 1, a1, a2);
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

unint64_t _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_0(a5, a6);
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

void *_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_0(uint64_t a1, unint64_t a2)
{
  v3 = _ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_0(a1, a2);
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_0(&_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyFTv_r_0);
  return v3;
}

void *_ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_0(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_0(v5, 0);
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
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_0(v10, 0);
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

uint64_t _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_0(uint64_t result)
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

  result = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_0(result, v11, 1, v3);
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

char *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_0, &_ss23_ContiguousArrayStorageCys5UInt8VGMR_0);
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

__n128 specialized AnyAction.init(_:identifier:)@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v5 = a1[4];
  *&v40 = DynamicType;
  *(&v40 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16ActionPerforming_pXpMd, &_s9MusicCore16ActionPerforming_pXpMR);
  v6 = String.init<A>(describing:)();
  v28 = v7;
  v29 = v6;
  outlined init with copy of ActionPerforming(a1, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16ActionPerforming_pMd, &_s9MusicCore16ActionPerforming_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore25ActionDisplayConfigurable_pMd, &_s9MusicCore25ActionDisplayConfigurable_pMR);
  if (swift_dynamicCast())
  {
    v8 = *(&v58 + 1);
    v9 = v59;
    __swift_project_boxed_opaque_existential_0Tm(&v57, *(&v58 + 1));
    (*(v9 + 8))(v60, v8, v9);
    v10 = v60[1];
    v11 = v60[2];
    v26 = v60[3];
    v24 = v60[0];
    v25 = v60[4];
    v23 = v60[5];
    __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    outlined destroy of TaskPriority?(&v57, &_s9MusicCore25ActionDisplayConfigurable_pSgMd, &_s9MusicCore25ActionDisplayConfigurable_pSgMR);
    v24 = 0;
    v25 = 0;
    v11 = 0;
    v26 = 0;
    v23 = 0;
    v10 = 1;
  }

  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v12);
  v22 = (*(v13 + 24))(v12, v13);
  outlined init with copy of ActionPerforming(a1, &v40);
  v21 = swift_allocObject();
  outlined init with take of ActionPerforming(&v40, v21 + 16);
  outlined init with copy of ActionPerforming(a1, &v40);
  v20 = swift_allocObject();
  outlined init with take of ActionPerforming(&v40, v20 + 16);
  outlined init with copy of ActionPerforming(a1, &v40);
  v19 = swift_allocObject();
  outlined init with take of ActionPerforming(&v40, v19 + 16);
  outlined init with copy of ActionPerforming(a1, &v40);
  v14 = swift_allocObject();
  outlined init with take of ActionPerforming(&v40, v14 + 16);
  LOBYTE(v31) = a2;
  *(&v31 + 1) = v29;
  v32.n128_u64[0] = v28;
  v32.n128_u64[1] = v24;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  *&v35 = v23;
  *(&v35 + 1) = v22;
  *&v36 = partial apply for closure #1 in AnyAction.init(_:identifier:);
  *(&v36 + 1) = v21;
  *&v37 = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:);
  *(&v37 + 1) = v20;
  *&v38 = &async function pointer to partial apply for implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:);
  *(&v38 + 1) = v19;
  *&v39 = partial apply for implicit closure #6 in implicit closure #5 in AnyAction.init(_:identifier:);
  *(&v39 + 1) = v14;
  outlined init with copy of AnyAction(&v31, &v40);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  LOBYTE(v40) = a2;
  *(&v40 + 1) = v29;
  v41 = v28;
  v42 = v24;
  v43 = v10;
  v44 = v11;
  v45 = v26;
  v46 = v25;
  v47 = v23;
  v48 = v22;
  v49 = partial apply for closure #1 in AnyAction.init(_:identifier:);
  v50 = v21;
  v51 = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:);
  v52 = v20;
  v53 = &async function pointer to partial apply for implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:);
  v54 = v19;
  v55 = partial apply for implicit closure #6 in implicit closure #5 in AnyAction.init(_:identifier:);
  v56 = v14;
  outlined destroy of AnyAction(&v40);
  v15 = v38;
  *(a3 + 96) = v37;
  *(a3 + 112) = v15;
  *(a3 + 128) = v39;
  v16 = v34;
  *(a3 + 32) = v33;
  *(a3 + 48) = v16;
  v17 = v36;
  *(a3 + 64) = v35;
  *(a3 + 80) = v17;
  result = v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

void specialized AnyAction.init(identifier:contexts:resolver:logs:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v74 = a2;
  v5 = a1;
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v48 = a4;
    if (((1 << a1) & 0x700000000180) != 0)
    {
      v49 = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
      v50 = &type metadata for Feature.MusicKit;
    }

    else
    {
      LOBYTE(v107) = 2;
      v49 = lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer();
      v50 = &type metadata for Feature.MediaPlayer;
    }

    v62 = FeatureFlagsKey.isEnabled.getter(v50, v49);
    a4 = v48;
    if ((v62 & 1) == 0)
    {

      if (one-time initialization token for isInternalInstall != -1)
      {
LABEL_34:
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_11;
      }

      *&v107 = 0;
      *(&v107 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v63 = ActionType.rawValue.getter(v5);
      v65 = v64;

      *&v107 = v63;
      *(&v107 + 1) = v65;
      v66._countAndFlagsBits = 0xD00000000000001ELL;
      v66._object = 0x80000001004C5560;
      String.append(_:)(v66);
      v31 = *(&v107 + 1);
      v30 = v107;
      goto LABEL_10;
    }
  }

  v70 = a4;
  v8 = a3[3];
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_0Tm(a3, v8);
  LOBYTE(v107) = v5;
  v10 = *(v9 + 8);
  v11 = lazy protocol witness table accessor for type ActionType and conformance ActionType();
  v12 = v10(&v107, &type metadata for ActionType, v11, v8, v9);
  if (!v12)
  {

    *&v107 = 0;
    *(&v107 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v26 = ActionType.rawValue.getter(v5);
    v28 = v27;

    *&v107 = v26;
    *(&v107 + 1) = v28;
    v29._countAndFlagsBits = 0xD000000000000014;
    v29._object = 0x80000001004C5500;
    String.append(_:)(v29);
    v31 = *(&v107 + 1);
    v30 = v107;
LABEL_10:
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v30, v31, 80, 120, 0xE100000000000000);

    goto LABEL_11;
  }

  v68 = a5;
  v69 = v5;
  v67 = a3;
  v73 = *(v74 + 16);
  if (v73)
  {
    v14 = v12;
    v15 = v13;
    a5 = 0;
    a3 = (v74 + 32);
    v71 = v12 - 8;
    v72 = v13 + 8;
    while (1)
    {
      if (a5 >= *(v74 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      outlined init with copy of Any(a3, v93);
      v16 = *(v15 + 8);
      v17 = type metadata accessor for Optional();
      v18 = *(v17 - 8);
      v19 = __chkstk_darwin();
      v21 = &v67 - v20;
      v16(v93, v14, v15, v19);
      v5 = *(v14 - 8);
      if ((*(v5 + 48))(v21, 1, v14) != 1)
      {
        break;
      }

      a5 = (a5 + 1);
      (*(v18 + 8))(v21, v17);
      v94 = 0u;
      v95 = 0u;
      v96 = 0;
      outlined destroy of TaskPriority?(&v94, &_s9MusicCore16ActionPerforming_pSgMd, &_s9MusicCore16ActionPerforming_pSgMR);
      a3 += 4;
      if (v73 == a5)
      {
        goto LABEL_8;
      }
    }

    *(&v95 + 1) = v14;
    v96 = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v94);
    (*(v5 + 32))(boxed_opaque_existential_1, v21, v14);
    outlined init with take of ActionPerforming(&v94, v97);
    outlined init with copy of ActionPerforming(v97, &v107);
    v37 = v69;
    specialized AnyAction.init(_:identifier:)(&v107, v69, &v98);
    v90 = v104;
    v91 = v105;
    v92 = v106;
    v86 = v100;
    v87 = v101;
    v88 = v102;
    v89 = v103;
    v84 = v98;
    v85 = v99;
    if (!v103)
    {
      __break(1u);
      return;
    }

    v38 = (v103)();
    a3 = v67;
    if (v39 == 1)
    {
      *&v107 = ActionType.rawValue.getter(v37);
      *(&v107 + 1) = v41;
      v42._countAndFlagsBits = 10272;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43 = *(&v98 + 1);
      v44 = v99;

      v45._countAndFlagsBits = v43;
      v45._object = v44;
      String.append(_:)(v45);

      v46._countAndFlagsBits = 41;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      Array<A>.appendStringComponents(_:lineLength:bullet:)(v107, *(&v107 + 1), 80, 9673954, 0xA300000000000000);

      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      v81 = v90;
      v82 = v91;
      v83 = v92;
      v77 = v86;
      v78 = v87;
      v79 = v88;
      v80 = v89;
      v75 = v84;
      v76 = v85;
      v47.location = &v75;
      CFRange.init(_:)(v47);
      v113 = v81;
      v114 = v82;
      v115 = v83;
      v109 = v77;
      v110 = v78;
      v111 = v79;
      v112 = v80;
      v107 = v75;
      v108 = v76;
      a5 = v68;
      goto LABEL_12;
    }

    v51 = v38;
    v52 = v39;
    if (v40)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      outlined consume of ActionCondition.Result(v51, v52);
      outlined destroy of AnyAction(&v98);
    }

    else
    {
      *&v107 = ActionType.rawValue.getter(v37);
      *(&v107 + 1) = v53;
      v54._countAndFlagsBits = 10272;
      v54._object = 0xE200000000000000;
      String.append(_:)(v54);
      v55 = *(&v98 + 1);
      v56 = v99;

      v57._countAndFlagsBits = v55;
      v57._object = v56;
      String.append(_:)(v57);

      v58._countAndFlagsBits = 539828265;
      v58._object = 0xE400000000000000;
      String.append(_:)(v58);
      if (v52)
      {
        v59 = v51;
      }

      else
      {
        v59 = 0xD000000000000013;
      }

      if (v52)
      {
        v60 = v52;
      }

      else
      {
        v60 = 0x80000001004C5520;
      }

      v61 = v60;
      String.append(_:)(*&v59);

      Array<A>.appendStringComponents(_:lineLength:bullet:)(v107, *(&v107 + 1), 80, 120, 0xE100000000000000);

      outlined destroy of AnyAction(&v98);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
    }

    a5 = v68;
  }

  else
  {
LABEL_8:

    *&v107 = 0;
    *(&v107 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v22 = ActionType.rawValue.getter(v69);
    v24 = v23;

    *&v107 = v22;
    *(&v107 + 1) = v24;
    v25._countAndFlagsBits = 0xD000000000000016;
    v25._object = 0x80000001004C5540;
    String.append(_:)(v25);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v107, *(&v107 + 1), 80, 120, 0xE100000000000000);

    a3 = v67;
    a5 = v68;
  }

LABEL_11:
  _s9MusicCore9AnyActionVSgWOi0_(&v107);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  v32 = v114;
  a5[6] = v113;
  a5[7] = v32;
  a5[8] = v115;
  v33 = v110;
  a5[2] = v109;
  a5[3] = v33;
  v34 = v112;
  a5[4] = v111;
  a5[5] = v34;
  v35 = v108;
  *a5 = v107;
  a5[1] = v35;
}

uint64_t outlined init with copy of ActionDisplayConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore26ActionDisplayConfigurationVSgMd, &_s9MusicCore26ActionDisplayConfigurationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of ActionCondition.Result(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyAction.Error and conformance AnyAction.Error()
{
  result = lazy protocol witness table cache variable for type AnyAction.Error and conformance AnyAction.Error;
  if (!lazy protocol witness table cache variable for type AnyAction.Error and conformance AnyAction.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAction.Error and conformance AnyAction.Error);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore26ActionDisplayConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for AnyAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyAction.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AnyAction.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionType and conformance ActionType()
{
  result = lazy protocol witness table cache variable for type ActionType and conformance ActionType;
  if (!lazy protocol witness table cache variable for type ActionType and conformance ActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionType and conformance ActionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionType and conformance ActionType;
  if (!lazy protocol witness table cache variable for type ActionType and conformance ActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionType and conformance ActionType);
  }

  return result;
}

double _s9MusicCore9AnyActionVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
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

uint64_t outlined init with take of ActionPerforming(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of ActionPerforming(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Feature.MediaPlayer and conformance Feature.MediaPlayer()
{
  result = lazy protocol witness table cache variable for type Feature.MediaPlayer and conformance Feature.MediaPlayer;
  if (!lazy protocol witness table cache variable for type Feature.MediaPlayer and conformance Feature.MediaPlayer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MediaPlayer and conformance Feature.MediaPlayer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Feature.MediaPlayer and conformance Feature.MediaPlayer;
  if (!lazy protocol witness table cache variable for type Feature.MediaPlayer and conformance Feature.MediaPlayer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MediaPlayer and conformance Feature.MediaPlayer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit()
{
  result = lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit;
  if (!lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit;
  if (!lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit);
  }

  return result;
}

uint64_t sub_100013140()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in AnyAction.init(_:identifier:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return implicit closure #2 in implicit closure #1 in AnyAction.init(_:identifier:)(v0 + 16);
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return implicit closure #4 in implicit closure #3 in AnyAction.init(_:identifier:)(v0 + 16);
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in AnyAction.init(_:identifier:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t ActionCondition.Result.failure.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  outlined copy of ActionCondition.Result(a1, a2);
  return v2;
}

uint64_t outlined copy of ActionCondition.Result(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ActionCondition.init(_:file:line:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ActionCondition.init(_:_:redactLog:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)()@<X5>, uint64_t (*a7)()@<X6>, uint64_t (*a8)()@<X7>, uint64_t (**a9)()@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *a9 = partial apply for closure #1 in ActionCondition.init(_:_:redactLog:file:line:);
  a9[1] = result;
  a9[2] = a6;
  a9[3] = a7;
  a9[4] = a8;
  return result;
}

BOOL ActionCondition.isTrue.getter()
{
  v1 = (*v0)();
  v3 = v2 == 1;
  outlined consume of ActionCondition.Result(v1, v2);
  return v3;
}

uint64_t static ActionConditionEvaluator.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_3:
      if (++v2 == v1)
      {
        return 0;
      }
    }

    v7 = 0;
    v8 = v4 + 56;
    while (v7 < *(v4 + 16))
    {
      v9 = *(v8 - 24);

      v11 = v9(v10);
      v13 = v12;

      if (v13 != 1)
      {

        return v11;
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {

        v3 = v14;
        v1 = v15;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static ActionConditionEvaluator.buildExpression(_:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore15ActionConditionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore15ActionConditionVGMR);
  v2 = swift_allocObject();
  v4 = *a1;
  v7 = a1[1];
  v3 = v7;
  *(v2 + 16) = xmmword_1004F2400;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 4);

  outlined init with copy of String(&v7, &v6);
  return v2;
}

BOOL specialized static ActionCondition.Result.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t sub_100013770()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ActionCondition.init(_:_:redactLog:file:line:)()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16))())
  {
    return 0;
  }

  return v1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionCondition(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionCondition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15ActionConditionV6ResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionCondition.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActionCondition.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ActionCondition.Result(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Alert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *ActionDisplayConfiguration.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ActionDisplayConfiguration.init(title:subtitle:image:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t lazy protocol witness table accessor for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes()
{
  result = lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes;
  if (!lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes;
  if (!lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes;
  if (!lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes;
  if (!lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionDisplayConfiguration.Attributes and conformance ActionDisplayConfiguration.Attributes);
  }

  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance ActionDisplayConfiguration.Attributes@<X0>(uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionDisplayConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ActionDisplayConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void ActionList.init(_:lookup:resolver:excluding:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v4 = a4;
  v37 = a3;
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v36 = a4;
    *&v38 = a2;
    v41 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = a1 + 32;
    do
    {
      outlined init with copy of Any(v9, v40);
      outlined init with copy of Any(v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
      v10 = String.init<A>(describing:)();
      v12 = String.components(wrappedToLineLength:bullet:)(80, 62, 0xE100000000000000, v10, v11);

      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      v41 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v8 = v41;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      v9 += 32;
      --v7;
    }

    while (v7);
    v5 = v38;
    v4 = v36;
  }

  v40[0] = v8;
  __chkstk_darwin();
  v35[2] = a1;
  v35[3] = v37;
  v35[4] = v4;
  v35[5] = v40;
  v36 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in ActionList.init(_:lookup:resolver:excluding:), v35, v5);

  v35[7] = v40[0];
  v15 = Array<A>.asciiBoxed()(v40[0]);
  v17 = v15;
  v18 = *(v15 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 40);
    p_class_meths = &OBJC_PROTOCOL___CAAnimationDelegate.class_meths;
    *&v16 = 136446210;
    v38 = v16;
    while (v19 < *(v17 + 2))
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      v24 = p_class_meths[9];

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.actions);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = p_class_meths;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v22;
        v32 = v17;
        v33 = v18;
        v34 = v30;
        v39[0] = v30;
        *v29 = v38;
        *(v29 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v31, v23, v39);
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        v18 = v33;
        v17 = v32;

        p_class_meths = v28;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }
}