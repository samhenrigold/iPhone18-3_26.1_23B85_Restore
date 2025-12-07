_TtC7remindd19RDXPCStorePerformer *sub_1005F59A8(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        v14 = _findStringSwitchCase(cases:string:)(&off_1008E0338, v13);
        v12, v15, v16, v17, v18, v19, v20, v21;
        if (v14 <= 4)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1003665D8(0, *v8->clientIdentity + 1, 1, v8, v23, v24, v25, v26);
      }

      v28 = *v8->clientIdentity;
      v27 = *&v8->clientIdentity[8];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v30 = sub_1003665D8((v27 > 1), v28 + 1, 1, v8, v23, v24, v25, v26);
        v29 = v28 + 1;
        v8 = v30;
      }

      *v8->clientIdentity = v29;
      v8->clientIdentity[v28 + 16] = v14;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v22 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v22 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v22);
      ++v7;
      if (v5)
      {
        v7 = v22;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100946C50);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136446210;
    sub_1000F5104(&qword_10094F260, &qword_1007B4E30);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = sub_10000668C(v36, v37, &v48);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v34, 0xCu);
    sub_10000607C(v35);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F5C88(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_100513988(v11, v12);
        if (v13 != 22)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v39 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100366600(0, *v8->clientIdentity + 1, 1, v8, v15, v16, v17, v18);
      }

      v20 = *v8->clientIdentity;
      v19 = *&v8->clientIdentity[8];
      v21 = v39;
      if (v20 >= v19 >> 1)
      {
        v8 = sub_100366600((v19 > 1), v20 + 1, 1, v8, v15, v16, v17, v18);
        v21 = v39;
      }

      *v8->clientIdentity = v20 + 1;
      v8->clientIdentity[v20 + 16] = v21;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v14);
      ++v7;
      if (v5)
      {
        v7 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100946C50);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136446210;
    sub_1000F5104(&qword_10094F3A0, &qword_1007B4F38);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    v30 = sub_10000668C(v27, v28, &v40);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F5F50(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *, __n128), uint64_t *a4, uint64_t *a5)
{
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = &_swiftEmptyArrayStorage;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(a1 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        v5 = _findStringSwitchCase(cases:string:)(a2, v19);
        v18, v20, v21, v22, v23, v24, v25, v26;
        if (v5 <= 3)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = (a3)(0, *v14->clientIdentity + 1, 1, v14);
      }

      v29 = *v14->clientIdentity;
      v28 = *&v14->clientIdentity[8];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v31 = (a3)(v28 > 1, v29 + 1, 1, v14);
        v30 = v29 + 1;
        v14 = v31;
      }

      *v14->clientIdentity = v30;
      v14->clientIdentity[v29 + 16] = v5;
    }

    while (v11);
LABEL_7:
    while (1)
    {
      v27 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v27 >= v12)
      {

        return v14;
      }

      v11 = *(v8 + 8 * v27);
      ++v13;
      if (v11)
      {
        v13 = v27;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = a4;
  a2 = a5;
  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_100946C50);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    sub_1000F5104(v5, a2);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = sub_10000668C(v37, v38, &v50);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v35, 0xCu);
    sub_10000607C(v36);
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_1005F623C()
{
  v0._countAndFlagsBits = 0x44497463656A626FLL;
  v0._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(&off_1008E0A28, v0);
  if (result >= 6)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &unk_10093F790, off_1008D4158);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 6;
  }

  return result;
}

unint64_t sub_1005F63F0(__n128 a1)
{
  result = sub_100682CAC(0x44497463656A626FLL, 0xE800000000000000);
  if (result == 42)
  {
    v2 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100946C50);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136446210;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v8 = [swift_getObjCClassFromMetadata() description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_10000668C(v9, v11, &v20);
      v11, v13, v14, v15, v16, v17, v18, v19;
      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }

    return v2;
  }

  return result;
}

unint64_t sub_1005F65A4(Swift::OpaquePointer a1, unint64_t *a2, void *a3)
{
  v5._countAndFlagsBits = 0x44497463656A626FLL;
  v5._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 4)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v24);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 4;
  }

  return result;
}

unint64_t sub_1005F6750()
{
  result = sub_1002F944C(0x44497463656A626FLL, 0xE800000000000000);
  if (result == 26)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F6904(Swift::OpaquePointer a1, unint64_t *a2, void *a3)
{
  v5._countAndFlagsBits = 0x44497463656A626FLL;
  v5._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 5)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v24);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 5;
  }

  return result;
}

uint64_t sub_1005F6AB0(uint64_t (*a1)(uint64_t, unint64_t), unint64_t *a2, void *a3)
{
  result = a1(0x44497463656A626FLL, 0xE800000000000000);
  if (result == 11)
  {
    v6 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v24);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return v6;
  }

  return result;
}

unint64_t sub_1005F6C6C()
{
  result = sub_1002B3014(0x44497463656A626FLL, 0xE800000000000000);
  if (result == 40)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F6E20(Swift::OpaquePointer a1, uint64_t (*a2)(void))
{
  v3._countAndFlagsBits = 0x44497463656A626FLL;
  v3._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v3);
  if (result >= 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100946C50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446210;
      a2(0);
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v22);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1005F6FC8()
{
  v20._countAndFlagsBits = 0x44497463656A626FLL;
  v20._object = 0xE800000000000000;
  result = sub_1001DA3AC(v20);
  if (result == 12)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      type metadata accessor for REMCDTemplate();
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F716C(Swift::OpaquePointer a1, unint64_t *a2, void *a3)
{
  v5._countAndFlagsBits = 0x44497463656A626FLL;
  v5._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v24);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1005F731C()
{
  v20._countAndFlagsBits = 0x44497463656A626FLL;
  v20._object = 0xE800000000000000;
  result = sub_10022F7F4(v20);
  if (result == 14)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F74D0()
{
  v0._countAndFlagsBits = 0x44497463656A626FLL;
  v0._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(&off_1008E0E80, v0);
  if (result >= 6)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      type metadata accessor for REMCDDueDateDeltaAlert();
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 6;
  }

  return result;
}

unint64_t sub_1005F7674(Swift::OpaquePointer a1, unint64_t *a2, void *a3)
{
  v5._countAndFlagsBits = 0x44497463656A626FLL;
  v5._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 7)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v24);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 7;
  }

  return result;
}

unint64_t sub_1005F7820()
{
  v0._countAndFlagsBits = 0x44497463656A626FLL;
  v0._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(&off_1008E0FF8, v0);
  if (result >= 5)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      type metadata accessor for REMCDListSection();
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 5;
  }

  return result;
}

unint64_t sub_1005F79C4()
{
  v0._countAndFlagsBits = 0x44497463656A626FLL;
  v0._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(&off_1008E10E0, v0);
  if (result >= 3)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &qword_100940360, off_1008D4138);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 3;
  }

  return result;
}

unint64_t sub_1005F7B78()
{
  result = sub_100513988(0x44497463656A626FLL, 0xE800000000000000);
  if (result == 22)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      type metadata accessor for REMCDSavedReminder();
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F7D1C(Swift::OpaquePointer a1, uint64_t (*a2)(void))
{
  v3._countAndFlagsBits = 0x44497463656A626FLL;
  v3._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v3);
  if (result >= 4)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100946C50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446210;
      a2(0);
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v22);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    return 4;
  }

  return result;
}

unint64_t sub_1005F7EC0(Swift::OpaquePointer a1, unint64_t *a2, void *a3)
{
  v5._countAndFlagsBits = 0x49746E756F636361;
  v5._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      sub_1000060C8(0, a2, a3);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v24);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1005F807C()
{
  v0._countAndFlagsBits = 0x49746E756F636361;
  v0._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(&off_1008E1368, v0);
  if (result > 6)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 7;
  }

  return result;
}

unint64_t sub_1005F823C()
{
  v0._countAndFlagsBits = 0x49746E756F636361;
  v0._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(&off_1008E1738, v0);
  if (result > 5)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 6;
  }

  return result;
}

unint64_t sub_1005F83FC(Swift::OpaquePointer a1, uint64_t (*a2)(void))
{
  v3._countAndFlagsBits = 0x49746E756F636361;
  v3._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(a1, v3);
  if (result >= 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100946C50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      a2(0);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446210;
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v22);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1005F85B0()
{
  v0._countAndFlagsBits = 0x49746E756F636361;
  v0._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(&off_1008E17E8, v0);
  if (result > 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      type metadata accessor for REMCDTemplate();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v19);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 3;
  }

  return result;
}

unint64_t sub_1005F8760(Swift::OpaquePointer a1, unint64_t *a2, void *a3)
{
  v5._countAndFlagsBits = 0x49746E756F636361;
  v5._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result > 3)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      sub_1000060C8(0, a2, a3);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136446210;
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v24);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 4;
  }

  return result;
}

BOOL sub_1005F8918(Swift::OpaquePointer a1, uint64_t (*a2)(void))
{
  v3._countAndFlagsBits = 0x49746E756F636361;
  v3._object = 0xE900000000000044;
  v4 = _findStringSwitchCase(cases:string:)(a1, v3);
  if (v4)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100946C50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      a2(0);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136446210;
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v23);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }
  }

  return v4 != 0;
}

void sub_1005F8AE4(unint64_t a1, int a2)
{
  v4 = v3;
  LODWORD(v5) = a2;
  v56 = type metadata accessor for UUID();
  v7 = *(v56 - 8);
  *&v9 = __chkstk_darwin(v56, v8).n128_u64[0];
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v48 = v5;
      v49 = v2;
      v50 = v4;
      if (!i)
      {
        break;
      }

      v14 = 0;
      v55 = a1 & 0xC000000000000001;
      v51 = (v7 + 8);
      v15 = &_swiftEmptyArrayStorage;
      v53 = v12;
      v54 = a1;
      v52 = i;
      while (1)
      {
        if (v55)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v12 + 16))
          {
            goto LABEL_26;
          }

          v16 = *(a1 + 8 * v14 + 32);
        }

        v5 = v16;
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = [v16 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v2 = v11;
        v4 = UUID.uuidString.getter();
        v7 = v18;

        (*v51)(v11, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100365788(0, *v15->clientIdentity + 1, 1, v15, v19, v20, v21, v22);
        }

        v24 = *v15->clientIdentity;
        v23 = *&v15->clientIdentity[8];
        v5 = (v24 + 1);
        if (v24 >= v23 >> 1)
        {
          v15 = sub_100365788((v23 > 1), v24 + 1, 1, v15, v19, v20, v21, v22);
        }

        *v15->clientIdentity = v5;
        v25 = v15 + 16 * v24;
        *(v25 + 4) = v4;
        *(v25 + 5) = v7;
        ++v14;
        v26 = v12 == v52;
        v12 = v53;
        a1 = v54;
        if (v26)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v15 = &_swiftEmptyArrayStorage;
LABEL_20:
    v27 = objc_allocWithZone(REMOrderedIdentifierMap);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v29 = [v27 initWithOrderedIdentifiers:isa];
    v15, v30, v31, v32, v33, v34, v35, v36;

    v57 = v29;
    sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
    v37 = v29;
    v38 = v50;
    v39 = REMJSONRepresentable.toJSONData()();
    if (!v38)
    {
      v41 = v39;
      v42 = v40;
      sub_100029344(v39, v40);
      v43 = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v41, v42);
      v44 = v49;
      [v49 setSectionIDsOrderingAsData:v43];

      if (v48)
      {
        v45 = [v44 createResolutionTokenMapIfNecessary];
        v46 = String._bridgeToObjectiveC()();
        [v45 updateForKey:v46];
      }

      sub_10001BBA0(v41, v42);
    }
  }

  else
  {
    [v2 setSectionIDsOrderingAsData:{0, v9}];
  }
}

uint64_t sub_1005F8E88(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_1006821B0);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006ACA18, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006ACA34;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006ACA74;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006ACAA8;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006ACADC;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005F9680(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_1006826D0);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF238, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AF254;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AF294;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AF2C8;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AF2E8;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005F9E88(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068C2C4);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC624, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    type metadata accessor for REMCDManualSortHint();
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AC640;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AC680;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AC6B4;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AC6E8;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FA684(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068CF50);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF89C, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_10094F688, off_1008D4140);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AF8B8;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AF8F8;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AF918;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AF938;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FAE8C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068CCA0);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF990, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AF9AC;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AF9EC;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AFA0C;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AFA2C;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FB694(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068C85C);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AFA84, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AFAA0;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AFAE0;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AFB00;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AFB20;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FBE9C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068C5B8);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AFB78, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_100940370, off_1008D4150);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AFB94;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AFBD4;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AFBF4;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AFC14;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FC6A4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068D1FC);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AD7C4, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AD7E0;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AD820;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AD854;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AD874;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FCEAC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068D520);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AEE54, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AEE70;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AEEB0;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AEEE4;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AEF04;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FD6B4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068E5A8);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF144, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AF160;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AF1A0;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AF1C0;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AF1E0;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FDEBC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068E204);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF050, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AF06C;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AF0AC;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AF0CC;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AF0EC;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FE6C4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068DC48);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AEF5C, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AEF78;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AEFB8;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AEFD8;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AEFF8;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FEECC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068E8C8);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF340, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AF35C;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AF39C;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AF3D0;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AF3F0;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FF6D4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068EDEC);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006ABEC8, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006ABEE4;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006ABF24;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006ABF58;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006ABF78;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1005FFEE0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068F32C);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC010, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AC02C;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AC09C;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AC0D0;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AC0F0;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1006006EC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068F914);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AFC6C, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    type metadata accessor for REMCDDueDateDeltaAlert();
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AFCE0;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AFD0C;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AFD40;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AFDA8;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_100600EE8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006929CC);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF674, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AF690;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AF6BC;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AF6F0;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AF724;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_1006016F4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_100692448);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF448, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AF464;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AF490;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AF4C4;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AF4F8;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_100601F00(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006920C0);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006B0374, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AD690;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AD6BC;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AD6F0;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AD724;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_10060270C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006918EC);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC8D0, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    type metadata accessor for REMCDSavedReminder();
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AC8EC;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AC918;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AC94C;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AC96C;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_100602F08(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006911E4);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC760, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AC77C;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AC7A8;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AC7DC;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AC810;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_100603714(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_100690B6C);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC4B4, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    type metadata accessor for REMCDTemplate();
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AC4D0;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AC4FC;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AC530;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AC564;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_100603F10(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006906DC);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC378, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    type metadata accessor for REMCDListSection();
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AC394;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AC3E8;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AC408;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AC428;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_10060470C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006902A0);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC26C, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    type metadata accessor for REMCDSmartListSection();
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AC288;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AC2B4;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AC2D4;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AC2F4;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

uint64_t sub_100604F08(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v128 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068FD94);
  v9 = 0;
  __chkstk_darwin(v10, v11);
  v118[2] = &v128;
  sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC134, v118, a1);
  v13 = v12;

  v14 = sub_1001A6DC0();
  sub_1003DA95C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100945730);
  swift_bridgeObjectRetain_n();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v125 = 0;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v127[0] = v121;
    *v26 = 134218498;
    v123 = v23;
    v124 = 0;
    v122 = v24;
    if (v6)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v34;
    a1, v27, v28, v29, v30, v31, v32, v33;
    *(v26 + 12) = 2082;
    type metadata accessor for REMCDTemplateSection();
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v127);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v26 + 14) = v46;
    *(v26 + 22) = 2082;
    v61 = *(v13 + 16);
    if (v61)
    {
      v119 = v4;
      sub_1003689CC(v61, 0);
      v120 = sub_10027DC5C();
      v62 = v126;

      result = sub_10001B860(v62);
      if (v120 != v61)
      {
        __break(1u);
        return result;
      }

      v13, v63, v64, v65, v66, v67, v68, v69;
      v9 = v124;
      v4 = v119;
    }

    else
    {
      v13, v54, v55, v56, v57, v58, v59, v60;
      v9 = v124;
    }

    v70 = v122;
    v71 = Array.description.getter();
    v73 = v72;

    v13, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_10000668C(v71, v73, v127);
    v73, v82, v83, v84, v85, v86, v87, v88;
    *(v26 + 24) = v81;
    v89 = v123;
    _os_log_impl(&_mh_execute_header, v123, v70, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v26, 0x20u);
    swift_arrayDestroy();

    v8 = v125;
  }

  else
  {

    a1, v35, v36, v37, v38, v39, v40, v41;
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = v9;
  v91[4] = v8;
  v91[5] = v13;
  v91[6] = v4;
  swift_beginAccess();
  v92 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_100366664(0, (*v92->clientIdentity + 1), 1, v92);
    v3[14] = v92;
  }

  v95 = *v92->clientIdentity;
  v94 = *&v92->clientIdentity[8];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100366664((v94 > 1), (v95 + 1), 1, v92);
  }

  *v92->clientIdentity = v95 + 1;
  v96 = v92 + 16 * v95;
  *(v96 + 4) = sub_1006AC150;
  *(v96 + 5) = v91;
  v3[14] = v92;
  swift_endAccess();

  v97 = swift_allocObject();
  swift_weakInit();
  v98 = swift_allocObject();
  v98[2] = v97;
  v98[3] = v13;
  v98[4] = v4;
  swift_beginAccess();
  v99 = v3[15];

  v100 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v99;
  if ((v100 & 1) == 0)
  {
    v99 = sub_100366664(0, (*v99->clientIdentity + 1), 1, v99);
    v3[15] = v99;
  }

  v102 = *v99->clientIdentity;
  v101 = *&v99->clientIdentity[8];
  if (v102 >= v101 >> 1)
  {
    v99 = sub_100366664((v101 > 1), (v102 + 1), 1, v99);
  }

  *v99->clientIdentity = v102 + 1;
  v103 = v99 + 16 * v102;
  *(v103 + 4) = sub_1006AC1A8;
  *(v103 + 5) = v98;
  v3[15] = v99;
  swift_endAccess();

  v104 = swift_allocObject();
  swift_weakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v13;
  v105[4] = v4;
  swift_beginAccess();
  v106 = v3[16];

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v106;
  if ((v107 & 1) == 0)
  {
    v106 = sub_100366664(0, (*v106->clientIdentity + 1), 1, v106);
    v3[16] = v106;
  }

  v109 = *v106->clientIdentity;
  v108 = *&v106->clientIdentity[8];
  if (v109 >= v108 >> 1)
  {
    v106 = sub_100366664((v108 > 1), (v109 + 1), 1, v106);
  }

  *v106->clientIdentity = v109 + 1;
  v110 = v106 + 16 * v109;
  *(v110 + 4) = sub_1006AC1C8;
  *(v110 + 5) = v105;
  v3[16] = v106;
  swift_endAccess();

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  v112[2] = v111;
  v112[3] = v13;
  v112[4] = v4;
  swift_beginAccess();
  v113 = v3[17];

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v113;
  if ((v114 & 1) == 0)
  {
    v113 = sub_100366664(0, (*v113->clientIdentity + 1), 1, v113);
    v3[17] = v113;
  }

  v116 = *v113->clientIdentity;
  v115 = *&v113->clientIdentity[8];
  if (v116 >= v115 >> 1)
  {
    v113 = sub_100366664((v115 > 1), (v116 + 1), 1, v113);
  }

  *v113->clientIdentity = v116 + 1;
  v117 = v113 + 16 * v116;
  *(v117 + 4) = sub_1006AC1E8;
  *(v117 + 5) = v112;
  v3[17] = v113;
  swift_endAccess();
}

void sub_100605704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_TtC7remindd19RDXPCStorePerformer *, uint64_t))
{
  v8 = v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v83 = a6;
      v14 = a4 + 64;
      v15 = 1 << *(a4 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(a4 + 64);

      v86 = v13;
      swift_beginAccess();
      v18 = 0;
      v19 = (v15 + 63) >> 6;
      v84 = a4;
      if (v17)
      {
        while (1)
        {
          v20 = v18;
LABEL_12:
          v21 = __clz(__rbit64(v17)) | (v20 << 6);
          v22 = (*(a4 + 48) + 16 * v21);
          v23 = v22[1];
          v85 = *v22;
          v24 = *(*(a4 + 56) + 8 * v21);
          v25 = *(v86 + 144);
          v26 = *(v25 + 16);

          if (!v26)
          {
            goto LABEL_19;
          }

          v27 = sub_100005F4C(v85, v23);
          if ((v28 & 1) == 0)
          {
            v25, v28, v29, v30, v31, v32, v33, v34;
            v24, v51, v52, v53, v54, v55, v56, v57;
LABEL_19:
            v58 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v59._object = 0x80000001007FE1C0;
            v59._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v59);
            v60._countAndFlagsBits = v85;
            v60._object = v23;
            String.append(_:)(v60);
            v23, v61, v62, v63, v64, v65, v66, v67;
            v68 = String._bridgeToObjectiveC()();
            0xE000000000000000, v69, v70, v71, v72, v73, v74, v75;
            [v58 internalErrorWithDebugDescription:v68];

            swift_willThrow();

            goto LABEL_21;
          }

          v35 = v27;
          v23, v28, v29, v30, v31, v32, v33, v34;
          v36 = *(*(v25 + 56) + 8 * v35);

          v25, v37, v38, v39, v40, v41, v42, v43;
          v83(v24, v36);
          if (v8)
          {
            break;
          }

          v17 &= v17 - 1;
          v24, v44, v45, v46, v47, v48, v49, v50;

          v18 = v20;
          a4 = v84;
          if (!v17)
          {
            goto LABEL_9;
          }
        }

        v24, v76, v77, v78, v79, v80, v81, v82;
LABEL_21:
      }

      else
      {
LABEL_9:
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v20 >= v19)
          {

            goto LABEL_21;
          }

          v17 = *(v14 + 8 * v20);
          ++v18;
          if (v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_100605A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_TtC7remindd19RDXPCStorePerformer *, uint64_t, uint64_t))
{
  v8 = v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v87 = a5;
      v88 = a6;
      v14 = a4 + 64;
      v90 = Strong;
      v15 = 1 << *(a4 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(a4 + 64);

      swift_beginAccess();
      v18 = 0;
      v19 = v90;
      v20 = (v15 + 63) >> 6;
      v89 = a4;
      v86 = a4 + 64;
      if (v17)
      {
        while (1)
        {
          v21 = v18;
LABEL_12:
          v22 = __clz(__rbit64(v17)) | (v21 << 6);
          v23 = (*(a4 + 48) + 16 * v22);
          v24 = *v23;
          v25 = v23[1];
          v26 = *(*(a4 + 56) + 8 * v22);
          v27 = *(v19 + 144);
          v28 = *(v27 + 16);

          if (!v28)
          {
            goto LABEL_19;
          }

          v29 = sub_100005F4C(v24, v25);
          if ((v30 & 1) == 0)
          {
            v27, v30, v31, v32, v33, v34, v35, v36;
            v26, v53, v54, v55, v56, v57, v58, v59;
LABEL_19:
            v60 = v24;
            v61 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v62._object = 0x80000001007FE1C0;
            v62._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v62);
            v63._countAndFlagsBits = v60;
            v63._object = v25;
            String.append(_:)(v63);
            v25, v64, v65, v66, v67, v68, v69, v70;
            v71 = String._bridgeToObjectiveC()();
            0xE000000000000000, v72, v73, v74, v75, v76, v77, v78;
            [v61 internalErrorWithDebugDescription:v71];

            swift_willThrow();

            goto LABEL_21;
          }

          v37 = v29;
          v25, v30, v31, v32, v33, v34, v35, v36;
          v38 = *(*(v27 + 56) + 8 * v37);

          v27, v39, v40, v41, v42, v43, v44, v45;
          v19 = v90;
          v88(v26, v87, v38);
          if (v8)
          {
            break;
          }

          v17 &= v17 - 1;
          v26, v46, v47, v48, v49, v50, v51, v52;

          v18 = v21;
          a4 = v89;
          v14 = v86;
          if (!v17)
          {
            goto LABEL_9;
          }
        }

        v26, v79, v80, v81, v82, v83, v84, v85;
LABEL_21:
      }

      else
      {
LABEL_9:
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v20)
          {

            goto LABEL_21;
          }

          v17 = *(v14 + 8 * v21);
          ++v18;
          if (v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_100605D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5)
{
  v6 = v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v13 = a4 + 64;
      v14 = 1 << *(a4 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(a4 + 64);

      swift_beginAccess();
      v17 = 0;
      v18 = (v14 + 63) >> 6;
      v84 = a4 + 64;
      v86 = v12;
      v87 = a4;
      v85 = a5;
      if (v16)
      {
        while (1)
        {
          v19 = v17;
LABEL_12:
          v20 = __clz(__rbit64(v16)) | (v19 << 6);
          v21 = *(a4 + 56);
          v22 = (*(a4 + 48) + 16 * v20);
          v24 = *v22;
          v23 = v22[1];
          v25 = *(v21 + 8 * v20);
          v26 = *(v12 + 144);
          v27 = *(v26 + 16);

          if (!v27)
          {
            goto LABEL_19;
          }

          v28 = sub_100005F4C(v24, v23);
          if ((v29 & 1) == 0)
          {
            v26, v29, v30, v31, v32, v33, v34, v35;
            v25, v52, v53, v54, v55, v56, v57, v58;
LABEL_19:
            v59 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v60._object = 0x80000001007FE1C0;
            v60._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v60);
            v61._countAndFlagsBits = v24;
            v61._object = v23;
            String.append(_:)(v61);
            v23, v62, v63, v64, v65, v66, v67, v68;
            v69 = String._bridgeToObjectiveC()();
            0xE000000000000000, v70, v71, v72, v73, v74, v75, v76;
            [v59 internalErrorWithDebugDescription:v69];

            swift_willThrow();
            goto LABEL_20;
          }

          v36 = v28;
          v23, v29, v30, v31, v32, v33, v34, v35;
          v37 = *(*(v26 + 56) + 8 * v36);

          v26, v38, v39, v40, v41, v42, v43, v44;
          v12 = v86;
          sub_1006295AC(v25, v85, v37, sub_1006B0254, sub_100759CB4, type metadata accessor for REMCDTemplateSection, sub_1005E6E68, sub_100390CE4, sub_10068FBF4, &off_1008E1148, type metadata accessor for REMCDTemplateSection, sub_100393C74, sub_1004A705C, &type metadata for REMTemplateSectionStorageCDIngestor.ValueKey, sub_100668B38);
          if (v6)
          {
            break;
          }

          v16 &= v16 - 1;
          v25, v45, v46, v47, v48, v49, v50, v51;

          v17 = v19;
          a4 = v87;
          v13 = v84;
          if (!v16)
          {
            goto LABEL_9;
          }
        }

        v25, v77, v78, v79, v80, v81, v82, v83;

LABEL_21:
      }

      else
      {
LABEL_9:
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v18)
          {
LABEL_20:

            goto LABEL_21;
          }

          v16 = *(v13 + 8 * v19);
          ++v17;
          if (v16)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_100606124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5)
{
  v6 = v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v13 = a4 + 64;
      v14 = 1 << *(a4 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(a4 + 64);

      swift_beginAccess();
      v17 = 0;
      v18 = (v14 + 63) >> 6;
      v84 = a4 + 64;
      v86 = v12;
      v87 = a4;
      v85 = a5;
      if (v16)
      {
        while (1)
        {
          v19 = v17;
LABEL_12:
          v20 = __clz(__rbit64(v16)) | (v19 << 6);
          v21 = *(a4 + 56);
          v22 = (*(a4 + 48) + 16 * v20);
          v24 = *v22;
          v23 = v22[1];
          v25 = *(v21 + 8 * v20);
          v26 = *(v12 + 144);
          v27 = *(v26 + 16);

          if (!v27)
          {
            goto LABEL_19;
          }

          v28 = sub_100005F4C(v24, v23);
          if ((v29 & 1) == 0)
          {
            v26, v29, v30, v31, v32, v33, v34, v35;
            v25, v52, v53, v54, v55, v56, v57, v58;
LABEL_19:
            v59 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v60._object = 0x80000001007FE1C0;
            v60._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v60);
            v61._countAndFlagsBits = v24;
            v61._object = v23;
            String.append(_:)(v61);
            v23, v62, v63, v64, v65, v66, v67, v68;
            v69 = String._bridgeToObjectiveC()();
            0xE000000000000000, v70, v71, v72, v73, v74, v75, v76;
            [v59 internalErrorWithDebugDescription:v69];

            swift_willThrow();
            goto LABEL_20;
          }

          v36 = v28;
          v23, v29, v30, v31, v32, v33, v34, v35;
          v37 = *(*(v26 + 56) + 8 * v36);

          v26, v38, v39, v40, v41, v42, v43, v44;
          v12 = v86;
          sub_1006295AC(v25, v85, v37, sub_1006B0270, sub_100759CB4, type metadata accessor for REMCDSmartListSection, sub_1005E7BE0, sub_100390CF8, sub_100690100, &off_1008E11C8, type metadata accessor for REMCDSmartListSection, sub_100393C74, sub_100500870, &type metadata for REMSmartListSectionStorageCDIngestor.ValueKey, sub_100669408);
          if (v6)
          {
            break;
          }

          v16 &= v16 - 1;
          v25, v45, v46, v47, v48, v49, v50, v51;

          v17 = v19;
          a4 = v87;
          v13 = v84;
          if (!v16)
          {
            goto LABEL_9;
          }
        }

        v25, v77, v78, v79, v80, v81, v82, v83;

LABEL_21:
      }

      else
      {
LABEL_9:
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v18)
          {
LABEL_20:

            goto LABEL_21;
          }

          v16 = *(v13 + 8 * v19);
          ++v17;
          if (v16)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_100606508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_TtC7remindd19RDXPCStorePerformer *, uint64_t, uint64_t))
{
  v8 = v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v84 = a5;
      v85 = a6;
      v15 = a4 + 64;
      v16 = 1 << *(a4 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(a4 + 64);

      swift_beginAccess();
      v19 = 0;
      v20 = (v16 + 63) >> 6;
      v86 = a4;
      v87 = v14;
      if (v18)
      {
        while (1)
        {
          v21 = v19;
LABEL_12:
          v22 = __clz(__rbit64(v18)) | (v21 << 6);
          v23 = (*(a4 + 48) + 16 * v22);
          v24 = v23[1];
          v88 = *v23;
          v25 = *(*(a4 + 56) + 8 * v22);
          v26 = *(v14 + 144);
          v27 = *(v26 + 16);

          if (!v27)
          {
            goto LABEL_19;
          }

          v28 = sub_100005F4C(v88, v24);
          if ((v29 & 1) == 0)
          {
            v26, v29, v30, v31, v32, v33, v34, v35;
            v25, v52, v53, v54, v55, v56, v57, v58;
LABEL_19:
            v59 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v60._object = 0x80000001007FE1C0;
            v60._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v60);
            v61._countAndFlagsBits = v88;
            v61._object = v24;
            String.append(_:)(v61);
            v24, v62, v63, v64, v65, v66, v67, v68;
            v69 = String._bridgeToObjectiveC()();
            0xE000000000000000, v70, v71, v72, v73, v74, v75, v76;
            [v59 internalErrorWithDebugDescription:v69];

            swift_willThrow();

            goto LABEL_21;
          }

          v36 = v28;
          v24, v29, v30, v31, v32, v33, v34, v35;
          v37 = *(*(v26 + 56) + 8 * v36);

          v26, v38, v39, v40, v41, v42, v43, v44;
          v14 = v87;
          v85(v25, v84, v37);
          if (v8)
          {
            break;
          }

          v18 &= v18 - 1;
          v25, v45, v46, v47, v48, v49, v50, v51;

          v19 = v21;
          a4 = v86;
          if (!v18)
          {
            goto LABEL_9;
          }
        }

        v25, v77, v78, v79, v80, v81, v82, v83;

LABEL_21:
      }

      else
      {
LABEL_9:
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {

            goto LABEL_21;
          }

          v18 = *(v15 + 8 * v21);
          ++v19;
          if (v18)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_10060681C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_TtC7remindd19RDXPCStorePerformer *, uint64_t, uint64_t))
{
  v5 = v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a2 + 64;
    v10 = 1 << *(a2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a2 + 64);

    swift_beginAccess();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v83 = v8;
    v79 = a2;
    if (v12)
    {
      while (1)
      {
        v82 = v5;
        v15 = v13;
LABEL_10:
        v16 = __clz(__rbit64(v12)) | (v15 << 6);
        v17 = (*(a2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a2 + 56) + 8 * v16);
        v21 = *(v83 + 144);
        v22 = *(v21 + 16);

        if (!v22)
        {
          goto LABEL_17;
        }

        v23 = sub_100005F4C(v19, v18);
        if ((v24 & 1) == 0)
        {
          v21, v24, v25, v26, v27, v28, v29, v30;
          v20, v47, v48, v49, v50, v51, v52, v53;
LABEL_17:
          v54 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v55._object = 0x80000001007FE1C0;
          v55._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v55);
          v56._countAndFlagsBits = v19;
          v56._object = v18;
          String.append(_:)(v56);
          v18, v57, v58, v59, v60, v61, v62, v63;
          v64 = String._bridgeToObjectiveC()();
          0xE000000000000000, v65, v66, v67, v68, v69, v70, v71;
          [v54 internalErrorWithDebugDescription:v64];

          swift_willThrow();

          goto LABEL_19;
        }

        v31 = v23;
        v18, v24, v25, v26, v27, v28, v29, v30;
        v32 = *(*(v21 + 56) + 8 * v31);

        v21, v33, v34, v35, v36, v37, v38, v39;
        a4(v20, a3, v32);
        v5 = v82;
        if (v82)
        {
          break;
        }

        v12 &= v12 - 1;
        v20, v40, v41, v42, v43, v44, v45, v46;

        v13 = v15;
        a2 = v79;
        if (!v12)
        {
          goto LABEL_6;
        }
      }

      v20, v72, v73, v74, v75, v76, v77, v78;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v14)
        {

          goto LABEL_19;
        }

        v12 = *(v9 + 8 * v15);
        ++v13;
        if (v12)
        {
          v82 = v5;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100606ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10063DA3C(v19, a3, v31, sub_1006AFC34, sub_1003DF910, &qword_100940370, off_1008D4150, sub_100660CF4, sub_100393C74, sub_100683884);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100606E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10063DA3C(v19, a3, v31, sub_1006AFB40, sub_1003DF93C, &qword_100940360, off_1008D4138, sub_1006615EC, sub_100393C74, sub_100683884);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100607144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10063DA3C(v19, a3, v31, sub_1006AFA4C, sub_1003DF968, &qword_100940350, off_1008D4130, sub_100661EE4, sub_100393C74, sub_100683460);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100607478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_10063DA3C(v19, a3, v31, sub_1006AF958, sub_1003DF994, &qword_10094F688, off_1008D4140, sub_1006627DC, sub_100393C74, sub_100683460);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_1006077AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_100642088(v19, a3, v31, sub_1006AF018, sub_1003DFA18, &qword_100944EC8, off_1008D41F0, sub_1006642C4, sub_100393C74, &type metadata for REMURLAttachmentCDIngestor.RelationshipKey);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100607AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_100642088(v19, a3, v31, sub_1006AF10C, sub_1003DFA44, &unk_100944ED0, off_1008D41A0, sub_100664BBC, sub_100393C74, &type metadata for REMImageAttachmentCDIngestor.RelationshipKey);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100607DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v17;
          v55._object = v18;
          String.append(_:)(v55);
          v18, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v18, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_100642088(v19, a3, v31, sub_1006AF200, sub_1003DFA70, &qword_100939DF0, off_1008D4188, sub_1006654B4, sub_100393C74, &type metadata for REMFileAttachmentCDIngestor.RelationshipKey);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;
LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100608124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_100648E30(&v19->super, a3, v31, sub_1006AC23C, sub_1003E0CA8, type metadata accessor for REMCDTemplateSection, sub_1005E6E68, sub_100668B38, sub_100393C74, sub_1003B6CA0, sub_1004A7870);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_100608484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v81 = v7;
    v78 = a2;
    if (v11)
    {
      while (1)
      {
        v80 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v81 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {
          v20, v23, v24, v25, v26, v27, v28, v29;
          v19, v46, v47, v48, v49, v50, v51, v52;
LABEL_17:
          v53 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v54._object = 0x80000001007FE1C0;
          v54._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v18;
          v55._object = v17;
          String.append(_:)(v55);
          v17, v56, v57, v58, v59, v60, v61, v62;
          v63 = String._bridgeToObjectiveC()();
          0xE000000000000000, v64, v65, v66, v67, v68, v69, v70;
          [v53 internalErrorWithDebugDescription:v63];

          swift_willThrow();

          goto LABEL_19;
        }

        v30 = v22;
        v17, v23, v24, v25, v26, v27, v28, v29;
        v31 = *(*(v20 + 56) + 8 * v30);

        v20, v32, v33, v34, v35, v36, v37, v38;
        sub_100648E30(&v19->super, a3, v31, sub_1006AC348, sub_1003E0CD4, type metadata accessor for REMCDSmartListSection, sub_1005E7BE0, sub_100669408, sub_100393C74, sub_1003B6CA0, sub_100501084);
        v4 = v80;
        if (v80)
        {
          break;
        }

        v11 &= v11 - 1;
        v19, v39, v40, v41, v42, v43, v44, v45;

        v12 = v14;
        a2 = v78;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19, v71, v72, v73, v74, v75, v76, v77;

LABEL_19:
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          goto LABEL_19;
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v80 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}