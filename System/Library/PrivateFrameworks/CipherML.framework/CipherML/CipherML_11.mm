uint64_t AMSNetworking.fetchConfigs(useCases:userId:)(uint64_t a1)
{
  v2 = v1[58];
  v3 = v1[56];
  v5 = v1[53];
  v4 = v1[54];
  v6 = v1[52];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v7 = v1[59];
  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_224E26000, v9, v10, "Request to fetchConfigs has failed: %{public}@", v11, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v11, -1, -1);
  }

  swift_willThrow();

  v15 = v1[1];

  return v15();
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *AMSURLResult.validateSuccessResponse()()
{
  result = specialized AMSURLResult.validateSuccessResponse()();
  if (!v0)
  {
    v2 = result;
    v3 = result;
    return v2;
  }

  return result;
}

uint64_t closure #2 in AMSNetworking.fetchConfigs(useCases:userId:)(uint64_t *a1, void *a2)
{
  if (*(*a2 + 16))
  {
    v3 = *a1;
    v2 = a1[1];

    specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
    LOBYTE(v2) = v4;

    v5 = v2 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

unint64_t AMSNetworking.fetchConfigParameters(useCases:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = 0x736769666E6F63;
    *(inited + 40) = 0xE700000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    *(inited + 48) = BidirectionalCollection<>.joined(separator:)();
    *(inited + 56) = v3;
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v6);
  }
}

uint64_t AMSNetworking.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  type metadata accessor for BinaryDecodingOptions();
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for AMDPbHEResponse(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo12AMSURLResultCs5Error_pGMd, &_sScCySo12AMSURLResultCs5Error_pGMR);
  v3[52] = v4;
  v3[53] = *(v4 - 8);
  v3[54] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13AMSURLRequestCs5Error_pGMd, &_sScCySo13AMSURLRequestCs5Error_pGMR);
  v3[55] = v5;
  v3[56] = *(v5 - 8);
  v3[57] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[58] = v6;
  v3[59] = *(v6 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = type metadata accessor for AspireApiEvaluationKeys(0);
  v3[62] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[63] = v7;
  v3[64] = *(v7 - 8);
  v3[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](AMSNetworking.uploadKeys(evaluationKeys:userId:), 0, 0);
}

uint64_t AMSNetworking.uploadKeys(evaluationKeys:userId:)()
{
  v50 = v0;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys, &protocol conformance descriptor for AspireApiEvaluationKeys);
  v1 = Message.serializedData(partial:)();
  v0[66] = 0;
  v0[67] = v1;
  v0[68] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[46];
  AMSNetworking.constructURL(path:userId:)(0xD000000000000017, 0x8000000225038150, v0[45], v0[65]);
  v6 = *(v5 + OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
  v8 = v7;
  specialized AMSNetworking.requestHeaders()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v6 requestWithMethod:4 URL:v8 headers:isa parameters:v10];
  v0[69] = v11;

  v0[38] = closure #1 in AMSNetworking.uploadKeys(evaluationKeys:userId:);
  v0[39] = 0;
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v0[37] = &block_descriptor_7;
  v12 = _Block_copy(v0 + 34);
  v48 = v11;
  [v11 addErrorBlock_];
  _Block_release(v12);
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v13 = v0[62];
  v14 = v0[59];
  v15 = v0[60];
  v16 = v0[58];
  v18 = v0[44];
  v17 = v0[45];
  v19 = type metadata accessor for Logger();
  v0[70] = __swift_project_value_buffer(v19, static Logger.networking);
  outlined init with copy of AMDPbHEConfigsReply(v18, v13, type metadata accessor for AspireApiEvaluationKeys);
  (*(v14 + 16))(v15, v17, v16);
  outlined copy of Data._Representation(v3, v4);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[62];
  if (!v22)
  {
    v30 = v0[59];
    v31 = v0[60];
    v32 = v0[58];
    outlined destroy of AMDPbHEResponse(v0[62], type metadata accessor for AspireApiEvaluationKeys);
    outlined consume of Data._Representation(v3, v4);

    (*(v30 + 8))(v31, v32);
    goto LABEL_16;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v49 = v25;
  *v24 = 134349571;
  v26 = *(*v23 + 16);
  v27 = outlined destroy of AMDPbHEResponse(v23, type metadata accessor for AspireApiEvaluationKeys);
  *(v24 + 4) = v26;
  *(v24 + 12) = 2050;
  v28 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v28 != 2)
    {
      v29 = 0;
      goto LABEL_15;
    }

    v34 = *(v3 + 16);
    v33 = *(v3 + 24);
    v35 = __OFSUB__(v33, v34);
    v29 = v33 - v34;
    if (!v35)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v29) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      return MEMORY[0x282200938](v27);
    }

    v29 = v29;
    goto LABEL_15;
  }

  if (v28)
  {
    goto LABEL_12;
  }

  v29 = BYTE6(v4);
LABEL_15:
  v36 = v0[59];
  v37 = v0[60];
  v38 = v0[58];
  *(v24 + 14) = v29;
  outlined consume of Data._Representation(v3, v4);
  *(v24 + 22) = 2081;
  v39 = UUID.uuidString.getter();
  v41 = v40;
  (*(v36 + 8))(v37, v38);
  v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v49);

  *(v24 + 24) = v42;
  _os_log_impl(&dword_224E26000, v20, v21, "Request to uploadKeys has started for %{public}ld key(s) with %{public}ld bytes for userId: '%{private}s'", v24, 0x20u);
  __swift_destroy_boxed_opaque_existential_0(v25);
  MEMORY[0x22AA61F40](v25, -1, -1);
  MEMORY[0x22AA61F40](v24, -1, -1);

LABEL_16:
  v44 = v0[56];
  v43 = v0[57];
  v45 = v0[55];
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  swift_continuation_init();
  v0[25] = v45;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for AMSURLRequest, 0x277CEE6D0);
  v0[71] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  CheckedContinuation.init(continuation:function:)();
  (*(v44 + 32))(boxed_opaque_existential_1, v43, v45);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLRequest?, @unowned NSError?) -> () with result type AMSURLRequest;
  v0[21] = &block_descriptor_10;
  [v48 resultWithCompletion_];
  (*(v44 + 8))(boxed_opaque_existential_1, v45);
  v27 = (v0 + 2);

  return MEMORY[0x282200938](v27);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 576) = v1;
  if (v1)
  {
    v2 = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  }

  else
  {
    v2 = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[66];
  v2 = v0[42];
  v0[73] = v2;
  static Task<>.checkCancellation()();
  v0[74] = v1;
  if (v1)
  {
    v3 = v1;
    v4 = v0[69];
    v5 = v0[68];
    v6 = v0[67];
    (*(v0[64] + 8))(v0[65], v0[63]);
    outlined consume of Data._Representation(v6, v5);

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.networking);
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = v3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_224E26000, v9, v10, "Request to uploadKeys has failed: %{public}@", v11, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v12, -1, -1);
      MEMORY[0x22AA61F40](v11, -1, -1);
    }

    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_224E26000, v17, v18, "Starting actual upload", v19, 2u);
      MEMORY[0x22AA61F40](v19, -1, -1);
    }

    v21 = v0[53];
    v20 = v0[54];
    v22 = v0[52];
    v23 = v0[46];

    v24 = [*(v23 + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) dataTaskPromiseWithRequest_];
    v0[75] = v24;
    v0[10] = v0;
    v0[15] = v0 + 43;
    v0[11] = AMSNetworking.uploadKeys(evaluationKeys:userId:);
    swift_continuation_init();
    v0[33] = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for AMSURLResult, 0x277CEE6E8);
    CheckedContinuation.init(continuation:function:)();
    (*(v21 + 32))(boxed_opaque_existential_1, v20, v22);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLResult?, @unowned NSError?) -> () with result type AMSURLResult;
    v0[29] = &block_descriptor_13;
    [v24 resultWithCompletion_];
    (*(v21 + 8))(boxed_opaque_existential_1, v22);

    return MEMORY[0x282200938](v0 + 10);
  }
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 608) = v1;
  if (v1)
  {
    v2 = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  }

  else
  {
    v2 = AMSNetworking.uploadKeys(evaluationKeys:userId:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 344);
  v3 = specialized AMSURLResult.validateSuccessResponse()();
  v4 = *(v0 + 600);
  if (v1)
  {
    v5 = v1;
    v6 = *(v0 + 584);
    v7 = *(v0 + 552);
    v8 = *(v0 + 544);
    v9 = *(v0 + 536);
    (*(*(v0 + 512) + 8))(*(v0 + 520), *(v0 + 504));
    outlined consume of Data._Representation(v9, v8);

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.networking);
    v30 = v5;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      v35 = v5;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_224E26000, v31, v32, "Request to uploadKeys has failed: %{public}@", v33, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v34, -1, -1);
      MEMORY[0x22AA61F40](v33, -1, -1);
    }

    swift_willThrow();

    v46 = *(v0 + 8);
    goto LABEL_22;
  }

  v10 = v3;

  v11 = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    v15 = [v11 data];
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v18;
    v20 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v20 != 2)
      {
        outlined consume of Data._Representation(v16, v18);
        v21 = 0;
        goto LABEL_15;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      outlined consume of Data._Representation(v16, v19);
      v21 = v22 - v23;
      if (!__OFSUB__(v22, v23))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v20)
    {
      outlined consume of Data._Representation(v16, v18);
      v21 = BYTE6(v18);
LABEL_15:
      *(v14 + 4) = v21;

      _os_log_impl(&dword_224E26000, v12, v13, "Request to uploadKeys has finished, response length: %{public}ld", v14, 0xCu);
      MEMORY[0x22AA61F40](v14, -1, -1);
      goto LABEL_16;
    }

    result = outlined consume of Data._Representation(v16, v19);
    LODWORD(v21) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      __break(1u);
      return result;
    }

    v21 = v21;
    goto LABEL_15;
  }

  v12 = v11;
LABEL_16:

  v25 = [v11 data];
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(v0 + 320) = v26;
  *(v0 + 328) = v28;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse, &protocol conformance descriptor for AMDPbHEResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  AMDPbHEResponse.validateSuccessResponse()(*(v0 + 400));
  v37 = *(v0 + 512);
  v38 = *(v0 + 408);
  outlined destroy of AMDPbHEResponse(*(v0 + 392), type metadata accessor for AMDPbHEResponse);
  AMDPbHEResponse.validateAPICode(expected:)(0, 1, v38);
  v39 = (v37 + 8);
  v40 = *(v0 + 584);
  v41 = *(v0 + 544);
  v42 = *(v0 + 536);
  v43 = *(v0 + 520);
  v47 = *(v0 + 504);
  v44 = *(v0 + 400);
  v45 = *(v0 + 408);

  outlined consume of Data._Representation(v42, v41);
  outlined destroy of AMDPbHEResponse(v44, type metadata accessor for AMDPbHEResponse);
  outlined destroy of AMDPbHEResponse(v45, type metadata accessor for AMDPbHEResponse);
  (*v39)(v43, v47);

  v46 = *(v0 + 8);
LABEL_22:

  return v46();
}

uint64_t AMSNetworking.uploadKeys(evaluationKeys:userId:)(uint64_t a1)
{
  v2 = v1[69];
  v3 = v1[68];
  v4 = v1[67];
  v5 = v1[65];
  v6 = v1[63];
  v7 = v1[64];
  swift_willThrow();

  outlined consume of Data._Representation(v4, v3);
  (*(v7 + 8))(v5, v6);
  v18 = v1[72];
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.networking);
  v9 = v18;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v18;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_224E26000, v10, v11, "Request to uploadKeys has failed: %{public}@", v12, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v13, -1, -1);
    MEMORY[0x22AA61F40](v12, -1, -1);
  }

  swift_willThrow();

  v16 = v1[1];

  return v16();
}

{
  v2 = v1[75];
  v3 = v1[73];
  v4 = v1[69];
  v5 = v1[68];
  v6 = v1[67];
  v7 = v1[65];
  v8 = v1[63];
  v9 = v1[64];
  swift_willThrow();

  outlined consume of Data._Representation(v6, v5);
  (*(v9 + 8))(v7, v8);

  v20 = v1[76];
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.networking);
  v11 = v20;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = v20;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_224E26000, v12, v13, "Request to uploadKeys has failed: %{public}@", v14, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v15, -1, -1);
    MEMORY[0x22AA61F40](v14, -1, -1);
  }

  swift_willThrow();

  v18 = v1[1];

  return v18();
}

void closure #1 in AMSNetworking.fetchConfigs(useCases:userId:)(void *a1, const char *a2, ...)
{
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.networking);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224E26000, oslog, v6, a2, v7, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }
}

void @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLResult?, @unowned NSError?) -> () with result type AMSURLResult(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t AMSNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = type metadata accessor for AMDPbHEReplies(0);
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for AspireApiConfigResponse(0);
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for AMDPbHEConfigsReply(0);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = type metadata accessor for AMDPbHEResponse(0);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo12AMSURLResultCs5Error_pGMd, &_sScCySo12AMSURLResultCs5Error_pGMR);
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[51] = v6;
  v4[52] = *(v6 - 8);
  v4[53] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[54] = v7;
  v4[55] = *(v7 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = *(type metadata accessor for AspireApiRequest(0) - 8);
  v4[58] = swift_task_alloc();
  v4[59] = *(type metadata accessor for AMDPbHEQuery(0) - 8);
  v4[60] = swift_task_alloc();
  v4[61] = type metadata accessor for AMDPbHEQueries(0);
  v4[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](AMSNetworking.queries(requests:userId:), 0, 0);
}

uint64_t AMSNetworking.queries(requests:userId:)()
{
  v73 = v0;
  v1 = v0[30];
  specialized AMSNetworking.requestHeaders()();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[59];
    v4 = v0[57];
    v5 = (v0[30] + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v6 = *v5;
    v7 = v5[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v7, 0x65736163657375, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v72 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v9 = v72;
    v10 = *(v4 + 72);
    do
    {
      v11 = v0[60];
      outlined init with copy of AMDPbHEConfigsReply(v5, v0[58], type metadata accessor for AspireApiRequest);
      AspireApiRequest.amd()(v11);
      outlined destroy of AMDPbHEResponse(v0[58], type metadata accessor for AspireApiRequest);
      v72 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v9 = v72;
      }

      v14 = v0[60];
      *(v9 + 16) = v13 + 1;
      outlined init with take of AspireApiConfigResponse(v14, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, type metadata accessor for AMDPbHEQuery);
      v5 = (v5 + v10);
      --v2;
    }

    while (v2);
    *(swift_task_alloc() + 16) = v9;
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEQueries and conformance AMDPbHEQueries, type metadata accessor for AMDPbHEQueries, &protocol conformance descriptor for AMDPbHEQueries);
    static Message.with(_:)();

    v21 = Message.serializedData(partial:)();
    v0[63] = 0;
    v0[64] = v21;
    v0[65] = v22;
    v33 = v21;
    v34 = v22;
    v35 = v0[32];
    AMSNetworking.constructURL(path:userId:)(0xD000000000000010, 0x80000002250381A0, v0[31], v0[56]);
    v36 = *(v35 + OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8CipherML13AMSNetworking_encoder);
    v38 = v37;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = Data._bridgeToObjectiveC()().super.isa;
    v41 = [v36 requestWithMethod:4 URL:v38 headers:isa parameters:v40];
    v0[66] = v41;

    v0[22] = closure #3 in AMSNetworking.queries(requests:userId:);
    v0[23] = 0;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v0[21] = &block_descriptor_17;
    v42 = _Block_copy(v0 + 18);
    v71 = v41;
    [v41 addErrorBlock_];
    _Block_release(v42);
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v44 = v0[52];
    v43 = v0[53];
    v45 = v0[51];
    v46 = v0[31];
    v47 = type metadata accessor for Logger();
    v0[67] = __swift_project_value_buffer(v47, static Logger.networking);
    (*(v44 + 16))(v43, v46, v45);
    outlined copy of Data._Representation(v33, v34);
    outlined copy of Data._Representation(v33, v34);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v48, v49);
    v52 = v0[52];
    v51 = v0[53];
    v53 = v0[51];
    if (!v50)
    {
      outlined consume of Data._Representation(v33, v34);
      outlined consume of Data._Representation(v33, v34);

      (*(v52 + 8))(v51, v53);
      goto LABEL_33;
    }

    aBlock = v49;
    v54 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v72 = v69;
    *v54 = 136380931;
    v55 = UUID.uuidString.getter();
    v57 = v56;
    (*(v52 + 8))(v51, v53);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v72);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2050;
    v59 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v59 != 2)
      {
        outlined consume of Data._Representation(v33, v34);
        v60 = 0;
        goto LABEL_32;
      }

      v62 = *(v33 + 16);
      v61 = *(v33 + 24);
      outlined consume of Data._Representation(v33, v34);
      v60 = v61 - v62;
      if (!__OFSUB__(v61, v62))
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v59)
    {
      outlined consume of Data._Representation(v33, v34);
      v60 = BYTE6(v34);
LABEL_32:
      *(v54 + 14) = v60;
      outlined consume of Data._Representation(v33, v34);
      _os_log_impl(&dword_224E26000, v48, aBlock, "Request to queries-batch has started for userId: '%{private}s', length: %{public}ld", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AA61F40](v69, -1, -1);
      MEMORY[0x22AA61F40](v54, -1, -1);

LABEL_33:
      v65 = v0[49];
      v64 = v0[50];
      v66 = v0[48];
      v67 = [*(v0[32] + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) dataTaskPromiseWithRequestPromise_];
      v0[68] = v67;
      v0[2] = v0;
      v0[7] = v0 + 28;
      v0[3] = AMSNetworking.queries(requests:userId:);
      swift_continuation_init();
      v0[17] = v66;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
      type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for AMSURLResult, 0x277CEE6E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      CheckedContinuation.init(continuation:function:)();
      (*(v65 + 32))(boxed_opaque_existential_1, v64, v66);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AMSURLResult?, @unowned NSError?) -> () with result type AMSURLResult;
      v0[13] = &block_descriptor_20;
      [v67 resultWithCompletion_];
      (*(v65 + 8))(boxed_opaque_existential_1, v66);
      v63 = (v0 + 2);

      return MEMORY[0x282200938](v63);
    }

    v63 = outlined consume of Data._Representation(v33, v34);
    LODWORD(v60) = HIDWORD(v33) - v33;
    if (__OFSUB__(HIDWORD(v33), v33))
    {
      __break(1u);
      return MEMORY[0x282200938](v63);
    }

    v60 = v60;
    goto LABEL_32;
  }

  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.networking);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_224E26000, v16, v17, "Request to queries-batch has empty request", v18, 2u);
    MEMORY[0x22AA61F40](v18, -1, -1);
  }

  type metadata accessor for CipherMLError(0);
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  v19 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v20 = v19;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.networking);
  v24 = v19;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    v29 = v20;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_224E26000, v25, v26, "Request to queries-batch has failed: %{public}@", v27, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v28, -1, -1);
    MEMORY[0x22AA61F40](v27, -1, -1);
  }

  swift_willThrow();

  v31 = v0[1];

  return v31();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = AMSNetworking.queries(requests:userId:);
  }

  else
  {
    v2 = AMSNetworking.queries(requests:userId:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[63];
  v3 = specialized AMSURLResult.validateSuccessResponse()();
  v4 = v0[68];
  v110 = v0;
  v111 = v2;
  if (v2)
  {
    v5 = v0[66];
    v6 = v0[65];
    v7 = v0[64];
    v8 = v0[62];
    v9 = v0[55];
    v10 = v0[56];
    v11 = v0[54];

    outlined consume of Data._Representation(v7, v6);
    (*(v9 + 8))(v10, v11);
    outlined destroy of AMDPbHEResponse(v8, type metadata accessor for AMDPbHEQueries);

    v12 = v111;
LABEL_27:
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.networking);
    v53 = v12;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138543362;
      v58 = v12;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v57 = v59;
      _os_log_impl(&dword_224E26000, v54, v55, "Request to queries-batch has failed: %{public}@", v56, 0xCu);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA61F40](v57, -1, -1);
      MEMORY[0x22AA61F40](v56, -1, -1);
    }

    swift_willThrow();

    v60 = v110[1];
    goto LABEL_32;
  }

  v13 = v3;

  v14 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v15, v16))
  {

    v15 = v14;
    goto LABEL_18;
  }

  v17 = v0;
  v18 = swift_slowAlloc();
  *v18 = 134349056;
  v19 = v14;
  v20 = [v14 data];
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = v23;
  v25 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v25 == 2)
    {
      v14 = *(v21 + 16);
      v29 = *(v21 + 24);
      outlined consume of Data._Representation(v21, v24);
      v28 = v29 - v14;
      if (__OFSUB__(v29, v14))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      outlined consume of Data._Representation(v21, v23);
      v28 = 0;
    }

    v14 = v19;
    goto LABEL_16;
  }

  v14 = v19;
  if (v25)
  {
LABEL_12:
    result = outlined consume of Data._Representation(v21, v24);
    LODWORD(v28) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
      return result;
    }

    v0 = v17;
    v28 = v28;
    goto LABEL_17;
  }

  v26 = v21;
  v27 = BYTE6(v24);
  outlined consume of Data._Representation(v26, v24);
  v28 = v27;
LABEL_16:
  v0 = v17;
LABEL_17:
  *(v18 + 4) = v28;

  _os_log_impl(&dword_224E26000, v15, v16, "Request to queries-batch has finished response, length: %{public}ld", v18, 0xCu);
  MEMORY[0x22AA61F40](v18, -1, -1);
LABEL_18:

  v31 = [v14 data];
  v32 = v14;
  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v0[24] = v33;
  v0[25] = v35;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse, &protocol conformance descriptor for AMDPbHEResponse);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v112 = v32;
  v36 = v0[47];
  if (*v36 == 4)
  {
    v37 = v0[41];
    outlined init with copy of AMDPbHEResponse.OneOf_Response?(v36 + *(v0[44] + 28), v37);
    v38 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
    {
      outlined init with copy of AMDPbHEResponse.OneOf_Response?(v0[41], v0[40]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v40 = v0[40];
      if (EnumCaseMultiPayload == 2)
      {
        outlined init with take of AspireApiConfigResponse(v40, v0[38], type metadata accessor for AMDPbHEConfigsReply);
        lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply, &protocol conformance descriptor for AMDPbHEConfigsReply);
        v69 = v0;
        v0[26] = Message.serializedData(partial:)();
        v0[27] = v70;
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse, &protocol conformance descriptor for AspireApiConfigResponse);
        Message.init<A>(serializedBytes:extensions:partial:options:)();
        v71 = v0[66];
        v72 = v0[65];
        v73 = v0[64];
        v74 = v0[55];
        v107 = v69[56];
        v109 = v69[62];
        v105 = v69[54];
        v75 = v69[41];
        v76 = v69[38];
        v104 = v69[47];
        v77 = v69[36];
        type metadata accessor for NetworkManagerError(0);
        lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError, &protocol conformance descriptor for NetworkManagerError);
        v12 = swift_allocError();
        outlined init with copy of AMDPbHEConfigsReply(v77, v78, type metadata accessor for AspireApiConfigResponse);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        outlined consume of Data._Representation(v73, v72);
        outlined destroy of AMDPbHEResponse(v77, type metadata accessor for AspireApiConfigResponse);
        outlined destroy of AMDPbHEResponse(v76, type metadata accessor for AMDPbHEConfigsReply);
        (*(v74 + 8))(v107, v105);
        outlined destroy of AMDPbHEResponse(v109, type metadata accessor for AMDPbHEQueries);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v75, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
        v79 = v104;
LABEL_26:
        outlined destroy of AMDPbHEResponse(v79, type metadata accessor for AMDPbHEResponse);
        goto LABEL_27;
      }

      outlined destroy of AMDPbHEResponse(v40, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    }

    v41 = v0[66];
    v42 = v0;
    v43 = v0[65];
    v44 = v0[64];
    v45 = v0[62];
    v48 = v0 + 55;
    v46 = v0[55];
    v47 = v48[1];
    v49 = v42[54];
    v50 = v42[47];
    v106 = v45;
    v108 = v42[41];
    type metadata accessor for NetworkManagerError(0);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError, &protocol conformance descriptor for NetworkManagerError);
    v12 = swift_allocError();
    *v51 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined consume of Data._Representation(v44, v43);
    (*(v46 + 8))(v47, v49);
    outlined destroy of AMDPbHEResponse(v106, type metadata accessor for AMDPbHEQueries);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v108, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
LABEL_25:
    v79 = v50;
    goto LABEL_26;
  }

  AMDPbHEResponse.validateSuccessResponse()(v0[45]);
  AMDPbHEResponse.validateAPICode(expected:)(3, 1, v0[46]);
  v61 = v0;
  v62 = v0[47];
  v63 = v61[46];
  v64 = v61[44];
  v65 = v61[39];
  outlined destroy of AMDPbHEResponse(v61[45], type metadata accessor for AMDPbHEResponse);
  outlined destroy of AMDPbHEResponse(v63, type metadata accessor for AMDPbHEResponse);
  outlined init with copy of AMDPbHEResponse.OneOf_Response?(v62 + *(v64 + 28), v65);
  v66 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v67 = (*(*(v66 - 8) + 48))(v65, 1, v66);
  v68 = v61[39];
  if (v67 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v61[39], &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireApiConfigResponse(v68, v61[34], type metadata accessor for AMDPbHEReplies);
      goto LABEL_41;
    }

    outlined destroy of AMDPbHEResponse(v68, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  *v61[34] = MEMORY[0x277D84F90];
  UnknownStorage.init()();
LABEL_41:
  v80 = v61[34];
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies, &protocol conformance descriptor for AMDPbHEReplies);
  v81 = Message.isInitialized.getter();
  outlined destroy of AMDPbHEResponse(v80, type metadata accessor for AMDPbHEReplies);
  if ((v81 & 1) == 0)
  {
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_224E26000, v88, v89, "Response heReplies is not initialized", v90, 2u);
      MEMORY[0x22AA61F40](v90, -1, -1);
    }

    v91 = v61[66];
    v92 = v61[65];
    v93 = v61[64];
    v94 = v61[62];
    v95 = v61[55];
    v96 = v61[56];
    v97 = v61[54];
    v50 = v61[47];

    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    v98 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v99 = v92;
    v12 = v98;
    outlined consume of Data._Representation(v93, v99);
    (*(v95 + 8))(v96, v97);
    outlined destroy of AMDPbHEResponse(v94, type metadata accessor for AMDPbHEQueries);
    goto LABEL_25;
  }

  v82 = v61[47];
  type metadata accessor for AspireApiResponses(0);
  *(swift_task_alloc() + 16) = v82;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses, &protocol conformance descriptor for AspireApiResponses);
  static Message.with(_:)();
  v83 = v61[66];
  v84 = v61;
  v85 = v61[65];
  v86 = v61[64];
  v87 = v61[62];
  v101 = v84[55];
  v100 = v84[56];
  v102 = v84[54];
  v103 = v84[47];

  outlined consume of Data._Representation(v86, v85);

  (*(v101 + 8))(v100, v102);
  outlined destroy of AMDPbHEResponse(v87, type metadata accessor for AMDPbHEQueries);
  outlined destroy of AMDPbHEResponse(v103, type metadata accessor for AMDPbHEResponse);

  v60 = v84[1];
LABEL_32:

  return v60();
}

uint64_t AMSNetworking.queries(requests:userId:)(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[66];
  v4 = v1[65];
  v5 = v1[64];
  v6 = v1[62];
  v8 = v1[55];
  v7 = v1[56];
  v9 = v1[54];
  swift_willThrow();

  outlined consume of Data._Representation(v5, v4);
  (*(v8 + 8))(v7, v9);
  outlined destroy of AMDPbHEResponse(v6, type metadata accessor for AMDPbHEQueries);

  v10 = v1[69];
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.networking);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_224E26000, v13, v14, "Request to queries-batch has failed: %{public}@", v15, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v16, -1, -1);
    MEMORY[0x22AA61F40](v15, -1, -1);
  }

  swift_willThrow();

  v19 = v1[1];

  return v19();
}

uint64_t closure #4 in AMSNetworking.queries(requests:userId:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for AMDPbHEReply(0);
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireApiResponse(0);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AMDPbHEReplies(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEResponse.OneOf_Response?(a2 + *(v16 + 28), v12);
  v17 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v18 = (*(*(v17 - 8) + 48))(v12, 1, v17);
  v19 = MEMORY[0x277D84F90];
  if (v18 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireApiConfigResponse(v12, v15, type metadata accessor for AMDPbHEReplies);
      goto LABEL_7;
    }

    outlined destroy of AMDPbHEResponse(v12, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  *v15 = v19;
  UnknownStorage.init()();
LABEL_7:
  v20 = *v15;

  outlined destroy of AMDPbHEResponse(v15, type metadata accessor for AMDPbHEReplies);
  v21 = *(v20 + 16);
  if (v21)
  {
    v29 = a1;
    v30 = v21;
    v34 = v19;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v23 = 0;
    v24 = v34;
    v25 = v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    while (v23 < *(v20 + 16))
    {
      outlined init with copy of AMDPbHEConfigsReply(v25 + *(v32 + 72) * v23, v7, type metadata accessor for AMDPbHEReply);
      AMDPbHEReply.aspire()();
      if (v2)
      {
        outlined destroy of AMDPbHEResponse(v7, type metadata accessor for AMDPbHEReply);
      }

      outlined destroy of AMDPbHEResponse(v7, type metadata accessor for AMDPbHEReply);
      v34 = v24;
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v24 = v34;
      }

      ++v23;
      *(v24 + 16) = v27 + 1;
      result = outlined init with take of AspireApiConfigResponse(v33, v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27, type metadata accessor for AspireApiResponse);
      if (v30 == v23)
      {

        a1 = v29;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
LABEL_17:

    *a1 = v24;
  }

  return result;
}

Swift::Void __swiftcall AMSNetworking.cancel()()
{
  v1 = v0;
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.networking);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224E26000, v3, v4, "Cancelling all tasks", v5, 2u);
    MEMORY[0x22AA61F40](v5, -1, -1);
  }

  v6 = [*(v1 + OBJC_IVAR____TtC8CipherML13AMSNetworking_urlSession) session];
  v8[4] = closure #1 in AspireNetworkManager.cancel();
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [NSURLSessionTask]) -> ();
  v8[3] = &block_descriptor_24;
  v7 = _Block_copy(v8);
  [v6 getAllTasksWithCompletionHandler_];
  _Block_release(v7);
}

uint64_t protocol witness for NetworkManager.networkDelegationConfig.getter in conformance AMSNetworking()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8CipherML13AMSNetworking_networkDelegationConfig);

  return v1;
}

uint64_t protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance AMSNetworking(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 144) + **(**v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NetworkManager.uploadKeys(evaluationKeys:userId:) in conformance AMSNetworking(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 160) + **(**v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v8(a1, a2);
}

uint64_t protocol witness for NetworkManager.queries(requests:userId:) in conformance AMSNetworking(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 168) + **(**v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NetworkManager.cancel() in conformance AMSNetworking()
{
  (*(**v0 + 176))();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS8CipherML15AspireApiConfigVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_SS_8i4ML15klM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n03_s8i52ML13AMSNetworkingC12fetchConfigs8useCases6userIdAA23klM103ResponseVSaySS4name_Says5UInt8VG08existinglI0tG_10Foundation4UUIDVtYaKFSbSS3key_AA0jkL0V5valuet_tXEfU1_SaySSGTf1nnc_n(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t specialized AMSNetworking.requestHeaders()()
{
  v0 = type metadata accessor for Date.ISO8601FormatStyle();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022920;
  strcpy((inited + 32), "Content-Type");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0xD000000000000016;
  *(inited + 56) = 0x8000000225038200;
  *(inited + 64) = 0xD000000000000015;
  *(inited + 72) = 0x8000000225038220;
  static Date.now.getter();
  default argument 0 of Date.ISO8601Format(_:)(v3);
  v9 = Date.ISO8601Format(_:)();
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  *(inited + 80) = v9;
  *(inited + 88) = v11;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  return v12;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized AMSURLResult.validateSuccessResponse()()
{
  if ([v0 responseStatusCode] != 200)
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.networking);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      [v2 responseStatusCode];
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 4) = v9;
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA61F40](v6, -1, -1);
      MEMORY[0x22AA61F40](v5, -1, -1);
    }

    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v0;
}

uint64_t outlined init with copy of AMDPbHEResponse.OneOf_Response?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v43 = a4;
  v35 = a2;
  v36 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
  MEMORY[0x28223BE20](v42);
  v41 = (&v34 - v7);
  v8 = type metadata accessor for AspireApiConfig(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v10 = 0;
  v44 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v47 = v5;
    v18 = __clz(__rbit64(v16));
    v45 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v44[7];
    v23 = (v44[6] + 16 * v21);
    v24 = *v23;
    v25 = v23[1];
    v26 = v39;
    v27 = *(v40 + 72);
    v38 = v21;
    outlined init with copy of AMDPbHEConfigsReply(v22 + v27 * v21, v39, type metadata accessor for AspireApiConfig);
    v29 = v41;
    v28 = v42;
    *v41 = v24;
    *(v29 + 8) = v25;
    v30 = outlined init with copy of AMDPbHEConfigsReply(v26, v29 + *(v28 + 48), type metadata accessor for AspireApiConfig);
    v46[0] = v24;
    v46[1] = v25;
    MEMORY[0x28223BE20](v30);
    *(&v34 - 2) = v46;
    swift_bridgeObjectRetain_n();
    v31 = v47;
    v32 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v34 - 4), v43);
    v5 = v31;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
    outlined destroy of AMDPbHEResponse(v26, type metadata accessor for AspireApiConfig);

    v16 = v45;
    if (v32)
    {
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(v36, v35, v37, v44);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_15;
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v47 = v5;
      v18 = __clz(__rbit64(v20));
      v45 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS8CipherML15AspireApiConfigVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_SS_8i4ML15klM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n03_s8i52ML13AMSNetworkingC12fetchConfigs8useCases6userIdAA23klM103ResponseVSaySS4name_Says5UInt8VG08existinglI0tG_10Foundation4UUIDVtYaKFSbSS3key_AA0jkL0V5valuet_tXEfU1_SaySSGTf1nnc_n(v13, v7, a1, a2);
      MEMORY[0x22AA61F40](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  specialized closure #1 in _NativeDictionary.filter(_:)((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AMSNetworking(uint64_t a1)
{
  result = type metadata singleton initialization cache for AMSNetworking;
  if (!type metadata singleton initialization cache for AMSNetworking)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AMSNetworking(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t dispatch thunk of AMSNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of AMSNetworking.uploadKeys(evaluationKeys:userId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AMSNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 168) + **(*v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t outlined init with take of AspireApiConfigResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AMDPbHEConfigsReply(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AMDPbHEResponse(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static CacheDirectory.cacheFile(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, static CacheDirectory.url);
  v13[0] = a1;
  v13[1] = a2;
  (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v7, v4);
  URL.appendingPathExtension(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t CacheDirectory.cacheFile.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for URL();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t getTempDirectory()@<X0>(uint64_t a1@<X8>)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v26[0] = 0;
  v11 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v9 create:1 error:v26];

  v12 = v26[0];
  if (v11)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v15 = v26[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.daemon);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_224E26000, v19, v20, "Failed to create unique temp directory, falling back to base temp directory: %{public}@", v21, 0xCu);
      outlined destroy of NSObject?(v22);
      MEMORY[0x22AA61F40](v22, -1, -1);
      MEMORY[0x22AA61F40](v21, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 32))(a1, v5, v2);
  }
}

void createDirectory(_:)(void *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v48[0] = 0;
  v14 = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v48];

  if (v14)
  {
    v15 = one-time initialization token for daemon;
    v16 = v48[0];
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.daemon);
    v18 = *(v4 + 16);
    v18(v9, a1, v3);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45 = v18;
      v22 = v21;
      v23 = swift_slowAlloc();
      v48[0] = v23;
      *v22 = 136446210;
      lazy protocol witness table accessor for type URL and conformance URL();
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = a1;
      v25 = v3;
      v27 = v26;
      (*(v4 + 8))(v9, v25);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, v48);
      v3 = v25;
      a1 = v46;

      *(v22 + 4) = v28;
      _os_log_impl(&dword_224E26000, v19, v20, "Successful access of directory at %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA61F40](v23, -1, -1);
      v29 = v22;
      v18 = v45;
      MEMORY[0x22AA61F40](v29, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    v18(v47, a1, v3);
  }

  else
  {
    v30 = v48[0];
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.daemon);
    (*(v4 + 16))(v6, a1, v3);
    v33 = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48[0] = v46;
      *v36 = 136446466;
      lazy protocol witness table accessor for type URL and conformance URL();
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v4 + 8))(v6, v3);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v48);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2114;
      v42 = v31;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v43;
      *v37 = v43;
      _os_log_impl(&dword_224E26000, v34, v35, "Failed to create directory at %{public}s, falling back to temp directory: %{public}@", v36, 0x16u);
      outlined destroy of NSObject?(v37);
      MEMORY[0x22AA61F40](v37, -1, -1);
      v44 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA61F40](v44, -1, -1);
      MEMORY[0x22AA61F40](v36, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    getTempDirectory()(v47);
  }
}

uint64_t one-time initialization function for url()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static CacheDirectory.url);
  v1 = __swift_project_value_buffer(v0, static CacheDirectory.url);
  return closure #1 in variable initialization expression of static CacheDirectory.url(v1);
}

uint64_t closure #1 in variable initialization expression of static CacheDirectory.url@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  specialized static DaemonContainerPathLookup.path(for:)(0, 0);
  URL.init(fileURLWithPath:)();

  createDirectory(_:)(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t one-time initialization function for cacheFile()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static CacheDirectory.cacheFile);
  __swift_project_value_buffer(v4, static CacheDirectory.cacheFile);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, static CacheDirectory.url);
  (*(v5 + 16))(v7, v9, v4);
  strcpy(v11, "cache.sqlite");
  HIBYTE(v11[6]) = 0;
  v11[7] = -5120;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t one-time initialization function for activeUseCaseTrackerFile()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static CacheDirectory.activeUseCaseTrackerFile);
  __swift_project_value_buffer(v4, static CacheDirectory.activeUseCaseTrackerFile);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, static CacheDirectory.url);
  (*(v5 + 16))(v7, v9, v4);
  v11[0] = 0xD000000000000015;
  v11[1] = 0x8000000225038240;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t one-time initialization function for dynamicAllowListFile()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static CacheDirectory.dynamicAllowListFile);
  __swift_project_value_buffer(v4, static CacheDirectory.dynamicAllowListFile);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, static CacheDirectory.url);
  (*(v5 + 16))(v7, v9, v4);
  v11[0] = 0xD000000000000016;
  v11[1] = 0x8000000225038310;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t one-time initialization function for tokenCacheFile()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, static CacheDirectory.tokenCacheFile);
  __swift_project_value_buffer(v4, static CacheDirectory.tokenCacheFile);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, static CacheDirectory.url);
  (*(v5 + 16))(v7, v9, v4);
  v11[0] = 0xD000000000000011;
  v11[1] = 0x80000002250382D0;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t one-time initialization function for fakeQueriesDirectory()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v16 - v9);
  __swift_allocate_value_buffer(v11, static CacheDirectory.fakeQueriesDirectory);
  v12 = __swift_project_value_buffer(v4, static CacheDirectory.fakeQueriesDirectory);
  if (one-time initialization token for url != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, static CacheDirectory.url);
  (*(v5 + 16))(v7, v13, v4);
  v16[0] = 0xD000000000000014;
  v16[1] = 0x80000002250382F0;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  v14 = *(v5 + 8);
  v14(v7, v4);
  createDirectory(_:)(v10, v12);
  return (v14)(v10, v4);
}

uint64_t static CacheDirectory.url.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for URL();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

unint64_t static Sharding.sha256Shard(keyword:shardCount:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v14 = a3;
  v5 = type metadata accessor for SHA256();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256Digest();
  v9 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v8);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v6 + 8))(v8, v5);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  result = (*(v9 + 8))(v11, v13);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14)
  {
    return v15 % v14;
  }

  __break(1u);
  return result;
}

uint64_t static Sharding.truncatedHash(keyword:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256Digest();
  v8 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v7);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v5 + 8))(v7, v4);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v8 + 8))(v10, v13);
  return v14;
}

unint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256()
{
  result = lazy protocol witness table cache variable for type SHA256 and conformance SHA256;
  if (!lazy protocol witness table cache variable for type SHA256 and conformance SHA256)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA256 and conformance SHA256);
  }

  return result;
}

void *closure #1 in static Sharding.truncatedHash(keyword:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AMDPbHEResponse.apiCode.getter()
{
  v1 = (v0 + *(type metadata accessor for AMDPbHEResponse(0) + 36));
  if (v1[9])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t AMDPbHEResponse.configs.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v7 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AMDPbHEConfigsReply(v5, a1, type metadata accessor for AMDPbHEConfigsReply);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v5, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v9;
  type metadata accessor for AMDPbHEConfigsReply(0);
  return UnknownStorage.init()();
}

uint64_t AMDPbHEResponse.heReplies.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v7 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AMDPbHEConfigsReply(v5, a1, type metadata accessor for AMDPbHEReplies);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v5, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for AMDPbHEReplies(0);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHE_APICode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AMDPbHE_APICode and conformance AMDPbHE_APICode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t AMDPbHEResponse.apiCode.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  result = type metadata accessor for AMDPbHEResponse(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*AMDPbHEResponse.apiCode.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for AMDPbHEResponse(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v7 | v6) & 1;
  return AMDPbHEResponse.apiCode.modify;
}

uint64_t AMDPbHEResponse.apiCode.modify(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall AMDPbHEResponse.clearApiCode()()
{
  v1 = v0 + *(type metadata accessor for AMDPbHEResponse(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t AMDPbHEResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AMDPbHEResponse.statuses.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AMDPbHEResponse.errorMessage.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t AMDPbHEResponse.response.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AMDPbHEResponse(0) + 28);

  return outlined assign with take of AMDPbHEResponse.OneOf_Response?(a1, v3);
}

uint64_t AMDPbHEResponse.heReply.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v7 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AMDPbHEConfigsReply(v5, a1, type metadata accessor for AMDPbHEReply);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v5, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v8 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  type metadata accessor for AMDPbHEReply(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AMDPbHEResponse.heReply : AMDPbHEResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 28), v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v8 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AMDPbHEConfigsReply(v6, a2, type metadata accessor for AMDPbHEReply);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v6, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v9 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  type metadata accessor for AMDPbHEReply(0);
  return UnknownStorage.init()();
}

void (*AMDPbHEResponse.heReply.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AMDPbHEReply(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  *(v5 + 12) = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v12, v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v13 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AMDPbHEConfigsReply(v8, v11, type metadata accessor for AMDPbHEReply);
      return AMDPbHEResponse.heReply.modify;
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v15 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  UnknownStorage.init()();
  return AMDPbHEResponse.heReply.modify;
}

uint64_t key path getter for AMDPbHEResponse.heReplies : AMDPbHEResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 28), v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v8 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AMDPbHEConfigsReply(v6, a2, type metadata accessor for AMDPbHEReplies);
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v6, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for AMDPbHEReplies(0);
  return UnknownStorage.init()();
}

void (*AMDPbHEResponse.heReplies.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AMDPbHEReplies(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  *(v5 + 12) = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v12, v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v13 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
LABEL_15:
    *v11 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    return AMDPbHEResponse.heReplies.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    goto LABEL_15;
  }

  outlined init with take of AMDPbHEConfigsReply(v8, v11, type metadata accessor for AMDPbHEReplies);
  return AMDPbHEResponse.heReplies.modify;
}

uint64_t key path setter for AMDPbHEResponse.heReply : AMDPbHEResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  outlined init with copy of AMDPbHEReply(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v15, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  outlined init with take of AMDPbHEConfigsReply(v14, a2 + v15, a7);
  v16 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t AMDPbHEResponse.heReply.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3 + v6, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  outlined init with take of AMDPbHEConfigsReply(a1, v3 + v6, a2);
  v7 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*AMDPbHEResponse.configs.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AMDPbHEConfigsReply(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  *(v5 + 12) = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v12, v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v13 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
LABEL_15:
    v15 = MEMORY[0x277D84F90];
    *v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v11[1] = v15;
    UnknownStorage.init()();
    return AMDPbHEResponse.configs.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    goto LABEL_15;
  }

  outlined init with take of AMDPbHEConfigsReply(v8, v11, type metadata accessor for AMDPbHEConfigsReply);
  return AMDPbHEResponse.configs.modify;
}

void AMDPbHEResponse.heReply.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v8 = *a1;
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = *(*a1 + 12);
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v16 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbHEReply(v13, v12, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14 + v11, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v12, v14 + v11, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14 + v11, 0, 1, v9);
    outlined destroy of AMDPbHEResponse.OneOf_Response(v13, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14 + v11, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v13, v14 + v11, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14 + v11, 0, 1, v9);
  }

  free(v13);
  free(v12);
  free(v16);

  free(v8);
}

uint64_t AMDPbHEResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AMDPbHEResponse(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AMDPbHEResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbHEResponse(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance AMDPbHE_APICode@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AMDPbHE_APICode@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AMDPbHE_APICode(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEResponse.PbStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AMDPbHE_APICode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AMDPbHEResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v2;
  v3 = type metadata accessor for AMDPbHEResponse(0);
  v4 = *(v3 + 28);
  v5 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  result = UnknownStorage.init()();
  v7 = a1 + *(v3 + 36);
  *v7 = 0;
  *(v7 + 8) = 256;
  return result;
}

uint64_t AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            closure #1 in AMDPbHEResponse.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 2:
            lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 3:
            closure #3 in AMDPbHEResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();
          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
        }
      }

      else if (result == 4)
      {
        closure #4 in AMDPbHEResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else
      {
        closure #5 in AMDPbHEResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbHEResponse(0);
  lazy protocol witness table accessor for type AMDPbHE_APICode and conformance AMDPbHE_APICode();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #3 in AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for AMDPbHEReply(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  v44 = a1;
  v42 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v12, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    outlined init with take of AMDPbHEConfigsReply(v12, v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    outlined init with take of AMDPbHEConfigsReply(v19, v16, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AMDPbHEResponse.OneOf_Response(v16, type metadata accessor for AMDPbHEResponse.OneOf_Response);
      v32 = v50;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
      v33 = v16;
      v34 = v45;
      outlined init with take of AMDPbHEConfigsReply(v33, v45, type metadata accessor for AMDPbHEReply);
      outlined init with take of AMDPbHEConfigsReply(v34, v25, type metadata accessor for AMDPbHEReply);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReply and conformance AMDPbHEReply, type metadata accessor for AMDPbHEReply, &protocol conformance descriptor for AMDPbHEReply);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v35, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
  }

  else
  {
    v38 = v46;
    outlined init with take of AMDPbHEConfigsReply(v35, v46, type metadata accessor for AMDPbHEReply);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML12AMDPbHEReplyVSgMd, &_s8CipherML12AMDPbHEReplyVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44 + v42, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v38, v39 + v40, type metadata accessor for AMDPbHEReply);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #4 in AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for AMDPbHEReplies(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  v44 = a1;
  v42 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v12, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of AMDPbHEConfigsReply(v12, v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    outlined init with take of AMDPbHEConfigsReply(v19, v16, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of AMDPbHEConfigsReply(v32, v46, type metadata accessor for AMDPbHEReplies);
      outlined init with take of AMDPbHEConfigsReply(v33, v25, type metadata accessor for AMDPbHEReplies);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v16, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies, &protocol conformance descriptor for AMDPbHEReplies);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v35, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of AMDPbHEConfigsReply(v35, v45, type metadata accessor for AMDPbHEReplies);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbHERepliesVSgMd, &_s8CipherML14AMDPbHERepliesVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44 + v42, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v38, v39 + v40, type metadata accessor for AMDPbHEReplies);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #5 in AMDPbHEResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for AMDPbHEConfigsReply(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for AMDPbHEResponse(0) + 28);
  v44 = a1;
  v42 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v12, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of AMDPbHEConfigsReply(v12, v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    outlined init with take of AMDPbHEConfigsReply(v19, v16, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of AMDPbHEConfigsReply(v32, v46, type metadata accessor for AMDPbHEConfigsReply);
      outlined init with take of AMDPbHEConfigsReply(v33, v25, type metadata accessor for AMDPbHEConfigsReply);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of AMDPbHEResponse.OneOf_Response(v16, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply, &protocol conformance descriptor for AMDPbHEConfigsReply);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v35, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of AMDPbHEConfigsReply(v35, v45, type metadata accessor for AMDPbHEConfigsReply);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AMDPbHEConfigsReplyVSgMd, &_s8CipherML19AMDPbHEConfigsReplyVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44 + v42, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    outlined init with take of AMDPbHEConfigsReply(v38, v39 + v40, type metadata accessor for AMDPbHEConfigsReply);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  result = closure #1 in AMDPbHEResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v12 = *(v3 + 8);
      v16 = *v3;
      v17 = v12;
      lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v13 = type metadata accessor for AMDPbHEResponse(0);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3 + *(v13 + 28), v10, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v14 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
    if ((*(*(v14 - 8) + 48))(v10, 1, v14) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          closure #3 in AMDPbHEResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
        }

        else
        {
          closure #4 in AMDPbHEResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
        }
      }

      else
      {
        closure #2 in AMDPbHEResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      outlined destroy of AMDPbHEResponse.OneOf_Response(v10, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    }

    if (*(*(v3 + 16) + 16))
    {
      lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus();
      dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)();
    }

    if (*(*(v3 + 24) + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AMDPbHEResponse(0);
  if ((*(a1 + *(result + 36) + 9) & 1) == 0)
  {
    lazy protocol witness table accessor for type AMDPbHE_APICode and conformance AMDPbHE_APICode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AMDPbHEReply(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v11 + 28), v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v12 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AMDPbHEConfigsReply(v7, v10, type metadata accessor for AMDPbHEReply);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReply and conformance AMDPbHEReply, type metadata accessor for AMDPbHEReply, &protocol conformance descriptor for AMDPbHEReply);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEResponse.OneOf_Response(v10, type metadata accessor for AMDPbHEReply);
  }

  result = outlined destroy of AMDPbHEResponse.OneOf_Response(v7, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t closure #3 in AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AMDPbHEReplies(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v11 + 28), v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v12 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AMDPbHEConfigsReply(v7, v10, type metadata accessor for AMDPbHEReplies);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies, &protocol conformance descriptor for AMDPbHEReplies);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEResponse.OneOf_Response(v10, type metadata accessor for AMDPbHEReplies);
  }

  result = outlined destroy of AMDPbHEResponse.OneOf_Response(v7, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t closure #4 in AMDPbHEResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AMDPbHEConfigsReply(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AMDPbHEResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v11 + 28), v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v12 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AMDPbHEConfigsReply(v7, v10, type metadata accessor for AMDPbHEConfigsReply);
    lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply, &protocol conformance descriptor for AMDPbHEConfigsReply);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEResponse.OneOf_Response(v10, type metadata accessor for AMDPbHEConfigsReply);
  }

  result = outlined destroy of AMDPbHEResponse.OneOf_Response(v7, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  __break(1u);
  return result;
}

Swift::Int AMDPbHEResponse.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for AMDPbHEResponse(0);
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse, &protocol conformance descriptor for AMDPbHEResponse);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AMDPbHEResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = v4;
  v5 = *(a1 + 28);
  v6 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  result = UnknownStorage.init()();
  v8 = a2 + *(a1 + 36);
  *v8 = 0;
  *(v8 + 8) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse, &protocol conformance descriptor for AMDPbHEResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse, &protocol conformance descriptor for AMDPbHEResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type AMDPbHEResponse and conformance AMDPbHEResponse, type metadata accessor for AMDPbHEResponse, &protocol conformance descriptor for AMDPbHEResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static AMDPbHEResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSg_AFtMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSg_AFtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for AMDPbHEResponse(0);
  v15 = *(v14 + 36);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 9);
  v18 = a2 + v15;
  v19 = *(a2 + v15 + 9);
  if (v17)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v19)
    {
      goto LABEL_45;
    }

    v22 = *v16;
    v23 = *v18;
    if (*(v18 + 8))
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v22 != 2)
          {
            goto LABEL_45;
          }
        }

        else if (v22 != 3)
        {
          goto LABEL_45;
        }
      }

      else if (v23)
      {
        if (v22 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v22)
      {
        goto LABEL_45;
      }
    }

    else if (v22 != v23)
    {
      goto LABEL_45;
    }
  }

  v20 = *a1;
  v21 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        if (v20 != 3)
        {
          goto LABEL_45;
        }
      }

      else if (v21 == 4)
      {
        if (v20 != 4)
        {
          goto LABEL_45;
        }
      }

      else if (v20 != 5)
      {
        goto LABEL_45;
      }
    }

    else if (v21)
    {
      if (v21 == 1)
      {
        if (v20 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v20 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v20)
    {
      goto LABEL_45;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_45;
  }

  v33 = v14;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML15AMDPbHEResponseV8PbStatusO_Tt1g5(a1[2], *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[3], *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_45;
  }

  v24 = *(v33 + 28);
  v25 = *(v11 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v24, v13, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v26 = a2 + v24;
  v27 = v25;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, &v13[v25], &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  v28 = *(v5 + 48);
  if (v28(v13, 1, v4) == 1)
  {
    if (v28(&v13[v27], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
LABEL_48:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v29 & 1;
    }

    goto LABEL_44;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  if (v28(&v13[v27], 1, v4) == 1)
  {
    outlined destroy of AMDPbHEResponse.OneOf_Response(v10, type metadata accessor for AMDPbHEResponse.OneOf_Response);
LABEL_44:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSg_AFtMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSg_AFtMR);
    goto LABEL_45;
  }

  outlined init with take of AMDPbHEConfigsReply(&v13[v27], v7, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  v31 = specialized static AMDPbHEResponse.OneOf_Response.== infix(_:_:)(v10, v7);
  outlined destroy of AMDPbHEResponse.OneOf_Response(v7, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  outlined destroy of AMDPbHEResponse.OneOf_Response(v10, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  if (v31)
  {
    goto LABEL_48;
  }

LABEL_45:
  v29 = 0;
  return v29 & 1;
}

uint64_t specialized static AMDPbHEResponse.OneOf_Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for AMDPbHEConfigsReply(0);
  MEMORY[0x28223BE20](v39);
  v42 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for AMDPbHEReplies(0);
  MEMORY[0x28223BE20](v40);
  v41 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AMDPbHEReply(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AMDPbHEResponse.OneOf_Response(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v39 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseO_AEtMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseO_AEtMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - v19;
  v22 = *(v21 + 56);
  outlined init with copy of AMDPbHEReply(a1, &v39 - v19, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  outlined init with copy of AMDPbHEReply(a2, &v20[v22], type metadata accessor for AMDPbHEResponse.OneOf_Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AMDPbHEReply(v20, v17, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AMDPbHEConfigsReply(&v20[v22], v8, type metadata accessor for AMDPbHEReply);
      v35 = static AMDPbHEReply.== infix(_:_:)();
      outlined destroy of AMDPbHEResponse.OneOf_Response(v8, type metadata accessor for AMDPbHEReply);
      outlined destroy of AMDPbHEResponse.OneOf_Response(v17, type metadata accessor for AMDPbHEReply);
      outlined destroy of AMDPbHEResponse.OneOf_Response(v20, type metadata accessor for AMDPbHEResponse.OneOf_Response);
      return v35 & 1;
    }

    v30 = type metadata accessor for AMDPbHEReply;
    v31 = v17;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of AMDPbHEReply(v20, v11, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = &v20[v22];
      v33 = v42;
      outlined init with take of AMDPbHEConfigsReply(v32, v42, type metadata accessor for AMDPbHEConfigsReply);
      _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML13AMDPbHEConfigVTt1g5(*v11, *v33);
      if (v34 & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML16AMDPbHEKeyStatusV_Tt1g5(v11[1], v33[1]))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          outlined destroy of AMDPbHEResponse.OneOf_Response(v33, type metadata accessor for AMDPbHEConfigsReply);
          v29 = v11;
          v28 = type metadata accessor for AMDPbHEConfigsReply;
          goto LABEL_14;
        }
      }

      outlined destroy of AMDPbHEResponse.OneOf_Response(v33, type metadata accessor for AMDPbHEConfigsReply);
      v36 = v11;
      v37 = type metadata accessor for AMDPbHEConfigsReply;
      goto LABEL_22;
    }

    v30 = type metadata accessor for AMDPbHEConfigsReply;
    v31 = v11;
LABEL_17:
    outlined destroy of AMDPbHEResponse.OneOf_Response(v31, v30);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseO_AEtMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseO_AEtMR);
LABEL_23:
    v35 = 0;
    return v35 & 1;
  }

  outlined init with copy of AMDPbHEReply(v20, v14, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v30 = type metadata accessor for AMDPbHEReplies;
    v31 = v14;
    goto LABEL_17;
  }

  v24 = &v20[v22];
  v25 = v41;
  outlined init with take of AMDPbHEConfigsReply(v24, v41, type metadata accessor for AMDPbHEReplies);
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML12AMDPbHEReplyV_Tt1g5(*v14, *v25);
  if ((v26 & 1) == 0)
  {
    outlined destroy of AMDPbHEResponse.OneOf_Response(v25, type metadata accessor for AMDPbHEReplies);
    goto LABEL_21;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type AMDPbHEResponse and conformance AMDPbHEResponse(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AMDPbHEResponse.OneOf_Response(v25, type metadata accessor for AMDPbHEReplies);
  if ((v27 & 1) == 0)
  {
LABEL_21:
    v37 = type metadata accessor for AMDPbHEReplies;
    v36 = v14;
LABEL_22:
    outlined destroy of AMDPbHEResponse.OneOf_Response(v36, v37);
    outlined destroy of AMDPbHEResponse.OneOf_Response(v20, type metadata accessor for AMDPbHEResponse.OneOf_Response);
    goto LABEL_23;
  }

  v28 = type metadata accessor for AMDPbHEReplies;
  v29 = v14;
LABEL_14:
  outlined destroy of AMDPbHEResponse.OneOf_Response(v29, v28);
  outlined destroy of AMDPbHEResponse.OneOf_Response(v20, type metadata accessor for AMDPbHEResponse.OneOf_Response);
  v35 = 1;
  return v35 & 1;
}

uint64_t outlined init with take of AMDPbHEConfigsReply(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of AMDPbHEResponse.OneOf_Response?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AMDPbHEResponse.OneOf_Response(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AMDPbHEReply(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus()
{
  result = lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus;
  if (!lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus;
  if (!lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus;
  if (!lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus;
  if (!lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHEResponse.PbStatus and conformance AMDPbHEResponse.PbStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AMDPbHE_APICode and conformance AMDPbHE_APICode()
{
  result = lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode;
  if (!lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode;
  if (!lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode;
  if (!lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode;
  if (!lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AMDPbHE_APICode and conformance AMDPbHE_APICode);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AMDPbHE_APICode] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for AMDPbHEResponse(uint64_t a1)
{
  type metadata accessor for [AMDPbHEResponse.PbStatus](319, &lazy cache variable for type metadata for [AMDPbHEResponse.PbStatus], &type metadata for AMDPbHEResponse.PbStatus, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEResponse.PbStatus](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AMDPbHEResponse.OneOf_Response?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v4 <= 0x3F)
        {
          type metadata accessor for [AMDPbHEResponse.PbStatus](319, &lazy cache variable for type metadata for AMDPbHE_APICode?, &type metadata for AMDPbHE_APICode, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for AMDPbHEResponse.OneOf_Response?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AMDPbHEResponse.OneOf_Response?)
  {
    type metadata accessor for AMDPbHEResponse.OneOf_Response(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AMDPbHEResponse.OneOf_Response?);
    }
  }
}

void type metadata accessor for [AMDPbHEResponse.PbStatus](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for AMDPbHEResponse.OneOf_Response(uint64_t a1)
{
  result = type metadata accessor for AMDPbHEReply(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AMDPbHEReplies(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AMDPbHEConfigsReply(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t AspireApiConfigResponse.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v2;
  type metadata accessor for AspireApiConfigResponse(0);
  return UnknownStorage.init()();
}

uint64_t AspireApiError.ConfigVersionNotFound.configResponse.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v7 = type metadata accessor for AspireApiConfigResponse(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiConfigResponse);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v9;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  }

  return result;
}

uint64_t AspireApiKeyStatus.keyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for AspireApiKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v7 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  v9 = *(v7 + 28);
  v10 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.keywordPirParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspirePirKeywordPirParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 32);
  v13 = type metadata accessor for AspirePirPIRShardingFunction(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t AspireApiPECConfig.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 40), v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.pirShardConfigs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v8 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiPIRShardConfigs);
  }

  v10 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.shardConfigs.getter()
{
  type metadata accessor for AspireApiPIRConfig(0);
  swift_beginAccess();
}

uint64_t AspireApiPIRShardConfig.shardID.getter()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t AspireApiPIRFixedShardConfig.shardConfig.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v7 = type metadata accessor for AspireApiPIRShardConfig(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiPIRShardConfig);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v9 = (a1 + v7[8]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v7[9]) = 2;
  v10 = a1 + v7[10];
  *v10 = 0;
  v10[8] = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.evaluationKeyConfigHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireApiPIRConfig(0) + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AspireApiRequest.pirRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiPIRRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  *a1 = 0;
  *(a1 + 8) = xmmword_225022910;
  v8 = type metadata accessor for AspireApiPIRRequest(0);
  UnknownStorage.init()();
  v9 = v8[7];
  v10 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v8[8];
  v12 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = (a1 + v8[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v8[10];
  v15 = type metadata accessor for AspireApiEvaluationKey(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t AspireApiPIRRequest.evaluationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPIRRequest(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiEvaluationKey);
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiPECConfig.evaluationKeyConfigHash.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t AspireApiPECRequest.evaluationKeyMetadata.getter@<X0>(uint64_t (*a1)(void, double)@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = a1(0, v6);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v9 + 32), v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v10 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRRequest.query.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v7 = type metadata accessor for AspirePirEncryptedIndices(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspirePirEncryptedIndices);
  }

  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.batchSize.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.getter()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t AspireApiPIRConfig.batchPirParams.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirBatchPirParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspirePirBatchPirParameters);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = 0;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRRequest.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspirePirEncryptedIndices);
  v4 = type metadata accessor for AspirePirEncryptedIndices(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiPECRequest.evaluationKeyMetadata.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v4, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v2 + v4, type metadata accessor for AspireApiEvaluationKeyMetadata);
  v5 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t AspireApiEvaluationKey.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiEvaluationKeyMetadata);
  v4 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiEvaluationKey.evaluationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireHeSerializedEvaluationKey);
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiPECRequest.evaluationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiEvaluationKey);
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireApiResponses.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return UnknownStorage.init()();
}

uint64_t AspireApiPECConfig.plaintextPacking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 44), v5, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v9 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t AspireApiPIRConfig.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t AspireApiPIRRequest.shardID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AspireApiPIRResponse.stash.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspireApiPIRResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v7 = type metadata accessor for AspireApiStashOfEntries(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiStashOfEntries);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v9;
  a1[2] = v9;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  }

  return result;
}

uint64_t AspireApiEvaluationKeyMetadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiKeyStatus.keyConfig : AspireApiKeyStatus@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireApiKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 24), v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiKeyStatus.keyConfig : AspireApiKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireHeEvaluationKeyConfig);
  v8 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireHeEvaluationKeyConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireApiKeyStatus.keyConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireHeEvaluationKeyConfig);
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiKeyStatus.keyConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    UnknownStorage.init()();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  return AspireApiKeyStatus.keyConfig.modify;
}

void AspireApiKeyStatus.keyConfig.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireApiPIRResponse.hasStash.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v15;
}

uint64_t AspireApiKeyStatus.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireApiKeyStatus.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireApiEvaluationKey.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v7 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireApiEvaluationKey.metadata : AspireApiEvaluationKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 20), v6, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v8 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiEvaluationKey.metadata : AspireApiEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiEvaluationKeyMetadata);
  v8 = *(type metadata accessor for AspireApiEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireApiEvaluationKeyMetadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireApiEvaluationKey.metadata.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiEvaluationKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  return AspireApiEvaluationKey.metadata.modify;
}

BOOL AspireApiError.ConfigVersionNotFound.hasConfigResponse.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v15;
}

uint64_t AspireApiEvaluationKey.evaluationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for AspireHeSerializedRelinKey(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireApiEvaluationKey.evaluationKey : AspireApiEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 24), v6, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v8 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for AspireHeSerializedRelinKey(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiEvaluationKey.evaluationKey : AspireApiEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireHeSerializedEvaluationKey);
  v8 = *(type metadata accessor for AspireApiEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireHeSerializedEvaluationKey);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireApiEvaluationKey.evaluationKey.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiEvaluationKey(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireHeSerializedGaloisKey(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedRelinKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  return AspireApiEvaluationKey.evaluationKey.modify;
}

void AspireApiEvaluationKey.evaluationKey.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireHeSerializedEvaluationKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireHeSerializedEvaluationKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t AspireApiKeyStatus.clearKeyConfig()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AspireApiEvaluationKey.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for AspireApiEvaluationKey(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t AspireApiEvaluationKeyMetadata.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireApiEvaluationKeyMetadata.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireApiConfigRequest.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  type metadata accessor for AspireApiConfigRequest(0);
  return UnknownStorage.init()();
}

uint64_t AspireApiConfig.pirConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v5, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiPIRConfig);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiConfig.OneOf_Config);
  }

  UnknownStorage.init()();
  v8 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v8) = static AspireApiPIRConfig._StorageClass.defaultInstance;
}

uint64_t key path setter for AspireApiConfig.pirConfig : AspireApiConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiPIRConfig);
  v7 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiConfig.pirConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPIRConfig);
  v3 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiPIRConfig.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v3) = static AspireApiPIRConfig._StorageClass.defaultInstance;
}

void (*AspireApiConfig.pirConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AspireApiPIRConfig(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(v9, v13, type metadata accessor for AspireApiPIRConfig);
      return AspireApiConfig.pirConfig.modify;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiConfig.OneOf_Config);
  }

  UnknownStorage.init()();
  v16 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v13 + v16) = static AspireApiPIRConfig._StorageClass.defaultInstance;

  return AspireApiConfig.pirConfig.modify;
}

void AspireApiConfig.pirConfig.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiPIRConfig);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiPIRConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiPIRConfig);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspireApiConfig.pecConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v14 - v5, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiPECConfig);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiConfig.OneOf_Config);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_225022910;
  *(a1 + 48) = MEMORY[0x277D84F90];
  v9 = type metadata accessor for AspireApiPECConfig(0);
  UnknownStorage.init()();
  v10 = *(v9 + 40);
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 44);
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t key path setter for AspireApiConfig.pecConfig : AspireApiConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPECConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiPECConfig);
  v7 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiConfig.pecConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPECConfig);
  v3 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiPECConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_225022910;
  *(a1 + 48) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AspireApiPECConfig(0);
  UnknownStorage.init()();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 44);
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

void (*AspireApiConfig.pecConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AspireApiPECConfig(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = xmmword_225022910;
    *(v13 + 48) = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v16 = *(v10 + 40);
    v17 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 44);
    v19 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return AspireApiConfig.pecConfig.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiConfig.OneOf_Config);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v9, v13, type metadata accessor for AspireApiPECConfig);
  return AspireApiConfig.pecConfig.modify;
}

void AspireApiConfig.pecConfig.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiPECConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiPECConfig);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiPECConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiPECConfig);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspireApiConfig.configID.getter()
{
  v1 = v0 + *(type metadata accessor for AspireApiConfig(0) + 20);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AspireApiConfig.configID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AspireApiConfig(0) + 20);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AspireApiConfig.reuseExistingConfig.setter(char a1)
{
  result = type metadata accessor for AspireApiConfig(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t AspireApiConfig.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for AspireApiConfig(0);
  *(a1 + *(v3 + 20)) = xmmword_225022910;
  *(a1 + *(v3 + 24)) = 0;
  return UnknownStorage.init()();
}

uint64_t AspireApiRequests.requests.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AspireApiRequest.usecase.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AspireApiRequest.usecase.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AspireApiPIRRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_225022910;
  v2 = type metadata accessor for AspireApiPIRRequest(0);
  UnknownStorage.init()();
  v3 = v2[7];
  v4 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = (a1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[10];
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

void (*AspireApiRequest.pirRequest.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiPIRRequest(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for AspireApiRequest(0) + 20);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRRequest);
      return AspireApiRequest.pirRequest.modify;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  *v12 = 0;
  *(v12 + 8) = xmmword_225022910;
  UnknownStorage.init()();
  v16 = v9[7];
  v17 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = v9[8];
  v19 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
  v20 = (v12 + v9[9]);
  *v20 = 0;
  v20[1] = 0;
  v21 = v9[10];
  v22 = type metadata accessor for AspireApiEvaluationKey(0);
  (*(*(v22 - 8) + 56))(v12 + v21, 1, 1, v22);
  return AspireApiRequest.pirRequest.modify;
}

uint64_t AspireApiRequest.pecRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiPECRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v9;
  *(a1 + 16) = xmmword_225022910;
  v10 = type metadata accessor for AspireApiPECRequest(0);
  UnknownStorage.init()();
  v11 = *(v10 + 32);
  v12 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 36);
  v14 = type metadata accessor for AspireApiEvaluationKey(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t AspireApiPECRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_225022910;
  v3 = type metadata accessor for AspireApiPECRequest(0);
  UnknownStorage.init()();
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = *(v3 + 36);
  v7 = type metadata accessor for AspireApiEvaluationKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void (*AspireApiRequest.pecRequest.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiPECRequest(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for AspireApiRequest(0) + 20);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = v16;
    *(v12 + 16) = xmmword_225022910;
    UnknownStorage.init()();
    v17 = *(v9 + 32);
    v18 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
    v19 = *(v9 + 36);
    v20 = type metadata accessor for AspireApiEvaluationKey(0);
    (*(*(v20 - 8) + 56))(v12 + v19, 1, 1, v20);
    return AspireApiRequest.pecRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPECRequest);
  return AspireApiRequest.pecRequest.modify;
}

uint64_t AspireApiRequest.oprfRequest.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiOPRFRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  type metadata accessor for AspireApiOPRFRequest(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiRequest.pirRequest : AspireApiRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for AspireApiRequest(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v15, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v14, a2 + v15, a7);
  v16 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t AspireApiRequest.pirRequest.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for AspireApiRequest(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3 + v6, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v3 + v6, a2);
  v7 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*AspireApiRequest.oprfRequest.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AspireApiOPRFRequest(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for AspireApiRequest(0) + 20);
  *(v5 + 12) = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v12, v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
LABEL_15:
    *v11 = xmmword_225022910;
    v11[1] = xmmword_225022910;
    UnknownStorage.init()();
    return AspireApiRequest.oprfRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiOPRFRequest);
  return AspireApiRequest.oprfRequest.modify;
}

void AspireApiRequest.pirRequest.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v8 = *a1;
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = *(*a1 + 12);
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v16 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v13, v12, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14 + v11, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v14 + v11, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14 + v11, 0, 1, v9);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14 + v11, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v13, v14 + v11, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14 + v11, 0, 1, v9);
  }

  free(v13);
  free(v12);
  free(v16);

  free(v8);
}

uint64_t AspireApiRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v3 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t AspireApiResponse.pirResponse.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v12 - v5, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiPIRResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a1 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for AspireApiPIRResponse(0);
  UnknownStorage.init()();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for AspireApiStashOfEntries(0);
  return (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
}

uint64_t key path getter for AspireApiResponse.pirResponse : AspireApiResponse@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v12 - v5, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiPIRResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a2 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for AspireApiPIRResponse(0);
  UnknownStorage.init()();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for AspireApiStashOfEntries(0);
  return (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
}

uint64_t key path setter for AspireApiResponse.pirResponse : AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRResponse(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiPIRResponse);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiPIRResponse);
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiResponse.pirResponse.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPIRResponse);
  v3 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiKeyStatus.init()@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v6 = a2(0);
  UnknownStorage.init()();
  v7 = *(v6 + 24);
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a4[v7], 1, 1, v8);
}

void (*AspireApiResponse.pirResponse.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiPIRResponse(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRResponse);
      return AspireApiResponse.pirResponse.modify;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *v12 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v15 = *(v9 + 24);
  v16 = type metadata accessor for AspireApiStashOfEntries(0);
  (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  return AspireApiResponse.pirResponse.modify;
}

void AspireApiResponse.pirResponse.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiPIRResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiPIRResponse);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiPIRResponse);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiPIRResponse);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspireApiResponse.pecResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiPECResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for AspireApiPECResponse(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiResponse.pecResponse : AspireApiResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiPECResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for AspireApiPECResponse(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiResponse.pecResponse : AspireApiResponse(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AspireApiPECResponse(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiPECResponse);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2, type metadata accessor for AspireApiPECResponse);
  v8 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AspireApiResponse.pecResponse.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPECResponse);
  v3 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspireApiResponse.pecResponse.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AspireApiPECResponse(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v12 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_15:
    *v11 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    return AspireApiResponse.pecResponse.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiPECResponse);
  return AspireApiResponse.pecResponse.modify;
}

void AspireApiResponse.pecResponse.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiPECResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiPECResponse);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiPECResponse);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiPECResponse);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspireApiResponse.oprfResponse.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiOPRFResponse);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiResponse.OneOf_Response);
  }

  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  type metadata accessor for AspireApiOPRFResponse(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiResponse.oprfResponse : AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiOPRFResponse(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiOPRFResponse);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiOPRFResponse);
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiResponse.oprfResponse.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiOPRFResponse);
  v3 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiOPRFRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_225022910;
  a2[1] = xmmword_225022910;
  a1(0);
  return UnknownStorage.init()();
}

void (*AspireApiResponse.oprfResponse.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for AspireApiOPRFResponse(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v12 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_15:
    *v11 = xmmword_225022910;
    v11[1] = xmmword_225022910;
    UnknownStorage.init()();
    return AspireApiResponse.oprfResponse.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiOPRFResponse);
  return AspireApiResponse.oprfResponse.modify;
}

void AspireApiResponse.oprfResponse.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiOPRFResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiOPRFResponse);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiOPRFResponse);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiOPRFResponse);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t static AspireApiOPRFRequest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiPIRShardConfig.dimensions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t key path getter for AspireApiPIRShardConfig.shardID : AspireApiPIRShardConfig@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for AspireApiPIRShardConfig.shardID : AspireApiPIRShardConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t AspireApiPIRShardConfig.shardID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*AspireApiPIRShardConfig.shardID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return AspireApiPIRShardConfig.shardID.modify;
}

Swift::Void __swiftcall AspireApiPIRShardConfig.clearShardID()()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t AspireApiPIRShardConfig.compressVectorizedPirResponse.setter(char a1)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*AspireApiPIRShardConfig.compressVectorizedPirResponse.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return AspireApiPIRShardConfig.compressVectorizedPirResponse.modify;
}

uint64_t AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.setter(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.modify;
}

uint64_t AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall AspireApiPIRShardConfig.clearVectorizedPirInternalBatchingSize()()
{
  v1 = v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t AspireApiConfig.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireApiConfig.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireApiPIRShardConfig.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AspireApiPIRShardConfig(0);
  result = UnknownStorage.init()();
  v4 = (a1 + v2[8]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + v2[9]) = 2;
  v5 = a1 + v2[10];
  *v5 = 0;
  v5[8] = 1;
  return result;
}

uint64_t key path setter for AspireApiPIRConfig.encryptionParameters : AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v10, type metadata accessor for AspireHeEncryptionParameters);
  v11 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v13 = AspireApiPIRConfig._StorageClass.init(copying:)(v13);
    *(a2 + v11) = v13;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v10, v6, type metadata accessor for AspireHeEncryptionParameters);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.encryptionParameters.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v9 = AspireApiPIRConfig._StorageClass.init(copying:)(v9);
    *(v2 + v7) = v9;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v6, type metadata accessor for AspireHeEncryptionParameters);
  v10 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return swift_endAccess();
}

void (*AspireApiPIRConfig.encryptionParameters.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspireApiPIRConfig.encryptionParameters.modify;
}

void AspireApiPIRConfig.encryptionParameters.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEvaluationKeyConfig(*(v3 + 120), *(v3 + 112), type metadata accessor for AspireHeEncryptionParameters);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v11, v15, type metadata accessor for AspireHeEncryptionParameters);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    swift_endAccess();
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v19 = AspireApiPIRConfig._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v10, v15, type metadata accessor for AspireHeEncryptionParameters);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL AspireApiPIRConfig.hasBatchPirParams.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, a1, a2);
  return v15;
}

uint64_t key path getter for AspireApiPIRConfig.shardConfigs : AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for AspireApiPIRConfig.shardConfigs : AspireApiPIRConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v6 = AspireApiPIRConfig._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  *(v6 + v7) = v3;
}

uint64_t AspireApiPIRConfig.shardConfigs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v6 = AspireApiPIRConfig._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  *(v6 + v7) = a1;
}

void (*AspireApiPIRConfig.shardConfigs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return AspireApiPIRConfig.shardConfigs.modify;
}

void AspireApiPIRConfig.shardConfigs.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v10 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    *(v7 + v10) = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v12 = AspireApiPIRConfig._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    v15 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    *(v12 + v15) = v3;
  }

  free(v2);
}

uint64_t key path setter for AspireApiPIRConfig.keywordPirParams : AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v10, type metadata accessor for AspirePirKeywordPirParameters);
  v11 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v13 = AspireApiPIRConfig._StorageClass.init(copying:)(v13);
    *(a2 + v11) = v13;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v10, v6, type metadata accessor for AspirePirKeywordPirParameters);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.keywordPirParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v9 = AspireApiPIRConfig._StorageClass.init(copying:)(v9);
    *(v2 + v7) = v9;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v6, type metadata accessor for AspirePirKeywordPirParameters);
  v10 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  return swift_endAccess();
}

void (*AspireApiPIRConfig.keywordPirParams.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for AspirePirKeywordPirParameters(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    UnknownStorage.init()();
    v19 = *(v9 + 28);
    v20 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = *(v9 + 32);
    v22 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspirePirKeywordPirParameters);
  }

  return AspireApiPIRConfig.keywordPirParams.modify;
}

void AspireApiPIRConfig.keywordPirParams.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEvaluationKeyConfig(*(v3 + 120), *(v3 + 112), type metadata accessor for AspirePirKeywordPirParameters);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v11, v15, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    swift_endAccess();
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspirePirKeywordPirParameters);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v19 = AspireApiPIRConfig._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v10, v15, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

uint64_t AspireApiPIRConfig.clearEncryptionParameters()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v15 = AspireApiPIRConfig._StorageClass.init(copying:)(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t key path getter for AspireApiPIRConfig.algorithm : AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for AspireApiPIRConfig.algorithm : AspireApiPIRConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  v8 = v7 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  result = swift_beginAccess();
  *v8 = v3;
  *(v8 + 8) = v4;
  return result;
}

uint64_t AspireApiPIRConfig.algorithm.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(v2 + v5) = v7;
  }

  v8 = v7 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  result = swift_beginAccess();
  *v8 = v3;
  *(v8 + 8) = v4;
  return result;
}

void (*AspireApiPIRConfig.algorithm.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return AspireApiPIRConfig.algorithm.modify;
}

void AspireApiPIRConfig.algorithm.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v8 = AspireApiPIRConfig._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  v11 = v8 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  swift_beginAccess();
  *v11 = v3;
  *(v11 + 8) = v6;

  free(v2);
}

uint64_t key path setter for AspireApiPIRConfig.batchSize : AspireApiPIRConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v6 = AspireApiPIRConfig._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  result = swift_beginAccess();
  *(v6 + v7) = v3;
  return result;
}

uint64_t AspireApiPIRConfig.batchSize.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v6 = AspireApiPIRConfig._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  result = swift_beginAccess();
  *(v6 + v7) = a1;
  return result;
}

void (*AspireApiPIRConfig.batchSize.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return AspireApiPIRConfig.batchSize.modify;
}

void AspireApiPIRConfig.batchSize.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v10 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  *(v7 + v10) = v3;

  free(v2);
}

uint64_t key path getter for AspireApiPIRConfig.evaluationKeyConfigHash : AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return outlined copy of Data._Representation(v4, v5);
}

uint64_t key path setter for AspireApiPIRConfig.evaluationKeyConfigHash : AspireApiPIRConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  outlined copy of Data._Representation(v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  v8 = (v7 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v3;
  v8[1] = v4;
  return outlined consume of Data._Representation(v9, v10);
}

uint64_t AspireApiPIRConfig.evaluationKeyConfigHash.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v8 = AspireApiPIRConfig._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  v9 = (v8 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  return outlined consume of Data._Representation(v10, v11);
}

void (*AspireApiPIRConfig.evaluationKeyConfigHash.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  outlined copy of Data._Representation(v7, v8);
  return AspireApiPIRConfig.evaluationKeyConfigHash.modify;
}

void AspireApiPIRConfig.evaluationKeyConfigHash.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    outlined copy of Data._Representation(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v8 = AspireApiPIRConfig._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    v11 = (v8 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    *v11 = v3;
    v11[1] = v5;
    outlined consume of Data._Representation(v12, v13);
    v14 = *(v2 + 72);
    v15 = *(v2 + 80);
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v6 + v4);
    if ((v16 & 1) == 0)
    {
      v18 = *(v2 + 96);
      v19 = *(v2 + 88);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v17 = AspireApiPIRConfig._StorageClass.init(copying:)(v17);
      *(v19 + v18) = v17;
    }

    v20 = (v17 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v14 = *v20;
    v15 = v20[1];
    *v20 = v3;
    v20[1] = v5;
  }

  outlined consume of Data._Representation(v14, v15);

  free(v2);
}

uint64_t key path setter for AspireApiPIRConfig.batchPirParams : AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspirePirBatchPirParameters(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v10, type metadata accessor for AspirePirBatchPirParameters);
  v11 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v13 = AspireApiPIRConfig._StorageClass.init(copying:)(v13);
    *(a2 + v11) = v13;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v10, v6, type metadata accessor for AspirePirBatchPirParameters);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.batchPirParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v9 = AspireApiPIRConfig._StorageClass.init(copying:)(v9);
    *(v2 + v7) = v9;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v6, type metadata accessor for AspirePirBatchPirParameters);
  v10 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return swift_endAccess();
}

void (*AspireApiPIRConfig.batchPirParams.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for AspirePirBatchPirParameters(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x277D84F90];
    v14[3] = 0;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspirePirBatchPirParameters);
  }

  return AspireApiPIRConfig.batchPirParams.modify;
}

void AspireApiPIRConfig.batchPirParams.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEvaluationKeyConfig(*(v3 + 120), *(v3 + 112), type metadata accessor for AspirePirBatchPirParameters);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v11, v15, type metadata accessor for AspirePirBatchPirParameters);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    swift_endAccess();
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspirePirBatchPirParameters);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v19 = AspireApiPIRConfig._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v10, v15, type metadata accessor for AspirePirBatchPirParameters);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

uint64_t key path getter for AspireApiPIRConfig.pirShardConfigs : AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v8 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v7 + v8, v6, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v9 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiPIRShardConfigs);
  }

  v11 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRConfig.pirShardConfigs : AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v10, type metadata accessor for AspireApiPIRShardConfigs);
  v11 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v13 = AspireApiPIRConfig._StorageClass.init(copying:)(v13);
    *(a2 + v11) = v13;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v10, v6, type metadata accessor for AspireApiPIRShardConfigs);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.pirShardConfigs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v9 = AspireApiPIRConfig._StorageClass.init(copying:)(v9);
    *(v2 + v7) = v9;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v6, type metadata accessor for AspireApiPIRShardConfigs);
  v10 = type metadata accessor for AspireApiPIRShardConfigs(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  return swift_endAccess();
}

uint64_t AspireApiResponse.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return UnknownStorage.init()();
}

void (*AspireApiPIRConfig.pirShardConfigs.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for AspireApiPIRShardConfigs(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiPIRShardConfigs);
  }

  return AspireApiPIRConfig.pirShardConfigs.modify;
}

void AspireApiPIRConfig.pirShardConfigs.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEvaluationKeyConfig(*(v3 + 120), *(v3 + 112), type metadata accessor for AspireApiPIRShardConfigs);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v7 = AspireApiPIRConfig._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v11, v15, type metadata accessor for AspireApiPIRShardConfigs);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    swift_endAccess();
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiPIRShardConfigs);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for AspireApiPIRConfig._StorageClass(0);
      swift_allocObject();
      v19 = AspireApiPIRConfig._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspireApiEvaluationKeyMetadata(v10, v15, type metadata accessor for AspireApiPIRShardConfigs);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

uint64_t AspireApiPIRShardConfigs.repeatedShardConfig.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v12 - v5, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v7 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  *a1 = 0;
  v8 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  UnknownStorage.init()();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for AspireApiPIRShardConfig(0);
  return (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
}

uint64_t key path getter for AspireApiPIRShardConfigs.repeatedShardConfig : AspireApiPIRShardConfigs@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v12 - v5, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v7 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  *a2 = 0;
  v8 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  UnknownStorage.init()();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for AspireApiPIRShardConfig(0);
  return (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
}

uint64_t key path setter for AspireApiPIRShardConfigs.repeatedShardConfig : AspireApiPIRShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiPIRFixedShardConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiPIRFixedShardConfig);
  v7 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiPIRShardConfigs.repeatedShardConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiPIRFixedShardConfig);
  v3 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiPIRFixedShardConfig.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

void (*AspireApiPIRShardConfigs.repeatedShardConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v13 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    *v12 = 0;
    UnknownStorage.init()();
    v15 = *(v9 + 24);
    v16 = type metadata accessor for AspireApiPIRShardConfig(0);
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  return AspireApiPIRShardConfigs.repeatedShardConfig.modify;
}

void AspireApiPIRShardConfigs.repeatedShardConfig.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiPIRFixedShardConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiPIRFixedShardConfig);
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiPIRFixedShardConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiPIRFixedShardConfig);
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t static AspireApiPIRShardConfigs.OneOf_ShardConfigs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v10 - v5);
  v8 = *(v7 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v10 - v5, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  outlined init with copy of AspireHeEvaluationKeyConfig(a2, v6 + v8, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  LOBYTE(a2) = specialized static AspireApiPIRFixedShardConfig.== infix(_:_:)(v6, (v6 + v8));
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6 + v8, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPIRFixedShardConfig);
  return a2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v10 - v5);
  v8 = *(v7 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v10 - v5, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  outlined init with copy of AspireHeEvaluationKeyConfig(a2, v6 + v8, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  LOBYTE(a2) = specialized static AspireApiPIRFixedShardConfig.== infix(_:_:)(v6, (v6 + v8));
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6 + v8, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPIRFixedShardConfig);
  return a2 & 1;
}

uint64_t key path setter for AspireApiPIRFixedShardConfig.shardConfig : AspireApiPIRFixedShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiPIRShardConfig);
  v8 = *(type metadata accessor for AspireApiPIRFixedShardConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireApiPIRShardConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireApiPIRFixedShardConfig.shardConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPIRFixedShardConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiPIRShardConfig);
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiPIRFixedShardConfig.shardConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPIRFixedShardConfig(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v17 = (v14 + v9[8]);
    *v17 = 0;
    v17[1] = 0;
    *(v14 + v9[9]) = 2;
    v18 = v14 + v9[10];
    *v18 = 0;
    v18[8] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiPIRShardConfig);
  }

  return AspireApiPIRFixedShardConfig.shardConfig.modify;
}

void AspireApiPIRFixedShardConfig.shardConfig.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireApiPIRShardConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireApiPIRShardConfig);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPIRShardConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireApiPIRShardConfig);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t key path getter for AspireApiPIRRequest.query : AspireApiPIRRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 28), v6, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v8 = type metadata accessor for AspirePirEncryptedIndices(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspirePirEncryptedIndices);
  }

  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRRequest.query : AspireApiPIRRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirEncryptedIndices(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspirePirEncryptedIndices);
  v8 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspirePirEncryptedIndices);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireApiPIRRequest.query.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspirePirEncryptedIndices(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v14[1] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspirePirEncryptedIndices);
  }

  return AspireApiPIRRequest.query.modify;
}

void AspireApiPIRRequest.query.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspirePirEncryptedIndices);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspirePirEncryptedIndices);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspirePirEncryptedIndices);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspirePirEncryptedIndices);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireApiPIRRequest.hasQuery.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 28), v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v5 = type metadata accessor for AspirePirEncryptedIndices(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireApiPIRRequest.clearQuery()()
{
  v1 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v2 = type metadata accessor for AspirePirEncryptedIndices(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void (*AspireApiPIRRequest.evaluationKeyMetadata.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPIRRequest(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  return AspireApiEvaluationKey.metadata.modify;
}

uint64_t AspireApiPIRRequest.configID.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t AspireApiPIRRequest.configID.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AspireApiPIRRequest.shardID.getter()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspireApiPIRRequest.shardID : AspireApiPIRRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for AspireApiPIRRequest.shardID : AspireApiPIRRequest(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*AspireApiPIRRequest.shardID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AspireApiPIRRequest(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return AspireApiPIRRequest.shardID.modify;
}

void AspireApiPIRShardConfig.shardID.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall AspireApiPIRRequest.clearShardID()()
{
  v1 = (v0 + *(type metadata accessor for AspireApiPIRRequest(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t AspireApiPIRRequest.evaluationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 40), v5, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v7 = type metadata accessor for AspireApiEvaluationKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiEvaluationKey);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireApiPIRRequest.evaluationKey : AspireApiPIRRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 40), v6, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiEvaluationKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRRequest.evaluationKey : AspireApiPIRRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiEvaluationKey);
  v8 = *(type metadata accessor for AspireApiPIRRequest(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireApiEvaluationKey);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireApiPIRRequest.evaluationKey.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPIRRequest(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKey);
  }

  return AspireApiPIRRequest.evaluationKey.modify;
}

uint64_t key path getter for AspireApiPIRResponse.stash : AspireApiPIRResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireApiPIRResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 24), v6, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v8 = type metadata accessor for AspireApiStashOfEntries(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiStashOfEntries);
  }

  v10 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v10;
  a2[2] = v10;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRResponse.stash : AspireApiPIRResponse(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AspireApiStashOfEntries(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v8, type metadata accessor for AspireApiStashOfEntries);
  v9 = *(type metadata accessor for AspireApiPIRResponse(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v8, a2 + v9, type metadata accessor for AspireApiStashOfEntries);
  return (*(v6 + 56))(a2 + v9, 0, 1, v5);
}

uint64_t AspireApiPIRResponse.stash.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPIRResponse(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiStashOfEntries);
  v4 = type metadata accessor for AspireApiStashOfEntries(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiPIRResponse.stash.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiStashOfEntries(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPIRResponse(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = v17;
    v14[2] = v17;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiStashOfEntries);
  }

  return AspireApiPIRResponse.stash.modify;
}

void AspireApiPIRResponse.stash.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireApiStashOfEntries);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireApiStashOfEntries);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiStashOfEntries);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireApiStashOfEntries);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t key path setter for AspireApiPECConfig.encryptionParameters : AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireHeEncryptionParameters);
  v8 = *(type metadata accessor for AspireApiPECConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireHeEncryptionParameters);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireApiPECConfig.encryptionParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPECConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireHeEncryptionParameters);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiPECConfig.encryptionParameters.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPECConfig(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspireApiPECConfig.encryptionParameters.modify;
}

void AspireApiPECConfig.encryptionParameters.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireHeEncryptionParameters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireHeEncryptionParameters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireApiPIRRequest.hasEvaluationKey.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v13 + 40), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v15;
}

uint64_t AspireApiPIRRequest.clearEvaluationKey()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t key path getter for AspireApiPECConfig.plaintextPacking : AspireApiPECConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 44), v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v10 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPECConfig.plaintextPacking : AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireSimilarityPlaintextPacking);
  v8 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireApiPECConfig.plaintextPacking.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiPECConfig.plaintextPacking.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireApiPECConfig.plaintextPacking.modify;
}

void AspireApiPECConfig.plaintextPacking.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireSimilarityPlaintextPacking);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireApiPECConfig.hasPlaintextPacking.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 44), v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v5 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireApiPECConfig.clearPlaintextPacking()()
{
  v1 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void AspireApiPECConfig.similarityMetric.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t AspireApiPECConfig.similarityMetric.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t AspireApiPECConfig.evaluationKeyConfigHash.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AspireApiPECConfig.extraPlaintextModuli.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t AspireApiPECConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspireApiPECConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireApiPECConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiPECConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspireApiPECRequest.query.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t key path getter for AspireApiPIRRequest.evaluationKeyMetadata : AspireApiPIRRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, double)@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = a2(0, v7);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v10 + 32), v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v9, a3, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPIRRequest.evaluationKeyMetadata : AspireApiPIRRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v11, type metadata accessor for AspireApiEvaluationKeyMetadata);
  v12 = *(a5(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v12, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v11, a2 + v12, type metadata accessor for AspireApiEvaluationKeyMetadata);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

void (*AspireApiPECRequest.evaluationKeyMetadata.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPECRequest(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  return AspireApiPECRequest.evaluationKeyMetadata.modify;
}

void AspireApiPECRequest.evaluationKeyMetadata.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireApiEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireApiEvaluationKeyMetadata);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiEvaluationKeyMetadata);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireApiEvaluationKeyMetadata);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireApiPIRRequest.hasEvaluationKeyMetadata.getter(uint64_t (*a1)(void, double))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0, v4);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 32), v6, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v8 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  return v9;
}

uint64_t AspireApiPIRRequest.clearEvaluationKeyMetadata()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v2, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v3 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t AspireApiPECRequest.configID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t AspireApiPECRequest.configID.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AspireApiPECRequest.evaluationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AspireApiPECRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 36), v5, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v7 = type metadata accessor for AspireApiEvaluationKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v5, a1, type metadata accessor for AspireApiEvaluationKey);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireApiPECRequest.evaluationKey : AspireApiPECRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AspireApiPECRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 36), v6, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiEvaluationKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiPECRequest.evaluationKey : AspireApiPECRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiEvaluationKey);
  v8 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireApiEvaluationKey);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireApiPECRequest.evaluationKey.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiEvaluationKey);
  }

  return AspireApiPECRequest.evaluationKey.modify;
}