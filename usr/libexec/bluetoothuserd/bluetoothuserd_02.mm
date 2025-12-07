void sub_100030C44(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v37[-v12];
  __chkstk_darwin(v11);
  v15 = &v37[-v14];
  Transaction.capture()();
  v16 = sub_10003915C();
  v43 = v7;
  v44 = v16;
  v45 = *(v7 + 16);
  v45(v15);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v42 = a4;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v19 = 138412290;
    v40 = v17;
    v20 = sub_100019AA4();
    v21 = [v20 privateCloudDatabase];
    v38 = v18;
    v22 = v21;

    v23 = v19;
    *(v19 + 4) = v22;
    v24 = v39;
    v17 = v40;
    *v39 = v22;
    _os_log_impl(&_mh_execute_header, v17, v38, "database: %@ zone updateCache completed.", v23, 0xCu);
    sub_100006CAC(v24, &qword_100093F70, &qword_1000730D0);
  }

  v25 = *(v43 + 8);
  v25(v15, v6);
  if (a2)
  {
    (v45)(v13, v44, v6);
    v26 = v41;
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_100036B6C(v26, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v13;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "APS fetchZoneChanges error: %@", v30, 0xCu);
      sub_100006CAC(v31, &qword_100093F70, &qword_1000730D0);

      v13 = v29;
    }

    v25(v13, v6);
    v47 = v26;
    swift_errorRetain();
    sub_10000A45C(&qword_100093748, &qword_100073628);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v33 = v46;
      v47 = v46;
      sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);
      _BridgedStoredNSError.code.getter();
      if (v46 == 4 || (v47 = v33, _BridgedStoredNSError.code.getter(), v46 == 3))
      {
        sub_100026364(150.0);
      }
    }
  }

  else
  {
    (v45)(v10, v44, v6);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "APS fetchZoneChanges completed.", v36, 2u);
    }

    v25(v10, v6);
  }
}

uint64_t sub_1000311DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v21[-v8 - 8];
  sub_10000FA7C(a1, v21);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = sub_10000A45C(&qword_1000937B8, &qword_100073648);
  Subscription.init(subscriber:unsubscribeBlock:)(v21, sub_100037DB8, v10, v11, a3);
  sub_100006C44(a3, v9, &qword_100093F40, &qword_1000730E0);
  v12 = (*(*a2 + 304))(v21);
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_10003201C(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_10003201C((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  sub_100035FF0(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, &qword_100093F40, &qword_1000730E0);
  return v12(v21, 0);
}

uint64_t sub_100031420(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = v17 - v11;
  v17[1] = *(v1 + 72);
  sub_100006C44(a1, v17 - v11, &qword_100093F40, &qword_1000730E0);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_100035FF0(v12, v14 + v13, &qword_100093F40, &qword_1000730E0);
  aBlock[4] = sub_100036058;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A308;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

void (*sub_100031844(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 304))();
  return sub_10000E7CC;
}

uint64_t sub_100031958(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093850, type metadata accessor for CKError, &unk_1000737E4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000319C4(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093850, type metadata accessor for CKError, &unk_1000737E4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100031A30(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100031AB4(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100031B20(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100031B8C(void *a1, uint64_t a2)
{
  v4 = sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100031C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100031CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100031D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void *sub_100031DA0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A45C(&qword_1000937D8, &qword_100073650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A45C(&qword_1000937E0, &qword_100073658);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100031EE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A45C(&unk_1000936E0, &qword_1000735E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A45C(&qword_1000936D8, &qword_1000735E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003201C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_1000937A8, &qword_100073640);
  v10 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10003220C(uint64_t a1, uint64_t a2)
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

  sub_10000A45C(&qword_100093740, &qword_100073620);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100032294(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000322B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000322B4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_1000937A8, &qword_100073640);
  v10 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1000324A4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000333D0(a3, a4);
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 16 * v10);
  sub_100032DE8(v10, v12);
  *v7 = v12;
  return v13;
}

Swift::Int sub_100032560(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000A45C(&qword_1000937E8, &qword_100073660);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100004890(0, &qword_1000937C8, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100032914(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_1000327AC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000330EC(a1, a2, v4);
}

unint64_t sub_100032824(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000331A4(a1, v4, &qword_100093758, CKRecordZoneID_ptr);
}

unint64_t sub_100032874(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000331A4(a1, v4, &qword_100093708, CKRecord_ptr);
}

unint64_t sub_1000328C4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000331A4(a1, v4, &qword_1000936F0, CKRecordID_ptr);
}

Swift::Int sub_100032914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A45C(&qword_1000937E8, &qword_100073660);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100032B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000A45C(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v33 = *(*(v7 + 56) + 16 * v21);
      if ((v6 & 1) == 0)
      {
        v23 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 16 * v17) = v33;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v31 = 1 << *(v7 + 32);
      if (v31 >= 64)
      {
        bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v31;
      }

      *(v7 + 16) = 0;
    }

    v5 = v32;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

void sub_100032DE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100032F74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100032824(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100032914(v13, a3 & 1);
      v8 = sub_100032824(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100033270();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return _objc_retain_x1();
}

unint64_t sub_1000330EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000331A4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100004890(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

id sub_100033270()
{
  v1 = v0;
  sub_10000A45C(&qword_1000937E8, &qword_100073660);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_1000333D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000A45C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 16 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_100033538(uint64_t a1, char a2)
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

void sub_1000335D8(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    sub_1000335D8(a1, a2);
  }
}

unint64_t sub_10003367C(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_100032874(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_100032B7C(v16, isUniquelyReferenced_nonNull_native, &qword_100093730, &qword_100073610);
    result = sub_100032874(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    sub_100004890(0, &qword_100093708, CKRecord_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    sub_1000333D0(&qword_100093730, &qword_100073610);
    result = v19;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = (v10[7] + 16 * result);
    result = *v18;
    *v18 = a1;
    v18[1] = a2;
LABEL_12:
    *v5 = v10;
    return result;
  }

LABEL_10:
  v10[(result >> 6) + 8] |= 1 << result;
  *(v10[6] + 8 * result) = a3;
  v20 = (v10[7] + 16 * result);
  *v20 = a1;
  v20[1] = a2;
  v21 = v10[2];
  v15 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v15)
  {
    v10[2] = v22;
    v23 = a3;
    result = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100033808(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_1000328C4(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_100032B7C(v16, isUniquelyReferenced_nonNull_native, &qword_100093738, &qword_100073618);
    result = sub_1000328C4(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    sub_100004890(0, &qword_1000936F0, CKRecordID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    sub_1000333D0(&qword_100093738, &qword_100073618);
    result = v19;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = (v10[7] + 16 * result);
    result = *v18;
    *v18 = a1;
    v18[1] = a2;
LABEL_12:
    *v5 = v10;
    return result;
  }

LABEL_10:
  v10[(result >> 6) + 8] |= 1 << result;
  *(v10[6] + 8 * result) = a3;
  v20 = (v10[7] + 16 * result);
  *v20 = a1;
  v20[1] = a2;
  v21 = v10[2];
  v15 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v15)
  {
    v10[2] = v22;
    v23 = a3;
    result = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_100033994(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100033AE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100033B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010007A2C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449656E6F7ALL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100033C74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000A45C(&qword_100093820, &qword_100073678);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000078C8(a1, a1[3]);
  sub_100019688();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000036EC(a1);
  }

  v22 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v18 = v9;
  v21 = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v12;
  sub_10000A45C(&qword_100094180, &qword_100074290);
  v20 = 2;
  sub_1000385B4(&qword_100093828, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  result = sub_1000036EC(a1);
  *a2 = v18;
  a2[1] = v11;
  v15 = v17;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v13;
  return result;
}

uint64_t sub_100033F0C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 544))();
  *a1 = result;
  return result;
}

uint64_t sub_100033F90(__int128 *a1)
{
  v44 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v50 = *(v1 - 8);
  v51 = v1;
  __chkstk_darwin(v1);
  v47 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = __chkstk_darwin(v3);
  v45 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = v41 - v6;
  v7 = type metadata accessor for Logger();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v55 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v54 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v54 - 8);
  __chkstk_darwin(v54);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  v41[4] = "): containerIdentifier: ";
  v43 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v52 = *(v11 + 104);
  v53 = v11 + 104;
  v52(v13);
  static DispatchQoS.unspecified.getter();
  *&v62[0] = _swiftEmptyArrayStorage;
  v41[3] = sub_10000229C(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v14 = sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10000FA34(&qword_1000931B0, &unk_100092CD0, &unk_100072C60, &protocol conformance descriptor for [A]);
  v41[1] = v14;
  v41[2] = v9;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = v42;
  *(v42 + 56) = v15;
  (v52)(v13, v43, v54);
  static DispatchQoS.unspecified.getter();
  *&v62[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v16 + 64) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  *&v62[0] = _swiftEmptyArrayStorage;
  v17 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v52)(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v54);
  *(v16 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v16 + 80) = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_systemNotificationSubscription;
  v19 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v19 - 8) + 56))(v16 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_applePushNotificationSubscription;
  v21 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  (*(*(v21 - 8) + 56))(v16 + v20, 1, 1, v21);
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___container) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudZoneSetupGroup) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudZoneDeleteGroup) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___susbscriptionSetupGroup) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___fetchDatabaseGroup) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudUserActionExplicitGroup) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___deferredUpdatesGroup) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_accountAvailable) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_currentAccountStatus) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_initialUploadDone) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords) = _swiftEmptyDictionarySingleton;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords) = _swiftEmptyDictionarySingleton;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity) = 0;
  *(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer) = 0;
  v22 = sub_1000391F4();
  (*(v56 + 16))(v55, v22, v57);
  v23 = *v17;
  v61 = v17[1];
  v62[0] = v23;
  v60 = *(v17 + 4);
  sub_100038504(v62, &v59);
  sub_100038504(&v61, &v59);
  sub_100006C44(&v60, &v59, &qword_100094180, &qword_100074290);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  sub_100034994(v62);
  sub_100034994(&v61);
  sub_100006CAC(&v60, &qword_100094180, &qword_100074290);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v58 = v27;
    *v26 = 136315138;
    sub_100038504(v62, &v59);
    sub_100038504(&v61, &v59);
    sub_100006C44(&v60, &v59, &qword_100094180, &qword_100074290);
    v28 = sub_100019268();
    v30 = v29;
    sub_100034994(v62);
    sub_100034994(&v61);
    sub_100006CAC(&v60, &qword_100094180, &qword_100074290);
    v31 = sub_1000034B8(v28, v30, &v58);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Initializing CloudStorageCoordinator with %s", v26, 0xCu);
    sub_1000036EC(v27);
  }

  (*(v56 + 8))(v55, v57);
  v32 = v17[1];
  *(v16 + 16) = *v17;
  *(v16 + 32) = v32;
  *(v16 + 48) = *(v17 + 4);
  type metadata accessor for UserFileManager();
  sub_100038504(v62, &v59);
  sub_100038504(&v61, &v59);
  sub_100006C44(&v60, &v59, &qword_100094180, &qword_100074290);
  v33 = v45;
  sub_100041768(v45);
  v59 = v62[0];
  v35 = v50;
  v34 = v51;
  v36 = v47;
  (*(v50 + 104))(v47, enum case for URL.DirectoryHint.isDirectory(_:), v51);
  sub_100038560();
  v37 = v46;
  URL.appending<A>(path:directoryHint:)();
  (*(v35 + 8))(v36, v34);
  v39 = v48;
  v38 = v49;
  (*(v48 + 8))(v33, v49);
  (*(v39 + 32))(v16 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_tokenDirectory, v37, v38);
  return v16;
}

uint64_t type metadata accessor for CloudStorageCoordinator(uint64_t a1)
{
  result = qword_100095C70;
  if (!qword_100095C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100034A48(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 fileExistsAtPath:v3];

  result = 0;
  if (v4)
  {
    v6 = Data.init(contentsOf:options:)();
    v8 = v7;
    sub_100004890(0, &qword_1000937F8, NSKeyedUnarchiver_ptr);
    sub_10000A45C(&qword_100093800, &unk_100073668);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100072BE0;
    *(v9 + 32) = sub_100004890(0, &unk_100093808, CKServerChangeToken_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
    sub_1000066CC(v6, v8);

    if (v12)
    {
      if (swift_dynamicCast())
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100006CAC(v11, &qword_100092CB8, &qword_100072C40);
      return 0;
    }
  }

  return result;
}

unint64_t sub_100034DB0()
{
  result = qword_1000931E0;
  if (!qword_1000931E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000931E0);
  }

  return result;
}

uint64_t sub_100034E04(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 56);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_10003826C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008AD20;
  v16 = _Block_copy(aBlock);

  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

id sub_1000350F0()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000351D8(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Logger();
  v106 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v96 - v9;
  __chkstk_darwin(v8);
  v100 = &v96 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v105 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v96 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v96 - v20;
  __chkstk_darwin(v19);
  v23 = &v96 - v22;
  v104 = a1;
  if (a1)
  {
    v102 = v4;
    v24 = objc_opt_self();
    v25 = a1;
    v26 = [v24 defaultManager];
    v101 = a2;
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v103 = v13;
    v30 = *(v13 + 8);
    v30(v23, v12);
    v107 = 0;
    v31 = [v26 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v107];

    v32 = v107;
    if (v31)
    {
      v33 = objc_opt_self();
      v107 = 0;
      v34 = v32;
      v35 = [v33 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v107];
      v36 = v107;
      v37 = v106;
      if (v35)
      {
        v98 = v21;
        v99 = v30;
        v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = v101;
        Data.write(to:excludeFromBackup:options:)(v101, 1, 0, 1, v38, v40);
        v97 = v38;
        v105 = v40;
        v78 = sub_10003915C();
        v79 = v100;
        v80 = v102;
        (*(v37 + 16))(v100, v78, v102);
        v81 = v98;
        v82 = v12;
        (v103[2])(v98, v41, v12);
        v83 = v25;
        v84 = Logger.logObject.getter();
        v85 = v37;
        v86 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v84, v86))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v107 = v103;
          *v88 = 136315394;
          sub_10000229C(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v82;
          v93 = v92;
          v99(v81, v91);
          v94 = sub_1000034B8(v90, v93, &v107);

          *(v88 + 4) = v94;
          *(v88 + 12) = 2112;
          *(v88 + 14) = v83;
          *v89 = v104;
          v95 = v83;
          _os_log_impl(&_mh_execute_header, v84, v86, "Updated change token, URL, %s, token, %@", v88, 0x16u);
          sub_100006CAC(v89, &qword_100093F70, &qword_1000730D0);

          sub_1000036EC(v103);

          sub_1000066CC(v97, v105);

          return (*(v85 + 8))(v100, v102);
        }

        else
        {
          sub_1000066CC(v97, v105);

          v99(v81, v82);
          return (*(v85 + 8))(v79, v80);
        }
      }

      v58 = v36;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v43 = v25;
      v44 = v102;
    }

    else
    {
      v42 = v107;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v43 = v25;
      v44 = v102;
      v37 = v106;
    }

    v59 = v103;
    v60 = v101;
    v61 = sub_10003915C();
    (*(v37 + 16))(v7, v61, v44);
    v62 = v105;
    (v59[2])(v105, v60, v12);
    v63 = v43;
    swift_errorRetain();
    v64 = v7;
    v65 = v59;
    v103 = v64;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v68 = 136315650;
      if (v104)
      {
        v69 = 0x657461647075;
      }

      else
      {
        v69 = 0x6574656C6564;
      }

      v70 = sub_1000034B8(v69, 0xE600000000000000, &v107);
      LODWORD(v104) = v67;
      v71 = v70;

      *(v68 + 4) = v71;
      *(v68 + 12) = 2080;
      sub_10000229C(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (v65[1])(v62, v12);
      v75 = sub_1000034B8(v72, v74, &v107);

      *(v68 + 14) = v75;
      *(v68 + 22) = 2112;
      swift_errorRetain();
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 24) = v76;
      v77 = v101;
      *v101 = v76;
      _os_log_impl(&_mh_execute_header, v66, v104, "Unable to %s change token, URL, %s, error, %@ ", v68, 0x20u);
      sub_100006CAC(v77, &qword_100093F70, &qword_1000730D0);

      swift_arrayDestroy();

      return (*(v106 + 8))(v103, v44);
    }

    else
    {

      (v59[1])(v62, v12);
      return (*(v37 + 8))(v103, v44);
    }
  }

  else
  {
    sub_1000350F0();
    v45 = sub_10003915C();
    v46 = v106;
    (*(v106 + 16))(v10, v45, v4);
    (*(v13 + 16))(v18, a2, v12);
    v47 = v13;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v102 = v4;
      v105 = v10;
      v51 = v50;
      v52 = swift_slowAlloc();
      v107 = v52;
      *v51 = 136315138;
      sub_10000229C(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v47 + 8))(v18, v12);
      v56 = sub_1000034B8(v53, v55, &v107);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Deleted change token, URL, %s", v51, 0xCu);
      sub_1000036EC(v52);

      return (*(v46 + 8))(v105, v102);
    }

    else
    {

      (*(v47 + 8))(v18, v12);
      return (*(v46 + 8))(v10, v4);
    }
  }
}

uint64_t sub_100035CE0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_100035D20(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  (*(v2 + 24))(a1, a2 & 1);
  return v5(a1, a2 & 1);
}

void sub_100035DDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = sub_100019AA4();
  v7 = [v6 privateCloudDatabase];

  sub_10000A45C(&qword_100093740, &qword_100073620);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100073090;
  *(v8 + 32) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v4;
  v10 = *(*v4 + 864);
  v11 = v5;

  v10(v7, v8, sub_100037E88, v9);
}

uint64_t sub_100035F24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Transaction.capture()();
  v3 = *(*v1 + 848);

  v3(v2, 0, sub_100037E28, v1);
}

uint64_t sub_100035FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A45C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100036058()
{
  v1 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (*(*v2 + 288))();
  v7[2] = v3;
  v5 = sub_100022650(sub_100037D14, v7, v4);
  return (*(*v2 + 296))(v5);
}

unint64_t sub_10003616C(uint64_t a1)
{
  *(a1 + 8) = sub_10003619C();
  result = sub_1000361F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10003619C()
{
  result = qword_100093280;
  if (!qword_100093280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093280);
  }

  return result;
}

unint64_t sub_1000361F0()
{
  result = qword_100093288;
  if (!qword_100093288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093288);
  }

  return result;
}

unint64_t sub_100036248()
{
  result = qword_100093290;
  if (!qword_100093290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093290);
  }

  return result;
}

__n128 sub_10003629C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000362B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000362F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_100036358(uint64_t a1)
{
  sub_1000364F4(319, &qword_1000932F0, &qword_100092E80, qword_100072CF0);
  if (v1 <= 0x3F)
  {
    sub_1000364F4(319, &unk_1000932F8, &qword_1000931C0, &unk_100072C70);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000364F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000C9B0(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100036548(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003656C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000365C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10003661C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudStorageCoordinator.CloudStorageCoordinatorState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CloudStorageCoordinator.CloudStorageCoordinatorState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000367C4()
{
  result = qword_100095D80[0];
  if (!qword_100095D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100095D80);
  }

  return result;
}

unint64_t sub_10003681C()
{
  result = qword_100095F90;
  if (!qword_100095F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095F90);
  }

  return result;
}

unint64_t sub_100036874()
{
  result = qword_100095F98[0];
  if (!qword_100095F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100095F98);
  }

  return result;
}

uint64_t sub_1000368C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  type metadata accessor for LocalDispatchTimer();
  swift_beginAccess();
  v7 = *v4;
  v8 = *(v3 + 56);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v5;
  *(v10 + 33) = v6;
  v11 = v8;

  v12 = LocalDispatchTimer.__allocating_init(deadline:repeating:leeway:queue:block:)(v8, sub_100036A20, v10, v7, 0.0, 1.0);
  *(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer) = v12;

  (*(*v12 + 152))(v13);
}

uint64_t sub_100036A68(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[4] = j___s14bluetoothuserd11TransactionC7captureyyF;
  v6[5] = a1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100002410;
  v6[3] = &unk_10008A6B8;
  v4 = _Block_copy(v6);

  sub_100036B5C(j___s14bluetoothuserd11TransactionC7captureyyF, a1);

  [v3 setCompletionBlock:v4];
  _Block_release(v4);
}

double sub_100036B5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100036B6C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100036B90(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_100036B9C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004890(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100036BEC(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v21 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v19 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 recordID];
    v7 = [v6 recordName];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [a2 recordName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_100036DA8(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_100036BEC(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = a1;
  v34 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v34;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v34;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 recordID];
    v14 = [v13 recordName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v3 = v5;
    v18 = [v5 recordName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v34 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34 >= v25)
        {
          goto LABEL_53;
        }

        if (v10 >= v25)
        {
          goto LABEL_54;
        }

        v26 = *(v7 + 32 + 8 * v10);
        v23 = *(v7 + 32 + 8 * v34);
        v24 = v26;
      }

      v27 = v24;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_100033AE8(v7);
        v28 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v28) = 0;
      }

      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v30 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20) = v27;

      if ((v7 & 0x8000000000000000) != 0 || v28)
      {
        v7 = sub_100033AE8(v7);
        v29 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v34;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v29 + 16))
      {
        goto LABEL_51;
      }

      v31 = v29 + 8 * v10;
      v32 = *(v31 + 32);
      *(v31 + 32) = v23;

      *v33 = v7;
    }

    v11 = __OFADD__(v34++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1000370D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100004890(0, &qword_100093708, CKRecord_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000371E8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100033538(result, 1);

  return sub_1000370D8(v5, v3, 0);
}

uint64_t sub_1000372C0(void *a1, uint64_t *a2)
{
  v51 = a1;
  v3 = type metadata accessor for Logger();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v47 = a2;
  v48 = v3;
  v6 = *a2;
  v7 = *a2 >> 62;
  v45 = v5;
  if (v7)
  {
LABEL_27:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
  }

  v9 = 0;
  v49 = v6 & 0xFFFFFFFFFFFFFF8;
  v50 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v50)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v49 + 16))
      {
        goto LABEL_26;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = [v10 recordID];
    v14 = [v13 recordName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [v51 recordName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_19;
    }

    ++v9;
    if (v12 == v8)
    {
    }
  }

LABEL_19:

  v25 = v47;
  swift_beginAccess();
  v26 = v51;
  v27 = sub_100036DA8(v25, v26);
  v28 = v48;
  v29 = v27;

  if (!(*v25 >> 62))
  {
    v30 = *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30 >= v29)
    {
      goto LABEL_21;
    }

LABEL_29:
    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v30 = _CocoaArrayWrapper.endIndex.getter();
  if (v30 < v29)
  {
    goto LABEL_29;
  }

LABEL_21:
  sub_1000371E8(v29, v30);
  swift_endAccess();
  v31 = sub_10003915C();
  v33 = v45;
  v32 = v46;
  (*(v46 + 16))(v45, v31, v28);
  v34 = v11;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52[0] = v39;
    *v37 = 136315394;
    v40 = CKRecord.recordType.getter();
    v41 = v32;
    v43 = sub_1000034B8(v40, v42, v52);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v34;
    *v38 = v34;
    v44 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "Don't send this record as part of update list as it is in queue for deletion: %s, %@", v37, 0x16u);
    sub_100006CAC(v38, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v39);

    return (*(v41 + 8))(v33, v48);
  }

  else
  {

    return (*(v32 + 8))(v33, v28);
  }
}

unint64_t sub_10003774C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10000A45C(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v15 = *i;
      v9 = *(i - 1);

      result = a4(v9);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 16 * result) = v15;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
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

id sub_10003785C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100037898(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*v2 + 848);

  v6(2, 0, sub_100037964, v5);
}

uint64_t sub_1000379CC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_100037AD8(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_100019AA4();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v3;
  v6[4] = v4;
  v8[4] = sub_100037BE8;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001D1B4;
  v8[3] = &unk_10008AA50;
  v7 = _Block_copy(v8);

  [v5 accountInfoWithCompletionHandler:v7];
  _Block_release(v7);
}

void sub_100037BE8(void *a1, void *a2)
{
  v5 = *(v2 + 24);
  Transaction.capture()();
  if (a2)
  {
    swift_errorRetain();
    v5(a2, 1);
  }

  else if (a1)
  {
    v6 = a1;
    v5(a1, 0);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

BOOL sub_100037D14(uint64_t a1)
{
  sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  sub_10000FA34(&qword_1000937B0, &qword_100093F40, &qword_1000730E0, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100037DB8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100031420(a1);
  }

  return result;
}

uint64_t sub_100037E34(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100037E94(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_100037ECC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100037F14(uint64_t a1)
{
  v3 = *(v1 + 40);
  (*(v1 + 24))();
  return v3(a1);
}

uint64_t sub_100037F8C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  Transaction.capture()();
  if (*(v1 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_accountAvailable) == 1)
  {
    return (*(*v1 + 904))(v4, v5, v2, v3);
  }

  sub_100034DB0();
  v7 = swift_allocError();
  *v8 = 0;
  v2(v7, 1);
}

uint64_t sub_100038094(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));
  a1(*(v2 + 40));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100038170(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return swift_errorRetain();
  }

  else
  {
    v9 = a1;

    return sub_10000FB4C(a2, a3);
  }
}

uint64_t sub_1000381C4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_100006BB4(a2, a3);
  }
}

uint64_t sub_100038218(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100038280(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

id sub_100038368(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100038374(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100038388(uint64_t *a1)
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

uint64_t sub_1000383E0(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1000228D4(a1, a2 & 1, v7, (v2 + v6), v9, v10);
}

uint64_t sub_10003849C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A45C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_100038560()
{
  result = qword_100093818;
  if (!qword_100093818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093818);
  }

  return result;
}

uint64_t sub_1000385B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(&qword_100094180, &qword_100074290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100038620(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_10003885C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1000388F4()
{
  result = qword_100093878;
  if (!qword_100093878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093878);
  }

  return result;
}

uint64_t sub_100038B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_autoreleasePoolPush();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  objc_autoreleasePoolPop(v5);
  return v6;
}

uint64_t sub_100038BC4@<X0>(uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v8 = objc_autoreleasePoolPush();
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (v5)
  {

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return (*(*(a3 - 8) + 56))(a5, v9, 1, a3);
}

CKRecord sub_100038CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100004890(0, &qword_1000936F0, CKRecordID_ptr);
  v9 = (*(*(a3 + 8) + 32))(a2);
  v11 = v10;
  sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
  v12 = (*(a3 + 24))(a2, a3);
  v14 = v13;
  v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15._object = v16;
  v17._countAndFlagsBits = v12;
  v17._object = v14;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v17, v15).super.isa;
  v19._countAndFlagsBits = v9;
  v19._object = v11;
  v20.super.isa = CKRecordID.init(recordName:zoneID:)(v19, isa).super.isa;
  v21 = sub_10003915C();
  v33 = v6;
  v34 = v5;
  (*(v6 + 16))(v8, v21, v5);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v20.super.isa;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v25 = 136315138;
    v27 = (*(a3 + 16))(a2, a3);
    v29 = sub_1000034B8(v27, v28, &v35);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to unarchive record -- creating new %s record", v25, 0xCu);
    sub_1000036EC(v26);

    v20.super.isa = v24;
  }

  (*(v33 + 8))(v8, v34);
  sub_100004890(0, &qword_100093708, CKRecord_ptr);
  v30._countAndFlagsBits = (*(a3 + 16))(a2, a3);
  return CKRecord.init(recordType:recordID:)(v30, v20);
}

uint64_t sub_100038FCC()
{
  v1 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v0 encodeSystemFieldsWithCoder:v1];
  [v1 finishEncoding];
  v2 = [v1 encodedData];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100039354(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100038620(v5, a2);
  sub_1000027FC(v5, a2);
  return Logger.init(subsystem:category:)();
}

void *sub_100039428@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100039504()
{
  if (*v0)
  {
    return 0x6F636341656D6153;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_100039554()
{
  v0 = type metadata accessor for URL();
  sub_100038620(v0, qword_100098AE8);
  sub_1000027FC(v0, qword_100098AE8);
  return URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t sub_1000395BC()
{
  if (qword_100096500 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return sub_1000027FC(v0, qword_100098AE8);
}

unint64_t sub_100039620(int a1)
{
  v145 = type metadata accessor for Date();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v140 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v5 = __chkstk_darwin(v4 - 8);
  v142 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v143 = &v139 - v8;
  v9 = __chkstk_darwin(v7);
  v141 = &v139 - v10;
  __chkstk_darwin(v9);
  v12 = &v139 - v11;
  v13 = type metadata accessor for CloudPairedDeviceRecord(0);
  v14 = sub_100006D64(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord, &unk_100073B90);
  v146 = sub_100006DF4(v13, v14);
  v162 = 0xD000000000000019;
  v163 = 0x800000010007A6A0;
  v15 = (v1 + v13[6]);
  v16 = v15[1];
  v156._countAndFlagsBits = *v15;
  v156._object = v16;

  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  String.append(_:)(v156);

  v161._countAndFlagsBits = *(v1 + v13[10]);
  v156._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v156._object = v18;
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  String.append(_:)(v156);

  if (*(v1 + v13[11]) == 1)
  {
    v156._countAndFlagsBits = 0;
    v156._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0x6F636341656D6153;
    v20._object = 0xEB00000000746E75;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 8236;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    String.append(_:)(v156);
  }

  if (*(v1 + v13[12]))
  {
    v161._countAndFlagsBits = *(v1 + v13[12]);
    v156._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v156._object = v22;
    v23._countAndFlagsBits = 8236;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    String.append(_:)(v156);
  }

  v24._countAndFlagsBits = 0x203A454C66;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v161._countAndFlagsBits = *(v1 + v13[7]);
  v156._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v156._object = v25;
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  String.append(_:)(v156);

  v150 = v13;
  v151 = v1;
  if (a1 >= 20)
  {
    v156._countAndFlagsBits = Data.hexString.getter(*(v1 + v13[8]), *(v1 + v13[8] + 8));
    v156._object = v65;
    v66._countAndFlagsBits = 8236;
    v66._object = 0xE200000000000000;
    String.append(_:)(v66);
    String.append(_:)(v156);

    v156._countAndFlagsBits = 0;
    v156._object = 0xE000000000000000;
    v67 = *(v1 + v13[9]);
    v68 = *(v67 + 16);
    if (v68)
    {
      v69 = 0;
      v70 = (v67 + 40);
      v71 = _swiftEmptyArrayStorage;
      while (v69 < *(v67 + 16))
      {
        v73 = *(v70 - 1);
        v72 = *v70;
        sub_100006218(v73, *v70);
        v74 = Data.hexString.getter(v73, v72);
        v76 = v75;
        sub_1000066CC(v73, v72);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000176D4(0, *(v71 + 2) + 1, 1, v71);
          v71 = result;
        }

        v78 = *(v71 + 2);
        v77 = *(v71 + 3);
        if (v78 >= v77 >> 1)
        {
          result = sub_1000176D4((v77 > 1), v78 + 1, 1, v71);
          v71 = result;
        }

        ++v69;
        *(v71 + 2) = v78 + 1;
        v79 = &v71[16 * v78];
        *(v79 + 4) = v74;
        *(v79 + 5) = v76;
        v70 += 2;
        if (v68 == v69)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_46;
    }

LABEL_25:
    v85 = Array.description.getter();
    v87 = v86;

    v88._countAndFlagsBits = v85;
    v88._object = v87;
    String.append(_:)(v88);

    v89._countAndFlagsBits = 8236;
    v89._object = 0xE200000000000000;
    String.append(_:)(v89);
    String.append(_:)(v156);
  }

  else
  {
    v156._countAndFlagsBits = Data.description.getter();
    v156._object = v27;
    v28._countAndFlagsBits = 8236;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    String.append(_:)(v156);

    v161._countAndFlagsBits = 0;
    v161._object = 0xE000000000000000;
    v30 = *(v1 + v13[9]);
    v149 = *(v30 + 16);
    if (v149)
    {
      v31 = 0;
      v32 = (v30 + 40);
      v33 = _swiftEmptyArrayStorage;
      v147 = v30;
      v148 = v12;
      while (v31 < *(v30 + 16))
      {
        v154 = v32;
        v155 = v31;
        v35 = *(v32 - 1);
        v34 = *v32;
        sub_100006218(v35, *v32);
        v152 = v35;
        v153 = v34;
        v36 = Data.hexString.getter(v35, v34);
        sub_10003C7FC(8, v36, v37);

        v156._countAndFlagsBits = 3026478;
        v156._object = 0xE300000000000000;
        v38 = static String._fromSubstring(_:)();
        v40 = v39;

        v159 = v38;
        v160 = v40;
        String.append<A>(contentsOf:)();
        Substring.init(_:)();
        v41 = Data.hexString.getter(v35, v34);
        v43 = v33;
        v44 = sub_10003C898(5uLL, v41, v42);
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v156._countAndFlagsBits = v44;
        v156._object = v46;
        v33 = v43;
        v157 = v48;
        v158 = v50;
        v51 = static String._fromSubstring(_:)();
        v53 = v52;

        v159 = v51;
        v160 = v53;
        sub_10003C954();
        String.append<A>(contentsOf:)();
        v54 = Substring.init(_:)();
        v56 = v55;
        v58 = v57;
        v60 = v59;
        sub_1000066CC(v152, v153);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10003C680(0, *(v43 + 2) + 1, 1, v43);
          v33 = result;
        }

        v62 = *(v33 + 2);
        v61 = *(v33 + 3);
        v63 = v155;
        if (v62 >= v61 >> 1)
        {
          result = sub_10003C680((v61 > 1), v62 + 1, 1, v33);
          v33 = result;
        }

        v31 = v63 + 1;
        *(v33 + 2) = v62 + 1;
        v64 = &v33[32 * v62];
        *(v64 + 4) = v54;
        *(v64 + 5) = v56;
        *(v64 + 6) = v58;
        *(v64 + 7) = v60;
        v32 = v154 + 2;
        v12 = v148;
        v30 = v147;
        if (v149 == v31)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

LABEL_24:
    v80 = Array.description.getter();
    v82 = v81;

    v83._countAndFlagsBits = v80;
    v83._object = v82;
    String.append(_:)(v83);

    v84._countAndFlagsBits = 8236;
    v84._object = 0xE200000000000000;
    String.append(_:)(v84);
    String.append(_:)(v161);
  }

  v90 = v146;
  v91 = [v146 recordChangeTag];
  if (v91)
  {
    v92 = v91;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = 540691267;
    v96._object = 0xE400000000000000;
    String.append(_:)(v96);
    v156._countAndFlagsBits = v93;
    v156._object = v95;
    v97._countAndFlagsBits = 8236;
    v97._object = 0xE200000000000000;
    String.append(_:)(v97);
    String.append(_:)(v156);

    v156._countAndFlagsBits = 0;
    v156._object = 0xE000000000000000;
    v98 = [v90 modifiedByDevice];
    if (v98)
    {
      v99 = v98;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v101;
    }

    else
    {
      v102 = 0xE100000000000000;
      v100 = 45;
    }

    v105 = v141;
    v106._countAndFlagsBits = v100;
    v106._object = v102;
    String.append(_:)(v106);

    v107._countAndFlagsBits = 8236;
    v107._object = 0xE200000000000000;
    String.append(_:)(v107);
    String.append(_:)(v156);

    v156._countAndFlagsBits = 544490595;
    v156._object = 0xE400000000000000;
    v108 = [v146 creationDate];
    if (v108)
    {
      v109 = v108;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = 0;
    }

    else
    {
      v110 = 1;
    }

    v111 = v145;
    v112 = v144;
    v113 = v105;
    v114 = *(v144 + 56);
    v114(v113, v110, 1, v145);
    sub_10003C78C(v113, v12);
    v115 = *(v112 + 48);
    if (v115(v12, 1, v111))
    {
      sub_100006CAC(v12, &unk_1000938B0, &qword_100074AA0);
      v116 = 0xE100000000000000;
      v117 = 45;
    }

    else
    {
      v118 = v12;
      v119 = v140;
      (*(v112 + 16))(v140, v118, v111);
      sub_100006CAC(v118, &unk_1000938B0, &qword_100074AA0);
      v120 = v111;
      v121 = v112;
      v122 = sub_100040E8C();
      v116 = v123;
      (*(v121 + 8))(v119, v120);
      v117 = v122;
    }

    v124 = v116;
    String.append(_:)(*&v117);

    v125._countAndFlagsBits = 8236;
    v125._object = 0xE200000000000000;
    String.append(_:)(v125);
    String.append(_:)(v156);

    v156._countAndFlagsBits = 544490605;
    v156._object = 0xE400000000000000;
    v126 = [v146 modificationDate];
    if (v126)
    {
      v127 = v142;
      v128 = v126;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v129 = 0;
      v130 = v145;
      v131 = v144;
    }

    else
    {
      v129 = 1;
      v130 = v145;
      v131 = v144;
      v127 = v142;
    }

    v114(v127, v129, 1, v130);
    v132 = v143;
    sub_10003C78C(v127, v143);
    if (v115(v132, 1, v130))
    {
      sub_100006CAC(v132, &unk_1000938B0, &qword_100074AA0);
      v133 = 0xE100000000000000;
      v103 = 45;
    }

    else
    {
      v134 = v140;
      (*(v131 + 16))(v140, v132, v130);
      sub_100006CAC(v132, &unk_1000938B0, &qword_100074AA0);
      v135 = v130;
      v136 = v131;
      v137 = sub_100040E8C();
      v133 = v138;
      (*(v136 + 8))(v134, v135);
      v103 = v137;
    }

    v104 = v133;
  }

  else
  {
    v156._countAndFlagsBits = 544490605;
    v156._object = 0xE400000000000000;
    v103 = sub_100040E8C();
  }

  String.append(_:)(*&v103);

  String.append(_:)(v156);

  return v162;
}

void sub_10003A270(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = type metadata accessor for CloudPairedDeviceRecord(0);
  *(a5 + v9[10]) = 0;
  v10 = (a5 + v9[6]);
  *v10 = a1;
  v10[1] = a2;
  *(a5 + v9[7]) = [a3 fastLEConnectionInfoVersion];
  v11 = [a3 fastLEConnectionInfoData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xC000000000000000;
  }

  v16 = (a5 + v9[8]);
  *v16 = v13;
  v16[1] = v15;
  *(a5 + v9[9]) = a4;
  *(a5 + v9[11]) = 1;
  *(a5 + v9[12]) = [a3 supportedServices];
  *a5 = xmmword_100073980;
  static Date.now.getter();
}

uint64_t sub_10003A398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v4 = __chkstk_darwin(v3 - 8);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v74 = &v64 - v7;
  __chkstk_darwin(v6);
  v77 = &v64 - v8;
  v9 = type metadata accessor for Date();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = __chkstk_darwin(v9);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v64 - v12;
  v13 = sub_10000A45C(&qword_1000938C8, &qword_1000739B0);
  v80 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v64 - v17;
  v19 = type metadata accessor for CloudPairedDeviceRecord(0);
  __chkstk_darwin(v19);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078C8(a1, a1[3]);
  sub_10003C9A8();
  v22 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_1000036EC(a1);
  }

  v71 = v16;
  v81 = v19;
  v23 = v21;
  v83 = 0;
  sub_10003C9FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v13;
  v26 = v23;
  *v23 = v82;
  LOBYTE(v82) = 2;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v70 = 0;
  v28 = v81;
  v29 = (v23 + v81[6]);
  *v29 = v27;
  v29[1] = v30;
  LOBYTE(v82) = 3;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v24;
  v33 = a1;
  *(v23 + v28[7]) = v31;
  v83 = 4;
  v69 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v23 + v28[8]) = v82;
  v34 = v80;
  (*(v80 + 16))(v71, v18, v69);
  sub_10000A45C(&qword_1000938D8, &qword_1000739B8);
  v83 = 5;
  sub_10003CDC8(&qword_1000938E0, sub_10003C9FC, &protocol conformance descriptor for <A> [A]);
  v35 = v71;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v34 + 8;
  v37 = *(v34 + 8);
  v80 = v36;
  v37(v35, v69);
  v38 = v82;
  if (!v82)
  {
    v38 = _swiftEmptyArrayStorage;
  }

  *(v23 + v28[9]) = v38;
  LOBYTE(v82) = 6;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v71 = v37;
  *(v23 + v28[10]) = v39;
  v83 = 7;
  sub_10003CA50();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v23 + v28[11]) = v82;
  LOBYTE(v82) = 8;
  *(v23 + v28[12]) = KeyedDecodingContainer.decode(_:forKey:)();
  v68 = v28[5];
  static Date.now.getter();
  LOBYTE(v82) = 1;
  sub_100006D64(&qword_1000938F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v40 = v77;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = v79;
  v42 = v78[6];
  v70 = v78 + 6;
  v67 = v42;
  if (v42(v40, 1, v79) == 1)
  {
    v43 = sub_100006D64(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord, &unk_100073B90);
    v44 = sub_100006DF4(v81, v43);
    v45 = [v44 modificationDate];

    if (v45)
    {
      v46 = v73;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v71(v18, v69);
      v47 = v78;
      v48 = v78[4];
      v49 = v74;
      v50 = v46;
      v51 = v79;
      v48(v74, v50, v79);
      (v47[7])(v49, 0, 1, v51);
      v48(v76, v49, v51);
    }

    else
    {
      v65 = v78[7];
      v66 = v78 + 7;
      v65(v74, 1, 1, v79);
      v55 = sub_100006DF4(v81, v43);
      v56 = [v55 creationDate];

      if (v56)
      {
        v57 = v73;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v71(v18, v69);
        v58 = v79;
        v59 = v78[4];
        v60 = v72;
        v59(v72, v57, v79);
        v65(v60, 0, 1, v58);
        v59(v76, v60, v58);
      }

      else
      {
        v61 = v72;
        v62 = v79;
        v65(v72, 1, 1, v79);
        static Date.now.getter();
        v71(v18, v69);
        if (v67(v61, 1, v62) != 1)
        {
          sub_100006CAC(v72, &unk_1000938B0, &qword_100074AA0);
        }
      }

      if (v67(v74, 1, v79) != 1)
      {
        sub_100006CAC(v74, &unk_1000938B0, &qword_100074AA0);
      }
    }

    v41 = v79;
    v63 = v67(v77, 1, v79);
    v52 = v78;
    v26 = v23;
    v33 = a1;
    v54 = v75;
    v53 = v76;
    if (v63 != 1)
    {
      sub_100006CAC(v77, &unk_1000938B0, &qword_100074AA0);
    }
  }

  else
  {
    v71(v18, v69);
    v52 = v78;
    v53 = v76;
    (v78[4])(v76, v40, v41);
    v54 = v75;
  }

  (v52[5])(v26 + v68, v53, v41);
  sub_100004EFC(v26, v54);
  sub_1000036EC(v33);
  return sub_100007124(v26);
}

uint64_t sub_10003AE98(uint64_t a1)
{
  v27 = type metadata accessor for Date();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudPairedDeviceRecord(0);
  v7 = v6;
  v8 = *(v6 + 28);
  v9 = *(a1 + v8);
  if (!v9)
  {
    v9 = *(v1 + v8);
  }

  *(v1 + v8) = v9;
  v10 = *(v6 + 32);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (v13)
    {
      if (v12 != v12 >> 32)
      {
        goto LABEL_12;
      }
    }

    else if ((v11 & 0xFF000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v13 != 2 || *(v12 + 16) == *(v12 + 24))
  {
LABEL_11:
    v12 = *(v1 + v10);
    v11 = *(v1 + v10 + 8);
  }

LABEL_12:
  v14 = (v1 + v10);
  v15 = *(v1 + v10);
  v16 = *(v1 + v10 + 8);
  sub_100006218(v12, v11);
  sub_1000066CC(v15, v16);
  *v14 = v12;
  v14[1] = v11;
  v17 = v7[9];
  v18 = *(a1 + v17);

  *(v1 + v17) = v18;
  v19 = v7[10];
  v20 = *(a1 + v19);
  if (!v20)
  {
    v20 = *(v1 + v19);
  }

  *(v1 + v19) = v20;
  v21 = v7[11];
  if (*(a1 + v21))
  {
    v22 = 1;
  }

  else
  {
    v22 = *(v1 + v21);
  }

  *(v1 + v21) = v22;
  v23 = v7[12];
  v24 = *(a1 + v23);
  if (!v24)
  {
    v24 = *(v1 + v23);
  }

  *(v1 + v23) = v24;
  static Date.now.getter();
  return (*(v3 + 40))(v1 + v7[5], v5, v27);
}

void sub_10003B080(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v63 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v63 - v14;
  v15 = CKRecord.recordType.getter();
  v17 = v16;
  swift_beginAccess();
  if (__PAIR128__(v17, v15) == off_100093890)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      sub_10003CAA4();
      swift_allocError();
      *v38 = 0;
      swift_willThrow();

      return;
    }
  }

  v64 = v8;
  v70 = v11;
  v67 = v10;
  v68 = v2;
  v19 = [a1 encryptedValues];
  v20 = a1;
  ObjectType = swift_getObjectType();
  *a2 = sub_100038FCC();
  a2[1] = v22;
  CKRecordKeyValueSetting.subscript.getter();
  if (BYTE8(v73))
  {
    v23 = 0;
  }

  else
  {
    v23 = v73;
  }

  v24 = type metadata accessor for CloudPairedDeviceRecord(0);
  *(a2 + v24[10]) = v23;
  v66 = v20;
  v25 = [v20 recordID];
  v26 = [v25 recordName];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = (a2 + v24[6]);
  *v30 = v27;
  v30[1] = v29;
  v65 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v31 = v73;
  if (BYTE8(v73))
  {
    v31 = 0;
  }

  *(a2 + v24[7]) = v31;
  v32 = String._bridgeToObjectiveC()();
  v33 = [v19 objectForKeyedSubscript:v32];

  v34 = xmmword_100073980;
  if (!v33)
  {
    v36 = v72;
    goto LABEL_13;
  }

  v63 = xmmword_100073980;
  v74 = v33;
  sub_10000A45C(&unk_100093260, &qword_1000730C8);
  v35 = swift_dynamicCast();
  v36 = v72;
  if (v35)
  {
    v34 = v73;
LABEL_13:
    v37 = v66;
    goto LABEL_16;
  }

  v37 = v66;
  v34 = v63;
LABEL_16:
  *(a2 + v24[8]) = v34;
  v39 = String._bridgeToObjectiveC()();
  v40 = [v19 objectForKeyedSubscript:v39];

  if (v40 && (*&v73 = v40, sub_10000A45C(&unk_100093260, &qword_1000730C8), sub_10000A45C(&qword_1000938D8, &qword_1000739B8), (swift_dynamicCast() & 1) != 0))
  {
    v41 = v74;
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  *(a2 + v24[9]) = v41;
  v42 = String._bridgeToObjectiveC()();
  v43 = [v19 objectForKeyedSubscript:v42];

  if (v43 && (*&v73 = v43, sub_10000A45C(&unk_100093260, &qword_1000730C8), (swift_dynamicCast() & 1) != 0) && v74 <= 1)
  {
    *(a2 + v24[11]) = v74;
  }

  else
  {
    *(a2 + v24[11]) = 0;
  }

  CKRecordKeyValueSetting.subscript.getter();
  v44 = v73;
  if (BYTE8(v73))
  {
    v44 = 0;
  }

  *(a2 + v24[12]) = v44;
  v45 = [v37 modificationDate];
  if (v45)
  {
    v46 = v69;
    v47 = v45;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    v48 = v70;
    v49 = *(v70 + 32);
    v50 = v46;
    v51 = v67;
    v49(v36, v50, v67);
    (*(v48 + 56))(v36, 0, 1, v51);
    v52 = v71;
    v49(v71, v36, v51);
  }

  else
  {
    v48 = v70;
    v53 = *(v70 + 56);
    v51 = v67;
    v53(v36, 1, 1, v67);
    v54 = [v37 creationDate];
    if (v54)
    {
      v55 = v48;
      v56 = v69;
      v66 = v53;
      v57 = v54;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      v58 = *(v55 + 32);
      v59 = v64;
      v58(v64, v56, v51);
      v66(v59, 0, 1, v51);
      v52 = v71;
      v58(v71, v59, v51);
      v36 = v72;
      v48 = v70;
      v60 = (*(v70 + 48))(v72, 1, v51);
    }

    else
    {
      v53(v64, 1, 1, v51);
      static Date.now.getter();
      swift_unknownObjectRelease();

      v61 = v64;
      v62 = *(v48 + 48);
      if (v62(v64, 1, v51) != 1)
      {
        sub_100006CAC(v61, &unk_1000938B0, &qword_100074AA0);
      }

      v52 = v71;
      v60 = v62(v36, 1, v51);
    }

    if (v60 != 1)
    {
      sub_100006CAC(v36, &unk_1000938B0, &qword_100074AA0);
    }
  }

  (*(v48 + 32))(a2 + v24[5], v52, v51);
}

void sub_10003B894(uint64_t a1)
{
  v2 = type metadata accessor for CloudPairedDeviceRecord(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v2[7]));
  Data.hash(into:)();
  v3 = *(v1 + v2[9]);
  Hasher._combine(_:)(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_100006218(v6, *v5);
      Data.hash(into:)();
      sub_1000066CC(v6, v7);
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(*(v1 + v2[10]));
  Hasher._combine(_:)(*(v1 + v2[12]));
}

uint64_t sub_10003B97C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74654D64756F6C63;
    v6 = 0x696669746E656469;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001BLL;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7954656369766564;
    v2 = 0x69687372656E776FLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10003BAE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003D540(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003BB14(uint64_t a1)
{
  v2 = sub_10003C9A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BB50(uint64_t a1)
{
  v2 = sub_10003C9A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003BB8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_100006218(v7, v6);
          sub_100006218(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_100006218(v7, v6);
        sub_100006218(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_100006218(v7, v6);
          sub_100006218(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_100007CF0(v24, v25, v26, v33);
          sub_1000066CC(v9, v8);
          sub_1000066CC(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_100006218(v7, v6);
        sub_100006218(v9, v8);
      }

      sub_100007CF0(v33, v9, v8, &v32);
      sub_1000066CC(v9, v8);
      sub_1000066CC(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_10003BF98(void *a1)
{
  v3 = v1;
  v5 = sub_10000A45C(&qword_100093910, &qword_1000739C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000078C8(a1, a1[3]);
  sub_10003C9A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v16 = 0;
  sub_100006218(v14, v9);
  sub_10003CD74();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000066CC(v14, v15);
  if (!v2)
  {
    v10 = type metadata accessor for CloudPairedDeviceRecord(0);
    LOBYTE(v14) = 1;
    type metadata accessor for Date();
    sub_100006D64(&qword_100093920, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = (v3 + v10[8]);
    v13 = v12[1];
    v14 = *v12;
    v15 = v13;
    v16 = 4;
    sub_100006218(v14, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000066CC(v14, v15);
    v14 = *(v3 + v10[9]);
    v16 = 5;
    sub_10000A45C(&qword_1000938D8, &qword_1000739B8);
    sub_10003CDC8(&qword_100093928, sub_10003CD74, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = *(v3 + v10[11]);
    v16 = 7;
    sub_10003CE40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10003C364()
{
  Hasher.init(_seed:)();
  sub_10003B894(v1);
  return Hasher._finalize()();
}

uint64_t sub_10003C3C4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v5 = *a3;

  return v5;
}

uint64_t sub_10003C41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_10003C508(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10003B894(v2);
  return Hasher._finalize()();
}

uint64_t sub_10003C558@<X0>(uint64_t a1@<X8>)
{
  if (qword_100096500 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000027FC(v2, qword_100098AE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10003C618(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

char *sub_10003C680(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A45C(&unk_100093A20, &qword_100073E18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_10003C78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C7FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t sub_10003C898(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t sub_10003C954()
{
  result = qword_1000938C0;
  if (!qword_1000938C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938C0);
  }

  return result;
}

unint64_t sub_10003C9A8()
{
  result = qword_100096508[0];
  if (!qword_100096508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100096508);
  }

  return result;
}

unint64_t sub_10003C9FC()
{
  result = qword_1000938D0;
  if (!qword_1000938D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938D0);
  }

  return result;
}

unint64_t sub_10003CA50()
{
  result = qword_1000938E8;
  if (!qword_1000938E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938E8);
  }

  return result;
}

unint64_t sub_10003CAA4()
{
  result = qword_1000938F8;
  if (!qword_1000938F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938F8);
  }

  return result;
}

BOOL sub_10003CAF8(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100006218(a3, a4);
          return sub_100007AA8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_10003CC60(uint64_t a1, uint64_t a2)
{
  if (sub_10003CAF8(*a1, *(a1 + 8), *a2, *(a2 + 8)) && (v4 = type metadata accessor for CloudPairedDeviceRecord(0), (static Date.== infix(_:_:)() & 1) != 0) && ((v5 = v4[6], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && *(a1 + v4[7]) == *(a2 + v4[7]) && sub_10003CAF8(*(a1 + v4[8]), *(a1 + v4[8] + 8), *(a2 + v4[8]), *(a2 + v4[8] + 8)) && (sub_10003BB8C(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11])))
  {
    return *(a1 + v4[12]) == *(a2 + v4[12]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10003CD74()
{
  result = qword_100093918;
  if (!qword_100093918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093918);
  }

  return result;
}

uint64_t sub_10003CDC8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(&qword_1000938D8, &qword_1000739B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003CE40()
{
  result = qword_100093930;
  if (!qword_100093930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093930);
  }

  return result;
}

unint64_t sub_10003CE98()
{
  result = qword_100093940;
  if (!qword_100093940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093940);
  }

  return result;
}

unint64_t sub_10003CEF0()
{
  result = qword_100093948;
  if (!qword_100093948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093948);
  }

  return result;
}

uint64_t sub_10003CF44(uint64_t a1)
{
  result = sub_100006D64(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C64);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003CFE4(uint64_t a1)
{
  *(a1 + 8) = sub_100006D64(&qword_100093960, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C80);
  result = sub_100006D64(&qword_100093968, type metadata accessor for CloudPairedDeviceRecord, &unk_100073CA8);
  *(a1 + 16) = result;
  return result;
}

void sub_10003D068(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10003D124();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003D124()
{
  if (!qword_1000939C8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000939C8);
    }
  }
}

uint64_t sub_10003D188(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10003D21C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudPairedDeviceRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudPairedDeviceRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003D43C()
{
  result = qword_100096EA0[0];
  if (!qword_100096EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100096EA0);
  }

  return result;
}

unint64_t sub_10003D494()
{
  result = qword_100096FB0;
  if (!qword_100096FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FB0);
  }

  return result;
}

unint64_t sub_10003D4EC()
{
  result = qword_100096FB8[0];
  if (!qword_100096FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100096FB8);
  }

  return result;
}

uint64_t sub_10003D540(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010007A6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010007A620 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010007A640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010007A660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69687372656E776FLL && a2 == 0xED00006570795470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010007A680 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_10003D834()
{
  result = qword_100093A18;
  if (!qword_100093A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093A18);
  }

  return result;
}

id sub_10003D898()
{
  result = [objc_allocWithZone(type metadata accessor for UserNotificationManager()) init];
  static UserNotificationManager.shared = result;
  return result;
}

uint64_t *UserNotificationManager.shared.unsafeMutableAddressor()
{
  if (qword_100097040 != -1)
  {
    swift_once();
  }

  return &static UserNotificationManager.shared;
}

id static UserNotificationManager.shared.getter()
{
  if (qword_100097040 != -1)
  {
    swift_once();
  }

  v1 = static UserNotificationManager.shared;

  return v1;
}

id variable initialization expression of UserNotificationManager.controller()
{
  v0 = objc_allocWithZone(CBController);

  return [v0 init];
}

char *sub_10003D9AC()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_controller;
  *(v0 + v6) = [objc_allocWithZone(CBController) init];
  v20[1] = sub_10000A8F8();
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v21;
  *&v21[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_dispatchQueue] = v7;
  v9 = objc_allocWithZone(UNUserNotificationCenter);
  v10 = v7;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 initWithBundleIdentifier:v11 queue:v10];

  *&v8[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter] = v12;
  v13 = type metadata accessor for UserNotificationManager();
  v24.receiver = v8;
  v24.super_class = v13;
  v14 = objc_msgSendSuper2(&v24, "init");
  v15 = OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter;
  v16 = *&v14[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter];
  v17 = v14;
  [v16 setDelegate:v17];
  v18 = [*&v14[v15] setWantsNotificationResponsesDelivered];
  (*((swift_isaMask & *v17) + 0x80))(v18);

  return v17;
}

void sub_10003DD50()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter);
  v3[4] = sub_10003DE04;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003E000;
  v3[3] = &unk_10008B210;
  v2 = _Block_copy(v3);
  [v1 requestAuthorizationWithOptions:7 completionHandler:v2];
  _Block_release(v2);
}

uint64_t sub_10003DE04(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100039094();
  v10 = *(v3 + 16);
  if (a1)
  {
    v10(v8, v9, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      v6 = v8;
      goto LABEL_8;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "LocalUserNotification authorization granted", v13, 2u);
    v6 = v8;
    goto LABEL_6;
  }

  v10(v6, v9, v2);
  v11 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, v14, "LocalUserNotification authorization denied", v15, 2u);
LABEL_6:
  }

LABEL_8:

  return (*(v3 + 8))(v6, v2);
}

void sub_10003E000(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_10003E078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = [objc_opt_self() triggerWithTimeInterval:0 repeats:0.1];
  v12 = String._bridgeToObjectiveC()();
  [a5 setThreadIdentifier:v12];

  v13 = String._bridgeToObjectiveC()();
  [a5 setCategoryIdentifier:v13];

  v14 = v11;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() requestWithIdentifier:v15 content:a5 trigger:v14];

  v17 = *&v6[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter];
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = v6;
  v18[4] = a1;
  v18[5] = a2;
  v21[4] = sub_1000408F4;
  v21[5] = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10003EA28;
  v21[3] = &unk_10008B260;
  v19 = _Block_copy(v21);
  v20 = v6;

  [v17 addNotificationRequest:v16 withCompletionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_10003E280(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v70 = a3;
  v71 = a5;
  v67 = a2;
  v68 = a4;
  v72 = a1;
  v63 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v61 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v69 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v57 - v22;
  if (v72)
  {
    swift_errorRetain();
    v24 = sub_100039094();
    v25 = v21;
    (*(v18 + 16))(v21, v24, v17);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = v17;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = sub_1000034B8(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "LocalUserNotification:showlocal Error scheduling notification: %s", v29, 0xCu);
      sub_1000036EC(v30);
    }

    else
    {
    }

    return (*(v18 + 8))(v25, v28);
  }

  else
  {
    v58 = v14;
    v59 = v10;
    v72 = v16;
    v60 = v7;
    v34 = sub_100039094();
    (*(v18 + 16))(v23, v34, v17);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "LocalUserNotification:showlocal scheduled successfully", v37, 2u);
    }

    result = (*(v18 + 8))(v23, v17);
    v39 = v11;
    v40 = v70;
    v41 = v71;
    v43 = v68;
    v42 = v69;
    v44 = v72;
    v45 = v67;
    if (v67)
    {
      v57 = *&v70[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_dispatchQueue];
      v46 = v58;
      static DispatchTime.now()();
      v47 = v59;
      *v59 = v45;
      v48 = v61;
      (*(v61 + 104))(v47, enum case for DispatchTimeInterval.seconds(_:), v8);
      + infix(_:_:)();
      (*(v48 + 8))(v47, v8);
      v49 = v66;
      v50 = v40;
      v69 = v42[1];
      (v69)(v46, v39);
      v51 = swift_allocObject();
      v51[2] = v40;
      v51[3] = v43;
      v51[4] = v41;
      aBlock[4] = sub_100040DBC;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002410;
      aBlock[3] = &unk_10008B360;
      v52 = _Block_copy(aBlock);
      v53 = v50;

      v54 = v60;
      static DispatchQoS.unspecified.getter();
      v73 = _swiftEmptyArrayStorage;
      sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v71 = v39;
      sub_10000A45C(&unk_1000931F0, &unk_100072C10);
      v55 = v63;
      sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
      v56 = v64;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v52);
      (*(v49 + 8))(v56, v55);
      (*(v62 + 8))(v54, v65);
      (v69)(v44, v71);
    }
  }

  return result;
}

void sub_10003EA28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t UserNotificationManager.userNotificationCenter(_:willPresent:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100039094();
  (*(v6 + 16))(v8, v9, v5);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v24 = swift_slowAlloc();
    v26 = v24;
    *v14 = 136315138;
    v15 = [v10 request];
    v16 = [v15 identifier];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = a3;
    v20 = v19;

    v21 = sub_1000034B8(v17, v20, &v26);
    a3 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "LocalUserNotification received with identifier %s", v14, 0xCu);
    sub_1000036EC(v24);

    (*(v6 + 8))(v8, v25);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return a3(18);
}

id UserNotificationManager.displayBannerUSBPairingCompleted(_:)(void *a1)
{
  v98 = type metadata accessor for URL();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  v4 = __chkstk_darwin(v3 - 8);
  v96 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v93 - v7;
  __chkstk_darwin(v6);
  v104 = &v93 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v103 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v102 = &v93 - v15;
  __chkstk_darwin(v14);
  v17 = &v93 - v16;
  v18 = [a1 vendorID];
  LODWORD(v111) = [a1 productID];
  v109 = [a1 colorInfo];
  v110 = a1;
  v19 = [a1 btAddressData];
  if (v19)
  {
    v20 = v19;
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000066CC(v21, v23);
  }

  else
  {
    v24.super.isa = 0;
  }

  v25 = CUPrintNSDataAddress();

  if (v25)
  {
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v26;
  }

  else
  {
    v99 = 0;
    v108 = 0xE000000000000000;
  }

  v27 = sub_100039094();
  v28 = *(v11 + 16);
  v105 = v27;
  v107 = v11 + 16;
  v106 = v28;
  (v28)(v17);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v112 = v94;
    *v31 = 136315650;
    sub_10000A45C(&qword_100093A40, &qword_100073E48);
    v32 = swift_allocObject();
    v101 = xmmword_100072BE0;
    *(v32 + 16) = xmmword_100072BE0;
    *(v32 + 56) = &type metadata for UInt16;
    *(v32 + 64) = &protocol witness table for UInt16;
    *(v32 + 32) = v18;
    v33 = String.init(format:_:)();
    v35 = v8;
    v36 = sub_1000034B8(v33, v34, &v112);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = swift_allocObject();
    *(v37 + 16) = v101;
    *(v37 + 56) = &type metadata for UInt32;
    *(v37 + 64) = &protocol witness table for UInt32;
    *(v37 + 32) = v111;
    v38 = String.init(format:_:)();
    v40 = sub_1000034B8(v38, v39, &v112);

    *(v31 + 14) = v40;
    v8 = v35;
    *(v31 + 22) = 2080;
    v41 = swift_allocObject();
    *(v41 + 16) = v101;
    *(v41 + 56) = &type metadata for UInt16;
    *(v41 + 64) = &protocol witness table for UInt16;
    *(v41 + 32) = v109;
    v42 = String.init(format:_:)();
    v44 = sub_1000034B8(v42, v43, &v112);

    *(v31 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v29, v30, "LocalUserNotification:USBPairingCompleted vid(%s), pid(%s), color(%s)", v31, 0x20u);
    swift_arrayDestroy();
  }

  v45 = *(v11 + 8);
  v45(v17, v10);
  v46 = v110;
  if (sub_100040900([v110 productID]))
  {
    v110 = [objc_allocWithZone(UNMutableNotificationContent) init];
    result = [objc_opt_self() sharedAssetHelper];
    if (WORD1(v111) || v109 > 0xFF)
    {
      __break(1u);
    }

    else
    {
      v48 = result;
      v49 = [result getImageURLForAppleProductID:v111 andColor:v109];

      if (v49)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v55 = v98;
      v56 = v97;
      (*(v97 + 56))(v8, v50, 1, v98);
      v57 = v104;
      sub_100040984(v8, v104);
      v58 = v57;
      v59 = v96;
      sub_100006C44(v58, v96, &qword_100093A38, &qword_100073E40);
      if ((*(v56 + 48))(v59, 1, v55) == 1)
      {
        sub_100006CAC(v59, &qword_100093A38, &qword_100073E40);
      }

      else
      {
        v60 = v95;
        (*(v56 + 32))(v95, v59, v55);
        v61 = v56;
        URL.path.getter();
        v62 = v55;
        v63 = String._bridgeToObjectiveC()();

        v64 = [objc_opt_self() iconAtPath:v63];

        [v110 setIcon:v64];
        (*(v61 + 8))(v60, v62);
      }

      v65 = String._bridgeToObjectiveC()();
      [v110 setTitle:v65];

      v66 = sub_1000409F4([v46 productID]);
      v93 = v11;
      *&v101 = v45;
      if (v66)
      {
        v67 = String._bridgeToObjectiveC()();
        [v110 setTitle:v67];

        v68 = 0xE500000000000000;
        v69 = 0x6573756F4DLL;
      }

      else if (sub_100040A14([v46 productID]))
      {
        v70 = String._bridgeToObjectiveC()();
        [v110 setTitle:v70];

        v68 = 0xE800000000000000;
        v69 = 0x6461706B63617254;
      }

      else if (sub_100040A34([v46 productID]))
      {
        v71 = String._bridgeToObjectiveC()();
        [v110 setTitle:v71];

        v68 = 0x800000010007A890;
        v69 = 0xD000000000000010;
      }

      else if (sub_100040A58([v46 productID]))
      {
        v72 = String._bridgeToObjectiveC()();
        [v110 setTitle:v72];

        v68 = 0xE800000000000000;
        v69 = 0x6472616F6279654BLL;
      }

      else
      {
        v68 = 0xE800000000000000;
        v69 = 0x444948656C707041;
      }

      sub_10000A45C(&qword_100093A40, &qword_100073E48);
      v73 = swift_allocObject();
      v111 = xmmword_100072BE0;
      *(v73 + 16) = xmmword_100072BE0;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = sub_100040A98();
      *(v73 + 32) = v69;
      *(v73 + 40) = v68;

      v74 = String.init(format:_:)();
      v76 = v75;
      v106(v103, v105, v10);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = v69;
        v81 = v10;
        v82 = swift_slowAlloc();
        v112 = v82;
        *v79 = 136315138;
        *(v79 + 4) = sub_1000034B8(v74, v76, &v112);
        _os_log_impl(&_mh_execute_header, v77, v78, "LocalUserNotification:USBPairingCompleted bodyKey = %s", v79, 0xCu);
        sub_1000036EC(v82);

        v83 = v103;
        v84 = v81;
        v69 = v80;
      }

      else
      {

        v83 = v103;
        v84 = v10;
      }

      (v101)(v83, v84);
      v85 = objc_opt_self();
      v86 = String._bridgeToObjectiveC()();

      v87 = [v85 localizedUserNotificationStringForKey:v86 arguments:0];

      if (!v87)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = String._bridgeToObjectiveC()();
      }

      v88 = v110;
      [v110 setBody:{v87, v93}];

      sub_10000A45C(&unk_100093A50, &unk_100073030);
      inited = swift_initStackObject();
      *(inited + 16) = v111;
      v112 = 0xD000000000000014;
      v113 = 0x800000010007A840;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      v90 = v108;
      *(inited + 72) = v99;
      *(inited + 80) = v90;
      sub_100017EE0(inited);
      swift_setDeallocating();
      sub_100006CAC(inited + 32, &qword_100093160, &qword_100073040);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v88 setUserInfo:isa];

      v112 = 0xD00000000000002ALL;
      v113 = 0x800000010007A860;
      v92._countAndFlagsBits = v69;
      v92._object = v68;
      String.append(_:)(v92);

      (*((swift_isaMask & *v100) + 0x88))(v112, v113, 0xD000000000000030, 0x800000010007A730, v88, 0);

      return sub_100006CAC(v104, &qword_100093A38, &qword_100073E40);
    }
  }

  else
  {

    v51 = v102;
    v106(v102, v105, v10);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "LocalUserNotification:USBPairingCompleted No Apple MIDs", v54, 2u);
    }

    return (v45)(v51, v10);
  }

  return result;
}

void UserNotificationManager.displayBannerGameControllerConnected(_:)(void *a1)
{
  v91 = type metadata accessor for URL();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v84[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  v4 = __chkstk_darwin(v3 - 8);
  v99 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v8 = &v84[-v7];
  __chkstk_darwin(v6);
  v89 = &v84[-v9];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v101 = &v84[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v84[-v14];
  v93 = [a1 vendorID];
  v16 = [a1 productID];
  v17 = [a1 name];
  if (v17)
  {
    v18 = v17;
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v20 = 0xEF72656C6C6F7274;
    v103 = 0x6E6F4320656D6147;
  }

  v88 = v8;
  v94 = [a1 colorInfo];
  v21 = [a1 btAddressData];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000066CC(v23, v25);
  }

  else
  {
    v26.super.isa = 0;
  }

  v27 = CUPrintNSDataAddress();

  if (v27)
  {
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v104 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = sub_100039094();
  v31 = *(v11 + 16);
  v97 = v30;
  v98 = v11 + 16;
  v96 = v31;
  v31(v15);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v105 = v11;
  v100 = v29;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v86 = v10;
    v85 = v16;
    v36 = v35;
    v37 = swift_slowAlloc();
    v95 = v20;
    v106[0] = v37;
    *v36 = 136316162;
    *(v36 + 4) = sub_1000034B8(v103, v95, v106);
    *(v36 + 12) = 2080;
    sub_10000A45C(&qword_100093A40, &qword_100073E48);
    v38 = swift_allocObject();
    v92 = xmmword_100072BE0;
    *(v38 + 16) = xmmword_100072BE0;
    *(v38 + 56) = &type metadata for UInt16;
    *(v38 + 64) = &protocol witness table for UInt16;
    *(v38 + 32) = v93;
    v39 = String.init(format:_:)();
    v41 = sub_1000034B8(v39, v40, v106);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2080;
    v42 = swift_allocObject();
    *(v42 + 16) = v92;
    *(v42 + 56) = &type metadata for UInt32;
    *(v42 + 64) = &protocol witness table for UInt32;
    *(v42 + 32) = v85;
    v43 = String.init(format:_:)();
    v45 = sub_1000034B8(v43, v44, v106);

    *(v36 + 24) = v45;
    *(v36 + 32) = 2080;
    v46 = swift_allocObject();
    *(v46 + 16) = v92;
    *(v46 + 56) = &type metadata for UInt16;
    *(v46 + 64) = &protocol witness table for UInt16;
    *(v46 + 32) = v94;
    v47 = String.init(format:_:)();
    v49 = sub_1000034B8(v47, v48, v106);

    *(v36 + 34) = v49;
    *(v36 + 42) = 2080;
    *(v36 + 44) = sub_1000034B8(v104, v29, v106);
    _os_log_impl(&_mh_execute_header, v32, v33, "LocalUserNotification:GameControllerConnected name(%s), vid(%s), pid(%s), color(%s), BDAddr(%s)", v36, 0x34u);
    swift_arrayDestroy();
    v20 = v95;

    v50 = *(v105 + 8);
    v51 = v86;
    v50(v15);
  }

  else
  {

    v50 = *(v11 + 8);
    v51 = v10;
    (v50)(v15, v10);
  }

  v52 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v53 = String._bridgeToObjectiveC()();
  v54 = objc_opt_self();
  v55 = [v54 iconForSystemImageNamed:v53];

  [v52 setIcon:v55];
  v56 = [v52 icon];
  v57 = v99;
  if (v56)
  {

    v58 = v101;
  }

  else
  {
    v59 = [objc_opt_self() sharedAssetHelper];
    v60 = String._bridgeToObjectiveC()();
    v61 = [v59 getImageURLFromImageName:v60];

    if (v61)
    {
      v62 = v88;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = 0;
      v64 = v91;
      v65 = v89;
    }

    else
    {
      v63 = 1;
      v64 = v91;
      v65 = v89;
      v62 = v88;
    }

    v66 = v90;
    (*(v90 + 56))(v62, v63, 1, v64);
    sub_100040984(v62, v65);
    sub_100006C44(v65, v57, &qword_100093A38, &qword_100073E40);
    if ((*(v66 + 48))(v57, 1, v64) == 1)
    {
      sub_100006CAC(v65, &qword_100093A38, &qword_100073E40);
      v67 = v57;
    }

    else
    {
      v68 = v87;
      (*(v66 + 32))(v87, v57, v64);
      URL.path.getter();
      v69 = String._bridgeToObjectiveC()();
      v95 = v20;
      v70 = v65;
      v71 = v69;

      v72 = [v54 iconAtPath:v71];

      [v52 setIcon:v72];
      (*(v66 + 8))(v68, v64);
      v67 = v70;
    }

    sub_100006CAC(v67, &qword_100093A38, &qword_100073E40);
    v58 = v101;
  }

  v73 = String._bridgeToObjectiveC()();

  [v52 setTitle:v73];

  v96(v58, v97, v51);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v106[0] = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_1000034B8(0xD000000000000029, 0x800000010007A8B0, v106);
    _os_log_impl(&_mh_execute_header, v74, v75, "LocalUserNotification:GCConnected titleKey = %s", v76, 0xCu);
    sub_1000036EC(v77);
  }

  (v50)(v58, v51);
  v78 = objc_opt_self();
  v79 = String._bridgeToObjectiveC()();
  v80 = [v78 localizedUserNotificationStringForKey:v79 arguments:0];

  if (!v80)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = String._bridgeToObjectiveC()();
  }

  [v52 setBody:v80];

  sub_10000A45C(&unk_100093A50, &unk_100073030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100072BE0;
  v106[0] = 0xD000000000000014;
  v106[1] = 0x800000010007A840;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  v82 = v100;
  *(inited + 72) = v104;
  *(inited + 80) = v82;
  sub_100017EE0(inited);
  swift_setDeallocating();
  sub_100006CAC(inited + 32, &qword_100093160, &qword_100073040);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v52 setUserInfo:isa];

  (*((swift_isaMask & *v102) + 0x88))(0xD000000000000038, 0x800000010007A8E0, 0xD000000000000030, 0x800000010007A730, v52, 20);
}

id UserNotificationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100040900(int a1)
{
  result = 1;
  if (((a1 - 569) > 0x33 || ((1 << (a1 - 57)) & 0x9500070000007) == 0) && ((a1 - 781) > 0x17 || ((1 << (a1 - 13)) & 0xF80003) == 0))
  {
    v3 = a1 - 666;
    if (v3 > 5 || ((1 << v3) & 0x25) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100040984(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1000409F4(int a1)
{
  v1 = a1 == 803;
  if (a1 == 781)
  {
    v1 = 1;
  }

  return a1 == 617 || v1;
}

BOOL sub_100040A14(int a1)
{
  v1 = a1 == 804;
  if (a1 == 782)
  {
    v1 = 1;
  }

  return a1 == 613 || v1;
}

BOOL sub_100040A34(int a1)
{
  v1 = a1 == 671;
  if (a1 == 666)
  {
    v1 = 1;
  }

  return (a1 - 801) < 2 || v1;
}

BOOL sub_100040A58(int a1)
{
  result = 1;
  if ((a1 - 615) > 0x38 || ((1 << (a1 - 103)) & 0x128000000000021) == 0)
  {
    return (a1 - 800) < 3;
  }

  return result;
}

unint64_t sub_100040A98()
{
  result = qword_100093A48;
  if (!qword_100093A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093A48);
  }

  return result;
}

uint64_t sub_100040AEC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100039094();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = [v9 request];
    v16 = [v15 identifier];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_1000034B8(v17, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "LocalUserNotification received with identifier %s", v13, 0xCu);
    sub_1000036EC(v14);

    a2 = v22;
  }

  (*(v5 + 8))(v7, v4);
  return (*(a2 + 16))(a2, 18);
}

unint64_t sub_100040D48()
{
  result = qword_100093A70;
  if (!qword_100093A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093A70);
  }

  return result;
}

void sub_100040DBC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter);
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100072BE0;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 removeDeliveredNotificationsWithIdentifiers:isa];
}

uint64_t sub_100040E8C()
{
  v0 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

BOOL sub_100040F78(void *a1, uint64_t *a2)
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

void *sub_100040FA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100040FD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000410C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100049DE4(a1);

  *a2 = v3;
  return result;
}

Swift::Int sub_100041108()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100041174(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000411B4(uint64_t a1)
{
  type metadata accessor for UserFileManager();
  v1 = swift_allocObject();
  result = sub_1000488C8();
  qword_100098B08 = v1;
  return result;
}

uint64_t sub_1000411F0()
{
  v0 = swift_allocObject();
  sub_1000488C8();
  return v0;
}

uint64_t *sub_100041228()
{
  if (qword_1000971D0 != -1)
  {
    swift_once();
  }

  return &qword_100098B08;
}

void *sub_100041278()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
    *(v0 + 16) = _swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t (*sub_1000412C8(void **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100041278();
  return sub_100041310;
}

uint64_t sub_100041320@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v26 - v10;
  v12 = [objc_opt_self() processInfo];
  v13 = [v12 environment];

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v14 + 16))
  {

LABEL_7:
    v23 = [objc_opt_self() defaultManager];
    v24 = [v23 URLsForDirectory:5 inDomains:1];

    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v25 + 16))
    {
      (*(v6 + 16))(v9, v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      (*(v6 + 32))(v11, v9, v5);
      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v6 + 8))(v11, v5);
    }

    else
    {

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return result;
  }

  sub_1000327AC(0xD00000000000001BLL, 0x800000010007AA40);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  v17 = sub_100039094();
  (*(v2 + 16))(v4, v17, v1);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Under test appContainerURL to tmp", v20, 2u);
  }

  (*(v2 + 8))(v4, v1);
  v21 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
}

void *sub_100041768@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041320(a1);
  result = xpc_copy_entitlement_for_self();
  if (result)
  {
    if (xpc_string_get_string_ptr(result))
    {
      v8[0] = String.init(cString:)();
      v8[1] = v7;
      (*(v3 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
      sub_100038560();
      URL.append<A>(path:directoryHint:)();
      swift_unknownObjectRelease();
      (*(v3 + 8))(v5, v2);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1000418E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_10004197C(a1, a2, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_10004197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = a5;
  v22 = type metadata accessor for Logger();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v5)
  {
  }

  v9 = sub_100004124();
  (*(v6 + 16))(v8, v9, v22);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v12 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_1000034B8(v14, v15, &v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error decoding %s: %@", v12, 0x16u);
    sub_100006CAC(v13, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v20);
  }

  (*(v6 + 8))(v8, v22);
  result = swift_willThrow();
  *v21 = v5;
  return result;
}

uint64_t sub_100041C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_autoreleasePoolPush();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t sub_100041D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = __chkstk_darwin(v7);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = (&v75 - v10);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v77 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v75 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v75 - v19;
  __chkstk_darwin(v18);
  v22 = &v75 - v21;
  v23 = *(*v3 + 224);
  v76 = a3;
  v23(a1, a2, a3);
  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  URL.path.getter();
  v26 = String._bridgeToObjectiveC()();

  v27 = [v25 fileExistsAtPath:v26];

  if (!v27)
  {
    (*(v12 + 8))(v22, v11);
    return 1;
  }

  v28 = [v24 defaultManager];
  URL._bridgeToObjectiveC()(v29);
  v31 = v30;
  v82 = 0;
  v32 = [v28 removeItemAtURL:v30 error:&v82];

  if (v32)
  {
    v33 = v82;
    v34 = sub_100004124();
    v35 = v80;
    v36 = v78;
    (*(v80 + 16))(v78, v34, v81);
    v37 = v12;
    v38 = *(v12 + 16);
    v39 = v11;
    v38(v20, v22, v11);
    v38(v17, v76, v11);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = v79;
      *v42 = 136315394;
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v77) = v41;
      v44 = v43;
      v46 = v45;
      v47 = *(v37 + 8);
      v47(v20, v39);
      v48 = sub_1000034B8(v44, v46, &v82);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = URL.lastPathComponent.getter();
      v51 = v50;
      v47(v17, v39);
      v52 = sub_1000034B8(v49, v51, &v82);

      *(v42 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v40, v77, "Deleted record %s from %s", v42, 0x16u);
      swift_arrayDestroy();

      (*(v35 + 8))(v78, v81);
      v47(v22, v39);
    }

    else
    {

      v73 = *(v37 + 8);
      v73(v17, v11);
      v73(v20, v11);
      (*(v35 + 8))(v36, v81);
      v73(v22, v11);
    }

    return 1;
  }

  v54 = v82;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v55 = sub_100004124();
  v56 = v79;
  v57 = v80;
  (*(v80 + 16))(v79, v55, v81);
  v58 = v77;
  v59 = v11;
  (*(v12 + 16))(v77, v22, v11);
  swift_errorRetain();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    LODWORD(v76) = v61;
    v63 = v62;
    v75 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82 = v78;
    *v63 = 136315394;
    sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v58;
    v66 = v64;
    v68 = v67;
    v69 = *(v12 + 8);
    v69(v65, v59);
    v70 = sub_1000034B8(v66, v68, &v82);

    *(v63 + 4) = v70;
    *(v63 + 12) = 2112;
    swift_errorRetain();
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v63 + 14) = v71;
    v72 = v75;
    *v75 = v71;
    _os_log_impl(&_mh_execute_header, v60, v76, "Could not delete record %s due to %@", v63, 0x16u);
    sub_100006CAC(v72, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v78);

    (*(v57 + 8))(v79, v81);
    v69(v22, v59);
  }

  else
  {

    v74 = *(v12 + 8);
    v74(v58, v59);
    (*(v57 + 8))(v56, v81);
    v74(v22, v59);
  }

  return 0;
}

uint64_t sub_100042588(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a2;
  v25 = a5;
  v26 = a3;
  v23 = a1;
  v8 = type metadata accessor for URL();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v6 + 24);
  (*(v12 + 16))(v14, v23, a4);
  (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v8);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = v25;
  *(v17 + 2) = a4;
  *(v17 + 3) = v18;
  *(v17 + 4) = v6;
  (*(v12 + 32))(&v17[v15], v14, a4);
  (*(v9 + 32))(&v17[v16], &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v17[v16 + v10] = v26;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100049028;
  *(v19 + 24) = v17;
  aBlock[4] = sub_100018FE4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001437C;
  aBlock[3] = &unk_10008B408;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v27, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042894(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v62 = a4;
  v54 = a3;
  v52 = a2;
  v57 = a1;
  v60 = *(a5 - 8);
  v61 = *(v60 + 64);
  __chkstk_darwin(a1);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v50 - 1);
  __chkstk_darwin(v50);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for URL();
  v53 = *(v64 - 8);
  v12 = v53;
  v13 = __chkstk_darwin(v64);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v47 - v17;
  __chkstk_darwin(v16);
  v63 = &v47 - v19;
  v20 = *(a6 + 8);
  v49 = (*(v20 + 32))(a5, v20);
  v21 = *(v20 + 24);
  v51 = a5;
  v21(a5, v20);
  v22 = URL.path(percentEncoded:)(1);
  v23 = v12 + 8;
  v24 = *(v12 + 8);
  v25 = v15;
  v26 = v64;
  v24(v25, v64);
  v55 = v24;
  v56 = v23;
  v66 = v22;
  v27 = v50;
  (*(v9 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v50);
  sub_100038560();
  URL.appending<A>(path:directoryHint:)();
  (*(v9 + 8))(v11, v27);

  v28 = v63;
  sub_100043440(v63);

  v48 = v18;
  v24(v18, v26);
  v29 = URL.lastPathComponent.getter();
  v54 = (*(*v57 + 248))(v29);

  v30 = v51;
  v31 = v52;
  v32 = (*(v65 + 56))(v51);
  v50 = [v32 recordID];

  v33 = swift_allocObject();
  swift_weakInit();
  v35 = v59;
  v34 = v60;
  (*(v60 + 16))(v59, v31, v30);
  v36 = v53;
  v37 = v64;
  (*(v53 + 16))(v18, v28, v64);
  v38 = v34;
  v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v40 = (v61 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v36 + 80) + v40 + 8) & ~*(v36 + 80);
  v42 = swift_allocObject();
  v43 = v65;
  *(v42 + 16) = v30;
  *(v42 + 24) = v43;
  (*(v38 + 32))(v42 + v39, v35, v30);
  *(v42 + v40) = v33;
  (*(v36 + 32))(v42 + v41, v48, v37);
  v44 = *(*v54 + 912);

  v45 = v50;
  v44(v50, v62, sub_10004A108, v42);

  v55(v63, v37);
}

uint64_t sub_100042E00(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v48 = a3;
  v49 = a4;
  v9 = *(a5 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v47 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v47 - v20;
  if (a1)
  {
    swift_errorRetain();
    v22 = sub_100004124();
    v50 = v16;
    v51 = v15;
    (*(v16 + 16))(v21, v22, v15);
    (*(v9 + 16))(v14, a2, a5);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v53[0] = v49;
      *v25 = 136315394;
      v26 = (*(*(v52 + 8) + 32))(a5);
      v28 = v27;
      (*(v9 + 8))(v14, a5);
      v29 = sub_1000034B8(v26, v28, v53);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v30;
      v31 = v48;
      *v48 = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error removing record %s from cloud %@", v25, 0x16u);
      sub_100006CAC(v31, &qword_100093F70, &qword_1000730D0);

      sub_1000036EC(v49);
    }

    else
    {

      (*(v9 + 8))(v14, a5);
    }

    return (*(v50 + 8))(v21, v51);
  }

  else
  {
    v32 = sub_100004124();
    (*(v16 + 16))(v19, v32, v15);
    v33 = *(v9 + 16);
    v47[1] = a2;
    v33(v12, a2, a5);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v47[0] = a5;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v51 = v15;
      v38 = v37;
      v39 = swift_slowAlloc();
      v53[0] = v39;
      *v38 = 136315138;
      v40 = (*(*(v52 + 8) + 32))(a5);
      v50 = v16;
      v42 = v41;
      (*(v9 + 8))(v12, a5);
      v43 = sub_1000034B8(v40, v42, v53);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Removed record %s from cloud", v38, 0xCu);
      sub_1000036EC(v39);

      (*(v50 + 8))(v19, v51);
    }

    else
    {

      (*(v9 + 8))(v12, a5);
      (*(v16 + 8))(v19, v15);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v45 = result;
      v46 = (*(*(v52 + 8) + 32))(v47[0]);
      (*(*v45 + 144))(v46);
    }
  }

  return result;
}

uint64_t sub_100043440@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Logger();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = __chkstk_darwin(v4);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = (&v77 - v7);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v79 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v78 = &v77 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v77 - v18;
  __chkstk_darwin(v17);
  v21 = &v77 - v20;
  URL.appendingPathComponent(_:)();
  URL.appendingPathComponent(_:)();
  URL.appendingPathComponent(_:)();
  v22 = *(v9 + 8);
  v22(v16, v8);
  URL.appendingPathExtension(_:)();
  v83 = v22;
  v22(v19, v8);
  sub_100004890(0, &qword_100093C78, NSFileManager_ptr);
  sub_1000560C8();
  sub_100056140(a3);

  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  URL.path(percentEncoded:)(1);
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 fileExistsAtPath:v25];

  v28 = [v23 defaultManager];
  v82 = v21;
  if (v26)
  {
    URL._bridgeToObjectiveC()(v27);
    v30 = v29;
    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    v86 = 0;
    v34 = [v28 replaceItemAtURL:v30 withItemAtURL:v32 backupItemName:0 options:0 resultingItemURL:0 error:&v86];

    v35 = v86;
    if ((v34 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    URL._bridgeToObjectiveC()(v27);
    v53 = v52;
    URL._bridgeToObjectiveC()(v54);
    v56 = v55;
    v86 = 0;
    v57 = [v28 moveItemAtURL:v53 toURL:v55 error:&v86];

    v35 = v86;
    if (!v57)
    {
LABEL_3:
      v36 = v35;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v37 = sub_100004124();
      v39 = v84;
      v38 = v85;
      v40 = v81;
      (*(v84 + 16))(v81, v37, v85);
      v41 = v79;
      (*(v9 + 16))(v79, a3, v8);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v86 = v80;
        *v44 = 136315394;
        sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        v83(v41, v8);
        v48 = sub_1000034B8(v45, v47, &v86);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2112;
        swift_errorRetain();
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 14) = v49;
        v50 = v78;
        *v78 = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "Unable to tombstone record to %s due to %@", v44, 0x16u);
        sub_100006CAC(v50, &qword_100093F70, &qword_1000730D0);

        sub_1000036EC(v80);

        (*(v39 + 8))(v81, v85);
        return (v83)(v82, v8);
      }

      else
      {

        v74 = v41;
        v75 = v83;
        v83(v74, v8);
        (*(v39 + 8))(v40, v38);
        return v75(v82, v8);
      }
    }
  }

  v58 = v35;
  v59 = sub_100004124();
  v60 = v84;
  v61 = v85;
  v62 = v80;
  (*(v84 + 16))(v80, v59, v85);
  v63 = v78;
  (*(v9 + 16))(v78, a3, v8);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v86 = v67;
    *v66 = 136315138;
    sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    v71 = v63;
    v72 = v83;
    v83(v71, v8);
    v73 = sub_1000034B8(v68, v70, &v86);

    *(v66 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "Tombstoned record to %s", v66, 0xCu);
    sub_1000036EC(v67);

    (*(v84 + 8))(v80, v61);
    return v72(v82, v8);
  }

  else
  {

    v76 = v83;
    v83(v63, v8);
    (*(v60 + 8))(v62, v61);
    return v76(v82, v8);
  }
}

uint64_t sub_100043CD4(char *a1, uint64_t a2, uint64_t a3)
{
  v150 = a3;
  v141 = type metadata accessor for Optional();
  v135 = *(v141 - 8);
  v5 = __chkstk_darwin(v141);
  v149 = &v119 - v6;
  v136 = *(a2 - 8);
  v7 = __chkstk_darwin(v5);
  v140 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v119 - v9;
  v10 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  __chkstk_darwin(v10 - 8);
  v12 = &v119 - v11;
  v13 = type metadata accessor for URL();
  v145 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v148 = (&v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v119 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v119 - v20;
  v22 = __chkstk_darwin(v19);
  v134 = &v119 - v23;
  v24 = __chkstk_darwin(v22);
  v124 = &v119 - v25;
  __chkstk_darwin(v24);
  v152 = &v119 - v26;
  v143 = type metadata accessor for Logger();
  v27 = *(v143 - 8);
  v28 = __chkstk_darwin(v143);
  v154 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v120 = &v119 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v119 - v33;
  __chkstk_darwin(v32);
  v155 = (&v119 - v35);
  v156 = a2;
  v36 = Array.init()();
  v160 = v36;
  v37 = [objc_opt_self() defaultManager];
  v38 = a1;
  v39 = sub_100056704(a1, 0);

  v153 = v39;
  if (v39)
  {
    v125 = v34;
    v126 = v21;
    v40 = sub_100004124();
    v41 = *(v27 + 16);
    v129 = v40;
    v131 = v27 + 16;
    v128 = v41;
    (v41)(v155);
    v42 = *(v145 + 16);
    v43 = v152;
    v154 = v38;
    v130 = v145 + 16;
    v127 = v42;
    v42(v152, v38, v13);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v142 = v13;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = v27;
      v148 = swift_slowAlloc();
      *&v159[0] = v148;
      *v47 = 136315138;
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v18;
      v52 = v51;
      v53 = v43;
      v55 = v145 + 8;
      v54 = *(v145 + 8);
      v54(v53, v142);
      v56 = sub_1000034B8(v49, v52, v159);
      v18 = v50;

      *(v47 + 4) = v56;
      v57 = v54;
      v13 = v142;
      v58 = v45;
      v59 = v55;
      _os_log_impl(&_mh_execute_header, v44, v58, "Enumerate: %s", v47, 0xCu);
      sub_1000036EC(v148);

      v60 = *(v48 + 8);
      v133 = v48 + 8;
      v132 = v60;
      v60(v155, v143);
    }

    else
    {

      v59 = v145 + 8;
      v57 = *(v145 + 8);
      v57(v43, v13);
      v75 = *(v27 + 8);
      v133 = v27 + 8;
      v132 = v75;
      v61 = (v75)(v155, v143);
    }

    v76 = v134;
    v77 = v124;
    v152 = (v145 + 56);
    v148 = (v145 + 48);
    v145 += 32;
    v144 = (v136 + 6);
    v138 = (v136 + 4);
    v137 = (v136 + 2);
    ++v136;
    ++v135;
    v61.n128_u64[0] = 136315394;
    v121 = v61;
    v146 = v12;
    v147 = v18;
    v155 = v57;
    while (1)
    {
      if ([v153 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v157 = 0u;
        v158 = 0u;
      }

      v159[0] = v157;
      v159[1] = v158;
      if (!*(&v158 + 1))
      {
        break;
      }

      v80 = swift_dynamicCast();
      (*v152)(v12, v80 ^ 1u, 1, v13);
      if ((*v148)(v12, 1, v13) == 1)
      {
        goto LABEL_22;
      }

      (*v145)(v77, v12, v13);
      URL.deletingPathExtension()();
      v81 = v59;
      v82 = URL.lastPathComponent.getter();
      v84 = v83;
      v85 = v155;
      v155(v76, v13);
      v86 = v77;
      v87 = v149;
      v88 = v13;
      v89 = v156;
      (*(*v151 + 192))(v82, v84, v154, v156, v150);
      if ((*v144)(v87, 1, v89) == 1)
      {
        (*v135)(v87, v141);
        v77 = v86;
        if (URL.hasDirectoryPath.getter())
        {
          v13 = v142;
          v59 = v81;
          v155(v86, v142);

          v12 = v146;
          v18 = v147;
        }

        else
        {
          v90 = v125;
          v128(v125, v129, v143);
          v91 = v126;
          v13 = v142;
          v127(v126, v154, v142);

          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.info.getter();

          v94 = os_log_type_enabled(v92, v93);
          v12 = v146;
          if (v94)
          {
            v95 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            *&v159[0] = v123;
            *v95 = v121.n128_u32[0];
            v96 = sub_1000034B8(v82, v84, v159);
            v122 = v93;
            v97 = v96;

            *(v95 + 4) = v97;
            *(v95 + 12) = 2080;
            sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v98 = dispatch thunk of CustomStringConvertible.description.getter();
            v100 = v99;
            v101 = v13;
            v102 = v155;
            v155(v91, v101);
            v103 = sub_1000034B8(v98, v100, v159);
            v59 = v81;

            *(v95 + 14) = v103;
            v104 = v102;
            v13 = v142;
            _os_log_impl(&_mh_execute_header, v92, v122, "Could not read item %s for records at %s", v95, 0x16u);
            swift_arrayDestroy();

            v77 = v124;
          }

          else
          {

            v59 = v81;
            v104 = v155;
            v155(v91, v13);
          }

          v132(v90, v143);
          v104(v77, v13);
          v18 = v147;
          v76 = v134;
        }
      }

      else
      {

        v78 = v139;
        v79 = v156;
        (*v138)(v139, v87, v156);
        (*v137)(v140, v78, v79);
        type metadata accessor for Array();
        Array.append(_:)();
        (*v136)(v78, v79);
        v85(v86, v88);
        v77 = v86;
        v12 = v146;
        v18 = v147;
        v59 = v81;
        v13 = v88;
      }
    }

    sub_100006CAC(v159, &qword_100092CB8, &qword_100072C40);
    (*v152)(v12, 1, 1, v13);
LABEL_22:
    sub_100006CAC(v12, &qword_100093A38, &qword_100073E40);
    v105 = v120;
    v128(v120, v129, v143);
    v106 = v160;
    v127(v18, v154, v13);

    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&v159[0] = v110;
      *v109 = 134218242;
      *(v109 + 4) = Array.count.getter();

      *(v109 + 12) = 2080;
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v111 = dispatch thunk of CustomStringConvertible.description.getter();
      v112 = v18;
      v113 = v105;
      v115 = v114;
      v155(v112, v13);
      v116 = sub_1000034B8(v111, v115, v159);

      *(v109 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v107, v108, "Found %ld records at %s", v109, 0x16u);
      sub_1000036EC(v110);

      v117 = v113;
    }

    else
    {

      v155(v18, v13);
      v117 = v105;
    }

    v132(v117, v143);
  }

  else
  {
    v62 = v36;
    v63 = sub_100004124();
    (*(v27 + 16))(v154, v63, v143);
    v64 = v148;
    (*(v145 + 16))(v148, v38, v13);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v27;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v159[0] = v69;
      *v68 = 136315138;
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v64;
      v73 = v72;
      (*(v145 + 8))(v71, v13);
      v74 = sub_1000034B8(v70, v73, v159);

      *(v68 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v65, v66, "Could not enumerate %s", v68, 0xCu);
      sub_1000036EC(v69);

      (*(v67 + 8))(v154, v143);
    }

    else
    {

      (*(v145 + 8))(v64, v13);
      (*(v27 + 8))(v154, v143);
    }

    return v62;
  }

  return v106;
}

uint64_t sub_100044DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v5 + 224))(a1, a2, a3);
  (*(*v5 + 200))(v14, a3, a4, a5);
  return (*(v12 + 8))(v14, v11);
}

void sub_100044F1C()
{
  v4 = objc_autoreleasePoolPush();
  type metadata accessor for Optional();
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100044FBC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v28 = a3;
  v26 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  if (SystemInfo.deviceFirstUnlocked.getter())
  {
    v13 = Data.init(contentsOf:options:)();
    if (v4)
    {

      return (*(v26 + 56))(v27, 1, 1, v28);
    }

    else
    {
      v20 = *(*a1 + 128);
      v24 = v13;
      v25 = v14;
      v21 = v28;
      v20();
      sub_1000066CC(v24, v25);
      v22 = v26;
      v23 = v27;
      (*(v26 + 32))(v27, v7, v21);
      return (*(v22 + 56))(v23, 0, 1, v21);
    }
  }

  else
  {
    v16 = sub_100004124();
    (*(v9 + 16))(v12, v16, v8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "record call failed because in device is in beforeFirstUnlock state", v19, 2u);
    }

    (*(v9 + 8))(v12, v8);
    return (*(v26 + 56))(v27, 1, 1, v28);
  }
}

uint64_t sub_10004549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v155 = a6;
  v145 = a4;
  v149 = a3;
  v158 = a1;
  v159 = a2;
  v144 = *(a5 - 8);
  v7 = __chkstk_darwin(a1);
  v143 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v8;
  __chkstk_darwin(v7);
  v142 = &v129 - v9;
  v10 = type metadata accessor for URLResourceValues();
  v146 = *(v10 - 8);
  __chkstk_darwin(v10);
  v151 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v140 = &v129 - v18;
  v19 = __chkstk_darwin(v17);
  v150 = &v129 - v20;
  __chkstk_darwin(v19);
  v152 = &v129 - v21;
  v22 = type metadata accessor for URL.DirectoryHint();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for URL();
  v148 = *(v156 - 8);
  v26 = __chkstk_darwin(v156);
  v157 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v147 = &v129 - v29;
  v139 = v30;
  __chkstk_darwin(v28);
  v153 = &v129 - v31;
  if (SystemInfo.deviceFirstUnlocked.getter())
  {
    v137 = v12;
    v138 = v13;
    v32 = isa;
    v33 = v155;
    result = (*(*v158 + 136))(v159, a5, *(v155 + 8), *(v155 + 16));
    if (v32)
    {
      return result;
    }

    v133 = 0;
    v136 = v10;
    v36 = result;
    v37 = v35;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000066CC(v36, v37);
    v38 = v147;
    (*(v33 + 24))(a5, v33);
    v39 = URL.path(percentEncoded:)(1);
    v134 = *(v148 + 8);
    v135 = v148 + 8;
    v134(v38, v156);
    v170 = v39;
    (*(v23 + 104))(v25, enum case for URL.DirectoryHint.isDirectory(_:), v22);
    sub_100038560();
    v40 = v153;
    URL.appending<A>(path:directoryHint:)();
    (*(v23 + 8))(v25, v22);

    sub_100004890(0, &qword_100093C78, NSFileManager_ptr);
    sub_1000560C8();
    sub_100056140(v40);

    v41 = *(v33 + 32);
    v129 = a5;
    v42 = v41(a5, v33);
    v43 = v157;
    (*(*v158 + 224))(v42);

    v44 = sub_100004124();
    v46 = v137;
    v45 = v138;
    v47 = *(v138 + 16);
    v48 = v152;
    v131 = v44;
    v132 = v138 + 16;
    v130 = v47;
    (v47)(v152);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v170._countAndFlagsBits = v52;
      *v51 = 136315138;
      swift_beginAccess();
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = sub_1000034B8(v53, v54, &v170._countAndFlagsBits);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "Writing record to file: %s", v51, 0xCu);
      sub_1000036EC(v52);

      v43 = v157;

      v56 = *(v45 + 8);
      v57 = v152;
    }

    else
    {

      v56 = *(v45 + 8);
      v57 = v48;
    }

    v152 = v56;
    (v56)(v57, v46);
    v62 = v150;
    v63 = v151;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    swift_beginAccess();
    URL._bridgeToObjectiveC()(v64);
    v66 = v65;
    v67 = isa;
    v68 = [(objc_class *)isa writeToURL:v65 atomically:1];

    if (v68)
    {
      v130(v62, v131, v46);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v170._countAndFlagsBits = v72;
        *v71 = 136315138;
        sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = sub_1000034B8(v73, v74, &v170._countAndFlagsBits);

        *(v71 + 4) = v75;
        v63 = v151;
        _os_log_impl(&_mh_execute_header, v69, v70, "Wrote record to file: %s", v71, 0xCu);
        sub_1000036EC(v72);

        v43 = v157;

        v76 = v150;
      }

      else
      {

        v76 = v62;
      }

      (v152)(v76, v46);
    }

    sub_10000A45C(&qword_100093C90, &qword_100074270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100072BE0;
    *(inited + 32) = NSFileProtectionKey;
    *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v78 = NSFileProtectionKey;
    v79 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v80 = sub_100049E70(inited);
    swift_setDeallocating();
    sub_100006CAC(inited + 32, &qword_100093C98, &qword_100074278);
    v81 = [objc_opt_self() defaultManager];
    sub_1000465EC(v80);

    type metadata accessor for FileAttributeKey(0);
    sub_1000022E4(&qword_100093CA0, type metadata accessor for FileAttributeKey, &unk_1000745A0);
    v82 = Dictionary._bridgeToObjectiveC()().super.isa;

    URL.path.getter();
    v83 = v43;
    v84 = String._bridgeToObjectiveC()();

    v170._countAndFlagsBits = 0;
    v85 = [v81 setAttributes:v82 ofItemAtPath:v84 error:&v170];

    countAndFlagsBits = v170._countAndFlagsBits;
    if (!v85)
    {
      v90 = v170._countAndFlagsBits;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v146 + 8))(v63, v136);
      goto LABEL_18;
    }

    swift_beginAccess();
    v87 = countAndFlagsBits;
    v88 = v133;
    URL.setResourceValues(_:)();
    v89 = v136;
    if (v88)
    {
      swift_endAccess();

      (*(v146 + 8))(v63, v89);
LABEL_18:
      v91 = v156;
      v92 = v134;
      v134(v153, v156);
      return v92(v83, v91);
    }

    swift_endAccess();
    v93 = v156;
    if ((v145 & 2) == 0)
    {

      (*(v146 + 8))(v63, v89);
      v94 = v134;
      v134(v153, v93);
      v95 = v83;
      return v94(v95, v93);
    }

    v150 = *(v144 + 16);
    (v150)(v142, v159, v129);
    sub_10000A45C(&qword_100093CA8, &qword_100074280);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v146 + 8))(v63, v89);
      v94 = v134;
      v134(v153, v93);
      v169 = 0;
      v168 = 0u;
      v167 = 0u;
      sub_100006CAC(&v167, &qword_100093CB0, &qword_100074288);
      v95 = v157;
      return v94(v95, v93);
    }

    v133 = 0;
    sub_100049F7C(&v167, &v170);
    v96 = URL.lastPathComponent.getter();
    v97 = (*(*v158 + 248))(v96);

    v98 = v140;
    v99 = v137;
    v130(v140, v131, v137);

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    v145 = v97;

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v166 = v142;
      *v102 = 136315394;
      v103 = URL.lastPathComponent.getter();
      v105 = sub_1000034B8(v103, v104, &v166);

      v107 = v145;
      *(v102 + 4) = v105;
      *(v102 + 12) = 2080;
      (*(*v107 + 264))(&v160, v106);
      v165[0] = v162;
      v163 = v160;
      v164 = v161;
      v167 = v160;
      v168 = v161;
      v169 = v162;
      sub_10004A080();
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      sub_100034994(&v163);
      sub_100034994(&v164);
      sub_100006CAC(v165, &qword_100094180, &qword_100074290);
      v111 = sub_1000034B8(v108, v110, &v166);

      *(v102 + 14) = v111;
      _os_log_impl(&_mh_execute_header, v100, v101, "Uploading record to cloud: %s for %s", v102, 0x16u);
      swift_arrayDestroy();
    }

    (v152)(v98, v99);
    v112 = v171;
    v113 = v172;
    sub_1000078C8(&v170, v171);
    v152 = (*(v113 + 56))(v112, v113);
    v114 = v147;
    v115 = v148;
    (*(v148 + 16))(v147, v149, v156);
    v116 = v129;
    (v150)(v143, v159, v129);
    v117 = (*(v115 + 80) + 40) & ~*(v115 + 80);
    v118 = v144;
    v119 = (v139 + *(v144 + 80) + v117) & ~*(v144 + 80);
    v120 = swift_allocObject();
    v121 = v155;
    *(v120 + 2) = v116;
    *(v120 + 3) = v121;
    *(v120 + 4) = v158;
    v122 = v114;
    v123 = v156;
    (*(v115 + 32))(&v120[v117], v122, v156);
    (*(v118 + 32))(&v120[v119], v143, v116);
    v124 = *(*v145 + 896);

    v125 = v152;
    v124(v152, 0, sub_100049F94, v120);

    (*(v146 + 8))(v151, v136);
    v126 = v123;
    v127 = v123;
    v128 = v134;
    v134(v153, v127);
    sub_1000036EC(&v170);
    return v128(v157, v126);
  }

  else
  {
    v58 = sub_100004124();
    (*(v13 + 16))(v16, v58, v12);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "store call failed because in device is in beforeFirstUnlock state", v61, 2u);
    }

    (*(v13 + 8))(v16, v12);
    sub_100049E1C();
    swift_allocError();
    return swift_willThrow();
  }
}

_OWORD *sub_1000465EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A45C(&qword_100093CC0, &qword_100074298);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_10000C848((v27 + 8), v25);
    sub_10000C848(v25, v27);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v6[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v6[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v6[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_10000C848(v27, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100046894(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(void))
{
  v57 = a3;
  v58 = a7;
  v56 = a4;
  v11 = *(a6 - 8);
  __chkstk_darwin(a1);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for CloudPairedDeviceRecord(0);
  __chkstk_darwin(v55);
  v60 = (v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v61 = (v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v21 = v54 - v20;
  __chkstk_darwin(v19);
  v23 = v54 - v22;
  v24 = sub_100004124();
  v62 = v16;
  v25 = *(v16 + 16);
  if (a2)
  {
    v25(v21, v24, v15);
    (*(v11 + 16))(v13, a5, a6);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_100038A50(a1, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      LODWORD(v60) = v27;
      v29 = v28;
      v30 = swift_slowAlloc();
      v59 = v15;
      v31 = v30;
      v61 = swift_slowAlloc();
      v63 = v61;
      *v29 = 136315394;
      v32 = v58[4](a6);
      v34 = v33;
      (*(v11 + 8))(v13, a6);
      v35 = sub_1000034B8(v32, v34, &v63);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v31 = v36;
      _os_log_impl(&_mh_execute_header, v26, v60, "Error updating cloud with record %s: %@", v29, 0x16u);
      sub_100006CAC(v31, &qword_100093F70, &qword_1000730D0);

      sub_1000036EC(v61);

      return (*(v62 + 8))(v21, v59);
    }

    else
    {

      (*(v11 + 8))(v13, a6);
      return (*(v62 + 8))(v21, v15);
    }
  }

  else
  {
    v54[0] = v24;
    v54[1] = v25;
    (v25)(v23);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v58 = a1;
    sub_100038A50(a1, 0);
    v41 = os_log_type_enabled(v39, v40);
    v59 = v15;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136315138;
      v44 = [v38 recordID];
      v45 = v38;
      v46 = [v44 recordName];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_1000034B8(v47, v49, &v63);

      *(v42 + 4) = v50;
      v38 = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Updating cloud record file: %s", v42, 0xCu);
      sub_1000036EC(v43);

      v15 = v59;
    }

    (*(v62 + 8))(v23, v15);
    v51 = v60;
    sub_10003B080(v38, v60);
    v52 = *(*v57 + 208);
    v53 = sub_1000022E4(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord, &unk_100073C64);
    v52(v51, v56, 1, v55, v53);
    sub_100007124(v51);
    return notify_post("com.apple.bluetoothuser.cloudChanged");
  }
}

uint64_t sub_100047098(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *(v1 + 24);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100049178;
  *(v9 + 24) = v8;
  aBlock[4] = sub_100038A58;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001437C;
  aBlock[3] = &unk_10008B480;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1000472A8(void *a1)
{
  v2 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v74 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v65 - v10;
  __chkstk_darwin(v9);
  v13 = &v65 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v84 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v73 = &v65 - v19;
  __chkstk_darwin(v18);
  v21 = &v65 - v20;
  v22 = sub_100004124();
  v23 = *(v15 + 16);
  v82 = v15 + 16;
  v83 = v22;
  v81 = v23;
  (v23)(v21);
  v24 = *(v6 + 16);
  v86 = a1;
  v72 = v6 + 16;
  v71 = v24;
  v24(v13, a1, v5);
  v25 = Logger.logObject.getter();
  LODWORD(v85) = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v25, v85);
  v76 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v78 = v14;
    v28 = v27;
    v79 = swift_slowAlloc();
    *&v89[0] = v79;
    *v28 = 136315138;
    sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v6;
    v32 = v31;
    v80 = *(v30 + 8);
    v80(v13, v5);
    v33 = sub_1000034B8(v29, v32, v89);
    v6 = v30;

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v85, "Obliterating all user's local storage from %s", v28, 0xCu);
    sub_1000036EC(v79);

    v14 = v78;

    v79 = *(v76 + 8);
  }

  else
  {

    v80 = *(v6 + 8);
    v80(v13, v5);
    v79 = *(v15 + 8);
  }

  v79(v21, v14);
  v34 = objc_opt_self();
  v35 = [v34 defaultManager];
  v36 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v38 = v74;
  v39 = v73;
  v86 = v36;
  if (v36)
  {
    v68 = 0;
    v85 = (v6 + 56);
    v77 = (v6 + 32);
    v78 = (v6 + 48);
    v76 += 8;
    v75 = v6 + 8;
    *&v37 = 136315138;
    v66 = v37;
    *&v37 = 138412290;
    v65 = v37;
    v67 = v4;
    v70 = v34;
    v69 = v11;
    while (1)
    {
      if ([v86 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v87 = 0u;
        v88 = 0u;
      }

      v89[0] = v87;
      v89[1] = v88;
      if (!*(&v88 + 1))
      {

        sub_100006CAC(v89, &qword_100092CB8, &qword_100072C40);
        (*v85)(v4, 1, 1, v5);
        goto LABEL_21;
      }

      v40 = swift_dynamicCast();
      (*v85)(v4, v40 ^ 1u, 1, v5);
      if ((*v78)(v4, 1, v5) == 1)
      {
        break;
      }

      (*v77)(v11, v4, v5);
      v41 = [v34 defaultManager];
      URL._bridgeToObjectiveC()(v42);
      v44 = v43;
      *&v89[0] = 0;
      v45 = [v41 removeItemAtURL:v43 error:v89];

      v46 = *&v89[0];
      if (v45)
      {
        v81(v39, v83, v14);
        v71(v38, v11, v5);
        v47 = v46;
        v48 = Logger.logObject.getter();
        v49 = v14;
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v89[0] = v52;
          *v51 = v66;
          sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v53 = dispatch thunk of CustomStringConvertible.description.getter();
          v55 = v54;
          v56 = v80;
          v80(v74, v5);
          v57 = sub_1000034B8(v53, v55, v89);
          v38 = v74;

          *(v51 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v48, v50, "Deleted iCloud user file: %s", v51, 0xCu);
          sub_1000036EC(v52);
          v39 = v73;

          v79(v39, v49);
          v56(v69, v5);
          v11 = v69;
          v4 = v67;
        }

        else
        {

          v64 = v80;
          v80(v38, v5);
          v79(v39, v49);
          v64(v11, v5);
        }

        v14 = v49;
        v34 = v70;
      }

      else
      {
        v58 = *&v89[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v81(v84, v83, v14);
        swift_errorRetain();
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = v65;
          swift_errorRetain();
          v63 = _swift_stdlib_bridgeErrorToNSError();
          *(v61 + 4) = v63;
          *v62 = v63;
          _os_log_impl(&_mh_execute_header, v59, v60, "Could not delete iCloud user file: %@", v61, 0xCu);
          sub_100006CAC(v62, &qword_100093F70, &qword_1000730D0);

          v38 = v74;
        }

        v79(v84, v14);
        v80(v11, v5);
        v68 = 0;
        v39 = v73;
      }
    }

LABEL_21:
    sub_100006CAC(v4, &qword_100093A38, &qword_100073E40);
  }
}

void sub_100047D18(uint64_t a1, uint64_t a2)
{
  v2 = objc_autoreleasePoolPush();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100047D80(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CloudStorageCoordinator(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_100047DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 24);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v12;
  aBlock[4] = sub_10004923C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008B4F8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000022E4(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1000480F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004124();
  (*(v6 + 16))(v8, v9, v5);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000034B8(a1, a2, v18);
    _os_log_impl(&_mh_execute_header, v10, v11, "Removed storage for account: %s", v12, 0xCu);
    sub_1000036EC(v13);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(*result + 120);

    v16 = v15(v18);
    sub_10004834C(0, a1, a2);
    v16(v18, 0);
  }

  return result;
}

uint64_t sub_10004834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100049838(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000327AC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100049C74();
        v14 = v16;
      }

      result = sub_100049688(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100048444(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = __chkstk_darwin(v8);
  v13 = &v35[-v12 - 8];
  v14 = (*(*v2 + 104))(v11);
  if (*(v14 + 16) && (v15 = sub_1000327AC(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    v18 = sub_100004124();
    (*(v7 + 16))(v13, v18, v6);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v36[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000034B8(a1, a2, v36);
      _os_log_impl(&_mh_execute_header, v19, v20, "Found storage for account: %s", v21, 0xCu);
      sub_1000036EC(v22);
    }

    (*(v7 + 8))(v13, v6);
  }

  else
  {

    v23 = sub_100004124();
    (*(v7 + 16))(v10, v23, v6);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v36[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000034B8(a1, a2, v36);
      _os_log_impl(&_mh_execute_header, v24, v25, "Creating storage for account: %s", v26, 0xCu);
      sub_1000036EC(v27);
    }

    (*(v7 + 8))(v10, v6);

    sub_1000196DC(a1, a2, 0xD00000000000001CLL, 0x800000010007A9F0, &off_10008B388, v36);
    type metadata accessor for CloudStorageCoordinator(0);
    v17 = sub_10001A2E8(v36);
    v28 = *(*v3 + 120);

    v29 = v28(v35);
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v31;
    *v31 = 0x8000000000000000;
    sub_100049838(v17, a1, a2, isUniquelyReferenced_nonNull_native);

    *v31 = v34;
    v29(v35, 0);
  }

  return v17;
}

uint64_t sub_100048888()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000488C8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  Transaction.capture()();
  v8[0] = sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_1000022E4(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_100048B34(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100048BAC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100048C2C@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100048C70(uint64_t a1)
{
  v2 = sub_1000022E4(&qword_100093CA0, type metadata accessor for FileAttributeKey, &unk_1000745A0);
  v3 = sub_1000022E4(&qword_100093D20, type metadata accessor for FileAttributeKey, &unk_10007439C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100048D2C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100048D74(uint64_t a1)
{
  v2 = sub_1000022E4(&qword_100093D10, type metadata accessor for FileProtectionType, &unk_100074510);
  v3 = sub_1000022E4(&qword_100093D18, type metadata accessor for FileProtectionType, &unk_1000744B0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100048E30()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100048E6C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100048EC0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100048F34(void *a1, uint64_t *a2)
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