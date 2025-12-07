uint64_t sub_100001370()
{
  v0 = type metadata accessor for Logger();
  sub_1000058E8(v0, qword_1000104C8);
  sub_1000042E4(v0, qword_1000104C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100001424()
{
  v0 = InferenceProviderExtension.deinit();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_100001454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = v3;
  v4[18] = a3;
  v4[15] = a1;
  v4[16] = a2;
  State = type metadata accessor for LoadState();
  v4[19] = State;
  v4[20] = *(State - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_100001524, v3, 0);
}

uint64_t sub_100001524()
{
  v54 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  v5 = InferenceProviderAssetDescriptor.identifier.getter();
  v7 = v6;
  v8 = *(v3 + 16);
  v8(v1, v4, v2);
  v9 = (*(v3 + 88))(v1, v2);
  if (v9 == enum case for LoadState.unloaded(_:))
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000042E4(v10, qword_1000104C8);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v53 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1000043D8(v5, v7, &v53);
      _os_log_impl(&_mh_execute_header, v11, v12, "Transition to unloaded for %s", v13, 0xCu);
      sub_10000583C(v14);
    }

    swift_beginAccess();
    sub_100004AD4(v5, v7);
    swift_endAccess();

    goto LABEL_25;
  }

  if (v9 == enum case for LoadState.dynamicMode(_:))
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000042E4(v15, qword_1000104C8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v53 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000043D8(v5, v7, &v53);
      _os_log_impl(&_mh_execute_header, v16, v17, "Transition to dynamic mode (aka loaded) for %s", v18, 0xCu);
      sub_10000583C(v19);
    }

    swift_beginAccess();
    sub_100004984(&v53, v5, v7);
LABEL_13:
    swift_endAccess();

    goto LABEL_25;
  }

  if (v9 == enum case for LoadState.loaded(_:))
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000042E4(v20, qword_1000104C8);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000043D8(v5, v7, &v53);
      _os_log_impl(&_mh_execute_header, v21, v22, "Transition to loaded for %s", v23, 0xCu);
      sub_10000583C(v24);
    }

    type metadata accessor for CMIsolatedModel();
    v25 = kAssetBundleIdentifier.getter();
    v27 = static CMIsolatedModel.FromName(_:)(v25, v26);
    v28 = v0[17];

    *(v28 + 120) = v27;

    v29 = kCalorimetryReducedEmbeddings.getter();
    v50 = static CMIsolatedModel.FromName(_:)(v29, v30);
    v51 = v0[17];

    *(v51 + 128) = v50;

    swift_beginAccess();
    sub_100004984(&v53, v5, v7);
    goto LABEL_13;
  }

  if (qword_1000104C0 != -1)
  {
    swift_once();
  }

  v31 = v0[21];
  v32 = v0[19];
  v33 = v0[16];
  v34 = type metadata accessor for Logger();
  sub_1000042E4(v34, qword_1000104C8);
  v8(v31, v33, v32);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v37 = os_log_type_enabled(v35, v36);
  v39 = v0[20];
  v38 = v0[21];
  v40 = v0[19];
  if (v37)
  {
    v41 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v41 = 136315138;
    sub_10000594C(&qword_1000103C8, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v45 = *(v39 + 8);
    v45(v38, v40);
    v46 = sub_1000043D8(v42, v44, &v53);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "Unknown load state: %s", v41, 0xCu);
    sub_10000583C(v52);

    v45(v0[22], v0[19]);
  }

  else
  {

    v47 = *(v39 + 8);
    v47(v38, v40);
    v47(v0[22], v0[19]);
  }

LABEL_25:

  v48 = v0[1];

  return v48();
}

uint64_t sub_100001D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for InferenceError();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100001E50, v4, 0);
}

uint64_t sub_100001E50()
{
  if (qword_1000104C0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000042E4(v1, qword_1000104C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "InferenceProvider requestOnShot called", v4, 2u);
  }

  v5 = *(v0 + 64);

  v6 = InferenceProviderRequestConfiguration.assetIdentifiers.getter();
  v7 = v6 + 56;
  v29 = v5;
  v30 = v6;
  v8 = -1 << *(v6 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 56);
  v28 = v0;
  swift_beginAccess();
  v11 = 0;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= ((63 - v8) >> 6))
        {
          goto LABEL_24;
        }

        v10 = *(v7 + 8 * v12);
        ++v11;
        if (v10)
        {
          v11 = v12;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_14:
    v13 = *(v29 + 112);
    if (!*(v13 + 16))
    {
      goto LABEL_28;
    }

    v14 = (*(v30 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = *v14;
    v15 = v14[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(v13 + 32);
    v19 = v17 & ~v18;
    if (((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      break;
    }

    v10 &= v10 - 1;
    v0 = ~v18;
    while (1)
    {
      v20 = (*(v13 + 48) + 16 * v19);
      v21 = *v20 == v16 && v20[1] == v15;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v0;
      if (((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_23:

  __break(1u);
LABEL_24:

  v23 = swift_task_alloc();
  v28[13] = v23;
  *v23 = v28;
  v23[1] = sub_10000215C;
  v24 = v28[12];
  v25 = v28[5];
  v26 = v28[6];

  return sub_100002314(v25, v26, v22, v24);
}

uint64_t sub_10000215C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 64);

    return _swift_task_switch(sub_100002294, v4, 0);
  }

  else
  {

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_100002294()
{
  (*(v0[11] + 32))(v0[9], v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100002314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  return _swift_task_switch(sub_100002338, v4, 0);
}

uint64_t sub_100002338()
{
  v49 = v0;
  if (qword_1000104C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_1000042E4(v1, qword_1000104C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received inference request ", v4, 2u);
  }

  v5 = ClientData.data.getter();
  v0[7] = v5;
  v0[8] = v6;
  if (v6 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v11 = v5;
  v12 = v6;
  v13 = objc_allocWithZone(type metadata accessor for CMFoundationModelRequest());
  sub_10000431C(v11, v12);
  v14 = CMFoundationModelRequest.init(serializedBytes:)();
  v0[9] = v14;
  v16 = v14;
  v17 = dispatch thunk of CMFoundationModelRequest.modelName.getter();
  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v47 = v19;
    v23 = v17;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v48 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1000043D8(v23, v47, &v48);
    _os_log_impl(&_mh_execute_header, v20, v21, "Request decoded for model: %s", v24, 0xCu);
    sub_10000583C(v25);

    v17 = v23;
    v19 = v47;
  }

  if (v17 == kAssetBundleIdentifier.getter() && v19 == v26)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
LABEL_22:
      if (v17 == kCalorimetryReducedEmbeddings.getter() && v19 == v37)
      {
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Reduced Calorimetry Embeddings requested, running inference", v41, 2u);
      }

      v42 = v0[4];

      v43 = dispatch thunk of CMFoundationModelRequest.inputTensors.getter();
      v0[17] = v43;
      v44 = *(v42 + 128);
      v0[18] = v44;
      if (v44)
      {
        v45 = v43;

        v46 = swift_task_alloc();
        v0[19] = v46;
        *v46 = v0;
        v46[1] = sub_100003038;
        v36 = v45;
        goto LABEL_30;
      }

LABEL_34:
      sub_100004370(v11, v12);

LABEL_6:
      v7 = v0[2];
      v8 = v0[3];
      v9 = type metadata accessor for ClientData();
      (*(*(v9 - 8) + 16))(v7, v8, v9);
      v10 = v0[1];

      return v10();
    }
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Base model requested, running inference", v30, 2u);
  }

  v31 = v0[4];

  v32 = dispatch thunk of CMFoundationModelRequest.inputTensors.getter();
  v0[10] = v32;
  v33 = *(v31 + 120);
  v0[11] = v33;
  if (!v33)
  {

    goto LABEL_22;
  }

  v34 = v32;

  v35 = swift_task_alloc();
  v0[12] = v35;
  *v35 = v0;
  v35[1] = sub_100002A58;
  v36 = v34;
LABEL_30:

  return CMIsolatedModel.predict(for:)(v36);
}

uint64_t sub_100002A58(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100003570;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100002B88;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100002B88(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Prediction succeeded returning", v4, 2u);
  }

  type metadata accessor for CMFoundationModelResponse();
  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v1;
  v5[1] = sub_100002CA4;
  v6 = *(v1 + 104);

  return static CMFoundationModelResponse.fromSuccess(_:)(v6);
}

uint64_t sub_100002CA4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100002DD8, v2, 0);
}

uint64_t sub_100002DD8()
{
  v1 = *(v0 + 112);
  dispatch thunk of CMFoundationModelResponse.serializedData()();
  if (v1)
  {
    v2 = *(v0 + 72);

    sub_100004370(*(v0 + 56), *(v0 + 64));
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected error: %@", v5, 0xCu);
      sub_10000578C(v6);
    }

    v8 = *(v0 + 40);

    sub_100005678(&_swiftEmptyArrayStorage);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    v9 = enum case for InferenceError.invalidClientData(_:);
    v10 = type metadata accessor for InferenceError();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    sub_10000594C(&qword_1000103A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();

    v11 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 128);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v15 = *(v0 + 56);
    ClientData.init(data:)();
    sub_100004370(v15, v13);

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_100003038(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v6 = v4[4];

    return _swift_task_switch(sub_100003794, v6, 0);
  }

  else
  {

    v4[21] = a1;
    type metadata accessor for CMFoundationModelResponse();
    v7 = swift_task_alloc();
    v4[22] = v7;
    *v7 = v5;
    v7[1] = sub_1000031DC;

    return static CMFoundationModelResponse.fromSuccess(_:)(a1);
  }
}

uint64_t sub_1000031DC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100003310, v2, 0);
}

uint64_t sub_100003310()
{
  v1 = *(v0 + 160);
  dispatch thunk of CMFoundationModelResponse.serializedData()();
  if (v1)
  {
    v2 = *(v0 + 72);

    sub_100004370(*(v0 + 56), *(v0 + 64));
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected error: %@", v5, 0xCu);
      sub_10000578C(v6);
    }

    v8 = *(v0 + 40);

    sub_100005678(&_swiftEmptyArrayStorage);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    v9 = enum case for InferenceError.invalidClientData(_:);
    v10 = type metadata accessor for InferenceError();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    sub_10000594C(&qword_1000103A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
    swift_willThrowTypedImpl();

    v11 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 184);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v15 = *(v0 + 56);
    ClientData.init(data:)();
    sub_100004370(v15, v13);

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_100003570()
{
  v1 = v0[9];

  sub_100004370(v0[7], v0[8]);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected error: %@", v4, 0xCu);
    sub_10000578C(v5);
  }

  v7 = v0[5];

  sub_100005678(&_swiftEmptyArrayStorage);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v8 = enum case for InferenceError.invalidClientData(_:);
  v9 = type metadata accessor for InferenceError();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_10000594C(&qword_1000103A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100003794()
{
  v1 = v0[9];

  sub_100004370(v0[7], v0[8]);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected error: %@", v4, 0xCu);
    sub_10000578C(v5);
  }

  v7 = v0[5];

  sub_100005678(&_swiftEmptyArrayStorage);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v8 = enum case for InferenceError.invalidClientData(_:);
  v9 = type metadata accessor for InferenceError();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_10000594C(&qword_1000103A8, &type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
  swift_willThrowTypedImpl();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000039B8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100003A0C@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v2[15] = 0;
  v2[16] = 0;
  v2[14] = &_swiftEmptySetSingleton;
  *a1 = v2;
  return result;
}

uint64_t sub_100003A58()
{
  v1 = InferenceProviding.isVersionSupported(requestVersion:)();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100003ABC()
{
  v1 = InferenceProviding.convertData(clientData:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100003B64()
{
  InferenceProviding.prewarmHint(_:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for InferenceError();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_100005998;

  return sub_100001454(a1, a2, v7);
}

uint64_t sub_100003CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100005994;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100003DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003E50;

  return InferenceProviding.inputStreamEnded(requestID:)(a1, a2, a3);
}

uint64_t sub_100003E50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = type metadata accessor for InferenceError();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100004068;

  return sub_100001D88(a1, a2, a3, v9);
}

uint64_t sub_100004068()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for CoreMotionFoundationModelInferenceProviderService(0);
  sub_10000594C(&qword_1000102A8, type metadata accessor for CoreMotionFoundationModelInferenceProviderService, &protocol conformance descriptor for InferenceProviderExtension<A>);
  static AppExtension.main()();
  return 0;
}

uint64_t type metadata accessor for CoreMotionFoundationModelInferenceProviderService(uint64_t a1)
{
  result = qword_1000104E0;
  if (!qword_1000104E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000042E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000431C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004370(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004384(a1, a2);
  }

  return a1;
}

uint64_t sub_100004384(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1000043D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000044A4(v11, 0, 0, 1, a1, a2);
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
    sub_100005888(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000583C(v11);
  return v7;
}

unint64_t sub_1000044A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000045B0(a5, a6);
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

void *sub_1000045B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000045FC(a1, a2);
  sub_10000472C(&off_10000C628);
  return v3;
}

void *sub_1000045FC(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004818(v5, 0);
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
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004818(v10, 0);
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

uint64_t sub_10000472C(uint64_t result)
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

  result = sub_10000488C(result, v11, 1, v3);
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

void *sub_100004818(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000057F4(&qword_1000103B8, &qword_1000074F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000488C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000057F4(&qword_1000103B8, &qword_1000074F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100004984(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000053C8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100004AD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100004C10();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100005204(v8);
  *v2 = v16;
  return v12;
}

void *sub_100004C10()
{
  v1 = v0;
  sub_1000057F4(&qword_1000103D0, qword_100007508);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_100004D6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000057F4(&qword_1000103D0, qword_100007508);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100004FA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000057F4(&qword_1000103D0, qword_100007508);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100005204(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000053C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100004FA4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100004C10();
      goto LABEL_16;
    }

    sub_100004D6C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100005548(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000055C0(a1, a2, v4);
}

unint64_t sub_1000055C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100005678(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057F4(&qword_1000103C0, &qword_1000074F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100005548(v5, v6);
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

uint64_t sub_10000578C(uint64_t a1)
{
  v2 = sub_1000057F4(&qword_1000103B0, &qword_1000074E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000057F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000583C(void *a1)
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

uint64_t sub_100005888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1000058E8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000594C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000599C()
{
  v0 = type metadata accessor for Logger();
  sub_1000058E8(v0, qword_1000105F8);
  sub_1000042E4(v0, qword_1000105F8);
  return Logger.init(subsystem:category:)();
}

uint64_t static CMIsolatedModel.FromName(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (kAssetBundleIdentifier.getter() == a1 && v6 == a2)
  {

LABEL_5:
    static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
    sub_100005CCC(v18, v19);
    v8 = &qword_1000103F0;
    v9 = &qword_100007528;
    v16 = sub_1000057F4(&qword_1000103F0, &qword_100007528);
    v10 = &unk_1000103F8;
    goto LABEL_6;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_5;
  }

  if (kCalorimetryReducedEmbeddings.getter() == a1 && v11 == a2)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      v3 = type metadata accessor for AdaptorError();
      sub_100005C74();
      swift_allocError();
      *v13 = a1;
      v13[1] = a2;
      (*(*(v3 - 8) + 104))(v13, enum case for AdaptorError.adaptorNotAvailable(_:), v3);
      swift_willThrow();

      return v3;
    }
  }

  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings()();
  sub_100005CCC(v18, v19);
  v8 = &qword_1000103E0;
  v9 = &qword_100007520;
  v16 = sub_1000057F4(&qword_1000103E0, &qword_100007520);
  v10 = &unk_1000103E8;
LABEL_6:
  v17 = sub_1000069E4(v10, v8, v9);
  sub_100005D58(v15);
  dispatch thunk of AssetBackedResource.fetchAsset()();
  if (v2)
  {
    sub_100005DBC(v15);
  }

  else
  {
    v3 = sub_1000064F4(v15);
    sub_100006AA8(v15);
  }

  sub_100006AA8(v18);
  return v3;
}

unint64_t sub_100005C74()
{
  result = qword_1000103D8;
  if (!qword_1000103D8)
  {
    type metadata accessor for AdaptorError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103D8);
  }

  return result;
}

void *sub_100005CCC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005D10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100005D58(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100005DBC(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t CMIsolatedModel.predict(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100005E5C, v1, 0);
}

uint64_t sub_100005E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100005EFC;
  v2 = *(v0 + 16);

  return MLModel.prediction(from:)(v2);
}

uint64_t sub_100005EFC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t CMIsolatedModel.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100006074(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void sub_1000061D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void sub_1000061E0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v28 = a1;
  URL.init(fileURLWithPath:)();
  v12 = [objc_allocWithZone(MLModelConfiguration) init];
  [v12 setComputeUnits:3];
  sub_100006A5C();
  (*(v6 + 16))(v9, v11, v5);
  v13 = v12;
  v14 = sub_100006074(v9, v13);
  if (v2)
  {

    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v15 = v14;

    if (qword_1000105F0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000042E4(v16, qword_1000105F8);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    v27 = v17;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = v15;
      v20 = v19;
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000043D8(v28, a2, &v29);
      v22 = v18;
      v23 = v27;
      _os_log_impl(&_mh_execute_header, v27, v22, "IMUFM | Loaded model from %s", v20, 0xCu);
      sub_100006AA8(v21);

      v15 = v26;
    }

    else
    {
    }

    type metadata accessor for CMIsolatedModel();
    v24 = swift_allocObject();
    swift_defaultActor_initialize();

    (*(v6 + 8))(v11, v5);
    *(v24 + 112) = v15;
  }
}

id sub_1000064F4(void *a1)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = __chkstk_darwin(v4);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  sub_100005CCC(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v32 - v11;
  dispatch thunk of CatalogAssetProtocol.contents.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of AssetContents.baseURL.getter();
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v13 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v14 = String._bridgeToObjectiveC()();

  v39[0] = 0;
  v15 = [v13 contentsOfDirectoryAtPath:v14 error:v39];

  v16 = v39[0];
  if (v15)
  {
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v16;

    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = (v17 + 40);
      while (1)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
        }

        v15 = *(v21 - 1);
        v13 = *v21;

        v22._countAndFlagsBits = kModelExtension.getter();
        v23 = String.hasSuffix(_:)(v22);

        if (v23)
        {
          break;
        }

        ++v20;
        v21 += 2;
        if (v19 == v20)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      __break(1u);
    }

    v39[0] = v15;
    v39[1] = v13;
    (*(v36 + 104))(v35, enum case for URL.DirectoryHint.inferFromPath(_:), v37);
    sub_100006AF8();
    URL.appending<A>(path:directoryHint:)();
    (*(v36 + 8))(v35, v37);

    v24 = URL.path(percentEncoded:)(1);
    v25 = v32;
    sub_1000061E0(v24._countAndFlagsBits, v24._object);
    if (v25)
    {

      v16 = v34;
      v27 = *(v33 + 8);
      v27(v38, v34);
      v27(v8, v16);
    }

    else
    {
      v16 = v26;

      v29 = v34;
      v30 = *(v33 + 8);
      v30(v38, v34);
      v30(v8, v29);
    }
  }

  else
  {
    v28 = v39[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v33 + 8))(v8, v34);
  }

  return v16;
}

void sub_1000069D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x1000069D8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000069E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005D10(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006A5C()
{
  result = qword_1000104A8;
  if (!qword_1000104A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000104A8);
  }

  return result;
}

uint64_t sub_100006AA8(void *a1)
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

unint64_t sub_100006AF8()
{
  result = qword_1000104B0;
  if (!qword_1000104B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104B0);
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}