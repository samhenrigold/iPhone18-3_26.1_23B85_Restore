uint64_t sub_1000D5450(uint64_t a1, uint64_t a2)
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
    sub_1000A9C4C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000D558C(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1000D558C(unint64_t result)
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

void *sub_1000D5750(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1000D58A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100095820(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10000574C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

id sub_1000D59A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v52 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v49);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v48 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_verifierInfo;
  *&v6[v17] = sub_1000D58A8(_swiftEmptyArrayStorage, &qword_100384C08, &qword_1002D74D8);
  v18 = OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_result;
  *&v6[v18] = sub_1000D58A8(_swiftEmptyArrayStorage, &qword_100384BC8, &qword_1002D74B0);
  v19 = a4;
  *&v6[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps] = a1;
  v20 = &v6[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = *(a4 + 16);
  if (v21)
  {
    v45 = a5;
    v46 = v12;
    v47 = v6;
    v54 = _swiftEmptyArrayStorage;
    v22 = a1;

    sub_1000D4D9C(0, v21, 0);
    v23 = v54;
    v24 = objc_opt_self();
    v44 = v19;
    v25 = v19 + 40;
    do
    {

      v26 = a3;
      v27 = String._bridgeToObjectiveC()();
      v28 = String._bridgeToObjectiveC()();
      v29 = [v24 addApplicationPrefixForIdentifier:v27 uri:{v28, v44}];

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v54 = v23;
      v34 = v23[2];
      v33 = v23[3];
      if (v34 >= v33 >> 1)
      {
        sub_1000D4D9C((v33 > 1), v34 + 1, 1);
        v23 = v54;
      }

      v23[2] = v34 + 1;
      v35 = &v23[2 * v34];
      v35[4] = v30;
      v35[5] = v32;
      v25 += 16;
      --v21;
      a3 = v26;
    }

    while (v21);

    v12 = v46;
    v6 = v47;
    a5 = v45;
  }

  else
  {
    v36 = a1;

    v23 = _swiftEmptyArrayStorage;
  }

  v37 = sub_1000AAA30(v23);

  *&v6[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_uris] = v37;
  v38 = objc_allocWithZone(KTVerifier);
  v39 = String._bridgeToObjectiveC()();

  v40 = [v38 initWithApplication:v39];

  *&v6[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_verifier] = v40;
  v41 = [objc_allocWithZone(KTResultOperation) init];
  *&v6[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp] = v41;
  *&v6[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_logClient] = a5;
  sub_10009FDA0(0, &qword_100384518, OS_dispatch_queue_serial_ptr);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_1000D68F8(&unk_100384BF0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100095820(&qword_100384520, &qword_1002D74D0);
  sub_1000D29A4(&qword_100384C00, &qword_100384520, &qword_1002D74D0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v52 + 104))(v51, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  *&v6[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_peerValidateQueue] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v42 = type metadata accessor for PeerValidationOperation();
  v53.receiver = v6;
  v53.super_class = v42;
  return objc_msgSendSuper2(&v53, "init");
}

void sub_1000D5EC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_1000D4D9C(0, v1, 0);
    v3 = v2 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = *(v2 + 36);
    v29 = objc_opt_self();
    if (v4 < 0 || v4 >= 1 << *(v2 + 32))
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      v26 = v2 + 64;
      v27 = v1;
      v6 = 1;
      v28 = v2 + 56;
      while (1)
      {
        v7 = v4 >> 6;
        if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          break;
        }

        v30 = v6;

        v8 = v2;
        v9 = String._bridgeToObjectiveC()();
        v10 = String._bridgeToObjectiveC()();
        v11 = [v29 stripApplicationPrefixForIdentifier:v9 uri:v10];

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_1000D4D9C((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v16];
        v17[4] = v12;
        v17[5] = v14;
        v18 = 1 << *(v8 + 32);
        if (v4 >= v18)
        {
          goto LABEL_25;
        }

        v2 = v8;
        v3 = v28;
        v19 = *(v28 + 8 * v7);
        if ((v19 & (1 << v4)) == 0)
        {
          goto LABEL_26;
        }

        if (v5 != *(v2 + 36))
        {
          goto LABEL_27;
        }

        v20 = v19 & (-2 << (v4 & 0x3F));
        if (v20)
        {
          v4 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v7 << 6;
          v22 = v7 + 1;
          v23 = (v26 + 8 * v7);
          while (v22 < (v18 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              sub_10000B2E8(v4, v5, 0);
              v4 = __clz(__rbit64(v24)) + v21;
              goto LABEL_18;
            }
          }

          sub_10000B2E8(v4, v5, 0);
          v4 = v18;
        }

LABEL_18:
        if (v30 == v27)
        {
          return;
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
          v5 = *(v2 + 36);
          v6 = v30 + 1;
          if (v4 < 1 << *(v2 + 32))
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1000D61A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D61C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!a1)
  {
    return (*((swift_isaMask & *v2) + 0x108))();
  }

  swift_errorRetain();
  if (qword_100390620 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10009597C(v3, qword_100390628);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "KT query(forUris:) failed with %@", v6, 0xCu);
    sub_1000A4AD8(v7);
  }

  v9 = _convertErrorToNSError(_:)();
  [v2 setError:v9];

  v10 = [v2 operationQueue];
  [v10 addOperation:*(v2 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp)];
}

void sub_1000D63D0(unint64_t a1)
{
  v2 = a1;
  v50 = *(v1 + 16);
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v47 = v2;
    v48 = v2 & 0xFFFFFFFFFFFFFF8;
    v49 = v2 & 0xC000000000000001;
    v4 = 4;
    v46 = i;
    while (1)
    {
      v7 = v4 - 4;
      if (v49)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v48 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(v2 + 8 * v4);
      }

      v9 = v8;
      v10 = v4 - 3;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = String._bridgeToObjectiveC()();
      v12 = [v9 uri];
      if (!v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = String._bridgeToObjectiveC()();
      }

      v13 = [objc_opt_self() addApplicationPrefixForIdentifier:v11 uri:v12];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = *((swift_isaMask & *v50) + 0xD8);
      v2 = v9;
      v18 = v17(v52);
      v20 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;
      v51 = *v20;
      *v20 = 0x8000000000000000;
      v23 = sub_10000574C(v14, v16);
      v25 = v22[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_25;
      }

      v29 = v24;
      if (v22[3] < v28)
      {
        sub_1000D4EC8(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_10000574C(v14, v16);
        if ((v29 & 1) != (v30 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

LABEL_17:
        v31 = v51;
        if (v29)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v35 = v23;
      sub_1000D52E4();
      v23 = v35;
      v31 = v51;
      if (v29)
      {
LABEL_4:
        v5 = v31[7];
        v6 = *(v5 + 8 * v23);
        *(v5 + 8 * v23) = v2;

        goto LABEL_5;
      }

LABEL_18:
      v31[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v31[6] + 16 * v23);
      *v32 = v14;
      v32[1] = v16;
      *(v31[7] + 8 * v23) = v2;
      v33 = v31[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
LABEL_5:
      *v20 = v31;
      v18(v52, 0);

      ++v4;
      v2 = v47;
      if (v10 == v46)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:
  if (qword_100390620 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10009597C(v36, qword_100390628);
  v37 = v50;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v52[0] = v41;
    *v40 = 136315138;
    v42 = (*((swift_isaMask & *v37) + 0x100))();
    v44 = sub_1000999E4(v42, v43, v52);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v38, v39, "KT query validate peer completed %s", v40, 0xCu);
    sub_10009A9E8(v41);
  }

  v45 = [v37 operationQueue];
  [v45 addOperation:*(v37 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp)];
}

uint64_t sub_1000D68F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D695C()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_100390648);
  sub_10009597C(v0, qword_100390648);
  return Logger.init(transparencyCategory:)(0x6461526F54706174, 0xEA00000000007261);
}

id KTTapToRadar.__allocating_init(dataStore:configBag:dewConfig:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  *&v8[OBJC_IVAR____TtC13transparencyd12KTTapToRadar_dataStore] = a1;
  *&v8[OBJC_IVAR____TtC13transparencyd12KTTapToRadar_configBag] = a2;
  sub_100095820(&qword_100384C20, &unk_1002D74E0);
  type metadata accessor for DewTypeStrings();
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = variable initialization expression of KTSwiftDB.db();
  *&v8[OBJC_IVAR____TtC13transparencyd12KTTapToRadar_ttrConfig] = sub_1000A6EA4(0x526F54706154544BLL, 0xEC00000072616461, v12, &_swiftEmptySetSingleton, v11, 0xD000000000000011, 0x800000010029B520);
  v15.receiver = v8;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, "init");

  return v13;
}

id KTTapToRadar.init(dataStore:configBag:dewConfig:)(void *a1, void *a2, void *a3)
{
  v6 = sub_1000D8FA0(a1, a2, a3);

  return v6;
}

Swift::Bool __swiftcall KTTapToRadar.hasRecentlyFiledTTR(tapToRadarType:)(Swift::String tapToRadarType)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC13transparencyd12KTTapToRadar_dataStore);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 getTapToRadarDate:v16];

  if (v17)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v14, v12, v2);
    Date.addingTimeInterval(_:)();
    Date.init()();
    v18 = static Date.> infix(_:_:)();
    v19 = *(v3 + 8);
    v19(v6, v2);
    v19(v9, v2);
    v19(v14, v2);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

id KTTapToRadar.presentTap(toRadarRemote:fromHandle:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v70 = a3;
  v68._countAndFlagsBits = a1;
  v68._object = a2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v7 - 8);
  v69 = type metadata accessor for SASTTR(0);
  v8 = __chkstk_darwin(v69);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v65 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = (&v65 - v15);
  v17 = __chkstk_darwin(v14);
  v71 = &v65 - v18;
  __chkstk_darwin(v17);
  v20 = (&v65 - v19);
  if (qword_100390640 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10009597C(v21, qword_100390648);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v67 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v65 = v13;
    v66 = v16;
    v27 = v26;
    v28 = v22;
    v29 = v10;
    v30 = v5;
    v31 = v20;
    v32 = swift_slowAlloc();
    *&v73[0] = v32;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000999E4(v70, a4, v73);
    _os_log_impl(&_mh_execute_header, v23, v24, "presentTapToRadarRemote %s", v27, 0xCu);
    sub_10009A9E8(v32);
    v20 = v31;
    v5 = v30;
    v10 = v29;
    v22 = v28;

    v13 = v65;
    v16 = v66;
  }

  result = [objc_opt_self() hasInternalDiagnostics];
  v34 = v71;
  if (result)
  {
    v75 = v68;
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    sub_100002D78(v68._countAndFlagsBits, v68._object);
    BinaryDecodingOptions.init()();
    sub_1000D9F68(&unk_100384C30, type metadata accessor for SASTTR, &unk_1002D5928);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    sub_1000D9E70(v34, v20, type metadata accessor for SASTTR);
    sub_1000D90B8(v20, v16);
    sub_1000D90B8(v20, v13);
    v71 = v22;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v73[0] = v69;
      *v37 = 136315394;
      v38 = v13;
      v39 = *v16;
      v40 = v16[1];

      sub_1000D911C(v16);
      v41 = sub_1000999E4(v39, v40, v73);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = *(v38 + 16);
      v43 = *(v38 + 24);

      sub_1000D911C(v38);
      v44 = sub_1000999E4(v42, v43, v73);

      *(v37 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "presentTapToRadarRemote [%s]%s", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000D911C(v13);
      sub_1000D911C(v16);
    }

    v45 = v67;
    v46 = *v20;
    v47 = v20[1];
    v48 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v48 = *v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v48 && (v49 = *(v5 + OBJC_IVAR____TtC13transparencyd12KTTapToRadar_ttrConfig), *&v73[0] = *v20, *(&v73[0] + 1) = v47, v50 = *(*v49 + 200), , , LOBYTE(v50) = v50(v73), , , (v50 & 1) != 0))
    {
      *&v73[0] = 0x203A6D6F7246;
      *(&v73[0] + 1) = 0xE600000000000000;
      v51._countAndFlagsBits = v70;
      v51._object = v45;
      String.append(_:)(v51);
      v52._countAndFlagsBits = 2570;
      v52._object = 0xE200000000000000;
      String.append(_:)(v52);
      v53 = v20[5];
      v75._countAndFlagsBits = v20[4];
      v75._object = v53;

      v54._countAndFlagsBits = 10;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);
      String.append(_:)(v75);

      v55 = v20[6];
      if (v55)
      {
        v75._countAndFlagsBits = 0;
        v75._object = 0xE000000000000000;
        _StringGuts.grow(_:)(19);

        v75._countAndFlagsBits = 0xD000000000000010;
        v75._object = 0x800000010029B540;
        v72 = v55;
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v56);

        v57._countAndFlagsBits = 10;
        v57._object = 0xE100000000000000;
        String.append(_:)(v57);
        String.append(_:)(v75);
      }

      (*((swift_isaMask & *v5) + 0xA8))(v46, v47, v20[2], v20[3], *&v73[0], *(&v73[0] + 1));
    }

    else
    {
      sub_1000D90B8(v20, v10);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v73[0] = v61;
        *v60 = 136315138;
        v62 = *v10;
        v63 = v10[1];

        sub_1000D911C(v10);
        v64 = sub_1000999E4(v62, v63, v73);

        *(v60 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "TTR configured off for: %s", v60, 0xCu);
        sub_10009A9E8(v61);
      }

      else
      {

        sub_1000D911C(v10);
      }
    }

    return sub_1000D911C(v20);
  }

  return result;
}

Swift::Void __swiftcall KTTapToRadar.clearTapToRadar(withUnique:)(Swift::String withUnique)
{
  v2 = *(v1 + OBJC_IVAR____TtC13transparencyd12KTTapToRadar_dataStore);
  v3 = String._bridgeToObjectiveC()();
  [v2 storeTTR:0 withType:v3];
}

Swift::Void __swiftcall KTTapToRadar.presentTapToRadarError(unique:title:message:)(Swift::String unique, Swift::String title, Swift::String message)
{
  object = message._object;
  countAndFlagsBits = message._countAndFlagsBits;
  v6 = title._object;
  v7 = title._countAndFlagsBits;
  v8 = unique._object;
  v9 = unique._countAndFlagsBits;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() hasInternalDiagnostics])
  {
    return;
  }

  if ((*((swift_isaMask & *v3) + 0x90))(v9, v8))
  {
    if (qword_100390640 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10009597C(v14, qword_100390648);

    v36 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      responseFlags[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000999E4(v9, v8, responseFlags);
      _os_log_impl(&_mh_execute_header, v36, v15, "presentTapToRadarError skipped since it was recently filed %s", v16, 0xCu);
      sub_10009A9E8(v17);
    }

    else
    {
      v30 = v36;
    }

    return;
  }

  v36 = countAndFlagsBits;
  v18 = *(v3 + OBJC_IVAR____TtC13transparencyd12KTTapToRadar_dataStore);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v13, v10);
  v20 = String._bridgeToObjectiveC()();
  [v18 storeTTR:isa withType:v20];

  error = 0;
  sub_100095820(&qword_100384C40, &qword_1002D74F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D47C0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_25;
  }

  v22 = inited;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  *(inited + 40) = v7;
  *(inited + 48) = v6;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(inited + 104) = &type metadata for String;
  *(inited + 72) = kCFUserNotificationDefaultButtonTitleKey;
  strcpy((inited + 80), "Tap to Radar");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v23 = v36;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(inited + 144) = &type metadata for String;
  *(inited + 112) = kCFUserNotificationAlternateButtonTitleKey;
  *(inited + 120) = 0x776F6E20746F4ELL;
  *(inited + 128) = 0xE700000000000000;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_27:
    __break(1u);
    return;
  }

  *(inited + 184) = &type metadata for String;
  *(inited + 152) = kCFUserNotificationAlertMessageKey;
  *(inited + 160) = v23;
  *(inited + 168) = object;

  v24 = kCFUserNotificationAlertMessageKey;
  v25 = kCFUserNotificationAlternateButtonTitleKey;
  v26 = kCFUserNotificationDefaultButtonTitleKey;
  v27 = kCFUserNotificationAlertHeaderKey;
  sub_1000D9CBC(v22);
  swift_setDeallocating();
  sub_100095820(&qword_100384C48, &qword_1002D74F8);
  swift_arrayDestroy();
  type metadata accessor for CFString();
  sub_1000D9F68(&unk_100384C50, type metadata accessor for CFString, &unk_1002D75B4);
  v28 = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = CFUserNotificationCreate(kCFAllocatorSystemDefault, 0.0, 3uLL, &error, v28);

  if (v29)
  {
    responseFlags[0] = 0;
    CFUserNotificationReceiveResponse(v29, 0.0, responseFlags);
    if ((responseFlags[0] & 3) == 0)
    {
      sub_1000D9178(v7, v6, v23, object);
    }
  }

  else
  {
    if (qword_100390640 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10009597C(v31, qword_100390648);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      swift_beginAccess();
      *(v34 + 4) = error;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to create notification %d", v34, 8u);
    }
  }
}

Swift::Void __swiftcall KTTapToRadar.sasTTR(withTitle:description:relatedRadar:unique:handle:pushToken:)(Swift::String withTitle, Swift::String description, NSNumber relatedRadar, Swift::String unique, Swift::String handle, Swift::String_optional pushToken)
{
  countAndFlagsBits = handle._countAndFlagsBits;
  v32 = description._countAndFlagsBits;
  object = unique._object;
  v8 = unique._countAndFlagsBits;
  isa = relatedRadar.super.super.isa;
  v9 = description._object;
  v10 = withTitle._object;
  v11 = withTitle._countAndFlagsBits;
  v12 = type metadata accessor for SASTTR(0);
  __chkstk_darwin(v12);
  v14 = (&countAndFlagsBits - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v6 + OBJC_IVAR____TtC13transparencyd12KTTapToRadar_ttrConfig);
  aBlock = v8;
  v35 = object;
  v16 = *(*v15 + 200);

  LOBYTE(v16) = v16(&aBlock);

  if (v16)
  {
    sub_10008F3B0(v14);

    *v14 = v8;
    v14[1] = object;

    v14[2] = v11;
    v14[3] = v10;

    v17 = isa;
    v14[4] = v32;
    v14[5] = v9;
    v14[6] = [(objc_class *)v17 longLongValue];
    sub_1000D9F68(&unk_100384C30, type metadata accessor for SASTTR, &unk_1002D5928);
    v23 = pushToken.value._object;
    v24 = Message.serializedData(partial:)();
    v26 = v25;
    v27.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v28 = String._bridgeToObjectiveC()();
    if (pushToken.value._object)
    {
      v23 = String._bridgeToObjectiveC()();
    }

    v29 = objc_opt_self();
    v38 = sub_1000D8400;
    v39 = 0;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100099654;
    v37 = &unk_100320AF0;
    v30 = _Block_copy(&aBlock);
    [v29 sasTTR:v27.super.isa toHandle:v28 pushToken:v23 complete:v30];
    _Block_release(v30);

    sub_1000956CC(v24, v26);
    sub_1000D911C(v14);
  }

  else
  {
    v18 = v11;
    if (qword_100390640 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10009597C(v19, qword_100390648);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_1000999E4(v8, object, &aBlock);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1000999E4(v18, v10, &aBlock);
      _os_log_impl(&_mh_execute_header, v20, v21, "Unique not approved: %{public}s - %s", v22, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_1000D8400(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100390640 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10009597C(v1, qword_100390648);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138543362;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "sasttr failed with %{public}@", v3, 0xCu);
      sub_1000057C4(v4, &unk_100383290, &unk_1002D5BA0);
    }

    else
    {
    }
  }
}

id KTTapToRadar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTTapToRadar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000D87D4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ErrorDomainCode(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10008E7A8(a2);
  v8 = [a1 domain];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *a2 = v9;
  a2[1] = v11;
  v12 = [a1 code];
  v23 = a2;
  a2[2] = v12;
  v13 = [a1 underlyingErrors];
  sub_100095820(&qword_100382DD0, &unk_1002D7500);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    while (v16 < *(v14 + 16))
    {
      swift_errorRetain();
      v18 = _convertErrorToNSError(_:)();
      sub_1000D87D4(v18, v7);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1000D8C04(0, v17[2] + 1, 1, v17, &unk_100384CF8, &unk_1002D75F8, type metadata accessor for ErrorDomainCode);
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1000D8C04((v19 > 1), v20 + 1, 1, v17, &unk_100384CF8, &unk_1002D75F8, type metadata accessor for ErrorDomainCode);
      }

      ++v16;

      v17[2] = v20 + 1;
      sub_1000D9E70(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, type metadata accessor for ErrorDomainCode);
      if (v15 == v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_11:

    v21 = v23;

    v21[3] = v17;
  }
}

Swift::Int sub_1000D8B30(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D8B98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

void *sub_1000D8C04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100095820(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1000D8DE0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString();
  sub_1000D9F68(&unk_100384D20, type metadata accessor for CFString, &unk_1002D7588);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000D8E94(a1, v2);
}

unint64_t sub_1000D8E94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_1000D9F68(&unk_100384D20, type metadata accessor for CFString, &unk_1002D7588);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_1000D8FA0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC13transparencyd12KTTapToRadar_dataStore] = a1;
  *&v4[OBJC_IVAR____TtC13transparencyd12KTTapToRadar_configBag] = a2;
  sub_100095820(&qword_100384C20, &unk_1002D74E0);
  type metadata accessor for DewTypeStrings();
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = variable initialization expression of KTSwiftDB.db();
  *&v4[OBJC_IVAR____TtC13transparencyd12KTTapToRadar_ttrConfig] = sub_1000A6EA4(0x526F54706154544BLL, 0xEC00000072616461, v11, &_swiftEmptySetSingleton, v10, 0xD000000000000011, 0x800000010029B520);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for KTTapToRadar();
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_1000D90B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SASTTR(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D911C(uint64_t a1)
{
  v2 = type metadata accessor for SASTTR(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000D9178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a2;
  v80 = a3;
  v5 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v76 - v9;
  v83 = type metadata accessor for URLQueryItem();
  v10 = *(v83 - 8);
  v11 = __chkstk_darwin(v83);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v76 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v76 - v17;
  __chkstk_darwin(v16);
  v20 = &v76 - v19;
  v21 = sub_100095820(&qword_100384D08, &qword_1002D7608);
  __chkstk_darwin(v21 - 8);
  v23 = &v76 - v22;
  v85 = type metadata accessor for URLComponents();
  v24 = *(v85 - 8);
  __chkstk_darwin(v85);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() hasInternalDiagnostics])
  {
    v77 = a4;
    v78 = v10;
    v81 = v24;
    v76 = v8;
    if (qword_100390640 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10009597C(v27, qword_100390648);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "User tapped on 'Tap-to-Radar'... Attempting to open Tap-to-Radar.", v30, 2u);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URLComponents.init(string:)();

    v31 = v81;
    v32 = v85;
    if ((*(v81 + 48))(v23, 1, v85) == 1)
    {
      sub_1000057C4(v23, &qword_100384D08, &qword_1002D7608);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "TTR base URL didn't parse", v35, 2u);
      }
    }

    else
    {
      (*(v31 + 32))(v26, v23, v32);
      v37 = URLComponents.queryItems.modify();
      if (*v36)
      {
        v38 = v36;
        URLQueryItem.init(name:value:)();
        v39 = *v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v38 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_1000D8C04(0, v39[2] + 1, 1, v39, &qword_100384D10, &qword_1002D7610, &type metadata accessor for URLQueryItem);
          *v38 = v39;
        }

        v42 = v39[2];
        v41 = v39[3];
        v43 = v84;
        if (v42 >= v41 >> 1)
        {
          v39 = sub_1000D8C04((v41 > 1), v42 + 1, 1, v39, &qword_100384D10, &qword_1002D7610, &type metadata accessor for URLQueryItem);
          *v38 = v39;
        }

        v39[2] = v42 + 1;
        v44 = v20;
        v45 = v83;
        (*(v78 + 32))(v39 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v42, v44, v83);
        v37(v86, 0);
      }

      else
      {
        v37(v86, 0);
        v45 = v83;
        v43 = v84;
      }

      v47 = URLComponents.queryItems.modify();
      if (*v46)
      {
        v48 = v46;
        URLQueryItem.init(name:value:)();
        v49 = *v48;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        *v48 = v49;
        if ((v50 & 1) == 0)
        {
          v49 = sub_1000D8C04(0, v49[2] + 1, 1, v49, &qword_100384D10, &qword_1002D7610, &type metadata accessor for URLQueryItem);
          *v48 = v49;
        }

        v52 = v49[2];
        v51 = v49[3];
        if (v52 >= v51 >> 1)
        {
          v49 = sub_1000D8C04((v51 > 1), v52 + 1, 1, v49, &qword_100384D10, &qword_1002D7610, &type metadata accessor for URLQueryItem);
          *v48 = v49;
        }

        v49[2] = v52 + 1;
        (*(v78 + 32))(v49 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v52, v18, v45);
        v47(v86, 0);
      }

      else
      {
        v47(v86, 0);
      }

      v54 = URLComponents.queryItems.modify();
      if (*v53)
      {
        v55 = v53;
        URLQueryItem.init(name:value:)();
        v56 = *v55;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        *v55 = v56;
        if ((v57 & 1) == 0)
        {
          v56 = sub_1000D8C04(0, v56[2] + 1, 1, v56, &qword_100384D10, &qword_1002D7610, &type metadata accessor for URLQueryItem);
          *v55 = v56;
        }

        v59 = v56[2];
        v58 = v56[3];
        if (v59 >= v58 >> 1)
        {
          v56 = sub_1000D8C04((v58 > 1), v59 + 1, 1, v56, &qword_100384D10, &qword_1002D7610, &type metadata accessor for URLQueryItem);
          *v55 = v56;
        }

        v56[2] = v59 + 1;
        (*(v78 + 32))(v56 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v59, v15, v45);
        v54(v86, 0);
      }

      else
      {
        v54(v86, 0);
      }

      v61 = URLComponents.queryItems.modify();
      v62 = v82;
      if (*v60)
      {
        v63 = v60;
        URLQueryItem.init(name:value:)();
        v64 = *v63;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *v63 = v64;
        if ((v65 & 1) == 0)
        {
          v64 = sub_1000D8C04(0, v64[2] + 1, 1, v64, &qword_100384D10, &qword_1002D7610, &type metadata accessor for URLQueryItem);
          *v63 = v64;
        }

        v67 = v64[2];
        v66 = v64[3];
        if (v67 >= v66 >> 1)
        {
          v64 = sub_1000D8C04((v66 > 1), v67 + 1, 1, v64, &qword_100384D10, &qword_1002D7610, &type metadata accessor for URLQueryItem);
          *v63 = v64;
        }

        v64[2] = v67 + 1;
        (*(v78 + 32))(v64 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v67, v62, v45);
        v61(v86, 0);
      }

      else
      {
        v61(v86, 0);
      }

      URLComponents.url.getter();
      v68 = [objc_opt_self() defaultWorkspace];
      if (v68)
      {
        v69 = v68;
        v70 = v76;
        sub_1000AB050(v43, v76, &qword_100382DC0, &unk_1002D5BC0);
        v71 = type metadata accessor for URL();
        v72 = *(v71 - 8);
        v74 = 0;
        if ((*(v72 + 48))(v70, 1, v71) != 1)
        {
          URL._bridgeToObjectiveC()(v73);
          v74 = v75;
          (*(v72 + 8))(v70, v71);
        }

        [v69 openSensitiveURL:v74 withOptions:{0, v76, v77}];

        sub_1000057C4(v43, &qword_100382DC0, &unk_1002D5BC0);
        (*(v81 + 8))(v26, v85);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_1000D9CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384D18, &qword_1002D7618);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000AB050(v4, &v11, &qword_100384C48, &qword_1002D74F8);
      v5 = v11;
      result = sub_1000D8DE0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10009C6AC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void type metadata accessor for CFString()
{
  if (!qword_100384CE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100384CE8);
    }
  }
}

uint64_t sub_1000D9E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D9E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D9F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D9FB0()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_1003907E8);
  sub_10009597C(v0, qword_1003907E8);
  return Logger.init(transparencyCategory:)(0x63657264756F6C63, 0xEC0000007364726FLL);
}

uint64_t sub_1000DA0B0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000DA110(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000DA1A8;
}

void sub_1000DA1A8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *KTCloudRecords.__allocating_init(context:zone:database:hostInfo:delegate:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = objc_allocWithZone(v7);
  v13 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_types;
  *&v12[v13] = sub_1000E2D24(_swiftEmptyArrayStorage);
  swift_unknownObjectWeakInit();
  v14 = objc_allocWithZone(CKRecordZoneID);
  v15 = CKCurrentUserDefaultName;
  v16 = String._bridgeToObjectiveC()();

  v17 = [v14 initWithZoneName:v16 ownerName:v15 databaseScope:2];

  v36 = type metadata accessor for KTCloudDevice();
  swift_unknownObjectRetain();
  v18 = a1;
  v19 = v17;
  swift_unknownObjectRetain();
  v20 = sub_1000AC4F0(v18, v19, a5, a6);
  v35 = type metadata accessor for KTCloudOptIn();
  v21 = v18;
  v22 = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = a4;
  v24 = sub_1000BFE68(v21, v22, v23, a5, a6);
  v34 = type metadata accessor for KTCloudStaticKey();
  v25 = v21;
  v26 = v22;
  swift_unknownObjectRetain();
  v27 = sub_1000EC180(v25, v26, a6);
  *&v12[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_context] = v25;
  *&v12[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_zoneID] = v26;
  *&v12[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_hostInfo] = a5;
  *&v12[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice] = v20;
  *&v12[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn] = v24;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_database] = v23;
  v42.receiver = v12;
  v42.super_class = v37;
  v28 = v25;
  v38 = v26;
  swift_unknownObjectRetain();
  v29 = v23;

  v30 = objc_msgSendSuper2(&v42, "init");
  v40 = v36;
  v41 = &off_100384030;
  v39[0] = v20;
  v31 = *((swift_isaMask & *v30) + 0x190);

  v32 = v30;
  v31(v39);
  sub_10009A9E8(v39);
  v40 = v35;
  v41 = &off_1003846F8;
  v39[0] = v24;

  v31(v39);
  sub_10009A9E8(v39);
  v40 = v34;
  v41 = &off_1003851D0;
  v39[0] = v27;

  v31(v39);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10009A9E8(v39);
  return v32;
}

void *KTCloudRecords.init(context:zone:database:hostInfo:delegate:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1000E2FB0(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t KTCloudRecords.disableKTSyncabledKVSStore.getter(uint64_t a1, uint64_t a2)
{
  v4[3] = &type metadata for TransparencyFeatureFlags;
  v4[4] = sub_1000E3338();
  LOBYTE(v4[0]) = 0;
  v2 = isFeatureEnabled(_:)();
  sub_10009A9E8(v4);
  return v2 & 1;
}

unint64_t KTCloudRecords.sysdiagnose()()
{
  v1 = (*(**(v0 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 280))();
  sub_100095820(&unk_100387750, &unk_1002D7630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D47B0;
  *(inited + 32) = 0x6E4974706FLL;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = sub_100095820(&unk_100384D80, &qword_1002D6E48);
  *(inited + 48) = v1;
  v3 = sub_1000BEA10(inited);
  swift_setDeallocating();
  sub_1000057C4(inited + 32, &qword_100384660, &qword_1002D7640);
  return v3;
}

uint64_t KTCloudRecords.cloudDeviceNeedUpdate(withPushToken:tbsRegistrationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice);
  v7 = *(v5 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_hostInfo);
  if (v7)
  {
    v8 = a1;
    v9 = a2;
    v10 = a4;
    v11 = a3;
    v12 = [v7 osVersion];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    a1 = v8;
    a2 = v9;
    a3 = v11;
    a4 = v10;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = (*(*v6 + 288))(a1, a2, a3, a4, v13, v15);

  return v16 & 1;
}

id KTCloudRecords.getOptInState(withUri:application:)()
{
  result = (*(**(v0 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 248))();
  if (!result)
  {
    if (qword_1003907E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10009597C(v2, qword_1003907E8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "no opt in records, defaulting to OFF", v5, 2u);
    }

    v6 = objc_allocWithZone(KTOptInState);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithApplication:v7 optIn:0];

    return v8;
  }

  return result;
}

id KTCloudRecords.getAggregateOptInState(forApplication:)()
{
  result = (*(**(v0 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 264))();
  if (!result)
  {
    if (qword_1003907E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10009597C(v2, qword_1003907E8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "no opt in records, defaulting to OFF", v5, 2u);
    }

    v6 = objc_allocWithZone(KTOptInState);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithApplication:v7 optIn:0];

    return v8;
  }

  return result;
}

Swift::Void __swiftcall KTCloudRecords.clearDataStore(_:)(Swift::Bool a1)
{
  v2 = a1;
  (*(**(v1 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 464))();
  (*(**(v1 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice) + 440))(v2);
}

Swift::Void __swiftcall KTCloudRecords.clearLocalCloudState()()
{
  v1 = v0;
  (*((swift_isaMask & *v0) + 0x160))(0);
  type metadata accessor for KTCKZone();
  v2 = sub_1000E3B0C(*(v0 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_context));
  v3 = [*(v1 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_zoneID) zoneName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  (*((swift_isaMask & *v2) + 0x80))(v4, v6);
}

Swift::Bool __swiftcall KTCloudRecords.havePendingRecords()()
{
  v1 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_types;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v21 = *(v0 + v1);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  for (i = 0; v8; result = sub_10009A9E8(v24))
  {
    v13 = v11;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(v21 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_1000AA520(*(v21 + 56) + 40 * v15, &v28);
    v27[0] = v18;
    v27[1] = v17;
    sub_1000AB050(v27, v22, &qword_100384D90, &qword_1002D7648);

    sub_1000AB038(&v23, v24);
    v19 = v25;
    v20 = v26;
    sub_1000A0E50(v24, v25);
    LOBYTE(v17) = (*(v20 + 56))(v19, v20);
    sub_1000057C4(v27, &qword_100384D90, &qword_1002D7648);
    i |= v17;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return i & 1;
    }

    v8 = *(v4 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *KTCloudRecords.pendingRecords()()
{
  v1 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_types;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v33 = _swiftEmptyArrayStorage;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v29 = v7;
  for (i = v2 + 64; v6; v8 = v9)
  {
    v9 = v8;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = (*(v2 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1000AA520(*(v2 + 56) + 40 * v10, &v32);
    v31[0] = v13;
    v31[1] = v12;

    sub_1000AB050(v31, v35, &qword_100384D90, &qword_1002D7648);

    sub_1000AB038(v36, v37);
    v14 = v38;
    v15 = v39;
    sub_1000A0E50(v37, v38);
    v16 = (*(v15 + 40))(v14, v15);
    *&v36[0] = v37;
    sub_1000DCE3C(sub_1000E3594, v35, v16);

    sub_1000DCFE8(v17, sub_1000E2964);
    if (qword_1003907E0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10009597C(v18, qword_1003907E8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
      v23 = v2;
      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_1000999E4(v24, v26, &v34);

      *(v21 + 4) = v27;
      v2 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "prepare pending records %s", v21, 0xCu);
      sub_10009A9E8(v22);
      v7 = v29;

      v3 = i;
    }

    else
    {
    }

    sub_10009A9E8(v37);
    v6 &= v6 - 1;
    sub_1000057C4(v31, &qword_100384D90, &qword_1002D7648);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v33;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_1000057C4(v31, &qword_100384D90, &qword_1002D7648);

  __break(1u);
  return result;
}

void *sub_1000DCE3C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000DCFE8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000E1BF4(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void KTCloudRecords.deletedRecords()()
{
  v1 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_types;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v34[5] = _swiftEmptyArrayStorage;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v26 = v2 + 64;
  v27 = v2;
  while (v6)
  {
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = (*(v2 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1000AA520(*(v2 + 56) + 40 * v10, v34);
    v33[0] = v13;
    v33[1] = v12;
    sub_1000AB050(v33, &v28, &qword_100384D90, &qword_1002D7648);

    sub_1000AB038(&v29, v30);
    v14 = v31;
    v15 = v32;
    sub_1000A0E50(v30, v31);
    (*(v15 + 48))(v14, v15);

    sub_1000DCFE8(v16, sub_1000E2B04);
    if (qword_1003907E0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10009597C(v17, qword_1003907E8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
      v22 = Array.description.getter();
      v24 = v23;

      v25 = sub_1000999E4(v22, v24, &v28);

      *(v20 + 4) = v25;
      v3 = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "prepare deleted records %s", v20, 0xCu);
      sub_10009A9E8(v21);
      v2 = v27;
    }

    else
    {
    }

    v6 &= v6 - 1;
    sub_10009A9E8(v30);
    sub_1000057C4(v33, &qword_100384D90, &qword_1002D7648);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Class sub_1000DD488(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  a3();

  sub_10009FDA0(0, a4, a5);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

uint64_t KTCloudRecords.cloudKitZones()()
{
  sub_100095820(&qword_100384A50, &qword_1002D7650);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002D6360;
  v2 = *(v0 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_zoneID);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

uint64_t sub_1000DD624(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1000A0E50(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v6 = v5;
  sub_1000AA520(a1, v8);
  swift_beginAccess();
  sub_1000DD6D8(v8, v4, v6);
  return swift_endAccess();
}

uint64_t sub_1000DD6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000AB038(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1000E22D8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1000057C4(a1, &qword_100384D98, &qword_1002D7658);
    sub_1000E1C94(a2, a3, v9);

    return sub_1000057C4(v9, &qword_100384D98, &qword_1002D7658);
  }

  return result;
}

double sub_1000DD7A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_types;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_1000E12FC(a1, a2, &String.hash(into:), sub_100005C68);
    if (v10)
    {
      sub_1000AA520(*(v8 + 56) + 40 * v9, a3);

      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

Swift::Bool __swiftcall KTCloudRecords.updatedRecord(withCkrecord:)(CKRecord withCkrecord)
{
  v3 = CKRecord.recordType.getter();
  v5 = v4;
  (*((swift_isaMask & *v1) + 0x198))(&v16);
  if (v17)
  {

    sub_1000AB038(&v16, v18);
    v6 = v19;
    v7 = v20;
    sub_1000A0E50(v18, v19);
    v8 = (*(v7 + 24))(withCkrecord.super.isa, v6, v7);
    sub_10009A9E8(v18);
  }

  else
  {
    sub_1000057C4(&v16, &qword_100384D98, &qword_1002D7658);
    if (qword_1003907E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10009597C(v9, qword_1003907E8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      v14 = sub_1000999E4(v3, v5, v18);

      *(v12 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "no store for ck record of type %s", v12, 0xCu);
      sub_10009A9E8(v13);
    }

    else
    {
    }

    v8 = 0;
  }

  return v8 & 1;
}

Swift::Void __swiftcall KTCloudRecords.deleteRecord(withCkrecord:)(CKRecord withCkrecord)
{
  v3 = CKRecord.recordType.getter();
  (*((swift_isaMask & *v1) + 0x198))(&v6, v3);

  if (v7)
  {
    sub_1000AB038(&v6, v8);
    v4 = v8[4];
    sub_1000A0E50(v8, v8[3]);
    v5 = [(objc_class *)withCkrecord.super.isa recordID];
    (*(v4 + 32))();

    sub_10009A9E8(v8);
  }

  else
  {
    sub_1000057C4(&v6, &qword_100384D98, &qword_1002D7658);
  }
}

Swift::Void __swiftcall KTCloudRecords.deleteRecordID(withCkrecordID:)(CKRecordID withCkrecordID)
{
  v2 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_types;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v20 = v3;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v20 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1000AA520(*(v20 + 56) + 40 * v12, v22);
    v21[0] = v15;
    v21[1] = v14;
    v17 = v23;
    v16 = v24;
    sub_1000A0E50(v22, v23);
    v18 = *(v16 + 32);

    v18(withCkrecordID.super.isa, v17, v16);
    sub_1000057C4(v21, &qword_100384D90, &qword_1002D7648);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall KTCloudRecords.unknownRecord(with:)(CKRecordID with)
{
  v2 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_types;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v20 = v3;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v20 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1000AA520(*(v20 + 56) + 40 * v12, v22);
    v21[0] = v15;
    v21[1] = v14;
    v17 = v23;
    v16 = v24;
    sub_1000A0E50(v22, v23);
    v18 = *(v16 + 72);

    v18(with.super.isa, v17, v16);
    sub_1000057C4(v21, &qword_100384D90, &qword_1002D7648);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall KTCloudRecords.recordUpdateCloudState(withType:records:newState:)(Swift::String withType, Swift::OpaquePointer records, Swift::String newState)
{
  object = newState._object;
  countAndFlagsBits = newState._countAndFlagsBits;
  (*((swift_isaMask & *v3) + 0x198))(&v9, withType._countAndFlagsBits, withType._object);
  if (v10)
  {
    sub_1000AB038(&v9, v11);
    v7 = v12;
    v8 = v13;
    sub_1000A0E50(v11, v12);
    (*(v8 + 64))(records._rawValue, countAndFlagsBits, object, v7, v8);
    sub_10009A9E8(v11);
  }

  else
  {
    sub_1000057C4(&v9, &qword_100384D98, &qword_1002D7658);
  }
}

uint64_t sub_1000DE30C(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_10009FDA0(0, &qword_100384DA0, NSKeyedUnarchiver_ptr);
    sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
    sub_100002D78(a1, a2);
    v5 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    sub_10009A9D4(a1, a2);
    return v5;
  }

  return result;
}

void *sub_1000DE3D4(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v8 = 0;
    v3 = v1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];
    v5 = v8;
    if (v4)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }

    else
    {
      v7 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      return 0;
    }
  }

  return result;
}

uint64_t KTCloudRecords.evaluateKTLogData(_:application:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = (*((swift_isaMask & *v3) + 0x138))();
  if (qword_1003907E0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10009597C(v8, qword_1003907E8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v11 = 136315394;
    sub_10009FDA0(0, &qword_100384AA0, KTOptInState_ptr);
    v12 = Array.description.getter();
    v14 = sub_1000999E4(v12, v13, &v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_100095820(&qword_100384DA8, &qword_1002D7660);
    v15 = Dictionary.description.getter();
    v17 = sub_1000999E4(v15, v16, &v27);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "KTCloudRecords: evaluateKTLogData: optInRecords: %s uriToSMT: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for KTOptIOValidator();

  v18 = KTOptIOValidator.__allocating_init(optInRecords:uriToSMT:)(v7, a1);
  v19 = (*(**(v4 + OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn) + 312))(a2, a3);
  if (v19 != 2)
  {
    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v20 & 1;
      _os_log_impl(&_mh_execute_header, v21, v22, "KTCloudRecords: intented state %{BOOL}d", v23, 8u);
    }

    (*((swift_isaMask & *v18) + 0xA0))(v20 & 1);
  }

  v24 = (*((swift_isaMask & *v18) + 0xB8))(a2, a3);

  return v24;
}

BOOL KTCloudRecords.enforceCKOptInRecords.getter(uint64_t a1, uint64_t a2)
{
  v4[3] = &type metadata for TransparencyFeatureFlags;
  v4[4] = sub_1000E3338();
  LOBYTE(v4[0]) = 1;
  v2 = isFeatureEnabled(_:)();
  sub_10009A9E8(v4);
  return (v2 & 1) == 0;
}

uint64_t sub_1000DEC98(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002D78(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_1000E33B0();
  dispatch thunk of IteratorProtocol.next()();
  if (v22)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v18 = xmmword_1002D47B0;
    do
    {
      v9 = v21;
      sub_100095820(&unk_100383140, &qword_1002D6BD0);
      v10 = swift_allocObject();
      *(v10 + 16) = v18;
      *(v10 + 56) = &type metadata for UInt8;
      *(v10 + 64) = &protocol witness table for UInt8;
      *(v10 + 32) = v9;
      v11 = String.init(format:_:)();
      v13 = v12;
      v19 = v7;
      v20 = v8;

      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      v7 = v19;
      v8 = v20;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v22 != 1);
  }

  (*(v17 + 8))(v6, v4);
  return v7;
}

uint64_t sub_1000DEF0C()
{
  v1 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_stateReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000DEFA4(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_stateReady;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000DF0EC()
{
  v1 = (v0 + OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_state);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1000DF1C0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_state);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000DF280@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000DF440@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_uploadedToCKAt;
  swift_beginAccess();
  return sub_1000AB050(v1 + v3, a1, &qword_100383FB0, &unk_1002D6690);
}

uint64_t sub_1000DF5E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_uploadedToCKAt;
  swift_beginAccess();
  sub_1000BECD4(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1000DF6A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_state];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_uploadedToCKAt;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  v9[OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_stateReady] = a1;
  swift_beginAccess();
  *v10 = a2;
  v10[1] = a3;
  swift_beginAccess();
  sub_1000E3408(a4, &v9[v11]);
  swift_endAccess();
  v15.receiver = v9;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_1000057C4(a4, &qword_100383FB0, &unk_1002D6690);
  return v13;
}

id sub_1000DF7D8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_state];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_uploadedToCKAt;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC13transparencyd25KTCloudRecordDeviceStatus_stateReady] = a1;
  swift_beginAccess();
  *v9 = a2;
  v9[1] = a3;
  swift_beginAccess();
  sub_1000E3408(a4, &v4[v10]);
  swift_endAccess();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for KTCloudRecordDeviceStatus(0);
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_1000057C4(a4, &qword_100383FB0, &unk_1002D6690);
  return v12;
}

unint64_t sub_1000DF96C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v26 = 0xD00000000000001BLL;
  v27 = 0x800000010029B630;
  v9 = (*((swift_isaMask & *v0) + 0x68))(v8);
  v10 = (v9 & 1) == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14 = 0xE100000000000000;
  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16 = (*((swift_isaMask & *v0) + 0x80))();
  if (v17)
  {
    v14 = v17;
  }

  else
  {
    v16 = 45;
  }

  v18 = v14;
  String.append(_:)(*&v16);

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  (*((swift_isaMask & *v0) + 0x98))();
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1000057C4(v7, &qword_100383FB0, &unk_1002D6690);
    v20 = 0xE300000000000000;
    v21 = 7104878;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_1000057C4(v7, &qword_100383FB0, &unk_1002D6690);
    v22 = Date.description.getter();
    v20 = v23;
    (*(v2 + 8))(v4, v1);
    v21 = v22;
  }

  v24 = v20;
  String.append(_:)(*&v21);

  return v26;
}

uint64_t sub_1000DFD68()
{
  v1 = OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_cachedAllEntries;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000DFDAC(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_cachedAllEntries;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000DFE68()
{
  v1 = v0 + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_uriVRFHash;
  swift_beginAccess();
  v2 = *v1;
  sub_1000A4A5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1000DFEC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_uriVRFHash);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10009A9D4(v6, v7);
}

double sub_1000DFF84()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1000DFFCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_deviceIDHash;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id KTCloudRecordsCache.__allocating_init(records:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_cachedAllEntries] = 0;
  v4 = &v3[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_uriVRFHash];
  *&v3[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_uriVRFHash] = xmmword_1002D7620;
  *&v3[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_records] = a1;
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = xmmword_1002D7620;
  swift_unknownObjectRetain();
  sub_10009A9D4(v5, v6);
  *&v3[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_deviceIDHash] = sub_1000E2E80(_swiftEmptyArrayStorage);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, "init");
  swift_unknownObjectRelease();
  return v7;
}

id KTCloudRecordsCache.init(records:)(uint64_t a1)
{
  v1[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_cachedAllEntries] = 0;
  v2 = &v1[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_uriVRFHash];
  *&v1[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_uriVRFHash] = xmmword_1002D7620;
  *&v1[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_records] = a1;
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *v2 = xmmword_1002D7620;
  swift_unknownObjectRetain();
  sub_10009A9D4(v3, v4);
  *&v1[OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_deviceIDHash] = sub_1000E2E80(_swiftEmptyArrayStorage);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for KTCloudRecordsCache();
  v5 = objc_msgSendSuper2(&v7, "init");
  swift_unknownObjectRelease();
  return v5;
}

uint64_t KTCloudRecordsCache.setWithUriVRFHash(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x90);
  sub_100002D78(a1, a2);
  v5(a1, a2);
  v6 = sub_1000E2E80(_swiftEmptyArrayStorage);
  v7 = *((swift_isaMask & *v2) + 0xA8);

  return v7(v6);
}

id sub_1000E0644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *(v5 + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_records);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v7 *a5];

  return v10;
}

uint64_t KTCloudRecordsCache.fetchSyncedLoggableData(byDeviceIdHash:)(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *v2) + 0xA0);
  v7 = v6();
  if (!*(v7 + 16) || (v8 = sub_1000E12FC(a1, a2, &Data.hash(into:), sub_1000E1390), (v9 & 1) == 0))
  {

    if ((*((swift_isaMask & *v3) + 0x70))(v10))
    {
      if (qword_1003907E0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_28;
    }

    (*((swift_isaMask & *v3) + 0x78))(1);
    if (qword_1003907E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10009597C(v15, qword_1003907E8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "pulling all devices from CloudRecords for this account", v18, 2u);
    }

    v19 = [*(v3 + OBJC_IVAR____TtC13transparencyd19KTCloudRecordsCache_records) cloudKTDevices];
    sub_10009FDA0(0, &qword_100384DF8, KTLoggableData_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (v21)
      {
LABEL_14:
        v31 = v6;
        v32 = a1;
        v33 = a2;
        v22 = 0;
        a2 = v20 & 0xC000000000000001;
        v6 = (v20 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (a2)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v23 = *(v20 + 8 * v22 + 32);
          }

          a1 = v23;
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          (*((swift_isaMask & *v3) + 0xE8))(v23);

          ++v22;
          if (v24 == v21)
          {

            a1 = v32;
            a2 = v33;
            v6 = v31;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        swift_once();
LABEL_5:
        v11 = type metadata accessor for Logger();
        sub_10009597C(v11, qword_1003907E8);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "already cached, skipping refetch", v14, 2u);
        }

LABEL_22:
        v7 = v6();
        if (*(v7 + 16))
        {
          v8 = sub_1000E12FC(a1, a2, &Data.hash(into:), sub_1000E1390);
          if (v25)
          {
            goto LABEL_24;
          }
        }

        return 0;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_14;
      }
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "no records", v29, 2u);
    }

    return 0;
  }

LABEL_24:
  v26 = *(*(v7 + 56) + 8 * v8);

  return v26;
}

void sub_1000E0C60(void *a1)
{
  v3 = [a1 deviceID];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    (*((swift_isaMask & *v1) + 0xF0))(a1);
    if (qword_1003907E0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10009597C(v8, qword_1003907E8);
    sub_100002D78(v5, v7);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    sub_1000956CC(v5, v7);

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_1000DEC98(v5, v7);
      v15 = sub_1000999E4(v13, v14, &v25);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = [v9 deviceIdHash];
      if (v16)
      {
        v17 = v16;
        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = sub_1000DEC98(v18, v20);
        v23 = v22;
        sub_1000956CC(v18, v20);
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = sub_1000999E4(v21, v23, &v25);

      *(v12 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v10, v11, "Adding device %s with hash: %s", v12, 0x16u);
      swift_arrayDestroy();

      sub_1000956CC(v5, v7);
    }

    else
    {

      sub_1000956CC(v5, v7);
    }
  }
}

uint64_t sub_1000E0F1C(void *a1)
{
  v2 = v1;
  result = (*((swift_isaMask & *v1) + 0x88))();
  if (v5 >> 60 != 15)
  {
    v6 = result;
    v7 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [a1 computeHashesForSalt:isa];

    v9 = [a1 deviceIdHash];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = (*((swift_isaMask & *v2) + 0xA0))();
      if (*(v14 + 16) && (v15 = sub_1000E12FC(v11, v13, &Data.hash(into:), sub_1000E1390), (v16 & 1) != 0))
      {
        v17 = *(*(v14 + 56) + 8 * v15);
      }

      else
      {
        v17 = _swiftEmptyArrayStorage;
      }

      v27 = v17;
      v18 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 = v27;
      v20 = *((swift_isaMask & *v2) + 0xB0);
      sub_100002D78(v11, v13);
      v21 = v20(v26);
      v23 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v23;
      *v23 = 0x8000000000000000;
      sub_1000E247C(v19, v11, v13, isUniquelyReferenced_nonNull_native);
      sub_1000956CC(v11, v13);
      *v23 = v25;
      v21(v26, 0);
      sub_10009A9D4(v6, v7);
      return sub_1000956CC(v11, v13);
    }

    else
    {

      return sub_10009A9D4(v6, v7);
    }
  }

  return result;
}

id sub_1000E1264(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000E12FC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

uint64_t sub_1000E1390(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_100002D78(v17, v16);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      __DataStorage._length.getter();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = __DataStorage._length.getter();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = __DataStorage._length.getter();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_100002D78(v17, v16);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = __DataStorage._length.getter();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_100002D78(v17, v16);
    v29 = __DataStorage._bytes.getter();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_1000956CC(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_100002D78(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = __DataStorage._length.getter();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = __DataStorage._length.getter();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = __DataStorage._length.getter();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_1000956CC(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_1000956CC(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_100002D78(v17, v16);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = __DataStorage._length.getter();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_100002D78(v17, v16);
  v51 = __DataStorage._bytes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  __DataStorage._length.getter();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

uint64_t sub_1000E1BF4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

double sub_1000E1C94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000E12FC(a1, a2, &String.hash(into:), sub_100005C68);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000E264C();
      v10 = v12;
    }

    sub_1000AB038((*(v10 + 56) + 40 * v8), a3);
    sub_1000A8EAC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

Swift::Int sub_1000E1D68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&unk_100384F58, &unk_1002D7728);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1000AB038(v24, v34);
      }

      else
      {
        sub_1000AA520(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000AB038(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000E202C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100384F50, &qword_1002D7720);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v30 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_100002D78(v30, *(*(v5 + 48) + 16 * v20 + 8));
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v16 = v30;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v16 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1000E22D8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000E12FC(a2, a3, &String.hash(into:), sub_100005C68);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000E264C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000E1D68(v16, a4 & 1);
    v11 = sub_1000E12FC(a2, a3, &String.hash(into:), sub_100005C68);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_10009A9E8(v22);

    sub_1000AB038(a1, v22);
  }

  else
  {
    sub_1000A9354(v11, a2, a3, a1, v21);
  }
}

void sub_1000E247C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000E12FC(a2, a3, &Data.hash(into:), sub_1000E1390);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000E202C(v16, a4 & 1);
      v11 = sub_1000E12FC(a2, a3, &Data.hash(into:), sub_1000E1390);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1000E27F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;

  sub_100002D78(a2, a3);
}

void sub_1000E264C()
{
  v1 = v0;
  sub_100095820(&unk_100384F58, &unk_1002D7728);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1000AA520(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000AB038(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1000E27F4()
{
  v1 = v0;
  sub_100095820(&qword_100384F50, &qword_1002D7720);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100002D78(v19, *(&v19 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

uint64_t sub_1000E2964(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100096AEC(&unk_100384F80, &qword_100384F78, &unk_1002D7740);
          for (i = 0; i != v6; ++i)
          {
            sub_100095820(&qword_100384F78, &unk_1002D7740);
            v9 = sub_1000E2CA4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E2B04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100096AEC(&qword_100384F70, &qword_100384F68, &qword_1002D7738);
          for (i = 0; i != v6; ++i)
          {
            sub_100095820(&qword_100384F68, &qword_1002D7738);
            v9 = sub_1000CD5AC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000E2CA4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000E3610;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000E2D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&unk_100384F58, &unk_1002D7728);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000AB050(v4, &v13, &unk_100384F90, qword_1002D7750);
      v5 = v13;
      v6 = v14;
      result = sub_1000E12FC(v13, v14, &String.hash(into:), sub_100005C68);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000AB038(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1000E2E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100384F50, &qword_1002D7720);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_100002D78(v5, v6);

      result = sub_1000E12FC(v5, v6, &Data.hash(into:), sub_1000E1390);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_1000E2FB0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = OBJC_IVAR____TtC13transparencyd14KTCloudRecords_types;
  *&v6[v12] = sub_1000E2D24(_swiftEmptyArrayStorage);
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(CKRecordZoneID);
  v14 = CKCurrentUserDefaultName;
  v15 = String._bridgeToObjectiveC()();

  v16 = [v13 initWithZoneName:v15 ownerName:v14 databaseScope:2];

  v36 = type metadata accessor for KTCloudDevice();
  swift_unknownObjectRetain();
  v17 = a1;
  v18 = v16;
  swift_unknownObjectRetain();
  v19 = sub_1000AC4F0(v17, v18, a5, a6);
  v35 = type metadata accessor for KTCloudOptIn();
  v20 = v17;
  v21 = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = a4;
  v23 = sub_1000BFE68(v20, v21, v22, a5, a6);
  v34 = type metadata accessor for KTCloudStaticKey();
  v24 = v20;
  v25 = v21;
  swift_unknownObjectRetain();
  v26 = sub_1000EC180(v24, v25, a6);
  *&v7[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_context] = v24;
  *&v7[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_zoneID] = v25;
  *&v7[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_hostInfo] = a5;
  *&v7[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudDevice] = v19;
  *&v7[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_cloudOptIn] = v23;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC13transparencyd14KTCloudRecords_database] = v22;
  v40.receiver = v7;
  v40.super_class = type metadata accessor for KTCloudRecords();
  v27 = v24;
  v28 = v25;
  swift_unknownObjectRetain();
  v29 = v22;

  v30 = objc_msgSendSuper2(&v40, "init");
  v38 = v36;
  v39 = &off_100384030;
  v37[0] = v19;
  v31 = *((swift_isaMask & *v30) + 0x190);

  v32 = v30;
  v31(v37);
  sub_10009A9E8(v37);
  v38 = v35;
  v39 = &off_1003846F8;
  v37[0] = v23;

  v31(v37);
  sub_10009A9E8(v37);
  v38 = v34;
  v39 = &off_1003851D0;
  v37[0] = v26;

  v31(v37);

  sub_10009A9E8(v37);
  return v32;
}

unint64_t sub_1000E3338()
{
  result = qword_100384D70;
  if (!qword_100384D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384D70);
  }

  return result;
}

unint64_t sub_1000E33B0()
{
  result = qword_100384DB0;
  if (!qword_100384DB0)
  {
    type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100384DB0);
  }

  return result;
}

uint64_t sub_1000E3408(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for KTCloudRecordDeviceStatus(uint64_t a1)
{
  result = qword_100390800;
  if (!qword_100390800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E34F0(uint64_t a1)
{
  sub_1000B7104(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000E3594@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = v4[3];
  v7 = v4[4];
  sub_1000A0E50(v4, v6);
  result = (*(v7 + 80))(v5, v6, v7);
  *a2 = result;
  return result;
}

uint64_t sub_1000E3620()
{
  swift_beginAccess();
  v0 = qword_100384FA0;

  return v0;
}

uint64_t sub_1000E36EC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_100384FA0 = a1;
  off_100384FA8 = a2;
}

uint64_t sub_1000E3814()
{
  result = [*(v0 + OBJC_IVAR____TtC13transparencyd25KTFixupRegistrationUpload_deps) cloudRecords];
  if (result)
  {
    v2 = result;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v4 = Data._bridgeToObjectiveC()().super.isa;
    v5 = [v2 fetchSyncedLoggableDataWithPushToken:isa tbsRegistrationData:v4];
    swift_unknownObjectRelease();

    if (v5)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1000E38E8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13transparencyd25KTFixupRegistrationUpload_deps] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1000E3938(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13transparencyd25KTFixupRegistrationUpload_deps] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for KTFixupRegistrationUpload();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1000E3A54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTFixupRegistrationUpload();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E3A98()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_100390818);
  sub_10009597C(v0, qword_100390818);
  return Logger.init(transparencyCategory:)(0x656E6F5A4B43544BLL, 0xE800000000000000);
}

id sub_1000E3B0C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13transparencyd8KTCKZone_context] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1000E3B5C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13transparencyd8KTCKZone_context] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for KTCKZone();
  return objc_msgSendSuper2(&v3, "init");
}

void *sub_1000E3C18(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = *((swift_isaMask & *v2) + 0x78);

  v6(a1, a2, sub_1000E3D04, v5);

  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = v7;

  return v7;
}

uint64_t sub_1000E3D04(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = [a1 serverChangeToken];
    if (v3)
    {
      v4 = v3;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      sub_10009FDA0(0, &qword_100384DA0, NSKeyedUnarchiver_ptr);
      sub_10009FDA0(0, &qword_100385130, CKServerChangeToken_ptr);
      v8 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      sub_1000956CC(v5, v7);
      swift_beginAccess();
      v9 = *(v2 + 16);
      *(v2 + 16) = v8;
    }
  }

  return 0;
}

uint64_t sub_1000E3E00(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v8 = *((swift_isaMask & *v3) + 0x78);
  v9 = a3;
  v8(a1, a2, sub_1000E3EC8, v7);
}

uint64_t sub_1000E3EC8(id a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = objc_opt_self();
    v14 = 0;
    v5 = v3;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
    v7 = v14;
    if (!v6)
    {
      v12 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      return 0;
    }

    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (a1)
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      [a1 setServerChangeToken:isa];

      sub_1000956CC(v8, v10);
    }

    else
    {

      sub_1000956CC(v8, v10);
    }
  }

  else if (a1)
  {
    [a1 setServerChangeToken:0];
  }

  return 1;
}

uint64_t sub_1000E4008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC13transparencyd8KTCKZone_context);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000E418C;
  *(v11 + 24) = v10;
  v14[4] = sub_1000A040C;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10009EB40;
  v14[3] = &unk_100320C38;
  v12 = _Block_copy(v14);

  [v9 performBlockAndWait:v12];
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void sub_1000E418C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D47B0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10009FD4C();
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  v6 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v6];

  v53 = 0;
  v7 = [v4 execute:&v53];
  v8 = v53;
  if (!v7)
  {
    v27 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  v9 = v7;
  sub_10009FDA0(0, &qword_100385128, &off_1003158A0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v8;

  v12 = v10 >> 62;
  if (v10 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v50 = v4;
  v51 = v3;

  v14 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v10 + 8 * v14 + 32);
    }

    v16 = v15;
    ++v14;
    sub_100095820(&qword_100383F98, &qword_1002D6B40);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002D47B0;
    v53 = 0x203A73656E6F7ALL;
    v54 = 0xE700000000000000;
    v18 = [v16 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = v53;
    v24 = v54;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = v23;
    *(v17 + 40) = v24;
    print(_:separator:terminator:)();
  }

  while (v13 != v14);

  v3 = v51;
  v12 = v10 >> 62;
  v4 = v50;
LABEL_11:
  if (!v12)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_13:
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v25 = *(v10 + 32);
    goto LABEL_16;
  }

LABEL_49:
  v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v26 = v25;

LABEL_21:
  if (qword_100390810 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10009597C(v28, qword_100390818);
  v29 = v26;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v52 = v3;
    v32 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v32 = 136315650;
    v33 = v4;
    if (v26)
    {
      v34 = [v29 name];
      if (v34)
      {
        v35 = v34;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
      }

      else
      {
        v38 = 0xE100000000000000;
        v36 = 45;
      }

      v42 = sub_1000999E4(v36, v38, &v53);

      *(v32 + 4) = v42;
      *(v32 + 12) = 2080;
      v43 = [v29 zoneCreated];
      if (v43)
      {
        v39 = 1702195828;
      }

      else
      {
        v39 = 0x65736C6166;
      }

      if (v43)
      {
        v40 = 0xE400000000000000;
      }

      else
      {
        v40 = 0xE500000000000000;
      }
    }

    else
    {
      v39 = 45;
      v40 = 0xE100000000000000;
      v41 = sub_1000999E4(45, 0xE100000000000000, &v53);

      *(v32 + 4) = v41;
      *(v32 + 12) = 2080;
    }

    v44 = sub_1000999E4(v39, v40, &v53);

    *(v32 + 14) = v44;
    *(v32 + 22) = 2080;
    if (v26)
    {
      v45 = [v29 zoneSubscribed];
      v46 = v45 == 0;
      if (v45)
      {
        v47 = 1702195828;
      }

      else
      {
        v47 = 0x65736C6166;
      }

      if (v46)
      {
        v48 = 0xE500000000000000;
      }

      else
      {
        v48 = 0xE400000000000000;
      }
    }

    else
    {
      v48 = 0xE100000000000000;
      v47 = 45;
    }

    v49 = sub_1000999E4(v47, v48, &v53);

    *(v32 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v30, v31, "fetched zone: %s %s %s", v32, 0x20u);
    swift_arrayDestroy();

    v3 = v52;
    v4 = v33;
  }

  else
  {
  }

  v3(v26);
}

uint64_t sub_1000E478C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E47A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC13transparencyd8KTCKZone_context];
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v4;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000E4930;
  *(v11 + 24) = v10;
  v16[4] = sub_1000A0E98;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10009EB40;
  v16[3] = &unk_100320CB0;
  v12 = _Block_copy(v16);

  v13 = v4;

  [v9 performBlockAndWait:v12];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1000E4930()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D47B0;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10009FD4C();
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;

  v7 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v7];

  v28 = 0;
  v8 = [v5 execute:&v28];
  v9 = v28;
  if (!v8)
  {
    v14 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_11:
    v15 = [objc_allocWithZone(CloudZone) initWithContext:*(v3 + OBJC_IVAR____TtC13transparencyd8KTCKZone_context)];
    if (!v15)
    {
      v4();

      return;
    }

    v9 = v15;
    v16 = String._bridgeToObjectiveC()();
    [v9 setName:v16];

LABEL_13:
    v1 = v9;
    v17 = (v4)(v9);

    if ((v17 & 1) == 0)
    {

      return;
    }

    if (qword_100390810 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v10 = v8;
  sub_10009FDA0(0, &qword_100385128, &off_1003158A0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v9;

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);
LABEL_7:
    v9 = v13;

    goto LABEL_13;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_15:
  v18 = type metadata accessor for Logger();
  sub_10009597C(v18, qword_100390818);
  v19 = v1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v9;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "saving zone: %@", v22, 0xCu);
    sub_1000A4AD8(v23);
  }

  v25 = *(v3 + OBJC_IVAR____TtC13transparencyd8KTCKZone_context);
  v28 = 0;
  if ([v25 save:&v28])
  {
    v26 = v28;
  }

  else
  {
    v27 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000E4D40(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC13transparencyd8KTCKZone_context];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000E4EB8;
  *(v7 + 24) = v6;
  v12[4] = sub_1000A0E98;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10009EB40;
  v12[3] = &unk_100320D28;
  v8 = _Block_copy(v12);

  v9 = v2;

  [v5 performBlockAndWait:v8];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1000E4EB8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D47B0;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10009FD4C();
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;

  v8 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v8];

  v9 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v6];
  v10 = *(v3 + OBJC_IVAR____TtC13transparencyd8KTCKZone_context);
  v17 = 0;
  v11 = [v10 executeRequest:v9 error:&v17];
  if (v11)
  {
    v12 = v11;
    v13 = v17;
  }

  else
  {
    v14 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v17 = 0;
  if ([v10 save:&v17])
  {
    v15 = v17;
  }

  else
  {
    v16 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v6 = v9;
  }
}

void *sub_1000E5188()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd11KTZoneSetup_ckdatabase);
  v2 = v1;
  return v1;
}

uint64_t KTZoneSetup.initialFetch.getter()
{
  v1 = OBJC_IVAR____TtC13transparencyd11KTZoneSetup_initialFetch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t KTZoneSetup.initialFetch.setter(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd11KTZoneSetup_initialFetch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id KTZoneSetup.__allocating_init(ckdatabase:analytics:context:zoneCreate:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_initialFetch] = 0;
  *&v9[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_ckdatabase] = a1;
  *&v9[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_analytics] = a2;
  *&v9[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_zoneCreate] = a4;
  v10 = type metadata accessor for KTCKZone();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC13transparencyd8KTCKZone_context] = a3;
  v18.receiver = v11;
  v18.super_class = v10;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  *&v9[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_zoneHandler] = objc_msgSendSuper2(&v18, "init");
  v17.receiver = v9;
  v17.super_class = v4;
  v15 = objc_msgSendSuper2(&v17, "init");

  return v15;
}

id KTZoneSetup.init(ckdatabase:analytics:context:zoneCreate:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_1000E7118(a1, a2, a3, a4);

  return v7;
}

Swift::Void __swiftcall KTZoneSetup.groupStart()()
{
  v1 = *&v0[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_ckdatabase];
  if (v1)
  {
    v90 = swift_allocObject();
    v83 = v1;
    v82 = _swiftEmptyArrayStorage;
    *(v90 + 16) = sub_1000E71E4(_swiftEmptyArrayStorage);
    v84 = v90 + 16;
    v2 = *&v0[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_zoneCreate];
    v91 = v0;
    if (v2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      v85 = OBJC_IVAR____TtC13transparencyd11KTZoneSetup_zoneHandler;
      v86 = i;
      v88 = v2 & 0xFFFFFFFFFFFFFF8;
      v89 = v2 & 0xC000000000000001;
      v87 = v2;
      while (1)
      {
        if (v89)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v88 + 16))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v7 = [v5 zoneName];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11 = *&v91[v85];
        v12 = swift_allocObject();
        v12[2] = v8;
        v12[3] = v10;
        v12[4] = v91;
        v12[5] = v90;
        v12[6] = v6;
        v13 = *((swift_isaMask & *v11) + 0x70);

        v14 = v91;

        v15 = v6;
        v13(v8, v10, sub_1000E7310, v12);

        v2 = v87;

        v92 = ++v4;
        if (v4 == v86)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
    swift_beginAccess();
    if (!*(*v84 + 16))
    {
      if (qword_100390810 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_10009597C(v53, qword_100390818);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "no zones to create", v56, 2u);
      }

      v49.super.super.super.super.isa = v83;
      goto LABEL_75;
    }

    v16 = [objc_allocWithZone(KTResultOperation) init];
    [v91 dependOnBeforeGroupFinished:v16];
    v17 = *v84;
    aBlock[0] = _swiftEmptyArrayStorage;
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    if (!v20)
    {
      goto LABEL_21;
    }

    do
    {
LABEL_19:
      while (1)
      {
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v25 = *(*(v17 + 56) + 24 * (v24 | (v22 << 6)));
        if (v25)
        {
          break;
        }

        if (!v20)
        {
          goto LABEL_21;
        }
      }

      v27 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = aBlock[0];
    }

    while (v20);
    while (1)
    {
LABEL_21:
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v26 >= v21)
      {
        break;
      }

      v20 = *(v17 + 64 + 8 * v26);
      ++v22;
      if (v20)
      {
        v22 = v26;
        goto LABEL_19;
      }
    }

    v28 = *v84;
    aBlock[0] = _swiftEmptyArrayStorage;
    v29 = 1 << *(v28 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v28 + 64);
    v32 = (v29 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v33 = 0;
    if (!v31)
    {
      goto LABEL_34;
    }

    do
    {
LABEL_32:
      while (1)
      {
        v34 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v35 = *(*(v28 + 56) + 24 * (v34 | (v33 << 6)) + 8);
        if (v35)
        {
          break;
        }

        if (!v31)
        {
          goto LABEL_34;
        }
      }

      v37 = v35;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v92 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v82 = aBlock[0];
    }

    while (v31);
LABEL_34:
    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v36 >= v32)
      {
        v92 = v16;

        if (qword_100390810 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_43;
      }

      v31 = *(v28 + 64 + 8 * v36);
      ++v33;
      if (v31)
      {
        v33 = v36;
        goto LABEL_32;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_43:
    v38 = type metadata accessor for Logger();
    sub_10009597C(v38, qword_100390818);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v41 = 136315394;
      sub_10009FDA0(0, &qword_100385080, CKRecordZone_ptr);
      v42 = Array.description.getter();
      v44 = sub_1000999E4(v42, v43, aBlock);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      sub_10009FDA0(0, &qword_100385088, CKRecordZoneSubscription_ptr);
      v45 = Array.description.getter();
      v47 = sub_1000999E4(v45, v46, aBlock);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "KTZoneSetup create %s subscribe: %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    if (v23 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v48 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v48)
    {
      sub_10009FDA0(0, &unk_1003832A0, CKModifyRecordZonesOperation_ptr);
      v94.value._rawValue = v23;
      v94.is_nil = 0;
      v49.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v94, v96).super.super.super.super.isa;
      [(objc_class *)v49.super.super.super.super.isa setQualityOfService:25];
      v50 = swift_allocObject();
      *(v50 + 16) = v91;
      *(v50 + 24) = v90;
      v51 = v91;

      CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter();
      *(swift_allocObject() + 16) = v51;
      v52 = v51;
      CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
    }

    else
    {

      v49.super.super.super.super.isa = 0;
    }

    if (v82 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_10009FDA0(0, &qword_100385070, CKSubscription_ptr);

        v57 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        goto LABEL_58;
      }
    }

    else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_10009FDA0(0, &qword_100385070, CKSubscription_ptr);

      v57 = v82;
LABEL_58:
      sub_10009FDA0(0, &qword_100385078, CKModifySubscriptionsOperation_ptr);
      v95.value._rawValue = v57;
      v95.is_nil = 0;
      v58.super.super.super.super.isa = CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(v95, v97).super.super.super.super.isa;
      [(objc_class *)v58.super.super.super.super.isa setQualityOfService:25];
      v59 = swift_allocObject();
      v60 = v91;
      *(v59 + 16) = v91;
      *(v59 + 24) = v90;
      v61 = v91;

      CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter();
      *(swift_allocObject() + 16) = v61;
      v62 = v61;
      CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
      [(objc_class *)v58.super.super.super.super.isa addNullableDependency:v49.super.super.super.super.isa];
LABEL_66:
      v63 = swift_allocObject();
      v63[2] = v90;
      v63[3] = v60;
      v63[4] = v92;
      aBlock[4] = sub_1000E8FC0;
      aBlock[5] = v63;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000A31E0;
      aBlock[3] = &unk_100320E68;
      v64 = _Block_copy(aBlock);
      v65 = objc_opt_self();
      v66 = v60;

      v67 = v92;
      v68 = [v65 blockOperationWithBlock:v64];
      _Block_release(v64);

      [v68 addNullableDependency:v49.super.super.super.super.isa];
      [v68 addNullableDependency:v58.super.super.super.super.isa];
      [v66 runBeforeGroupFinished:v68];
      v69 = &selRef_URIWithUnprefixedURI_;
      if (v49.super.super.super.super.isa)
      {
        v70 = v49.super.super.super.super.isa;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v73 = 138412290;
          *(v73 + 4) = v70;
          v74->super.super.super.super.isa = v49.super.super.super.super.isa;
          v75 = v70;
          _os_log_impl(&_mh_execute_header, v71, v72, "create zone op %@", v73, 0xCu);
          sub_1000A4AD8(v74);
          v69 = &selRef_URIWithUnprefixedURI_;
        }

        [v83 v69[131]];
      }

      if (v58.super.super.super.super.isa)
      {
        v76 = v58.super.super.super.super.isa;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *v79 = 138412290;
          *(v79 + 4) = v76;
          v80->super.super.super.super.isa = v58.super.super.super.super.isa;
          v81 = v76;
          _os_log_impl(&_mh_execute_header, v77, v78, "subscribe zone op %@", v79, 0xCu);
          sub_1000A4AD8(v80);
        }

        v54 = v83;
        [v83 v69[131]];
      }

      else
      {

        v54 = v83;
      }

LABEL_75:

      return;
    }

    v58.super.super.super.super.isa = 0;
    v60 = v91;
    goto LABEL_66;
  }
}

id KTZoneDestroy.__allocating_init(deps:zoneHandler:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_deps] = a1;
  *&v7[OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_context] = a3;
  *&v7[OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_zoneHandler] = a2;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

id KTZoneDestroy.init(deps:zoneHandler:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_deps] = a1;
  *&v3[OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_context] = a3;
  *&v3[OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_zoneHandler] = a2;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for KTZoneDestroy();
  return objc_msgSendSuper2(&v5, "init");
}

Swift::Void __swiftcall KTZoneDestroy.groupStart()()
{
  sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
  v1._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1._object = v2;
  v3._countAndFlagsBits = 29803;
  v3._object = 0xE200000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v3, v1).super.isa;
  (*((swift_isaMask & *v0) + 0x70))();
}

void sub_1000E6704(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_zoneHandler];
  v5 = [a1 zoneName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  (*((swift_isaMask & *v4) + 0x78))(v6, v8, sub_1000A317C, 0);

  sub_10009FDA0(0, &unk_1003832A0, CKModifyRecordZonesOperation_ptr);
  sub_100095820(&qword_100384A50, &qword_1002D7650);
  v9 = swift_allocObject();
  LOBYTE(v5) = v9;
  *(v9 + 16) = xmmword_1002D6360;
  *(v9 + 32) = a1;
  v10 = a1;
  v21.value._rawValue = 0;
  v21.is_nil = v5;
  v11.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v21, v22).super.super.super.super.isa;
  [(objc_class *)v11.super.super.super.super.isa setQualityOfService:25];
  [v2 dependOnBeforeGroupFinished:v11.super.super.super.super.isa];
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  v20[4] = sub_1000E957C;
  v20[5] = v12;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000A31E0;
  v20[3] = &unk_100320EB8;
  v13 = _Block_copy(v20);
  v14 = objc_opt_self();
  v15 = v2;
  v16 = [v14 blockOperationWithBlock:v13];
  _Block_release(v13);

  [v16 addDependency:v11.super.super.super.super.isa];
  v17 = [v15 operationQueue];
  [v17 addOperation:v16];

  [v15 dependOnBeforeGroupFinished:v16];
  v18 = [*&v15[OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_deps] ckdatabase];
  if (v18)
  {
    v19 = v18;
    [v18 addOperation:v11.super.super.super.super.isa];
  }
}

id sub_1000E6A28(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_1000E6ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100095820(&qword_100385120, qword_1002D7800);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      v42 = *(v25 + 17);
      v43 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {
        v28 = v27;

        v29 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      *(v17 + 16) = v43;
      *(v17 + 17) = v42;
      ++*(v7 + 16);
      v5 = v39;
      v12 = v41;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1000E6D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v11 = a3;
  v14 = *v6;
  v15 = sub_10000574C(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1000E6F84();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1000E6ABC(v20, a6 & 1);
    v15 = sub_10000574C(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = v11;
  }

  else
  {
    sub_1000E6F28(v15, a4, a5, a1, a2, v11, v25);
  }
}

unint64_t sub_1000E6F28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

id sub_1000E6F84()
{
  v1 = v0;
  sub_100095820(&qword_100385120, qword_1002D7800);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v24 = *v22;
        v23 = *(v22 + 8);
        LOWORD(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v20;
        v25[1] = v21;
        v26 = *(v4 + 56) + v17;
        *v26 = v24;
        *(v26 + 8) = v23;
        *(v26 + 16) = v22;
        v27 = v23;

        result = v24;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1000E7118(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_initialFetch] = 0;
  *&v4[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_ckdatabase] = a1;
  *&v4[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_analytics] = a2;
  *&v4[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_zoneCreate] = a4;
  v8 = type metadata accessor for KTCKZone();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13transparencyd8KTCKZone_context] = a3;
  v15.receiver = v9;
  v15.super_class = v8;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  *&v4[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_zoneHandler] = objc_msgSendSuper2(&v15, "init");
  v14.receiver = v4;
  v14.super_class = type metadata accessor for KTZoneSetup();
  return objc_msgSendSuper2(&v14, "init");
}

unint64_t sub_1000E71E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&qword_100385120, qword_1002D7800);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 65); ; i += 40)
    {
      v5 = *(i - 33);
      v6 = *(i - 25);
      v7 = *(i - 17);
      v8 = *(i - 9);
      v9 = *(i - 1);
      v10 = *i;
      v11 = v8;

      v12 = v7;
      result = sub_10000574C(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 24 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 17) = v10;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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

void sub_1000E7310(void *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  if (a1)
  {
    v7 = a1;
    v8 = [v7 serverChangeToken];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      sub_1000956CC(v10, v12);
    }

    else
    {
      if (qword_100390810 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10009597C(v24, qword_100390818);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1000999E4(v3, v2, v53);
        _os_log_impl(&_mh_execute_header, v25, v26, "initial fetch of zone %s (no serverChangeToken)", v27, 0xCu);
        sub_10009A9E8(v28);
      }

      (*((swift_isaMask & *v5) + 0x80))(1);
    }

    if (([v7 zoneCreated]& 1) != 0)
    {
      v29 = 0;
    }

    else
    {
      v29 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v6];
    }

    if (![v7 zoneSubscribed]|| v29)
    {
      osloga = v7;
      sub_10009FDA0(0, &qword_100385088, CKRecordZoneSubscription_ptr);

      v34 = v6;
      v35._countAndFlagsBits = v3;
      v35._object = v2;
      v36.super.super.isa = CKRecordZoneSubscription.init(zoneID:subscriptionID:)(v34, v35).super.super.isa;
      if (qword_100390810 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10009597C(v37, qword_100390818);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v48 = v3;
        v42 = swift_slowAlloc();
        v53[0] = v42;
        *v40 = 136315650;
        *(v40 + 4) = sub_1000999E4(v48, v2, v53);
        *(v40 + 12) = 2112;
        *(v40 + 14) = v29;
        *(v40 + 22) = 2112;
        *(v40 + 24) = v36;
        v41->super.super.isa = v29;
        v41[1].super.super.isa = v36.super.super.isa;
        v43 = v29;
        v44 = v36.super.super.isa;
        _os_log_impl(&_mh_execute_header, v38, v39, "zone %s pending created %@ subscribed %@", v40, 0x20u);
        sub_100095820(&unk_100383290, &unk_1002D5BA0);
        swift_arrayDestroy();

        sub_10009A9E8(v42);
        v3 = v48;
      }

      else
      {

        v43 = v29;
      }

      swift_beginAccess();

      v45 = v43;
      v46 = v36.super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_1000E6D9C(v29, v36.super.super.isa, 514, v3, v2, isUniquelyReferenced_nonNull_native);

      *(v4 + 16) = v52;
      swift_endAccess();
    }

    else
    {
      if (qword_100390810 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10009597C(v30, qword_100390818);

      oslog = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v53[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_1000999E4(v3, v2, v53);
        _os_log_impl(&_mh_execute_header, oslog, v31, "zone already created/subscribed %s", v32, 0xCu);
        sub_10009A9E8(v33);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100390810 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10009597C(v13, qword_100390818);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v53[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000999E4(v3, v2, v53);
      _os_log_impl(&_mh_execute_header, v14, v15, "initial fetch of zone %s", v16, 0xCu);
      sub_10009A9E8(v17);
    }

    (*((swift_isaMask & *v5) + 0x80))(1);
    v18 = objc_allocWithZone(CKRecordZone);

    v19 = [v18 initWithZoneID:v6];
    sub_10009FDA0(0, &qword_100385088, CKRecordZoneSubscription_ptr);

    v20 = v6;
    v21._countAndFlagsBits = v3;
    v21._object = v2;
    isa = CKRecordZoneSubscription.init(zoneID:subscriptionID:)(v20, v21).super.super.isa;
    swift_beginAccess();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_1000E6D9C(v19, isa, 514, v3, v2, v23);

    *(v4 + 16) = v51;
    swift_endAccess();
  }
}

void sub_1000E7AFC(void *a1, void *a2, char a3)
{
  v5 = *(v3 + 16);
  if (a3)
  {
    v7 = *&v5[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_analytics];
    v8 = String._bridgeToObjectiveC()();
    [v7 logResultForEvent:v8 hardFailure:0 result:0];

    if (qword_100390810 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10009597C(v9, qword_100390818);
    v10 = a1;
    sub_10000F1B0(a2, 1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    sub_10000F1C8(a2, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v75[0] = v15;
      *v13 = 136315394;
      v16 = [v10 zoneName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000999E4(v17, v19, v75);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v21;
      *v14 = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "ModifyRecordZones perRecordZoneSaveBlock failed with %s: %@", v13, 0x16u);
      sub_1000A4AD8(v14);

      sub_10009A9E8(v15);
    }

    v72 = _convertErrorToNSError(_:)();
    [v5 setError:v72];

    return;
  }

  v22 = *(v3 + 24);
  v23 = *&v5[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_analytics];
  v24 = String._bridgeToObjectiveC()();
  [v23 logResultForEvent:v24 hardFailure:0 result:0];

  v25 = [a1 zoneName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  swift_beginAccess();
  v29 = *(v22 + 16);
  if (*(v29 + 16))
  {
    v30 = sub_10000574C(v26, v28);
    v32 = v31;

    if (v32)
    {
      v33 = *(v29 + 56) + 24 * v30;
      v35 = *v33;
      v34 = *(v33 + 8);
      v36 = *(v33 + 17);
      swift_endAccess();
      v37 = v34;
      v38 = v35;
      v39 = [a1 zoneName];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      swift_beginAccess();
      v43 = v38;
      v73 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = *(v22 + 16);
      *(v22 + 16) = 0x8000000000000000;
      v45 = v36;
      sub_1000E6D9C(v35, v34, (v36 << 8) | 1u, v40, v42, isUniquelyReferenced_nonNull_native);

      *(v22 + 16) = v74;
      swift_endAccess();
      if (qword_100390810 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10009597C(v46, qword_100390818);
      v47 = a1;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v75[0] = swift_slowAlloc();
        *v50 = 136315650;
        v51 = [v47 zoneName];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = sub_1000999E4(v52, v54, v75);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_1000999E4(1702195828, 0xE400000000000000, v75);
        *(v50 + 22) = 2080;
        v56 = 0x65736C6166;
        if (v45)
        {
          v56 = 1702195828;
        }

        v57 = 0xE500000000000000;
        if (v45)
        {
          v57 = 0xE400000000000000;
        }

        if (v45 == 2)
        {
          v58 = 0;
        }

        else
        {
          v58 = v56;
        }

        if (v45 == 2)
        {
          v59 = 0xE000000000000000;
        }

        else
        {
          v59 = v57;
        }

        v60 = sub_1000999E4(v58, v59, v75);

        *(v50 + 24) = v60;
        _os_log_impl(&_mh_execute_header, v48, v49, "sub action %s: created: %s subscribed: %s", v50, 0x20u);
        swift_arrayDestroy();
      }

      return;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_100390810 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_10009597C(v61, qword_100390818);
  v62 = a1;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v75[0] = v66;
    *v65 = 136315138;
    v67 = [v62 zoneName];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71 = sub_1000999E4(v68, v70, v75);

    *(v65 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "ModifyRecordZones perRecordZoneSaveBlock not found %s", v65, 0xCu);
    sub_10009A9E8(v66);
  }
}

void sub_1000E826C(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  if (a4)
  {
    v10 = *&v8[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_analytics];
    v11 = String._bridgeToObjectiveC()();
    v12 = _convertErrorToNSError(_:)();
    [v10 logResultForEvent:v11 hardFailure:1 result:v12];

    if (qword_100390810 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10009597C(v13, qword_100390818);

    sub_10000F1B0(a3, 1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    sub_10000F1C8(a3, 1);
    v84 = a1;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = v7;
      v18 = v8;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v16 = 136315394;
      *(v16 + 4) = sub_1000999E4(a1, a2, v89);
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "ModifySubscriptions perSubscriptionSaveBlock %s failed with %@", v16, 0x16u);
      sub_1000A4AD8(v19);
      v8 = v18;
      v7 = v17;

      sub_10009A9E8(v20);
    }

    v89[0] = a3;
    swift_errorRetain();
    sub_100095820(&qword_100382DD0, &unk_1002D7500);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_1000E992C(&unk_100385750, type metadata accessor for CKError, &unk_1002D6580);
      _BridgedStoredNSError.code.getter();
      if (v86 == 26)
      {
        swift_beginAccess();
        v22 = *(v7 + 16);
        if (*(v22 + 16) && (v23 = sub_10000574C(a1, a2), (v24 & 1) != 0))
        {
          v25 = *(v22 + 56) + 24 * v23;
          v27 = *v25;
          v26 = *(v25 + 8);
          swift_endAccess();
          swift_beginAccess();
          v28 = v26;

          v29 = v28;
          v30 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = *(v7 + 16);
          *(v7 + 16) = 0x8000000000000000;
          sub_1000E6D9C(v27, v26, 0, a1, a2, isUniquelyReferenced_nonNull_native);

          *(v7 + 16) = v85;
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }
      }

      else
      {

        v73 = v87;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v89[0] = v78;
          *v76 = 136315394;
          *(v76 + 4) = sub_1000999E4(v84, a2, v89);
          *(v76 + 12) = 2112;
          v79 = v73;
          v80 = _swift_stdlib_bridgeErrorToNSError();
          *(v76 + 14) = v80;
          *v77 = v80;
          _os_log_impl(&_mh_execute_header, v74, v75, "ModifySubscriptions unhandled ckerror %s: %@", v76, 0x16u);
          sub_1000A4AD8(v77);

          sub_10009A9E8(v78);
        }

        else
        {
        }
      }
    }

    else
    {
      swift_errorRetain();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      sub_10000F1C8(a3, 1);
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        swift_errorRetain();
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 4) = v72;
        *v71 = v72;
        _os_log_impl(&_mh_execute_header, v68, v69, "ModifySubscriptions:perSubscriptionSaveBlock: non CKError: %@", v70, 0xCu);
        sub_1000A4AD8(v71);
      }
    }

    v81 = _convertErrorToNSError(_:)();
    [v8 setError:v81];
  }

  else
  {
    v32 = *&v8[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_analytics];
    v33 = String._bridgeToObjectiveC()();
    [v32 logResultForEvent:v33 hardFailure:0 result:0];

    swift_beginAccess();
    v34 = *(v7 + 16);
    if (*(v34 + 16) && (v35 = sub_10000574C(a1, a2), (v36 & 1) != 0))
    {
      v37 = *(v34 + 56) + 24 * v35;
      v38 = *v37;
      v39 = *(v37 + 8);
      v83 = *(v37 + 16);
      swift_endAccess();
      v40 = qword_100390810;
      v41 = v38;
      v42 = v39;
      if (v40 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10009597C(v43, qword_100390818);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v82 = v41;
        v46 = a1;
        v47 = swift_slowAlloc();
        v48 = v39;
        v49 = v38;
        v50 = v42;
        v51 = swift_slowAlloc();
        v89[0] = v51;
        *v47 = 136315138;
        *(v47 + 4) = sub_1000999E4(v46, a2, v89);
        _os_log_impl(&_mh_execute_header, v44, v45, "ModifySubscriptions zone subscribed with %s", v47, 0xCu);
        sub_10009A9E8(v51);
        v42 = v50;
        v38 = v49;
        v39 = v48;

        a1 = v46;
        v41 = v82;
      }

      swift_beginAccess();

      v52 = v41;
      v53 = v42;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(v7 + 16);
      *(v7 + 16) = 0x8000000000000000;
      sub_1000E6D9C(v38, v39, v83 | 0x100u, a1, a2, v54);

      *(v7 + 16) = v88;
      swift_endAccess();

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v57 = 136315650;
        *(v57 + 4) = sub_1000999E4(a1, a2, v89);
        *(v57 + 12) = 2080;
        v58 = 1702195828;
        if ((v83 & 1) == 0)
        {
          v58 = 0x65736C6166;
        }

        v59 = 0xE500000000000000;
        if (v83)
        {
          v59 = 0xE400000000000000;
        }

        if (v83 == 2)
        {
          v60 = 45;
        }

        else
        {
          v60 = v58;
        }

        if (v83 == 2)
        {
          v61 = 0xE100000000000000;
        }

        else
        {
          v61 = v59;
        }

        v62 = sub_1000999E4(v60, v61, v89);

        *(v57 + 14) = v62;
        *(v57 + 22) = 2080;
        *(v57 + 24) = sub_1000999E4(1702195828, 0xE400000000000000, v89);
        _os_log_impl(&_mh_execute_header, v55, v56, "sub action %s: created: %s subscribed: %s", v57, 0x20u);
        swift_arrayDestroy();
      }
    }

    else
    {
      swift_endAccess();
      if (qword_100390810 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_10009597C(v63, qword_100390818);

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v89[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_1000999E4(a1, a2, v89);
        _os_log_impl(&_mh_execute_header, v64, v65, "ModifySubscriptions zone not found %s", v66, 0xCu);
        sub_10009A9E8(v67);
      }
    }
  }
}

void sub_1000E8D78(uint64_t a1, char a2, const char *a3, uint64_t (*a4)(void), const char *a5, ...)
{
  if (a2)
  {
    v8 = *(v5 + 16);
    if (qword_100390810 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10009597C(v9, qword_100390818);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_1000A4FB0(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, a3, v12, 0xCu);
      sub_1000A4AD8(v13);
    }

    oslog = _convertErrorToNSError(_:)();
    [v8 setError:?];
  }

  else
  {
    if (qword_100390810 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10009597C(v17, qword_100390818);
    oslog = Logger.logObject.getter();
    v18 = a4();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, a5, v19, 2u);
    }
  }
}

void sub_1000E8FC0()
{
  v1 = v0[2];
  v55 = v0[3];
  v49 = v0[4];
  swift_beginAccess();
  v48 = v1;
  v2 = *(v1 + 16);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v54 = v2;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v52 = v3;
  v53 = v7;
  while (v6)
  {
LABEL_11:
    v17 = __clz(__rbit64(v6)) | (v8 << 6);
    v18 = (*(v54 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v54 + 56) + 24 * v17;
    v22 = *v21;
    v23 = *(v21 + 8);
    v57 = *(v21 + 17);
    v58 = *(v21 + 16);
    v24 = qword_100390810;

    v59 = v22;
    v25 = v22;
    v26 = v23;
    if (v24 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10009597C(v27, qword_100390818);
    v28 = v26;

    v29 = v25;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    v56 = v29;

    if (os_log_type_enabled(v30, v31))
    {
      v51 = v23;
      v32 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v32 = 136315650;
      *(v32 + 4) = sub_1000999E4(v19, v20, v60);
      *(v32 + 12) = 2080;
      v33 = 1702195828;
      if ((v58 & 1) == 0)
      {
        v33 = 0x65736C6166;
      }

      v34 = 0xE500000000000000;
      if (v58)
      {
        v34 = 0xE400000000000000;
      }

      if (v58 == 2)
      {
        v35 = 45;
      }

      else
      {
        v35 = v33;
      }

      if (v58 == 2)
      {
        v36 = 0xE100000000000000;
      }

      else
      {
        v36 = v34;
      }

      v50 = v19;
      v37 = sub_1000999E4(v35, v36, v60);

      *(v32 + 14) = v37;
      *(v32 + 22) = 2080;
      v10 = v57;
      v38 = 0x65736C6166;
      if (v57)
      {
        v38 = 1702195828;
      }

      v39 = 0xE500000000000000;
      if (v57)
      {
        v39 = 0xE400000000000000;
      }

      if (v57 == 2)
      {
        v40 = 45;
      }

      else
      {
        v40 = v38;
      }

      if (v57 == 2)
      {
        v41 = 0xE100000000000000;
      }

      else
      {
        v41 = v39;
      }

      v42 = sub_1000999E4(v40, v41, v60);
      v9 = v58;

      *(v32 + 24) = v42;
      v19 = v50;
      _os_log_impl(&_mh_execute_header, v30, v31, "updating zone %s: created: %s subscribed: %s", v32, 0x20u);
      swift_arrayDestroy();

      v23 = v51;
    }

    else
    {

      v10 = v57;
      v9 = v58;
    }

    v6 &= v6 - 1;
    v11 = *&v55[OBJC_IVAR____TtC13transparencyd11KTZoneSetup_zoneHandler];
    v12 = swift_allocObject();
    *(v12 + 16) = v59;
    *(v12 + 24) = v23;
    *(v12 + 32) = v9;
    *(v12 + 33) = v10;
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v13 = *((swift_isaMask & *v11) + 0x78);
    v14 = v56;
    v15 = v28;

    v13(v19, v20, sub_1000E9700, v12);

    v3 = v52;
    v7 = v53;
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v16 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v16);
    ++v8;
    if (v6)
    {
      v8 = v16;
      goto LABEL_11;
    }
  }

  if (qword_100390810 == -1)
  {
    goto LABEL_36;
  }

LABEL_41:
  swift_once();
LABEL_36:
  v43 = type metadata accessor for Logger();
  sub_10009597C(v43, qword_100390818);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    swift_beginAccess();
    *(v46 + 4) = *(*(v48 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v44, v45, "zones updates %ld", v46, 0xCu);
  }

  else
  {
  }

  v47 = [v55 operationQueue];
  [v47 addOperation:v49];
}

void sub_1000E957C()
{
  v1 = *(v0 + 16);
  v3 = [objc_allocWithZone(KTPendingFlag) initWithFlag:@"CloudKitZoneRecreate" delayInSeconds:0.1];
  v2 = [*(v1 + OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_deps) flagHandler];
  if (v2)
  {
    [v2 handlePendingFlag:v3];
    swift_unknownObjectRelease();
  }
}

__n128 sub_1000E962C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000E9640(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000E969C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000E9700(id a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v3 != 2)
  {
    [a1 setZoneCreated:v3 & 1];
  }

  if (v4 != 2)
  {
    [a1 setZoneSubscribed:v4 & 1];
  }

  if (qword_100390810 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10009597C(v7, qword_100390818);
  v8 = a1;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_1000999E4(v6, v5, &v16);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = a1;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "zone final status %s %@", v11, 0x16u);
    sub_1000A4AD8(v12);

    sub_10009A9E8(v13);
  }

  return 1;
}

uint64_t sub_1000E992C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E9C14()
{
  v1 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_iCloudAnalyticsFlag;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000E9C58(char a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_iCloudAnalyticsFlag;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000E9D08@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1000E9EC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  swift_beginAccess();
  return sub_1000AB050(v1 + v3, a1, &qword_100382DC0, &unk_1002D5BC0);
}

uint64_t sub_1000EA070(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  swift_beginAccess();
  sub_1000EB698(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1000EA130(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_databaseDir;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v2[v3], 1, 1, v4);
  v2[OBJC_IVAR____TtC13transparencyd22MockEligibilitySupport_iCloudAnalyticsFlag] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MockEligibilitySupport(0);
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1000EA27C()
{
  v1 = (*((swift_isaMask & **(v0 + 16)) + 0x60))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1000EA488(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return (_swift_task_switch)(sub_1000EA500, 0, 0);
}

uint64_t sub_1000EA500()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = (*((swift_isaMask & *v2) + 0x60))();

  v1[2](v1, v3 & 1, 0);
  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000EA5C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  __chkstk_darwin(v5 - 8);
  v33 = &v31 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v35[0] = 0x2D74736574;
  v35[1] = 0xE500000000000000;
  v17._countAndFlagsBits = a1;
  v17._object = v32;
  String.append(_:)(v17);
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  sub_100008D30();
  URL.appending<A>(path:directoryHint:)();
  (*(v8 + 8))(v10, v7);

  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v35[0] = 0;
  LODWORD(v16) = [v15 removeItemAtURL:v19 error:v35];

  if (v16)
  {
    v21 = v35[0];
  }

  else
  {
    v23 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  URL._bridgeToObjectiveC()(v22);
  v25 = v24;
  v35[0] = 0;
  v26 = [v15 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v35];

  if (v26)
  {
    v27 = v35[0];
  }

  else
  {
    v28 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v29 = v33;
  (*(v12 + 16))(v33, a3, v11);
  (*(v12 + 56))(v29, 0, 1, v11);
  (*((swift_isaMask & *v34) + 0x80))(v29);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1000EA9D8()
{
  result = sub_1000EB5A8(8);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    v6 = Data.base64EncodedString(options:)(0);
    sub_1000956CC(v4, v5);
    (*((swift_isaMask & *v0) + 0x98))(v6._countAndFlagsBits, v6._object);
  }

  return result;
}

id sub_1000EAC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockEligibilitySupport(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000EACCC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000A0E9C;

  return v6();
}

uint64_t sub_1000EADB4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000A0510;

  return v7();
}

uint64_t sub_1000EAE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000AB050(a3, v23 - v10, &qword_100383170, &qword_1002D78E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000057C4(v11, &qword_100383170, &qword_1002D78E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000057C4(a3, &qword_100383170, &qword_1002D78E0);

    return v21;
  }

LABEL_8:
  sub_1000057C4(a3, &qword_100383170, &qword_1002D78E0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

_BYTE *sub_1000EB198@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000EB340(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000EB3F8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000EB474(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

char *sub_1000EB22C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000EB24C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000EB24C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&qword_100383330, &unk_1002D6B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_1000EB340(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000EB3F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000EB474(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000EB4F8(uint64_t a1)
{
  v9 = sub_100095820(&qword_100385170, &unk_1002D7930);
  v10 = sub_1000EBC38();
  v8[0] = a1;
  v2 = sub_1000A0E50(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1000EB198(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10009A9E8(v8);
  return v5;
}

uint64_t sub_1000EB5A8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1000EB22C(0, result, 0);
      do
      {
        swift_stdlib_random();
        v3 = _swiftEmptyArrayStorage[2];
        v2 = _swiftEmptyArrayStorage[3];
        if (v3 >= v2 >> 1)
        {
          sub_1000EB22C((v2 > 1), v3 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v3 + 1;
        *(&_swiftEmptyArrayStorage[4] + v3) = 0;
        --v1;
      }

      while (v1);
    }

    v4 = sub_1000EB4F8(_swiftEmptyArrayStorage);

    return v4;
  }

  return result;
}

uint64_t sub_1000EB698(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100382DC0, &unk_1002D5BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MockEligibilitySupport(uint64_t a1)
{
  result = qword_100390CB0;
  if (!qword_100390CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EB75C(uint64_t a1, uint64_t a2)
{
  sub_1000EB7F8(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000EB7F8(uint64_t a1, uint64_t a2)
{
  if (!qword_100385168)
  {
    type metadata accessor for URL();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &qword_100385168);
    }
  }
}

uint64_t sub_1000EB850()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A0510;

  return sub_1000EA488(v2, v3);
}

uint64_t sub_1000EB8FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A0E9C;

  return sub_1000EACCC(v2, v3, v4);
}

uint64_t sub_1000EB9BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000EB9FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A0E9C;

  return sub_1000EADB4(a1, v4, v5, v6);
}

uint64_t sub_1000EBAC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A0E9C;

  return sub_10009F88C(a1, v4);
}

uint64_t sub_1000EBB80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A0510;

  return sub_10009F88C(a1, v4);
}

unint64_t sub_1000EBC38()
{
  result = qword_100385178;
  if (!qword_100385178)
  {
    sub_1000967DC(&qword_100385170, &unk_1002D7930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100385178);
  }

  return result;
}

uint64_t sub_1000EBCA4()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t sub_1000EBCD4()
{
  v1 = *v0;
  v2 = 0x644963696C627570;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x746E656449736469;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EBD70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EF3B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000EBDA4(uint64_t a1)
{
  v2 = sub_1000EC020();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EBDE0(uint64_t a1)
{
  v2 = sub_1000EC020();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EBE1C(void *a1)
{
  v3 = v1;
  v5 = sub_100095820(&unk_100385180, &qword_1002D7960);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000A0E50(a1, a1[3]);
  sub_1000EC020();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
    sub_1000ABFAC(&unk_100385190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000EC020()
{
  result = qword_100390CE0[0];
  if (!qword_100390CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100390CE0);
  }

  return result;
}

double sub_1000EC074@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EF538(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000EC0F4()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_100390CC8);
  sub_10009597C(v0, qword_100390CC8);
  return Logger.init(transparencyCategory:)(0x61747364756F6C63, 0xEE0079656B636974);
}

void *sub_1000EC180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = 0x654B636974617453;
  result[3] = 0xE900000000000079;
  result[4] = a1;
  result[5] = a2;
  result[6] = a3;
  return result;
}

void *sub_1000EC1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0x654B636974617453;
  v3[3] = 0xE900000000000079;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return v3;
}

char *sub_1000EC210(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SHA256();
  v50 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256Digest();
  v46 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v15 = String.data(using:allowLossyConversion:)();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  result = 0;
  if (v17 >> 60 != 15)
  {
    v45 = v2;
    sub_1000EF87C(&unk_100384000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_100002D78(v15, v17);
    sub_1000B4C30(v15, v17, v5);
    v43 = v17;
    v44 = v15;
    sub_10009A9D4(v15, v17);
    dispatch thunk of HashFunction.finalize()();
    (*(v50 + 1))(v5, v3);
    v19 = v46;
    (*(v46 + 16))(v49, v10, v6);
    sub_1000EF87C(&qword_1003846A0, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    result = dispatch thunk of Sequence.makeIterator()();
    v20 = v52;
    v50 = v51;
    v49 = *(v51 + 2);
    v21 = v6;
    v22 = v19;
    v23 = v10;
    v24 = _swiftEmptyArrayStorage;
    if (v52 == v49)
    {
LABEL_3:

      v51 = v24;
      sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
      sub_1000B4E10();
      v25 = BidirectionalCollection<>.joined(separator:)();
      v27 = v26;

      sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
      v28 = *(v45 + 40);
      v29._countAndFlagsBits = v25;
      v29._object = v27;
      isa = CKRecordID.init(recordName:zoneID:)(v29, v28).super.isa;
      sub_10009A9D4(v44, v43);
      (*(v22 + 8))(v23, v21);
      return isa;
    }

    else
    {
      v48 = v50 + 32;
      v47 = xmmword_1002D47B0;
      v31 = v52;
      v32 = v21;
      while ((v20 & 0x8000000000000000) == 0)
      {
        if (v31 >= *(v50 + 2))
        {
          goto LABEL_15;
        }

        v33 = v23;
        v34 = v22;
        v35 = v31[v48];
        sub_100095820(&unk_100383140, &qword_1002D6BD0);
        v36 = swift_allocObject();
        *(v36 + 16) = v47;
        *(v36 + 56) = &type metadata for UInt8;
        *(v36 + 64) = &protocol witness table for UInt8;
        *(v36 + 32) = v35;
        v37 = String.init(format:_:)();
        v39 = v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000B3938(0, *(v24 + 2) + 1, 1, v24);
          v24 = result;
        }

        v41 = *(v24 + 2);
        v40 = *(v24 + 3);
        if (v41 >= v40 >> 1)
        {
          result = sub_1000B3938((v40 > 1), v41 + 1, 1, v24);
          v24 = result;
        }

        ++v31;
        *(v24 + 2) = v41 + 1;
        v42 = &v24[16 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v39;
        v21 = v32;
        v22 = v34;
        v23 = v33;
        if (v49 == v31)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  return result;
}

void sub_1000EC768(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009FDA0(0, &qword_1003851C0, off_100315898);
    sub_1000F072C();
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_10009FDA0(0, &qword_1003851C0, off_100315898), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1000D61BC(v1);
      return;
    }

LABEL_17:
    v12 = [v11 uri];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000B3938(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_1000B3938((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_1000ECA00(void *a1)
{
  result = [a1 publicId];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = (*(*v1 + 168))(v4, v6);

    return v7;
  }

  return result;
}

uint64_t sub_1000ECA8C(void *a1)
{
  v2 = v1;
  if (qword_100390CC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10009597C(v4, qword_100390CC8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = [v5 recordID];
    v11 = [v10 recordName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1000999E4(v12, v14, &v21);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "merging cloud static key: %s", v8, 0xCu);
    sub_10009A9E8(v9);
  }

  v21 = &_swiftEmptySetSingleton;
  v16 = (*(*v2 + 136))();
  __chkstk_darwin(v16);
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v21[2] && (v17 = v2[6]) != 0)
  {
    isa = Set._bridgeToObjectiveC()().super.isa;
    [v17 uriNeedsUpdate:isa];
  }

  else
  {
  }

  return v20;
}

uint64_t sub_1000ECD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1000ECE2C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009FDA0(0, &qword_1003851C0, off_100315898);
    sub_1000F072C();
    Set.Iterator.init(_cocoa:)();
    v1 = v21[2];
    v2 = v21[3];
    v3 = v21[4];
    v4 = v21[5];
    v5 = v21[6];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = v3;
  while (v1 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14 || (v21[8] = v14, sub_10009FDA0(0, &qword_1003851C0, off_100315898), swift_dynamicCast(), v13 = v21[0], v11 = v4, v12 = v5, !v21[0]))
    {
LABEL_21:
      sub_1000D61BC(v1);
      return;
    }

LABEL_19:
    v15 = [v13 uri];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_1000A971C(v21, v17, v19);
    }

    else
    {
    }

    v4 = v11;
    v5 = v12;
  }

  v9 = v4;
  v10 = v5;
  v11 = v4;
  if (v5)
  {
LABEL_15:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1000ED064(void *a1)
{
  v12 = &_swiftEmptySetSingleton;
  v3 = (*(*v1 + 136))();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = &v12;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000F0474;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000A040C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_1003210D0;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v12[2])
    {
      v9 = v1[6];
      if (v9)
      {

        isa = Set._bridgeToObjectiveC()().super.isa;

        [v9 uriNeedsUpdate:isa];
      }
    }
  }

  return result;
}

Class sub_1000ED28C(void *a1)
{
  v3 = [a1 ckrecord];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = type metadata accessor for KTCloudRecords();
  isa = (*(v8 + 456))(v5, v7);
  sub_10009A9D4(v5, v7);
  if (!isa)
  {
    isa = (*(*v1 + 176))(a1);
    if (!isa)
    {
      return isa;
    }

    sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
    v10._countAndFlagsBits = (*(*v1 + 112))();
    isa = CKRecord.init(recordType:recordID:)(v10, isa).super.isa;
  }

  v11 = [a1 publicId];
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = [a1 uris];
    if (v13)
    {
      v14 = v13;
      sub_10009FDA0(0, &qword_1003851C0, off_100315898);
      sub_1000F072C();
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000EC768(v15);
    }

    v16 = [a1 contactExternalURI];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v18 = [a1 contactIdentifier];
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_1000F06D8();
    v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v22 = v21;

    v23 = [(objc_class *)isa encryptedValues];
    swift_getObjectType();
    sub_100002D78(v20, v22);
    CKRecordKeyValueSetting.subscript.setter();
    sub_1000956CC(v20, v22);

    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return isa;
}

uint64_t sub_1000ED638()
{
  v9 = 0;
  v1 = (*(*v0 + 136))();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000F0794;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100321148;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void *sub_1000ED7C8()
{
  v9 = _swiftEmptyArrayStorage;
  v1 = (*(*v0 + 136))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B58DC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_1003211C0;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}