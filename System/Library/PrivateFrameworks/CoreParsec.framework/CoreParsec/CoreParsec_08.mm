Swift::Void __swiftcall _CPCardSectionForFeedback.redactSensitive()()
{
  sub_1000066E8(v0, "setActionDestination:");
  v6 = sub_1000BC4A8(v1, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr);
  if (v6)
  {
    v7 = v6;
    sub_10004229C(v6);
    sub_10000C86C();
    while (v2 != v3)
    {
      if (v4)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v7 + 8 * v3 + 32);
      }

      v9 = v8;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      _CPCardSectionForFeedback.redactSensitive()();

      ++v3;
    }
  }
}

Swift::Void __swiftcall _CPCardSectionForFeedback.redactUnused()()
{
  v5 = sub_1000BC4A8(v0, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr);
  if (v5)
  {
    v6 = v5;
    sub_10004229C(v5);
    sub_10000C86C();
    while (v1 != v2)
    {
      if (v3)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v6 + 8 * v2 + 32);
      }

      v8 = v7;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      _CPCardSectionForFeedback.redactUnused()();

      ++v2;
    }
  }
}

Swift::Void __swiftcall _CPCardSectionEngagementFeedback.redactSensitive()()
{
  v1 = [v0 destination];
  if (v1)
  {
    v2 = v1;
    sub_1000BC5AC(_swiftEmptyArrayStorage, v1);
  }
}

Swift::Void __swiftcall _CPCardSectionEngagementFeedback.redactUnused()()
{
  v1 = [v0 destination];
}

void sub_1000BB58C(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    [v4 *a2];
  }
}

Swift::Void __swiftcall _CPStartNetworkSearchFeedback.redactSensitive()()
{
  v1 = v0;
  v2 = sub_1000BC618(v0);
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100005B74(v4, v5);
    if (v6)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v7 = sub_100046184(&qword_1002184F8, &qword_10019D190);
      v15 = sub_1000119C0(v7, v8, v9, v10, v11, v12, v13, v14, v53, v3);
      sub_10000AAC4(v15, v16, v17, v18, v19, v20, v21, v22, v54, v57);
      sub_10000BEC0();
      _NativeDictionary._delete(at:)();
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = sub_10000B0A0();
    [v26 v27];
  }

  else
  {
    v23 = sub_10000B0A0();
    [v23 v24];
  }

  v28 = sub_1000BC618(v1);
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100005B74(v30, v31);
    if (v32)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v33 = sub_100046184(&qword_1002184F8, &qword_10019D190);
      v41 = sub_1000119C0(v33, v34, v35, v36, v37, v38, v39, v40, v53, v29);
      sub_10000AAC4(v41, v42, v43, v44, v45, v46, v47, v48, v55, v58);
      sub_10000BEC0();
      _NativeDictionary._delete(at:)();
    }

    v56 = Dictionary._bridgeToObjectiveC()().super.isa;

    v51 = sub_10000B0A0();
    [v51 v52];
  }

  else
  {
    v49 = sub_10000B0A0();

    [v49 v50];
  }
}

unint64_t sub_1000BB858()
{
  v0 = sub_100008010();
  NSObject._rawHashValue(seed:)(v0);
  v1 = sub_1000042D0();

  return sub_1000BBA5C(v1, v2);
}

unint64_t sub_1000BB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return sub_1000BBB30(a1, a2, a3, a4, v8);
}

unint64_t sub_1000BB930()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000B8E4(&qword_100217B48, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v0 = sub_10000C9E4();

  return sub_1000BBC2C(v0, v1);
}

unint64_t sub_1000BB9E0()
{
  v0 = sub_100008010();
  NSObject._rawHashValue(seed:)(v0);
  v1 = sub_1000042D0();

  return sub_1000BBD60(v1, v2);
}

unint64_t sub_1000BBA18(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000BBE38(a1, v2);
}

unint64_t sub_1000BBA5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100046184(&qword_100214E68, &qword_100198F88);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BBB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1000BBC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_1000BCC74(*(v2 + 48) + *(v5 + 72) * i, v7);
    v10 = static UUID.== infix(_:_:)();
    sub_1000BCCD8(v7);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BBD60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100005180(0, &qword_100219380, SFTopic_ptr);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BBE38(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1000BC358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1000BC3D4(uint64_t a1, char a2)
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
  sub_10000994C();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1000BC4A8(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_100005180(0, a3, a4);
  sub_10000C9E4();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_1000BC534(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_100005180(0, a3, a4);
  sub_10000C9E4();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void sub_1000BC5AC(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setUrls:isa];
}

uint64_t sub_1000BC618(void *a1)
{
  v1 = [a1 headers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000BC67C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10004229C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100046184(&qword_100214E68, &qword_100198F88);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000BCD34(&qword_100218B78, &qword_100214E70, &unk_100198F90);
        for (i = 0; i != v7; ++i)
        {
          sub_100046184(&qword_100214E70, &unk_100198F90);
          v9 = sub_1000BCB04(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BC7FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10004229C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100005180(0, &qword_100218B30, _CPSearchResultForFeedback_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000BCD34(&qword_100218B40, &qword_100218B38, &qword_10019D198);
        for (i = 0; i != v7; ++i)
        {
          sub_100046184(&qword_100218B38, &qword_10019D198);
          v9 = sub_1000BCB98(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BC980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10004229C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000BCD34(&qword_100218B70, &qword_100218B68, &qword_10019D3B0);
        for (i = 0; i != v7; ++i)
        {
          sub_100046184(&qword_100218B68, &qword_10019D3B0);
          v9 = sub_1000BCB98(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000BCB04(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1000A526C(a3);
  sub_100106BF8();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_1000BCB90;
}

void (*sub_1000BCB98(uint64_t a1, uint64_t a2, uint64_t a3))(id *)
{
  v7 = sub_10000E150(a1, a2, a3);
  sub_1000A526C(v7);
  sub_10000AE88();
  sub_100106BF8();
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return sub_1000BCD8C;
}

unint64_t sub_1000BCC0C()
{
  result = qword_1002183C0;
  if (!qword_1002183C0)
  {
    sub_100005180(255, &qword_100219380, SFTopic_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002183C0);
  }

  return result;
}

uint64_t sub_1000BCC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BCCD8(uint64_t a1)
{
  v2 = type metadata accessor for CancellableStoreKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BCD34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1000BCDCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100005B74(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100009848(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1000BCE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005B74(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1000BCE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100005B74(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for Date();
    sub_1000036B8();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for Date();
    v12 = a4;
    v13 = 1;
  }

  return sub_1000051C0(v12, v13, 1, v14);
}

uint64_t sub_1000BCF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100005B74(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BCF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100005B74(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_1000BCFE8()
{
  sub_1000055CC();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v1[4] = v2;
  v1[5] = &_swiftEmptyDictionarySingleton;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

void sub_1000BD064()
{
  v12 = _swiftEmptyArrayStorage;
  v1 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v1);
  sub_1000BD1B4(v0, &v12);
  os_unfair_lock_unlock(v1);

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v12;
  if (Strong)
  {
    v4 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(v3, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = 0;
  v7 = v3[2];
  for (i = v3 + 5; ; i += 2)
  {
    if (v7 == v6)
    {

      sub_10000B218(v0 + 16);

      sub_10000AAF4();
      return;
    }

    if (v6 >= v3[2])
    {
      break;
    }

    ++v6;
    v9 = *i;
    v10 = swift_getObjectType();
    v11 = *(v9 + 72);
    swift_unknownObjectRetain();
    v11(v10, v9);
    swift_unknownObjectRelease();
  }

  __break(1u);
}

void sub_1000BD1B4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v30 = xmmword_100197F20;
  v31 = v3;
  if (v7)
  {
    goto LABEL_8;
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
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v7)) | (v9 << 6);
        v12 = (*(v3 + 48) + 16 * v11);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(*(v3 + 56) + 8 * v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = *(v15 + 24);
          ObjectType = swift_getObjectType();
          v20 = *(v18 + 64);

          v20(ObjectType, v18);
          v21 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {

            sub_10006CEE0();
            *a2 = v28;

            v21 = *a2;
          }

          v23 = *(v21 + 16);
          if (v23 >= *(v21 + 24) >> 1)
          {
            sub_10006CEE0();
            v21 = v29;
            *a2 = v29;
          }

          *(v21 + 16) = v23 + 1;
          v24 = *a2 + 16 * v23;
          *(v24 + 32) = v17;
          *(v24 + 40) = v18;

          v3 = v31;
        }

        else
        {
          sub_100005180(0, &qword_100214810, OS_os_log_ptr);

          v25 = static OS_os_log.default.getter();
          static os_log_type_t.error.getter();
          sub_100046184(&unk_100217040, &qword_1001989F0);
          v26 = v13;
          v27 = swift_allocObject();
          *(v27 + 16) = v30;
          *(v27 + 56) = &type metadata for String;
          *(v27 + 64) = sub_10000512C();
          *(v27 + 32) = v14;
          *(v27 + 40) = v26;

          os_log(_:dso:log:type:_:)("Detected unfinished activity with destroyed span at key %s", v30);
        }

        v7 &= v7 - 1;
      }

      while (v7);
    }
  }

  __break(1u);
}

uint64_t sub_1000BD498()
{
  sub_1000BD064();

  return _swift_deallocClassInstance(v0, 48, 7);
}

_OWORD *sub_1000BD4F0()
{
  sub_10000AE9C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_10000432C(v7, v5);
  sub_100005B74(v9, v10);
  sub_100005F80();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100006700();
  sub_100046184(&qword_1002166A0, &unk_10019D8D0);
  if (sub_10000433C())
  {
    sub_100005B74(v6, v4);
    sub_100006AD8();
    if (!v13)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  v14 = *v0;
  if (v1)
  {
    sub_100007378((v14[7] + 32 * v2));
    sub_100007CB4();

    return sub_100028734(v15, v16);
  }

  else
  {
    sub_1000BE134(v2, v6, v4, v8, v14);
    sub_100007CB4();
  }
}

id sub_1000BD5FC(uint64_t a1, uint64_t a2)
{
  sub_1000059B8(a1, a2);
  sub_1000BB858();
  sub_100005F80();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_100046184(&qword_100214E68, &qword_100198F88);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_100046184(&qword_100214E60, &qword_100198F80);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v4 & 1, v3))
  {
    sub_1000BB858();
    sub_10000AAE4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  v12 = *v3;
  if (v9)
  {
    *(v12[7] + 8 * v8) = v2;
  }

  else
  {
    sub_1000BE1A0(v8, v14, v2, v12);

    return v14;
  }
}

uint64_t sub_1000BD710()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  sub_100005B74(v6, v4);
  sub_100005F80();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_100046184(&qword_1002184F8, &qword_10019D190);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v12))
  {
    goto LABEL_5;
  }

  v18 = sub_100005B74(v7, v5);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v1;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = v11;
    v21[1] = v9;
    sub_100005460();
  }

  else
  {
    sub_1000BE1E4(v16, v7, v5, v11, v9, v20);
    sub_100005460();
  }
}

void sub_1000BD840(uint64_t a1, uint64_t a2, double a3)
{
  sub_100005B74(a1, a2);
  sub_100005F80();
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_100046184(&qword_100218E50, &unk_10019D910);
  if (sub_10000E164())
  {
    sub_100005B74(a1, a2);
    sub_10000AAE4();
    if (!v13)
    {
      goto LABEL_12;
    }

    v10 = v12;
  }

  if (v11)
  {
    *(*(*v3 + 56) + 8 * v10) = a3;
  }

  else
  {
    v14 = sub_100009958();
    sub_1000BE230(v14, v15, a2, v16, a3);
  }
}

void sub_1000BD944()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000432C(v11, v9);
  sub_1000BB890(v13, v14, v15, v16);
  sub_100005F80();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_100046184(&qword_100218E48, &qword_10019D908);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v2 & 1, v0))
  {
    goto LABEL_5;
  }

  v22 = sub_100009958();
  v24 = sub_1000BB890(v22, v23, v6, v4);
  if ((v21 & 1) != (v25 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v24;
LABEL_5:
  v26 = *v0;
  if (v21)
  {
    *(v26[7] + 8 * v20) = v12;
    sub_100005460();
  }

  else
  {
    sub_1000BE278(v20, v10, v8, v6, v4, v12, v26);

    sub_100005460();
  }
}

uint64_t sub_1000BDA84()
{
  sub_10000AE9C();
  sub_1000039C8(v2, v3, v4);
  sub_100005F80();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100006700();
  sub_100046184(&qword_100218E40, &qword_10019D900);
  v6 = sub_10000433C();
  if (v6)
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_100008A14(v6, v7, v8, v9, *v0);
    sub_100007CB4();
  }

  else
  {
    v13 = sub_100008478();
    sub_100027630(v13, v14, v15, v16, v17);
    sub_100007CB4();
  }
}

void sub_1000BDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  type metadata accessor for CancellableStoreKey(0);
  sub_1000036B8();
  __chkstk_darwin(v30);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v20;
  sub_1000BB930();
  sub_100005F80();
  if (v36)
  {
    __break(1u);
    goto LABEL_11;
  }

  v37 = v34;
  v38 = v35;
  sub_100046184(&qword_100218238, &qword_10019C650);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v25 & 1, v33))
  {
    goto LABEL_5;
  }

  v39 = sub_1000BB930();
  if ((v38 & 1) != (v40 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v37 = v39;
LABEL_5:
  v41 = *v23;
  if (v38)
  {
    sub_10000C9F0();
    sub_100005460();
  }

  else
  {
    sub_1000BCC74(v27, v32);
    sub_1000BE2C4(v37, v32, v29, v41);
    sub_100005460();
  }
}

id sub_1000BDC98(uint64_t a1, uint64_t a2)
{
  sub_1000059B8(a1, a2);
  sub_1000BB9E0();
  sub_100005F80();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_100005180(0, &qword_100219380, SFTopic_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_100046184(&qword_100218B50, &qword_10019D3A0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v4 & 1, v3))
  {
    sub_1000BB9E0();
    sub_10000AAE4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  v12 = *v3;
  if (v9)
  {
    v13 = v12[7];
    v14 = v13 + *(*(type metadata accessor for TopicCacheEntry(0) - 8) + 72) * v8;

    return sub_1000BE420(v2, v14);
  }

  else
  {
    sub_1000BE378(v8, v16, v2, v12);

    return v16;
  }
}

unint64_t sub_1000BDDE0()
{
  sub_10000AE9C();
  v2 = v1;
  v4 = v3;
  sub_1000BBA18(v1);
  sub_100005F80();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  sub_100046184(&qword_100218548, &unk_10019D8E0);
  if (sub_10000E164())
  {
    sub_1000BBA18(v2);
    sub_10000AAE4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  if (v9)
  {
    *(*(*v0 + 56) + 8 * v8) = v4;
    sub_100007CB4();
  }

  else
  {
    sub_100009958();
    sub_100007CB4();

    return sub_1000BE1A0(v14, v15, v16, v17);
  }
}

void sub_1000BDEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for SessionType();
  __chkstk_darwin(v25);
  v27 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F794();
  sub_100005F80();
  if (v30)
  {
    __break(1u);
    goto LABEL_11;
  }

  v31 = v28;
  v32 = v29;
  sub_100046184(&qword_100218B60, &qword_10019D3A8);
  if (!sub_10000433C())
  {
    goto LABEL_5;
  }

  v33 = sub_10000F794();
  if ((v32 & 1) != (v34 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v31 = v33;
LABEL_5:
  v35 = *v20;
  if (v32)
  {
    sub_10000C9F0();
    sub_100005460();
  }

  else
  {
    v37 = sub_100009958();
    v38(v37);
    sub_100023CB0(v31, v27, v24, v35);
    sub_100005460();
  }
}

void sub_1000BE078()
{
  sub_10000AE9C();
  sub_1000039C8(v4, v5, v6);
  sub_100005F80();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100006700();
  sub_100046184(&qword_100218E38, &qword_10019D8C8);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v9)
    {
      goto LABEL_12;
    }

    v3 = v8;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_100007CB4();
  }

  else
  {
    v10 = sub_100008478();
    sub_100027630(v10, v11, v12, v13, v14);
    sub_100007CB4();
  }
}

_OWORD *sub_1000BE134(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100028734(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1000BE1A0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1000BE1E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1000BE230(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1000BE278(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_1000BE2C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CancellableStoreKey(0);
  result = sub_1000BE484(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for CancellableStoreKey);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1000BE378(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for TopicCacheEntry(0);
  result = sub_1000BE484(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for TopicCacheEntry);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1000BE420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicCacheEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BE484(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000036B8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000BE4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AE9C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v10[7](v16, v10);
  v19 = v18;
  v20 = *(*(v13 + 32) + 16);
  os_unfair_lock_lock(v20);
  sub_10000ECB8(v13, v17, v19, v15, v11);

  os_unfair_lock_unlock(v20);
  sub_100007CB4();

  return sub_1000BE59C(v21, v22, v23, v24);
}

uint64_t sub_1000BE59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, a4, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
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
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000BE7B4(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_1000BEDC0(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1000BEE64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BE7B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BEE90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BE7A0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000BEED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000BEDC0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1000BEF0C()
{
  result = qword_100218E58;
  if (!qword_100218E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218E58);
  }

  return result;
}

unint64_t sub_1000BEF64()
{
  result = qword_100218E60;
  if (!qword_100218E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218E60);
  }

  return result;
}

void sub_1000BEFB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1000BF014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultProvider];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000D50C;
  v12[3] = &unk_1001FAF98;
  v9 = _Block_copy(v12);

  v10 = [v8 addStatusUpdateHandlerForEnvironment:a1 queue:a2 block:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1000BF120(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() "defaultProvider")];

  return swift_unknownObjectRelease();
}

uint64_t sub_1000BF1D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BF214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000BF264(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100046184(&unk_100219B70, &qword_10019DFE0);
  __chkstk_darwin(v14 - 8);
  sub_1000039F8();
  if ((a2 & 1) != 0 || a1 - 21 <= 0xFFFFFFFFFFFFFFEBLL)
  {
    a1 = sub_1000B608C(0x14uLL) + 1;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else if (!a4)
  {
    goto LABEL_8;
  }

  UUID.init(uuidString:)();
  if (sub_100008D0C(v4, 1, v8) != 1)
  {
    sub_1000BF9D0(v4);
    return a1;
  }

  sub_1000BF9D0(v4);
LABEL_8:
  UUID.init()();
  UUID.uuidString.getter();
  (*(v10 + 8))(v13, v8);
  return a1;
}

uint64_t sub_1000BF404(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 3158628 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5555656369766564 && a2 == 0xEA00000000004449)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000BF4D4(char a1)
{
  if (a1)
  {
    return 0x5555656369766564;
  }

  else
  {
    return 3158628;
  }
}

uint64_t sub_1000BF508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000BF544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100046184(&qword_100218F28, &qword_10019DFD8);
  sub_100003650();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000039F8();
  sub_100007534(a1, a1[3]);
  sub_1000BF97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v5, v7);
}

uint64_t sub_1000BF6A8(void *a1)
{
  v4 = sub_100046184(&qword_100218F18, &qword_10019DFD0);
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000039F8();
  v8 = a1[3];
  sub_100007534(a1, v8);
  sub_1000BF97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v2, v4);
  }

  sub_100007378(a1);
  return v8;
}

uint64_t sub_1000BF848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BF404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BF870@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroPrimitiveSchema.int.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000BF898(uint64_t a1)
{
  v2 = sub_1000BF97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BF8D4(uint64_t a1)
{
  v2 = sub_1000BF97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BF910@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BF6A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1000BF97C()
{
  result = qword_100218F20;
  if (!qword_100218F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F20);
  }

  return result;
}

uint64_t sub_1000BF9D0(uint64_t a1)
{
  v2 = sub_100046184(&unk_100219B70, &qword_10019DFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DevicePersistentData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000BFB18()
{
  result = qword_100218F30;
  if (!qword_100218F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F30);
  }

  return result;
}

unint64_t sub_1000BFB70()
{
  result = qword_100218F38;
  if (!qword_100218F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F38);
  }

  return result;
}

unint64_t sub_1000BFBC8()
{
  result = qword_100218F40;
  if (!qword_100218F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F40);
  }

  return result;
}

uint64_t sub_1000BFC1C()
{
  v1 = v0;
  v2 = type metadata accessor for URLError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v31 - v11;
  [v1 code];
  URLError.Code.init(rawValue:)();
  (*(v3 + 16))(v8, v12, v2);
  static URLError.Code.cancelled.getter();
  sub_1000C00A0();
  v13 = sub_100003A08();
  v14 = *(v3 + 8);
  v14(v5, v2);
  if (v13)
  {
    v15 = sub_100007CC8();
    (v14)(v15);
    v16 = sub_1000041F8();
    (v14)(v16);
    return 59;
  }

  else
  {
    static URLError.Code.badURL.getter();
    sub_100003A08();
    v18 = sub_100005F94();
    (v14)(v18);
    static URLError.Code.timedOut.getter();
    sub_100003A08();
    v19 = sub_100005F94();
    (v14)(v19);
    static URLError.Code.unsupportedURL.getter();
    sub_100003A08();
    v20 = sub_100005F94();
    (v14)(v20);
    static URLError.Code.cannotFindHost.getter();
    sub_100003A08();
    v21 = sub_100005F94();
    (v14)(v21);
    static URLError.Code.cannotConnectToHost.getter();
    sub_100003A08();
    v22 = sub_100005F94();
    (v14)(v22);
    static URLError.Code.networkConnectionLost.getter();
    sub_100003A08();
    v23 = sub_100005F94();
    (v14)(v23);
    static URLError.Code.dnsLookupFailed.getter();
    sub_100003A08();
    v24 = sub_100005F94();
    (v14)(v24);
    static URLError.Code.httpTooManyRedirects.getter();
    sub_100003A08();
    v25 = sub_100005F94();
    (v14)(v25);
    static URLError.Code.resourceUnavailable.getter();
    sub_100003A08();
    v26 = sub_100005F94();
    (v14)(v26);
    static URLError.Code.notConnectedToInternet.getter();
    sub_100003A08();
    v27 = sub_100005F94();
    (v14)(v27);
    static URLError.Code.redirectToNonExistentLocation.getter();
    v28 = sub_100003A08();
    v14(v5, v2);
    v29 = sub_100007CC8();
    (v14)(v29);
    v30 = sub_1000041F8();
    (v14)(v30);
    if (v28)
    {
      return 69;
    }

    else
    {
      return 22;
    }
  }
}

unint64_t sub_1000C00A0()
{
  result = qword_100218F48;
  if (!qword_100218F48)
  {
    type metadata accessor for URLError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F48);
  }

  return result;
}

void sub_1000C0138(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100046184(&qword_1002193D0, &qword_10019E3B0);
  v9.n128_f64[0] = __chkstk_darwin(v8 - 8);
  v11 = &v42 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  v49 = a1;
  v50 = v13;
  v47 = v5 + 16;
  v48 = v5;
  v44 = a2;
  v45 = (v5 + 32);
  v46 = v7;
  v43 = v11;
  while (v50 != v12)
  {
    v14 = *(v48 + 72);
    v15 = v49 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v51 = v12;
    v16 = v4;
    (*(v48 + 16))(v7, v15 + v14 * v12, v4, v9);
    v17 = Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.fullHash.getter();
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *a2;
    v21 = v52;
    v22 = sub_100005B74(v17, v19);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v27 = v22;
    v28 = v23;
    sub_100046184(&qword_1002193D8, &qword_10019E3B8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v26))
    {
      v29 = sub_100005B74(v17, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_15;
      }

      v27 = v29;
    }

    v31 = v52;
    if (v28)
    {
      v32 = v27 * v14;
      v33 = *v45;
      v34 = v52[7] + v27 * v14;
      v35 = v43;
      v4 = v16;
      (*v45)(v43, v34, v16);
      v7 = v46;
      v33(v31[7] + v32, v46, v16);
      sub_1000051C0(v35, 0, 1, v16);
    }

    else
    {
      v52[(v27 >> 6) + 8] |= 1 << v27;
      v36 = (v31[6] + 16 * v27);
      *v36 = v17;
      v36[1] = v19;
      v37 = v31[7] + v27 * v14;
      v7 = v46;
      v4 = v16;
      (*v45)(v37, v46, v16);
      v38 = v31[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_14;
      }

      v31[2] = v40;
      v35 = v43;
      sub_1000051C0(v43, 1, 1, v16);
    }

    v41 = v44;
    *v44 = v31;
    a2 = v41;

    sub_10000B298(v35, &qword_1002193D0, &qword_10019E3B0);
    v12 = v51 + 1;
  }
}

uint64_t sub_1000C04A0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return sub_1000051C0(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5, v7);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return sub_1000051C0(v15, v14, 1, v5);
}

uint64_t sub_1000C065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for URLQueryItem();
  if (v3)
  {
    sub_10000690C();
    v5 = sub_100012634();
    v6(v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1000051C0(a2, v7, 1, v4);
}

double sub_1000C06FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_100009848(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1000C071C()
{
  sub_100005478();
  v3 = sub_100046184(&qword_100218230, &unk_100199A00);
  v4 = sub_100005490(v3);
  __chkstk_darwin(v4);
  sub_10000407C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  sub_1000E26B8();
  v9 = type metadata accessor for URL();
  sub_100003650();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100003664();
  sub_1000068C0();
  type metadata accessor for Client();
  sub_100003650();
  v70 = v14;
  v71 = v13;
  __chkstk_darwin(v13);
  sub_10000407C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v64 - v19;
  v21 = *(v0 + 56);

  static Client.parsecd.getter();
  v22 = type metadata accessor for ResourceAccessSpan(0);
  sub_1000E2424(v22);
  v23 = sub_100004A34(v21, 8, v20, 0, 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000E28B8(qword_100216C08);
LABEL_19:

    goto LABEL_20;
  }

  v25 = Strong;
  sub_100006AE8();
  v28 = sub_10000BB00(v26, v27);
  if (v28)
  {
    v29 = v28;
    v69 = v25;
    v30 = [v28 searchURL];

    if (v30)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    sub_1000051C0(v7, v31, 1, v9);
    sub_1000A4E88(v7, v2, &qword_100218230, &unk_100199A00);
    v35 = sub_1000E2528();
    sub_10000C944(v35, v36, v9);
    if (!v37)
    {
      (*(v11 + 32))(v1, v2, v9);
      sub_1000068B4();
      v68 = swift_allocObject();
      *(v68 + 16) = 0;
      v66 = sub_10008596C();
      static Client.parsecd.getter();
      sub_100006AE8();
      v50 = sub_10000BB00(v48, v49);
      v67 = v11;
      if (v50)
      {
        v51 = v50;
        v65 = [v50 assumesHTTP3Capable];
      }

      else
      {
        v65 = 0;
      }

      sub_1000068B4();
      v52 = swift_allocObject();
      swift_weakInit();
      sub_100006634();
      v53 = swift_allocObject();
      v54 = v68;
      *(v53 + 16) = v52;
      *(v53 + 24) = v54;
      sub_1000068B4();
      v55 = swift_allocObject();
      swift_weakInit();
      sub_100015B68();
      v56 = swift_allocObject();
      v56[2] = v23;
      v56[3] = v55;
      v56[4] = v54;
      swift_retain_n();

      v57 = sub_10000BA90();
      v58 = v66;
      sub_1000B6F4C(v57, v59, v65, v60, v53, v61, v56);

      (*(v70 + 8))(v17, v71);

      sub_1000C4490();

      swift_unknownObjectRelease();
      v62 = sub_10000CC98();
      v63(v62);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1000E23AC();
    sub_1000051C0(v32, v33, v34, v9);
  }

  sub_10000B298(v2, &qword_100218230, &unk_100199A00);
  if (qword_100214058 != -1)
  {
    sub_10000670C(&qword_100214058);
  }

  v38 = type metadata accessor for Logger();
  sub_100006674(v38, qword_100232978);
  v39 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v40 = sub_1000E2170();
  if (os_log_type_enabled(v40, v41))
  {
    sub_1000E2130();
    v42 = swift_slowAlloc();
    sub_1000A5288(v42);
    sub_1000E2148();
    _os_log_impl(v43, v44, v45, v46, v47, 2u);
    sub_1000037A4();
  }

  sub_1000E28B8(qword_100216C08);

  swift_unknownObjectRelease();
LABEL_20:
  sub_100005460();
}

uint64_t sub_1000C0C4C()
{
  v1 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v1);
  sub_100003760();
  __chkstk_darwin(v2);
  sub_1000E20C8();
  v3 = type metadata accessor for UserAgent();
  sub_100003650();
  __chkstk_darwin(v4);
  sub_100003664();
  sub_100006EBC();
  sub_10000848C();
  sub_10001672C(v5, v6);
  v7 = sub_1000B1FC4();
  sub_10000C944(v7, v8, v3);
  if (v9)
  {
    return sub_10000B298(v0, &qword_100217480, &unk_100198F70);
  }

  sub_1000E2810();
  v11();
  sub_10000FFB0();
  v14 = sub_10000BB00(v12, v13);
  if (!v14 || (v15 = v14, v16 = [v14 parsecEnabled], v15, v16))
  {
    swift_unknownObjectRetain();
    sub_1000E6178();
    swift_unknownObjectRelease();
  }

  v17 = sub_100005854();
  return v18(v17);
}

uint64_t sub_1000C0DD0()
{
  sub_100007B50();
  *(v1 + 200) = v0;
  v2 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v2);
  *(v1 + 208) = swift_task_alloc();
  sub_1000E21E8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C0E60()
{
  v1 = v0[26];
  sub_10000848C();
  sub_10001672C(v2, v3);
  type metadata accessor for UserAgent();
  v4 = sub_100009940();
  v7 = sub_100008D0C(v4, v5, v6);
  sub_10000B298(v1, &qword_100217480, &unk_100198F70);
  if (v7 == 1)
  {
    v8 = 0xEC000000746E6567;
    v9 = 0x4172657355206F6ELL;
LABEL_12:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000E2D30();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    v24 = sub_10000AEB0(inited, xmmword_100197F20);
    v24[4].n128_u64[1] = &type metadata for String;
    v24[3].n128_u64[0] = v9;
    v24[3].n128_u64[1] = v8;
    v25 = Dictionary.init(dictionaryLiteral:)();
    v26 = objc_allocWithZone(NSError);
    v27 = sub_100007CD4();
    sub_1000B184C(v27, v28, 1, v25);
    swift_willThrow();

    sub_1000098BC();

    return v29();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {
    v8 = 0xEB00000000796C62;
    v9 = 0x6D65737341206F6ELL;
    goto LABEL_12;
  }

  if (qword_100214090 != -1)
  {
    sub_1000042B0(&qword_100214090);
  }

  v11 = type metadata accessor for Logger();
  v0[28] = sub_10000964C(v11, qword_100232A20);
  v12 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v13 = sub_1000E2170();
  if (os_log_type_enabled(v13, v14))
  {
    sub_1000E2130();
    v15 = swift_slowAlloc();
    sub_1000A5288(v15);
    sub_1000E2148();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    sub_1000037A4();
  }

  v0[29] = sub_1000158AC();
  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  v21[1] = sub_1000C111C;

  return sub_1000FF394();
}

uint64_t sub_1000C111C()
{
  sub_1000E2708();
  *v3 = v2;
  v2[22] = v1;
  v2[23] = v4;
  v2[24] = v0;
  *v3 = *v1;
  v2[31] = v0;

  swift_unknownObjectRelease();
  sub_1000E21E8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C124C(uint64_t a1)
{
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    sub_1000E2130();
    v5 = swift_slowAlloc();
    sub_10000594C(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Bag fetch completed, returning value to parsec_tool client", v1, 2u);
    sub_1000037A4();
  }

  v6 = *(v2 + 184);

  sub_1000C4490();
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);

  return v7(v6);
}

uint64_t sub_1000C1340()
{
  sub_100007B50();
  swift_unknownObjectRelease();

  sub_1000098BC();

  return v0();
}

uint64_t sub_1000C13A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
  v63 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  __chkstk_darwin(v9);
  v58 = &v41 - v10;
  v52 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section();
  v48 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v12 = sub_10000D57C(a1);
  v56 = a2;
  v13 = *(Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.sections.getter() + 16);

  if (v12 && v12 == v13)
  {
    v15 = 0;
    v47 = v43 & 0xC000000000000001;
    v42 = v43 & 0xFFFFFFFFFFFFFF8;
    v41 = v43 + 32;
    v46 = v48 + 16;
    v64 = v63 + 16;
    v62 = (v63 + 8);
    v57 = (v63 + 32);
    v44 = (v48 + 8);
    v45 = v12;
    while (v15 != v12)
    {
      if (v47)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v42 + 16))
        {
          goto LABEL_39;
        }

        v16 = *(v41 + 8 * v15);
      }

      v17 = v16;
      v50 = [v16 topic];

      result = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.sections.getter();
      if (v15 >= *(result + 16))
      {
        goto LABEL_38;
      }

      v18 = result + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v19 = *(v48 + 72);
      v49 = v15;
      (*(v48 + 16))(v51, v18 + v19 * v15, v52);

      result = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.resultIdentifiers.getter();
      v55 = *(result + 16);
      if (v55)
      {
        v20 = 0;
        v54 = result + 32;
        v21 = _swiftEmptyArrayStorage;
        v53 = result;
LABEL_12:
        if (v20 >= *(result + 16))
        {
LABEL_36:
          __break(1u);
          break;
        }

        v22 = (v54 + 16 * v20);
        v24 = *v22;
        v23 = v22[1];
        v60 = v20 + 1;
        v61 = v21;
        v66 = v23;

        result = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.results.getter();
        v25 = result;
        v26 = 0;
        v65 = *(result + 16);
        while (1)
        {
          if (v65 == v26)
          {

            v21 = v61;
            goto LABEL_30;
          }

          if (v26 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v27 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v28 = *(v63 + 72);
          v29 = *(v63 + 16);
          v29(v8, v25 + v27 + v28 * v26, v4);
          if (Apple_Parsec_Spotlight_V1alpha_Result.identifier.getter() == v24 && v30 == v66)
          {

            goto LABEL_25;
          }

          v32 = v24;
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {
            break;
          }

          result = (*v62)(v8, v4);
          ++v26;
          v24 = v32;
        }

LABEL_25:

        v34 = v58;
        v35 = *v57;
        (*v57)(v58, v8, v4);
        v29(v59, v34, v4);
        v21 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006CE60(0, v21[2] + 1, 1, v21);
          v21 = v38;
        }

        v37 = v21[2];
        v36 = v21[3];
        if (v37 >= v36 >> 1)
        {
          sub_10006CE60(v36 > 1, v37 + 1, 1, v21);
          v21 = v39;
        }

        (*v62)(v58, v4);
        v21[2] = v37 + 1;
        v35(v21 + v27 + v37 * v28, v59, v4);
LABEL_30:
        v20 = v60;
        result = v53;
        if (v60 != v55)
        {
          goto LABEL_12;
        }
      }

      else
      {

        v21 = _swiftEmptyArrayStorage;
      }

      v40 = v50;
      v15 = v49 + 1;
      sub_1000A5CD8(v50, v21);

      result = (*v44)(v51, v52);
      v12 = v45;
      if (v15 == v45)
      {
        return result;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C1968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section();
  v82 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v68 - v9;
  v10 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
  v90 = *(v10 - 8);
  __chkstk_darwin(v10);
  v89 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v68 - v13;
  v15 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v19 = sub_10000D57C(a1);
  if (v19 == *(a2 + 16))
  {
    v69 = v16;
    v70 = v15;
    v88 = v18;
    v81 = v19;
    Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.init()();
    if (v81)
    {
      v20 = 0;
      v85 = *(v90 + 16);
      v79 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v21 = a2 + v79;
      v77 = *(v90 + 72);
      v78 = v83 & 0xC000000000000001;
      v75 = v82 + 32;
      v76 = (v82 + 16);
      v74 = (v90 + 32);
      v73 = (v82 + 8);
      v90 += 16;
      v72 = (v90 - 8);
      v86 = v14;
      v87 = v10;
      v80 = v7;
      do
      {
        v22 = v5;
        v85(v14, v21, v10);
        Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.init()();
        v23 = Apple_Parsec_Spotlight_V1alpha_Result.identifier.getter();
        v25 = v24;
        v26 = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.resultIdentifiers.modify();
        v28 = v27;
        v29 = *v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001B77C();
          v29 = v54;
          *v28 = v54;
        }

        v31 = *(v29 + 16);
        if (v31 >= *(v29 + 24) >> 1)
        {
          sub_10001B77C();
          v29 = v55;
          *v28 = v55;
        }

        *(v29 + 16) = v31 + 1;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v23;
        *(v32 + 40) = v25;
        v26(v91, 0);
        if (v78)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(v83 + 8 * v20 + 32);
        }

        v34 = v33;
        v5 = v22;
        v35 = v84;
        v36 = [v33 contextId];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.contextID.setter();
        v37 = v80;
        (*v76)(v80, v35, v5);
        v38 = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.sections.modify();
        v40 = v39;
        v41 = *v39;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        *v40 = v41;
        if ((v42 & 1) == 0)
        {
          sub_10006CEA0(0, *(v41 + 16) + 1, 1, v41);
          v41 = v56;
          *v40 = v56;
        }

        v44 = *(v41 + 16);
        v43 = *(v41 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_10006CEA0(v43 > 1, v44 + 1, 1, v41);
          v41 = v57;
          *v40 = v57;
        }

        *(v41 + 16) = v44 + 1;
        (*(v82 + 32))(v41 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v44, v37, v5);
        v38(v91, 0);
        v85(v89, v86, v87);
        v45 = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.results.modify();
        v47 = v46;
        v48 = *v46;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *v47 = v48;
        if ((v49 & 1) == 0)
        {
          sub_10006CE60(0, *(v48 + 16) + 1, 1, v48);
          v48 = v58;
          *v47 = v58;
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_10006CE60(v50 > 1, v51 + 1, 1, v48);
          v48 = v59;
          *v47 = v59;
        }

        ++v20;
        *(v48 + 16) = v51 + 1;
        v52 = v77;
        v53 = v48 + v79 + v51 * v77;
        v10 = v87;
        (*v74)(v53, v89, v87);
        v45(v91, 0);
        (*v73)(v35, v5);
        v14 = v86;
        (*v72)(v86, v10);
        v21 += v52;
      }

      while (v81 != v20);
    }

    v66 = v71;
    v67 = v70;
    (*(v69 + 32))(v71, v88, v70);
    return sub_1000051C0(v66, 0, 1, v67);
  }

  else
  {
    v60 = v71;
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000964C(v61, qword_100232A08);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "TopicContextss and results should have the same count.", v64, 2u);
    }

    return sub_1000051C0(v60, 1, 1, v15);
  }
}

uint64_t sub_1000C2118(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchTimeInterval();
  sub_100057FF8(v5, a2);
  v6 = sub_100007CC8();
  *sub_10000964C(v6, v7) = a3;
  sub_10000690C();
  v9 = *(v8 + 104);

  return v9();
}

uint64_t sub_1000C21A4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if ((a2 & 1) == 0)
  {
    sub_1000E28A0();
    if (v7)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    result = a3(v20, a1, 0);
    v22 = qword_100216C08;
    v23 = 2;
    goto LABEL_15;
  }

  sub_1000E28A0();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10001343C(a1);
  a3(v8, 0, v9);

  if (*(v3 + qword_100232BD0))
  {

    sub_1000CEEF8(a1);
  }

  swift_errorRetain();
  v10 = sub_100046184(&qword_100216900, &unk_10019AE20);
  if (sub_1000E2DAC(v10, v11, v12, &type metadata for ClientState.ResponseError, v13, v14, v15, v16, v36, v38, v40, a1))
  {
    v17 = qword_100216C08;
    if (v41)
    {
      if (v41 == 1)
      {
        v18 = 20;
      }

      else
      {
        v18 = 21;
      }
    }

    else
    {
      v18 = 19;
    }

    goto LABEL_23;
  }

  v24 = swift_errorRetain();
  if (!sub_1000E2DAC(v24, v25, v26, &_s13ResponseErrorON, v27, v28, v29, v30, v37, v39, v41, a1))
  {

    v22 = qword_100216C08;
    v23 = 24;
LABEL_15:
    *(v3 + v22) = v23;
    return result;
  }

  if (v42 != 1)
  {
    v34 = sub_10000BE80();
    sub_1000BA4F0(v34, v35, 0);
    v17 = qword_100216C08;
    v18 = 23;
LABEL_23:
    *(v3 + v17) = v18;
  }

  v31 = sub_1000BFC1C();
  v32 = sub_10000BE80();
  sub_1000BA4F0(v32, v33, 1);
  *(v3 + qword_100216C08) = v31;
}

void sub_1000C2374(void *a1)
{
  sub_1000E2A9C();
  sub_1000FED08();

  sub_1000C23D8();
}

void sub_1000C23D8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7parsecd11ClientState_pegasusProxyLocker) + 16);
  os_unfair_lock_lock(v1);
  sub_1000C35CC();

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000C2424(uint64_t a1)
{
  sub_1000E2A9C();
  sub_1000FEC80();

  type metadata accessor for Client();
  sub_1000036B8();
  v4 = *(v3 + 8);

  return v4(a1, v2);
}

void sub_1000C249C()
{
  sub_100005478();
  v4 = v1;
  v6 = v5;
  v7 = type metadata accessor for UserAgent();
  sub_100003650();
  v94 = v8;
  __chkstk_darwin(v9);
  sub_100004370();
  v85 = v10;
  v11 = sub_100046184(&qword_100217480, &unk_100198F70);
  v12 = sub_100005490(v11);
  __chkstk_darwin(v12);
  sub_100003838();
  v88 = v13;
  sub_100007F80();
  __chkstk_darwin(v14);
  sub_1000E26C8();
  v15 = sub_100046184(&qword_1002190D0, &qword_10019E230);
  sub_100005490(v15);
  sub_100003760();
  __chkstk_darwin(v16);
  sub_1000E2CB4();
  v17 = type metadata accessor for Client();
  sub_100003650();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100003838();
  v92 = v21;
  sub_100007F80();
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  __chkstk_darwin(v25);
  sub_1000E26B8();
  sub_1000E2A9C();
  sub_1000FED50();

  v93 = v6;
  v26 = sub_100007700();
  sub_10000EFEC(v26, v27, &qword_100217480, &unk_100198F70);
  v28 = sub_1000B1FC4();
  sub_10000C944(v28, v29, v7);
  v89 = v7;
  if (v30)
  {
    sub_10000B298(v2, &qword_100217480, &unk_100198F70);
    sub_1000E23AC();
    sub_1000051C0(v31, v32, v33, v17);
    static Client.unknown.getter();
    v34 = sub_100009940();
    sub_10000C944(v34, v35, v17);
    v41 = v17;
    if (!v30)
    {
      sub_10000B298(v0, &qword_1002190D0, &qword_10019E230);
    }
  }

  else
  {
    UserAgent.client.getter();
    (*(v94 + 8))(v2, v7);
    sub_10000BB90();
    sub_1000051C0(v36, v37, v38, v17);
    v39 = sub_1000E2840();
    v40(v39);
    v41 = v17;
  }

  if (qword_1002140A8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100006674(v42, qword_100232A68);
  v90 = *(v19 + 16);
  v91 = v19 + 16;
  v90(v24, v3, v41);

  v43 = Logger.logObject.getter();
  v44 = v3;
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v45))
  {
    v0 = sub_10001BCD4();
    v84 = sub_100018FF4();
    v96[0] = v84;
    *v0 = 136446466;
    Client.type.getter();
    v95 = ClientType.rawValue.getter();
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v44;
    v87 = v41;
    v47 = sub_1000E25EC();
    v48(v47);
    v49 = sub_10000AE18();
    sub_100009684(v49, v50, v51);
    sub_1000E24A8();

    *(v0 + 4) = v46;
    *(v0 + 12) = 2080;
    type metadata accessor for SessionType();
    sub_10000F574();
    sub_10000BA9C(v52, v53);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = sub_100009684(v54, v55, v96);

    *(v0 + 14) = v56;
    v44 = v86;
    v57 = v45;
    v58 = v87;
    _os_log_impl(&_mh_execute_header, v43, v57, "userAgent changed to %{public}s for session %s", v0, 0x16u);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    v59 = v94;
  }

  else
  {

    v60 = sub_1000E25EC();
    v61(v60);
    v59 = v94;
    v58 = v41;
  }

  sub_1000119E0();
  v62 = v92;
  sub_10001672C(v63, v64);
  Client.type.getter();
  v65 = sub_1000E2D24();
  (v24)(v65, v58);
  Client.type.getter();
  sub_10000835C();
  ClientType.rawValue.getter();
  sub_100006B00();
  if (v0 != ClientType.rawValue.getter())
  {
    sub_1000C2B78(v96);
    v66 = OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
    sub_100005D5C(v4 + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController, &v95);
    sub_1000E0670(v96, v4 + v66, &qword_100218208, &qword_10019C620);
    swift_endAccess();
  }

  v90(v62, v44, v58);
  sub_1000C2424(v62);
  sub_100006AE8();
  v69 = sub_10000BB00(v67, v68);
  if (v69)
  {
    v70 = v69;
    sub_10000848C();
    v71 = v88;
    sub_10001672C(v72, v73);
    v74 = sub_1000B1FC4();
    v75 = v89;
    if (sub_100008D0C(v74, v76, v89))
    {
      sub_10000B298(v71, &qword_100217480, &unk_100198F70);
      v77 = 0;
      v78 = 0;
    }

    else
    {
      sub_1000E2270();
      v86 = v44;
      v79 = v85;
      sub_10000DC50();
      v80();
      sub_10000B298(v71, &qword_100217480, &unk_100198F70);
      v77 = UserAgent.fullString.getter();
      v78 = v81;
      v44 = v86;
      (*(v59 + 8))(v79, v75);
    }

    objc_allocWithZone(PARBag);
    v82 = v70;
    v83 = sub_100015C68(v82, v77, v78);
    sub_1000C2374(v83);
  }

  sub_10000B298(v93, &qword_100217480, &unk_100198F70);
  (v24)(v44, v58);
  sub_100005460();
}

double sub_1000C2B78@<D0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Client();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100046184(&qword_100217480, &unk_100198F70);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for UserAgent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__userAgent, sub_10000F8D8);
  if (sub_100008D0C(v9, 1, v10) == 1)
  {
    sub_10000B298(v9, &qword_100217480, &unk_100198F70);
    if (qword_1002140D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000964C(v14, qword_100232AF8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "ClientState configured with nil useragent", v17, 2u);
    }

    goto LABEL_13;
  }

  (*(v11 + 32))(v13, v9, v10);
  UserAgent.client.getter();
  v18 = Client.type.getter();
  (*(v4 + 8))(v6, v3);
  if (v18 == 1)
  {
    v19 = type metadata accessor for SafariEngagedSuggestionController();
    swift_allocObject();

    v21 = sub_1000B203C(v22);
    goto LABEL_11;
  }

  if (v18 == 2)
  {
    v19 = type metadata accessor for SpotlightEngagedSuggestionController();
    swift_allocObject();

    v21 = sub_1000662C0(v20);
LABEL_11:
    *(a2 + 24) = v19;
    *(a2 + 32) = &off_1001F6A40;
    *a2 = v21;
    (*(v11 + 8))(v13, v10);
    return result;
  }

  (*(v11 + 8))(v13, v10);
LABEL_13:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_1000C2F10()
{
  sub_100005478();
  v2 = v0;
  v47 = v3;
  v48 = v4;
  v6 = v5;
  v49 = v7;
  v8 = sub_100046184(&qword_1002190E0, &qword_10019E238);
  sub_100005490(v8);
  sub_100003760();
  __chkstk_darwin(v9);
  sub_10000A964();
  v10 = type metadata accessor for SessionType();
  sub_100003650();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100004370();
  v50 = v14;
  v15 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v15);
  sub_100003760();
  __chkstk_darwin(v16);
  sub_100007884();
  v17 = type metadata accessor for Client();
  v18 = sub_100005490(v17);
  __chkstk_darwin(v18);
  sub_100003664();
  sub_100006EBC();
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC7parsecd11ClientState__bag;
  sub_100046184(&qword_1002190E8, &qword_10019E240);
  sub_100006634();
  swift_allocObject();
  sub_10000899C();
  *(v0 + v19) = sub_1000A5270();
  v20 = OBJC_IVAR____TtC7parsecd11ClientState__client;
  static Client.unknown.getter();
  v21 = sub_100046184(&qword_1002190F0, &qword_10019E248);
  sub_1000E2424(v21);
  sub_1000054F4();
  *(v0 + v20) = sub_100099470();
  v22 = OBJC_IVAR____TtC7parsecd11ClientState__userAgent;
  type metadata accessor for UserAgent();
  sub_1000E23AC();
  sub_1000051C0(v23, v24, v25, v26);
  v27 = sub_100046184(&qword_1002190F8, &qword_10019E250);
  sub_1000E2424(v27);
  *(v0 + v22) = sub_100099400();
  type metadata accessor for Date();
  sub_1000E23AC();
  sub_1000051C0(v28, v29, v30, v31);
  v32 = OBJC_IVAR____TtC7parsecd11ClientState__configuration;
  sub_100046184(&unk_100219100, &qword_10019E258);
  sub_100006634();
  swift_allocObject();
  v33 = sub_10000899C();
  *(v0 + v32) = sub_10010CFAC(v33);
  v34 = v0 + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
  *(v34 + 4) = 0;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_zkwProxy) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_safariAssistantProxy) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_lookupSearchProxy) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_safariSearchProxy) = 0;
  v35 = OBJC_IVAR____TtC7parsecd11ClientState_pegasusProxyLocker;
  type metadata accessor for Locker();
  sub_1000068B4();
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *(v36 + 16) = v37;
  *v37 = 0;
  *(v2 + v35) = v36;
  v2[3] = v48;
  swift_unknownObjectWeakAssign();
  v2[7] = sub_100004950();
  type metadata accessor for ClientSessionManager();
  swift_allocObject();
  sub_10000AB28();
  swift_unknownObjectRetain();

  sub_1000DFCA0();
  v2[8] = v38;
  v2[9] = &off_1001FC490;
  v2[5] = v49;
  v2[6] = v6;

  v2[4] = dispatch_semaphore_create(0);
  v39 = sub_1000E2C9C();
  sub_10000EFEC(v39, v40, &qword_1002190E0, &qword_10019E238);
  v41 = sub_1000E25C8();
  sub_10000C944(v41, v42, v10);
  if (v43)
  {
    v46 = v50;
    sub_10000AE18();
    SessionType.init(withClientIdentifier:)();
    v44 = sub_1000E25C8();
    sub_10000C944(v44, v45, v10);
    if (!v43)
    {
      sub_10000B298(v1, &qword_1002190E0, &qword_10019E238);
    }
  }

  else
  {

    v46 = v50;
    (*(v12 + 32))(v50, v1, v10);
  }

  (*(v12 + 32))(v2 + OBJC_IVAR____TtC7parsecd11ClientState_sessionType, v46, v10);
  sub_1000C23D8();
  swift_unknownObjectRelease();
  sub_10000B298(v47, &qword_1002190E0, &qword_10019E238);
  sub_100005460();
}

uint64_t sub_1000C336C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = [objc_opt_self() defaultCenter];
    [v1 removeObserver:v0];
    swift_unknownObjectRelease();
  }

  sub_10000B218(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC7parsecd11ClientState_sessionType;
  type metadata accessor for SessionType();
  sub_10000374C();
  (*(v3 + 8))(v0 + v2);

  sub_10000B298(v0 + OBJC_IVAR____TtC7parsecd11ClientState_lastNetworkRequest, &qword_100217050, &qword_100199180);

  sub_10000B298(v0 + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController, &qword_100218208, &qword_10019C620);

  return v0;
}

uint64_t sub_1000C3520()
{
  sub_1000C336C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ClientState(uint64_t a1)
{
  result = qword_100218F88;
  if (!qword_100218F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C35CC()
{
  sub_100005478();
  v1 = v0;
  type metadata accessor for Client();
  sub_100003650();
  __chkstk_darwin(v2);
  sub_100003664();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v4 = Strong;
  sub_100006AE8();
  v7 = sub_10000BB00(v5, v6);
  if (v7)
  {
    v8 = v7;
    goto LABEL_5;
  }

  LOBYTE(v0) = v4;
  sub_1000158AC();
  v9 = sub_10000899C();
  sub_100015914(v9, 0);
  v8 = sub_100016D34();
  swift_unknownObjectRelease();
  if (v8)
  {
LABEL_5:
    sub_1000CFC9C(v8);
    if (v10 >> 60 == 15)
    {

      goto LABEL_7;
    }

    sub_1000119E0();
    sub_10001672C(v16, v17);
    v18 = Client.type.getter();
    v19 = sub_100004170();
    v20(v19);
    switch(v18)
    {
      case 4:
        v39 = sub_100008380();
        sub_100014924(v39, v40);
        sub_10008596C();
        sub_10000899C();
        v41 = type metadata accessor for PegasusProxyForLookupSearch();
        sub_1000E2424(v41);
        v42 = sub_100008380();
        sub_100014924(v42, v43);
        sub_10000FE98();
        v44 = PegasusProxyForLookupSearch.init(bagData:urlSession:)();
        sub_10000F814(v44);
        sub_10008596C();
        sub_10000899C();
        v45 = type metadata accessor for PegasusProxyForEngagement();
        sub_1000E2424(v45);
        sub_10000FE98();
        break;
      case 2:
        v32 = sub_100008380();
        sub_100014924(v32, v33);
        sub_10008596C();
        sub_10000899C();
        v34 = type metadata accessor for PegasusProxyForSpotlightZKW();
        sub_1000E2424(v34);
        v35 = sub_100008380();
        sub_100014924(v35, v36);
        sub_10000FE98();
        v37 = PegasusProxyForSpotlightZKW.init(bagData:urlSession:)();
        sub_10000F814(v37);
        sub_10008596C();
        sub_10000899C();
        v38 = type metadata accessor for PegasusProxyForEngagement();
        sub_1000E2424(v38);
        sub_10000FE98();
        break;
      case 1:
        v21 = sub_100008380();
        sub_100062FBC(v21, v22);
        v23 = sub_100008380();
        sub_100014924(v23, v24);
        sub_10008596C();
        sub_10000899C();
        v25 = type metadata accessor for PegasusProxyForSafariAssistant();
        sub_1000E2424(v25);
        v26 = sub_100008380();
        sub_100014924(v26, v27);
        sub_10000FE98();
        v28 = PegasusProxyForSafariAssistant.init(bagData:urlSession:)();
        sub_10000F814(v28);
        sub_10008596C();
        sub_10000899C();
        v29 = type metadata accessor for PegasusProxyForSafariSearch();
        sub_1000E2424(v29);
        sub_10000FE98();
        v30 = PegasusProxyForSafariSearch.init(bagData:urlSession:)();
        sub_10000F814(v30);
        sub_10008596C();
        sub_10000899C();
        v31 = type metadata accessor for PegasusProxyForEngagement();
        sub_1000E2424(v31);
        sub_10000FE98();
        break;
      default:

        v49 = sub_100008380();
        sub_100014A2C(v49, v50);
        swift_unknownObjectRelease();
        goto LABEL_22;
    }

    v46 = PegasusProxyForEngagement.init(bagData:urlSession:client:)();

    v47 = sub_100008380();
    sub_100014A2C(v47, v48);
    swift_unknownObjectRelease();
    *&v1[OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy] = v46;

LABEL_22:
    sub_100005460();
    return;
  }

LABEL_7:
  if (qword_100214058 != -1)
  {
    sub_10000670C(&qword_100214058);
  }

  v11 = type metadata accessor for Logger();
  sub_100006674(v11, qword_100232978);
  v51 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000098B0();
  if (os_log_type_enabled(v51, v12))
  {
    sub_1000E2130();
    v13 = swift_slowAlloc();
    sub_10000594C(v13);
    _os_log_impl(&_mh_execute_header, v51, v0, "couldn't initialize Pegasus Proxy, missing bag data", v1, 2u);
    sub_1000037A4();
  }

  swift_unknownObjectRelease();
  sub_100005460();
}

Swift::Int sub_1000C399C()
{
  sub_10000899C();
  v2 = type metadata accessor for UserAgent();
  sub_100003650();
  __chkstk_darwin(v3);
  sub_100003664();
  sub_1000068C0();
  v4 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v4);
  sub_100003760();
  __chkstk_darwin(v5);
  sub_1000E2354();
  v6 = sub_1000A4804(v0);
  if (!v6)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_7;
  }

  v7 = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v7, &v24);

  sub_10003430C(&v23);
  if (!*(&v25 + 1))
  {
LABEL_7:
    sub_10000B298(&v24, &qword_1002181D0, &qword_100198E00);
    return OS_dispatch_semaphore.signal()();
  }

  sub_100005180(0, &qword_100218240, PARBag_ptr);
  if (swift_dynamicCast())
  {
    v8 = v23;
    sub_10000848C();
    sub_10001672C(v9, v10);
    v11 = sub_1000E25BC();
    if (sub_100008D0C(v11, v12, v2))
    {
      sub_10000B298(v1, &qword_100217480, &unk_100198F70);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      sub_1000E2270();
      v15 = sub_10000CC98();
      v16(v15);
      sub_10000B298(v1, &qword_100217480, &unk_100198F70);
      v13 = UserAgent.fullString.getter();
      v14 = v17;
      v18 = sub_10000F18C();
      v19(v18);
    }

    objc_allocWithZone(PARBag);
    v20 = v8;
    v21 = sub_100015C68(v20, v13, v14);
    sub_1000C2374(v21);
  }

  return OS_dispatch_semaphore.signal()();
}

void sub_1000C3C70(uint64_t a1)
{
  type metadata accessor for SessionType();
  if (v1 <= 0x3F)
  {
    sub_1000504A0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1000C3DA0()
{
  result = qword_1002190A0;
  if (!qword_1002190A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002190A0);
  }

  return result;
}

uint64_t sub_1000C3DF4(uint64_t a1)
{
  result = sub_10000BA9C(&unk_1002190C0, type metadata accessor for ClientState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C3E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100046184(&qword_100217480, &unk_100198F70);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for UserAgent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = sub_1000C4190();
  swift_beginAccess();
  v13 = *(a3 + 16);
  *(a3 + 16) = v12;

  swift_beginAccess();
  v14 = *(a3 + 16);
  if (v14)
  {
    sub_100089408(0, 0xE000000000000000, v14, &selRef_setInput_);
  }

  swift_beginAccess();
  v15 = *(a3 + 16);
  if (v15)
  {
    [v15 setTriggerEvent:19];
  }

  swift_beginAccess();
  v16 = *(a3 + 16);
  if (v16)
  {
    [v16 setEndpoint:12];
  }

  swift_beginAccess();
  v17 = *(a3 + 16);
  if (!v17)
  {
  }

  v18 = objc_allocWithZone(_CPFeedbackPayload);
  v19 = v17;
  v20 = [v18 initWithCodable:v19];
  [v20 setQueryId:0];
  if (!v20)
  {
  }

  swift_unknownObjectRetain();
  sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__userAgent, sub_10000F8D8);
  if (sub_100008D0C(v6, 1, v7) == 1)
  {
    parsecdUserAgent.getter();
    if (sub_100008D0C(v6, 1, v7) != 1)
    {
      sub_10000B298(v6, &qword_100217480, &unk_100198F70);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  sub_100014D74();

  swift_unknownObjectRelease();
  return (*(v8 + 8))(v10, v7);
}

id sub_1000C4190()
{
  v1 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v1);
  sub_100003760();
  __chkstk_darwin(v2);
  sub_1000068C0();
  v3 = [objc_opt_self() startSearchFeedbackWithUUID];
  URLRequest.url.getter();
  v4 = type metadata accessor for URL();
  v5 = sub_1000B1FC4();
  sub_10000C944(v5, v6, v4);
  if (v7)
  {
    sub_10000B298(v0, &qword_100218230, &unk_100199A00);
    v8 = 0;
  }

  else
  {
    v8 = URL.absoluteString.getter();
    sub_10000690C();
    v9 = sub_10000CC98();
    v10(v9);
    sub_1000E263C();
    String._bridgeToObjectiveC()();
    sub_1000189B0();
  }

  v11 = sub_100012634();
  [v11 v12];

  v13 = URLRequest.allHTTPHeaderFields.getter();
  v14 = v13;
  if (v13)
  {
    sub_1000CF1C0(v13);

    Dictionary._bridgeToObjectiveC()();
    sub_1000054F4();
  }

  v15 = sub_100012634();
  [v15 v16];

  return v3;
}

uint64_t sub_1000C4334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100046184(&qword_100219128, &qword_10019E278);
  __chkstk_darwin(v7 - 8);
  v9 = &v15[-v8];
  *(a2 + qword_100216C08) = 4;
  sub_10000D684();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    v12 = *(a4 + 16);
    if (v12)
    {
      v13 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
      sub_1000051C0(v9, 1, 1, v13);
      v14 = v12;
      sub_1000DED90(v14, v9, 0, 0, a1, 0, v11);

      return sub_10000B298(v9, &qword_100219128, &qword_10019E278);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000C4490()
{
  v2 = sub_100007CD4();
  v4 = sub_100046184(v2, v3);
  sub_100005490(v4);
  sub_100003760();
  __chkstk_darwin(v5);
  sub_1000068C0();
  Date.init()();
  type metadata accessor for Date();
  sub_10000BB90();
  sub_1000051C0(v6, v7, v8, v9);
  v10 = OBJC_IVAR____TtC7parsecd11ClientState_lastNetworkRequest;
  sub_100005D5C(v0 + OBJC_IVAR____TtC7parsecd11ClientState_lastNetworkRequest, v12);
  sub_1000E0670(v1, v0 + v10, &qword_100217050, &qword_100199180);
  return swift_endAccess();
}

BOOL sub_1000C4558()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 objectForKey:@"download_resources"];

  v2 = v1 == 0;
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    memset(v4, 0, sizeof(v4));
  }

  sub_10000B298(v4, &qword_1002181D0, &qword_100198E00);
  return v2;
}

id sub_1000C4640(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1002140E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000964C(v10, qword_100232B10);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 134349571;
    *(v14 + 4) = a4;
    *(v14 + 12) = 2050;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2117;
    *(v14 + 24) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "queryId:%{public}llu requestId: %{public}llu response: %{sensitive}@", v14, 0x20u);
    sub_10000B298(v15, &unk_100214C70, &qword_10019B4D0);
  }

  v17 = v11;
  sub_100062FBC(a2, a3);
  return v17;
}

uint64_t sub_1000C47D8(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 statusCode];
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    sub_100003898();
    v6 = Data.count.getter();
  }

  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100232B10);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = sub_1000E2170();
  if (os_log_type_enabled(v10, v11))
  {
    sub_10000F554();
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "response statusCode: %ld", v12, 0xCu);
    sub_1000037A4();
  }

  if (v5 != 200 || a3 >> 60 == 15)
  {
    if (v5 == 200)
    {
      v14 = 0;
    }

    else
    {
      v14 = v6;
    }

    sub_1000E1004();
    sub_10001AC40();
    swift_allocError();
    *v15 = v5;
    *(v15 + 8) = v14;
    *(v15 + 16) = v5 == 200;
    swift_willThrow();
  }

  else
  {
    v16 = sub_100003898();
    sub_100062FBC(v16, v17);
    v18 = a1;
  }

  return sub_100008380();
}

uint64_t sub_1000C497C(void *a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  sub_1000E281C();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15[0] = 0;
  v8 = [v3 JSONObjectWithData:isa options:0 error:v15];

  if (!v8)
  {
    v11 = v15[0];
    sub_1000E24A8();
    _convertNSErrorToError(_:)();

LABEL_6:
    swift_willThrow();
    return sub_100003898();
  }

  v9 = v15[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100046184(&qword_100215398, &qword_1001996A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000E1004();
    sub_10001AC40();
    v12 = swift_allocError();
    sub_1000E2D3C(v12, v13);
    goto LABEL_6;
  }

  v10 = a1;
  sub_100014924(a2, a3);
  return sub_100003898();
}

uint64_t sub_1000C4AF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a2;
  type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.StatusCode();
  sub_100003650();
  __chkstk_darwin(v6);
  sub_100003664();
  sub_10000A964();
  v7 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  sub_100003650();
  v76 = v8;
  __chkstk_darwin(v9);
  sub_100003664();
  v12 = (v11 - v10);
  sub_1000C06FC(a5, &v81);
  if (!v82)
  {
    sub_10000B298(&v81, &qword_1002181D0, &qword_100198E00);
    goto LABEL_6;
  }

  sub_100005180(0, &unk_100219310, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_1000E1004();
    sub_10001AC40();
    v14 = swift_allocError();
    sub_1000E2D3C(v14, v15);
    swift_willThrow();
    return sub_100005FBC();
  }

  Apple_Parsec_Search_V2_SearchResponse.init()();
  v13 = [v80 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v19)
  {
    if (sub_10000FE38(v16, v17, v18, &type metadata for String))
    {
      v20 = v78 == 19279 && v79 == 0xE200000000000000;
      if (!v20 && (sub_1000E29A0(19279, 0xE200000000000000) & 1) == 0)
      {
        v66 = v78 == 0x524F525245 && v79 == 0xE500000000000000;
        if (!v66 && (sub_1000E29A0(0x524F525245, 0xE500000000000000) & 1) == 0)
        {
          if (v78 == 0x4C555345525F4F4ELL && v79 == 0xEA00000000005354)
          {
          }

          else
          {
            v68 = sub_1000E29A0(0x4C555345525F4F4ELL, 0xEA00000000005354);

            if ((v68 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v69 = sub_1000E26F8();
          v70(v69);
          Apple_Parsec_Search_V2_SearchResponse.status.setter();
          if (qword_1002140E0 != -1)
          {
            sub_10000435C();
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          sub_10000964C(v71, qword_100232B10);
          v23 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();
          v73 = sub_1000E2170();
          if (os_log_type_enabled(v73, v74))
          {
            sub_1000E2130();
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&_mh_execute_header, v23, v72, "Response status: No results", v75, 2u);
            sub_1000E20B8();
          }

          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    sub_10000B298(&v81, &qword_1002181D0, &qword_100198E00);
  }

LABEL_17:
  v21 = sub_1000E26F8();
  v22(v21);
  v23 = v12;
  Apple_Parsec_Search_V2_SearchResponse.status.setter();
LABEL_18:
  v24 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v25 = sub_1000385D0(v24);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v29)
  {
    if (sub_10000FE38(v26, v27, v28, &type metadata for String))
    {
      v23 = v12;
      Apple_Parsec_Search_V2_SearchResponse.query.setter();
    }
  }

  else
  {
    sub_10000B298(&v81, &qword_1002181D0, &qword_100198E00);
  }

  v30 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v31 = sub_1000385D0(v30);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v35)
  {
    if (sub_10000FE38(v32, v33, v34, &type metadata for Int32))
    {
      v23 = v12;
      Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.setter();
    }
  }

  else
  {
    sub_10000B298(&v81, &qword_1002181D0, &qword_100198E00);
  }

  v36 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v37 = sub_1000385D0(v36);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v41)
  {
    if (sub_10000FE38(v38, v39, v40, &type metadata for String))
    {
      v23 = Data.init(base64Encoded:options:)();
      v43 = v42;

      if (v43 >> 60 != 15)
      {
        sub_1000385F0();
        v23 = v12;
        Apple_Parsec_Search_V2_SearchResponse.feedback.setter();
      }
    }
  }

  else
  {
    sub_10000B298(&v81, &qword_1002181D0, &qword_100198E00);
  }

  sub_1000066DC();
  v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v45 = sub_1000385D0(v44);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v49)
  {
    if (sub_10000FE38(v46, v47, v48, &type metadata for String))
    {
      v23 = v12;
      Apple_Parsec_Search_V2_SearchResponse.partialClientAddress.setter();
    }
  }

  else
  {
    sub_10000B298(&v81, &qword_1002181D0, &qword_100198E00);
  }

  v50 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v51 = sub_1000385D0(v50);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v55)
  {
    if (sub_10000FE38(v52, v53, v54, &type metadata for Int64))
    {
      v23 = v12;
      Apple_Parsec_Search_V2_SearchResponse.millisecondDuration.setter();
    }
  }

  else
  {
    sub_10000B298(&v81, &qword_1002181D0, &qword_100198E00);
  }

  sub_1000066DC();
  v56 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v57 = sub_1000385D0(v56);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v61)
  {
    if (sub_10000FE38(v58, v59, v60, &type metadata for Float))
    {
      Apple_Parsec_Search_V2_SearchResponse.completionScore.setter();
    }
  }

  else
  {

    sub_10000B298(&v81, &qword_1002181D0, &qword_100198E00);
  }

  (*(v76 + 32))(a1, v12, v7);
  v62 = v83;
  v63 = sub_100003898();
  sub_100014924(v63, v64);
  return sub_100005FBC();
}

id sub_1000C5328(char *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v46 = a8;
  v51 = a2;
  v52 = a5;
  v50 = a1;
  v15 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v45 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URLRequest();
  v42 = *(v18 - 8);
  v43 = v18;
  __chkstk_darwin(v18);
  v44 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.StatusCode();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v37 - v25;
  v47 = a6;
  v48 = a7;
  if (String.count.getter() < 1)
  {
    (*(v16 + 16))(v50, v52, v15);
  }

  else
  {
    v40 = v15;
    v41 = a4;
    v49 = a3;
    v27 = v52;
    Apple_Parsec_Search_V2_SearchResponse.status.getter();
    (*(v21 + 104))(v23, enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusError(_:), v20);
    sub_10000BA9C(&qword_100219308, &type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.StatusCode);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29 = *(v21 + 8);
    v29(v23, v20);
    v29(v26, v20);
    if (v28)
    {
      (*(v16 + 16))(v50, v27, v40);
      a4 = v41;
    }

    else
    {
      v38 = a9;
      v39 = a11;
      type metadata accessor for CachedResultSet(0);
      v30 = v44;
      (*(v42 + 16))(v44, v46, v43);
      v31 = *(v16 + 16);
      v32 = v45;
      v33 = v40;
      v31(v45, v27, v40);
      v34 = v48;

      v35 = v49;
      a4 = v41;
      sub_100014924(v49, v41);
      sub_100109364(v47, v34, v30, v32, v38, a10, v35, a4);
      if (*(*(v39 + 64) + 32))
      {

        sub_1000F0CB4();
      }

      v31(v50, v52, v33);
    }

    a3 = v49;
  }

  sub_100014924(a3, a4);
  return v51;
}

id sub_1000C574C(char *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a8;
  v29 = a6;
  v30 = a1;
  v26 = a5;
  v27 = a9;
  v14 = sub_100046184(&qword_100219128, &qword_10019E278);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v18 = *(*(v17 - 8) + 16);
  v18(v16, a5, v17);
  sub_1000051C0(v16, 0, 1, v17);
  v19 = Data.count.getter();
  v20 = a2;
  v21 = [a2 statusCode];
  ObjectType = swift_getObjectType();
  sub_1000DF4E4(a7, v16, v19, v21, v28, v27, v29, ObjectType);
  sub_10000B298(v16, &qword_100219128, &qword_10019E278);
  v18(v30, v26, v17);
  v23 = v20;
  sub_100014924(a3, a4);
  return v23;
}

uint64_t sub_1000C58F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v23 = a1;
  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  if (swift_dynamicCast() && !v22)
  {
    v9 = v20;

    swift_errorRetain();
    goto LABEL_9;
  }

  v23 = v8;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (v22 == 1)
    {

      v9 = 0;
      v8 = v20;
      goto LABEL_9;
    }

    sub_1000BA4F0(v20, v21, 0);
  }

  v8 = _convertErrorToNSError(_:)();
  v9 = 0;
LABEL_9:
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 134218754;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2050;
    *(v12 + 14) = a3;
    *(v12 + 22) = 2050;
    *(v12 + 24) = a4;
    *(v12 + 32) = 2082;
    v23 = v8;
    swift_errorRetain();
    v14 = String.init<A>(describing:)();
    v16 = sub_100009684(v14, v15, &v20);

    *(v12 + 34) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "failed with HTTP status code %ld performing query %{public}llu requestId: %{public}llu error %{public}s", v12, 0x2Au);
    sub_100007378(v13);
  }

  v17 = _convertErrorToNSError(_:)();
  sub_1000C5BC0();

  v20 = v8;
  LOBYTE(v21) = 1;
  sub_100046184(&qword_1002192A8, &qword_10019E320);
  return Just.init(_:)();
}

void sub_1000C5BC0()
{
  sub_100005478();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v48 = v8;
  v49 = v9;
  v11 = v10;
  v13 = v12;
  v14 = sub_100046184(&qword_100219128, &qword_10019E278);
  sub_100005490(v14);
  sub_100003760();
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v18);
  sub_100003760();
  __chkstk_darwin(v19);
  sub_10000A964();
  v20 = type metadata accessor for UserAgent();
  sub_100003650();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100003664();
  sub_1000068C0();
  if (v13)
  {
    v46 = v7;
    v47 = v5;
    v24 = objc_allocWithZone(_CPErrorFeedback);
    v44 = v13;
    v25 = sub_1000892A0(v13);
    v26 = v3;
    v27 = objc_allocWithZone(_CPFeedbackPayload);
    sub_1000E2534();
    swift_unknownObjectRetain();
    v28 = [v7 initWithCodable:v25];
    v45 = v11;
    [v28 setQueryId:v11];
    sub_10000848C();
    sub_10001672C(v29, v30);
    v31 = sub_1000E25C8();
    sub_10000C944(v31, v32, v20);
    if (v33)
    {
      parsecdUserAgent.getter();
      v34 = sub_1000E25C8();
      sub_10000C944(v34, v35, v20);
      if (!v33)
      {
        sub_10000B298(v2, &qword_100217480, &unk_100198F70);
      }
    }

    else
    {
      (*(v22 + 32))(v1, v2, v20);
    }

    sub_100003898();
    sub_100014D74();

    swift_unknownObjectRelease();
    v36 = sub_1000E2804();
    v37(v36);
    type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
    sub_1000E23AC();
    sub_1000051C0(v38, v39, v40, v41);
    v42 = v48;
    ObjectType = swift_getObjectType();
    sub_1000DF4E4(v42, v17, v49, v46, v47, v45, v26, ObjectType);

    sub_10000B298(v17, &qword_100219128, &qword_10019E278);
  }

  sub_100005460();
}

id sub_1000C5E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [objc_allocWithZone(PARReply) init];
  [a5 scale];
  [v9 setScale:?];
  if ([a5 verboseReply])
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    [v9 setHttpRequest:isa];

    [v9 setHttpResponse:a1];
  }

  sub_1000CFCF8(a2, a3, v9);
  return v9;
}

void sub_1000C5F54()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v44 = v4;
  v5 = sub_100046184(&qword_100217B90, &unk_10019E900);
  sub_100005490(v5);
  sub_100003760();
  __chkstk_darwin(v6);
  sub_10000BBD0();
  v41 = v7;
  sub_1000058D8();
  type metadata accessor for Trialpb_TrialExperiment();
  sub_100003650();
  v42 = v9;
  v43 = v8;
  __chkstk_darwin(v8);
  sub_100004370();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = sub_10000F830();
  sub_1000BBE98(v10, v12);

  v14 = sub_1000E2614();
  v13(v14);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = sub_10000F830();
  sub_1000BBE98(v15, v17);

  v19 = sub_1000E2614();
  v18(v19);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = sub_10000F830();
  sub_1000BBE98(v20, v22);

  v24 = sub_1000E2614();
  v23(v24);
  if (v3 && v1)
  {
    v25 = v3;
    if ([v25 sessionExperimentMetadataEnabled] && (sub_1000CFB78(v44, &selRef_clientShortName), v26))
    {
      sub_100066648(v1, v41);

      v27 = sub_10000F268();
      sub_10000C944(v27, v28, v43);
      if (v29)
      {

        sub_10000B298(v41, &qword_100217B90, &unk_10019E900);
      }

      else
      {
        (*(v42 + 32))();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000E2D30();
        v45 = v25;
        Trialpb_TrialExperiment.treatmentID.getter();
        v30 = sub_10000F830();
        v32 = v31;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1000E2740(*v32);
        *v32 = v46;

        v33 = sub_1000E2614();
        v30(v33);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000E2D30();
        Trialpb_TrialExperiment.experimentID.getter();
        sub_10000F830();
        sub_1000E2CC0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1000E2740(&__CFConstantStringClassReference);
        @"X-Apple-Trial-Experiment-Id".isa = v46;

        v34 = sub_1000E2614();
        v30(v34);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000E2D30();
        Trialpb_TrialExperiment.experimentNamespace.getter();
        sub_1000E2C54();
        v35 = sub_10000F830();
        v37 = v36;
        swift_isUniquelyReferenced_nonNull_native();
        v47 = *v37;
        sub_100006B0C();
        sub_1000BD710();
        *v37 = v47;

        v38 = sub_1000E2614();
        v35(v38);

        v39 = sub_1000E2478();
        v40(v39);
      }
    }

    else
    {
    }
  }

  sub_100005460();
}

void sub_1000C6338(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(_CPSkipSearchFeedback);

  v9 = sub_1000CEF48(4, a2, a3);
  swift_unknownObjectRetain();
  v7 = [a1 queryId];
  v8 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v9];
  [v8 setQueryId:v7];
  sub_100014D74();
  swift_unknownObjectRelease();

  sub_1000E28B8(qword_100216C08);
}

void sub_1000C6448(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (**a8)(void, void, void, void))
{
  v92 = a6;
  v94 = a4;
  v93 = a3;
  v103 = a2;
  v106 = a1;
  v114 = type metadata accessor for URLRequest();
  v105 = *(v114 - 8);
  __chkstk_darwin(v114);
  v104 = v11;
  v112 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  __chkstk_darwin(v12 - 8);
  v113 = &v81 - v13;
  v96 = type metadata accessor for SessionTokens(0);
  __chkstk_darwin(v96);
  v115 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest();
  v111 = *(v119 - 8);
  __chkstk_darwin(v119);
  v108 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v15;
  __chkstk_darwin(v16);
  v110 = &v81 - v17;
  v18 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v109 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for UserAgent();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v21;
  v89 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for NetworkFeedbackGenerator();
  v102 = *(v118 - 8);
  __chkstk_darwin(v118);
  v107 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v22;
  __chkstk_darwin(v23);
  v117 = &v81 - v24;
  v25 = type metadata accessor for PegasusContext(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v100 = *(Context - 8);
  v101 = Context;
  __chkstk_darwin(Context);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v116 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100046184(&qword_1002192E0, &unk_10019BE40);
  __chkstk_darwin(v32 - 8);
  v34 = &v81 - v33;
  v35 = swift_allocObject();
  *(v35 + 16) = a8;
  v36 = a7;
  v37 = *(a7 + OBJC_IVAR____TtC7parsecd11ClientState_safariSearchProxy);
  if (v37)
  {
    v83 = v35;
    v84 = v19;
    v85 = v18;
    v86 = a5;
    v87 = a8;
    _Block_copy(a8);

    v38 = v106;
    sub_100092740(v38, v34);
    [v38 triggerEvent];
    sub_1000CFB78(v38, &selRef_previouslyEngagedQuery);
    v106 = v34;
    v39 = v37;
    dispatch thunk of PegasusProxyForSafariSearch.createSafariQueryContext(previousQuery:suggestQuery:localCompletions:)();
    v40 = v36;

    v41 = v93;
    sub_100017190(v27);
    sub_1000F5048(1, v41, v94, v30);
    sub_10001C254(v27);
    [v38 scale];
    Apple_Parsec_Search_PegasusQueryContext.uiScale.setter();
    sub_1000CFB78(v38, &selRef_keyboardInputMode);
    Apple_Parsec_Search_PegasusQueryContext.keyboardIme.setter();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = v90;
    v44 = v89;
    v45 = v91;
    (*(v90 + 16))(v89, v92, v91);
    v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v38;
    *(v47 + 24) = v42;
    (*(v43 + 32))(v47 + v46, v44, v45);
    v48 = v38;
    NetworkFeedbackGenerator.init(isBodyDataRedacted:consumer:)();
    v49 = [v48 queryCommand];
    v50 = v30;
    if (v49)
    {
      v51 = v49;
      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (v52)
      {
        v53 = &selRef_tokenString;
LABEL_10:
        v54 = sub_1000CFB78(v52, v53);
        v56 = v55;

        if (v56)
        {
          v57 = v54;
        }

        else
        {
          v57 = 0;
        }

        if (!v56)
        {
          v56 = 0xE000000000000000;
        }

        goto LABEL_18;
      }

      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (v52)
      {
        v53 = &selRef_searchString;
        goto LABEL_10;
      }
    }

    v58 = [v48 queryString];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v59;

LABEL_18:
    v93 = v57;
    v94 = v56;
    Apple_Parsec_Search_PegasusSearchQuery.init()();

    Apple_Parsec_Search_PegasusSearchQuery.query.setter();
    v60 = v110;
    v82 = v39;
    dispatch thunk of PegasusProxyForSafariSearch.createRequest(_:context:safariContext:)();
    swift_unknownObjectRetain();
    sub_1000E75A0();
    swift_unknownObjectRelease();
    v61 = sub_10000BB00(&OBJC_IVAR____TtC7parsecd11ClientState__bag, sub_10000BB3C);
    sub_1000C5F54();

    v62 = v113;
    static TaskPriority.userInitiated.getter();
    v63 = type metadata accessor for TaskPriority();
    sub_1000051C0(v62, 0, 1, v63);
    v64 = v48;
    v92 = v48;
    v65 = v111;
    (*(v111 + 16))(v108, v60, v119);
    v66 = v102;
    (*(v102 + 16))(v107, v117, v118);
    v67 = v105;
    (*(v105 + 16))(v112, v103, v114);
    v68 = (*(v65 + 80) + 64) & ~*(v65 + 80);
    v69 = (v98 + *(v66 + 80) + v68) & ~*(v66 + 80);
    v70 = (v95 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = v40;
    v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = *(v67 + 80);
    v103 = v50;
    v73 = (v72 + v71 + 16) & ~v72;
    v104 = (v104 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 2) = 0;
    *(v74 + 3) = 0;
    v75 = v93;
    *(v74 + 4) = v64;
    *(v74 + 5) = v75;
    v76 = v82;
    *(v74 + 6) = v94;
    *(v74 + 7) = v76;
    (*(v65 + 32))(&v74[v68], v108, v119);
    (*(v66 + 32))(&v74[v69], v107, v118);
    *&v74[v70] = v86;
    v77 = &v74[v71];
    v78 = v83;
    *v77 = sub_1000E1FD4;
    v77[1] = v78;
    (*(v67 + 32))(&v74[v73], v112, v114);
    *&v74[v104] = v98;

    v79 = v92;

    v80 = v113;
    sub_1000FE178(0, 0, v113, &unk_10019E338, v74);

    sub_10000B298(v80, &unk_10021A820, &qword_1001992D0);
    (*(v111 + 8))(v110, v119);
    (*(v84 + 8))(v109, v85);
    (*(v66 + 8))(v117, v118);
    (*(v100 + 8))(v103, v101);
    (*(v97 + 8))(v116, v99);
    sub_10000B298(v106, &qword_1002192E0, &unk_10019BE40);
    sub_10001C254(v115);

    _Block_release(v87);
    return;
  }

  _Block_copy(a8);
  (a8)[2](a8, [v106 queryId], 0, 0);
  *(a5 + qword_100216C08) = 42;
  sub_10000D684();

  _Block_release(a8);
}

uint64_t sub_1000C7160()
{
  [v0 nwActivityLabel];
  v1 = nw_activity_create();
  if ([v0 nwActivity])
  {
    sub_1000041F8();
    nw_activity_set_parent_activity();
    swift_unknownObjectRelease();
  }

  nw_activity_activate();
  return v1;
}

uint64_t sub_1000C71D8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

uint64_t sub_1000C721C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t sub_1000C7264@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

uint64_t sub_1000C72AC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, char *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = sub_100046184(&qword_100219240, &unk_10019E310);
  result = a2(&a3[*(v10 + 64)], v6, v7, v8, v9);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 1) = v12;
    *(a3 + 2) = v13;
  }

  return result;
}

uint64_t sub_1000C733C@<X0>(char *a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, char *)@<X1>, char *a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = sub_100046184(&qword_100219240, &unk_10019E310);
  result = a2(&a3[*(v10 + 64)], v7, v8, v9, &a1[*(v10 + 64)]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 1) = v12;
    *(a3 + 2) = v13;
  }

  return result;
}

uint64_t sub_1000C73D0@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = sub_100046184(&qword_100219240, &unk_10019E310);
  result = a2(v7, v8, v9, &a1[*(v10 + 64)]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v12 & 1;
  }

  return result;
}

id sub_1000C7464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a2 = v2;
    *(a2 + 8) = 0;
    return v2;
  }
}

uint64_t sub_1000C74E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndpointType();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchType();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100046184(&qword_100219300, &qword_10019E340);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100046184(&unk_1002191A0, &unk_10019A830);
  __chkstk_darwin(v18 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v44 - v23;
  v52 = a2;
  [a2 queryId];
  Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter();
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v25 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  if (sub_100008D0C(v24, 1, v25) != 1)
  {
    v44 = a4;
    sub_10000EFEC(v24, v20, &unk_1002191A0, &unk_10019A830);
    v26 = *(v25 - 8);
    v27 = (*(v26 + 88))(v20, v25);
    if (v27 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.startNetworkSearchFeedback(_:))
    {
      result = [v52 triggerEvent];
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.init(rawValue:)();
      if (sub_100008D0C(v13, 1, v14) == 1)
      {
        (*(v15 + 104))(v17, enum case for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.unknown(_:), v14);
        if (sub_100008D0C(v13, 1, v14) != 1)
        {
          sub_10000B298(v13, &qword_100219300, &qword_10019E340);
        }
      }

      else
      {
        (*(v15 + 32))(v17, v13, v14);
      }

      v30 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.triggerEvent.setter();
      v30(v53, 0);
      v31 = v52;
      v32 = [v52 triggerEvent];
      v33 = &enum case for Apple_Parsec_Feedback_V2_SearchType.committed(_:);
      if (v32 != 23)
      {
        v33 = &enum case for Apple_Parsec_Feedback_V2_SearchType.asYouType(_:);
      }

      (*(v46 + 104))(v45, *v33, v47);
      v34 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter();
      v34(v53, 0);
      v35 = [v31 queryString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.input.setter();
      v36(v53, 0);
      (*(v48 + 104))(v50, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v49);
      v37 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter();
      v37(v53, 0);
    }

    else if (v27 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.endNetworkSearchFeedback(_:))
    {
      (*(v48 + 104))(v50, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v49);
      v29 = Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter();
      v29(v53, 0);
    }

    (*(v26 + 8))(v20, v25);
  }

  sub_10000B298(v24, &unk_1002191A0, &unk_10019A830);
  v38 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  sub_10000BA9C(&qword_100215358, &type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  v39 = Message.serializedData(partial:)();
  v41 = v40;
  (*(*(v38 - 8) + 8))(a1, v38);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v42 = objc_allocWithZone(_CPFeedbackPayload);
    swift_unknownObjectRetain();
    sub_100014924(v39, v41);
    v43 = sub_1000149C0(v39, v41);
    sub_100014D74();

    swift_unknownObjectRelease();
  }

  return sub_100014A40(v39, v41);
}

uint64_t sub_1000C7C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v18;
  *(v8 + 144) = v19;
  *(v8 + 120) = v17;
  *(v8 + 104) = v16;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = type metadata accessor for BinaryEncodingError();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v10 = type metadata accessor for Apple_Parsec_Search_StatusCode();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  v12 = type metadata accessor for URLRequest();
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 - 8);
  *(v8 + 248) = swift_task_alloc();
  v13 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1000C7E9C, 0, 0);
}

uint64_t sub_1000C7E9C()
{
  sub_1000E2870();
  if (qword_100214058 != -1)
  {
    sub_10000670C(&qword_100214058);
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  sub_100006674(v2, qword_100232978);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = sub_10001BCD4();
    sub_100007B80();
    *v7 = 134349315;
    *(v7 + 4) = [v6 queryId];

    *(v7 + 12) = 2085;
    v8 = sub_100008380();
    *(v7 + 14) = sub_100009684(v8, v9, v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "performing safari search over gRPC qid: %{public}llu query: %{sensitive}s", v7, 0x16u);
    sub_1000E2DFC();
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {
  }

  *(v0 + 40) = type metadata accessor for NetworkFeedbackGenerator();
  *(v0 + 48) = &protocol witness table for NetworkFeedbackGenerator;
  sub_1000205C4((v0 + 16));
  sub_10000690C();
  (*(v11 + 16))();
  sub_1000E22D8(&async function pointer to dispatch thunk of PegasusProxyForSafariSearch.send(_:observer:));
  v18 = v12;
  swift_task_alloc();
  sub_1000E2608();
  *(v0 + 288) = v13;
  *v13 = v14;
  v13[1] = sub_1000C80B8;
  v15 = *(v0 + 280);
  v16 = *(v0 + 96);

  return v18(v15, v16, v0 + 16);
}

uint64_t sub_1000C80B8()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  sub_1000E2708();
  *v4 = v3;
  v5 = *v1;
  sub_100005898();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (!v0)
  {
    sub_10000B298(v3 + 16, &qword_100219160, &qword_10019E298);
  }

  sub_1000E21E8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C81C8()
{
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = [objc_allocWithZone(PARReply) init];
  sub_10000BA9C(&qword_1002192F0, &type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse);
  sub_1000E27F8();
  v8 = Message.serializedData(partial:)();
  if (v4)
  {
    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));

    sub_1000E2D6C();
    v10 = sub_100046184(&qword_100216900, &unk_10019AE20);
    if (sub_1000E28E8(v10))
    {
      v11 = *(v0 + 168);
      v12 = *(v0 + 176);
      sub_1000E2C14();

      v13 = sub_1000E2460();
      v14(v13, v12, v6);
      *(v5 + qword_100216C08) = 18;
      sub_10000D684();
      [v1 queryId];
      sub_10000DC38();
      sub_10000BA9C(v15, v16);
      sub_10001AC40();
      v17 = swift_allocError();
      sub_1000E2230();
      sub_1000E25B0();
      v18();
      sub_10001343C(v17);

      sub_1000E2858();
      v3();

      (*(v2 + 8))(v11, v6);
    }

    else
    {
      v34 = *(v0 + 120);
      v35 = *(v0 + 112);
      v36 = *(v0 + 64);

      *(v35 + qword_100216C08) = 48;
      sub_10000D684();
      [v36 queryId];
      sub_1000054F4();
      swift_errorRetain();
      sub_10001343C(v4);
      sub_1000E2864();

      sub_1000E2C28();
      v34();
    }
  }

  else
  {
    v19 = v8;
    v20 = v9;
    v21 = sub_1000235CC(v8, v9);
    v68 = *(v0 + 280);
    if (v21)
    {
      v23 = *(v0 + 192);
      v22 = *(v0 + 200);
      v24 = *(v0 + 184);
      v63 = *(v0 + 120);
      v25 = *(v0 + 64);
      *(*(v0 + 112) + qword_100216C08) = 20;
      sub_10000D684();
      v62 = [v25 queryId];
      Apple_Parsec_Safari_V1alpha_SafariSearchResponse.status.getter();
      v26 = Apple_Parsec_Search_StatusCode.rawValue.getter();
      (*(v23 + 8))(v22, v24);
      sub_1000E1004();
      sub_10001AC40();
      v27 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = 0;
      *(v28 + 16) = 1;
      v29 = sub_10001343C(v27);

      v63(v62, 0, v29);

      v30 = sub_100008380();
      sub_100014A40(v30, v31);
      v32 = sub_1000E2478();
      v33(v32);
    }

    else
    {
      v37 = *(v0 + 264);
      v38 = *(v0 + 248);
      v60 = *(v0 + 272);
      v61 = *(v0 + 256);
      v39 = *(v0 + 240);
      v40 = *(v0 + 216);
      v41 = *(v0 + 224);
      v64 = *(v0 + 208);
      v42 = *(v0 + 136);
      v58 = *(v0 + 232);
      v59 = *(v0 + 80);
      v65 = *(v0 + 72);
      v66 = *(v0 + 144);
      v43 = sub_100008380();
      sub_1000CFCF8(v43, v44, v7);
      type metadata accessor for CachedResultSet(0);
      (*(v39 + 16))(v38, v42, v58);
      (*(v37 + 16))(v60, v68, v61);

      UUID.init()();
      v45 = UUID.uuidString.getter();
      v47 = v46;
      (*(v40 + 8))(v41, v64);
      v48 = sub_100008380();
      sub_100014924(v48, v49);
      sub_1001093AC(v65, v59, v38, v60, v45, v47, v19, v20);
      if (*(*(v66 + 64) + 32))
      {

        sub_1000F0CB4();
      }

      v50 = *(v0 + 264);
      v67 = *(v0 + 256);
      v69 = *(v0 + 280);
      v51 = *(v0 + 120);
      v52 = *(v0 + 112);
      [*(v0 + 64) queryId];
      v53 = v7;
      sub_1000E2158();
      v51();

      *(v52 + qword_100216C08) = 2;
      sub_10000D684();

      v54 = sub_100008380();
      sub_100014A40(v54, v55);
      (*(v50 + 8))(v69, v67);
    }
  }

  sub_1000E2964();

  sub_1000098BC();

  return v56();
}

uint64_t sub_1000C8728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000E2D50();
  sub_1000E2870();
  sub_10000B298((v13 + 2), &qword_100219160, &qword_10019E298);
  v17 = v13[37];
  sub_1000E2A3C();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  sub_100007CC8();
  if (swift_dynamicCast())
  {
    v18 = v13[21];
    v19 = v13[22];
    sub_1000E2C14();

    sub_1000E2888();
    v20(v18, v19, v14);
    *(v12 + qword_100216C08) = 18;
    sub_10000D684();
    [v15 queryId];
    sub_10000DC38();
    sub_10000BA9C(v21, v22);
    sub_10001AC40();
    v23 = swift_allocError();
    sub_1000E2230();
    sub_10000BA3C();
    v24();
    sub_10001343C(v23);

    sub_1000E2858();
    v16();

    v25 = sub_10000F520();
    v26(v25);
  }

  else
  {
    v27 = v13[15];
    v28 = v13[14];
    v29 = v13[8];

    *(v28 + qword_100216C08) = 48;
    sub_10000D684();
    [v29 queryId];
    sub_10000835C();
    swift_errorRetain();
    sub_10001343C(v17);
    sub_1000E2534();

    sub_1000E2C28();
    v27();
  }

  sub_1000E2964();

  sub_1000098BC();
  sub_1000E27AC();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1000C8960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1000C21A4(*a1, *(a1 + 8), a5);
  sub_10000D684();
  v5 = sub_100005854();
  return sub_1000CAC14(v5);
}

uint64_t sub_1000C89B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v41 = a5;
  v39 = a3;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EndpointType();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchType();
  v38 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100046184(&unk_1002191A0, &unk_10019A830);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v35 - v19;
  [a2 queryId];
  Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter();
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v21 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  if (sub_100008D0C(v20, 1, v21) != 1)
  {
    v35 = v8;
    v36 = v10;
    sub_10000EFEC(v20, v16, &unk_1002191A0, &unk_10019A830);
    v22 = *(v21 - 8);
    v23 = (*(v22 + 88))(v16, v21);
    if (v23 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.startNetworkSearchFeedback(_:))
    {

      v24 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.input.setter();
      v24(v42, 0);
      (*(v38 + 104))(v13, enum case for Apple_Parsec_Feedback_V2_SearchType.committed(_:), v11);
      v25 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter();
      v25(v42, 0);
      (*(v40 + 104))(v36, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecCard(_:), v35);
      v26 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter();
      v26(v42, 0);
    }

    else if (v23 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.endNetworkSearchFeedback(_:))
    {
      (*(v40 + 104))(v36, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecCard(_:), v35);
      v27 = Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter();
      v27(v42, 0);
    }

    (*(v22 + 8))(v16, v21);
  }

  sub_10000B298(v20, &unk_1002191A0, &unk_10019A830);
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  sub_10000BA9C(&qword_100215358, &type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  v29 = Message.serializedData(partial:)();
  v31 = v30;
  (*(*(v28 - 8) + 8))(a1, v28);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v32 = objc_allocWithZone(_CPFeedbackPayload);
    swift_unknownObjectRetain();
    sub_100014924(v29, v31);
    v33 = sub_1000149C0(v29, v31);
    sub_100014D74();

    swift_unknownObjectRelease();
  }

  return sub_100014A40(v29, v31);
}

void sub_1000C8F10(_BYTE *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if ((*a1 & 1) == 0)
  {
    *(a2 + qword_100216C08) = 24;
    if (qword_100214060 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000964C(v9, qword_100232990);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315138;
      v14 = String.init<A>(describing:)();
      v16 = a3;
      v17 = sub_100009684(v14, v15, v19);

      *(v12 + 4) = v17;
      a3 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Engagement Search: publisher failure, error: %s. Returning an empty response", v12, 0xCu);
      sub_100007378(v13);
    }

    a3([a5 queryId], 0, 0);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100099FA4(a7);
    swift_unknownObjectRelease();
  }

  sub_10000D684();
}

void sub_1000C910C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void (*a6)(id, id, uint64_t), uint64_t a7, void *a8)
{
  v37 = a6;
  v38 = a8;
  v36 = a7;
  v35 = a5;
  v39 = a4;
  v40 = a2;
  v41 = a3;
  v9 = type metadata accessor for PegasusProxyForEngagement.Error();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100046184(&qword_100219180, &qword_10019E2B0);
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  sub_10000EFEC(a1, &v33 - v17, &qword_100219180, &qword_10019E2B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v34;
    (*(v34 + 32))(v11, v18, v9);
    v20 = v38;
    *(v39 + qword_100216C08) = 48;
    v21 = [v20 queryId];
    sub_10000BA9C(&qword_100219188, &type metadata accessor for PegasusProxyForEngagement.Error);
    v22 = swift_allocError();
    (*(v19 + 16))(v23, v11, v9);
    v24 = sub_10001343C(v22);

    v37(v21, 0, v24);

    (*(v19 + 8))(v11, v9);
  }

  else
  {
    v25 = v37;
    v34 = v13;
    (*(v13 + 32))(v15, v18, v12);
    *(v39 + qword_100216C08) = 2;
    v26 = [objc_allocWithZone(PARReply) init];
    sub_10000BA9C(&unk_100219190, &type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse);
    v27 = Message.serializedData(partial:)();
    v29 = v28;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100014A40(v27, v29);
    [v26 setData:isa];

    [v26 setReplyType:v35];
    v31 = [v38 queryId];
    v32 = v26;
    v25(v31, v26, 0);

    (*(v34 + 8))(v15, v12);
  }

  sub_1000CC4C8(v40, v41);
}

uint64_t sub_1000C9544(void *a1, uint64_t a2, void *a3)
{
  result = sub_1000C497C(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1000C9570(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000C4AF8(a1, a2, a3, a4, a5);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1000C95EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v55 = a5;
  v50 = a3;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupSelectionType();
  __chkstk_darwin(v8 - 8);
  v51 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EndpointType();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchType();
  v47 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100046184(&unk_1002191A0, &unk_10019A830);
  __chkstk_darwin(v18 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v43 - v23;
  [a2 queryId];
  Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter();
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v25 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  if (sub_100008D0C(v24, 1, v25) != 1)
  {
    sub_10000EFEC(v24, v20, &unk_1002191A0, &unk_10019A830);
    v26 = *(v25 - 8);
    v27 = (*(v26 + 88))(v20, v25);
    if (v27 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.startNetworkSearchFeedback(_:))
    {

      v45 = v26;
      v28 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      v44 = a2;
      v29 = v28;
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.input.setter();
      v29(v56, 0);
      (*(v47 + 104))(v17, enum case for Apple_Parsec_Feedback_V2_SearchType.committed(_:), v15);
      v30 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter();
      v30(v56, 0);
      (*(v48 + 104))(v14, enum case for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.lookup(_:), v49);
      v31 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.triggerEvent.setter();
      v31(v56, 0);
      (*(v52 + 104))(v54, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v53);
      v32 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter();
      v32(v56, 0);
      v33 = [v44 lookupSelectionType];
      sub_100066F1C(v33, v51);
      v34 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.lookupSelectionType.setter();
      v26 = v45;
      v34(v56, 0);
    }

    else if (v27 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.endNetworkSearchFeedback(_:))
    {
      (*(v52 + 104))(v54, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v53);
      v35 = Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter();
      v35(v56, 0);
    }

    (*(v26 + 8))(v20, v25);
  }

  sub_10000B298(v24, &unk_1002191A0, &unk_10019A830);
  v36 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  sub_10000BA9C(&qword_100215358, &type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  v37 = Message.serializedData(partial:)();
  v39 = v38;
  (*(*(v36 - 8) + 8))(a1, v36);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v40 = objc_allocWithZone(_CPFeedbackPayload);
    swift_unknownObjectRetain();
    sub_100014924(v37, v39);
    v41 = sub_1000149C0(v37, v39);
    sub_100014D74();

    swift_unknownObjectRelease();
  }

  return sub_100014A40(v37, v39);
}

uint64_t sub_1000C9CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v19;
  *(v8 + 144) = v20;
  *(v8 + 120) = v18;
  *(v8 + 104) = v17;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = type metadata accessor for BinaryEncodingError();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v10 = type metadata accessor for Apple_Parsec_Search_StatusCode();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  v12 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest();
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 - 8);
  *(v8 + 248) = swift_task_alloc();
  v13 = type metadata accessor for JSONEncodingOptions();
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  type metadata accessor for PegasusContext(0);
  *(v8 + 280) = swift_task_alloc();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  *(v8 + 288) = Context;
  *(v8 + 296) = *(Context - 8);
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1000C9FA8, 0, 0);
}

void sub_1000C9FA8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_100017190(v2);
  sub_1000F5048(0x17, v4, v5, v1);
  sub_100005FA4();
  sub_10001C254(v2);
  JSONEncodingOptions.init()();
  sub_10000BA9C(&qword_1002181F8, &type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  v6 = Message.jsonString(options:)();
  (*(v3 + 8))(*(v0 + 272), *(v0 + 256));
  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    swift_once();
  }

  v7 = *(v0 + 80);
  v8 = type metadata accessor for Logger();
  sub_100006674(v8, qword_100232B10);
  v9 = v7;

  v10 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_1000E2AB4())
  {
    v28 = *(v0 + 104);
    v11 = *(v0 + 80);
    v12 = sub_1000E2648();
    sub_100018FF4();
    *v12 = 134349827;
    *(v12 + 4) = [v11 queryId];

    *(v12 + 12) = 2085;
    v13 = sub_100008A40();
    *(v12 + 14) = sub_100009684(v13, v14, v15);
    *(v12 + 22) = 2085;
    v16 = sub_100096024();
    sub_100009684(v16, v17, v18);
    sub_1000E2534();

    *(v12 + 24) = v6;
    *(v12 + 32) = 2050;
    *(v12 + 34) = v28;
    sub_1000E21AC();
    _os_log_impl(v19, v20, v21, v22, v12, 0x2Au);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000E20B8();
  }

  else
  {
  }

  dispatch thunk of PegasusProxyForLookupSearch.createRequest(_:context:)();
  *(v0 + 40) = type metadata accessor for NetworkFeedbackGenerator();
  *(v0 + 48) = &protocol witness table for NetworkFeedbackGenerator;
  sub_1000205C4((v0 + 16));
  sub_10000690C();
  (*(v23 + 16))();
  sub_1000E22D8(&async function pointer to dispatch thunk of PegasusProxyForLookupSearch.send(_:observer:));
  swift_task_alloc();
  sub_1000E2608();
  *(v0 + 312) = v24;
  *v24 = v25;
  v24[1] = sub_1000CA2FC;
  sub_1000E2790();

  __asm { BR              X3 }
}

uint64_t sub_1000CA2FC()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  sub_1000E2708();
  *v4 = v3;
  v5 = *v1;
  sub_100005898();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (!v0)
  {
    sub_10000B298(v3 + 16, &qword_100219160, &qword_10019E298);
  }

  sub_1000E21E8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CA40C()
{
  v1 = v0[40];
  v2 = [objc_allocWithZone(PARReply) init];
  sub_10000BA9C(&qword_100219330, &type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse);
  sub_1000E27F8();
  v3 = Message.serializedData(partial:)();
  if (v1)
  {
    v5 = v0[37];
    v60 = v0[38];
    v6 = v0[36];
    v7 = v0[30];
    v8 = v2;
    v10 = v0[28];
    v9 = v0[29];
    v11 = v0[26];

    v12 = sub_1000E2318();
    v13(v12);
    v14 = v7 + 8;
    v15 = sub_100005CC0();
    v16(v15);
    v18 = *(v5 + 8);
    v17 = v5 + 8;
    v18(v60, v6);
    sub_1000E2D6C();
    v19 = sub_100046184(&qword_100216900, &unk_10019AE20);
    if (sub_1000E28E8(v19))
    {
      v20 = v0[21];
      v21 = v0[22];
      sub_100037BE0();

      v22 = sub_1000E2460();
      v23(v22, v21, v14);
      *(v17 + qword_100216C08) = 18;
      [v9 queryId];
      sub_10000DC38();
      sub_10000BA9C(v24, v25);
      sub_10001AC40();
      v26 = swift_allocError();
      sub_1000E2BA0(v26, v27);
      sub_1000E25B0();
      v28();
      sub_10001343C(v21);
      sub_1000E227C();

      sub_1000E2858();
      v11();

      (*(v10 + 8))(v20, v14);
    }

    else
    {
      v42 = v0[17];
      v43 = v0[10];

      sub_1000E2BD8(qword_100216C08);
      [v43 queryId];
      sub_1000E24B4();
      swift_errorRetain();
      sub_10001343C(v1);
      sub_1000E2864();

      sub_1000E2C28();
      v42();
    }
  }

  else
  {
    v29 = sub_1000235CC(v3, v4);
    v30 = v0[37];
    v59 = v0[36];
    v61 = v0[38];
    v31 = v0[30];
    v57 = v0[29];
    v58 = v0[31];
    v32 = v0[27];
    v55 = v0[28];
    v56 = v0[26];
    if (v29)
    {
      v33 = v0[10];
      *(v0[16] + qword_100216C08) = 20;
      [v33 queryId];
      Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.status.getter();
      v34 = Apple_Parsec_Search_StatusCode.rawValue.getter();
      v35 = sub_100005CC0();
      v36(v35);
      sub_1000E1004();
      sub_10001AC40();
      v37 = swift_allocError();
      *v38 = v34;
      *(v38 + 8) = 0;
      *(v38 + 16) = 1;
      sub_10001343C(v37);
      sub_1000E227C();

      sub_1000E2858();
      v39();
      v40 = sub_100008A40();
      sub_100014A40(v40, v41);
    }

    else
    {
      v54 = v0[17];
      v44 = v0[16];
      v45 = v0[10];
      v46 = sub_100008A40();
      sub_1000CFCF8(v46, v47, v2);
      [v45 queryId];
      v48 = v2;
      v49 = sub_1000E227C();
      v54(v49);

      *(v44 + qword_100216C08) = 2;
      sub_10000D684();
      v50 = sub_100008A40();
      sub_100014A40(v50, v51);
    }

    (*(v32 + 8))(v55, v56);
    (*(v31 + 8))(v58, v57);
    (*(v30 + 8))(v61, v59);
  }

  sub_1000E2768();

  sub_1000098BC();

  return v52();
}

uint64_t sub_1000CA89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000E2D50();
  sub_1000E2870();
  (*(v12[30] + 8))(v12[31], v12[29]);
  v16 = sub_10000672C();
  v17(v16);
  sub_10000B298((v12 + 2), &qword_100219160, &qword_10019E298);
  v18 = v12[40];
  sub_1000E2A3C();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  sub_100007CC8();
  if (swift_dynamicCast())
  {
    v19 = v12[22];
    sub_100037BE0();

    v20 = sub_1000E2C9C();
    v21(v20);
    *(v15 + qword_100216C08) = 18;
    [v13 queryId];
    sub_10000DC38();
    sub_10000BA9C(v22, v23);
    sub_10001AC40();
    v24 = swift_allocError();
    sub_1000E2BA0(v24, v25);
    sub_10000BA3C();
    v26();
    sub_10001343C(v19);
    sub_1000E227C();

    sub_1000E2858();
    v14();

    v27 = sub_10000F520();
    v28(v27);
  }

  else
  {
    v29 = v12[17];
    v30 = v12[10];

    sub_1000E2BD8(qword_100216C08);
    [v30 queryId];
    swift_errorRetain();
    sub_10001343C(v18);
    sub_1000E2534();

    sub_1000E2C28();
    v29();
  }

  sub_1000E2768();

  sub_1000098BC();
  sub_1000E27AC();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_1000CAAF8(void *a1, uint64_t a2, unint64_t a3)
{
  result = sub_1000C47D8(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

id sub_1000CAB20(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  sub_100014924(a3, a4);
  Apple_Parsec_Search_V2_SearchResponse.init()();
  return v6;
}

uint64_t sub_1000CAB88@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, char *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_100046184(&qword_100219240, &unk_10019E310);
  result = a2(&a3[*(v9 + 64)], v6, v7, v8);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 1) = v11;
    *(a3 + 2) = v12;
  }

  return result;
}

uint64_t sub_1000CAC14(uint64_t a1)
{
  sub_100004384();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = sub_10000835C();
    sub_100099FA4(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000CAC6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC7parsecd11ClientState_zkwProxy;
  v5 = *(a1 + OBJC_IVAR____TtC7parsecd11ClientState_zkwProxy);
  if (v5 || (sub_1000C35CC(), (v5 = *(a1 + v4)) != 0))
  {
    *a2 = v5;
  }

  else
  {
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000964C(v6, qword_100232A08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing zkw proxy, bailing", v9, 2u);
    }

    *a2 = 0;
  }
}

uint64_t sub_1000CAD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100046184(&qword_100219340, &qword_10019E360);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_18;
  }

  sub_10008461C(&v28);
  swift_unknownObjectRelease();
  if (!*(&v29 + 1))
  {
LABEL_18:
    sub_10000B298(&v28, &qword_100219370, &qword_10019BA90);
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000964C(v23, qword_100232A08);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Topic results cache is disabled", v26, 2u);
    }

    v27 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
    return sub_1000051C0(a2, 1, 1, v27);
  }

  sub_100008C84(&v28, v31);
  v7 = sub_10000D57C(a1);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = v7;
  *&v28 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      v14 = [v12 topic];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v11);
    v8 = v28;
LABEL_11:
    v15 = sub_100007534(v31, v31[3]);
    if (v8 >> 62)
    {
      sub_100005180(0, &qword_100219380, SFTopic_ptr);

      v16 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100005180(0, &qword_100219380, SFTopic_ptr);
      v16 = v8;
    }

    v17 = *v15;
    v18 = *(v17[2] + 16);

    os_unfair_lock_lock(v18);
    sub_1000A6118(v17, v16, &v28);
    os_unfair_lock_unlock(v18);
    swift_bridgeObjectRelease_n();

    if (v28)
    {
      sub_1000C1968(a1, v28, v6);

      v19 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
      if (sub_100008D0C(v6, 1, v19) != 1)
      {
        (*(*(v19 - 8) + 32))(a2, v6, v19);
        v21 = a2;
        v22 = 0;
        v20 = v19;
        goto LABEL_24;
      }

      sub_10000B298(v6, &qword_100219340, &qword_10019E360);
    }

    v20 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
    v21 = a2;
    v22 = 1;
LABEL_24:
    sub_1000051C0(v21, v22, 1, v20);
    return sub_100007378(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CB1B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35[2] = a4;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndpointType();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100046184(&unk_1002191A0, &unk_10019A830);
  __chkstk_darwin(v14 - 8);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v35 - v19;
  [a2 queryId];
  Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter();
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v21 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  if (sub_100008D0C(v20, 1, v21) != 1)
  {
    v35[1] = a3;
    sub_10000EFEC(v20, v16, &unk_1002191A0, &unk_10019A830);
    v22 = *(v21 - 8);
    v23 = (*(v22 + 88))(v16, v21);
    if (v23 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.startNetworkSearchFeedback(_:))
    {
      (*(v11 + 104))(v13, enum case for Apple_Parsec_Feedback_V2_SearchType.zeroKeyword(_:), v10);
      v24 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter();
      v24(v38, 0);
      (*(v36 + 104))(v9, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecZeroKeywordSuggest(_:), v37);
      v25 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter();
      v25(v38, 0);
    }

    else if (v23 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.endNetworkSearchFeedback(_:))
    {
      (*(v36 + 104))(v9, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v37);
      v26 = Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter();
      v26(v38, 0);
    }

    (*(v22 + 8))(v16, v21);
  }

  sub_10000B298(v20, &unk_1002191A0, &unk_10019A830);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  if (!Strong)
  {
    return (*(*(v28 - 8) + 8))(a1, v28);
  }

  sub_10000BA9C(&qword_100215358, &type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  v29 = Message.serializedData(partial:)();
  v31 = v30;
  (*(*(v28 - 8) + 8))(a1, v28);
  v32 = objc_allocWithZone(_CPFeedbackPayload);
  swift_unknownObjectRetain();
  sub_100014924(v29, v31);
  v33 = sub_1000149C0(v29, v31);
  sub_100014D74();
  swift_unknownObjectRelease();

  sub_100014A40(v29, v31);
}

void sub_1000CB6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_100214088 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000964C(v8, qword_100232A08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "ZKW: Received response after timeout, attempting to add response to topic cache", v11, 2u);
  }

  if (*(a2 + 88) != 1)
  {
    goto LABEL_11;
  }

  sub_10008461C(&v21);
  if (!v22)
  {
    sub_10000B298(&v21, &qword_100219370, &qword_10019BA90);
LABEL_11:

    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109376;
      *(v19 + 4) = *(a2 + 88);

      *(v19 + 8) = 1024;
      sub_10008461C(v23);
      v20 = v24 != 0;
      sub_10000B298(v23, &qword_100219370, &qword_10019BA90);
      *(v19 + 10) = v20;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v17, v18, "ZKW: Failed to add to the cache. Span is done: %{BOOL}d. Cache is enabled %{BOOL}d", v19, 0xEu);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  sub_100008C84(&v21, v23);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "ZKW: Populating cache with response received after timeout", v14, 2u);
  }

  sub_100007534(v23, v24);
  v15 = [a5 queryTopicContexts];
  sub_100005180(0, &qword_100219348, PARQueryTopicContext_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000C13A4(v16, a1);

  sub_100007378(v23);
}

void sub_1000CB9E0(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a7;
  v48 = a5;
  v49 = a6;
  v50 = a4;
  v51 = a3;
  v10 = type metadata accessor for PegasusProxyForSpotlightZKW.Error();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = sub_100046184(&qword_100219378, &qword_10019E370);
  __chkstk_darwin(v20 - 8);
  v22 = &v43 - v21;
  sub_10000EFEC(a1, &v43 - v21, &qword_100219378, &qword_10019E370);
  if (sub_100008D0C(v22, 1, v10) == 1)
  {
    sub_10000B298(v22, &qword_100219378, &qword_10019E370);
  }

  else
  {
    (*(v11 + 32))(v19, v22, v10);
    (*(v11 + 104))(v16, enum case for PegasusProxyForSpotlightZKW.Error.timedOut(_:), v10);
    v23 = static PegasusProxyForSpotlightZKW.Error.== infix(_:_:)();
    v24 = *(v11 + 8);
    v24(v16, v10);
    if (v23)
    {
      v25 = 27;
    }

    else
    {
      v25 = 24;
    }

    *(a2 + qword_100216C08) = v25;
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v47 = a2;
    v26 = type metadata accessor for Logger();
    sub_10000964C(v26, qword_100232A08);
    v27 = *(v11 + 16);
    v27(v13, v19, v10);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v46 = v11 + 8;
      v31 = v30;
      v32 = swift_slowAlloc();
      v45 = v24;
      v33 = v32;
      v54[0] = v32;
      *v31 = 136315138;
      v27(v16, v13, v10);
      v34 = String.init<A>(describing:)();
      v44 = v27;
      v36 = v35;
      v45(v13, v10);
      v37 = sub_100009684(v34, v36, v54);

      *(v31 + 4) = v37;
      v38 = v44;
      _os_log_impl(&_mh_execute_header, v28, v29, "ZKW: publisher failure, error: %s. Returning an empty response", v31, 0xCu);
      sub_100007378(v33);
      v24 = v45;
    }

    else
    {

      v24(v13, v10);
      v38 = v27;
    }

    v39 = [v48 queryId];
    sub_10000BA9C(&qword_100219368, &type metadata accessor for PegasusProxyForSpotlightZKW.Error);
    v40 = swift_allocError();
    v38(v41, v19, v10);
    v42 = sub_10001343C(v40);

    v51(v39, v49, v42);

    v24(v19, v10);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100099FA4(v52);
    swift_unknownObjectRelease();
  }

  sub_10000D684();
}

void sub_1000CBEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a8;
  v48 = a7;
  v49 = a5;
  v50 = a6;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v11 = type metadata accessor for PegasusProxyForSpotlightZKW.Error();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
  v46 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100046184(&qword_100219360, &qword_10019E368);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  sub_10000EFEC(a1, &v44 - v19, &qword_100219360, &qword_10019E368);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v20, v11);
    *(v53 + qword_100216C08) = 48;
    v21 = [v48 queryId];
    sub_10000BA9C(&qword_100219368, &type metadata accessor for PegasusProxyForSpotlightZKW.Error);
    v22 = swift_allocError();
    (*(v12 + 16))(v23, v14, v11);
    v24 = sub_10001343C(v22);

    v49(v21, a10, v24);

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v25 = v48;
    v26 = v46;
    (*(v46 + 32))(v17, v20, v15);
    *(v53 + qword_100216C08) = 2;
    v27 = [objc_allocWithZone(PARReply) init];
    sub_10000BA9C(&qword_100219358, &type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse);
    v28 = Message.serializedData(partial:)();
    v44 = v17;
    v45 = v15;
    v29 = v28;
    v31 = v30;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100014A40(v29, v31);
    [v27 setData:{isa, v44}];

    v33 = v25;
    v34 = [v25 queryId];
    v35 = v27;
    v49(v34, v27, 0);

    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000964C(v36, qword_100232A08);
    swift_unknownObjectRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67109120;
      sub_10008461C(v54);
      v40 = v55 != 0;
      sub_10000B298(v54, &qword_100219370, &qword_10019BA90);
      *(v39 + 4) = v40;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v37, v38, "ZKW: Attempting to add to cache. Cache is on: %{BOOL}d", v39, 8u);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    sub_10008461C(v54);
    if (v55)
    {
      sub_100007534(v54, v55);
      v41 = [v33 queryTopicContexts];
      sub_100005180(0, &qword_100219348, PARQueryTopicContext_ptr);
      v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = v44;
      sub_1000C13A4(v42, v44);

      (*(v26 + 8))(v43, v45);
      sub_100007378(v54);
    }

    else
    {
      (*(v26 + 8))(v44, v45);

      sub_10000B298(v54, &qword_100219370, &qword_10019BA90);
    }
  }

  sub_1000CC4C8(v51, v52);
}

void sub_1000CC4C8(uint64_t a1, uint64_t a2)
{
  sub_100004384();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100099FA4(a2);
    swift_unknownObjectRelease();
  }

  sub_10000D684();
}

uint64_t sub_1000CC53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v16;
  *(v8 + 56) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for ProxyError();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  sub_100046184(&qword_100219388, &qword_10019E388);
  *(v8 + 104) = swift_task_alloc();
  v10 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  v11 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse();
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = sub_100046184(&qword_100219390, &qword_10019E390);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  type metadata accessor for PegasusContext(0);
  *(v8 + 184) = swift_task_alloc();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  *(v8 + 192) = swift_task_alloc();
  sub_100046184(&qword_100219398, &qword_10019E398);
  *(v8 + 200) = swift_task_alloc();
  v12 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1000CC83C, 0, 0);
}

void sub_1000CC83C()
{
  if (qword_100214058 != -1)
  {
    sub_10000670C(&qword_100214058);
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100006674(v2, qword_100232978);
  v3 = v1;
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_1000E2AB4())
  {
    v5 = v0[2];
    v6 = sub_10001BCD4();
    sub_100018FF4();
    *v6 = 136643075;
    v7 = [v5 urlString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000E2CC0();

    v8 = sub_1000E2318();
    v11 = sub_100009684(v8, v9, v10);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2085;
    v12 = [v5 urlVariants];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100004170();
    Array.description.getter();

    v13 = sub_100005CC0();
    v16 = sub_100009684(v13, v14, v15);

    *(v6 + 14) = v16;
    sub_1000E21AC();
    _os_log_impl(v17, v18, v19, v20, v6, 0x16u);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();
  }

  v21 = v0[26];
  v22 = v0[2];
  v23 = [v22 urlString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = [v22 localeString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000059E8();
  dispatch thunk of PegasusProxyForSafariAssistant.createPrefetchRequest(url:localeString:)();

  v25 = sub_10000F268();
  sub_10000C944(v25, v26, v21);
  if (!v27)
  {
    v32 = v0[23];
    v33 = sub_1000E2460();
    v34(v33);
    sub_100017190(v32);
    sub_1000E2A78();
    sub_100005FA4();
    sub_10001C254(v32);
    Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.queryContext.setter();
    sub_1000E22D8(&async function pointer to dispatch thunk of PegasusProxyForSafariAssistant.prefetch(searchRequest:));
    swift_task_alloc();
    sub_1000E2608();
    v0[29] = v35;
    *v35 = v36;
    v35[1] = sub_1000CCC0C;
    sub_1000E2790();

    __asm { BR              X2 }
  }

  v28 = v0[5];
  v29 = v0[4];
  sub_10000B298(v0[25], &qword_100219398, &qword_10019E398);
  *(v29 + qword_100216C08) = 17;
  sub_1000E21E8();
  v28();
  sub_1000E24D8();

  sub_1000098BC();
  sub_1000E2790();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000CCC0C()
{
  sub_100007B50();
  sub_10000A9A4();
  v1 = *v0;
  sub_100005898();
  *v2 = v1;

  sub_1000E21E8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CCCF4()
{
  sub_10000EFEC(v0[22], v0[21], &qword_100219390, &qword_10019E390);
  sub_10000672C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0 + 12;
    v1 = v0[12];
    v4 = v0 + 11;
    v3 = v0[11];
    v6 = v0 + 10;
    v5 = v0[10];
    v7 = v0[5];
    v8 = sub_1000E2460();
    v9(v8);
    sub_1000E2BD8(qword_100216C08);
    sub_100012FF8();
    sub_10000BA9C(v10, v11);
    sub_10000C9E4();
    sub_10001AC40();
    v12 = swift_allocError();
    (*(v3 + 16))(v13, v1, v5);
    sub_10001343C(v12);
    sub_1000E2D24();

    v14 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
    v7(v14);
  }

  else
  {
    v2 = v0 + 19;
    v15 = v0[19];
    v16 = v0[28];
    v17 = v0[14];
    v18 = v0[4];
    v19 = v0[2];
    (*(v0[18] + 32))(v15, v0[21], v0[17]);
    v56 = qword_100216C08;
    v58 = v18;
    *(v18 + qword_100216C08) = 2;
    v20 = [v19 urlString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000E2CC0();

    v21 = [v19 urlVariants];
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = sub_1000E2318();
    sub_1000CD214(v23, v24, v22, v16, v15, v25, v26, v27, v56, v58, (v0 + 17), (v0 + 18), v63, v64, v65, v66, v67, v68, v69, v70);

    v28 = sub_100009940();
    sub_10000C944(v28, v29, v17);
    if (v30)
    {
      v31 = v0[27];
      v62 = v0[28];
      v32 = v0[26];
      v33 = v0[22];
      v34 = v0[5];
      v35 = v0[2];
      sub_10000B298(v0[13], &qword_100219388, &qword_10019E388);
      *(v59 + v57) = 15;
      [v35 queryId];
      sub_1000E21E8();
      v34();
      v36 = sub_100005CC0();
      v37(v36);
      sub_10000B298(v33, &qword_100219390, &qword_10019E390);
      (*(v31 + 8))(v62, v32);
      goto LABEL_7;
    }

    v38 = v0[16];
    v39 = v0[14];
    v40 = v0[15];
    v41 = sub_1000E2460();
    v42(v41);
    sub_100046184(&qword_1002193A8, &qword_10019E3A0);
    *(swift_allocObject() + 16) = xmmword_100197F20;
    sub_1000E25B0();
    v43();
    Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.hashBuckets.setter();
    (*(v40 + 8))(v38, v39);
    v44 = [objc_allocWithZone(PARReply) init];
    sub_10000BA9C(&unk_1002193B0, &type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse);
    sub_1000E27F8();
    Message.serializedData(partial:)();
    sub_1000E2C54();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v46 = sub_100006B0C();
    sub_100014A40(v46, v47);
    v6 = v60;
    v4 = v61;
    v48 = v0[5];
    v49 = v0[2];
    [v44 setData:isa];

    [v49 queryId];
    v50 = v44;
    sub_1000E2864();
    sub_1000E2158();
    v48();
  }

  v51 = v0[22];
  (*(*v4 + 8))(*v2, *v6);
  sub_10000D684();
  sub_10000B298(v51, &qword_100219390, &qword_10019E390);
  v52 = sub_100007CD4();
  v53(v52);
LABEL_7:
  sub_1000E24D8();

  sub_1000098BC();

  return v54();
}

void sub_1000CD214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v176 = v25;
  v172 = v26;
  v170 = v27;
  v171 = v28;
  v29 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail();
  v30 = sub_10000DE94(v29, v190);
  v173 = v31;
  __chkstk_darwin(v30);
  sub_100004370();
  sub_10000549C(v32);
  v33 = type metadata accessor for SHA256();
  v34 = sub_10000DE94(v33, &a17);
  __chkstk_darwin(v34);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v35);
  sub_100009934();
  sub_1000058D8();
  v36 = type metadata accessor for SHA256Digest();
  v37 = sub_10000DE94(v36, &a15);
  __chkstk_darwin(v37);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v38);
  sub_100009934();
  sub_10000549C(v39);
  v185 = type metadata accessor for String.Encoding();
  sub_100003650();
  v180 = v40;
  __chkstk_darwin(v41);
  sub_100004370();
  v184 = v42;
  sub_1000058D8();
  v182 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest();
  sub_100003650();
  v44 = v43;
  __chkstk_darwin(v45);
  sub_100003664();
  v48 = v47 - v46;
  v49 = sub_100046184(&qword_100219388, &qword_10019E388);
  sub_100005490(v49);
  sub_100003760();
  __chkstk_darwin(v50);
  sub_1000E2354();
  v51 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail();
  sub_100003650();
  v53 = v52;
  __chkstk_darwin(v54);
  sub_100003664();
  v57 = v56 - v55;
  v58 = Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.hashBuckets.getter();
  v188[4] = v24;
  sub_1000C04A0(sub_1000E1DE0, v58, countAndFlagsBits);

  v59 = sub_1000E25BC();
  if (sub_100008D0C(v59, v60, v51) != 1)
  {
    v167 = v53;
    v169 = v57;
    v73 = sub_100037EB4();
    v168 = v51;
    v74(v73);
    if (qword_100214058 != -1)
    {
      sub_10000670C(&qword_100214058);
    }

    v75 = type metadata accessor for Logger();
    sub_100006674(v75, qword_100232978);
    v76 = sub_1000E2BF0();
    v77(v76);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    v80 = v176;
    if (os_log_type_enabled(v78, v79))
    {
      sub_10000F554();
      swift_slowAlloc();
      v190[0] = sub_10000EC04();
      *countAndFlagsBits = 136642819;
      v81 = Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.hashPrefix.getter();
      (*(v44 + 8))(v48, v182);
      v82 = sub_10000672C();
      sub_100009684(v82, v83, v84);
      sub_10000835C();

      *(countAndFlagsBits + 4) = v81;
      _os_log_impl(&_mh_execute_header, v78, v79, "HashDetail.prefixHash: %{sensitive}s", countAndFlagsBits, 0xCu);
      sub_1000E2DFC();
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      v85 = sub_1000E2840();
      v86(v85);
    }

    v188[0] = _swiftEmptyDictionarySingleton;
    v51 = v57;
    v87 = Apple_Parsec_Sba_V1_HashBucketDetail.hashDetails.getter();
    sub_1000C0138(v87, v188);

    v89 = sub_1000E29F4(v88);
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      sub_10000F554();
      countAndFlagsBits = swift_slowAlloc();
      *countAndFlagsBits = 134217984;
      swift_beginAccess();
      v91 = Apple_Parsec_Sba_V1_HashBucketDetail.hashDetails.getter();
      swift_endAccess();
      v51 = *(v91 + 16);

      *(countAndFlagsBits + 4) = v51;
      _os_log_impl(&_mh_execute_header, v89, v90, "HashDetail.fullHash count: %ld", countAndFlagsBits, 0xCu);
      sub_1000037A4();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10001B77C();
      v80 = v165;
    }

    sub_1000E258C();
    v92 = *(v80 + 16);
    v183 = v92 + 1;
    if (v92 >= *(v80 + 24) >> 1)
    {
      sub_10001B77C();
      v80 = v166;
    }

    v93 = 0;
    *(v80 + 16) = v183;
    v94 = v80 + 16 * v92;
    *(v94 + 32) = v170;
    *(v94 + 40) = v172;
    v181 = (v180 + 8);
    v95 = (v80 + 40);
    v177 = v80;
    while (v93 < *(v80 + 16))
    {
      v96 = *(v95 - 1);
      countAndFlagsBits = *v95;

      static String.Encoding.utf8.getter();
      v187 = v96;
      v97 = String.data(using:allowLossyConversion:)();
      v99 = v98;
      v179 = *v181;
      (*v181)(v184, v185);
      if (v99 >> 60 == 15)
      {

        v101 = sub_1000E29F4(v100);
        v102 = static os_log_type_t.error.getter();

        if (sub_1000E27E0())
        {
          sub_10000F554();
          v97 = swift_slowAlloc();
          v99 = countAndFlagsBits;
          countAndFlagsBits = sub_100007B80();
          v190[0] = countAndFlagsBits;
          *v97 = 136642819;
          v51 = sub_100009684(v187, v99, v190);

          *(v97 + 4) = v51;
          sub_1000E258C();
          _os_log_impl(&_mh_execute_header, v101, v102, "Could not sha256Base64Encode url %{sensitive}s", v97, 0xCu);
          sub_1000E2E30();
          sub_1000037A4();

          sub_1000037A4();
        }

        else
        {
        }
      }

      else
      {
        sub_1000E21F4();
        sub_10000BA9C(&qword_100214E80, v103);
        sub_1000E25D4();
        dispatch thunk of HashFunction.init()();
        v178 = countAndFlagsBits;
        switch(v99 >> 62)
        {
          case 1uLL:
            v80 = v97 >> 32;
            if (v97 >> 32 < v97)
            {
              goto LABEL_56;
            }

            v51 = v97;

            countAndFlagsBits = __DataStorage._bytes.getter();
            if (countAndFlagsBits && __OFSUB__(v97, __DataStorage._offset.getter()))
            {
              goto LABEL_59;
            }

            v51 = v80 - v97;
            goto LABEL_38;
          case 2uLL:
            v80 = *(v97 + 16);
            v51 = *(v97 + 24);

            countAndFlagsBits = __DataStorage._bytes.getter();
            if (!countAndFlagsBits)
            {
              goto LABEL_29;
            }

            v104 = __DataStorage._offset.getter();
            if (__OFSUB__(v80, v104))
            {
              goto LABEL_58;
            }

            countAndFlagsBits += v80 - v104;
LABEL_29:
            v105 = __OFSUB__(v51, v80);
            v51 -= v80;
            if (v105)
            {
              goto LABEL_57;
            }

LABEL_38:
            __DataStorage._length.getter();
            sub_1000E258C();
LABEL_39:
            dispatch thunk of HashFunction.update(bufferPointer:)();
            v106 = sub_1000E2804();
            sub_100014A2C(v106, v107);
            sub_1000E2490();
            sub_1000E25D4();
            dispatch thunk of HashFunction.finalize()();
            sub_100012FEC();
            v108 = sub_1000E263C();
            v109(v108);
            v192 = v175;
            v193 = sub_10000BA9C(&qword_1002193C0, &type metadata accessor for SHA256Digest);
            sub_1000205C4(v190);
            sub_100012FEC();
            v110();
            sub_100007534(v190, v192);
            dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)(v189);
            sub_100012FEC();
            v111(v80);
            v112 = v189[0];
            v113 = v189[1];
            sub_100007378(v190);
            countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
            sub_100014A40(v112, v113);
            v114 = sub_1000E2804();
            sub_100014A2C(v114, v115);
            v97 = v188[0];
            if (*(v188[0] + 16))
            {
              v116 = sub_100096024();
              v118 = sub_100005B74(v116, v117);
              if (v119)
              {
                v186 = *(v173 + 16);
                v186(v174, *(v97 + 56) + *(v173 + 72) * v118);
                sub_1000E2194();

                Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.matchedURLVariant.setter();
                sub_100046184(&qword_1002193C8, &qword_10019E3A8);
                v125 = (*(v173 + 80) + 32) & ~*(v173 + 80);
                v126 = swift_allocObject();
                *(v126 + 16) = xmmword_100197F20;
                (v186)(v126 + v125);
                v127 = sub_1000E2574(&v190[1]);
                sub_100005D5C(v127, v128);
                Apple_Parsec_Sba_V1_HashBucketDetail.hashDetails.setter();
                swift_endAccess();

                v130 = sub_1000E29F4(v129);
                v131 = static os_log_type_t.default.getter();

                if (sub_1000E2AB4())
                {
                  v132 = sub_10001BCD4();
                  v190[0] = sub_100018FF4();
                  *v132 = 136643075;
                  v133 = sub_100009684(v187, v178, v190);

                  *(v132 + 4) = v133;
                  *(v132 + 12) = 2085;
                  v134 = sub_100096024();
                  sub_100009684(v134, v135, v136);
                  sub_1000E2534();

                  *(v132 + 14) = countAndFlagsBits;
                  sub_1000E21AC();
                  _os_log_impl(v137, v138, v139, v140, v132, 0x16u);
                  swift_arrayDestroy();
                  sub_1000037A4();

                  sub_1000037A4();
                }

                else
                {
                }

                (*(v173 + 8))();
                sub_1000E220C();
                (*(v161 + 16))(v171, v125, v168);
                sub_10000BB90();
                sub_1000051C0(v162, v163, v164, v168);

                (*(v131 + 8))(v125, v168);
                goto LABEL_54;
              }
            }

            v80 = v177;
            break;
          case 3uLL:
            memset(v190, 0, 14);
            goto LABEL_39;
          default:
            v190[0] = v97;
            LOWORD(v190[1]) = v99;
            BYTE2(v190[1]) = BYTE2(v99);
            BYTE3(v190[1]) = BYTE3(v99);
            BYTE4(v190[1]) = BYTE4(v99);
            BYTE5(v190[1]) = BYTE5(v99);
            goto LABEL_39;
        }
      }

      ++v93;
      v95 += 2;
      if (v183 == v93)
      {

        v121 = sub_1000E29F4(v120);
        v122 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v121, v122))
        {
          sub_10001BCD4();
          v190[0] = sub_1000E23D0();
          *v97 = 136643075;
          v123 = sub_1000E2218(&v191);
          *(v97 + 4) = sub_100009684(v123, v172, v124);
          *(v97 + 12) = 2085;
          static String.Encoding.utf8.getter();
          String.data(using:allowLossyConversion:)();
          sub_1000E2CC0();
          v179(v184, v185);
          if (v99 >> 60 != 15)
          {
            sub_1000E21F4();
            sub_10000BA9C(v141, v142);
            sub_1000E23A0();
            dispatch thunk of HashFunction.init()();
            v143 = sub_1000E2318();
            sub_100014924(v143, v144);
            v145 = sub_1000E2318();
            sub_1000CF128(v145, v146, v184);
            v147 = sub_1000E2318();
            sub_100014A2C(v147, v148);
            sub_1000E220C();
            dispatch thunk of HashFunction.finalize()();
            sub_100012FEC();
            v149(v184);
            sub_1000F7D88(0);
            Data.base64EncodedString(options:)(0);
            v150 = sub_1000E2BFC();
            sub_100014A40(v150, v151);
            v152 = sub_1000E2318();
            sub_100014A2C(v152, v153);
          }

          sub_1000E2CE4();
          v154 = sub_100007CC8();
          v157 = sub_100009684(v154, v155, v156);

          *(v97 + 14) = v157;
          _os_log_impl(&_mh_execute_header, v121, v122, "No matching HashDetail for url %{sensitive}s, full hash: %{sensitive}s", v97, 0x16u);
          swift_arrayDestroy();
          sub_1000037A4();

          sub_1000037A4();
        }

        else
        {

          sub_1000E2CE4();
        }

        sub_1000E23AC();
        sub_1000051C0(v158, v159, v160, v95);

        (*(v167 + 8))(v169, v95);
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_10000B298(countAndFlagsBits, &qword_100219388, &qword_10019E388);
  if (qword_100214058 != -1)
  {
LABEL_60:
    sub_10000670C(&qword_100214058);
  }

  v61 = type metadata accessor for Logger();
  sub_100006674(v61, qword_100232978);
  sub_1000E2448(&v193);

  v62 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_1000E27E0())
  {
    sub_10000F554();
    v63 = swift_slowAlloc();
    v64 = sub_100007B80();
    v190[0] = v64;
    *v63 = 136642819;
    *(v63 + 4) = sub_100009684(v170, countAndFlagsBits, v190);
    sub_10001BD10();
    _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
    sub_100007378(v64);
    sub_1000037A4();

    sub_1000037A4();
  }

  sub_1000E217C();
  sub_1000E23AC();
  sub_1000051C0(v70, v71, v72, v51);
LABEL_54:
  sub_100005460();
}

uint64_t sub_1000CE350()
{
  v0 = Apple_Parsec_Sba_V1_HashBucketDetail.hashPrefix.getter();
  v2 = v1;
  if (v0 == Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.hashPrefix.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1000CE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v14;
  v8[8] = v15;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for ProxyError();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = sub_100046184(&qword_1002193E0, &qword_10019E3D0);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  type metadata accessor for PegasusContext(0);
  v8[18] = swift_task_alloc();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v8[19] = swift_task_alloc();
  sub_100046184(&qword_1002193E8, &qword_10019E3D8);
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE64C, 0, 0);
}

uint64_t sub_1000CE64C()
{
  v1 = *(v0 + 168);
  v2 = [*(v0 + 24) urlString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100005CC0();
  dispatch thunk of PegasusProxyForSafariAssistant.createSummarizeRequest(urlString:)();

  v3 = sub_10000F268();
  sub_10000C944(v3, v4, v1);
  if (v5)
  {
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    sub_10000B298(*(v0 + 160), &qword_1002193E8, &qword_10019E3D8);
    *(v7 + qword_100216C08) = 17;
    sub_10000D684();
    [v8 queryId];
    sub_1000E21E8();
    v6();
    sub_1000E2718();

    sub_1000098BC();

    return v9();
  }

  else
  {
    v11 = *(v0 + 144);
    v12 = sub_1000E2460();
    v13(v12);
    sub_100017190(v11);
    sub_1000E2A78();
    sub_100005FA4();
    sub_10001C254(v11);
    Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.queryContext.setter();
    sub_1000E22D8(&async function pointer to dispatch thunk of PegasusProxyForSafariAssistant.summarize(searchRequest:));
    v19 = v14;
    swift_task_alloc();
    sub_1000E2608();
    *(v0 + 192) = v15;
    *v15 = v16;
    v15[1] = sub_1000CE868;
    v17 = *(v0 + 184);
    v18 = *(v0 + 136);

    return v19(v18, v17);
  }
}

uint64_t sub_1000CE868()
{
  sub_100007B50();
  sub_10000A9A4();
  v1 = *v0;
  sub_100005898();
  *v2 = v1;

  sub_1000E21E8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000CE950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000E2D50();
  sub_1000E2870();
  sub_10000EFEC(v12[17], v12[16], &qword_1002193E0, &qword_10019E3D0);
  sub_10000672C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = v12 + 11;
    v13 = v12[11];
    v15 = v12 + 10;
    v16 = v12[10];
    v18 = v12 + 9;
    v17 = v12[9];
    v19 = v12[5];
    v20 = sub_1000E2460();
    v21(v20);
    sub_1000E2BD8(qword_100216C08);
    sub_100012FF8();
    sub_10000BA9C(v22, v23);
    sub_10000C9E4();
    sub_10001AC40();
    v24 = swift_allocError();
    (*(v16 + 16))(v25, v13, v17);
    sub_10001343C(v24);
    sub_1000E2D24();

    v26 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
    v19(v26);
  }

  else
  {
    v14 = v12 + 14;
    v15 = v12 + 13;
    v18 = v12 + 12;
    v27 = v12[4];
    (*(v12[13] + 32))(v12[14], v12[16], v12[12]);
    *(v27 + qword_100216C08) = 2;
    v28 = [objc_allocWithZone(PARReply) init];
    sub_10000BA9C(&unk_1002193F0, &type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse);
    sub_1000E27F8();
    Message.serializedData(partial:)();
    sub_1000E2C54();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v30 = sub_100006B0C();
    sub_100014A40(v30, v31);
    v32 = v12[5];
    v33 = v12[3];
    [v28 setData:isa];

    [v33 queryId];
    v34 = v28;
    sub_1000E2864();
    sub_1000E2158();
    v32();
  }

  v35 = v12[17];
  (*(*v15 + 8))(*v14, *v18);
  sub_10000D684();
  sub_10000B298(v35, &qword_1002193E0, &qword_10019E3D0);
  v36 = sub_100007CD4();
  v37(v36);
  sub_1000E2718();

  sub_1000098BC();
  sub_1000E27AC();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1000CEC4C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1000CECA0(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1000CECA0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 response];
  if (v3)
  {
    v4 = sub_1000CFD50(v3);
  }

  else
  {
    v4 = 0;
  }

  if (qword_100214058 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000964C(v5, qword_100232978);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136642819;
    sub_100046184(&qword_100219140, &qword_10019E280);
    v10 = Optional.debugDescription.getter();
    v12 = sub_100009684(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "response headers: %{sensitive}s", v8, 0xCu);
    sub_100007378(v9);
  }

  if (v4 && (v13 = sub_1000BCF98(0x656764652D78, 0xE600000000000000, v4), , v13))
  {
    v17 = v13;
    sub_100046184(&unk_100219130, &qword_100199320);
    sub_1000E1CB8(qword_100214FD8, &unk_100219130, &qword_100199320);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    *a2 = v14;
    a2[1] = v16;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t sub_1000CEEF8(uint64_t a1)
{
  *(v1 + *(*v1 + 472)) = a1;
  swift_errorRetain();
}

id sub_1000CEF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithTriggerEvent:a1 input:v5];

  return v6;
}

id sub_1000CEFBC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a6)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  if (a8)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (!a10)
  {
    v19 = 0;
    if (a11)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20.super.isa = 0;
    goto LABEL_12;
  }

  v19 = String._bridgeToObjectiveC()();

  if (!a11)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_12:
  v21 = [v11 initWithStartSearch:a1 responseSize:a2 statusCode:a3 parsecStatus:v17 parsecDuration:v18 fbq:v19 partialClientIp:a4 networkTimingData:v20.super.isa];
  swift_unknownObjectRelease();

  return v21;
}

uint64_t sub_1000CF128(uint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_11;
      }

      result = result;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(result + 24);
      result = *(result + 16);
      v6 = v5;
LABEL_9:
      result = sub_1000CF97C(result, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 3uLL:
      result = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1000CF8A8(result, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return result;
  }
}

void *sub_1000CF1C0(_BYTE *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1000CF5E8(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1000934E4(0, v4, v5);
  v6 = sub_1000CF324(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

Swift::Int sub_1000CF324(Swift::Int result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v31 = result;
  v32 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v34 = v13;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v17 == v16)
    {
LABEL_37:
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_16;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v20 == v16)
      {
        goto LABEL_35;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_16;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v23 == v16)
      {
LABEL_35:
        v3 = a3;

        goto LABEL_36;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
LABEL_16:
        v3 = a3;
LABEL_36:

        goto LABEL_37;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v26 == v16)
      {
        goto LABEL_35;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = a3;
      if ((v28 & 1) == 0)
      {
        *(v31 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        if (__OFADD__(v32++, 1))
        {
          goto LABEL_40;
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1000CF660(v31, a2, v32, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void *sub_1000CF5E8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1000CF324(v5, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int sub_1000CF660(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100046184(&qword_100219148, &qword_10019E288);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v35 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 16 * v26);
    *v32 = v35;
    v32[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000CF8A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA256();
  sub_10000BA9C(&qword_100214E80, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000CF97C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10000BA9C(&qword_100214E80, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CFA68(void *a1)
{
  v1 = [a1 completionCacheSuggestions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000CFB08(void *a1)
{
  v2 = [a1 jsonData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000CFB78(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000126F0();
  }

  return sub_1000041F8();
}

void sub_1000CFBD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setInput:v4];
}

void sub_1000CFC28(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(a1, a2);
  [a3 setData:isa];
}

uint64_t sub_1000CFC9C(void *a1)
{
  v1 = [a1 bagData];
  if (v1)
  {
    v2 = v1;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000126F0();
  }

  return sub_1000041F8();
}

void sub_1000CFCF8(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setData:isa];
}

uint64_t sub_1000CFD50(void *a1)
{
  v2 = [a1 _allHTTPHeaderFieldsAsArrays];

  if (!v2)
  {
    return 0;
  }

  sub_100046184(&unk_100219130, &qword_100199320);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000CFDD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_unknownObjectRetain();

    *(a5 + qword_100232BD0) = sub_1000E090C(v11, a5, a1, a2, a3, a4);
  }

  return result;
}

void sub_1000CFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for Logger();
  v31 = sub_10000DE94(v30, &v552);
  __chkstk_darwin(v31);
  sub_10000CEDC();
  sub_100007C68(v32);
  v33 = sub_100046184(&qword_1002191B0, &qword_10019E2B8);
  sub_10000DE94(v33, &v514);
  v499 = v34;
  sub_100003760();
  __chkstk_darwin(v35);
  sub_10000BBD0();
  sub_100007C68(v36);
  v37 = sub_100046184(&qword_1002191B8, &qword_10019E2C0);
  sub_10000DE94(v37, v517);
  v502 = v38;
  sub_100003760();
  __chkstk_darwin(v39);
  sub_10000BBD0();
  sub_100007C68(v40);
  v41 = sub_100046184(&qword_1002191C0, &qword_10019E2C8);
  sub_10000DE94(v41, &v519);
  sub_100003760();
  __chkstk_darwin(v42);
  sub_10000BBD0();
  sub_100007C68(v43);
  v44 = sub_100046184(&qword_1002191C8, &qword_10019E2D0);
  v45 = sub_10000DE94(v44, v524);
  v506 = v46;
  __chkstk_darwin(v45);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v47);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v48);
  sub_100009934();
  sub_100007C68(v49);
  v50 = sub_100046184(&qword_1002191D0, &qword_10019E2D8);
  v51 = sub_10000DE94(v50, &v539);
  v513 = v52;
  __chkstk_darwin(v51);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v53);
  sub_100009934();
  sub_100007C68(v54);
  v55 = sub_100046184(&unk_1002191D8, &qword_10019E2E0);
  sub_10000DE94(v55, &v532);
  sub_100003760();
  __chkstk_darwin(v56);
  sub_10000BBD0();
  v58 = sub_10000549C(v57);
  v59 = type metadata accessor for CancellableStoreKey(v58);
  v60 = sub_1000038C4(v59);
  __chkstk_darwin(v60);
  sub_100009964();
  sub_100007C68(v61);
  sub_1000E2188(&v525);
  __chkstk_darwin(v62);
  sub_100009934();
  sub_100007C68(v63);
  v64 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  sub_100005490(v64);
  sub_100003760();
  __chkstk_darwin(v65);
  sub_10000BBD0();
  sub_10000549C(v66);
  v67 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v68 = sub_10000DE94(v67, &v543);
  v518 = v69;
  __chkstk_darwin(v68);
  sub_100004370();
  sub_10000549C(v70);
  v71 = type metadata accessor for URLRequest();
  v72 = sub_10000DE94(v71, &v545);
  v523 = v73;
  __chkstk_darwin(v72);
  sub_100009964();
  sub_1000076F0(v74);
  __chkstk_darwin(v75);
  sub_100009934();
  sub_1000076F0(v76);
  __chkstk_darwin(v77);
  sub_100009934();
  sub_1000076F0(v78);
  __chkstk_darwin(v79);
  sub_1000E2330();
  __chkstk_darwin(v80);
  sub_100009934();
  sub_1000076F0(v81);
  __chkstk_darwin(v82);
  sub_100009934();
  sub_100007C68(v83);
  sub_1000E2188(&v535);
  __chkstk_darwin(v84);
  sub_100009934();
  v86 = sub_10000549C(v85);
  v87 = type metadata accessor for PegasusContext(v86);
  v88 = sub_100005490(v87);
  __chkstk_darwin(v88);
  sub_100004370();
  v90 = sub_10000549C(v89);
  v91 = type metadata accessor for SessionTokens(v90);
  v92 = sub_100005490(v91);
  __chkstk_darwin(v92);
  sub_100004370();
  sub_100007C68(v93);
  v94 = sub_100046184(&qword_100217480, &unk_100198F70);
  v95 = sub_100005490(v94);
  __chkstk_darwin(v95);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v96);
  sub_1000E26C8();
  v97 = type metadata accessor for UserAgent();
  v98 = sub_10000DE94(v97, &a10);
  v100 = v99;
  __chkstk_darwin(v98);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v101);
  sub_100009934();
  sub_10000549C(v102);
  v103 = type metadata accessor for Client();
  v104 = sub_10000DE94(v103, v542);
  v515 = v105;
  __chkstk_darwin(v104);
  sub_100003664();
  v108 = v107 - v106;
  v109 = sub_100046184(&unk_1002191E8, &qword_10019E2E8);
  sub_100003650();
  v530 = v110;
  sub_100003760();
  __chkstk_darwin(v111);
  sub_1000E2354();
  sub_1000068B4();
  v531 = swift_allocObject();
  *(v531 + 16) = v25;
  _Block_copy(v25);
  v532 = v25;
  _Block_copy(v25);
  v535 = v21;
  Regex.init(_regexString:version:)();
  v112 = [v29 queryString];
  v539 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v113;

  v115 = v27[7];

  sub_1000119E0();
  v540 = v27;
  sub_10001672C(v116, v117);
  [v29 queryId];
  v118 = sub_10000899C();
  v119 = type metadata accessor for ResourceAccessSpan(v118);
  sub_1000E2424(v119);
  v514 = v108;
  v533 = sub_1000E223C(v115, 2, v108);
  v120 = [v29 queryCommand];
  if (v120)
  {
    v121 = v120;
    objc_opt_self();
    sub_1000042D0();
    v122 = swift_dynamicCastObjCClass();
    if (v122)
    {
      v123 = &selRef_tokenString;
    }

    else
    {
      objc_opt_self();
      sub_1000042D0();
      v122 = swift_dynamicCastObjCClass();
      if (!v122)
      {

        goto LABEL_10;
      }

      v123 = &selRef_searchString;
    }

    v539 = sub_1000CFB78(v122, v123);
    v125 = v124;

    if (v125)
    {
      v114 = v125;
    }

    else
    {
      v539 = 0;
      v114 = 0xE000000000000000;
    }
  }

LABEL_10:
  v529 = v100;
  v538 = v114;
  v544 = 0;
  swift_stdlib_random();
  v126 = v544;
  if (qword_100214058 != -1)
  {
    sub_10000670C(&qword_100214058);
  }

  v127 = sub_10000964C(v534, qword_100232978);
  v128 = v29;
  sub_1000E2BE4();

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();

  v131 = os_log_type_enabled(v129, v130);
  v537 = v109;
  v520 = v126;
  if (v131)
  {
    v108 = v126;
    v132 = v127;
    v133 = swift_slowAlloc();
    v29 = sub_100018FF4();
    v544 = v29;
    *v133 = 136447235;
    v134 = OBJC_IVAR____TtC7parsecd11ClientState_sessionType;
    type metadata accessor for SessionType();
    sub_10000F574();
    sub_10000BA9C(v135, v136);
    sub_1000E2394();
    v138 = v137 + v134;
    v139 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100009684(v139, v140, &v544);
    sub_10000835C();

    *(v133 + 4) = v138;
    *(v133 + 12) = 2050;
    v126 = [v128 queryId];

    *(v133 + 14) = v126;
    *(v133 + 22) = 2050;
    *(v133 + 24) = v108;
    *(v133 + 32) = 2085;
    sub_1000E2218(&a12);

    v141 = sub_1000E2340();
    sub_100009684(v141, 0x802uLL, v142);
    sub_100006B00();

    *(v133 + 34) = v126;
    *(v133 + 42) = 2048;

    String.UTF16View.count.getter();
    sub_100006B00();

    *(v133 + 44) = v126;
    _os_log_impl(&_mh_execute_header, v129, v130, "Session %{public}s performing query %{public}llu requestId: %{public}llu '%{sensitive}s', length: %ld", v133, 0x34u);
    swift_arrayDestroy();
    sub_1000E2BE4();
    sub_1000037A4();

    v127 = v132;
    v109 = v537;
    sub_1000037A4();
  }

  else
  {
  }

  sub_100012714();
  if ((v143 & 1) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000126F0();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    sub_10000AEB0(inited, xmmword_100197F20);
    sub_1000066DC();
    v155[9] = &type metadata for String;
    v155[6] = 0xD000000000000013;
    v155[7] = v156;
    v157 = Dictionary.init(dictionaryLiteral:)();
    v158 = objc_allocWithZone(NSError);
    v159 = sub_100017C80();
    v162 = sub_1000B184C(v159, v160, v161, v157);
    v163 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v164 = sub_1000E2170();
    v166 = os_log_type_enabled(v164, v165);
    v167 = v538;
    v168 = v529;
    if (v166)
    {
      sub_10000F554();
      swift_slowAlloc();
      v169 = sub_10000EC04();
      sub_1000E2BB4(v169);
      *v129 = 136642819;

      v170 = sub_1000E2340();
      v172 = sub_100009684(v170, v167, v171);

      *(v129 + 4) = v172;
      sub_1000E2BE4();
      sub_100023F3C();
      _os_log_impl(v173, v174, v175, v176, v177, 0xCu);
      sub_100007378(v127);
      sub_1000E20B8();

      sub_1000037A4();
    }

    else
    {

      v108 = v539;
    }

    v199 = objc_allocWithZone(_CPSkipSearchFeedback);
    sub_100037ED8();

    v200 = sub_1000CEF48(3, v108, v167);
    swift_unknownObjectRetain();
    v201 = [v128 queryId];
    v202 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v200];
    [v202 setQueryId:v201];
    sub_10000848C();
    sub_1000E2490();
    sub_10001672C(v203, v204);
    v205 = v536;
    sub_10000C944(v108, 1, v536);
    if (v149)
    {
      v206 = v527;
      parsecdUserAgent.getter();
      sub_10000C944(v108, 1, v205);
      if (!v149)
      {
        sub_10000B298(v108, &qword_100217480, &unk_100198F70);
      }
    }

    else
    {
      sub_1000E2888();
      v206 = v527;
      v207(v527, v108, v205);
    }

    sub_100014D74();

    swift_unknownObjectRelease();
    (*(v168 + 8))(v206, v205);
    [v128 queryId];
    v208 = v162;
    v209 = sub_10001343C(v162);

    if (v209)
    {
      v210 = _convertErrorToNSError(_:)();
    }

    else
    {
      v210 = 0;
    }

    v211 = v533;
    v212 = v532;
    v213 = sub_1000E2080();
    v214(v213);

    *(v211 + qword_100216C08) = 36;
    sub_10000D684();

    sub_1000E2098();
    sub_1000E23B8();
    v215();
    sub_1000E217C();

    _Block_release(v212);
    v198 = v212;
    goto LABEL_46;
  }

  sub_10000848C();
  sub_10001672C(v144, v145);
  v146 = sub_1000B1FC4();
  v147 = v536;
  sub_10000C944(v146, v148, v536);
  if (v149)
  {
    sub_10000B298(v20, &qword_100217480, &unk_100198F70);
    [v128 queryId];
    sub_1000E2364();
    v150 = sub_1000055F0();
    v151(v150);
    sub_100037E98(qword_100216C08);

    v152 = sub_100012F40();
LABEL_42:
    v239 = v109;
LABEL_43:
    v153(v152, v239);
    sub_1000E217C();

    sub_10000F230();
LABEL_44:

LABEL_45:
    _Block_release(v126);
    v198 = v126;
    goto LABEL_46;
  }

  v528 = v128;
  sub_1000E249C();
  v179 = v526;
  (*(v178 + 32))(v526, v20, v147);
  v180 = v539;
  sub_1000E2388();
  v544 = v180;
  v545 = v181;
  v126 = sub_1000E08B8();
  sub_1000E1CB8(&unk_100219200, &unk_1002191E8, &qword_10019E2E8);
  sub_1000E2448(&a9);
  v182 = BidirectionalCollection<>.starts<A>(with:)();
  if (v182)
  {
    v183 = objc_allocWithZone(_CPSkipSearchFeedback);
    sub_1000E230C(&a12);

    sub_1000E2810();
    v187 = sub_1000CEF48(v184, v185, v186);
    sub_1000E2394();
    swift_unknownObjectRetain();
    v188 = sub_1000E2828(v550);
    v190 = v179;
    v191 = [v188 v189];
    v192 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v187];
    [v192 setQueryId:v191];
    sub_100014D74();
    swift_unknownObjectRelease();

    [&type metadata for Any queryId];
    sub_1000E23C4();
    v194 = *(v193 - 256);
    v195 = sub_10000F250();
    v196(v195);
    sub_100037E98(qword_100216C08);

    (*(v29 + 1))(v190, v147);
    sub_1000E2098();
    sub_1000E23B8();
LABEL_23:
    v197();
    sub_1000E217C();

    sub_10000F230();
LABEL_24:

    _Block_release(v194);
    v198 = v194;
LABEL_46:
    _Block_release(v198);
    sub_100005460();
    return;
  }

  sub_100006AE8();
  v216 = v540;
  v219 = sub_10000BB00(v217, v218);
  if (!v219)
  {
    v230 = sub_1000E2598();
    [v230 v231];
    sub_1000E2364();
    v232 = sub_1000055F0();
    v233(v232);
    sub_100037E98(qword_100216C08);

LABEL_41:
    sub_1000189BC();
    sub_1000E2324();
    v238();
    sub_1000E2098();
    v152 = v129;
    goto LABEL_42;
  }

  v220 = v219;
  v221 = v127;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v234 = sub_1000E2598();
    [v234 v235];
    sub_1000E2364();
    v236 = sub_1000055F0();
    v237(v236);
    sub_100037E98(qword_100216C08);

    goto LABEL_41;
  }

  v223 = Strong;
  v224 = *(v216 + 24);
  if (([v220 isEnabled] & 1) == 0)
  {
    v240 = Logger.logObject.getter();
    v241 = static os_log_type_t.default.getter();
    if (sub_100007BE8(v241))
    {
      sub_1000E2130();
      v242 = swift_slowAlloc();
      sub_10000594C(v242);
      sub_10001BD10();
      _os_log_impl(v243, v244, v245, v246, v247, 2u);
      sub_1000037A4();
    }

    v248 = objc_allocWithZone(_CPSkipSearchFeedback);
    sub_1000E2484(&a12);

    v249 = sub_1000CEF48(2, v539, v221);
    swift_unknownObjectRetain();
    v250 = sub_1000E2828(v550);
    v252 = [v250 v251];
    v253 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v249];
    [v253 setQueryId:v252];
    sub_100014D74();
    swift_unknownObjectRelease();

    [&type metadata for Any queryId];
    sub_1000E23C4();
    v194 = *(v254 - 256);
    v255 = sub_10000F250();
    v256(v255);
    sub_100037E98(qword_100216C08);

    swift_unknownObjectRelease();

    sub_1000135D0();
    sub_1000E2324();
    v257();
    sub_100012F40();
    sub_1000E23B8();
    v258();
    sub_1000E217C();

    goto LABEL_24;
  }

  v492 = v224;
  swift_unknownObjectRetain();
  sub_1000E75A0();
  swift_unknownObjectRelease();
  v225 = OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
  sub_100004384();
  swift_beginAccess();
  sub_10000EFEC(v216 + v225, &v541, &qword_100218208, &qword_10019C620);
  if (v542[0])
  {
    sub_100008C84(&v541, &v544);
    sub_100007534(&v544, v547);
    v226 = v528;
    v227 = sub_100096024();
    v229 = v228(v227);
    sub_100007378(&v544);
  }

  else
  {
    sub_10000B298(&v541, &qword_100218208, &qword_10019C620);
    v229 = _swiftEmptyArrayStorage;
    v226 = v528;
  }

  sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
  v496 = v229;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v226 setCompletionCacheSuggestions:isa];

  v260 = *(v216 + 64);
  swift_unknownObjectRetain();
  v261 = sub_1000E5D20();
  v263 = v262;
  swift_unknownObjectRelease();
  if (v263)
  {
    sub_10000BE80();
    String._bridgeToObjectiveC()();
    sub_1000054F4();
  }

  else
  {
    v261 = 0;
  }

  v264 = v524[1];
  v265 = sub_1000E2574(v550);
  [v265 v266];

  v267 = sub_1000E2C90(&v549);
  v269 = [v267 v268];
  v495 = v223;
  if (([v109 pretend] & 1) == 0)
  {
    sub_1000E2218(&a12);

    sub_1000E2834();
    String.UTF16View.count.getter();
    sub_100006B00();

    if (v260 < v269)
    {
      if (!sub_1000CFA68(v109))
      {
        goto LABEL_68;
      }

      v270 = sub_1000CFA68(v109);
      if (!v270)
      {
LABEL_94:
        v490 = sub_1000E230C(v551);
        _Block_release(v490);
        _Block_release(v260);
        __break(1u);
        goto LABEL_95;
      }

      sub_10000D57C(v270);
      sub_100006B00();

      v109 = v528;
      if (v260 <= 0)
      {
LABEL_68:
        v312 = v269;
        sub_1000E2B44();
        v126 = v109;
        v313 = Logger.logObject.getter();
        v314 = static os_log_type_t.debug.getter();
        v315 = sub_1000E2170();
        if (os_log_type_enabled(v315, v316))
        {
          v317 = sub_100007B80();
          v318 = sub_100007B80();
          sub_1000E2BB4(v318);
          *v317 = 134218498;
          sub_1000E2580();
          *(v317 + 4) = [v126 v319];

          *(v317 + 12) = 2080;
          sub_1000E2224(&a12);

          v320 = sub_1000E2340();
          v322 = sub_100009684(v320, v216, v321);

          *(v317 + 14) = v322;
          *(v317 + 22) = 2048;
          *(v317 + 24) = v312;
          _os_log_impl(&_mh_execute_header, v313, v314, "query[%llu] input '%s' less than %ld", v317, 0x20u);
          sub_100007378(v223);
          sub_1000037A4();

          sub_1000037A4();
        }

        else
        {

          v221 = v539;
        }

        v359 = objc_allocWithZone(_CPSkipSearchFeedback);
        sub_1000E2828(&a12);

        v360 = sub_1000CEF48(1, v221, v312);
        sub_1000E2394();
        swift_unknownObjectRetain();
        v361 = sub_1000E26A0();
        v362 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v360];
        [v362 setQueryId:v361];
        sub_100014D74();
        swift_unknownObjectRelease();

        sub_1000E26A0();
        sub_1000E2364();
        v363 = sub_1000055F0();
        v364(v363);
        sub_100037E98(qword_100216C08);

        swift_unknownObjectRelease();

        sub_1000E2B14();
        sub_100003A28();
        v365 = sub_1000E21A0();
        sub_10001C254(v365);
        sub_1000189BC();
        sub_1000E2324();
        v366();
        sub_1000E2098();
        sub_1000E23B8();
        v367();
        sub_1000E217C();

        goto LABEL_44;
      }
    }
  }

  v493 = v269;
  sub_100017190(v264);
  v271 = type metadata accessor for PARNetworkRequestFactory();
  v272 = sub_1000E2E18(v271);
  v273 = swift_unknownObjectRetain();
  v274 = sub_100017594(v273, v272);
  sub_10000FFB0();
  v277 = sub_10000BB00(v275, v276);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_10000BA48();
    v278 = v274;
    sub_10008D608(v279, v280, v281, v282, v283, v284, v285, v286, v492, v493, v495, v496, v497, v498, v499, v500, v501, v502, v503, v504);
  }

  else
  {
    sub_10000BA48();
    v278 = v274;
    sub_10008D7F0();
  }

  v287 = v523;
  v289 = v523 + 4;
  v288 = v523[4];
  sub_1000E2218(&v546);
  sub_1000E2C6C();
  v288();
  v290 = sub_1000E2C60(v550);
  if ([v290 v291])
  {
    sub_1000E2B44();
    sub_1000E2270();
    v292 = v517[0];
    v293(v517[0], v278, v277);
    v194 = [objc_allocWithZone(NSHTTPURLResponse) init];
    sub_1000E2568();
    Apple_Parsec_Search_V2_SearchResponse.init()();
    v294 = [objc_allocWithZone(PARReply) init];
    [0 scale];
    [v294 setScale:?];
    if ([0 verboseReply])
    {
      v295 = URLRequest._bridgeToObjectiveC()().super.isa;
      v296 = sub_100012634();
      [v296 v297];

      [v294 setHttpResponse:v194];
    }

    sub_1000CFCF8(0, 0xC000000000000000, v294);

    sub_100012F20();
    v298(v289, v519);
    v299 = sub_1000E2598();
    [v299 v300];
    sub_1000E23C4();
    sub_1000E220C();
    (*(v301 + 16))(v194);
    sub_100037E98(qword_100216C08);

    sub_1000E2B2C();

    sub_1000E2B14();
    v302 = v287[1];
    v302(v292, v277);
    v303 = sub_1000E2418();
    (v302)(v303);
    sub_100005FA4();
    sub_1000E2A60();
    sub_100003A28();
    v304 = sub_1000E21A0();
    sub_10001C254(v304);
    v305 = sub_10001ADE8();
    v306(v305);
    sub_100012F40();
    goto LABEL_23;
  }

  v524[0] = v288;
  sub_1000119E0();
  sub_1000E2164();
  v307 = v540;
  sub_10001672C(v308, v309);
  Client.type.getter();
  sub_100012F20();
  v310(v288, v516);
  v126 = ClientType.rawValue.getter();
  if (v126 == ClientType.rawValue.getter())
  {
    v547 = &unk_1001F8E80;
    v548 = sub_1000772F0();
    LOBYTE(v544) = 6;
    v311 = isFeatureEnabled(_:)();
    sub_100007378(&v544);
  }

  else
  {
    v311 = 0;
  }

  if (*(*(v307 + 64) + 32))
  {
    sub_1000E2C84();
    (*(v323 + 16))(v512, v522, v277);
    sub_10000BB90();
    sub_1000051C0(v324, v325, v326, v277);

    v327 = sub_1000E2C9C();
    sub_1000F1164(v327, v328);
    sub_100006B00();

    sub_10000B298(v512, &unk_100218500, &qword_10019C7D8);
    if (v126)
    {
      sub_1000E2B44();
      v329 = [objc_allocWithZone(PARReply) init];
      if ((v311 & 1) == 0)
      {
        v330 = sub_1000E2598();
        [v330 v331];
        [v329 setScale:?];
      }

      v332 = OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
      v333 = &v126[v332 + *(type metadata accessor for CachedResultSet.Result(0) + 40)];
      v334 = *v333;
      v335 = *(v333 + 1);
      v336 = sub_1000385F0();
      sub_100014924(v336, v337);
      sub_1000385F0();
      v338 = Data._bridgeToObjectiveC()().super.isa;
      v339 = sub_1000385F0();
      sub_100014A40(v339, v340);
      [v329 setData:v338];

      v341 = sub_1000E2218(v550);
      [v341 v342];
      sub_1000E23C4();
      v344 = sub_100014C60(v343);
      v345(v344);
      sub_1000E251C();

      sub_1000C6338(v334, v539, v512);

      sub_1000E2B2C();

      sub_1000E2B14();
      sub_100012F20();
      v346 = sub_1000E2C40();
      v347(v346);
      sub_100005FA4();
      sub_1000E2A60();
      sub_100003A28();
      v348 = sub_1000E21A0();
      sub_10001C254(v348);
      sub_1000135D0();
      sub_1000E2324();
      v349();
      sub_100012F40();
      sub_1000E23B8();
      v350();
      sub_1000E217C();

      _Block_release(v335);
      v198 = v335;
      goto LABEL_46;
    }
  }

  if (v311)
  {
    sub_1000E2B44();
    v351 = sub_1000E230C(v551);
    _Block_copy(v351);
    sub_1000E2C6C();
    sub_1000C6448(v352, v353, v354, v492, v533, v526, v307, v126);
    sub_10008E4C4();
    sub_1000C4490();

    swift_unknownObjectRelease();
    sub_1000E2B14();
    sub_100012F20();
    v355 = sub_1000E25E0();
    v356(v355);
    sub_100005FA4();
    sub_1000E2A60();
    sub_100003A28();
    v357 = sub_1000E21A0();
    sub_10001C254(v357);
    sub_1000189BC();
    sub_1000E2324();
    v358();
    sub_100012F40();
    sub_1000E23B8();
    goto LABEL_43;
  }

  v494 = v289;
  v368 = sub_1000C7160();
  v519 = v368;
  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    v368 = swift_once();
  }

  sub_10000BFB8(v368, qword_100232B10);
  v369 = (v523 + 2);
  v370 = v523[2];
  sub_1000E2574(&v534);
  sub_1000E25B0();
  v370();
  sub_1000E25B0();
  v518 = v369;
  v517[1] = v370;
  v370();
  v528 = 0;
  v371 = Logger.logObject.getter();
  v372 = static os_log_type_t.debug.getter();
  if (sub_100007BE8(v372))
  {
    LODWORD(v517[0]) = 0;
    sub_1000E2648();
    v516 = sub_1000E23D0();
    v544 = v516;
    MEMORY[0] = 134349826;
    v373 = sub_1000E2218(v550);
    MEMORY[4] = [v373 v374];

    MEMORY[0xC] = 2080;
    v375 = URLRequest.debugDescription.getter();
    v369 = v523[1];
    v376 = sub_100037EB4();
    v369(v376);
    v377 = sub_10000AE18();
    sub_100009684(v377, v378, v379);
    sub_1000E24A8();

    MEMORY[0xE] = v375;
    MEMORY[0x16] = 2080;
    if (!URLRequest.allHTTPHeaderFields.getter())
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    Dictionary.description.getter();

    (v369)(v511, v521);
    v380 = sub_1000E2418();
    sub_100009684(v380, v381, v382);
    sub_100038F24();

    sub_1000E22C8();
    MEMORY[0x22] = v520;
    _os_log_impl(&_mh_execute_header, v371, v517[0], "performing query %{public}llu request %s header: %s requestId: %{public}llu", 0, 0x2Au);
    sub_1000E2218(v542);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    sub_1000E2BE4();
    sub_1000E2BCC();
  }

  else
  {
    sub_1000E25A4();

    v384 = v523[1];
    v384(v511, v277);
    v385 = sub_100037EB4();
    (v384)(v385);
    sub_1000E2BCC();
  }

  sub_1000E2C60(&v546);
  v260 = sub_1000C4190();
  sub_1000E2224(&a12);

  v386 = sub_1000385F0();
  sub_100089408(v386, v387, v260, v388);
  v389 = sub_1000E2598();
  v391 = [v389 v390];
  if (v391 >> 31)
  {
    __break(1u);
    goto LABEL_94;
  }

  [v260 setTriggerEvent:v391];
  [v260 setEndpoint:6];
  v392 = sub_1000E2448(v550);
  if ([v392 v393] == 23)
  {
    v394 = 3;
  }

  else
  {
    v394 = 2;
  }

  [v260 setSearchType:{v394, v492}];
  sub_1000E2AE4();
  v395 = v260;
  v517[0] = v395;
  v396 = sub_1000E2DCC();
  v397 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v395];

  [v397 setQueryId:v396];
  sub_100014D74();
  swift_unknownObjectRelease();

  sub_1000E2AE4();
  sub_1000E2DCC();
  sub_1000E2224(&v544);
  v514 = v221;
  sub_1000E6E68();
  swift_unknownObjectRelease();
  sub_10008596C();
  v398 = sub_1000054F4();
  v399 = sub_1000E294C(v398);
  v401 = v400;

  v402 = v399;

  swift_unknownObjectRetain();
  v512 = v402;
  sub_1000E2C08();
  sub_1000CFDD4(v403, v404, v405, v406, v533);
  swift_unknownObjectRelease();
  UUID.init()();
  v544 = v401;
  v407 = sub_1000E2DCC();
  sub_100006634();
  v408 = swift_allocObject();
  *(v408 + 16) = v407;
  *(v408 + 24) = v397;
  sub_100006634();
  v409 = swift_allocObject();
  *(v409 + 16) = sub_1000E0CD4;
  *(v409 + 24) = v408;
  v410 = sub_100005FBC();
  sub_100046184(v410, v411);
  sub_100046184(&qword_100219220, &qword_10019E2F8);
  sub_10000804C();
  sub_1000E1CB8(v412, v413, &qword_10019E2F0);
  sub_1000E2164();
  sub_1000E2E4C(v414, v409);
  v515 = v401;

  sub_100006634();
  v415 = swift_allocObject();
  sub_1000E2ACC(v415);
  sub_100046184(&qword_100219230, &qword_10019E300);
  sub_1000E21B8();
  Publishers.Map.tryMap<A>(_:)();

  sub_100012F20();
  v416 = sub_10000F18C();
  v417(v416);
  sub_100006634();
  v418 = swift_allocObject();
  sub_1000E2ACC(v418);
  sub_100046184(&qword_100219238, &qword_10019E308);
  sub_1000E2164();
  Publishers.TryMap.tryMap<A>(_:)();

  v419 = sub_1000135D0();
  v420(v419, v503);
  sub_100006634();
  v421 = swift_allocObject();
  sub_1000E2ACC(v421);
  v260 = v505;
  v516 = sub_100046184(&qword_100219240, &unk_10019E310);
  Publishers.TryMap.tryMap<A>(_:)();

  sub_100012F20();
  v422(v397);
  sub_1000E230C(&v511);
  sub_10000B9B8();
  sub_1000E22F8();
  v423();
  sub_10000F230();

  v511 = sub_1000CFB78(v517[0], &selRef_uuid);
  if (v424)
  {
    v425 = v424;
    sub_1000E2B44();
    v426 = sub_1000E2574(&v536);
    v427 = v524[0];
    (v524[0])(v426, v505, v503);
    sub_1000E2C84();
    v429 = *(v428 + 80);
    v430 = (v429 + 32) & ~v429;
    v431 = (v509 + v430 + 7) & 0xFFFFFFFFFFFFFFF8;
    v432 = swift_allocObject();
    sub_1000E2388();
    *(v433 + 16) = v435;
    *(v433 + 24) = v434;
    v427(v433 + v430, v369, v503);
    v436 = (v432 + v431);
    *v436 = v511;
    v436[1] = v425;
    v437 = v540;
    *(v432 + ((v431 + 23) & 0xFFFFFFFFFFFFFFF8)) = v540;
    sub_100006634();
    v438 = swift_allocObject();
    *(v438 + 16) = sub_1000E0D38;
    *(v438 + 24) = v432;

    sub_10000BA48();
    Publishers.TryMap.tryMap<A>(_:)();

    v511 = *(v506 + 8);
    v511();
    v439 = v517[0];
    v517[0] = v439;
    v440 = sub_1000E2C60(v550);
    v442 = [v440 v441];
    sub_100019024();
    v443 = swift_allocObject();
    v443[2] = v437;
    v443[3] = v439;
    v444 = v512;
    v443[4] = v512;
    v443[5] = v442;
    sub_100006634();
    v445 = swift_allocObject();
    *(v445 + 16) = sub_1000E0D58;
    *(v445 + 24) = v443;

    v539 = v444;
    sub_1000E2164();
    Publishers.TryMap.tryMap<A>(_:)();

    v446 = v511;
    (v511)(v494);
    sub_1000E2574(&v536);
    sub_1000E2C6C();
    sub_1000E22F8();
    v447();
    v448 = swift_allocObject();
    *(v448 + 16) = v510;
    (v524[0])(v448 + ((v429 + 24) & ~v429), v444, v443);
    sub_100006634();
    v449 = swift_allocObject();
    *(v449 + 16) = sub_1000E0D84;
    *(v449 + 24) = v448;
    v450 = v510;
    sub_100046184(&qword_1002192A8, &qword_10019E320);
    sub_1000E249C();
    Publishers.TryMap.tryMap<A>(_:)();

    (v446)(v437);
    sub_1000E237C();
    Publishers.TryMap.tryMap<A>(_:)();
    sub_100012F20();
    v513 = v451;
    v528 = v452;
    v453 = sub_1000E2258();
    v454(v453);
    v524[0] = [v450 queryId];
    sub_1000E2164();
    v456 = v534;
    (*(v455 + 16))(v508, v514, v534);
    v457 = (v437[80] + 16) & ~v437[80];
    sub_1000E22E8();
    v459 = v458 & 0xFFFFFFFFFFFFFFF8;
    v460 = ((v458 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v461 = (v460 + 15) & 0xFFFFFFFFFFFFFFF8;
    v462 = (v461 + 15) & 0xFFFFFFFFFFFFFFF8;
    v463 = (v462 + 15) & 0xFFFFFFFFFFFFFFF8;
    v464 = swift_allocObject();
    (*(v437 + 4))(v464 + v457, v508, v456);
    *(v464 + v459) = v524[0];
    *(v464 + v460) = v520;
    v126 = v540;
    *(v464 + v461) = v540;
    v465 = v517[0];
    *(v464 + v462) = v517[0];
    *(v464 + v463) = v539;
    sub_100006634();
    v466 = swift_allocObject();
    *(v466 + 16) = sub_1000E0DA4;
    *(v466 + 24) = v464;

    v534 = v465;
    v467 = sub_100005FBC();
    sub_100046184(v467, v468);
    v469 = sub_10000E184(&qword_1002192B8, &qword_1002191D0, &qword_10019E2D8);
    sub_100008A24();
    sub_1000E1CB8(v470, v471, &qword_10019E328);
    sub_1000E240C();
    sub_1000E237C();
    Publisher.catch<A>(_:)();

    sub_1000385F0();
    sub_1000E25A4();
    v472();
    sub_100006634();
    v473 = swift_allocObject();
    sub_1000E2370(v473, &off_1001F9E28);
    swift_unknownObjectWeakInit();
    sub_1000059D0();
    sub_1000E2484(&v540);
    sub_100038A30();
    sub_1000E06DC(v474, v475);
    sub_1000E210C();
    v478 = v477 & ~v476;
    v479 = (v507 + v478 + 7) & 0xFFFFFFFFFFFFFFF8;
    v480 = swift_allocObject();
    *(v480 + 16) = v473;
    sub_1000E0734(v469, v480 + v478);
    *(v480 + v479) = v533;
    v481 = (v480 + ((v479 + 15) & 0xFFFFFFFFFFFFFFF8));
    v482 = v531;
    *v481 = sub_1000E1FD4;
    v481[1] = v482;
    sub_10000EBE0(&qword_1002192C8, &unk_1002191D8, &qword_10019E2E0);
    sub_100037ED8();

    Publisher<>.sink(receiveValue:)();
    sub_1000E2864();

    sub_100012F20();
    v483(v463);
    sub_100099EF4();

    sub_10008E4C4();
    sub_1000C4490();

    swift_unknownObjectRelease();

    sub_1000E2B2C();

    sub_1000E2B14();
    sub_10000AB10();
    sub_10001C254(v456);
    sub_100012F20();
    v484 = sub_1000E2C40();
    v485(v484);
    sub_100005FA4();
    sub_1000E2A60();
    sub_100003A28();
    v486 = sub_1000E21A0();
    sub_10001C254(v486);
    v487 = sub_10001ADE8();
    v488(v487);
    sub_100012F40();
    sub_1000E23B8();
    v489();

    sub_10000F230();

    sub_1000E2364();
    goto LABEL_45;
  }

LABEL_95:
  v491 = sub_1000E230C(v551);
  _Block_release(v491);
  _Block_release(v260);
  __break(1u);
}