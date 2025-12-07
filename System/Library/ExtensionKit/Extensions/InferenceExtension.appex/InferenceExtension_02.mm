uint64_t outlined destroy of PSEFeatureTemplate(uint64_t a1)
{
  v2 = type metadata accessor for PSEFeatureTemplate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t UserEngagementInferenceExtensionConfig.systemPromptID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserEngagementInferenceExtensionConfig(0) + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserEngagementInferenceExtensionConfig.systemPromptID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserEngagementInferenceExtensionConfig(0) + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UserEngagementInferenceExtensionConfig.disable.setter(char a1)
{
  result = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance UserEngagementInferenceExtensionConfig.CodingKeys()
{
  v1 = 0x726F63655278616DLL;
  v2 = 0x72506D6574737973;
  if (*v0 != 2)
  {
    v2 = 0x656C6261736964;
  }

  if (*v0)
  {
    v1 = 0x72506D6574737973;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserEngagementInferenceExtensionConfig.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized UserEngagementInferenceExtensionConfig.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserEngagementInferenceExtensionConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserEngagementInferenceExtensionConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserEngagementInferenceExtensionConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18InferenceExtension014UserEngagementdE6ConfigV10CodingKeys33_7486101AE976CDEF82411786A6A08A1BLLOGMd, &_ss22KeyedEncodingContainerVy18InferenceExtension014UserEngagementdE6ConfigV10CodingKeys33_7486101AE976CDEF82411786A6A08A1BLLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for UserEngagementInferenceExtensionConfig(0);
    v8[13] = 2;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys);
  }

  return result;
}

uint64_t UserEngagementInferenceExtensionConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10002E9A0;
  *(a1 + 16) = 0xE000000000000000;
  v2 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  result = UUID.init()();
  *(a1 + *(v2 + 28)) = 0;
  return result;
}

uint64_t UserEngagementInferenceExtensionConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = type metadata accessor for UUID();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18InferenceExtension014UserEngagementdE6ConfigV10CodingKeys33_7486101AE976CDEF82411786A6A08A1BLLOGMd, &_ss22KeyedDecodingContainerVy18InferenceExtension014UserEngagementdE6ConfigV10CodingKeys33_7486101AE976CDEF82411786A6A08A1BLLOGMR);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = xmmword_10002E9A0;
  *(v8 + 2) = 0xE000000000000000;
  v9 = *(v6 + 32);
  UUID.init()();
  v10 = *(v6 + 36);
  v8[v10] = 0;
  v11 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys();
  v12 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v27 = v9;
    v21 = v10;
    v13 = v24;
    v14 = v25;
    v32 = 0;
    *v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = 1;
    v15 = v13;
    *(v8 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v8 + 2) = v16;
    v30 = 2;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 40))(&v8[v27], 0, v14);
    v29 = 3;
    v18 = v26;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v15 + 8))(v4, v18);
    v20 = v22;
    v8[v21] = v19 & 1;
    outlined init with copy of UserEngagementInferenceExtensionConfig(v8, v20);
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  return outlined destroy of UserEngagementInferenceExtensionConfig(v8);
}

uint64_t outlined destroy of UserEngagementInferenceExtensionConfig(uint64_t a1)
{
  v2 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of UserEngagementInferenceExtensionConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UserEngagementInferenceExtensionConfig.init(maxRecords:systemPrompt:systemPromptID:disable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  v9 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(&a6[v10], a4, v11);
  a6[*(v9 + 28)] = a5;
  return result;
}

uint64_t InferenceExtension.shouldRun(context:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = InferenceExtension.shouldRun(context:);

  return specialized InferenceExtension.shouldRun(context:)(a1, a2);
}

uint64_t InferenceExtension.doWork(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v4[31] = a3;
  v4[32] = v5;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = *v5;
  v7 = type metadata accessor for CancellationError();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGSgMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGSgMR);
  v4[40] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMR);
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[44] = v9;
  v4[45] = v11;

  return _swift_task_switch(InferenceExtension.doWork(context:), v9, v11);
}

uint64_t InferenceExtension.doWork(context:)()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[46] = __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin work in PSELighthouseExtension", v4, 2u);
  }

  v5 = v0[31];

  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Context: %@", v10, 0xCu);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v14 = v0[32];
  v13 = v0[33];

  v0[25] = v14;
  v15 = swift_task_alloc();
  v0[47] = v15;
  v16 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InferenceExtension and conformance InferenceExtension, type metadata accessor for InferenceExtension, &protocol conformance descriptor for InferenceExtension);
  v17 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
  v18 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
  *v15 = v0;
  v15[1] = InferenceExtension.doWork(context:);
  v19 = v0[40];
  v20 = v0[37];
  v21 = v0[31];

  return MLHostExtension.loadConfig<A>(context:)(v19, v21, v13, v20, v16, v17, v18);
}

{
  v1 = *v0;

  v2 = *(v1 + 360);
  v3 = *(v1 + 352);

  return _swift_task_switch(InferenceExtension.doWork(context:), v3, v2);
}

{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[43];
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, v0[32] + OBJC_IVAR____TtC18InferenceExtension18InferenceExtension_defaultConfig, v1);
    if (v4(v3, 1, v1) != 1)
    {
      outlined destroy of NSObject?(v0[40], &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGSgMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGSgMR);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = v0[39];
  v8 = v0[37];
  MLHostParameters.taskParameters.getter();
  v9 = *(v7 + *(v8 + 28));
  outlined destroy of UserEngagementInferenceExtensionConfig(v7);
  if (v9)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "UserEngagementInferenceExtension is disabled by configuration", v12, 2u);
    }

    v14 = v0[42];
    v13 = v0[43];
    v15 = v0[41];

    v16 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v17 = MLHostResult.init(status:policy:)();
    (*(v14 + 8))(v13, v15);

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    type metadata accessor for UserAlignmentScoreEvaluator();
    swift_allocObject();
    UserAlignmentScoreEvaluator.init()();
    v21 = v20;
    v0[48] = v20;
    MLHostParameters.taskParameters.getter();
    v26 = (*(*v21 + 112) + **(*v21 + 112));
    v22 = swift_task_alloc();
    v0[49] = v22;
    *v22 = v0;
    v22[1] = InferenceExtension.doWork(context:);
    v23 = v0[38];
    v25 = v0[29];
    v24 = v0[30];

    return v26(v25, v24, v23);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  *(*v1 + 400) = v0;

  outlined destroy of UserEngagementInferenceExtensionConfig(v3);
  v4 = *(v2 + 360);
  v5 = *(v2 + 352);
  if (v0)
  {
    v6 = InferenceExtension.doWork(context:);
  }

  else
  {
    v6 = InferenceExtension.doWork(context:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v19 = v0;
  v1 = *(v0 + 248);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = MLHostExtensionContext.taskId.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v18);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = MLHostExtensionContext.taskName.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v18);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "MLHost Task completed: TaskId: %s, TaskName: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 336);
  v11 = *(v0 + 344);
  v13 = *(v0 + 328);
  v14 = objc_allocWithZone(type metadata accessor for MLHostResult());
  v15 = MLHostResult.init(status:policy:)();

  (*(v12 + 8))(v11, v13);

  v16 = *(v0 + 8);

  return v16(v15);
}

{
  v66 = v0;
  v1 = *(v0 + 400);

  *(v0 + 208) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 400);
  if (v2)
  {
    v4 = *(v0 + 248);

    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v8 = 136315394;
      v9 = MLHostExtensionContext.taskId.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v65);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = MLHostExtensionContext.taskName.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v65);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "MLHostError: TaskId: %s, TaskName: %s \nInference task is cancelled, resume later", v8, 0x16u);
      swift_arrayDestroy();
    }

    v16 = *(v0 + 336);
    v15 = *(v0 + 344);
    v17 = *(v0 + 328);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 272);
    v21 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v22 = MLHostResult.init(status:policy:)();
    (*(v16 + 8))(v15, v17);
    (*(v19 + 8))(v18, v20);
    goto LABEL_13;
  }

  *(v0 + 216) = v3;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground11MLHostError_pMd, &_s20LighthouseBackground11MLHostError_pMR);
  v23 = swift_dynamicCast();
  v24 = *(v0 + 248);
  if (v23)
  {
    v25 = (v0 + 56);
    v26 = (v0 + 96);
    v27 = v0 + 136;

    outlined init with take of ConvertibleToGeneratedContent((v0 + 16), v0 + 56);
    outlined init with copy of MLHostError(v0 + 56, v0 + 96);
    v28 = v24;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      *v31 = 136315650;
      v32 = MLHostExtensionContext.taskId.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v65);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = MLHostExtensionContext.taskName.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v65);

      *(v31 + 14) = v37;
      *(v31 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v26, *(v0 + 120));
      v38 = Error.localizedDescription.getter();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_0(v26);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v65);

      *(v31 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v29, v30, "MLHostError: TaskId: %s, TaskName: %s \nError:  %s", v31, 0x20u);
      swift_arrayDestroy();
      v27 = v0 + 136;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    v60 = *(v0 + 336);
    v59 = *(v0 + 344);
    v61 = *(v0 + 328);
    outlined init with copy of MLHostError(v25, v27);
    v62 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v22 = MLHostResult.init(error:policy:)();
    __swift_destroy_boxed_opaque_existential_0(v25);
    (*(v60 + 8))(v59, v61);
LABEL_13:

    goto LABEL_14;
  }

  v42 = v24;
  swift_errorRetain();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v45 = 136315650;
    v46 = MLHostExtensionContext.taskId.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v65);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    v49 = MLHostExtensionContext.taskName.getter();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v65);

    *(v45 + 14) = v51;
    *(v45 + 22) = 2080;
    swift_getErrorValue();
    v52 = Error.localizedDescription.getter();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v65);

    *(v45 + 24) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "Error:  TaskId: %s, TaskName: %s \nError: %s", v45, 0x20u);
    swift_arrayDestroy();
  }

  v56 = *(v0 + 336);
  v55 = *(v0 + 344);
  v57 = *(v0 + 328);
  v65[3] = &type metadata for InferenceExtension.PSEInferenceError;
  v65[4] = lazy protocol witness table accessor for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError();
  v58 = objc_allocWithZone(type metadata accessor for MLHostResult());
  v22 = MLHostResult.init(error:policy:)();

  (*(v56 + 8))(v55, v57);
LABEL_14:

  v63 = *(v0 + 8);

  return v63(v22);
}

BOOL InferenceExtension.PSEInferenceError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InferenceExtension.PSEInferenceError.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InferenceExtension.PSEInferenceError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InferenceExtension.PSEInferenceError(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InferenceExtension.PSEInferenceError@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance InferenceExtension.PSEInferenceError, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t InferenceExtension.deinit()
{
  v1 = OBJC_IVAR____TtC18InferenceExtension18InferenceExtension_defaultConfig;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t InferenceExtension.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18InferenceExtension18InferenceExtension_defaultConfig;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t InferenceExtension.__allocating_init()()
{
  v0 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  __chkstk_darwin(v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_allocObject();
  *v2 = xmmword_10002E9A0;
  *(v2 + 2) = 0xE000000000000000;
  UUID.init()();
  v2[*(v0 + 28)] = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
  MLHostParameters.init(taskParameters:)();
  return v3;
}

uint64_t InferenceExtension.init()()
{
  v1 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = xmmword_10002E9A0;
  *(v3 + 2) = 0xE000000000000000;
  UUID.init()();
  v3[*(v1 + 28)] = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
  MLHostParameters.init(taskParameters:)();
  return v0;
}

uint64_t protocol witness for MLHostExtension.shouldRun(context:) in conformance InferenceExtension()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = UserAlignmentScoreReporter.reportWithMetaData(response:data:);

  return specialized InferenceExtension.shouldRun(context:)(0, 0);
}

uint64_t protocol witness for MLHostExtension.doWork(context:) in conformance InferenceExtension(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(protocol witness for MLHostExtension.doWork(context:) in conformance InferenceExtension, 0, 0);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for MLHostExtension.doWork(context:) in conformance InferenceExtension()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLHostExtension.doWork(context:) in conformance InferenceExtension;
  v2 = *(v0 + 16);

  return InferenceExtension.doWork(context:)(0, 0, v2);
}

uint64_t protocol witness for MLHostExtension.loadConfig<A>(context:) in conformance InferenceExtension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = dispatch thunk of SELFReporter.report(event:);

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t protocol witness for AppExtension.configuration.getter in conformance InferenceExtension(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InferenceExtension and conformance InferenceExtension, type metadata accessor for InferenceExtension, &protocol conformance descriptor for InferenceExtension);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t protocol witness for AppExtension.init() in conformance InferenceExtension@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *v4 = xmmword_10002E9A0;
  *(v4 + 2) = 0xE000000000000000;
  UUID.init()();
  v4[*(v2 + 28)] = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
  result = MLHostParameters.init(taskParameters:)();
  *a1 = v5;
  return result;
}

unint64_t UserEngagementInferenceError.rawValue.getter(unsigned __int8 a1)
{
  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  else
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserEngagementInferenceError(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = UserEngagementInferenceError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == UserEngagementInferenceError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserEngagementInferenceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  UserEngagementInferenceError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserEngagementInferenceError(uint64_t a1)
{
  UserEngagementInferenceError.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserEngagementInferenceError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  UserEngagementInferenceError.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UserEngagementInferenceError@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UserEngagementInferenceError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UserEngagementInferenceError@<X0>(unint64_t *a1@<X8>)
{
  result = UserEngagementInferenceError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for InferenceExtension(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InferenceExtension and conformance InferenceExtension, type metadata accessor for InferenceExtension, &protocol conformance descriptor for InferenceExtension);
  static AppExtension.main()();
  return 0;
}

uint64_t specialized UserEngagementInferenceExtensionConfig.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F63655278616DLL && a2 == 0xEA00000000007364;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506D6574737973 && a2 == 0xEC00000074706D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72506D6574737973 && a2 == 0xEE00444974706D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6261736964 && a2 == 0xE700000000000000)
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

id specialized InferenceExtension.shouldSample()()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemLanguageModel();
  static SystemLanguageModel.default.getter();
  static Locale.current.getter();
  v4 = SystemLanguageModel.supportsLocale(_:)();

  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    result = AFIsInternalInstall();
    if (!result)
    {
      return result;
    }

    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = [result effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

    if (v7 == 1)
    {
      v8 = [objc_opt_self() sharedPreferences];
      v9 = [v8 siriDataSharingOptInStatus];

      return (v9 == 1);
    }
  }

  return 0;
}

uint64_t specialized InferenceExtension.shouldRun(context:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(specialized InferenceExtension.shouldRun(context:), v2, v4);
}

uint64_t specialized InferenceExtension.shouldRun(context:)()
{
  if ((specialized InferenceExtension.shouldSample()() & 1) == 0)
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.inference);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "should not sample", v4, 2u);
    }
  }

  objc_allocWithZone(type metadata accessor for MLHostResult());
  v5 = MLHostResult.init(status:policy:)();
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t type metadata accessor for UserEngagementInferenceExtensionConfig(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError()
{
  result = lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError;
  if (!lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError;
  if (!lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError;
  if (!lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError;
  if (!lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError);
  }

  return result;
}

uint64_t outlined init with copy of MLHostError(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized UserEngagementInferenceError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserEngagementInferenceError.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002B550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for UserEngagementInferenceExtensionConfig(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for InferenceExtension(uint64_t a1)
{
  type metadata accessor for MLHostParameters<UserEngagementInferenceExtensionConfig>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for MLHostParameters<UserEngagementInferenceExtensionConfig>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MLHostParameters<UserEngagementInferenceExtensionConfig>)
  {
    type metadata accessor for UserEngagementInferenceExtensionConfig(255);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig, &protocol conformance descriptor for UserEngagementInferenceExtensionConfig);
    v1 = type metadata accessor for MLHostParameters();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MLHostParameters<UserEngagementInferenceExtensionConfig>);
    }
  }
}

uint64_t getEnumTagSinglePayload for InferenceExtension.PSEInferenceError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for InferenceExtension.PSEInferenceError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UserEngagementInferenceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserEngagementInferenceError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static InferenceUtils.isSupportedLocale()()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemLanguageModel();
  static SystemLanguageModel.default.getter();
  static Locale.current.getter();
  v4 = SystemLanguageModel.supportsLocale(_:)();

  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

id static InferenceUtils.isDiagnosticsSubmissionAllowed()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL static InferenceUtils.isSiriOptedIn()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriDataSharingOptInStatus];

  return v1 == 1;
}

uint64_t Logger.inference.unsafeMutableAddressor()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.inference);
}

uint64_t one-time initialization function for inference()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.inference);
  __swift_project_value_buffer(v0, static Logger.inference);
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  v1 = static Log.pseLog;
  return Logger.init(_:)();
}

uint64_t *Log.pseLog.unsafeMutableAddressor()
{
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  return &static Log.pseLog;
}

uint64_t static Logger.inference.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.inference);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for pseLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.pseLog = result;
  return result;
}

id static Log.pseLog.getter()
{
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  v1 = static Log.pseLog;

  return v1;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
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

uint64_t GeneratedContent.value<A>(_:forProperty:)()
{
  return GeneratedContent.value<A>(_:forProperty:)();
}

{
  return GeneratedContent.value<A>(_:forProperty:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}